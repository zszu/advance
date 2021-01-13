<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use \kartik\datetime\DateTimePicker;
/* @var $this yii\web\View */
/* @var $model common\models\Post */

$this->title = ($model->isNewRecord?'新增':'编辑').'拼团活动';
$this->params['breadcrumbs'][] = ['label' => '评论管理', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="card-body">

        <?php $form = ActiveForm::begin([
            'options'=>[
                    'class'=>'row',
                    'enctype' => 'multipart/form-data',
                ],

        ])?>
        <?= $form->field($model, 'order_by')->textInput() ?>
        <?= $form->field($model, 'title')->textInput() ?>
        <?= $form->field($model, 'people_sum')->textInput() ?>

        <?= $form->field($model, 'cover')->widget('common\widgets\FileInput' , []); ?>

        <?= $form->field($model,'active_start')->widget(DateTimePicker::className() , [
            'options' => ['placeholder' => '选择开团时间'],
            'pluginOptions' => [
                'format' => 'yyyy-mm-dd hh:ii:ss',
                'todayHighlight' => true
            ]
        ]);?>
        <?= $form->field($model,'active_end')->widget(DateTimePicker::className() , [
            'options' => ['placeholder' => '选择结束时间'],
            'pluginOptions' => [
                'format' => 'yyyy-mm-dd hh:ii:ss',
                'todayHighlight' => true
            ]
        ]);?>

        <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>
        <div class="form-group col-md-12">
            <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
            <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
        </div>
        <?php ActiveForm::end()?>

</div>

