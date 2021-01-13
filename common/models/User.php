<?php
namespace common\models;

use common\helpers\ArrayHelper;
use common\models\auth\Assignment;
use common\models\auth\Role;
use Yii;
use common\components\AppHelper;
use yii\behaviors\TimestampBehavior;
use common\models\base\BaseModel;
use yii\web\UploadedFile;

/**
 * User model
 *
 * @property integer $id
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $verification_token
 * @property string $email
 * @property string $auth_key
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $password write-only password
 */
class User extends BaseModel
{
    public $avatarFile;
    //用户分组
    const GROUP_MEMBER = 1;
    const GROUP_COMPANY = 2;

    const GROUP_WORKER = 8;
    const GROUP_ADMIN = 9;
    public static $groupNames = [
        self::GROUP_MEMBER => '个人账号',
        self::GROUP_COMPANY => '企业账号',
        self::GROUP_WORKER => '员工',
        self::GROUP_ADMIN => '管理员', //超级管理员
    ];

    const STATUS_DELETED = 0; //未激活
    const STATUS_INACTIVE = 9; //已失效
    const STATUS_ACTIVE = 1; //已激活






    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%user}}';
    }

    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::className(),
        ];
    }
    public function rules()
    {
        return [
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            [['profile','nickname','email'] ,'string'],
            ['email', 'email'],
            [['mobile', 'email'], 'unique'],
            [['avatarFile'], 'image', 'extensions' => 'jpg,jpeg,png,gif', 'checkExtensionByMimeType' => false],
        ];
    }
    public function attributeLabels()
    {
       return [
         'username' =>  '用户名',
         'nickname' =>  '用户昵称',
         'email' =>  '邮箱',
         'status' => '状态',
         'avatarFile'=>'头像',
         'created_at' => '创建时间',
         'profile'=>'简介'
       ];
    }
    public function beforeValidate()
    {
        $this->avatarFile = UploadedFile::getInstance($this, 'avatarFile');
        return parent::beforeValidate();
    }

    public function beforeSave($insert)
    {
            // 封面
        AppHelper::upload($this, $this->avatarFile, 'avatar', '' , '264*264');
        return parent::beforeSave($insert);
    }

    public function getRolesId(){
        $rolesId = Assignment::find()
            ->where(['user_id'=>$this->id])
            ->asArray()
            ->all();
        return ArrayHelper::map($rolesId, 'role_id' , 'role_id');
    }

    public function getRoles(){
        $rolesId = $this->getRolesId();
        return $rolesId;
    }

    public function getRolesByDelemiter($id)
    {
        $rolesId = $this->getRolesId();

        $models = Role::find()->select(['id' ,'title' , 'order_by' , 'status' , 'created_at'])
            ->where(['status' =>STATUS_ACTIVE])
            ->andWhere(['in' , 'id' , $rolesId])
            ->orderBy('order_by desc , created_at')
            ->asArray()
            ->all();

        $roleArr = ArrayHelper::map($models, 'id' , 'title');

        return $roleArr;
    }

    public function saveRoles($data , $user_id){
        $data = $data ?:[];
        Assignment::deleteAll(['user_id' =>$user_id]);
        $items = [];

        foreach ($data as $v){
            $items[] = [
                $v,
                $user_id,
            ];
        }
        $fields = ['role_id' ,'user_id'];
        return !empty($items) && Yii::$app->db->createCommand()->batchInsert(Assignment::tableName() , $fields , $items)->execute();

    }


    public static function listUser(){
        $models = self::find()
            ->where(['status'=>self::STATUS_ACTIVE])
            ->all();
        return ArrayHelper::map($models , 'id' , 'username');
    }


}
