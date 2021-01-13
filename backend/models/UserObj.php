<?php
namespace backend\models;

use common\helpers\ArrayHelper;
use common\models\auth\Assignment;
use common\models\auth\Role;
use common\models\UserLog;
use Yii;

class UserObj extends \common\models\UserBaseObj
{


    //检查用户组
    protected static function checkIdentity($identity)
    {
        if ($identity && in_array($identity->group, [self::GROUP_WORKER, self::GROUP_ADMIN])) {
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
        UserLog::log(UserLog::TYPE_LOGIN, '后台登录!', $identity->id);
        $identity->last_login_ip = \Yii::$app->request->userIP;
        $identity->last_login_at = time();
        $identity->save();
    }

    /**
     * @param $event \yii\web\UserEvent
     */
    public static function afterLogout($event)
    {
        UserLog::log(UserLog::TYPE_LOGIN, '后台退出!', $event->identity->id);
    }



}
