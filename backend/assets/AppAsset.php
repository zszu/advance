<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        // 'css/bootstrap.min.css',
        'css/materialdesignicons.min.css',
        'css/style.min.css',
        //弹框
        'js/jconfirm/jquery-confirm.min.css',
        //标签
        'js/jquery-tags-input/jquery.tagsinput.min.css',

    ];
    public $js = [
        'js/bootstrap.min.js',
        'js/perfect-scrollbar.min.js',
        'js/main.min.js',
        //弹框
        'js/jconfirm/jquery-confirm.min.js',
        //标签
        'js/jquery-tags-input/jquery.tagsinput.min.js',
        //复选框
        'js/chosen.jquery.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
        'backend\assets\LayerAsset',
    ];

}


