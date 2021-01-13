<?php
namespace common\widgets\ueditor;

use common\helpers\ArrayHelper;
use common\helpers\FfmpegHelper;
use common\helpers\UploadHelper;
use yii\helpers\Json;
use yii\web\Controller;
use Yii;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;

class UeditorController extends Controller
{
    /**
     * @var bool
     */
    public $enableCsrfValidation = false;

    /**
     * @var array
     */
    public $actions = [
        'uploadimage' => 'image',
        'uploadscrawl' => 'scrawl',
        'uploadvideo' => 'video',
        'uploadfile' => 'file',
        'listimage' => 'list-image',
        'listfile' => 'list-file',
        'catchimage' => 'catch-image',
        'config' => 'config',
        'listinfo' => 'list-info',
    ];
    /**
     * @var array
     */
    public $config = [];

    public function init(){
        parent::init();

        $this->config = [
            // server config @see http://fex-team.github.io/ueditor/#server-config
            'scrawlMaxSize' => Yii::$app->params['uploadConfig']['images']['maxSize'],
            'videoMaxSize' => Yii::$app->params['uploadConfig']['videos']['maxSize'],
            'imageMaxSize' => Yii::$app->params['uploadConfig']['images']['maxSize'],
            'fileMaxSize' => Yii::$app->params['uploadConfig']['files']['maxSize'],
            'imageManagerListPath' => Yii::$app->params['uploadConfig']['images']['path'],
            'fileManagerListPath' => Yii::$app->params['uploadConfig']['files']['path'],
            'scrawlFieldName' => 'image',
            'videoFieldName' => 'file',
            'fileFieldName' => 'file',
            'imageFieldName' => 'file',
        ];

        $configPath = Yii::getAlias('@common') . "/widgets/ueditor/";
        // 保留UE默认的配置引入方式
        if (file_exists($configPath . 'config.json')) {
            $config = Json::decode(preg_replace("/\/\*[\s\S]+?\*\//", '', file_get_contents($configPath . 'config.json')));
            $this->config = ArrayHelper::merge($config, $this->config);
        }

        // 设置显示驱动
        $showDrive = Yii::$app->request->get('showDrive');
        if (!empty($showDrive) && in_array($showDrive, ['Attachment', 'WechatAttachment', 'Local'])) {
            $this->showDrive = $showDrive;
        }
    }
    public function actionIndex(){
        Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

        $action = strtolower(Yii::$app->request->get('action', 'config'));

        $actions = $this->actions;

        if (isset($actions[$action])) {
            return $this->run($actions[$action]);
        }

        return $this->result('找不到方法');
    }
    /**
     * 上传图片
     *
     * @return array
     */
    public function actionImage()
    {
        try {
            $upload = new UploadHelper();
            $res = $upload->upload('file' , 'attachment/ueditor/');
            return $this->result('SUCCESS', $res);
        } catch (\Exception $e) {
            return $this->result($e->getMessage());
        }
    }
    /**
     * 上传涂鸦
     * @return array
     */
    public function actionScrawl()
    {
        try {
            $data = Yii::$app->request->post('image');
            $extend = Yii::$app->request->post('extend', 'jpg');
            $upload = new UploadHelper();
            $res = $upload->saveBase64($data , $extend , 'attachment/ueditor/');
            return $this->result('SUCCESS', $res);

        } catch (\Exception $e) {
            return $this->result($e->getMessage());
        }
    }
    /**
     * 上传视频
     *
     * @return array
     */
    public function actionVideo()
    {
        try {
                $upload = new UploadHelper();
                $res = $upload->upload('file' , 'attachment/ueditor/');
                $posterUrl = $upload->getVideoPoster();

            return [
                'state' => 'SUCCESS',
                'url' => $res,
                'posterUrl' => $posterUrl,
            ];
        } catch (\Exception $e) {
            var_dump('2222');
            return $this->result($e->getMessage());
        }
    }

    /**
     * 显示配置信息
    */
    public function actionConfig()
    {
        return $this->config;
    }


    /**
     * 获取当前上传成功文件的各项信息
     * @return array
     */
    protected function result($state = 'ERROR', $url = '')
    {
        return [
            "state" => $state,
            "url" => $url,
        ];
    }
}