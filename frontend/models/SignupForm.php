<?php
namespace frontend\models;

use common\helpers\EmailHelper;
use Yii;
use yii\base\Model;
use common\models\User;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $username;
    public $email;
    public $password;


    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            ['username', 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => UserFrontObj::className(), 'message' => '该用户名已被注册'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['email', 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'string', 'max' => 255],
            ['email', 'unique', 'targetClass' => UserFrontObj::className(), 'message' => '该邮箱已被注册'],

            ['password', 'required'],
            ['password', 'string', 'min' => 6],
        ];
    }
    public function attributeLabels(){
        return [
            'username'=>'用户名',
            'email'=>'邮箱',
            'password'=>'密码'

        ];
    }

    /**
     * Signs user up.
     *
     * @return bool whether the creating new account was successful and email was sent
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }
        
        $user = new UserFrontObj();
        $user->username = $this->username;
        $user->email = $this->email;
        $user->setPassword($this->password);
        $user->generateAuthKey();
        $user->group = UserFrontObj::GROUP_MEMBER;
        $user->status = UserFrontObj::STATUS_DELETED;

        $user->generateEmailVerificationToken();
        $res = $this->sendEmail($user);

//        var_dump($user->errors);die;
        if($user->save()){
            return true;
        }else{
            return false;
        }

    }

    /**
     * Sends confirmation email to user
     * @param User $user user model to with email should be send
     * @return bool whether the email was sent
     */
    protected function sendEmail($user)
    {
        $mail = EmailHelper::setMail();
        return $mail->compose('emailVerify-html',
                    ['html' => 'html', 'user' =>$user ]
                )
                ->setTo($this->email)
                ->setSubject('注册的用户名为 ' . $this->username)
                ->send();
    }
}
