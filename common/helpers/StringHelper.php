<?php
namespace common\helpers;
use yii\helpers\BaseStringHelper;

/**
 * Class StringHelper
 * @package common\helpers
 * @desc 字符串助手
 */

class StringHelper extends BaseStringHelper
{
    /**
     * 返回字符串在另一个字符串中第一次出现的位置
     *
     * @param $string
     * @param $find
     * @return bool
     * true | false
     */
    public static function strExists($string, $find)
    {
        return !(strpos($string, $find) === false);
    }




}