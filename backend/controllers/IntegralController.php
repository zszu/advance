<?php
namespace backend\controllers;

use common\components\Curd;
use common\models\Integral;

/**
 * Class IntegralController
 * @package backend\controllers
 * desc 用户金额
 */
class IntegralController extends BaseController
{
    public  $modelClass = Integral::class;
    public  $searchModel = '';
    public  $pageSize =10;
    use Curd;
}
