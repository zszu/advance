<?php

use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\widgets\ZKindEditor\ZKindEditor;

?>
<div class="post-form">

    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'sort')->textInput() ?>
    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'content')->widget(ZKindEditor::className(), [
        'keditorOptions' => [
            'uploadJson' => Url::to(['base/upload']),
            'fileMangerJson' => Url::to(['base/manage']),
        ],
        'userId' => Yii::$app->user->id,
        'style' => ZKindEditor::STYLE_ADAVANCED,
        'options' => [
            'rows' => 20,
            'style' => 'width: 100%',
        ]
    ]) ?>

    <?= $form->field($model, 'tags')->textarea(['rows' => 6]) ?>

    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['poststatus'],['prompt'=>'请选择状态']);?>


    <?= $form->field($model,'author_id')->dropDownList(Adminuser::listData(),['prompt'=>'请选择作者']);?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? '新增' : '修改', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>