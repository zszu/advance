<?php
namespace frontend\widgets;

use common\helpers\Html;use yii\base\Widget;
use yii\widgets\ActiveForm;

class makeForm extends Widget
{
    public $url;
    public $action;
    public $method;
    public $options;
    public function init()
    {

        parent::init();
    }
    public function run(){
        ActiveForm::begin([
            'action'=>$this->url,
            'method'=>'post',
        ]);

        $textarea = Html::textarea("Comment[content]" , '',['id'=>'comment-content','class'=>'form-control']);
        $content = Html::tag('div' ,$textarea,['class'=>'form-group']);
        $html = Html::beginForm($this->action, $this->method, $this->options);
        $html .= $content;
        $html .=Html::tag('div' , Html::submitButton('发表评论', ['class' =>'btn btn-primary']) ,[['class'=>'form-group']]);

        $html .= Html::endForm();
        return $html;

    }

}