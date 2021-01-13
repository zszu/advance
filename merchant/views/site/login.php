<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\BaseLoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use \yii\helpers\Url;

$this->context->layout = 'base';
$this->title = '商家后台登录';
$this->params['breadcrumbs'][] = $this->title;
?>
<style>
    .lyear-wrapper {
        position: relative;
    }
    .lyear-login {
        display: flex !important;
        min-height: 100vh;
        align-items: center !important;
        justify-content: center !important;
    }
    .login-center {
        background: #fff;
        min-width: 38.25rem;
        padding: 2.14286em 3.57143em;
        border-radius: 5px;
        margin: 2.85714em 0;
    }
    .login-header {
        margin-bottom: 1.5rem !important;
    }
    .login-center .has-feedback.feedback-left .form-control {
        padding-left: 38px;
        padding-right: 12px;
    }
    .login-center .has-feedback.feedback-left .form-control-feedback {
        left: 0;
        right: auto;
        width: 38px;
        height: 38px;
        line-height: 38px;
        z-index: 4;
        color: #dcdcdc;
    }
    .login-center .has-feedback.feedback-left.row .form-control-feedback {
        left: 15px;
    }
</style>

<div class="row lyear-wrapper">
    <div class="lyear-login">
        <div class="login-center">
            <div class="login-header text-center">
                <a href="javascript:;"> <?= $this->title;?></a>
            </div>
                <?php $form = ActiveForm::begin(['id' => 'login-form' ,
                    'fieldConfig' => [
                        'options' => [
                            'class' => 'form-group has-feedback feedback-left',
                        ],
                        'template' => '{input}{hint}{error}',
                    ]
                ]); ?>
                    <?= $form->field($model, 'username')->textInput(['autofocus' => true,'placeholder'=>'请输入您的用户名']) ?>
                    <?= $form->field($model, 'password')->passwordInput(['placeholder'=>'请输入密码']) ?>
                    <?= $form->field($model, 'verifyCode'  , [
                        'options' => [
                            'class' => 'form-group has-feedback feedback-left row',
                        ],
                    ])
                        ->widget(\yii\captcha\Captcha::className(), [
                            'captchaAction' => ['site/captcha'],
                            'template' => " <div class=\"col-xs-7\">{input} <span class=\"mdi mdi-check-all form-control-feedback\" aria-hidden=\"true\"></span></div> <div class=\"col-xs-5\">{image}</div>",
                            'imageOptions' => [
                                'style' => 'vertical-align:middle; cursor: pointer;',
                                'title' => '登陆验证码，点击刷新',
                            ],
                        ]);
                    ?>
                    <div class="form-group">
                        <button class="btn btn-block btn-primary" type="submit">立即登录</button>
                    </div>
                <?php ActiveForm::end(); ?>

            <hr>
            <footer class="col-sm-12 text-center">
                <p class="m-b-0">Copyright © 2020 . All right reserved</p>
            </footer>
        </div>
    </div>
</div>
