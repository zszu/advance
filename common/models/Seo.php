<?php
namespace common\models;

class Seo extends \common\models\base\BaseModel
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%seo}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['action', 'name', 'title'], 'required'],
            [['order_by', 'status', 'created_at', 'updated_at'], 'integer'],
            [['description'], 'string'],
            [['action'], 'string', 'max' => 30],
            [['name'], 'string', 'max' => 50],
            [['title', 'keywords', 'code'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'action' => 'Action',
            'order_by' => 'Order By',
            'name' => 'Name',
            'title' => 'Title',
            'keywords' => 'Keywords',
            'description' => 'Description',
            'code' => 'Code',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}