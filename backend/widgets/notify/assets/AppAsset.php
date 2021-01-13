<?php
namespace backend\widgets\notify\assets;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{
    public $js = [
        'bootstrap-notify.min.js',
        'lightyear.js',
    ];
    public function init()
    {
        $this->sourcePath = dirname(__DIR__) . '/resources';
        parent::init();
    }
}