<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Post */

$this->title = ($model->isNewRecord?'新增':'编辑').'评论';
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
                    <?= $form->field($model, 'order_by')->textInput() ?>

                    <?= $form->field($model, 'content')->textarea() ?>

                    <?= $form->field($model,'news_id')->dropDownList(\common\models\News::listData());?>
                    <?= $form->field($model,'user_id')->dropDownList(\backend\models\UserObj::listUser());?>
                    <?= $form->field($model,'status')->dropDownList(Yii::$app->params['comment_status'],['prompt'=>'请选择状态']);?>
                    <div class="form-group col-md-12">
                        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
                        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                    </div>
                    <?php ActiveForm::end()?>

                </div>

