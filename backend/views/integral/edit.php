<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
use common\models\Type;
use \backend\models\UserObj;
?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <?= $form->field($model, 'order_by')->textInput() ?>
    <?= $form->field($model, 'total_amount')->textInput() ?>
    <?= $form->field($model, 'user_id')->dropDownList(UserObj::listUser()) ?>

    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>

    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
    <?php ActiveForm::end()?>

</div>



