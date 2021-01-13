<?php

namespace common\rbac;

use common\models\User;
use Yii;
use yii\rbac\Rule;


class UserGroupRule extends Rule
{
    /* @var \yii\web\User */
    public $userObject = null;

    public $name = 'userGroup';

    public function init()
    {
        parent::init();
        if (empty($this->userObject)) {
            $this->userObject = Yii::$app->user;
        }
    }

    public function execute($user, $item, $params)
    {
        if (!$this->userObject->isGuest) {
            $group = $this->userObject->identity->group;
            if ($item->name == AUTH_ROLE_WORKER) {
                return $group == User::GROUP_WORKER;
            } elseif ($item->name == AUTH_ROLE_ADMIN) {
                return $group == User::GROUP_ADMIN;
            }
        }
        return false;
    }
}