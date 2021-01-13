<?php
namespace backend\controllers;

use common\components\Curd;
use common\models\common\Attachment;
use Yii;
use yii\data\ActiveDataProvider;

/**
 * Class TestController
 * @package backend\controllers
 * desc 测试控制器
 */
class TestController extends BaseController
{
    use Curd;
    public $modelClass = 'common\models\common\Attachment';
    public $pageSize = 10;
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

    public function actionFile(){
        return $this->render('file');
    }
    /**
     * 创建
     *
     * @param $type
     * @return mixed|string
     * @throws \Psr\SimpleCache\InvalidArgumentException
     */
    public function actionCreate()
    {
        $type = 'video';
        $model = new Attachment();
        $model->upload_type = $type;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            try {
                return $this->message("创建成功", $this->redirect(['index', 'type' => $type]));
            } catch (\Exception $e) {
                return $this->message($e->getMessage(), $this->redirect(['index', 'type' => $type]), 'error');
            }
        }

        return $this->render($type . '-create', [
            'model' => $model
        ]);
    }
}