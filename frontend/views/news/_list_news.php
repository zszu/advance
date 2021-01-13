<?php
use yii\helpers\Html;
use \common\components\Helper;
use \yii\helpers\Url;
$title = Yii::$app->request->get('title');
?>

<div class="post">
    <div class="title">
        <h2><a href="<?= Url::toRoute(['news/detail','id'=>$model->id]);?>"><?= Html::encode($model->title);?></a></h2>

        <div class="author">
            <span class="glyphicon glyphicon-time" aria-hidden="true"></span><em><?= date('Y-m-d H:i:s',$model->created_at)."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";?></em>
            <span class="glyphicon glyphicon-user" aria-hidden="true"></span><em><?= $model->user->username ?? '暂无作者';?></em>
        </div>
    </div>

    <br>
    <div class="content">
        <?= Helper::cutStr($model->summary , 150);?>
    </div>

    <br>
    <div class="nav">
        <span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
            <?= implode(',', $model->tagLinks);?>
        <br>
        <?= Html::a("评论 ({$model->commentCount})",$model->url.'#comments')?> | 最后修改于 <?= date('Y-m-s H:i:s',$model->updated_at);?>
    </div>

</div>