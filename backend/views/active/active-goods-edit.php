<?php

use yii\widgets\ActiveForm;
use \common\models\Goods;
use \common\components\ArrayHelper;
use \common\models\Active;
/* @var $this yii\web\View */
/* @var $model common\models\ActiveGoods */

$this->title = ($model->isNewRecord?'新增':'编辑').'拼团活动';
$this->params['breadcrumbs'][] = ['label' => '评论管理', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="card-body">

        <?php $form = ActiveForm::begin([
            'options'=>[
                    'class'=>'row',
                    'enctype' => 'multipart/form-data',
                ],

        ])?>
        <?= $form->field($model, 'active_id')->label(false)->hiddenInput(['value'=>$active_id]) ?>
        <?= $form->field($model, 'good_id')->dropDownList(ArrayHelper::map(Goods::findAll(['status'=>1]) , 'id','title')); ?>
        <?= $form->field($model, 'price')->textInput() ?>

        <div class="form-group col-md-12">
            <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
            <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
        </div>
        <?php ActiveForm::end()?>

</div>

