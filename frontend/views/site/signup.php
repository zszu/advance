<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;
$this->title = '注册';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'password')->passwordInput() ?>
                <div id="captcha">
                    <span id="captcha" style="display: none">取得</span>
                </div>
                <div class="form-group">
                    <?= Html::submitButton('注册', ['class' => 'btn btn-primary', 'name' => 'signup-button' , 'id' => 'send-btn']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>


<?php
$startUrl = Url::to(['site/geetest-start', 't' => time()]);
$verifyUrl = Url::to(['site/geetest-verify']);
$this->registerJsFile('//static.geetest.com/static/tools/gt.js', ['depends' => 'yii\web\JqueryAsset']);
$this->registerJs(<<<JS
var stop = false;
var remain = 120;
var sendVerify = false;

var handlerPopup = function (captchaObj) {
    
    jQuery("#send-btn").click(function () {
        var validate = captchaObj.getValidate();
        if (!validate) {
            alert('请先完成验证！');
            return;
        }
        jQuery.ajax({
            url: "{$verifyUrl}",
            type: "post",
            dataType: "json",
            data: {
                mobile: jQuery('#registerform-mobile').val(),
                geetest_challenge: validate.geetest_challenge,
                geetest_validate: validate.geetest_validate,
                geetest_seccode: validate.geetest_seccode
            },
            success: function (result) {
                if (result.status == "ok") {
                    alert('成功' + result.message);
                } else {
                    alert(result.message);
                }
            }
        });
    });
    captchaObj.bindOn("#send-btn");
    captchaObj.appendTo("#captcha");
};
jQuery.ajax({
    url: "{$startUrl}",
    type: "get",
    dataType: "json",
    success: function (data) {
        initGeetest({
            gt: data.gt,
            challenge: data.challenge,
            product: "popup",
            offline: !data.success
        }, handlerPopup);
    }
});

JS
);