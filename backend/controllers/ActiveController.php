<?php
namespace backend\controllers;

use common\models\Order;
use Yii;
use common\components\Curd;
use common\models\ActiveGoods;
use yii\data\ActiveDataProvider;

/**
 * Class ActiveController
 * @package backend\controllers
 * desc: 活动
 */
class ActiveController extends BaseController
{
    public  $modelClass = 'common\models\Active';
    public  $searchModel = '';
    public  $pageSize =20;
    use Curd;
    //相关商品
    public function actionActiveGoods(){
        $active_id = Yii::$app->request->get('active_id');
        if(!$active_id){
            return $this->message('没有该活动',$this->redirect(['index']) , 'error');
        }

        $query = ActiveGoods::find()->where(['active_id' => $active_id]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=>false,
        ]);
        return $this->render('active-goods' , [
            'dataProvider' => $dataProvider,
            'active_id'=>$active_id,
        ]);
    }
    //添加相关商品
    public function actionActiveGoodsEdit(){
        $id = Yii::$app->request->get('id');
        $active_id = Yii::$app->request->get('active_id');

        if(!$id){
            $model = new ActiveGoods();
            $model = $model->loadDefaultValues();
        }else{
            $model = ActiveGoods::findOne($id);
        }

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->message("商品编辑成功", $this->redirect(['active-goods' , 'active_id'=>$active_id]));
        }

        return $this->render($this->action->id, [
            'model' => $model,
            'active_id'=>$active_id
        ]);
    }
    public function actionActiveGoodsDelete($id , $active_id){
        $model = ActiveGoods::findOne($id);
        if(!$model){
            return $this->message("没有该商品", $this->redirect(['active-goods' , 'active_id'=>$active_id]));
        }
        if($model->delete()){
            return $this->message("商品删除成功", $this->redirect(['active-goods' , 'active_id'=>$active_id]));
        }
    }
    //相关订单
    public function actionActiveOrder(){
        $id = Yii::$app->request->get('id');
        if(!$id){
            return $this->message('没有该活动',$this->redirect(['index']) , 'error');
        }

        $query = Order::find()/*->where(['active_id' => $id])*/;
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=>false,
        ]);
        return $this->render('active-order' , [
            'dataProvider' => $dataProvider
        ]);
    }
}