<?php
namespace api\modules\v1\controllers;

use api\controllers\OnAuthController;
use common\helpers\ResultDataHelper;
use api\modules\v1\models\UserObj;

class SiteController extends OnAuthController
{
    protected $authOptional = ['refresh-token','version'];
    public $modelClass = '';
    //api 登录
    public function actionLogin(){

    }
    //access-token 刷新
    public function actionRefreshToken(){
        $id  = 1;
        $model = UserObj::findOne($id);
        $model->generateAccessToken();
        $model->generateInvalidAt();
        $model->save(false);
        return ResultDataHelper::api(200 ,  'access-token刷新成功' , [
            'access-token'=>$model->access_token,
        ]);
    }
    //版本
    public function actionVersion(){
        return ResultDataHelper::api(200, '请求成功' ,[
           'version' => '当前 api 版本为 v1',
        ]);
    }
//
//    public function verbs()
//    {
//        return array_merge(parent::verbs() , [
//            'refresh-token' => ['POST'],
//        ]);
//    }

}