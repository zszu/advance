<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
use common\models\Type;
use \backend\models\UserObj;
?>

<div class="container-fluid">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title">基本信息</h4>
    </div>
    <div class="modal-body">
       <?php $form = ActiveForm::begin([
               'options'=>['class'=>'row'],
           ])?>
        <?= $form->field($model, 'order_by')->textInput() ?>
        <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
        <?= $form->field($model, 'type')->dropDownList(Type::listData()) ?>
        <?= $form->field($model, 'user_id')->dropDownList(UserObj::listUser()) ?>
        <?= $form->field($model, 'summary')->textarea() ?>


        <?= $form->field($model, 'cover')->widget('common\widgets\FileInput' , [

        ]); ?>
        <?= $form->field($model, 'covers')->widget('common\widgets\FileInput', [
            'clientOptions' => [
                'pick' => [
                    'multiple' => true,
                ],
            ],
        ]); ?>
       <?= $form->field($model, 'content')->widget(ZKindEditor::className(), [
           'style' => ZKindEditor::STYLE_ADAVANCED,
           'options' => [
               'rows' => 20,
               'style' => 'width: 100%',
           ]
       ]) ?>

       <?= $form->field($model, 'tags' ,[
               'template'=>'<div class="card-body">{input}</div>'
       ])->textInput(['class'=>'form-control js-tags-input']) ?>

       <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>

    </div>
    <?php ActiveForm::end()?>

    <div class="modal-footer">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
    </div>

</div>



