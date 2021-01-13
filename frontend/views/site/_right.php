<?php
use common\models\News;
use frontend\components\TagsCloud;
use frontend\components\RecentComment;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use common\helpers\Html;
$user_id = Yii::$app->user->id;
?>
<div class="col-md-3">
    <div class="searchbox">
        <ul class="list-group">
            <li class="list-group-item">
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查找文章（<?= News::find()->count();?>）
            </li>
            <li class="list-group-item">
                <div class="row">
                    <form class="form-inline" action="<?= Yii::$app->urlManager->createUrl(['news/index']);?>" id="w0" method="get">
                        <div class="form-group">
                            <input type="text" class="form-control" name="key" id="w0input" placeholder="按标题" value="<?= Yii::$app->request->get('key',null)?>">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </div>

            </li>
        </ul>
    </div>
    <div class="create-news" style="padding-bottom: 20px;">
        <?= Html::a("发布文章",Url::toRoute(['create' , 'user_id' => $user_id]),[
            'class'=>'create-news btn btn-primary btn-lg btn-block',
        ]);?>

    </div>

    <div class="tagcloudbox">
        <ul class="list-group">
            <li class="list-group-item">
                <span class="glyphicon glyphicon-tags" aria-hidden="true"></span> 标签云
            </li>
            <li class="list-group-item">
                <?= TagsCloud::widget(['tags'=>$this->params['tags']]);?>
            </li>
        </ul>
    </div>


    <div class="commentbox">
        <ul class="list-group">
            <li class="list-group-item">
                <span class="glyphicon glyphicon-comment" aria-hidden="true"></span> 最新回复
            </li>
            <li class="list-group-item">
                <?= RecentComment::widget(['comments'=>$this->params['comments']]);?>
            </li>
        </ul>
    </div>


</div>

<?php

$bool = Yii::$app->user->isGuest;
$signupUrl = Url::toRoute(['site/signup']);
$loginUrl = Url::toRoute(['site/login']);
$viewJs = <<<JS
$(".create-news").on('click',(function() {
    bool = '{$bool}';
    if(bool){
          layer.confirm('你还没有登录或注册?' ,{
             btn:['前去注册','前去登录'],
             icon:2
          },function() {
              window.location.href = '{$signupUrl}'
          },function() {
              window.location.href = '{$loginUrl}'
          });return false;
    }
  

}))

JS;
$this->registerJs($viewJs);
?>
