<?php

namespace api\modules\v1\controllers;


use api\controllers\OnAuthController;
use api\modules\v1\models\Order;
use common\helpers\ResultDataHelper;
use yii\data\ActiveDataProvider;
use yii\db\Exception;
use Yii;
/**
 * Goods controller for the `v1` module
 */
class GoodsController extends OnAuthController
{
    public $pageSize = 10;
    public $authOptional = ['index', 'view','search','update','create','delete'];
    public $signOptional = ['index', 'update', 'create', 'view', 'delete'];
    public $modelClass = 'api\modules\v1\models\Goods';

    public function actionSearch($key){
        $query = $this->modelClass::find()->where(['status'=>1]);
        $query = $query->andWhere(['like' , 'title' , $key]);
        return new ActiveDataProvider([
            'query' => $query->asArray(),
            'pagination' => [
                'pageSize' => $this->pageSize,
                'validatePage' => false,// 超出分页不返回data
            ],
        ]);
    }



}
