<?php
namespace common\models\base;
use yii\db\ActiveRecord;
use Yii;

class BaseModel extends ActiveRecord
{
    public function behaviors()
    {
       $behaviors =[
           [
            'class' => 'yii\behaviors\TimestampBehavior',
            'attributes' => [
                ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
           ],
        ];
        return array_merge(parent::behaviors() , $behaviors);
    }
}