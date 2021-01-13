<?php

namespace frontend\extensions\wxpay;

use Yii;
use yii\base\InvalidConfigException;
use yii\helpers\ArrayHelper;
use yii\httpclient\Client;

class WxPay extends \yii\base\BaseObject
{
    private $baseUrl = 'https://api.mch.weixin.qq.com/pay';
    private $config;
    public $key;
    public $appId;
    public $mchId;

    public function init()
    {
        $this->config = ArrayHelper::getValue(Yii::$app->params, 'wxpay', []);
        $this->key = ArrayHelper::getValue($this->config, 'key');
        $this->appId = ArrayHelper::getValue($this->config, 'app_id');
        $this->mchId = ArrayHelper::getValue($this->config, 'mch_id');
        if (empty($this->key)) {
            throw new InvalidConfigException('未设置key');
        }
        if (empty($this->appId)) {
            throw new InvalidConfigException('未设置app_id');
        }
        if (empty($this->mchId)) {
            throw new InvalidConfigException('未设置mch_id');
        }
    }

    public function getPayUrl($body, $out_trade_no, $total_fee, $notify_url, $type = 'NATIVE', $openId = null)
    {
        $param = [
            'appid' => $this->appId,
            'mch_id' => $this->mchId,
            'nonce_str' => Helper::getNonceStr(),
            'body' => $body,
            'out_trade_no' => $out_trade_no,
            'total_fee' => $total_fee,
            'spbill_create_ip' => Yii::$app->request->userIP,
            'notify_url' => $notify_url,
            'trade_type' => $type,
        ];
        if ($type == 'JSAPI') {
            $param['openid'] = $openId;
        }
        $param = $this->addSign($param);
        $client = new Client(['baseUrl' => $this->baseUrl]);
        $response = $client->post('unifiedorder', $param)
            ->setFormat(Client::FORMAT_XML)
            ->send();
        
        return Helper::fromXml($response->content);
    }

    public function queryOrder($out_trade_no)
    {
        $param = [
            'appid' => $this->appId,
            'mch_id' => $this->mchId,
            'nonce_str' => Helper::getNonceStr(),
            'out_trade_no' => $out_trade_no,
        ];
        $param = $this->addSign($param);
        $client = new Client(['baseUrl' => $this->baseUrl]);
        $response = $client->post('orderquery', $param)
            ->setFormat(Client::FORMAT_XML)
            ->send();

        return Helper::fromXml($response->content);
    }

    public function closeOrder($out_trade_no)
    {
        $param = [
            'appid' => $this->appId,
            'mch_id' => $this->mchId,
            'nonce_str' => Helper::getNonceStr(),
            'out_trade_no' => $out_trade_no,
        ];
        return $this->post('closeorder', $param);
    }

    public function refund($out_trade_no, $out_refund_no, $total_fee, $refund_fee, $notify_url)
    {
        $param = [
            'appid' => $this->appId,
            'mch_id' => $this->mchId,
            'nonce_str' => Helper::getNonceStr(),
            'out_trade_no' => $out_trade_no,
            'out_refund_no' => $out_refund_no,
            'total_fee' => $total_fee,
            'refund_fee' => $refund_fee,
            'notify_url' => $notify_url,
        ];
        $param = $this->addSign($param);
        $client = new Client([
            'baseUrl' => 'https://api.mch.weixin.qq.com/secapi/pay/',
            'transport' => 'yii\httpclient\CurlTransport',
        ]);
        $response = $client->post('refund', $param)
            ->setOptions([
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_SSL_VERIFYHOST => false,
                CURLOPT_SSLCERTTYPE => 'PEM',
                CURLOPT_SSLKEYTYPE => 'PEM',
                CURLOPT_SSLCERT => Yii::getAlias('@app/' . ArrayHelper::getValue($this->config, 'ssl_cert')),
                CURLOPT_SSLKEY => Yii::getAlias('@app/' . ArrayHelper::getValue($this->config, 'ssl_key')),
            ])
            ->setFormat(Client::FORMAT_XML)
            ->send();

        return Helper::fromXml($response->content);
    }

    public function wxMinData($prepayId)
    {
        $data = [
            'appId' => $this->appId,
            'nonceStr' => Helper::getNonceStr(),
            'package' => 'prepay_id=' . $prepayId,
            'signType' => 'MD5',
            'timeStamp' => strval(time()),
        ];

        $paySign = $this->addSign($data);
        $data['paySign'] = $paySign['sign'];
        unset($data['appId']);

        return $data;
    }

    private function addSign($param)
    {
        ksort($param);
        $paramStr = Helper::toUrlParams($param) . '&key=' . $this->key;
        $param['sign'] = strtoupper(md5($paramStr));
        return $param;
    }

    private function post($cmd, $param)
    {
        $param = $this->addSign($param);
        $client = new Client([
            'baseUrl' => $this->baseUrl,
            'transport' => 'yii\httpclient\CurlTransport',
        ]);
        $response = $client->post($cmd, $param)
            ->setFormat(Client::FORMAT_XML)
            ->send();

        return Helper::fromXml($response->content);
    }
}