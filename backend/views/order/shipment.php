<?php
use \yii\widgets\ActiveForm;
use \common\helpers\Html;
use \common\models\Express;
?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <?= $form->field($model, 'express_id')->dropDownList(Express::listData()); ?>
    <?= $form->field($model, 'express_no')->textInput() ?>

    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
    <?php ActiveForm::end()?>

</div>


