<?php

namespace backend\assets;

use yii\web\AssetBundle;

class LayerAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';

    public $js = [
        'js/layer/layer.js',
    ];

    /**
     * @param \yii\web\View $view
     */
    public function registerAssetFiles($view)
    {
        parent::registerAssetFiles($view);
        $view->registerJs(<<<JS
window.alert = layer.msg;
window.confirm = layer.confirm;


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
            var txt = $('.item-delete').attr('data-confim');
            if(txt == null){
                txt = '你确认删除该记录吗?';
            }
            $('.item-delete').linkConfirm(txt);
        })(jQuery);
JS
        );
    }

}
