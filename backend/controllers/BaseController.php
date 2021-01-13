<?php
namespace backend\controllers;

use common\helpers\Auth;
use yii\filters\AccessControl;
use yii\web\Controller;
use Yii;
use yii\web\UnauthorizedHttpException;
use common\behaviors\ActionLogBehavior;
use \yii\web\Response;
use  \yii\widgets\ActiveForm;

class BaseController extends Controller
{
    public function actions()
    {
        return [
            'upload' => ['class' => 'common\widgets\ZKindEditor\UploadAction'],
//            'manage' => ['class' => 'common\widgets\ZKindEditor\ManageAction'],
        ];
    }
    public function behaviors()
    {
        return [
                'access' => [
                    'class' => AccessControl::class,
                    'rules' => [
                        [
                            'allow' => true,
                            'roles' => ['@'], // 登录
                        ],
                    ],
                ],

                //行为日志
                'actionLog' => [
                    'class' => ActionLogBehavior::class
                ]
            ];
    }

    /**
     * 错误提示信息
     *
     * @param string $msgText 错误内容
     * @param string $skipUrl 跳转链接
     * @param string $msgType 提示类型 [success/error/info/warning]
     * @return mixed
     */
    protected function message($msgText, $skipUrl, $msgType = null)
    {
        if (!$msgType || !in_array($msgType, ['success', 'error', 'info', 'warning'])) {
            $msgType = 'success';
        }

        Yii::$app->getSession()->setFlash($msgType, $msgText);
        return $skipUrl;
    }

    //ajax 校检
    protected function activeFormValidate($model)
    {
        if (Yii::$app->request->isAjax && !Yii::$app->request->isPjax) {
            if ($model->load(Yii::$app->request->post())) {
                Yii::$app->response->format = Response::FORMAT_JSON;
                Yii::$app->response->data = ActiveForm::validate($model);
                Yii::$app->end();
            }
        }
    }
    public function actionClearCache(){
        if(Yii::$app->cache->flush()){
            return $this->message('缓存清理成功', $this->goBack(Yii::$app->request->referrer) , 'success');
        }else{
            return $this->message('缓存清理失败', $this->goBack(Yii::$app->request->referrer), 'error');
        }

    }

    public function beforeAction($action)
    {
        // 防止编辑器上传文件处报错
        if ($action->id == 'upload') {
            \Yii::$app->request->enableCsrfValidation = false;
        }

        Yii::$container->set('yii\widgets\ActiveField', [
            'options' => ['tag' => 'div','class'=>'form-group'],
            'template' => "{label}{input}{hint}{error}"
        ]);
        Yii::$container->set('yii\grid\GridView', [
            'layout' => "\n{items}\n<div class=\"pages\"><div class=\"pull-right\">{summary}".'条记录</div>{pager}</div>',
            'summary'=>'共有{totalCount}',
        ]);

        Yii::$container->set('yii\grid\GridView', [
            'layout' => "{items}\n<div class='pages'><div class='pull-right'>{summary}</div>{pager}\n</div>",
            'summary' => '共有 {totalCount} 条记录',
            'pager' => [
               'class'=>'common\components\LinkPager',
//                'skipPage' => true,
            ],
        ]);


        // 判断当前模块的是否为主模块, 模块+控制器+方法
        $permissionName =  '/' . Yii::$app->controller->route;
        // 判断是否忽略校验
        if (in_array($permissionName, Yii::$app->params['noAuthRoute'])) {
            return true;
        }
//        var_dump($permissionName);die;
        // 开始权限校验
        if (!Auth::verify($permissionName)) {
            throw new UnauthorizedHttpException('对不起，您现在还没获此操作的权限');
        }

        return parent::beforeAction($action);
    }


}