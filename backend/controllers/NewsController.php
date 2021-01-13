<?php

namespace backend\controllers;

use Yii;
use backend\models\NewsSearch;


use common\components\Curd;
/**
 * PostController implements the CRUD actions for Post model.
 */
class NewsController extends BaseController
{

    public  $modelClass = 'common\models\News';
    public  $pageSize =10;
    use Curd;


}
