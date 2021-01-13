<?php
namespace backend\controllers;

use Yii;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

class ActionLogController extends BaseController
{
    public  $modelClass = 'common\models\UserLog';
    public  $pageSize = 10;

    public function actionIndex()
    {
        $query = $this->modelClass::find();
        $query = $query->orderBy('created_at DESC');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' => $this->pageSize,'pageSizeParam' => false],
            'sort'=> false,
        ]);
        return $this->render($this->action->id, [
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionView()
    {
        $id = Yii::$app->request->get('id', null);
        if(!$id){
            throw new NotFoundHttpException('操作出错');
        }
        $model = $this->modelClass::findOne($id);
        if(!$model){
            throw new NotFoundHttpException('没有此记录');
        }

        return $this->renderAjax('view', [
            'model' => $model,
        ]);

    }

}