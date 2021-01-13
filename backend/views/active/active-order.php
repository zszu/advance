<?php

use common\helpers\Html;
use yii\grid\GridView;
$this->title = '拼团相关订单';
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <div class="toolbar-btn-action">
          <h3><?= $this->title;?></this></h3>
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
                    'template'=>'{active-goods}&nbsp;{active-order}&nbsp;{edit}{delete}',
                    'buttons' => [
                        'active-goods' => function ($url, $model, $key) {
                            return Html::a('相关商品', ['active-goods', 'id' => $key], ['class' => 'btn btn-sm btn-secondary']);
                        },
                        'active-order' => function ($url, $model, $key) {
                            return Html::a('相关订单', ['active-order', 'id' => $key], ['class' => 'btn btn-sm btn-cyan']);
                        },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>

