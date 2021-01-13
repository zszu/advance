<?php
namespace  backend\controllers;

use Yii;
use common\components\Curd;
use common\helpers\ResultDataHelper;
use yii\data\ActiveDataProvider;


class TypeController extends BaseController
{
    public  $modelClass = 'common\models\Type';
    public  $pageSize =10;
    use Curd;
    /**
     * 首页
     *
     * @return mixed
     */
    public function actionIndex($name = null)
    {

        $query = $this->modelClass::find()->where(['name' => $name]);
        $query = $query->orderBy('order_by desc ,created_at DESC');

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
     * 编辑/创建
     *
     * @return mixed
     */
    public function actionEdit()
    {

        $id = Yii::$app->request->get('id', null);
        $name = Yii::$app->request->get('name', null);

        $model = $this->findModel($id);
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->message("提交成功", $this->redirect(['index','name'=>$name]));
        }

        return $this->render($this->action->id, [
            'model' => $model,
        ]);
    }



    /**
     * 删除
     *
     * @param $id
     * @return mixed
     * @throws \Throwable
     * @throws \yii\db\StaleObjectException
     */
    public function actionDelete($id)
    {
        $name = Yii::$app->request->get('name', null);

        if ($this->findModel($id)->delete()) {
            return $this->message("删除成功", $this->redirect(['index' , 'name' => $name]));
        }
        return $this->message("删除失败", $this->redirect(['index']), 'error');
    }


}