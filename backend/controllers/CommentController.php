<?php
namespace backend\controllers;
use common\components\Curd;
use common\models\Comment;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

class CommentController extends  BaseController
{
    public  $modelClass = 'common\models\Comment';
    public  $searchModel = '';
    public  $pageSize =20;
    use Curd;

    public function actionAudit($id){
        $model = Comment::findOne($id);
        if(!$model){
            throw new  NotFoundHttpException('资料不存在');
        }
        $model->updateAttributes(['status'=>1]);
        return $this->message('审核通过' , $this->redirect(['index']));
    }

}