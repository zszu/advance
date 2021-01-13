<?php
namespace backend\models;
use common\models\User;
use yii\base\Model;

class SignForm extends Model
{
    public $username;
    public $nickname;
    public $email;
    public $password;
    public $password_repeat;
    public $profile;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['username', 'filter', 'filter' => 'trim'],
            ['username', 'required'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => '用户名已经存在.'],
            ['username', 'string', 'min' => 2, 'max' => 255],

            ['password', 'required'],
            ['password', 'string', 'min' => 6],

            ['password_repeat','compare','compareAttribute'=>'password','message'=>'两次输入的密码不一致！'],

            ['nickname','required'],
            ['nickname','string','max'=>128],

            ['profile','string'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'username' => '用户名',
            'nickname' => '昵称',
            'password' => '密码',
            'password_repeat'=>'重输密码',
            'email' => 'Email',
            'profile' => '简介',
        ];
    }


    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }

        $user = new User();
        $user->username = $this->username;
        $user->nickname = $this->nickname;
        $user->email = $this->email;
        $user->group = User::GROUP_WORKER;
        $user->profile = $this->profile;

        $user->setPassword($this->password);
        $user->generateAuthKey();
        $user->password = $user->password_hash;
        return $user->save() ? $user : null;
    }
}