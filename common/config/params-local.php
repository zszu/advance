<?php

const STATUS_ACTIVE = 1;
const STATUS_INACTIVE = 0;
const STATUS_DELETED = -1;

const STATUS_YES = 1;
const STATUS_NO = 0;
return [

    'poststatus'=>[
        '1'=>'草稿',
        '2'=>'已发布',
        '3'=>'已归档'
    ],
    'status'=>[
        '1' => '启用',
        '0' => '停用',
    ],
    'comment_status'=>[
        '0' => '未审核',
        '1' => '已审核',
    ],
    //支付宝 支付参数
    'alipay' => [
        'partner' => '2088631322259290',
        'seller_id' => '2088631322259290',
        'key' => 'p7tsrp0gvu2agi44qgslfsl3pnvhxjpx',
        'sign_type' => 'MD5',
        'input_charset' => 'utf-8',
        'transport' => 'http',
        'cacert' => getcwd() . '\\ali_cert.pem',
        'payment_type' => '1',
        'service' => 'create_direct_pay_by_user',
    ],
    //微信支付 支付参数
    'wxpay' => [
        'app_id' => 'wx663df85e915d289a',
        'mch_id' => '1556029151',
        'key' => '76RSFhiZKFh3MZKxyGm4fkENBR4qHv6O',
        'app_secret' => '',
        'ssl_cert' => getcwd() . '\\wx_cert.pem',
        'ssl_key' => getcwd() . '\\wx_key.pem',
        'curl_proxy_host' => '0.0.0.0',
        'curl_proxy_port' => 0,
        'report_level' => 1
    ],

    //极速验证
    'geetest' => [
        'captcha_id' => 'b46d1900d0a894591916ea94ea91bd2c',
        'private_key' => '36fc3fe98530eea08dfc6ce76e3d24c4',
    ],
];
