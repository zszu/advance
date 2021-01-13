<?php


namespace frontend\models;

use common\helpers\EmailHelper;
use common\models\Param;
use common\models\UserBaseObj;
use Yii;
use common\models\User;
use yii\base\Model;

class ResendVerificationEmailForm extends Model
{
    /**
     * @var string
     */
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
//                'filter' => ['status' => UserFrontObj::STATUS_ACTIVE],
                'message' => '没有用户使用此电子邮件地址'
            ],
        ];
    }
    public function attributeLabels(){
        return [
            'email'=>'邮箱',

        ];
    }

    /**
     * Sends confirmation email to user
     *
     * @return bool whether the email was sent
     */
    public function sendEmail()
    {
        $user = UserFrontObj::findOne([
            'email' => $this->email,
            'status' => [UserBaseObj::STATUS_INACTIVE,UserBaseObj::STATUS_DELETED]
        ]);

        if ($user === null) {
            return false;
        }
        $user->generateEmailVerificationToken();
        $user->save(false);

        $mailer = EmailHelper::setMail();

        return $mailer->compose(
                ['html' => 'emailVerify-html', 'text' => 'emailVerify-text'],
                ['user' => $user]
            )
//            ->setFrom([$fromAddress => Yii::$app->name . ' robot'])
            ->setTo($this->email)
            ->setSubject('Account registration at ' . Yii::$app->name)
            ->send();
    }
}
