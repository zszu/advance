<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
use common\models\Type;
use \backend\models\UserObj;
?>


<div class="card-body">

   <?php $form = ActiveForm::begin([
           'options'=>['class'=>'row'],
       ])?>
    <?= $form->field($model, 'order_by')->textInput() ?>
    <?= $form->field($model, 'good_amount')->textInput() ?>

    <?= $form->field($model, 'remart')->textarea() ?>

    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status']);?>

    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
   <?php ActiveForm::end()?>

</div>



