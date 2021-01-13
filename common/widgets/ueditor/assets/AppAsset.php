<?php
namespace common\widgets\ueditor\assets;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{

    public $sourcePath = '@common/widgets/ueditor/resources/';

    // css会自动载入
    public $css = [

    ];

    public $js = [
        'ueditor.config.js',
        'ueditor.all.js',
    ];

    public $publishOptions = [
        'except' => [
            'php/',
            'index.html',
            '.gitignore'
        ]
    ];

    public $depends = [
    ];
}