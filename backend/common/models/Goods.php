<?php

namespace app\common\models;

use Yii;

/**
 * This is the model class for table "zz_goods".
 *
 * @property int $id
 * @property int|null $order_by 排序
 * @property int|null $type 分类id
 * @property string $title 标题
 * @property string|null $subtitle 副标题
 * @property string|null $summary 简介
 * @property string|null $content 内容
 * @property string|null $cover 封面
 * @property string|null $covers 多图
 * @property string|null $url 链接
 * @property string|null $tags 标签
 * @property int|null $index_show 首页显示
 * @property int|null $created_at
 * @property int|null $updated_at
 * @property int|null $status 状态：1 启用 0停用
 * @property string|null $name 所属栏目
 * @property int $up_id 上级id
 * @property float|null $price 原价
 * @property float|null $price_original
 * @property float|null $price_discount
 * @property int|null $count_stock 库存
 * @property int|null $count_init 初始销量
 * @property int|null $count_view 查看数
 * @property int|null $count_order 订单数
 * @property int|null $shipping_id 运费模板
 * @property int|null $sticky
 */
class Goods extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'zz_goods';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['order_by', 'type', 'index_show', 'created_at', 'updated_at', 'status', 'up_id', 'count_stock', 'count_init', 'count_view', 'count_order', 'shipping_id', 'sticky'], 'integer'],
            [['title'], 'required'],
            [['summary', 'content'], 'string'],
            [['price', 'price_original', 'price_discount'], 'number'],
            [['title', 'subtitle', 'cover', 'covers', 'url', 'tags', 'name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'order_by' => 'Order By',
            'type' => 'Type',
            'title' => 'Title',
            'subtitle' => 'Subtitle',
            'summary' => 'Summary',
            'content' => 'Content',
            'cover' => 'Cover',
            'covers' => 'Covers',
            'url' => 'Url',
            'tags' => 'Tags',
            'index_show' => 'Index Show',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'status' => 'Status',
            'name' => 'Name',
            'up_id' => 'Up ID',
            'price' => 'Price',
            'price_original' => 'Price Original',
            'price_discount' => 'Price Discount',
            'count_stock' => 'Count Stock',
            'count_init' => 'Count Init',
            'count_view' => 'Count View',
            'count_order' => 'Count Order',
            'shipping_id' => 'Shipping ID',
            'sticky' => 'Sticky',
        ];
    }
}
