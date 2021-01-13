<?php

$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-frontend',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-frontend',
        ],
        'user' => [
//            'class' =>'yii\web\User',
            'identityClass' => 'frontend\models\UserFrontObj',
            'enableAutoLogin' => true,
            'idParam' => 'front_id',
            'loginUrl' => ['/site/login'],
            'identityCookie' => [
                'name' => 'zz_front_identity',
                'httpOnly' => true,
            ],

            'on afterLogin' => ['frontend\models\UserFrontObj', 'afterLogin'],
            'on beforeLogout' => ['frontend\models\UserFrontObj', 'afterLogout'],
        ],

        'session' => [
            // this is the name of the session cookie used for login on the frontend
            'name' => 'zz-frontend',
            'class' => 'yii\web\Session',
            'timeout' => 1440,//session过期时间，单位为秒
            'cookieParams' => ['lifetime' => 1440]
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
            'suffix'=>'.html',
            'rules' => [

                'news/<id:\d+>' => 'news/detail',
                '' => 'site/index',

//                [
//                    'pattern' => '<action:[^\/]+>-<type:\d+>/<page:\d+>',
//                    'route' => 'site/<action>',
//                    'suffix' => '/'
//                ],
//                [
//                    'pattern' => '<action:[^\/]+>-<type:\d+>',
//                    'route' => 'site/<action>',
//                    'suffix' => '/'
//                ],
                [
                    'pattern' => 'news-<type:\d+>/<page:\d+>',
                    'route' => 'news/index',
                    'suffix' => '/'
                ],
                [
                    'pattern' => 'news-<type:\d+>',
                    'route' => 'news/index',
                    'suffix' => '/'
                ],
                [
                    'pattern' => 'news/title-<title:\w+>',
                    'route' => 'news/index',
                    'suffix' => '/'
                ],

                [
                    'pattern'=>'news/<action:[^\/]+>',
                    'route' => 'news/<action>',
                    'suffix' => '/'
                ],
                [
                    'pattern'=>'<action:[^\/]+>',
                    'route'=>'site/<action>',
                    'suffix'=>'/',
                ],


            ],
        ],
        
    ],
    'params' => $params,
];
