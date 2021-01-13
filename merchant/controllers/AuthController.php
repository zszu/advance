<?php
namespace backend\controllers;

use Yii;
use common\helpers\ArrayHelper;
use common\models\auth\Assignment;
use backend\models\UserObj;
use common\helpers\ResultDataHelper;
use common\models\auth\ItemRole;
use common\models\auth\Item;
use common\models\auth\Role;
use yii\data\ActiveDataProvider;


class  AuthController extends BaseController
{
    public $pageSize = 10;
    //用户管理
    public function actionUser(){
        $query = UserObj::find()->select(['id' , 'username' , 'nickname' , 'email' , 'status'  , 'created_at'])
            ->where(['status'=>STATUS_ACTIVE])
            ->andWhere(['<>' , 'username' , 'admin'])
            ->orderBy('order_by desc , created_at');
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => $this->pageSize,
            ],
            'sort'=>false,
        ]);

        return $this->render($this->action->id , [
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionUserEdit(){
        $id = Yii::$app->request->get('id', null);

        $model = $this->findModel(UserObj::className() , $id);
        if(!$model){
            return $this->message('没用该用户' , $this->redirect(['user'] , 'error'));
        }
        $models = Role::find()->select(['id' ,'title' , 'order_by' , 'status' , 'created_at'])
            ->where(['status' =>STATUS_ACTIVE])
            ->orderBy('order_by desc , created_at')
            ->asArray()
            ->all();

        $roleArr = ArrayHelper::map($models , 'id' , 'title');

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $data = Yii::$app->request->post()['UserObj']['roles'] ?? [];

            if ($model->save()) {
                //创建用户相关角色
                $model->saveRoles($data , $model->id);
                return $this->message("提交成功", $this->redirect(['user']));
            }
        }

        return $this->render($this->action->id, [
            'model' => $model,
            'roleArr' => $roleArr,
        ]);
    }
    /**
     * @param $id
     * 删除规则
     */
    public function actionUserDelete($id){
        $model = UserObj::findOne($id);
        if(!$model){
            return $this->message('没有该用户' , $this->redirect(['user']) ,'error');
        }
        $model->status = -1;
        Assignment::deleteAll(['user_id' =>$id]);
        if($model->save(false)){
            return $this->message('用户删除成功' , $this->redirect(['user']));
        }
        return $this->message('用户删除失败' , $this->redirect(['user']) ,'error');
    }
    //角色管理
    public function actionRole(){
        $query = Role::find()->select(['id' , 'title' , 'summary' , 'order_by' , 'created_at'])
            ->where(['status'=>STATUS_ACTIVE])
            ->orderBy('order_by desc , created_at');
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => $this->pageSize,
                'pageSizeParam'=>false,
            ],
            'sort'=>false,

        ]);

        return $this->render($this->action->id , [
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     * 修改角色
     */
    public function actionRoleEdit()
    {
        $id = Yii::$app->request->get('id', null);
        if(!$id){
            $model = new Role();
            $model = $model->loadDefaultValues();
        }else{
            $model = Role::findOne($id);
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {

            if ($model->save()) {
                return $this->message("角色操作成功", $this->redirect(['role']));
            }
        }
        $defaultData = Item::find()
            ->select(['id' , 'pid' , 'title'])
            ->where(['status'=>1])
            ->asArray()
            ->all();
        $selectIds = ItemRole::find()
            ->where(['role_id' => $id])
            ->indexBy('item_id')
            ->column();
        $selectIds = array_keys($selectIds);

        return $this->render($this->action->id, [
            'model' => $model,
            'defaultData' => $defaultData,
            'selectIds' => $selectIds,
        ]);

    }
    /**
     * 修改 角色 权限
     */
    public function actionAjaxRoleEdit(){
        $request = Yii::$app->request;
        $id = $request->post('id');
        if($request->isAjax){
            $data = $request->post() ?? [];

            $model = $this->findModel(Role::className() , $id);

            if(!$model){
                return $this->message('没用该角色' , $this->redirect(['user'] , 'error'));
            }
            $model->attributes = $data;
            if(!$model->save()){
                return ResultDataHelper::json(422 , '提交失败');
            }
            //创建角色相关权限
            $model->saveRules($data , $model->id);
            return ResultDataHelper::json(200, '提交成功');
        }
    }
    /**
     * 删除
     */
    public function actionRoleDelete($id){
        $model = Role::findOne($id);
        if(!$model) {
            return $this->message('没有该角色' , $this->redirect(['role']) , 'error');
        }
        if(ItemRole::deleteAll(['role_id' =>$id]) && $model->delete()){
            return $this->message('删除成功' , $this->redirect(['role']));
        }else{
            return $this->message('删除失败' , $this->redirect(['role']) , 'error');
        }
    }
    /**
     *  规则
     */
    public function actionRule(){
        $query = Item::find()->select(['id','title','name','summary','created_at'])
            ->where(['status'=>STATUS_ACTIVE])
            ->orderBy('order_by desc , created_at')
            ->asArray();
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => false,
            'sort'=>false,
        ]);

        return $this->render($this->action->id , [
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     * 修改规则
     */
    public function actionRuleEdit()
    {
        $id = \Yii::$app->request->get('id', null);
        $model = $this->findModel(Item::className() , $id);
        if(!$model){
            return $this->message('没用该规则' , $this->redirect(['user'] , 'error'));
        }
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->save()) {
                return $this->message("规则设置成功", $this->redirect(['rule']));
            }
        }

        return $this->render($this->action->id, [
            'model' => $model,
        ]);

    }

    /**
     * @param $id
     * 删除规则
     */
    public function actionRuleDelete($id){
        $model = Item::findOne($id);
        if(!$model){
            return $this->message('没有该规则' , $this->redirect(['rule']) ,'error');
        }
        if($model->delete()){
            return $this->message('规则删除成功' , $this->redirect(['rule']));
        }
        return $this->message('规则删除失败' , $this->redirect(['rule']) ,'error');
    }

    /**
     * 返回模型
     *
     * @param $id
     * @return \yii\db\ActiveRecord
     */
    protected function findModel($modelClass , $id)
    {
        /* @var $model \yii\db\ActiveRecord */
        if (empty($id) || empty(($model = $modelClass::findOne($id)))) {
            $model = new $modelClass;
            return $model->loadDefaultValues();
        }

        return $model;
    }
}