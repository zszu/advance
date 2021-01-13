<?php

use common\components\Helper;
use common\models\Order;
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <div class="toolbar-btn-action">
            <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['active/edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
            <!--                        <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>-->
            <!--                        <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>-->
            <!--                        <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>-->
        </div>
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

                [
                    'attribute'=>'order_by',
                    'label'=>'排序',
                    'format'=>'raw',
                    'value' => function ($model, $key, $index, $column) {
                        return Html::input('text', 'order_by', $model->order_by,['class' => 'form-control','onblur'=>'rfSort(this)',]);
                    },
                ],
               'title',
                [
                    'attribute'=>'cover',
                    'format'=>[
                            'image',
                            [
                                    'height'=>'50px',
                            ],
                    ],
                    'value' => function($model){
                                return $model->cover;
                            }
                ],


                [
                    'attribute'=>'created_at',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                [
                    'attribute'=>'updated_at',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                'active_start',
                'active_end',
                'people_sum',
                //结束时间 预告时间 拼团人数
                [
                    'class' => 'common\components\ActionColumn',
                    'template'=>'{active-goods}&nbsp;{active-order}&nbsp;{edit}&nbsp;{delete}',
                    'buttons' => [
                        'active-goods' => function ($url, $model, $key) {
                            return Html::a('相关商品', ['active-goods', 'active_id' => $key], ['class' => 'btn btn-sm btn-secondary']);
                        },
                        'active-order' => function ($url, $model, $key) {
                            return Html::a('相关订单', ['active-order', 'active_id' => $key], ['class' => 'btn btn-sm btn-cyan']);
                        },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>

