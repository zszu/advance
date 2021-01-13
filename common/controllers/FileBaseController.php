<?php
namespace common\controllers;


use common\helpers\ResultDataHelper;
use common\models\Attachment;
use Yii;
use yii\helpers\FileHelper;
use yii\web\Controller;
use common\components\Upload;
use yii\web\UploadedFile;

class FileBaseController extends Controller
{
    public function beforeAction($action)
    {
        Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        return parent::beforeAction($action);
    }

    /**
     * Webuploader 上传图片
     */
    public function actionImages(){
        try {
            $model = new Upload();
            $info = $model->upImage();
            if ($info && is_array($info)) {
                return $info;
            } else {
                return ['code' => 1, 'msg' => 'error'];
            }
        } catch (\Exception $e) {
            return ['code' => 1, 'msg' => $e->getMessage()];
        }
    }
    /**
     * 视频上传
     *
     * @return array
     * @throws \yii\web\NotFoundHttpException
     */
    public function actionVideos()
    {
        try {
            $file = UploadedFile::getInstanceByName('file');

            if (!$file) {
                return false;
            }
            $relativePath = $successPath = date('Y') . '/'.date('m').'/'.date('d').'/';

            $config = Yii::$app->params['uploadConfig'];
            $relativePath = $config['imageUploadRelativePath'].$relativePath;
            $successPath = $config['imageUploadSuccessPath'].$successPath;

            $fileName = date('ymdHis') . mt_rand(10000, 99999)  . '.' . $file->extension;



            $fullPath = dirname(Yii::getAlias('@attachment')). $relativePath;
            if (!is_dir($fullPath)) {
                FileHelper::createDirectory($fullPath);
            }
            //注意 $fullPath 必须全路径
            $file->saveAs($fullPath . $fileName);
            return [
                'code' => 0,
                'url' =>  $config['domain'].'/'.$successPath . $fileName,
                'attachment' => $relativePath . $fileName
            ];


            return ResultDataHelper::json(200, '上传成功');
        } catch (\Exception $e) {
            return ResultDataHelper::json(404, $e->getMessage());
        }
    }
}