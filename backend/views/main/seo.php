<?php

use \yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = '高级SEO设置';
?>

<div class="card-body">
                    <h3 class="tit">高级SEO设置</h3>
                    <div class="content">
                        <table cellspacing="2" cellpadding="2" class="table" width="100%">
                            <tbody>
                            <tr>
                                <td>
                                    <p style="margin-bottom: 10px;">插入的变量必需使用英文大括号“{}”包裹；当应用范围不支持该变量时，将显示变量名建议使用手写代替关键词。以下是常用SEO变量规则：</p>
                                    <li><strong>站点名称：</strong>{sitename}</li>
                                    <li><strong>默认SEO Title：</strong>{sitetitle}</li>
                                    <li><strong>默认SEO Keywords：</strong>{sitekeywords}</li>
                                    <li><strong>默认SEO Description：</strong>{sitedescription}</li>
                                    <li><strong>列表分类名称：</strong>{typename}</li>
                                    <li><strong>内容标题：</strong>{title}</li>
                                    <span class="text-operate">注：当前设置的SEO规则会替换基础SEO配置规范，如需延用则可留空。</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                        <table cellspacing="0" cellpadding="0" width="100%" class="maintable">
                            <?php $form = ActiveForm::begin([
                                'options' => [
                                    'enctype' => 'multipart/form-data',
                                ],
                                'validateOnSubmit' => true,
                            ]) ?>
                            <?php foreach($models as $model): ?>
                                <tr>
                                    <th><label class="control-label" for="seo-keywords"><?= $model['name'] ?><br>
                                            <?= $model['code'] ?></label>
                                    </th>
                                    <td>
                                        <table width="100%">
                                            <tbody>
                                            <tr>
                                                <td>title：</td>
                                                <td>
                                                    <?= Html::textInput("Seo[{$model['action']}][title]", $model['title'],['class'=>'form-control','id'=>'seo-action']);?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>keywords：</td>
                                                <td><?= Html::textInput("Seo[{$model['action']}][keywords]", $model['keywords'],['class'=>'form-control','id'=>'seo-keywords']); ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>description：</td>
                                                <td>
                                                    <?= Html::textInput("Seo[{$model['action']}][description]", $model['description'],['class'=>'form-control','id'=>'seo-description']); ?>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            <tr class="btn_tab">
                                <td>
                                    <button class="btn btn-primary">立即提交</button>
                                </td>
                            </tr>
                        </table>
                        <?php ActiveForm::end() ?>
                        </table>
                    </div>
                </div>

