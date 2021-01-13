<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'merchant',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'merchant\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-merchant',
        ],
        'response' => [
            'class' => 'yii\web\Response',
            'on beforeSend' => function($event) {
                Yii::$app->services->log->record($event->sender);
            },
        ],

        'user' => [
            'identityClass' => 'merchant\models\UserObj',
            'enableAutoLogin' => true,
            'loginUrl' => ['site/login'],
            'idParam' => 'user_id',
            'identityCookie' => ['name' => 'zz_merchant_identity', 'httpOnly' => true],

            'on afterLogin' => ['merchant\models\UserObj', 'afterLogin'],
            'on beforeLogout' => ['merchant\models\UserObj', 'afterLogout'],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-merchant',
        ],
        /** ------ 缓存 ------ **/
        'cache' => [
            'class' => 'yii\caching\FileCache',
            'cachePath' => '@merchant/runtime/cache'
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [

            ],
        ],
        //rbac
        'authManager' => [
            'class' =>'yii\rbac\DbManager',
        ],


    ],
    'params' => $params,
];
