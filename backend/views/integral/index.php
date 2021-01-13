<?php
use yii\helpers\Url;
use yii\grid\GridView;

?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['integral/edit'])?>"><i class="mdi mdi-plus"></i> 新增</a>
    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [

                //'id',
                [
                    'attribute'=>'id',
                    'filter'=>false,
                    'contentOptions'=>['width'=>'30px'],
                ],
                [
                    'attribute'=>'user_id',
                    'value'=>'user.username',
                ],
                'total_amount',

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



