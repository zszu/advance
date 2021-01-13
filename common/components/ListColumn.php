<?php

namespace common\components;

use yii\grid\DataColumn;
use yii\helpers\ArrayHelper;

class ListColumn extends DataColumn
{
    /**
     * @var array 用于取得数组的值
     */
    public $list = [];

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();
        $this->filter = $this->list;
    }

    /**
     * @inheritdoc
     */
    public function getDataCellValue($model, $key, $index)
    {
        $value = parent::getDataCellValue($model, $key, $index);

        return ArrayHelper::getValue($this->list, $value, $value);
    }
}