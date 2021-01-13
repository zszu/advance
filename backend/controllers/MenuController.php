<?php
namespace backend\controllers;

use common\components\Curd;

class MenuController extends BaseController
{
    public  $modelClass = 'common\models\common\Menu';
    public  $pageSize = 10;
    use Curd;

}