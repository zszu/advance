<?php
namespace api\modules\v1\models;


use Yii;
use common\models\UserBaseObj;

class UserObj extends UserBaseObj
{
    public static function findIdentityByAccessToken($token, $type = null)
    {
        // 如果token无效的话，
        if(!static::accessTokenIsValid($token)) {
            throw new \yii\web\UnauthorizedHttpException("token is invalid.");
        }

        return static::findOne(['access_token' => $token, 'status' => self::STATUS_ACTIVE]);
    }
    /**
     * 生成 access_token
     */
    public function generateAccessToken()
    {
        $this->access_token = Yii::$app->security->generateRandomString() . '_' . time();
    }
    public function generateInvalidAt(){
        $this->invalid_at = time()+Yii::$app->params['user.accessTokenExpire'];
    }

    /**
     * 校验 access_token 是否有效
     */
    public static function accessTokenIsValid($token)
    {
        if (empty($token)) {
            return false;
        }

        $timestamp = (int)substr($token, strrpos($token, '_') + 1);
        $expire = Yii::$app->params['user.accessTokenExpire'];
        return ($timestamp + $expire >= time());
    }

}