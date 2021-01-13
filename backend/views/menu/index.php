<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
use \common\components\Helper;
?>


<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['news/edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
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
                'url',
                [
                    'attribute'=>'summary',
                    'value'=>function($model){
                        return Html::encode(Helper::cutStr($model->summary ,30));
                    },
                ],
                [
                    'attribute'=>'icon',
                    'format'=>'raw',
                    'value' => function($model){
                        return $model->icon ? Html::tag('i' , '' , ['class'=>'mdi mdi' . $model->icon]) : '无图标';
                    }
                ],

                [
                    'attribute'=>'status',
                    'format'=>'raw',
                    'value'=>function($model){
                        return Html::tag('label' , Html::checkbox('status' ,$model->status ? 'true' : '',['data-value'=>$model->status ? '0':'1']).Html::tag('span'),
                            ['class'=>'lyear-switch switch-solid switch-primary','onchange'=>'changeStatus(this)']);
                    }
                ],

                [
                    'attribute'=>'updated_at',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                [
                    'class' => 'common\components\ActionColumn',
                ],
            ],
        ]); ?>
    </div>

</div>



