<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['auth/role-edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                'id',
                [
                    'attribute'=>'title',
                    'label'=>'角色名称',
                ],
                [
                    'attribute'=>'summary',
                    'label'=>'角色描述',
                ],

                [
                    'attribute'=>'created_at',
                    'label'=>'创建时间',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                [
                    'header' => '操作',
                    'class' => 'yii\grid\ActionColumn',
                    'contentOptions' => ['class'=>'text-center'],
                    'headerOptions' => [
                        'width' => '10%',
                        'style'=> 'text-align: center;'
                    ],
                    'template' =>'{role-edit} {role-delete}',
                    'buttons' => [
                        'role-edit' => function ($url) {
                            return Html::a('修改', $url, ['class' => "btn btn-primary btn-sm"]);
                        },
                        'role-delete' => function ($url ) {
                            return Html::a('删除', $url, ['class' => "btn btn-danger btn-sm" , 'onclick'=>'zDelete(this);return false;']);
                        },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>
