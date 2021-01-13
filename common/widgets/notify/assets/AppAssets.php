<?php
namespace common\widgets\notify;

use yii\web\AssetBundle;

class AppAssets extends AssetBundle
{
    public $sourcePath = '@common/widgets/notify';

    public $js = [
        'js/bootstrap-notify.min.js',
        'js/lightyear.js',
        'js/main.min.js',
    ];
    public $css = [];
}