<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['auth/user-edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [

                'id',
                'username',
                'nickname',
                'email',
                [
                    'attribute'=>'status',
                    'class' => 'common\components\ListColumn',
                    'list'=>Yii::$app->params['status'],
                ],
                [
                    'attribute'=>'roleArr',
                    'label' => '用户角色',
                    'value'=>function($model){
                        return $model->getRolesByDelemiter($model->id) ? implode('|' , $model->getRolesByDelemiter($model->id)) : '暂无角色';
                    }
                ],

                [
                    'attribute'=>'created_at',
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
                    'template' =>'{user-edit} {user-delete}',
                    'buttons' => [
                        'user-edit' => function ($url) {
                            return Html::a('修改', $url, ['class' => "btn btn-primary btn-sm"]);
                        },
                        'user-delete' => function ($url) {
                            return Html::a('删除', $url, ['class' => "btn btn-danger btn-sm" , 'onclick'=>'zDelete(this);return false;']);
                        },
                    ]
                ],

            ],
        ]); ?>
    </div>

</div>
