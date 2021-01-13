<?php
namespace backend\widgets\menu;

use yii\base\InvalidConfigException;
use yii\base\Widget;

class MenuWidget extends Widget
{
    public $menus = [];
    public function init()
    {
        if(empty($this->menus)){
            throw  new InvalidConfigException('menus 参数必须配置');
        }
    }

    public function run()
    {

        return $this->render('menu-left' , [
            'menus' => $this->menus,
        ]);
    }
}