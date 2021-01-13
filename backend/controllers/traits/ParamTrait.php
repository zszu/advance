<?php
namespace backend\controllers\traits;

use Yii;
use yii\web\NotFoundHttpException;
use yii\web\UploadedFile;
use yii\helpers\Url;

use common\components\ZUpload;
use common\components\Helper;
use common\models\Param;

Trait  ParamTrait{

    //系统参数管理   model  -- Param
    protected function processParams($condition,$param_type='')
    {
        $query = Param::find()->where($condition)->andwhere(['status' => 1]);
        $models = $query->orderBy('order_by, name')->all();
        $params = array();
        foreach ($models as $model) {
            $params[$model->id] = $model;
        }
        $updated = false;

        //修改
        if (isset($_POST['Params']) && is_array($_POST['Params'])) {
            $i = 1;
            foreach($_POST['Params'] as $k=>$v) {
                Param::findOne($k)->updateAttributes(['value'=>$v, 'order_by'=>$i*10]);
                $params[$k]->value = $v;
                $updated = true;
                $i++;
            }
            Yii::$app->cache->delete('cache.params');
        }

        //文件上传
//        var_dump( is_array($_FILES));die;
        if (isset($_FILES['Params']['name']) && is_array($_FILES['Params']['name'])) {
            foreach($_FILES['Params']['name'] as $k => $v) {
                $upload = new ZUpload(UploadedFile::getInstanceByName("Params[$k]"), 'param');
                if($upload->save()) {
                    $v = $upload->get_url();
                    //删除旧文件
                    if($params[$k]->value) {
                        Helper::unlink($params[$k]->value);
                    }

                    Param::findOne($k)->updateAttributes(['value'=>$v]);
                    $params[$k]->value = $v;
                    $updated = true;
                }
            }
            Yii::$app->cache->delete('cache.params');
        }

        // 图片删除
        if (isset($_POST['Params_Del']) && is_array($_POST['Params_Del'])) {
            foreach($_POST['Params_Del'] as $k=>$v) {
                Helper::unlink($params[$k]->value);
                Param::findOne($k)->updateAttributes(['value' => '']);
                $params[$k]->value = '';
                $updated = true;
            }
        }

        if ($updated) {
            return $this->message('保存成功！' , $this->redirect(Yii::$app->request->referrer));
        }

        Url::remember();

        return $this->render('params', ['params'=>$params,'param_type'=>$param_type]);
    }

    public function actionSiteParam()
    {
        return $this->processParams(['type' => Param::TYPE_SITE]);
    }
    //邮箱设置
    public function actionEmailParam()
    {
        return $this->processParams(['type' => Param::TYPE_MAIL]);
    }
    public function actionSystemParam()
    {
        return $this->processParams(['type' => Param::TYPE_SYSTEM]);
    }
    //栏目列表显示条数
    public function actionSystemItemParam()
    {
        return $this->processParams(['type' => Param::TYPE_SYSTEM_ITEM],'item');
    }
    //栏目列表封面尺寸
    public function actionSystemWhParam()
    {
        return $this->processParams(['type' => Param::TYPE_SYSTEM_WH],'wh');
    }

    public function actionCompanyParam()
    {
        return $this->processParams(['type' => Param::TYPE_COMPANY]);
    }

    public function actionMailParam()
    {
        return $this->processParams(['type' => Param::TYPE_MAIL]);
    }
}

?>