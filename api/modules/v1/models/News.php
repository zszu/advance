<?php
namespace api\modules\v1\models;

use Yii;

class News extends \common\models\News
{
    public function fields()
    {
        return [
            'id',
            'title',

            //添加时 有问题
            'type'=>function($model){
                return $model->typeOne->title;
            },
//            '内容'=>'content',
            'status'=>function($model){
                return Yii::$app->params['poststatus'][$model->status];
            },
            'created_at'=>function($model){
                return date("Y-m-d H:i:s" , $model->created_at);
            },
            'updated_at'=>function($model){
                return date("Y-m-d H:i:s" , $model->updated_at);
            },


        ];
    }
    //自定义字段
    public function extraFields()
    {
        return [
            'createdBy'=>function(){
                return '额外字段';
            }
        ];
    }
}
