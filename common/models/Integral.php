<?php

namespace common\models;

use backend\models\UserObj;
use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "zz_integral".
 *
 * @property int $id
 * @property int|null $order_by
 * @property int|null $user_id 用户id
 * @property float|null $total_amount 总金额
 * @property int|null $created_at
 * @property int|null $updated_at
 */
class Integral extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%integral}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'user_id', 'created_at', 'updated_at','status'], 'integer'],
            ['total_amount', 'compare', 'compareValue' => 0, 'operator' => '>='],
            [['total_amount'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => '排序',
            'user_id' => '用户',
            'total_amount' => '总金额',
            'created_at' => '创建时间',
            'updated_at' => '修改时间',
            'status' => '状态',

        ];
    }
    public function getUser(){
        return $this->hasOne(UserObj::className() , ['id' => 'user_id']);
    }
}
