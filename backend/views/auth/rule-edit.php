<?php
use \yii\widgets\ActiveForm;

?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <?= $form->field($model, 'title')->label('权限名称')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'pid')->label('上级')->dropDownList(\common\models\auth\Item::dropDownList()) ?>
    <?= $form->field($model, 'name')->label('权限路由')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'summary')->label('权限描述')->textInput(['maxlength' => true]) ?>

    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
    <?php ActiveForm::end()?>

</div>




