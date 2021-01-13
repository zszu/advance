<?php

namespace common\models;

use common\components\ArrayHelper;
use common\helpers\Html;
use Yii;
use common\models\base\BaseModel;

/**
 * This is the model class for table "{{%zz_news}}".
 *
 * @property int $id
 * @property int|null $order_by 排序
 * @property int|null $type 分类id
 * @property string $title 标题
 * @property string|null $subtitle 副标题
 * @property string|null $publisher 作者
 * @property string|null $summary 简介
 * @property string|null $content 内容
 * @property string|null $cover 封面
 * @property string|null $covers 多图
 * @property string|null $qr_code 二维码
 * @property string|null $bg_color 背景色
 * @property string|null $bg_pic 背景图
 * @property string|null $url 链接
 * @property string|null $tags 标签
 * @property int|null $views 查看数
 * @property int|null $index_show 首页显示
 * @property int|null $created_at
 * @property int|null $updated_at
 * @property int|null $status 状态：1 启用 0停用
 * @property string|null $name 所属栏目
 * @property string|null $keywords
 */
class News extends BaseModel
{
    public  $coverFile;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%news}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'type', 'views', 'index_show', 'created_at', 'updated_at', 'status','user_id'], 'integer'],
            [['title','user_id'], 'required'],
            [['summary', 'content'], 'string'],
            [['title', 'subtitle', 'publisher', 'cover', 'covers', 'qr_code', 'bg_color', 'bg_pic', 'url', 'tags', 'name', 'keywords'], 'string', 'max' => 255],
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
            'type' => '类别',
            'title' => '标题',
            'subtitle' => '副标题',
            'publisher' => '作者',
            'summary' => '简介',
            'content' => '内容',
            'cover' => '图片',
            'covers' => '多图',
            'qr_code' => '二维码',
            'bg_color' => 'Bg Color',
            'bg_pic' => 'Bg Pic',
            'url' => 'Url',
            'tags' => '标签',
            'views' => '查看数',
            'index_show' => 'Index Show',
            'created_at' => '创建时间',
            'updated_at' => '编辑时间',
            'status' => '状态',
            'name' => 'Name',
            'keywords' => '关键词',
            'user_id'=>'用户ID'
        ];
    }
    public static function listData(){
        $models = static::findAll(['status'=>1]);
        return ArrayHelper::map($models , 'id' ,'title');
    }
    public function  beforeValidate()
    {
        if(is_array($this->covers)){
            $this->covers = implode(Yii::$app->params['uploadConfig']['delimiter'] , $this->covers);
        }
        return parent::beforeValidate();
    }
    public function getCommentCount(){
        return $this->hasMany(Comment::className() , ['news_id'=>'id'])->count();
    }
    public function getUser(){
        return $this->hasOne(User::className() , ['id'=>'user_id']);
    }
    public function getTypeOne(){
        return $this->hasOne(Type::className() , ['id'=>'type']);
    }
    public function  getTagLinks()
    {
        $links=array();
        $tagArr = explode(',',$this->tags);
        foreach($tagArr as $tag)
        {
            $links[]=Html::a(Html::encode($tag),array('news/index','title'=>$tag));
        }
        return $links;
    }
    public function beforeSave($insert)
    {

        Tags::deleteAll(['article_id'=>$this->id]);
        if(!empty($this->tags)){
            $tagArr = explode(',',$this->tags);
            foreach ($tagArr as $tag){
                    $tagObj = new Tags();
                    $tagObj->article_id = $this->id;
                    $tagObj->title = $tag;
                    $tagObj->save();
            }
        }
        return parent::beforeSave($insert);
    }




}
