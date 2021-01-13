<?php

return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'language' => 'zh-CN', //全局设置中文
    'components' => [
        'name'=>'首页',
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
//        'cdn' => [//支持使用 七牛 腾讯云 阿里云 网易云 具体配置请参见 http://doc.feehi.com/cdn.html
//            'class' => feehi\cdn\DummyTarget::className(),//不使用cdn
//        ],

        /**  ---网站碎片管理---**/
        'debris' => [
            'class' => 'common\components\Debris',
        ],

        /** ------ 访问设备信息 ------ **/
        'mobileDetect' => [
            'class' => 'Detection\MobileDetect',
        ],
        'log' => [
            //消息跟踪级别，设置yii\log\Dispatcher::traceLevel属性
            //YII_DEBUG开启时，日志消息被记录时，追加最多3个调用堆栈信息
            'traceLevel' => YII_DEBUG ? 3 : 0,
            //日志目标，可定义多个
            'targets' => [
                [
                    //日志处理器类
                    'class' => 'yii\log\FileTarget',
                    //日志记录的级别
                    'levels' => ['error', 'warning'],
                    //定义日志文件
                    'logFile' => '@runtime/logs/test.log',
                ],
            ],
        ],
        /** ------ 服务层 ------ **/
        'services' => [
            'class' => 'services\Application',
        ],

    ],

    'controllerMap' => [
        'file' => 'common\controllers\FileBaseController', // 文件上传公共控制器
        'ueditor' => 'common\widgets\ueditor\UeditorController', // 百度编辑器
        'provinces' => 'common\widgets\provinces\ProvincesController', // 省市区
        'notify' => 'common\widgets\notify\NotifyController', // 消息
        'selector' => 'common\widgets\selector\SelectorController', // 微信资源选择
        'select-map' => 'common\widgets\selectmap\MapController', // 经纬度选择
        'cropper' => 'common\widgets\cropper\CropperController', // 图片裁剪
    ],
];
