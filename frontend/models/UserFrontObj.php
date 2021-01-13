<?php
namespace frontend\models;

use common\components\Helper;
use common\models\UserLog;
use Yii;
use yii\base\NotSupportedException;
use yii\web\IdentityInterface;

class UserFrontObj extends \common\models\UserBaseObj
{
    //检查用户组
    protected static function checkIdentity($identity)
    {
        if ($identity && in_array($identity->group, [self::GROUP_MEMBER, self::GROUP_COMPANY])) {
            return $identity;
        }
        return null;
    }

    /**
     * @param $event \yii\web\UserEvent
     */
    public static function afterLogin($event)
    {
        /* @var $identity static */
        $identity = $event->identity;
        UserLog::log(UserLog::TYPE_LOGIN, '前台登录!', $identity->id);
        $identity->login_times++;
        $identity->last_login_ip = \Yii::$app->request->userIP;
        $identity->last_login_at = time();
        $identity->save();
    }

    /**
     * @param $event \yii\web\UserEvent
     */
    public static function afterLogout($event)
    {
        UserLog::log(UserLog::TYPE_LOGIN, '前台退出!', $event->identity->id);
    }


}
