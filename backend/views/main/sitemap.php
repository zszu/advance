<?php

use \yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = '高级SEO设置';
?>

<div class="card-body">
    <h3 class="tit">站点地图</h3>
    <div class="content">

        <table cellspacing="0" cellpadding="0" width="100%" class="maintable">
            <?php $form = ActiveForm::begin([
                'options' => [
                    'enctype' => 'multipart/form-data',
                ],
                'validateOnSubmit' => true,
            ]) ?>

                    <tr>
                        <th>
                            XML站点地图：
                        </th>
                        <td>
                            /sitemap.xml
                        </td>
                    </tr>

                    <tr>
                        <th>
                            TXT站点地图：
                        </th>
                        <td>
                            /sitemap.txt
                        </td>
                    </tr>

            <tr class="btn_tab">
                <td>
                    <button class="btn btn-primary">立即提交</button>
                </td>
            </tr>
        <?php ActiveForm::end() ?>
        </table>
    </div>
</div>

