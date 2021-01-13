<?php
namespace backend\controllers;

use backend\controllers\traits\ParamTrait;
use backend\controllers\traits\SiteMapTrait;
use common\models\Seo;
use \Yii;

class MainController extends BaseController
{
    use ParamTrait;
    use SiteMapTrait;
    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
    //seo设置
    public function actionSeo()
    {
        $models = Seo::find()->where(['status' => 1])->orderBy('order_by DESC, id')->all();

        if (Yii::$app->request->isPost && $seoPost = Yii::$app->request->post('Seo')) {
            $seos = [];
            foreach ($models as $model) {
                $seos[$model['action']] = $model;
            }

            $msg = [];
            foreach($seoPost as $k=>$v) {
                if (isset($seos[$k]) && $seos[$k]->load($v, '')) {
                    if ($seos[$k]->save()) {
                        $msg[] = 'SEO ' . $seos[$k]->name . ' 保存成功！';
                    } else {
                        $msg[] = 'SEO ' . $seos[$k]->name . ' 保存失败！';
                    }
                }
            }

            return $this->message(implode('<br>', $msg) , $this->redirect(['seo']));
        }

        return $this->render('seo', [
            'models' => $models
        ]);
    }
}