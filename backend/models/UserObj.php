<?php
namespace backend\models;

use common\helpers\ArrayHelper;
use common\models\auth\Assignment;
use common\models\auth\Role;
use common\models\UserLog;
use Yii;

class UserObj extends \common\models\UserBaseObj
{

    public function rules()
    {
        return [
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            [['profile','nickname','email'] ,'string'],
            ['email', 'email'],
            [['mobile', 'email'], 'unique'],
            [['email'], 'required'],
            [['avatarFile'], 'image', 'extensions' => 'jpg,jpeg,png,gif', 'checkExtensionByMimeType' => false],
        ];
    }

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

    public function getRolesId(){
        $rolesId = Assignment::find()
            ->where(['user_id'=>$this->id])
            ->asArray()
            ->all();
        return ArrayHelper::map($rolesId, 'role_id' , 'role_id');
    }

    public function getRoles(){
        $rolesId = $this->getRolesId();
        return $rolesId;
    }

    public function getRolesByDelemiter($id)
    {
        $rolesId = $this->getRolesId();

        $models = Role::find()->select(['id' ,'title' , 'order_by' , 'status' , 'created_at'])
            ->where(['status' =>STATUS_ACTIVE])
            ->andWhere(['in' , 'id' , $rolesId])
            ->orderBy('order_by desc , created_at')
            ->asArray()
            ->all();

        $roleArr = ArrayHelper::map($models, 'id' , 'title');

        return $roleArr;
    }

    public function saveRoles($data , $user_id){
        $data = $data ?:[];
        Assignment::deleteAll(['user_id' =>$user_id]);
        $items = [];

        foreach ($data as $v){
            $items[] = [
                $v,
                $user_id,
            ];
        }
        $fields = ['role_id' ,'user_id'];
        return !empty($items) && Yii::$app->db->createCommand()->batchInsert(Assignment::tableName() , $fields , $items)->execute();

    }


    public static function listUser(){
        $models = self::find()
            ->where(['status'=>self::STATUS_ACTIVE])
            ->all();
        return ArrayHelper::map($models , 'id' , 'username');
    }

}
