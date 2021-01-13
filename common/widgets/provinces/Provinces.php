<?php
namespace common\widgets\provinces;

use yii\base\Widget;
use Yii;

class Provinces extends Widget
{
    //省的 字段名称
    public $provincesName = 'provinces';
    //市 字段名称
    public $cityName = 'city';
    //地区 字段名称
    public $areaName = 'area';

    /**
     * 显示类型
     *
     * @var string
     */
    public $template = 'long';

    /**
     * 关联的ajax url
     *
     * @var
     */
    public $url;

    /**
     * 级别
     *
     * @var int
     */
    public $level = 3;

    /**
     * 模型
     *
     * @var array
     */
    public $model;

    /**
     * 表单
     * @var
     */
    public $form;

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();

        empty($this->url) && $this->url = Yii::$app->urlManager->createUrl(['/provinces/index']);
    }

    /**
     * @return string
     */
    public function run()
    {
        return $this->render($this->template, [
            'form' => $this->form,
            'model' => $this->model,
            'provincesName' => $this->provincesName,
            'cityName' => $this->cityName,
            'areaName' => $this->areaName,
            'url' => $this->url,
            'level' => $this->level,
        ]);
    }
}