<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot/static';
    public $baseUrl = '@web/static';
    public $css = [
        'css/site.css',

    ];
    public $js = [

    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
    public function registerAssetFiles($view)
    {
        $view->registerJs(<<<JS
                

    
        // alert 弹框 定时关闭
        setTimeout(function () {
            $('.time').slideUp(500);
        } , 3000);
        
        //confirm 框
        (function ($) {
        
            "use strict";
        
            $.fn.linkConfirm = function (msg) {
        
                $(this).on('click', function (e) {
        
                    e.preventDefault();
        
                    var url = $(this).attr('href');
        
                    var dlg = confirm(msg, function () {
        
                        layer.close(dlg);
        
                        window.location.href = url;
        
                    })
        
                });
        
            };
            $('.item-comment').linkConfirm('你确定已处理该申请？');
        })(jQuery);
JS
        );
        parent::registerAssetFiles($view);
    }

}
