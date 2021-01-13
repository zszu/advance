<?php
namespace backend\controllers;

use backend\controllers\traits\ParamTrait;
use backend\controllers\traits\SiteMapTrait;
use backend\models\ChangePwdForm;
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
    /**
     * 用户个人信息
     */
    public function actionUserInfo(){
        $model = Yii::$app->user->identity;

        if(Yii::$app->request->post() && $model->load(Yii::$app->request->post())){
            if($model->save()){
                return $this->message("个人信息修改成功" , $this->redirect(['user-info']));
            }
        }
        return $this->render('user-info' , [
            'model' => $model,
        ]);
    }
    /**
     * 修改密码
     */
    public  function actionUserResetPwd(){
        $model = new ChangePwdForm();
        $model->user = Yii::$app->user->identity;

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->doSave()) {
                return $this->message('密码修改成功！', $this->redirect(['site/logout']));
            } else {
                Yii::error($model->errors);
                return $this->message('密码修改失败！', $this->redirect(['user-reset-pwd']));
            }
        }
        return $this->render('user-reset-pwd' , [
            'model' => $model,
        ]);
    }
}