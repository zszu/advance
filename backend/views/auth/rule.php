<?php
use yii\helpers\Url;
use common\helpers\Html;
use jianyan\treegrid\TreeGrid;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['auth/rule-edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= TreeGrid::widget([
            'dataProvider' => $dataProvider,
            'keyColumnName' => 'id',
            'parentColumnName' => 'pid',
            'parentRootValue' => 0, // first parentId value
            'pluginOptions' => [
                 'initialState' => 'collapsed',
            ],
            'options' => ['class' => 'table table-hover'],
            'columns' => [
                [
                    'attribute'=>'title',
                    'label'=>'权限名称',
                ],
                [
                    'attribute'=>'name',
                    'label'=>'权限路由',
                ],
                [
                    'attribute'=>'summary',
                    'label'=>'权限描述',
                ],
                [
                    'attribute'=>'created_at',
                    'label'=>'添加时间',
                    'format'=>['date','php:Y-m-d H:i:s'],
                ],
                [
                    'header' => '操作',
                    'class' => 'yii\grid\ActionColumn',
                    'contentOptions' => ['class'=>'text-center'],
                    'headerOptions' => [
                        'width' => '10%',
                        'style'=> 'text-align: center;'
                    ],
                    'template' =>'{rule-edit} {rule-delete}',
                    'buttons' => [
                        'rule-edit' => function ($url) {
                            return Html::a('修改', $url, ['class' => "btn btn-primary btn-sm"]);
                        },
                        'rule-delete' => function ($url ) {
                            return Html::a('删除', $url, ['class' => "btn btn-danger btn-sm" , 'onclick'=>'zDelete(this);return false;']);
                        },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>
