<?php
namespace merchant\controllers;

use merchant\models\form\LoginForm;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;


/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    [
                        'actions' => ['login', 'error', 'captcha'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout','index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => ['class' => 'yii\web\ErrorAction'],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'padding' => 0,
                'width' => 110,
                'height' => 38,
                'minLength' => 4,
                'maxLength' => 4,
                'foreColor' => 0x009DDA,
            ],
        ];
    }
    public function actionIndex(){

        return $this->render('index');
    }



    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {

        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $model = new LoginForm();

        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect(['index']);
        } else {
            $model->password = '';
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }
    public function actionLogout(){
        Yii::$app->user->logout();
        return $this->redirect(['login']);
    }


}
