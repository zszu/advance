<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Comment */
/* @var $form yii\widgets\ActiveForm */
?>


<?php $form = ActiveForm::begin([
    'method'=>'post',
    'id'=>'reply-comment',
    'action'=>Url::toRoute(['site/comment'])
]); ?>



<?= $form->field($model,'up_id')->label(false)->hiddenInput(['value'=> $up_id ?? 0])?>
<?= $form->field($model,'user_id')->label(false)->hiddenInput(['value'=>Yii::$app->user->id])?>
<?= $form->field($model,'news_id')->label(false)->hiddenInput(['value'=>$news_id])?>
<?= $form->field($model,'content')->textarea(['row'=>6])?>

<div class="form-group">
    <?= Html::submitButton('发表评论', ['class' =>'btn btn-primary reply-comment-submit']) ?>
</div>

<?php ActiveForm::end(); ?>

