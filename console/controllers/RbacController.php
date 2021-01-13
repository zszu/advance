<?php

namespace console\controllers;

use yii\console\Controller;
use yii\console\ExitCode;
use Yii;

class RbacController extends Controller
{
    public function actionUp()
    {

        $auth = Yii::$app->authManager;
//        $ruleGroup = new \common\rbac\UserGroupRule(['userObject' => Yii::$app->user]);
//        $auth->add($ruleGroup);

        $worker = $auth->createRole('worker');
//        $worker->ruleName = 'worker';
        $auth->add($worker);
        $admin = $auth->createRole('admin');
        $auth->add($admin);
        $permissionArr = [
            'backend/main/site-param' => '设置站点参数',
            'backend/main/system-param' => '设置系统参数',
            'backend/main/company-param' => '设置公司信息',
            'backend/main/email-param' => '设置邮箱参数',
        ];
        $manangeArr = [
//            'backend/page/*'=>[
                'backend/page/index' => '单页管理',
                'backend/page/edit' => '单页修改',
                'backend/page/delete' => '单页删除',
//            ],

            'backend/slide/index' => '焦点图管理',
            'backend/slide/edit' => '焦点图修改',
            'backend/slide/delete' => '焦点图删除',
            'backend/news/index' => '新闻管理',
            'backend/news/edit' => '新闻修改',
            'backend/news/delete' => '新闻删除',
            'backend/category/index' => '分类管理',
            'backend/category/edit' => '分类修改',
            'backend/category/delete' => '分类删除',
            'backend/help/index' => '常见问题管理',
            'backend/help/edit' => '常见问题修改',
            'backend/help/delete' => '常见问题删除',
            'backend/feedback/index' => '留言管理',
            'backend/feedback/edit' => '留言修改',
            'backend/feedback/delete' => '留言删除',
            'backend/comment/index' => '评论管理',
            'backend/comment/edit' => '评论修改',
            'backend/comment/delete' => '评论删除',
            'backend/member/index' => '会员管理',
            'backend/member/edit' => '会员修改',
            'backend/member/delete' => '会员删除',
            'backend/user/index' => '用户管理',
            'backend/user/edit' => '用户修改',
            'backend/user/delete' => '用户删除',
            'backend/user/permission' => '用户权限设置',
        ];
        $permissionArr = array_merge($permissionArr , $manangeArr);

        $i = 1000;
        foreach ($permissionArr as $k => $v) {
            $i++;
            $this->addPermission($k, $v, $admin, $i);
        }

    }

    private function addPermission($route, $name, $parent = null, $data = null)
    {
        $auth = Yii::$app->authManager;
        $permission = $auth->createPermission($route);
        $permission->description = $name;
        $permission->data = $data;
        $auth->add($permission);
        if ($parent) {
            $auth->addChild($parent, $permission);
        }
    }

    public function actionDown()
    {
        Yii::$app->authManager->removeAll();
    }
}
