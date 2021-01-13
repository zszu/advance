<?php
namespace common\widgets\color;
use  \common\widgets\color\assets\AppAsset;
use yii\widgets\InputWidget;

class ColorInput extends InputWidget
{
    public $defaultColor = '#33cabb';
    public function init()
    {
        $this->registerClientScript();
    }
    public function run()
    {
        return $this->render('default' , [
            'defaultColor' => $this->defaultColor,
        ]);
    }
    public function registerClientScript(){
        $view = $this->getView();
        AppAsset::register($view);
    }
}