<?php

namespace frontend\extensions\alipay;

class Helper
{
    public static function md5Sign($preStr, $key) {
        $preStr = $preStr . $key;
        return md5($preStr);
    }

    public static function md5Verify($preStr, $sign, $key) {
        return md5($preStr . $key) == $sign;
    }

    public static function createLinkString($para, $urlEncode = false) {
        $arg  = "";
        foreach ($para as $key => $val) {
            $arg .= $key . "=" . ($urlEncode ? urlencode($val) : $val) . "&";
        }
        //去掉最后一个&字符
        $arg = substr($arg, 0, -1);

        return $arg;
    }

    public static function paraFilter($para) {
        return array_filter($para, function ($v, $k) {
            return !(in_array($k, ['sign', 'sign_type'])) && !empty($v);
        }, ARRAY_FILTER_USE_BOTH);
    }

    public static function argSort($para) {
        ksort($para);
        reset($para);
        return $para;
    }

    public static function buildPreStr($param)
    {
        $param = self::paraFilter($param);
        $param = self::argSort($param);
        $str = self::createLinkString($param);
        return $str;
    }

    public static function getHttpResponsePOST($url, $cacert_url, $para, $input_charset = '') {

        if (trim($input_charset) != '') {
            $url = $url."_input_charset=".$input_charset;
        }
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, true);//SSL证书认证
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 2);//严格认证
        curl_setopt($curl, CURLOPT_CAINFO,$cacert_url);//证书地址
        curl_setopt($curl, CURLOPT_HEADER, 0 ); // 过滤HTTP头
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, 1);// 显示输出结果
        curl_setopt($curl,CURLOPT_POST,true); // post传输数据
        curl_setopt($curl,CURLOPT_POSTFIELDS,$para);// post传输数据
        $responseText = curl_exec($curl);
        //var_dump( curl_error($curl) );//如果执行curl过程中出现异常，可打开此开关，以便查看异常内容
        curl_close($curl);

        return $responseText;
    }

    public static function getHttpResponseGET($url,$cacert_url) {
        $curl = curl_init($url);
        curl_setopt($curl, CURLOPT_HEADER, 0 ); // 过滤HTTP头
        curl_setopt($curl,CURLOPT_RETURNTRANSFER, 1);// 显示输出结果
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, true);//SSL证书认证
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 2);//严格认证
        curl_setopt($curl, CURLOPT_CAINFO, $cacert_url);//证书地址
        $responseText = curl_exec($curl);
        //var_dump( curl_error($curl) );//如果执行curl过程中出现异常，可打开此开关，以便查看异常内容
        curl_close($curl);

        return $responseText;
    }

}