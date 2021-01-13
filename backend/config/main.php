<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'response' => [
            'class' => 'yii\web\Response',
            'on beforeSend' => function($event) {
                Yii::$app->services->log->record($event->sender);
            },
        ],

        'user' => [
            'identityClass' => 'backend\models\UserObj',
            'enableAutoLogin' => true,
            'loginUrl' => ['site/login'],
            'idParam' => 'user_id',
            'identityCookie' => ['name' => 'zz_backend_identity', 'httpOnly' => true],

            'on afterLogin' => ['backend\models\UserObj', 'afterLogin'],
            'on beforeLogout' => ['backend\models\UserObj', 'afterLogout'],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        /** ------ 缓存 ------ **/
        'cache' => [
            'class' => 'yii\caching\FileCache',
            /**
             * 文件缓存一定要有，不然有可能会导致缓存数据获取失败的情况
             *
             * 注意如果要改成非文件缓存请删除，否则会报错
             */
            'cachePath' => '@backend/runtime/cache'
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
//            'suffix'=>'.html',
//            'enableStrictParsing' => false,
            'rules' => [
//                'gii' => 'gii',
//                'gii/<controller:\w+>' => 'gii/<controller>',
//                'gii/<controller:\w+>/<action:\w+>' => 'gii/<controller>/<action>',
            ],
        ],
        //rbac
        'authManager' => [
            'class' =>'yii\rbac\DbManager',
        ],

        'assetManager' => [
            'bundles' => [
                'yii\bootstrap\BootstrapPluginAsset' => [
                    'js' => [],
                    'sourcePath'=>null, // 防止在 backend/web/asset 下生产文件
                ]
            ]
        ]


        
    ],
    'params' => $params,
];
