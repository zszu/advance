<?php
use \yii\widgets\ActiveForm;
use \yii\helpers\Url;

$form = ActiveForm::begin([
    'id' => $model->formName(),
    'enableAjaxValidation' => true,
    'validationUrl' => Url::to(['update-price','id' => $model['id']]),
])
?>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
    <h4 class="modal-title">基本信息</h4>
</div>
<div class="modal-body">

   <?= $form->field($model, 'realy_amount')->textInput() ?>

</div>
<div class="modal-footer">
    <button class="btn btn-primary" type="submit">保存</button>
    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
</div>
<?php ActiveForm::end()?>