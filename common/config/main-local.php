<?php
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=127.0.0.1;dbname=advance',
            'username' => 'root',
            'password' => 'root',
//            'dsn' => 'mysql:host=106.14.223.67;dbname=www_zszu_xyz',
//            'username' => 'zszu',
//            'password' => '159780',
            'charset' => 'utf8mb4',
            'tablePrefix'=>'zz_',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            'useFileTransport' => false,
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.qq.com',
                'username' => '',
                'password' => '',
                'port' => 465,
                'encryption' => 'ssl',
            ],
            'messageConfig' => [
                'charset' => 'UTF-8',
                'from' => ['2835152688@qq.com' => 'zsz'],
            ]
        ],
    ],
];
