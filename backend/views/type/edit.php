<?php
use yii\helpers\Url;
use common\widgets\ZKindEditor\ZKindEditor;
use \yii\widgets\ActiveForm;
$name = Yii::$app->request->get('name' , 'news');
?>

<div class="card-body">

                    <?php $form = ActiveForm::begin([
                        'options'=>['class'=>'row'],
                    ])?>
                    <?= $form->field($model, 'order_by')->textInput() ?>
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

                    <?= $form->field($model, 'subtitle')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'cover')->widget('common\widgets\FileInput' , []); ?>


                    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>

                    <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
                        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                    </div>
                    <?php ActiveForm::end()?>

                </div>


