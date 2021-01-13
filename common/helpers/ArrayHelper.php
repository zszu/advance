<?php
namespace common\helpers;

use yii\helpers\BaseArrayHelper;

/**
 * Class ArrayHelper
 * @package common\helpers
 * @desc 数组助手
 */
class ArrayHelper extends BaseArrayHelper
{
    /**
     * 递归数组
     *
     * @param array $items
     * @param string $idField
     * @param int $pid
     * @param string $pidField
     * @return array
     */
    public static function itemsMerge(array $items, $pid = 0, $idField = "id", $pidField = 'pid', $child = '-')
    {
        $arr = [];
        foreach ($items as $v) {
            if ($v[$pidField] == $pid) {
                $v[$child] = self::itemsMerge($items, $v[$idField], $idField, $pidField);
                $arr[] = $v;
            }
        }

        return $arr;
    }
    /**
     * 根据级别和数组返回字符串
     *
     * @param int $level 级别
     * @param array $models
     * @param $k
     * @param int $treeStat 开始计算
     * @return bool|string
     */
    public static function itemsLevel($level, array $models, $k, $treeStat = 1)
    {
        $str = '';
        for ($i = 1; $i < $level; $i++) {
            $str .= '　　';

            if ($i == $level - $treeStat) {
                if (isset($models[$k + 1])) {
                    return $str . "├──";
                }

                return $str . "└──";
            }
        }

        return false;
    }

    /**
     * 必须经过递归才能进行重组为下拉框
     *
     * @param $models
     * @param string $idField
     * @param string $titleField
     * @param int $treeStat
     * @return array
     */
    public static function itemsMergeDropDown($models, $idField = 'id', $titleField = 'title', $treeStat = 1)
    {
        $arr = [];
        foreach ($models as $k => $model) {
            $arr[] = [
                $idField => $model[$idField],
                $titleField => self::itemsLevel($model['level'], $models, $k, $treeStat) . " " . $model[$titleField],
            ];

            if (!empty($model['-'])) {
                $arr = ArrayHelper::merge($arr,
                    self::itemsMergeDropDown($model['-'], $idField, $titleField, $treeStat));
            }
        }

        return $arr;
    }

}