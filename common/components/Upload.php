<?php
namespace common\components;
use Yii;
use yii\base\Model;
use yii\web\UploadedFile;
use yii\helpers\FileHelper;
/**
 * 文件上传处理
 */
class Upload extends Model
{
    public $cover;
    public $covers;
    private $_appendRules;


    public function init ()
    {

        parent::init();
        $config = Yii::$app->params['uploadConfig'];
        $extensions = $config['images']['extensions'];
        $this->_appendRules = [
            [['cover', 'covers'], 'safe'],
            [['cover'], 'file', 'extensions' => $extensions],
        ];
    }
    public function rules()
    {
        $baseRules = [];
        return array_merge($baseRules, $this->_appendRules);
    }

    public function upImage(){
        $model = new static;

        $model->cover = UploadedFile::getInstanceByName('file');

        if (!$model->cover) {
            return false;
        }
        $relativePath = $successPath = date('Y') . '/'.date('m').'/'.date('d').'/';

        $config = Yii::$app->params['uploadConfig'];
        if ($model->validate()) {
            $relativePath = $config['imageUploadRelativePath'].$relativePath;
            $successPath = $config['imageUploadSuccessPath'].$successPath;

            $fileName = date('ymdHis') . mt_rand(10000, 99999)  . '.' . $model->cover->extension;



            $fullPath = dirname(Yii::getAlias('@attachment')). $relativePath;
            if (!is_dir($fullPath)) {
                FileHelper::createDirectory($fullPath);
            }
            //注意 $fullPath 必须全路径
            $model->cover->saveAs($fullPath . $fileName);
            return [
                'code' => 0,
                'url' => rtrim('/' ,  $config['domain'] ?? $_SERVER['HTTP_HOST']).$successPath . $fileName,
                'attachment' => $relativePath . $fileName
            ];
        } else {
            $errors = $model->errors;
            return [
                'code' => 1,
                'msg' => current($errors)[0]
            ];
        }

    }

}
