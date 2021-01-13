<?php
namespace common\widgets\echarts;

use common\widgets\echarts\assets\AppAsset;
use yii\base\InvalidConfigException;
use yii\base\Widget;
use yii\helpers\Json;

class Echats extends Widget
{
    public $type = 'line';
    public $title = '线型图';
    public $height = '250';
    public $width = '400';
    public $labels = [];
    public $options = [];
    public $datasets = [];
    public function init()
    {
        if(empty($this->labels)){
            throw  new InvalidConfigException('参数 labels 必须设置');
        }
        if(empty($this->datasets)){
            throw  new InvalidConfigException('参数 datasets 必须设置');
        }
        $view = $this->getView();
        AppAsset::register($view);
    }
    public function run()
    {
   
        return $this->render('line' , [
            'id' => $this->getId(),
            'title' => $this->title,
            'type' => $this->type,
            'height' => $this->height,
            'width' => $this->width,
            'labels' => Json::encode($this->labels),
            'datasets' => Json::encode($this->datasets),
        ]);
    }
}