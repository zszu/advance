<?php

namespace common\models\auth;

use phpDocumentor\Reflection\Types\Self_;
use Yii;
use \common\helpers\ArrayHelper;
use common\models\base\BaseModel;

/**
 * This is the model class for table "tsj_auth_item".
 *
 * @property int $id
 * @property string|null $title 标题
 * @property string|null $name 别名
 * @property int|null $order_by 排序
 * @property string|null $type 类别
 * @property int $pid
 * @property int $level 级别
 * @property int|null $status 状态[;0:未启用;1已启用]
 * @property int|null $created_at 创建时间
 * @property int|null $updated_at 编辑时间
 * @property string|null $summary 描述
 */
class Item extends BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tsj_auth_item';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title' , 'name'] , 'required'],
            [['order_by', 'pid', 'level', 'status', 'created_at', 'updated_at'], 'integer'],
            [['title', 'name'], 'string', 'max' => 255],
            [['type'], 'string', 'max' => 20],
            [['summary'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => '名称',
            'name' => '别名',
            'order_by' => 'Order By',
            'type' => 'Type',
            'pid' => 'Pid',
            'level' => 'Level',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public static function getItems(){
        $models = self::find()
            ->select(['id','pid','level','title','status'])
            ->where(['status'=>1])
            ->asArray()
            ->all();
        return $models;
    }
    public static  function dropDownList(){
        $models = self::getItems();
        $models = ArrayHelper::itemsMerge($models);
        $models = ArrayHelper::map(ArrayHelper::itemsMergeDropDown($models) , 'id' , 'title');
        return ArrayHelper::merge([0=>'顶级'] , $models);
    }
    /**
     * 关联父级
     *
     * @return \yii\db\ActiveQuery
     */
    public function getParent()
    {
        return $this->hasOne(self::class, ['id' => 'pid']);
    }
    public function beforeSave($insert)
    {
        $parent = self::findOne($this->pid);
        if($parent){
            $this->level += $parent->level;
        }

        return parent::beforeSave($insert);
    }
}
