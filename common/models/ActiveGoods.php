<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "zz_active_goods".
 *
 * @property int $active_id 活动 ID
 * @property int|null $good_id
 * @property float|null $price
 */
class ActiveGoods extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zz_active_goods';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['active_id'], 'required'],
            [['active_id', 'good_id'], 'integer'],
            [['price'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'active_id' => '活动 ID',
            'good_id' => '商品 ID',
            'price' => '商品拼团价格',
        ];
    }
}
