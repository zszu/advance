<?php

namespace frontend\assets;

use yii\web\AssetBundle;

class LayerAsset extends AssetBundle
{
    public $basePath = '@webroot/static';
    public $baseUrl = '@web/static';

    public $js = [
        'layer/layer.js',
    ];
    public $depends = [
        'yii\web\JqueryAsset',
    ];

    /**
     * @param \yii\web\View $view
     */
    public function registerAssetFiles($view)
    {
        $view->registerJs(<<<JS
window.alert = layer.msg;
window.confirm = layer.confirm;
JS
        );
        parent::registerAssetFiles($view);
    }
}
