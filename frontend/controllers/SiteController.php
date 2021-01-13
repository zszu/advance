<?php
namespace frontend\controllers;

use App\Http\Controllers\Sdk\GeetestLib;
use common\components\ArrayHelper;
use common\models\Comment;
use common\models\News;
use common\models\Tags;
use frontend\models\ResendVerificationEmailForm;
use frontend\models\VerifyEmailForm;
use Yii;
use yii\base\InvalidArgumentException;
use yii\data\ActiveDataProvider;
use yii\web\BadRequestHttpException;
use common\models\BaseLoginForm;
use frontend\models\PasswordResetRequestForm;
use frontend\models\ResetPasswordForm;
use frontend\models\SignupForm;
use frontend\models\ContactForm;
use yii\web\Response;

/**
 * Site controller
 */
class SiteController extends BaseController
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(),[
//            'access' =>[
//                'class' => AccessControl::className(),
//                'rules' =>[
//                    [
//                        'actions' => ['index','news','news-detail','login','signup','request-password-reset','resend-verification-email'],
//                        'allow' => true,
//                        'roles' => ['?'],
//                    ],
//                    [
//                        'allow' => true,
//                        'roles' => ['@'],
//                    ],
//                ],
//            ],
        ]);


    }

    //初始化 极速验证
    public function actionGeetestStart(){
        $id = 'b46d1900d0a894591916ea94ea91bd2c';
        $key = '36fc3fe98530eea08dfc6ce76e3d24c4';
        $gt = new \common\tools\GeetestLib($id, $key);

        Yii::$app->session->set('geetest_status', $gt->pre_process());
        echo $gt->get_response_str();
    }
    //验证 极速验证

    public function actionGeetestVerify(){
        Yii::$app->response->format = Response::FORMAT_JSON;
        $id = Yii::$app->params['geetest']['captcha_id'];
        $key = Yii::$app->params['geetest']['private_key'];
        $gtSuccess = false;
        $gt = new \common\tools\GeetestLib($id, $key);
        if (Yii::$app->session->get('geetest_status') == 1) {
            if ($gt->success_validate($_POST['geetest_challenge'], $_POST['geetest_validate'], $_POST['geetest_seccode'])) {
                $gtSuccess = true;
            }
        } else {
            if ($gt->fail_validate($_POST['geetest_challenge'],$_POST['geetest_validate'],$_POST['geetest_seccode'])) {
                $gtSuccess = true;
            }
        }

        if (!$gtSuccess) {
            return ['status' => 'error', 'code' => 0, 'message' => '验证没通过！'];
        }else{
            return ['status' => 'ok', 'code' => 1, 'message' => '验证通过！'];
        }
    }



    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex($title=null){
        $query = News::find()->where(['status'=>1]);
        $type = Yii::$app->request->get('type');
        $key = Yii::$app->request->get('key');
        if(!empty($type)){
            $query = $query->andFilterWhere(['type'=>$type]);
        }
        if(!empty($title)){
            $tagsObj = Tags::findAll(['title'=>$title]);
            $ids = ArrayHelper::map($tagsObj , 'article_id','article_id');
            $query = $query->andWhere(['in','id',$ids]);
        }
        if(!empty($key)){
            $query = $query->andFilterWhere(['like','title',$key]);
        }
        $query = $query->orderBy('created_at DESC');

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => ['pageSize' =>10,'pageSizeParam' => false],
            'sort'=> false,
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionComment(){
        $model = new Comment();

        if($model->load(Yii::$app->request->post()) && $model->save()){
            return $this->message('评论成功,请等待管理员审核通话',$this->redirect(['news/detail','id'=>$model->news_id]));
        }

        return $this->message('评论失败,请重新提交',$this->redirect(['news/detail','id'=>$model->news_id ]),'error');
    }

    public function actionAjaxReplyComment(){
        $model = new Comment();

        if($model->load(Yii::$app->request->post()) && $model->validate()&& $model->save()){
            return json_encode(['code'=>200 , 'msg'=>'评论回复成功,请等待管理员审核通话']);
        }
        $up_id = Yii::$app->request->get('id');
        $news_id = Yii::$app->request->get('news_id');
        return $this->renderFile('@frontend/views/site/_comment.php',[
            'model'=>$model,
            'up_id'=>$up_id,
            'news_id'=>$news_id,
        ]);
    }


    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {

        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new BaseLoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }

    /**
     * Displays contact page.
     *
     * @return mixed
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail(Yii::$app->params['adminEmail'])) {
                Yii::$app->session->setFlash('success', 'Thank you for contacting us. We will respond to you as soon as possible.');
            } else {
                Yii::$app->session->setFlash('error', 'There was an error sending your message.');
            }

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    /**
     * Signs user up 注册
     * @return mixed
     */
    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->session->setFlash('success', '感谢您的注册。 请检查您的收件箱以获取验证电子邮件');
            return $this->goHome();
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    /**
     * Requests password reset.
     *
     * @return mixed
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            } else {
                Yii::$app->session->setFlash('error', 'Sorry, we are unable to reset password for the provided email address.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Resets password.
     *
     * @param string $token
     * @return mixed
     * @throws BadRequestHttpException
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);

        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash('success', 'New password saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Verify email address
     * 邮箱验证
     * @param string $token
     * @throws BadRequestHttpException
     * @return yii\web\Response
     */
    public function actionVerifyEmail($token)
    {
        try {
            $model = new VerifyEmailForm($token);
        } catch (InvalidArgumentException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }
        if ($user = $model->verifyEmail()) {
            if (Yii::$app->user->login($user)) {
                Yii::$app->session->setFlash('success', '您的电子邮件已被确认');
                return $this->goHome();
            }
        }

        Yii::$app->session->setFlash('error', '抱歉，我们无法使用提供的令牌来验证您的帐户');
        return $this->goHome();
    }

    /**
     * Resend verification email
     *
     * @return mixed
     */
    public function actionResendVerificationEmail()
    {


        $model = new ResendVerificationEmailForm();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->session->setFlash('success', 'Check your email for further instructions.');
                return $this->goHome();
            }
            Yii::$app->session->setFlash('error', 'Sorry, we are unable to resend verification email for the provided email address.');
        }

        return $this->render('resendVerificationEmail', [
            'model' => $model
        ]);
    }



}
