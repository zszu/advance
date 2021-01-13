<?php

namespace common\helpers;

use Yii;

/**
 * Class Auth
 * @package common\helpers
 */
class Auth
{
    protected static $auth = [];
    /**
     * 是否超级管理员
     *
     * @return bool
     */
    public static function isSuperAdmin()
    {
        if (!in_array(Yii::$app->id, ['backend'])) {
            return false;
        }

        return Yii::$app->user->id == 1;
    }

    /**
     * 校验权限是否拥有
     *
     * @param string $route
     * @param array $defaultAuth
     * @return bool
     */
    public static function verify(string $route, $defaultAuth = [])
    {
        if(self::isSuperAdmin()){
            return true;
        }
        $auth = !empty($defaultAuth) ? $defaultAuth : self::getAuth();
        if (in_array('/*', $auth) || in_array(Yii::$app->id.$route, $auth)) {
            return true;
        }
        return self::multistageCheck($route, $auth);
    }

    /**
     * 过滤自己拥有的权限
     *
     * @param array $route
     * @return array|bool
     */
    public static function verifyBatch(array $route)
    {
        if(self::isSuperAdmin()){
            return true;
        }

        return array_intersect(self::getAuth(), $route);
    }

    /**
     * 支持通配符 *
     *
     * 例如：
     * /goods/*
     * /goods/index/*
     *
     * @param $route
     * @param array $auth
     * @return bool
     */
    public static function multistageCheck($route, array $auth)
    {
        $key = '/';
        $routeArr = explode('/', $route);

        foreach ($routeArr as $value) {
            if (!empty($value)) {
                $key .= $value . '/';
                if (in_array($key . '*', $auth)) {
                    return true;
                }
            }
        }

        return false;
    }

    /**
     * 获取权限信息
     *
     * @return array
     */
    public static function getAuth()
    {
        if (self::$auth) {
            return self::$auth;
        }
        $auth = Yii::$app->authManager;
        //获取 当前用户 拥有的角色
        $roleArr = $auth->getRolesByUser(Yii::$app->user->id);
        $authArr = [];
        foreach ($roleArr as $role){
            $authArr =  $auth->getPermissionsByRole($role->name);
            foreach ($authArr as $k => $value){
                $authArr[$k] = $value->name;
            }
        }


        return self::$auth = $authArr;
    }
}