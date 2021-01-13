<?php
namespace backend\widgets\search;

use yii\base\Widget;

class SearchWidgets extends Widget
{
    public function init()
    {
        parent::init();
    }

    public function run()
    {
        return $this->render('default');
    }

}