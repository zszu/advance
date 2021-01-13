<?php
namespace frontend\controllers;

use common\components\ArrayHelper;
use common\models\Comment;
use common\models\News;
use common\models\Tags;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\NotFoundHttpException;

class NewsController extends  BaseController
{
    //文章
    public function actionCreate($user_id){
        $model = new News();
        if($model->load(Yii::$app->request->post())){
            if (Yii::$app->user->isGuest) {
                return $this->message('请先登录', $this->redirect(['login']) ,'error');
                return $this->goHome();
            }
            $model->user_id = $user_id;
            $model->status = 0;
            if( $model->save()){
                return $this->message('文章发布成功,请等待管理员审核通过', $this->redirect(['detail','id'=>$model->id]));
            }else{
                return $this->message('文章发布失败', $this->redirect(['news/index']) ,'error');
            }
        }
        if(!Yii::$app->request->isAjax){
            return $this->render('create' , [
                'model' => $model->loadDefaultValues(),
            ]);
        }

        return $this->renderAjax('create' , [
            'model' => $model->loadDefaultValues(),
        ]);
    }
    public function actionIndex($title=null){
        $query = News::find()->where(['status'=>1]);
        $type = Yii::$app->request->get('type');
        $key = Yii::$app->request->get('key');
        if(!empty($type)){
            $query = $query->andFilterWhere(['type'=>$type]);
        }
        if(!empty($title)){
            $tagsObj = Tags::findAll(['title'=>$title]);
            $ids = ArrayHelper::map($tagsObj , 'article_id','article_id');
            $query = $query->andWhere(['in','id',$ids]);
        }
        if(!empty($key)){
            $query = $query->andFilterWhere(['like','title',$key]);
        }
        $query = $query->orderBy('created_at DESC');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' =>10,'pageSizeParam' => false],
            'sort'=> false,
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionDetail($id){
        $model = News::findOne($id);
        if(!$model){
            throw new NotFoundHttpException('没有此资料');
        }
        return $this->render('detail' ,[
            'model'=>$model,
            'commentCount'=>Comment::find()->where(['news_id'=>$id,'status'=>1])->count(),
            'activeComments'=>Comment::listData(),
            'comment' => new Comment(),
        ]);
    }



}