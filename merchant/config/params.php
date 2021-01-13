<?php
return [
    'adminEmail' => 'admin@example.com',

     /**
      * 不需要验证的路由全称 白名单
      *
      * 注意: 前面以绝对路径/为开头
      */
    'noAuthRoute' => [
        '/main/index' => '/main/index',
        '/main/site-param' => '/main/site-param',
        '/main/system' => '/main/system',
        '/base/clear-cache' => '/base/clear-cache',
    ],
];
