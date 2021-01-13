<?php
use common\helpers\Html;
use yii\grid\GridView;
use common\helpers\DebrisHelper;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
<div class="toolbar-btn-action">
    全局日志
</div>
</div>
<div class="card-body">

<div class="table-responsive">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            'id',
            'app_id',
            [
                'attribute' => 'method',
                'headerOptions' => ['class' => 'col-md-1'],
            ],
            [
                'label' => '用户',
                'value' => function ($model) {
                    return $model->member->username;
                },
                'filter' => false, //不显示搜索框
            ],
            'url',
            [
                'label' => 'ip',
                'attribute' => 'ip',
                'value' => function ($model) {
                    return DebrisHelper::long2ip($model->ip);
                },
                'filter' => false, //不显示搜索框
            ],
            [
                'label' => '地区',
                'value' => function ($model) {
                    return DebrisHelper::analysisIp($model->ip);
                },
            ],
            [
                'attribute' => 'error_code',
                'label' => '状态码',
                'value' => function ($model) {
                    if ($model->error_code < 300) {
                        return '<span class="label label-primary">' . $model->error_code . '</span>';
                    } else {
                        return '<span class="label label-danger">' . $model->error_code . '</span>';
                    }
                },
                'headerOptions' => ['class' => 'col-md-1'],
                'format' => 'raw',
            ],
            [
                'attribute' => 'created_at',
                'filter' => false, //不显示搜索框
                'format' => ['date', 'php:Y-m-d H:i:s'],
            ],
            [
                'class' => 'common\components\ActionColumn',
                'template'=>'{view}{delete}',
                'buttons'=>[
                        'view'=>function($url , $model ,$key){

                        return Html::a('查看'  ,$url,
                            [
                                'id'=>'view',
                                'class'=>'btn btn-default btn-sm view',
                                'data-toggle'=>'modal',
                                'data-target'=>'#ajaxModalLg',
                                'data-id' =>$key,
                            ]);
                        }
                ],
            ],
        ],
    ]); ?>
</div>
</div>



