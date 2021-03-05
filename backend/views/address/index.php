<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
use \yii\bootstrap\Modal;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['address/edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
<!--                        <a class="btn btn-success m-r-5" href="#!"><i class="mdi mdi-check"></i> 启用</a>-->
<!--                        <a class="btn btn-warning m-r-5" href="#!"><i class="mdi mdi-block-helper"></i> 禁用</a>-->
<!--                        <a class="btn btn-danger" href="#!"><i class="mdi mdi-window-close"></i> 删除</a>-->
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
                    'attribute'=>'summary',
                    'label'=>'收货地址',
                    'value'=>function($model){
                        return $model['province']  .'-'.$model['city'] .'-'.$model['district'].'-'.Html::encode($model['summary']);
                    }
                ],
                [
                    'attribute'=>'is_default',
                    'class' => 'common\components\ListColumn',
                    'value' => function($model){
                        return $model->is_default ? '是' : '否';
                    }
                ],

                [
                    'class' => 'common\components\ActionColumn',
                    'template'=>'{ajax-edit}&nbsp;{delete}',
                    'buttons'=>[
                        'ajax-edit'=>function($url , $model ,$key){

                            return Html::a('编辑'  ,$url,
                                [
                                    // 'id'=>'edit',
                                    'class'=>'btn btn-primary btn-sm',
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

