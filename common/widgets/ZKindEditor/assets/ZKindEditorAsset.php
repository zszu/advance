<?php
namespace common\widgets\ZKindEditor\assets;

use yii\web\AssetBundle;

class ZKindEditorAsset extends AssetBundle
{

    public $sourcePath = '@common/widgets/ZKindEditor/dist';
    public $js = [
        YII_DEBUG ? 'kindeditor.js' : 'kindeditor-min.js',
//        'kindeditor-min.js',
    ];
    public $css = [
    	'themes/default/default.css',
    ];
}