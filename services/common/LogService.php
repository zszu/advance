<?php
namespace services\common;


use common\models\common\Log;
use Yii;
use common\components\Service;
use common\components\ArrayHelper;


class LogService extends Service
{
    /**
     * 状态码
     *
     * @var int
     */
    private $statusCode;

    /**
     * 状态内容
     *
     * @var string
     */
    private $statusText;
    /**
     * 报错详细数据
     *
     * @var array
     */
    private $errData = [];
    /**
     * 不记录的状态码
     *
     * @var array
     */
    public $exceptCode = [];
    /**
     * action类型 写入日志 create update delete
     *
     */
    public $writeAction = ['create' , 'update' ,'delete','edit'];

    /**
     * 日志记录
     *
     *
     * @param $response
     * @param bool $showReqId
     * @return array
     * @throws \yii\base\InvalidConfigException
     * @throws \Exception
     */
    public function record($response, $showReqId = false)
    {
        // 判断是否记录日志
//        if (Yii::$app->params['user.log'] && in_array($this->getLevel($response->statusCode), Yii::$app->params['user.log.level'])) {
            // 检查是否报错
            if ($response->statusCode >= 300 && $exception = Yii::$app->getErrorHandler()->exception) {
                $this->errData = [
                    'type' => get_class($exception),
                    'file' => method_exists($exception, 'getFile') ? $exception->getFile() : '',
                    'errorMessage' => $exception->getMessage(),
                    'line' => $exception->getLine(),
                    'stack-trace' => explode("\n", $exception->getTraceAsString()),
                ];

                $showReqId && $response->data['req_id'] = Yii::$app->params['uuid'];
            }

            $this->statusCode = $response->statusCode;
            $this->statusText = $response->statusText;

            // 排除状态码
            !in_array($this->statusCode, $this->exceptCode) && $this->push();
//        }
//        $this->push();
    }
    /**
     * redis
     * 把日志丢进队列
     */
    public function push(){
        try{
            $this->realCreate($this->getData());
        }catch (\Exception $e){
//            var_dump($e);die;
        }
    }
    /**
     * 真实写入
     *
     * @param $data
     */
    public function realCreate($data)
    {

        if($data['module'] === 'debug'){
            return false;
        }elseif (in_array($data['controller'] , ['log','action-log'])){
            //忽略 控制器 操作
            return false;
        }else{
                $actionStr = implode(',',$this->writeAction);
                if(stripos($actionStr , $data['action']) !== false){
                    $log = new Log();
                    $log->attributes = $data;
                    $log->save();
                }else{
                    return false;
                }
        }
    }
    /**
     * @return array
     * @throws \yii\base\InvalidConfigException
     */
    private function getData()
    {
        $data = $this->initData();
        $data['error_code'] = $this->statusCode;
        $data['error_data'] = $this->errData;
        $data['error_msg'] = isset($this->errData['errorMessage']) ? $this->errData['errorMessage'] : $this->statusText;
        return $data;
    }

    /**
     * 初始化默认日志数据
     *
     * @return array
     * @throws \yii\base\InvalidConfigException
     */
    private function initData()
    {
        $user_id = Yii::$app->user->id;
        if (!Yii::$app->user->isGuest) {
            /** @var AccessToken $identity */
            $identity = Yii::$app->user->identity;
            $user_id = $identity->id ?? 0;
        }

        $url = explode('?', Yii::$app->request->getUrl());

        $data = [];
        $data['user_id'] = $user_id ?? 0;
        $data['app_id'] = Yii::$app->id;
        $data['url'] = $url[0];
        $data['get_data'] = Yii::$app->request->get();
        $data['header_data'] = ArrayHelper::toArray(Yii::$app->request->headers);

        $module = $controller = $action = '';
        isset(Yii::$app->controller->module->id) && $module = Yii::$app->controller->module->id;
        isset(Yii::$app->controller->id) && $controller = Yii::$app->controller->id;
        isset(Yii::$app->controller->action->id) && $action = Yii::$app->controller->action->id;


        $data['post_data'] = Yii::$app->request->post();

        $data['device'] = Yii::$app->debris->detectVersion();
        $data['method'] = Yii::$app->request->method;
        $data['module'] = $module;
        $data['controller'] = $controller;
        $data['action'] = $action;
        $data['ip'] = (int)ip2long(Yii::$app->request->userIP);
        return $data;
    }
}