<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nickname')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'profile')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'roles')->label('角色')->checkboxList($roleArr); ?>
    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>
    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
    <?php ActiveForm::end()?>

</div>


