<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $user common\models\User */
$verifyLink = Yii::$app->urlManager->createAbsoluteUrl(['site/verify-email', 'token' => $user->verification_token]);
?>
<div class="verify-email">
    <p>你好 <?= Html::encode($user->username) ?>,</p>

    <p>点击以下链接验证邮箱:</p>
    <p><?= Html::a(Html::encode($verifyLink), $verifyLink) ?></p>
</div>
