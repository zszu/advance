<?php
namespace common\widgets\provinces;

use common\helpers\ArrayHelper;
use common\models\Region;

class ProvincesHelper
{
    public static function getCityList($pid = null , $level = ''){
        if ($pid === '') {
            return [];
        }

        $model = Region::find()
            ->where(['parent_id' => $pid])
            ->orderBy('id asc')
            ->select(['id', 'name', 'parent_id'])
            ->andFilterWhere(['level' => $level])
            ->cache(600)
            ->asArray()
            ->all();

        return ArrayHelper::map($model, 'id', 'name');
    }
}