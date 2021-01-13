<?php
use yii\helpers\Url;
use \yii\widgets\ActiveForm;
use common\widgets\tree\Tree;
?>

<div class="card-body">

    <?php $form = ActiveForm::begin([
        'options'=>['class'=>'row'],
    ])?>
    <?= $form->field($model, 'title')->label('角色名称')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'summary')->label('角色描述')->textInput(['maxlength' => true]) ?>
    <?= Tree::widget([
        'name' => "itemTree",
        'defaultData' => $defaultData,
        'selectIds' => $selectIds,
    ]) ?>
    <br>
    <div class="form-group col-md-12">
        <button type="button" class="btn btn-primary ajax-post" target-form="add-form" onclick="submitForm()">确 定</button>
        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
    </div>
    <?php ActiveForm::end()?>

</div>

<script>
    function submitForm() {
        var userTreeIds = getCheckTreeIds("itemTree");

        $.ajax({
            type:"post",
            url:"<?= Url::to(['auth/ajax-role-edit']);?>",
            dataType:"json",
            data:{
                id:"<?= $model->id;?>",
                title:$('#role-title').val(),
                summary:$('#role-summary').val(),
                userTreeIds:userTreeIds,
            },
            success:function(res) {
                if(parseInt(res.code) === 200){
                    window.location = "<?= Url::to(['auth/role']);?>";
                }else{
                    layer.msg(res.message);
                }
            }
        })
    }
</script>
