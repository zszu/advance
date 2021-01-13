<?php
namespace backend\controllers;
use common\components\Curd;
use yii\web\NotFoundHttpException;
use Yii;

class AddressController extends BaseController
{
    public  $modelClass = 'common\models\Address';
    public  $pageSize =20;
    use Curd;
    public function actionEdit()
    {
        $id = \Yii::$app->request->get('id', null);

        $model = $this->findModel($id);
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->message("提交成功", $this->redirect(['index']));
        }

        return $this->render('edit', [
            'model' => $model,
        ]);

    }

    public function actionAjaxEdit()
    {
        $id = \Yii::$app->request->get('id', null);
        if(!$id){
            throw new NotFoundHttpException('没有此记录');
        }
        $model = $this->findModel($id);
        if(!$model){
            throw new NotFoundHttpException('没有此记录');
        }
        $model = $this->findModel($id);
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->message("提交成功", $this->redirect(['index']));
        }

        return $this->renderAjax('ajax-edit', [
            'model' => $model,
        ]);

    }
}