<?php
namespace backend\controllers;

use common\models\common\Log;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

class LogController extends BaseController
{
    public  $modelClass = 'common\models\common\Log';
    public  $pageSize = 10;

    public function actionIndex()
    {
        $query = Log::find();
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
        $id = \Yii::$app->request->get('id', null);
        if(!$id){
            throw new NotFoundHttpException('操作出错');
        }
        $model = Log::findOne($id);
        if(!$model){
            throw new NotFoundHttpException('没有此记录');
        }

        return $this->renderAjax('view', [
            'model' => $model,
        ]);

    }
    public function actionDelete($id){
        if(!$id){
            throw new NotFoundHttpException('操作出错');
        }
        $model = Log::findOne($id);
        if(!$model){
            throw new NotFoundHttpException('没有此记录');
        }
        if($model->delete()){
            return $this->message('日志删除成功' , $this->redirect(['index']));
        }
        return $this->message('日志删除失败' , $this->redirect(['index']) , 'error');
    }

}