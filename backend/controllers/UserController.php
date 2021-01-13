<?php
namespace backend\controllers;

use backend\models\ChangePwdForm;
use backend\models\SignForm;

use backend\models\rbac\PermissionForm;

use common\components\ArrayHelper;
use common\components\Curd;
use common\models\User;
use yii\data\ActiveDataProvider;
use Yii;
class UserController extends  BaseController
{
    public  $modelClass = 'backend\models\UserObj';
    public  $searchModel = '';
    public  $pageSize =20;
    use Curd;
    public function actionIndex()
    {
        $query = $this->modelClass::find();
        $query = $query->andWhere(['<>' , 'username' , 'admin'])->andWhere(['group'=>User::GROUP_WORKER])->orderBy('id DESC');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=> false,
        ]);
        return $this->render($this->action->id, [
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionEdit()
    {
        $id = \Yii::$app->request->get('id', null);
        if(!$id){
            return $this->actionCreate();
        }
        $model = $this->findModel($id);
        if ($model->load(\Yii::$app->request->post()) && $model->save()) {
            return $this->message("提交成功", $this->redirect(['index']));
        }
        return $this->render($this->action->id, [
            'model' => $model,
        ]);

    }
    public function  actionCreate(){
        $model = new SignForm();

        if ($model->load(\Yii::$app->request->post())) {
            if($user = $model->signup())
            {
                return $this->redirect(['index']);
            }
        }
        return $this->render('create' , [
            'model' => $model,
        ]);
    }

    /**
     * @param $id
     * 删除 用户后 删除相应授权
     */
    public function actionDelete($id)
    {
        $auth = Yii::$app->authManager;
        if ($this->findModel($id)->delete()) {
            // 删除用户对应角色
            $auth->revokeAll($id);
            return $this->message("删除成功", $this->redirect(['index']));
        }
        return $this->message("删除失败", $this->redirect(['index']), 'error');
    }
    /**
     * 用戶权限
     */
    public function actionPermission(){
        $query = $this->modelClass::find();
        $query = $query->andWhere(['<>' , 'username' , 'admin'])->andWhere(['group'=>User::GROUP_WORKER])->orderBy('id DESC');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=> false,
        ]);
        return $this->render($this->action->id, [
            'dataProvider' => $dataProvider,
        ]);
    }
    /**
     *  设置用户权限
     */
    public function actionPermissionEdit($id){
        $user = User::find()
            ->andWhere(['id' => $id])
            ->one();
        if (!$user) {
            return $this->message("资料不存在！", $this->redirect(['index']));
        }

        $model = new PermissionForm(['userId' => $id]);

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->save()) {
                return $this->message("权限设置成功", $this->redirect(['permission']));
            }
        }

        $permissionArr = Yii::$app->authManager->getPermissionsByUser($id);
        $model->permissionArr = ArrayHelper::getColumn($permissionArr, 'name');

        $roleArr = Yii::$app->authManager->getRolesByUser($id);
        $model->roleArr = ArrayHelper::getColumn($roleArr, 'name');

        return $this->render('permission-edit', [
            'user' => $user,
            'model' => $model,
        ]);
    }
    /**
     * 用户个人信息
     */
    public function actionUserInfo(){
        $model = Yii::$app->user->identity;

        if(Yii::$app->request->post() && $model->load(Yii::$app->request->post())){
            if($model->save()){
                return $this->message("个人修改成功" , $this->redirect(['user-info']));
            }
        }
        return $this->render('user-info' , [
            'model' => $model,
        ]);
    }
    /**
     * 修改密码
     */
    public  function actionUserResetPwd(){
        $model = new ChangePwdForm();
        $model->user = Yii::$app->user->identity;

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->doSave()) {
                return $this->message('密码修改成功！', $this->redirect(['site/logout']));
            } else {
                Yii::error($model->errors);
                return $this->message('密码修改失败！', $this->redirect(['user-reset-pwd']));
            }
        }
        return $this->render('user-reset-pwd' , [
            'model' => $model,
        ]);
    }
}