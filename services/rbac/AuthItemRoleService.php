<?php
namespace  services\rbac;

use common\components\Service;
use common\helpers\ArrayHelper;
use common\models\auth\Item;
use common\models\auth\ItemRole;

class AuthItemRoleService extends Service
{
    /**
     * 根据角色获取 权限
     *
     * @var array
     *
     */
    public $authItems = [];
    public function getAuthByRole($role){
        if (!empty($this->authItems)) {
            return $this->authItems;
        }

        $items = ItemRole::find()
            ->select(['role_id' ,'item_id'])
            ->where(['role_id' => $role['id']])
            ->asArray()
            ->all();
        $items = ArrayHelper::map($items ,'item_id' ,'item_id');
        $models = Item::find()
            ->select(['id'  , 'name'])
            ->where(['in' ,'id' ,$items])
            ->asArray()
            ->all();
        $this->authItems = ArrayHelper::map($models ,'id' ,'name');
        return $this->authItems;
    }
}