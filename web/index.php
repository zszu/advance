<?php
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_ENV') or define('YII_ENV', 'dev');

require dirname(__DIR__) . '/vendor/autoload.php';
require dirname(__DIR__) . '/vendor/yiisoft/yii2/Yii.php';
require dirname(__DIR__) . '/common/config/bootstrap.php';
require dirname(__DIR__) . '/frontend/config/bootstrap.php';
var_dump(dirname(__DIR__));die;

$config = yii\helpers\ArrayHelper::merge(
    require dirname(__DIR__) . '/common/config/main.php',
    require dirname(__DIR__) . '/common/config/main-local.php',
    require dirname(__DIR__) . '/frontend/config/main.php',
    require dirname(__DIR__) .  '/frontend/config/main-local.php'
);
/**
 * 打印
 *
 * @param $array
 */
function p(...$array)
{
    echo "<pre>";

    if (count($array) == 1) {
        print_r($array[0]);
    } else {
        print_r($array);
    }

    echo '</pre>';
}
//p($config);die;
(new yii\web\Application($config))->run();
