<?php

use yii\helpers\Url;
use common\helpers\Html;
use yii\grid\GridView;
?>

<div class="card-toolbar clearfix">
    <?= \backend\widgets\search\SearchWidgets::widget();?>
    <div class="toolbar-btn-action">
        <div class="toolbar-btn-action">
            <a class="btn btn-primary m-r-5" href="<?= Url::toRoute(['active/active-goods-edit','active_id'=>$active_id])?>"><i class="mdi mdi-plus"></i> 新增</a>
        </div>
    </div>
</div>
<div class="card-body">

    <div class="table-responsive">
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [

                'good_id',
                'price',
                [
                    'class' => 'common\components\ActionColumn',
                    'template'=>'{active-goods-edit}{active-goods-delete}',
                    'buttons'=>[
                        'active-goods-edit' => function ($url, $model, $key) {
                            return Html::a('删除', ['active-goods-edit', 'id' => $key,'active_id'=>$model->active_id],
                                ['class' => 'btn btn-sm  btn-primary ' ]
                            );
                        },
                        'active-goods-delete' => function ($url, $model, $key) {
                            return Html::a('删除', ['active-goods-delete', 'id' => $key,'active_id'=>$model->active_id],
                                ['class' => 'btn btn-sm  btn-danger' , 'onclick'=>'zDelete(this);return false;']
                            );
                        },
                    ]
                ],
            ],
        ]); ?>
    </div>

</div>

