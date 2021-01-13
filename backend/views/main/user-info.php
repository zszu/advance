<?php
use \yii\widgets\ActiveForm;
use common\helpers\Html;
?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options' =>[
                'class'=>'site-form',
                'enctype' => 'multipart/form-data'
            ],
        'validateOnSubmit' => true,
        'fieldConfig' =>[
               'options'=>[
                        'class' => 'form-group',
                ],
                'template'=>'{label}{input}{hint}{error}',
        ],
    ])?>
        <div class="edit-avatar">
            <?= Html::activeFileInput($model, 'avatarFile' , ['style'=>'position:absolute;left:-99999px']) ?>
            <?= Html::img( $model->avatar, ['height' => '52px', 'width' => '52px','class'=>'img-avatar img-avatar-48 m-r-10 user-avatar']) ?>

            <div class="avatar-divider"></div>
            <div class="edit-avatar-content">
                <p class="m-0">选择一张你喜欢的图片，裁剪后会自动生成264x264大小，上传图片大小不能超过2M。</p>
            </div>
        </div>

        <?= $form->field($model , 'username')->textInput(['id'=>'username','disabled'=>'true'])?>
        <?= $form->field($model , 'nickname')->textInput(['id'=>'nickname'])?>
        <?= $form->field($model , 'email')->Input('email',['id'=>'email','placeholder'=>"请输入正确的邮箱地址"])?>
        <?= $form->field($model , 'profile')->label('简介')->textarea(['id'=>'remark','rows'=>"3"])?>
        <button type="submit" class="btn btn-primary">保存</button>
    <?php ActiveForm::end();?>

</div>

<?php

$this->registerJs(<<<JS
$('.user-avatar').click(function() {
     $('#userobj-avatarfile').click();
})
$('.edit-avatar input[type=file]').change(function (e) {
    if (typeof FileReader == "undefined") return true;
    var elem = $(this);
    var files = e.target.files;
    for (var i = 0, f; f = files[i]; i++) {
        if (f.type.match('image.*')) {
            var reader = new FileReader();
            
            reader.onload = (function (theFile) {
                return function (e) {
                    var img = e.target.result;
                    previewElem = elem.next();
                    previewElem.attr('src', img);                    
                };
            })(f);
            reader.readAsDataURL(f);
        }
    }    
});
JS
);
