<?php
use \yii\widgets\ActiveForm;
?>

<div class="card-body">

                    <form method="post" action="#!" class="site-form">
                        <?php $form = ActiveForm::begin([
                            'options' =>['class'=>'site-form'],
                            'fieldConfig' =>[
                                'options'=>[
                                    'class' => 'form-group',
                                ],
                                'template'=>'{label}{input}{hint}{error}',
                            ],
                        ])?>
                        <?= $form->field($model , 'oldPassword')->passwordInput(['id'=>'old-password' ,'placeholder'=>"输入账号的原登录密码"])?>
                        <?= $form->field($model , 'password')->passwordInput(['id'=>'new-password','placeholder'=>"输入新的密码"])?>
                        <?= $form->field($model , 'passwordRepeat')->passwordInput(['id'=>'confirm-password','placeholder'=>"确认新密码"])?>
                        <button type="submit" class="btn btn-primary">修改密码</button>
                        <?php ActiveForm::end();?>
                </div>

