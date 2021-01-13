<?php
use yii\helpers\Html;
use yii\helpers\Url;
use \yii\bootstrap\Modal;
use yii\widgets\ActiveForm;
use common\models\Comment;
?>

<?php foreach($comments as $comment): ?>

    <div class="comment" style="padding-left: <?= ($comment->level)*10;?>px;">

        <div class="row">
            <hr />
            <div class="col-md-12" >
                <div class="comment_detail">

                    <div class="col-md-12">
                        <div class="pull-left">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                            <span>用户名：<em style="color: #ff0000;"><?= $comment->user->username;?></em></span>
                            评论于
                            <span class="glyphicon glyphicon-time" aria-hidden="true"></span><em><?= date('Y-m-d H:i:s',$comment->created_at);?></em>
                        </div>

                    </div>

                    <div class="col-md-12">
                        <p>
                            <?= nl2br($comment->content);?>
                        </p>
                        <div class="pull-left" style="padding-right: 0px;">

                            <?php if(!Yii::$app->user->isGuest && Yii::$app->user->id != $comment->user_id):?>
                            <?= Html::a(" <span class=\"glyphicon glyphicon-envelope\"></span>",'javascript:void(0);',[
                                'id'=>'comment-reply',
                                'class'=>'btn btn-info btn-sm comment-reply',
                                'data-id'=>$comment->id,
                                'data-news-id'=>$comment->news->id,
                            ]);?>
                            <?php endif;?>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
<?php endforeach;?>


<?php
$user_id = Yii::$app->user->identity->id ?? 1;
$url = Url::toRoute(['site/ajax-reply-comment']);
$submit_url = Url::toRoute(['site/ajax-comment']);
$viewJs = <<<JS


(function ($) {

    "use strict";

    $.fn.replyComment = function () {

        $(this).on('click', function (e) {
            var that = this;

          var id = $(this).attr('data-id');
          var news_id = $(this).attr('data-news-id');
            
           $.get('{$url}' ,{'id':id,'news_id':news_id} ,function(data) {
               
               if($('#reply-comment').length > 0){
                    $('#reply-comment').remove();
               }
               // console.log($('#reply-comment').length);
               $(that).parent().append(data);
           })

        });

    };

    $('.comment-reply').replyComment();

})(jQuery);
JS;
$this->registerJs($viewJs);
?>
