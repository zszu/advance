<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
use common\models\Type;
use \backend\models\UserObj;
use \yii\grid\GridView;
use \common\models\Order;
$this->title = '订单详情';
?>

<div class="card-toolbar clearfix">

    <div class="toolbar-btn-action">
        <h2><?= $this->title;?></h2>
    </div>
</div>
<div class="card-body">

      <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                'id',
                'order.order_no',
                'good.title',
                'good.price',
                'good.price_original',
                'good.price_discount',
                'quantity',
                [
                    'attribute'=>  'totalAmount',
                    'label'=>'金额',
                ],
            ],
          'layout' => '{items}总共 <del>'.$model->good_amount.'</del>元|实付金额<span style="color: red;">'.$model->realy_amount.'</span> 元',
          'showFooter'=>false,
        ])?>

    <div class="divider text-uppercase">物流信息</div>
    <p><?= $model->address->province .'&nbsp;'.$model->address->city . '&nbsp;'.$model->address->district?> 东方慧谷 - zsz - 15225783032</p>
    <div class="divider text-uppercase">订单操作记录</div>
    <ul class="list-unstyled">
        <p><?= date('Y-m-d H:i:s', $model['created_at']) ?> 下单</p>
        <?php if ($model->pay_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->pay_at) ?> 支付</p>
        <?php endif; ?>
        <?php if ($model->confirm_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->confirm_at) ?> 确认收款</p>
        <?php endif; ?>
        <?php if ($model->ship_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->ship_at) ?> 发货</p>
        <?php endif; ?>
        <?php if ($model->receipt_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->receipt_at) ?> 确认收货</p>
        <?php endif; ?>
        <?php if ($model->serviced_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->serviced_at) ?> 发起售后</p>
        <?php endif; ?>
        <?php if ($model->finished_at): ?>
            <p><?= date('Y-m-d H:i:s', $model->finished_at) ?> 完成</p>
        <?php endif; ?>
        <?php if ($model->status == Order::STATUS_DELETED): ?>
            <p><?= date('Y-m-d H:i:s', $model->updated_at) ?> 订单删除</p>
        <?php endif; ?>
        <?php if ($model->status == Order::STATUS_CANCELED): ?>
            <p><?= date('Y-m-d H:i:s', $model->updated_at) ?> 订单关闭</p>
        <?php endif; ?>

    </ul>

</div>



