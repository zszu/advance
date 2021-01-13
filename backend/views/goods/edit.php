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
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'type')->dropDownList(Type::listData('goods')) ?>
                    <?= $form->field($model, 'price')->textInput() ?>
                    <?= $form->field($model, 'price_original')->textInput() ?>
                    <?= $form->field($model, 'price_discount')->textInput() ?>
                    <?= $form->field($model, 'count_stock')->textInput() ?>
                    <?= $form->field($model, 'count_init')->textInput() ?>

                    <?= $form->field($model, 'summary')->textarea() ?>


                    <?= $form->field($model, 'cover')->widget('common\widgets\FileInput' , [

                    ]); ?>
                    <?= $form->field($model, 'covers')->widget('common\widgets\FileInput', [
                        'clientOptions' => [
                            'pick' => [
                                'multiple' => true,
                            ],
                            // 'server' => Url::to('upload/u2'),
                            // 'accept' => [
                            //     'extensions' => 'png',
                            // ],
                        ],
                    ]); ?>
                   <?= $form->field($model, 'content')->widget(ZKindEditor::className(), [

                       'style' => ZKindEditor::STYLE_ADAVANCED,
                       'options' => [
                           'rows' => 20,
                           'style' => 'width: 100%',
                       ]
                   ]) ?>
                    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>
                    <?= $form->field($model,'sticky')->dropDownList(Yii::$app->params['status'],['prompt'=>'请选择状态']);?>

                    <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
                        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                    </div>
                   <?php ActiveForm::end()?>

                </div>



