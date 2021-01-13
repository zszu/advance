<?php
namespace common\widgets\tree\assets;

use yii\web\AssetBundle;

class AppAsset extends AssetBundle{
    public $sourcePath = '@common/widgets/tree/resources';

    public $css = [
        'themes/default-rage/style.min.css'
    ];
    public $js = [
        'jstree.min.js',
        'common.js',
    ];
}