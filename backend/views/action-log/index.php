<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
use \yii\bootstrap\Modal;
use common\helpers\DebrisHelper;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
<div class="toolbar-btn-action">
    操作日志
</div>
</div>
<div class="card-body">

<div class="table-responsive">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            'id',

            [
                'label' => '用户',
                'value' => function ($model) {
                    return $model->user_id;
                },
            ],
            [
                'label' => 'ip',
                'attribute' => 'created_ip',
            ],
            [
                'label' => '操作',
                'attribute' => 'content',
            ],
            [
                'attribute' => 'created_at',
                'label' => '操作时间',
                'filter' => false, //不显示搜索框
                'format' => ['date', 'php:Y-m-d H:i:s'],
            ],
            [
                'class' => 'common\components\ActionColumn',
                'template'=>'{view}{delete}',
                'headerOptions'=>['style'=>'width:150px'],
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



