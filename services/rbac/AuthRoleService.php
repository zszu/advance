<?php
namespace services\rbac;

use common\models\auth\Assignment;
use common\helpers\ArrayHelper;
use common\models\auth\Role;
use Yii;
use common\components\Service;
use yii\web\UnauthorizedHttpException;

class AuthRoleService extends Service
{
    /**
     * 角色
     *
     * @var array
     */
    public $roles = [];

    /**
     * 获取角色
     *
     * @return array|\yii\db\ActiveQuery
     * @throws UnauthorizedHttpException
     */

    public function getRole(){
        if(!$this->roles){
            $assignment = Assignment::findOne(['user_id' => Yii::$app->user->identity->id]);
            if(!$assignment){
                Yii::$app->user->logout();
                throw new UnauthorizedHttpException('暂未授权角色，请与管理员联系');
            }
            $assignment = ArrayHelper::toArray($assignment);
            $this->roles = Role::find()
                ->where(['id' => $assignment['role_id']])
                ->asArray()
                ->one();
            if (!$this->roles) {
                throw new UnauthorizedHttpException('授权的角色已失效，请联系管理员');
            }
        }
        return $this->roles;
    }
}