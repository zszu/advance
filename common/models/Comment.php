<?php

namespace common\models;

use backend\models\UserObj;
use common\components\AppHelper;
use common\components\Helper;
use yii\web\UploadedFile;
use common\models\base\BaseModel;
/**
 * This is the model class for table "{{%comment}}".
 *
 * @property int $id
 * @property int|null $order_by 排序
 * @property int|null $type 分类id
 * @property string|null $content 内容
 * @property string|null $url 链接
 * @property string|null $tags 标签
 * @property int|null $created_at
 * @property int|null $updated_at
 * @property int|null $status 状态：1 启用 0停用
 * @property int|null $user_id 用户id
 * @property int|null $up_id 上一评论id
 * @property int|null $level 等级
 */
class Comment extends BaseModel
{
    public $coverFile;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%comment}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'type', 'created_at', 'updated_at', 'status', 'user_id','news_id','up_id','level'], 'integer'],
            [['content'], 'required'],
            [['content'], 'string'],
            [['url', 'tags'], 'string', 'max' => 255],
            [['coverFile'], 'image', 'extensions' => 'jpg,jpeg,png,gif', 'checkExtensionByMimeType' => false],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => '排序',
            'type' => 'Type',
            'content' => '内容',
            'url' => 'Url',
            'tags' => '标签',
            'created_at' => '创建时间',
            'updated_at' => '编辑时间',
            'status' => '状态',
            'user_id' => '用户',
        ];
    }
    public function getUser(){
        return $this->hasOne(UserObj::className() , ['id'=>'user_id']);
    }
    public function getNews(){
        return $this->hasOne(News::className() , ['id'=>'news_id']);
    }

    public function getUp(){
        return $this->hasOne(self::className() , ['up_id'=>'id']);
    }
    public static function listData(){
        $models = self::findAll(['status'=>1]);
        return Helper::cateGroy($models);
    }

    public function beforeValidate()
    {
        $this->coverFile = UploadedFile::getInstance($this , 'coverFile');
        return parent::beforeValidate();
    }
    public function beforeSave($insert)
    {
        AppHelper::upload($this ,$this->coverFile , 'cover');
        if($insert){
            $model = Comment::findOne($this->up_id);
            $this->level = isset($model->level) ? ++$model->level:1;
        }
        return parent::beforeSave($insert);
    }

}
