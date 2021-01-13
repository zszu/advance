<?php
use yii\widgets\ActiveForm;
use common\helpers\Html;
?>
<div class="container-fluid">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title">基本信息</h4>
    </div>
    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <div class="modal-body">

        <?= $form->field($model, 'order_by')->textInput() ?>
        <?= $form->field($model, 'mobile') ?>
        <?= \common\widgets\provinces\Provinces::widget([
            'form' => $form,
            'model' => $model,
            'provincesName' => 'province_id',// 省字段名
            'cityName' => 'city_id',// 市字段名
            'areaName' => 'district_id',// 区字段名
//            'template' => 'short' //合并为一行显示
        ]); ?>
        <?= $form->field($model, 'summary') ?>

    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
    </div>
    <?php ActiveForm::end()?>
</div>

