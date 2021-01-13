<?php
namespace frontend\models;

use common\models\Param;
use common\models\UserBaseObj;
use Yii;
use yii\base\Model;
use common\models\User;

/**
 * Password reset request form
 */
class PasswordResetRequestForm extends Model
{
    public $email;


    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            ['email', 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'exist',
                'targetClass' => UserFrontObj::className(),
                'filter' => ['status' => UserFrontObj::STATUS_ACTIVE],
                'message' => 'There is no user with this email address.'
            ],
        ];
    }
    public function attributeLabels(){
        return [
            'email'=>'邮箱',
        ];
    }

    /**
     * Sends an email with a link, for resetting the password.
     *
     * @return bool whether the email was send
     */
    public function sendEmail()
    {
        /* @var $user User */
        $user = UserFrontObj::findOne([
            'status' => UserFrontObj::STATUS_ACTIVE,
            'email' => $this->email,
        ]);

        if (!$user) {
            return false;
        }
        
        if (!UserFrontObj::isPasswordResetTokenValid($user->password_reset_token)) {
            $user->generatePasswordResetToken();
            if (!$user->save()) {
                return false;
            }
        }
        $host = Param::getValue('mail_host');
        $password = Param::getValue('mail_password');
        $port = Param::getValue('mail_port');
        $ssl = Param::getValue('mail_ssl');
        $fromAddress = Param::getValue('mail_from_address');
        $fromName = Param::getValue('mail_from_name');
        if (empty($to)) {
            $toAddress = Param::getValue('mail_to_address');
        }


        /* @var $mailer \yii\swiftmailer\Mailer */
        $mailer = Yii::$app->mailer;
        $mailer->useFileTransport = false;
        $mailer->transport = [
            'class' => 'Swift_SmtpTransport',
            'host' => $host,
            'username' => $fromAddress,
            'password' => $password,
            'port' => $port,
            'encryption' => $ssl ? 'ssl' : '',
        ];
        if (!($host && $port && $fromAddress && $password && $fromName && $toAddress)) {
            return false;
        }


        return $mailer->compose(
                ['html' => 'passwordResetToken-html', 'text' => 'passwordResetToken-text'],
                ['user' => $user]
            )
//            ->setFrom([$fromAddress => Yii::$app->name . ' robot'])
            ->setTo($this->email)
            ->setSubject('Password reset for ' . Yii::$app->name)
            ->send();
    }
}
