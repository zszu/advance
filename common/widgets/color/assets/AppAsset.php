<?php
namespace common\widgets\color\assets;
use yii\web\AssetBundle;

class AppAsset extends AssetBundle
{

    public $sourcePath = '@common/widgets/color/resources';

    public $js = [
        'bootstrap-colorpicker.min.js'
    ];
    public $css = [
        'css/bootstrap-colorpicker.min.css'
    ];
}