<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

return [
    'id' => 'app-api',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'api\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        'v1' => [ // 版本1
            'class' => 'api\modules\v1\V1',
        ],
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-api',
        ],
        'response'=>[
            'class'=>'yii\web\Response',
            'as beforeSend'=>'api\behaviors\beforeSend',
        ],

        'user' => [
            'identityClass' => 'api\modules\v1\models\UserObj',
            'enableAutoLogin' => true,
            'enableSession' => false,// 显示一个HTTP 403 错误而不是跳转到登录界面
            'loginUrl' => null,
//            'identityCookie' => ['name' => 'zz_identity_api', 'httpOnly' => true],
        ],
        // 'session' => [
        //     // this is the name of the session cookie used for login on the api
        //     'name' => 'advanced-api',
        // ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                    'logFile' => '@runtime/logs/' . date('Y-m/d') . '.log',
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'message/error',
        ],
        
         'urlManager' => [
             'class' => 'yii\web\UrlManager',
             // 美化Url,默认不启用。但实际使用中，特别是产品环境，一般都会启用。
             'enablePrettyUrl' => true,

             // 是否启用严格解析，如启用严格解析，要求当前请求应至少匹配1个路由规则，
             // 否则认为是无效路由。
             // 这个选项仅在 enablePrettyUrl 启用后才有效。启用容易出错
             // 注意:如果不需要严格解析路由请直接删除或注释此行代码

             //开启时 index ,view ,update,create ,delete 也要在 extraPatterns 中配置
             //关闭时 可以 在 控制器中 verbs 中 设置 动作
             'enableStrictParsing' => true,
             // 是否在URL中显示入口脚本。是对美化功能的进一步补充。
             'showScriptName' => false,
             //  // 指定续接在URL后面的一个后缀，如 .html 之类的。仅在 enablePrettyUrl 启用时有效。
             'suffix'=>'',
             'rules' => [

                 [
                     'class' => 'yii\rest\UrlRule',
                     'controller' => [
                         /**
                          * 默认登录测试控制器(Post)
                          * http://当前域名/api/v1/site/login
                          */
                         // 版本1
                         'v1/site',
                     ],

                     'pluralize' => false, // 是否启用复数形式，注意index的复数indices，开启后不直观


                     //必须 配置 额外的 方法
                     'extraPatterns' => [
//                         'POST login' => 'login', // 登录获取token
//                         'POST logout' => 'logout', // 退出登录
                         'POST refresh-token' => 'refresh-token', // 重置token
//                         'POST sms-code' => 'sms-code', // 获取验证码
//                         'POST register' => 'register', // 注册
//                         'POST up-pwd' => 'up-pwd', // 重置密码
//                         // 查询
                         'GET version' => 'version',
//                         'GET qr-code' => 'qr-code', // 获取小程序码
                     ]
                 ],
                 [
                     'class' => 'yii\rest\UrlRule',
                     'controller' => [
                         /**
                          * 默认登录测试控制器(Post)
                          * http://当前域名/api/v1/site/login
                          */
                         // 版本1
                         //测试
                         'v1/demo',
                         'v1/article',// 文章入口
                         'v1/goods',// 商品入口
                     ],

                     'pluralize' => false, // 是否启用复数形式，注意index的复数indices，开启后不直观
                     'extraPatterns' => [
                          // 查询
                         'GET,HEAD,OPTIONS search' => 'search',
                         'GET,HEAD,OPTIONS index' => 'index',
                         'GET,HEAD,OPTIONS view' => 'view',
                         'POST,OPTIONS create' => 'create',
                         'PUT,PATCH,OPTIONS update' => 'update',
                         'DELETE,OPTIONS delete' => 'delete',
                     ]
                 ],
             ],
         ],
        
    ],
    'params' => $params,
];
