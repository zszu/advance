<?php
namespace backend\widgets\notify;

use backend\widgets\notify\assets\AppAsset;
use Yii;
use yii\base\Widget;

class Notify extends Widget
{
    private $message;
    private $type = [
        'success' => 'success',
        'error' => 'danger',
        'info' => 'info',
        'warning' => 'warning',
        'danger' => 'danger',
    ];

    public function run()
    {
        $session = Yii::$app->session;
        $this->message = $session->getAllFlashes();
        $view = $this->getView();
        AppAsset::register($view);


        foreach ($this->message as $k => $v){
            if(!isset($this->type[$k])){
                continue;
            }
            $view->registerJs(<<<Js
  setTimeout(function() {
                lightyear.loading('hide');
                lightyear.notify('{$v}', '{$k}', 3000);
            }, 1e3)
Js
            );

            $session->removeFlash($k);

        }

    }
}