<?php
namespace api\modules\v1\controllers;

use api\controllers\OnAuthController;

/**
 * Class DemoController
 * @package api\modules\v1\controllers
 * desc 用于测试
 */
class DemoController extends OnAuthController
{
    public $pageSize = 10;
    public $authOptional = ['index', 'view','search','update','create','delete'];
    public $modelClass = '';
    public function actionIndex()
    {
        return 'demo';
    }

}