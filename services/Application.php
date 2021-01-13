<?php
namespace services;
use common\components\Service;

/**
 * Class Application
 * @package services
 * 加载服务层
 * 调用方式 Yii::$app->services->sys->method();
 * author zszu
 */
class Application extends Service
{

    public $childService = [
        'sys' =>'services\sys\SysService',

        /**  --公共部分-- **/
        'actionLog' => 'services\common\ActionLogService',
        'log' => 'services\common\LogService',
        'actionBehavior' => 'services\common\ActionBehaviorService',
        /** ------ rbac ------ **/
        'rbacAuthItem' => 'services\rbac\AuthItemService',
        'rbacAuthItemRole' => 'services\rbac\AuthItemRoleService',
        'rbacAuthRole' => 'services\rbac\AuthRoleService',
        'rbacAuthAssignment' => 'services\rbac\AuthAssignmentService',
    ];

}