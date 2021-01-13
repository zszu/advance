<?php
namespace api\modules\v1\models;

use Yii;
class Goods extends \common\models\Goods
{
    public function fields()
    {
        return [
            'id',
            'title',
            'summary',
            'price',
            'price_original',
            'price_discount',
            'count_init',
            'cover',
            //添加时 有问题

            'type'=>function($model){
                return $model->typeOne->title;
            },
            'status'=>function($model){
                return Yii::$app->params['status'][$model->status];
            },
            'created_at'=>function($model){
                return date("Y-m-d H:i:s" , $model->created_at);
            },
            'updated_at'=>function($model){
                return date("Y-m-d H:i:s" , $model->updated_at);
            },

        ];
    }


    public function createGoods(){
        $trans = $order::getDb()->beginTransaction();
        try {
            $address = Address::findOne(['id' => $order->addressId, 'user_id' => $order->user_id]);
            if (!$address) {
                $trans->rollBack();
                return $this->error('收货地址不正确', ['user/cart']);
            }
            $order->name = $address->name;
            $order->phone = $address->mobile;
            $order->address = $address->province . ' ' . $address->city . ' ' . $address->district . ' ' . $address->summary;
            $order->region_id = $address->district_id;
            if ($order->save()) {
                foreach ($orderItems as $item) {
                    $item->order_id = $order->id;
                    if (!$item->save()) {
                        Yii::error($item->errors);
                        $trans->rollBack();
                        return $this->error('订单明细保存失败', ['user/cart']);
                    }
                }
            } else {
                Yii::error($order->errors);
                $trans->rollBack();
                return $this->error('订单保存失败', ['user/cart']);
            }
        } catch (\Exception $e) {
            Yii::error($e->getMessage());
            $trans->rollBack();
        }
        Cart::deleteAll(['id' => array_keys($orderItems)]);
        Yii::$app->session->remove('controller.user.cart.ids');
        $trans->commit();
    }

}