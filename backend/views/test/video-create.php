<?php
use yii\widgets\ActiveForm;
use common\helpers\Url;
use \common\widgets\FileInput;
?>

<div class="card-body">
<?php $form = ActiveForm::begin([
    'id' => $model->formName(),
    'fieldConfig' => [
        'template' => "<div class='col-sm-3 text-right'>{label}</div><div class='col-sm-9'>{input}\n{hint}\n{error}</div>",
    ]
]);?>
    <?= $form->field($model , 'name')->label('名称')->textInput();?>
    <?= $form->field($model, 'path')->widget(FileInput::className(), [
        'type' => 'videos',
        'clientOptions'=>[
                'pick' => [
                    'multiple' => false,
                ],
                'accept' => [
                    'extensions' => Yii::$app->params['uploadConfig']['videos']['extensions'],
                    'mimeTypes' => 'video/*',
                ],
                'formData' => [
                    // 保留原名称
                    'originalName' => true,
                    'drive' => 'local',
                ],
                'fileSingleSizeLimit' => 10240 * 1024 * 100,// 大小限制
                'independentUrl' => true, // 不受接管上传Url
            ]
    ])->label('视频')->hint('视频只支持 '. implode('/' , Yii::$app->params['uploadConfig']['videos']['extensions']).' 格式,大小不超过为100M');?>
    <div class="modal-footer">
        <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
        <button class="btn btn-primary" type="submit">保存</button>
    </div>
    <?php ActiveForm::end(); ?>
</div>


