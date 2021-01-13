<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "zz_order_item".
 *
 * @property int $id
 * @property int|null $good_id 商品id
 * @property int|null $order_id 订单 ID
 * @property int|null $quantity 数量
 */
class OrderItem extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zz_order_item';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_id', 'goods_id'], 'required'],
            [['good_id', 'order_id','quantity'], 'integer'],
            [['goods_id'], 'exist', 'skipOnError' => true, 'targetClass' => Goods::className(), 'targetAttribute' => ['goods_id' => 'id']],
            [['order_id'], 'exist', 'skipOnError' => true, 'targetClass' => Order::className(), 'targetAttribute' => ['order_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'good_id' => '商品 ID',
            'order_id' => '订单 ID',
            'quantity' => '数量',
        ];
    }
    public function getOrder(){
        return $this->hasOne(Order::className() , ['id' => 'order_id']);
    }
    public function getGood(){
        return $this->hasOne(Goods::className() , ['id' => 'good_id']);
    }

    public function getTotalAmount(){
        return $this->good->price * $this->quantity;
    }
}
