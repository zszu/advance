<?php
use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
$name = Yii::$app->request->get('name');
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['type/edit' , 'name'=>$name])?>"><i class="mdi mdi-plus"></i> 新增</a>

    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
//                            'filterModel' => $searchModel,
            'columns' => [

                [
                    'attribute'=>'id',
                    'filter'=>false,
                    'contentOptions'=>['width'=>'30px'],
                ],
                'title',


                [
                    'attribute'=>'order_by',
                    'label'=>'排序',
                    'format'=>'raw',
                    'value' => function ($model, $key, $index, $column) {
                        return Html::input('text', 'order_by', $model->order_by,['class' => 'form-control','onblur'=>'rfSort(this)',]);
                    },
                ],
                [
                    'attribute'=>'status',
                    'class' => 'common\components\ListColumn',
                    'list'=>Yii::$app->params['status'],
                    'filterInputOptions' => ['class' => 'form-control', 'prompt' => '全部']
                ],

                [
                    'attribute'=>'updated_at',
                    'format'=>['date','php:Y-m-d H:i:s'],
                    'filter'=>false,
                ],
                [
                    'class' => 'common\components\ActionColumn',
                    'template'=>'{edit}{delete}',
                    'buttons' => [
                            'edit' =>function($url , $model , $key){
                                return Html::a('编辑' ,Url::toRoute(['edit'  , 'id'=>$key, 'name'=>$model->name]),['class'=>'btn btn-primary btn-sm']);
                            },
                            'delete' =>function($url , $model , $key){
                                return Html::a('删除' ,Url::toRoute(['delete' ,  'id'=>$key,'name'=>$model->name]),['class'=>'btn btn-danger btn-sm' , 'onclick'=>'zDelete(this);return false;']);
                            },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>


