<?php
namespace backend\controllers;

use common\components\Curd;
use common\models\OrderItem;
use yii\data\ActiveDataProvider;
use yii\helpers\Url;
use common\models\Integral;
use common\models\Order;
use Yii;
use yii\base\Exception;

class OrderController extends BaseController
{
    public  $modelClass = 'common\models\Order';
    public  $pageSize =10;
    use Curd;

    //创建订单
    public function actionCreate()
    {
        $request = Yii::$app->request;


        $model = new Order();


        if($model->load($request->post()) && $model->validate()){
            //开始事务
            $trans = $model::getDb()->beginTransaction();
            try{
                $model->user_id = Yii::$app->user->id;
                $model->order_status = Order::STATUS_NEW;
                if($model->save()){
                    //商品 库存等信息 更新
                    //   $trans->rollBack();
                    //return $this->message('订单添加失败！' , $this->redirect(['index']) ,'error');
                    $trans->commit();
                    return $this->message('订单添加成功' , $this->redirect(['index']));

                }else{
                    $trans->rollBack();
                    return $this->message('订单添加失败' , $this->redirect(['index']) ,'error');
                }
            }catch (Exception $e){
                Yii::error($e->getMessage());
                $trans->rollBack();
                return $this->message('订单添加失败' , $this->redirect(['index']) , 'error');
            }
        }


        return $this->render('edit' , [
            'model' => $this->findModel(null),
        ]);
    }
    //订单详情
    public function actionDetail($id){

        $query = OrderItem::find()->where(['order_id' => $id]);
        if (!$query->one()) {
            return $this->message('资料不存在' , $this->redirect(['index']) , 'error');
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=> false,
        ]);

        return $this->render('detail' ,[
                'dataProvider' => $dataProvider,
                'model' => Order::findOne($id)
            ]
        );
    }
    //调整金额
    public function actionUpdatePrice($id){

        if (is_numeric($id)) {
            $model = Order::find()->where(['id' => $id])->with(['orderItems'])->one();
        } else {
            $model = Order::find()->where(['order_no' => $id])->with(['orderItems'])->one();
        }

        if (!$model) {
            return $this->message('资料不存在' , '','error');
        }
        // ajax 验证
        $this->activeFormValidate($model);
        if ($model->load(Yii::$app->request->post())) {

            if ($model->save()) {
                return $this->message('编辑成功' , $this->redirect(['index']));
            } else {
                return $this->message('编辑失败:' . implode('|', $model->firstErrors) , '','error');
            }
        }
        return $this->renderAjax('update-price', [
            'model' => $model,
        ]);
    }
    //支付
    public function actionPay($id){
        $model = Order::findOne($id);
        if (!$model){
            return $this->message('没有该订单' ,  $this->redirect(['index']) ,'error' );
        }
        if ($model->status != Order::STATUS_NEW || $model->order_status != Order::STEP_SUBMIT) {
            return $this->message('该订单无法收款', Url::previous() ,'error');
        }


        /** -支付  暂时 积分支付 - */
        //剩余金额
        $integral = Integral::findOne($model->user_id);
        if(!$integral){
            return $this->message('订单添加失败，用户信息有误！' , $this->redirect(['index']) , 'error');
        }
        $integral->total_amount -= $model->realy_amount;
        /** -- */
        if($integral->save() && $model->stepConfirm(null, Order::PAY_TYPE_OFFLINE)){
            return $this->message('订单支付成功' , $this->redirect(['index']));
        }else{
            return $this->message('订单支付失败' , $this->redirect(['index']) , 'error');
        }

    }
    //确认
    public function actionConfirm($id){
        $model = Order::findOne($id);
        if (!$model) {
            return $this->message('资料不存在' , '','error');

        }
        if ($model->status != Order::STATUS_NEW || $model->order_status != Order::STEP_PAID) {
            return $this->message('该订单无法收款', Url::previous() , 'error');
        }

        if ($model->stepConfirm()) {
            return $this->message('收款成功', $this->redirect(['index']));
        } else {
            return $this->message('收款失败' . implode('|', $model->firstErrors), $this->redirect(['index']) , 'error');
        }
    }
    //发货
    public function actionShipment($id){
        $model = Order::findOne($id);
        if (!$model){
            return $this->message('没有该订单' ,  $this->redirect(['index']) ,'error' );
        }
        if ($model->status != Order::STATUS_NEW || $model->order_status != Order::STEP_CONFIRM) {
            return $this->message('该订单无法发货', $this->redirect(['index']) ,'error');
        }
        if($model->load(Yii::$app->request->post())){
            $model->order_status =  Order::STEP_SHIPPED;
            if($model->save()){
                return $this->message('订单发货成功' ,  $this->redirect(['index'])  );
            }else{
                return $this->message('订单发货失败' . implode('|', $model->firstErrors), $this->redirect(['index']) , 'error');
            }
        }

        return $this->render('shipment' , [
            'model' => $model,
        ]);
    }
    //售后
    public function actionService($id){

    }
    //关闭订单
    public function actionClose($id){
        $model = Order::findOne($id);
        if (!$model){
            return $this->message('没有该订单' ,  $this->redirect(['index']) ,'error' );
        }
        if ($model->status != Order::STATUS_NEW) {
            return $this->message('该订单无法关闭', $this->redirect(['index']) ,'error');
        }
        $model->status =  Order::STATUS_CANCELED;
        if($model->save()){
            return $this->message('订单关闭成功' ,  $this->redirect(['index'])  );
        }else{
            return $this->message('订单关闭失败' . implode('|', $model->firstErrors), $this->redirect(['index']) , 'error');
        }


    }
}