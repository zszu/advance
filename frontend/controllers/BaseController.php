<?php
namespace frontend\controllers;

use common\components\ArrayHelper;
use common\models\Tags;
use common\models\Type;
use common\models\Comment;
use yii\web\Controller;
use Yii;

class BaseController extends Controller
{
    public $params = [];
    const CACHE_KEY_PARAMS = 'cache.params';
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(),[
            'param' => [
                'class' => '\common\behaviors\ParamBehavior',
                'cache_name' => self::CACHE_KEY_PARAMS,
            ],
        ]);
    }
    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
            'upload' => ['class' => 'common\widgets\ZKindEditor\UploadAction'],
            'manage' => ['class' => 'common\widgets\ZKindEditor\ManageAction'],
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

    public function beforeAction($action)
    {
        // 防止编辑器上传文件处报错
        if ($action->id == 'upload') {
            \Yii::$app->request->enableCsrfValidation = false;
        }
        $view = Yii::$app->view;
        $view->params['tags'] = Tags::find()->all();
        $view->params['comments'] = Comment::find()->where(['status'=>1])->all();
        $view->params['typesObj'] = Type::find()->where(['name'=>'news'])->orderBy('order_by desc , created_at desc')->all();
        $this->view->attachBehavior('seo', \frontend\behaviors\SeoBehavior::className());

        return parent::beforeAction($action);
    }
}