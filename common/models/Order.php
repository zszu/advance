<?php

namespace common\models;

use Yii;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%order}}".
 *
 * @property int $id
 * @property int $user_id
 * @property float|null $good_amount 商品金额
 * @property float|null $express_amount 快递费
 * @property int|null $express_id 快退公司
 * @property string|null $express_no 快递单号
 * @property float|null $discount_amount 优惠金额
 * @property int|null $discount_id 优惠券
 * @property float|null $realy_amount 实付金额
 * @property float|null $refound_amout 退款金额
 * @property string|null $remart 备注
 * @property string|null $collect_money_name 收款人
 * @property int|null $address_id 收货地址
 * @property int|null $order_no 订单号
 * @property int|null $pay_type 支付类型
 * @property string|null $pay_no 订单号
 * @property int|null $order_status 订单 步骤
 * @property int|null $status 订单状态
 * @property int|null $pay_at 支付时间
 * @property int|null $confirm_at 确认时间
 * @property int|null $ship_at 发货时间
 * @property int|null $receipt_at 收货时间
 * @property int|null $finished_at 完成时间
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 修改时间
 * @property int|null $serviced_at 发起售后时间
 */
class Order extends BaseModel
{
    const STATUS_NEW = 1;
    const STATUS_FINISHED = 2;
    const STATUS_CANCELED = 0;
    const STATUS_DELETED = -1;
    public static $statusNames = [
        self::STATUS_NEW => '处理中',
        self::STATUS_FINISHED => '已完成',
        self::STATUS_CANCELED => '已关闭',
        self::STATUS_DELETED => '已删除',
    ];

    const STEP_SUBMIT = 1;
    const STEP_PAID = 2;
    const STEP_CONFIRM = 3;
    const STEP_SHIPPED = 4;
    const STEP_RECEIPT = 5;
    const STEP_SERVICE = 6;
    const STEP_FINISHED = 9;
    public static $stepNames = [
        self::STEP_SUBMIT => '待支付',
        self::STEP_PAID => '待收款',
        self::STEP_CONFIRM => '待发货',
        self::STEP_SHIPPED => '待收货',
        self::STEP_RECEIPT => '已收货',
        self::STEP_SERVICE => '售后中',
        self::STEP_FINISHED => '已完成',
    ];
    const PAY_TYPE_ALIPAY = 1;
    const PAY_TYPE_WECHAT = 2;
    const PAY_TYPE_OFFLINE = 9;
    public static $payTypeNames = [
        self::PAY_TYPE_ALIPAY => '支付宝支付',
        self::PAY_TYPE_WECHAT => '微信支付',
        self::PAY_TYPE_OFFLINE => '线下支付',
    ];
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%order}}';
    }

    /**serviced_at
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id'], 'required'],
            [['user_id', 'express_id', 'discount_id', 'address_id', 'pay_type', 'order_status', 'status', 'pay_at', 'confirm_at', 'ship_at', 'receipt_at', 'finished_at', 'created_at', 'updated_at','serviced_at'], 'integer'],
            [['good_amount', 'express_amount', 'discount_amount', 'realy_amount', 'refound_amout'], 'number'],
            [['express_no'], 'string', 'max' => 20],
            [['remart', 'collect_money_name', 'pay_no','order_no'], 'string', 'max' => 255],

            ['good_amount', 'compare', 'compareValue' => 0, 'operator' => '>='],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by'=>'排序',
            'user_id' => '用户',
            'good_amount' => '商品金额',
            'express_amount' => '快递金额',
            'express_id' => '快递公司',
            'express_no' => '快递单号',
            'discount_amount' => '优惠金额',
            'discount_id' => '优惠劵',
            'realy_amount' => '实付金额',
            'refound_amout' => '退款',
            'remart' => '订单备注',
            'collect_money_name' => '收款人',
            'address_id' => '地址',
            'order_no' => '订单号',
            'pay_type' => '支付类型',
            'pay_no' => '支付单号',
            'order_status' => '订单步骤',
            'status' => '状态',
            'pay_at' => '支付时间',
            'confirm_at' => '确认时间',
            'ship_at' => '发货时间',
            'receipt_at' => '收货时间',
            'finished_at' => '完成时间',
            'created_at' => '订单创建时间',
            'updated_at' => '订单修改时间',
        ];
    }
    public function afterSave($insert, $changedAttributes)
    {
        if($insert){
            $this->order_no = sprintf('ZZ%04s%s', substr($this->id, -4), date('ymdHis'));


            $this->save();
        }
        return parent::afterSave($insert, $changedAttributes);
    }


    public function stepConfirm($payNo = null, $payType = self::PAY_TYPE_WECHAT)
    {

        if (!in_array($this->order_status, [Order::STEP_SUBMIT, Order::STEP_PAID]) || $this->status != Order::STATUS_NEW) {
            return false;
        }

        $timestamp = time();
        $this->pay_type = $payType;
        $this->pay_no = $payNo;
        $this->order_status = Order::STEP_CONFIRM;
        $this->confirm_at = $timestamp;
        if (!$this->save()) {
            Yii::error($this->errors);
            return false;
        }


        return true;
    }

    public function getOrderItems()
    {
        return $this->hasMany(OrderItem::className(), ['order_id' => 'id']);
    }
    public function getAddress()
    {
        return $this->hasOne(Address::className(), ['id' => 'address_id']);
    }
//    public function getService()
//    {
//        return $this->hasOne(Service::className(), ['order_id' => 'id']);
//    }
}
