<?php
namespace common\helpers;

use Yii;
use yii\helpers\Json;

class DebrisHelper{
    /**
     * @throws \yii\base\InvalidConfigException
     */
    public static function getUrl()
    {
        $url = explode('?', Yii::$app->request->getUrl())[0];

        $matching = '/' . Yii::$app->id . '/';

        if (substr($url, 0, strlen($matching)) == $matching) {
            $url = substr($url, strlen($matching), strlen($url));
        }
        return $url;
    }

    /**
     * 获取分页跳转
     *
     * @return array
     */
    public static function getPageSkipUrl()
    {
        $defautlUrl = Yii::$app->request->getHostInfo() . Yii::$app->request->url;
        $urlArr = explode('?', $defautlUrl);
        $defautlUrl = $urlArr[0];
        $getQueryParam = urldecode($urlArr[1] ?? '');
        $getQueryParamArr = explode('&', $getQueryParam);

        // 查询字符串是否有page
        foreach ($getQueryParamArr as $key => $value) {
            if (StringHelper::strExists($value, 'page=') && !StringHelper::strExists($value, 'per-page=')) {
                unset($getQueryParamArr[$key]);
            }
        }

        $connector = !empty($getQueryParamArr) ? '?' : '';
        $fullUrl = $defautlUrl . $connector;
        $pageConnector = '?';
        if (!empty($getQueryParamArr)) {
            $fullUrl .= implode('&', $getQueryParamArr);
            $pageConnector = '&';
        }

        return [$fullUrl, $pageConnector];
    }
    /**
     * @param $ip
     * @return string
     */
    public static function long2ip($ip)
    {
        try {
            return long2ip($ip);
        } catch (\Exception $e) {
            return $ip;
        }
    }
    /**
     * @param $ip
     * @return string
     */
    public static function analysisIp($ip, $long = true)
    {
        if (empty($ip)) {
            return false;
        }

        if (ip2long('127.0.0.1') == $ip) {
            return '本地';
        }

        if ($long === true) {
            $ip = self::long2ip($ip);
            if (((int)$ip) > 1000) {
                return '无法解析';
            }
        }

        $ipData = \Zhuzhichao\IpLocationZh\Ip::find($ip);

        $str = '';
        isset($ipData[0]) && $str .= $ipData[0];
        isset($ipData[1]) && $str .= ' · ' . $ipData[1];
        isset($ipData[2]) && $str .= ' · ' . $ipData[2];

        return $str;
    }
    /**
     * @param $value
     * @return mixed
     */
    public static function htmlEncode($value)
    {
        if (!is_array($value)) {
            $value = Json::decode($value);
        }

        $array = [];
        foreach ($value as $key => &$item) {
            if (!is_array($item)) {
                $array[$key] = Html::encode($item);
            } else {
                $array[$key] = self::htmlEncode($item);
            }
        }

        return $array;
    }

}