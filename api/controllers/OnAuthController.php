<?php
namespace api\controllers;
use common\helpers\ResultDataHelper;

use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;
use Yii;
class OnAuthController extends  BaseApiController
{
    /**
     * @return array
     */
    public function actions()
    {
        $actions = parent::actions();
        // 注销系统自带的实现方法
        unset($actions['index'], $actions['update'], $actions['create'], $actions['view'], $actions['delete']);
        // 自定义数据indexDataProvider覆盖IndexAction中的prepareDataProvider()方法
        // $actions['index']['prepareDataProvider'] = [$this, 'indexDataProvider'];
        return $actions;
    }

    /**
     * 验证更新是否本人
     *
     * @param $action
     * @return bool
     * @throws NotFoundHttpException
     * @throws \yii\base\InvalidConfigException
     * @throws \yii\web\BadRequestHttpException
     * @throws \yii\web\ForbiddenHttpException
     */
//    public function beforeAction($action)
//    {
//        if (!parent::beforeAction($action)) {
//            return false;
//        }
//
////        if ($action == 'update' && Yii::$app->user->identity->id != Yii::$app->request->get('id', null)) {
////            throw new NotFoundHttpException('权限不足.');
////        }
//
//        return true;
//    }

    /**
     * 首页
     *
     * @return ActiveDataProvider
     */
    public function actionIndex()
    {
        return new ActiveDataProvider([
            'query' => $this->modelClass::find()
                ->where(['status' => 1])
                ->orderBy('id desc'),

            //调用 asArray 时 Model 中的 fields 无效
            //  ->asArray(),
            'pagination' => [
                'pageSize' => $this->pageSize,
                'validatePage' => false,// 超出分页不返回data
            ],
        ]);
    }

    /**
     * 创建
     *
     * @return mixed|\yii\db\ActiveRecord
     */
    public function actionCreate()
    {
        /* @var $model \yii\db\ActiveRecord */
        $model = new $this->modelClass();
        $model->attributes = Yii::$app->request->post();
        if (!$model->save()) {
            return ResultDataHelper::api(422, $model->getErrors());
        }

        return $model;
    }


    /**
     * 更新
     *
     * @param $id
     * @return mixed|\yii\db\ActiveRecord
     * @throws NotFoundHttpException
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->attributes = Yii::$app->request->post();
        if (!$model->save()) {
            return ResultDataHelper::api(422, $this->getError($model));
        }

        return $model;
    }

    /**
     * 删除
     *
     * @param $id
     * @return bool
     * @throws NotFoundHttpException
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
//        $model->status = -1;

//        return $model->save();

        return $model->delete();
    }

    /**
     * 单个显示
     *
     * @param $id
     * @return \yii\db\ActiveRecord
     * @throws NotFoundHttpException
     */
    public function actionView($id)
    {
        return $this->findModel($id);
    }

    /**
     * @param $id
     * @return \yii\db\ActiveRecord
     * @throws NotFoundHttpException
     */
    protected function findModel($id)
    {

        /* @var $model \yii\db\ActiveRecord */
        if (empty($id) || !($model = $this->modelClass::find()->where([
                'id' => $id,
                'status' => 1,
            ])->one())) {
            throw new NotFoundHttpException('请求的数据不存在');
        }

        return $model;
    }
}