<?php
namespace frontend\controllers;

class AuthController extends BaseController
{
    public function actions(){
        return [
            // 第三方登录
            'auth' => [
                'class' => 'yii\authclient\AuthAction',
                'successCallback' => [$this, 'successCallback'],
            ],
        ];
    }
    /**
     * Success Callback
     * @param yii\authclient\OAuth2|\xj\oauth\WeiboAuth $client
     * @see http://wiki.connect.qq.com/get_user_info
     * @see http://stuff.cebe.cc/yii2docs/yii-authclient-authaction.html
     */
    public function successCallback($client)
    {
        $id = $client->getId(); // qq | sina | weixin
        $attributes = $client->getUserAttributes(); // basic info
        $openid = $client->getOpenid(); //user openid
        $userInfo = $client->getUserInfo(); // user extend info
        // var_dump($id, $attributes, $openid, $userInfo);
        return $this->signup0($id, $attributes, $openid, $userInfo);
    }
    public function actionGithub(){
        return 'github login';
    }
    public function actionTest(){
        return 'test';
    }
    public function actionSuccessBack(){
        return 'ok';
    }
    //github 绑定
    public function bindGithub($id, $attributes, $openid, $userInfo){

    }

    //qq 绑定
    public function bindQQ($id, $attributes, $openid, $userInfo){

    }
}