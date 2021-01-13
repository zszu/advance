<?php

namespace console\controllers;

use yii\console\Controller;
use yii\console\ExitCode;
use Yii;

class RbacController extends Controller
{
    public function actionUp()
    {

        $auth = Yii::$app->authManager; //获取我们的 authManager 组件

        $obj = $auth->createRole('普通管理员');//添加角色名称
        $obj->description = '没有实权的管理';//添加角色描述
        $auth -> add($obj);
//        $auth->assign($obj,Yii::$app->user->identity->id);
    }


}
