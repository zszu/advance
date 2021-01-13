<?php
use common\helpers\Html;
use \yii\helpers\Url;
use common\widgets\FileInput;
$params_url = [
    'site-param' => '基本',
    'system-param' => '系统',
    'email-param' => '邮箱',
];
$action = Yii::$app->controller->action->id;
?>

<ul class="nav nav-tabs page-tabs">
    <?php foreach ($params_url as  $k => $v):?>
        <?= Html::tag('li' ,Html::a($v.'设置' ,Url::toRoute([$k])),['class'=>$action == $k ? 'active' :''] )?>
    <?php endforeach;?>
</ul>
<div class="tab-content">
    <div class="tab-pane active">

        <?= Html::beginForm('', 'post', [
            'enctype' => 'multipart/form-data',
        ]) ?>
        <?php foreach ($params as $param): ?>

            <div class="form-group">
            <label for="web_site_title"><?= $param['title'];?></label>
                <?php
                if($param['input_type'] == 'radio') {
                    echo Html::radioList("Params[{$param['id']}]", $param['value'], unserialize($param['input_list']), ['class'=> $param['id'],'id' => 'Params_' . $param['id'], 'separator'=>' ']);

                } elseif($param['input_type'] == 'dropdown') {
                    echo Html::dropDownList("Params[{$param['id']}]", $param['value'], unserialize($param['input_list']), ['id' => 'Params_' . $param['id'], 'class' => 'select']);
                } elseif($param['input_type'] == 'checkbox') {

                } elseif($param['input_type'] == 'password') {
                    echo Html::passwordInput("Params[{$param['id']}]", $param['value'], ['id' => 'Params_' . $param['id'], 'size'=>90, 'style'=>"width: ".($param['width'] ? $param['width'] . 'px' : '100%'), 'class' => 'form-control']);
                } elseif($param['input_type'] == 'textarea') {

                    echo Html::textarea("Params[{$param['id']}]", $param['value'], ['id' => 'Params_' . $param['id'], 'style'=>"width: ".($param['width'] ? $param['width'] . 'px' : '100%'), 'rows'=>3, 'class' => 'form-control']);
                } elseif ($param['input_type'] == 'file') {
                    echo FileInput::widget([
                            'model' => new \common\models\Param(),
                            'attribute' => 'value',
                            'clientOptions' => [
                                'pick' => [
                                    'multiple' => false,
                                ],
                                'id'=> 'Params_' . $param['id'],
                                'name'=>'Params['.$param['id'].']',
                            ],

                    ]);
                }
                else {
                    echo Html::textInput("Params[{$param['id']}]", $param['value'], ['id' => 'Params_' . $param['id'], 'size'=>90, 'style'=>"width: ".($param['width'] ? $param['width'] . 'px' : '100%') , 'class'=>'form-control']);
                }
                ?>
                </div>
            <?php endforeach;?>

            <div class="form-group">
                <button type="submit" class="btn btn-primary m-r-5">确 定</button>
            </div>
        <?= Html::endForm() ?>

    </div>
</div>


<?php $this->registerJs(<<<JS
 $(".input-group-btn").on("click",function(){
        //   var file = document.getElementById("file");
        // var text = document.getElementById("text");
        //
        // $("#fileSpan").click(function(){
        //     //alert("hahaha");
        //     file.click();
        // });
        // file.onchange = type;
        // function type()
        // {text.value = file.value;}

        
    })
JS
);?>
