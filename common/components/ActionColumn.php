<?php

namespace common\components;

use Yii;
use yii\helpers\Html;
use yii\helpers\Url;

class ActionColumn extends \yii\grid\ActionColumn
{
    public $header = '操作';
    public $template = '{edit}{delete}';
    public $item =['edit','delete'];
    public $prefixAction = null;
    public $deletePjax = 'pj-list';
    public $updatePjax = 'pj-form';
    public $containerOptions = ['class' => 'btn-group btn-group-xs'];

    public function init()
    {
        parent::init();
    }

    protected function initDefaultButtons()
    {
        foreach ($this->item as $v_item){
            $this->initDefaultButton($v_item, 'eye-open');
        }
    }

    protected function initDefaultButton($name, $iconName, $additionalOptions = [] , $title=null)
    {
        if (!isset($this->buttons[$name]) && strpos($this->template, '{' . $name . '}') !== false) {
            $this->buttons[$name] = function ($url, $model, $key) use ($name, $iconName, $additionalOptions ,$title) {
                $options = [];
                $class = '';
                $iconName = null;
                switch ($name) {
                    case 'view':
                        $title = '查看';
                        $iconName = 'eye-open';
                        break;
                    case 'update':
                        $title = '编辑';
                        $class = 'btn btn-primary btn-sm';
                        $iconName = 'pencil';
                        break;
                    case 'edit':
                        $title = '编辑';
                        $class = 'btn btn-primary btn-sm';
                        $iconName = 'pencil';
                        break;
                    case 'delete':
                        $title = '删除';
                        $class = 'btn btn-danger btn-sm';
                        $options = [
                            'onclick' =>'zDelete(this);return false;'
                        ];
                        break;
                    default:
                        $class = 'btn btn-primary';
                }
                $additionalOptions = ['class'=>$class];
                $options = array_merge($options ,[
                    'title' => $title,
                    'aria-label' => $title,
                    'data-pjax' => '0',
                ], $additionalOptions, $this->buttonOptions);
                return Html::a($title, $url, $options);
            };
        }
    }

    public function createUrl($action, $model, $key, $index)
    {
        if (is_callable($this->urlCreator)) {
            return call_user_func($this->urlCreator, $action, $model, $key, $index, $this);
        }

        $params = is_array($key) ? $key : ['id' => (string) $key];

        if($this->prefixAction) $action = $this->prefixAction ? $this->prefixAction . '-' . $action : $action;

        $params[0] = $this->controller ? $this->controller . '/' . $action : $action;
        return Url::toRoute($params);
    }

}