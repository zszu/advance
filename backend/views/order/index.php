<?php

use common\components\ArrayHelper;
use common\models\Order;
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;

$list['statusLabel'] = [
    Order::STATUS_NEW => 'label-success',
    Order::STATUS_FINISHED => 'label-primary',
    Order::STATUS_CANCELED => 'label-default',
    Order::STATUS_DELETED => 'label-danger',
];
$list['stepClass'] = [
    Order::STEP_SUBMIT => '',
    Order::STEP_PAID => 'text-warning',
    Order::STEP_CONFIRM => 'text-success',
    Order::STEP_SHIPPED => 'text-muted',
    Order::STEP_RECEIPT => 'text-muted',
    Order::STEP_SERVICE => 'text-danger',
    Order::STEP_FINISHED => 'primary',
];
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['order/create'])?>"><i class="mdi mdi-plus"></i> 新增</a>

    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [

                [
                    'attribute'=>'id',
                    'filter'=>false,
                    'contentOptions'=>['width'=>'30px'],
                ],
                'user_id',
                [
                    'attribute' => 'order_no',
                    'header' => '订单号/备注',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return $model['order_no'] . '<br>' . Html::tag('span', Html::encode($model['remart']), ['style' => 'color: red;']);
                    }
                ],
                'good_amount',
                'discount_amount',
                'realy_amount',
                [
                    'attribute' => 'status',
                    'format' => 'raw',
                    'contentOptions' => ['class' => 'col-order-status'],
                    'value' => function ($model) use ($list) {
                        $text = Html::tag('span', ArrayHelper::getValue(Order::$statusNames, $model['status']), ['class' => 'label ' . $list['statusLabel'][$model['status']]]);
                        if ($model['status'] == Order::STATUS_NEW) {
                            $text .= '<br>' . Html::tag('span', ArrayHelper::getValue(Order::$stepNames, $model['order_status']), ['class' => ArrayHelper::getValue($list['stepClass'], $model['order_status'])]);
                        }
                        return $text;
                    }
                ],
                [
                    'header' => '下单时间/最后更新',
                    'format' => 'raw',
                    'value' => function ($model) {
                        return date('Y-m-d H:i', $model['created_at']) . '<br>' .
                            ($model['created_at'] == $model['updated_at'] ? date('Y-m-d H:i',$model['created_at']) : date('Y-m-d H:i', $model['updated_at']));
                    }
                ],

                [
                    'class' => 'yii\grid\ActionColumn',
                    'header'=>'操作',
                    'headerOptions' => ['width' => 120],
                    'template' => '{detail} {update-price}{pay} {confirm} {shipment} {service} {close}',
                    'buttons' => [
                        'detail' => function ($url, $model, $key) {
                            return Html::a('订单详情', ['detail', 'id' => $key], ['class' => 'btn btn-sm btn-primary']);
                        },
                        'update-price' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW && $model->order_status == Order::STEP_SUBMIT) ?

                                Html::a('金额调整', ['update-price', 'id' => $key],
                                    [
                                        'class' => 'btn btn-sm  btn-danger' ,
                                        'data-toggle'=>'modal',
                                        'data-target'=>'#ajaxModal',
                                    ]):'';
                        },
                        'pay' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW && $model->order_status == Order::STEP_SUBMIT) ?
                                Html::a('线下支付', ['pay', 'id' => $key], ['class' => 'btn btn-sm  btn-dark btn-pay']) : '';
                        },
                        'confirm' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW && $model->order_status == Order::STEP_PAID) ?
                                Html::a('确认收款', ['confirm', 'id' => $key], ['class' => 'btn btn-sm  btn-confirm']) : '';
                        },
                        'shipment' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW && $model->order_status == Order::STEP_CONFIRM) ?
                                Html::a('发货', ['shipment', 'id' => $key], ['class' => 'btn btn-sm  btn-shipment']) : '';
                        },
                        'service' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW && $model->order_status == Order::STEP_SERVICE) ?
                                Html::a('处理售后', ['service', 'id' => $key], ['class' => 'btn btn-sm  btn-service']) : '';
                        },
                        'close' => function ($url, $model, $key) {
                            return ($model->status == Order::STATUS_NEW) ?
                                Html::a('关闭订单', ['close', 'id' => $key], ['class' => 'btn btn-sm  btn-close']) : '';
                        },
                    ],
                ]
            ],
        ]); ?>
    </div>

</div>

<?php
$this->registerJs(<<<JS
    //确认 confirm
    (function ($) {
        $.fn.linkConfirm = function (msg) {
            $(this).on("click", function (e) {
                e.preventDefault();
                var url = $(this).attr("href");
                var dlg = layer.confirm(msg, function () {
                    layer.close(dlg);
                    window.location.href = url;
                });
            });
        };
    
    
        $(".item-delete").linkConfirm("确定要删除该项？");
    })(jQuery);

    $('.btn-close').linkConfirm('关闭后不可恢复，确认要关闭该订单？');
    $('.btn-pay').linkConfirm('已线下收款，直接设置为已支付？');

JS
);
?>



