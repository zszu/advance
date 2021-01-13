<?php

use \yii\widgets\ActiveForm;
use \common\helpers\Html;

$model2 = new \common\models\Address();
$model2->loadDefaultValues();
?>


<div class="card-body">

        <?php $form = ActiveForm::begin([
               'options'=>['class'=>'row'],
           ])?>
        <?= $form->field($model, 'order_by')->textInput() ?>
        <?= $form->field($model, 'mobile') ?>
        <?= \common\widgets\provinces\Provinces::widget([
            'form' => $form,
            'model' => $model,
            'provincesName' => 'province_id',// 省字段名
            'cityName' => 'city_id',// 市字段名
            'areaName' => 'district_id',// 区字段名
                'template' => 'short' //合并为一行显示
        ]); ?>
        <?= $form->field($model, 'summary') ?>

        <div class="form-group col-md-12">
            <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
            <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
        </div>
        <?php ActiveForm::end()?>

</div>


