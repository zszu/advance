<?php

namespace backend\controllers;

use Yii;


use common\components\Curd;
/**
 * GoodsController implements the CRUD actions for Post model.
 */
class GoodsController extends BaseController
{

    public  $modelClass = 'common\models\Goods';
    public  $searchModel = 'backend\models\GoodsSearch';
    public  $pageSize =10;
    use Curd;


}
