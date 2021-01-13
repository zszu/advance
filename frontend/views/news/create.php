<?php

use common\models\Type;
use common\widgets\ZKindEditor\assets\ZKindEditorAsset;
use \yii\helpers\Url;
use yii\widgets\ActiveForm;
use common\widgets\ZKindEditor\ZKindEditor;
ZKindEditorAsset::register($this);

$form = ActiveForm::begin([
    'action'=>Url::toRoute(['create','user_id'=>Yii::$app->user->id])
])
?>
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"></span></button>
        <h4 class="modal-title">编辑文章</h4>
    </div>
    <div class="modal-body">
        <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
        <?= $form->field($model, 'type')->dropDownList(Type::listData() , ['style'=>'width:150px;']) ?>
        <?= $form->field($model, 'summary')->textarea() ?>
        <?= $form->field($model, 'content')->widget(ZKindEditor::className(), [
            'style' => ZKindEditor::STYLE_ADAVANCED,
            'options' => [
                'rows' => 20,
                'style' => 'width: 100%',
            ]
        ]) ?>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary pull-right">提交</button>
    </div>
<?php ActiveForm::end()?>

