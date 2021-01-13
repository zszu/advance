<?php

namespace frontend\extensions\alipay;

use Yii;
use yii\base\InvalidConfigException;
use yii\helpers\ArrayHelper;

class Alipay extends \yii\base\BaseObject
{
    public $config;
    private $alipay_gateway = 'https://mapi.alipay.com/gateway.do?';
    private $https_verify_url = 'https://mapi.alipay.com/gateway.do?service=notify_verify&';
    private $http_verify_url = 'http://notify.alipay.com/trade/notify_query.do?';

    public function init()
    {
        $this->config = ArrayHelper::getValue(Yii::$app->params, 'alipay');
        if (empty($this->config)) {
            throw new InvalidConfigException('请设置支付参数');
        }
    }

    public function redirect($out_trade_no, $subject, $total_fee, $body, $return_url, $notify_url)
    {
        $param = [
            'service' => ArrayHelper::getValue($this->config, 'service'),
            'partner' => ArrayHelper::getValue($this->config, 'partner'),
            'seller_id' => ArrayHelper::getValue($this->config, 'seller_id'),
            'payment_type' => ArrayHelper::getValue($this->config, 'payment_type'),
            'notify_url' => $notify_url,
            'return_url' => $return_url,
            '_input_charset' => ArrayHelper::getValue($this->config, 'input_charset'),
            'out_trade_no' => $out_trade_no,
            'subject' => $subject,
            'total_fee' => $total_fee,
            'body' => $body,
        ];

        $param['sign'] = Helper::md5Sign(Helper::buildPreStr($param), ArrayHelper::getValue($this->config, 'key'));
        $param['sign_type'] = 'MD5';

        Yii::$app->response->redirect($this->alipay_gateway . Helper::createLinkString($param, true));
    }

    public function getResponse($notify_id)
    {
        $transport = strtolower(trim($this->config['transport']));
        $partner = trim($this->config['partner']);
        $verifyUrl = $transport == 'https' ? $this->https_verify_url : $this->http_verify_url;
        $verifyUrl = $verifyUrl . "partner=" . $partner . "&notify_id=" . $notify_id;

        $responseTxt = Helper::getHttpResponseGET($verifyUrl, $this->config['cacert']);

        return $responseTxt;
    }

    public function getSignVerify($param, $sign)
    {
        return $sign == Helper::md5Verify(Helper::buildPreStr($param), $sign, ArrayHelper::getValue($this->config, 'key'));
    }

    public function verifyNotify($data)
    {
        $isSign = $this->getSignVerify($data, ArrayHelper::getValue($data, 'sign'));
        if (!$isSign) {
            return false;
        }

        $responseTxt = 'false';
        $notify_id = ArrayHelper::getValue($data, 'notify_id');
        if ($notify_id) {
            $responseTxt = $this->getResponse($notify_id);
        }

        return preg_match("/true$/i", $responseTxt);
    }
}