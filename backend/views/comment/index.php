<?php

use common\components\Helper;
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        评论管理
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
                    'attribute'=>'content',
                    'value' => function ($model) {
                        return Helper::cutStr($model->content , 30);
                    },
                ],
                [
                    'attribute'=>'order_by',
                    'label'=>'排序',
                    'format'=>'raw',
                    'value' => function ($model, $key, $index, $column) {
                        return Html::input('text', 'order_by', $model->order_by,['class' => 'form-control','onblur'=>'rfSort(this)',]);
                    },
                ],
                [
                    'label'=>'文章标题',
                    'value' => 'news.title',
                ],
                [
                    'label'=>'用户名',
                    'value' => 'user.username',
                ],

                [
                    'class' => 'yii\grid\ActionColumn',
                    'header' => '评论状态',
                    'template' => '{audit}',
                    'buttons' => [
                        'audit' => function ($url, $model, $key) {
                            $options = [
                                'data-confim'=>Yii::t('yii','你确定已处理该申请？'),
                                'data-pjax'=>'0',
                                'class' => 'profile-link item-delete',
                                'style'=>'color:red'
                            ];
                            if($model->status==1){
                                return  '<span class="label label-primary">已审核</span>';
                            }else{
                                return  Html::a('<span class="label label-danger">未审核</span>', ['comment/audit', 'id' => $model->id], $options);
                            }
                        },
                    ],
                    'headerOptions' => ['width' => '80'],
                ],

                [
                    'attribute'=>'created_at',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                [
                    'class' => 'common\components\ActionColumn',
                    'template'=>'{delete}'
                ],
            ],
        ]); ?>
    </div>

</div>

