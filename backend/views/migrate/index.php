<?php
use yii\helpers\Url;
use yii\helpers\Html;
use \yii\widgets\ActiveForm;
?>
<style>
    label {
        width: 30%;
    }
</style>
<div class="card-body">

  <p style="color: #ff1c1c;"><?= Yii::t('yii' , '默认目录 @app/migrate');?></p>
  <hr>
   <?php $form = ActiveForm::begin([
           'options'=>['class'=>'row'],
       ])?>

     <?php foreach($tables as $v):?>
        <label class="lyear-checkbox checkbox-inline checkbox-primary">
          <input type="checkbox" name="tables[]" value="<?= $v?>"><span><?= $v?></span>
        </label>
     <?php endforeach;?>
    <div class="form-group col-md-12">
        <button type="submit" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
    </div>
   <?php ActiveForm::end()?>

</div>