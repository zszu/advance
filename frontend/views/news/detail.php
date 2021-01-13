<?php

use frontend\components\TagsCloudWidget;
use frontend\components\RctReplyWidget;
use \yii\bootstrap\Modal;
use yii\helpers\HtmlPurifier;
use common\models\Comment;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use \common\helpers\Html;
/* @var $this yii\web\View */
/* @var $searchModel common\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$login_url = Url::toRoute(['site/login']);
$sign_up_url = Url::toRoute(['site/signup']);
$boolean = !Yii::$app->user->identity;
?>

<div class="container">

    <div class="row">

        <div class="col-md-9">

            <ol class="breadcrumb">
                <li><a href="<?= Url::toRoute(['site/news'])?>">首页</a></li>
                <li><a href="<?= Url::to(['news/index' , 'type' => $model->typeOne->id]);?>">文章列表</a></li>
                <li class="active"><?= $model->title?></li>
            </ol>

            <div class="post">
                <div class="title">
                    <h2><?= Html::encode($model->title);?></h2>
                    <div class="author">
                        <span class="glyphicon glyphicon-time" aria-hidden="true"></span><em><?= date('Y-m-d H:i:s',$model->created_at)."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";?></em>
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span><em><?= $model->user->username ?? '暂无作者';?></em>
                    </div>
                </div>


                <br>

                <div class="content">
                    <?= HTMLPurifier::process($model->content)?>
                </div>

                <br>

                <div class="nav">
                    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
                        <?= implode(',',$model->tagLinks);?>
                    <br>
                    <?= Html::a("评论({$commentCount})",$model->url.'#comments');?>
                    最后修改于<?= date('Y-m-d H:i:s',$model->updated_at);?>

                    <div class="col-md-12">
                        <?php if(!$boolean):?>
                            <?php $form = ActiveForm::begin([
                                'action'=>Url::toRoute(['site/comment']),
                                'method'=>'post',
                            ]); ?>
                                <?= $form->field($comment,'up_id')->label(false)->hiddenInput(['value'=>  0])?>
                                <?= $form->field($comment,'user_id')->label(false)->hiddenInput(['value'=>Yii::$app->user->id])?>
                                <?= $form->field($comment,'news_id')->label(false)->hiddenInput(['value'=>$model->id])?>
                                <?= $form->field($comment,'content')->label(false)->textarea(['row'=>6])?>

                            <?= Html::button('评论',['type'=>'submit','class'=>'btn btn-primary'])?>
                            <?php ActiveForm::end();?>
                        <?php else:?>
                            <h3>发表评论</h3>
                            <div class="alert alert-warning" >
                                你需要登录才可以评论。<?= Html::a('登录',$login_url);?>|<?= Html::a('注册',$sign_up_url);?>
                             </div>
                        <?php endif;?>
                    </div>
                </div>

            </div>

            <div id="comments">
                <div class="col-md-12">
                    <?php if($commentCount>=1) :?>
                        <?= $this->render('/site/_list_comment',array(
                            'post'=>$model,
                            'comments'=>$activeComments,
                        ));?>
                    <?php endif;?>

                </div>

            </div>

        </div>


        <?= $this->render('/site/_right')?>


    </div>

</div>



<?php


$url = Url::toRoute(['site/ajax-comment']);

$id = $model->id;
$viewJs = <<<JS
    var boolean = '{$boolean}';
    function isLogin() {
          if(boolean){
            layer.confirm('你还没有登录？请先登录或注册',{
                    btn:['登录','注册'],
                },
                function(){
                      window.location.href = "{$login_url}";
                      return false;
                },
                function(){
                      window.location.href = "{$sign_up_url}";
                       return false;
                }
            )
            }else{
                return true;
            }
          }
    // $('.comment').click(function() {
    //   layer.alert(11);
    // })
JS;
$this->registerJs($viewJs);

?>
