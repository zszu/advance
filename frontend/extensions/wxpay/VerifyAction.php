<?php

namespace frontend\extensions\wxpay;

use Yii;
use yii\base\Action;
use yii\helpers\ArrayHelper;
use yii\web\Request;
use yii\web\Response;

class VerifyAction extends Action
{
    public $successCallback;
    public $failureCallback;

    public function run()
    {
        try {
            $data = Helper::fromXml(Yii::$app->request->rawBody);
            if (ArrayHelper::getValue($data, 'result_code') != 'SUCCESS') {
                return 'result return incorrect';
            }
            if (!isset($data['sign'])) {
                return 'has no sign';
            }
            if ($data['sign'] != Helper::makeSign($data, Yii::$app->params['wxpay']['key'])) {
                return 'sign is not correct';
            }
            if (ArrayHelper::getValue($data, 'return_code') == 'SUCCESS') {
                if ($this->successCallback !== null) {
                    return Helper::toXml(call_user_func($this->successCallback, $data));
                }
                return Helper::toXml(['return_code' => 'SUCCESS', 'return_msg' => 'OK']);
            } else {
                if ($this->failureCallback !== null) {
                    return Helper::toXml(call_user_func($this->failureCallback, $data));
                }
                return Helper::toXml(['return_code' => 'FAIL', 'return_msg' => 'OK']);
            }
        } catch (\Exception $e) {
            Yii::error($e->getMessage());
            return 'exception: ' . $e->getMessage();
        }
    }
}