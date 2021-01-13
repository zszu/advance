<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\BaseLoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = '登录';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="col-md-12">
    <div class="col-md-8">
        <div class="site-login">
            <h1><?= Html::encode($this->title) ?></h1>

            <p>填写用户名和密码</p>

            <div class="row">
                <div class="col-lg-5">
                    <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

                    <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                    <?= $form->field($model, 'password')->passwordInput() ?>

                    <?= $form->field($model, 'rememberMe')->checkbox() ?>


                    <div style="color:#999;margin:1em 0">
                        忘记密码，找回密码 <?= Html::a('重置密码', ['site/request-password-reset']) ?>.
                        <br>
                        账号已过期重新验证 <?= Html::a('前去验证', ['site/resend-verification-email']) ?>
                    </div>

                    <div class="form-group">
                        <?= Html::submitButton('登录', ['class' => 'btn btn-primary','id'=>'submit', 'name' => 'login-button']) ?>
                    </div>

                    <?php ActiveForm::end(); ?>
                </div>
                <div class="col-lg-4">
<!--                    <a  class="btn btn-primary btn-lg btn-block" href="">QQ登录</a>-->
<!--                    <a  class="btn btn-primary btn-lg btn-block">微信扫码登录</a>-->
                </div>
            </div>
        </div>
    </div>

</div>




