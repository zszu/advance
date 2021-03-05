<?php

use yii\db\Migration;

class m210125_053813_goods extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%goods}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'order_by' => "int(11) NULL COMMENT '排序'",
            'type' => "int(11) NULL COMMENT '类别'",
            'title' => "varchar(255) NULL COMMENT '标题'",
            'subtitle' => "varchar(255) NULL COMMENT '副标题'",
            'summary' => "text NULL COMMENT '简介'",
            'content' => "text NULL COMMENT '内容'",
            'cover' => "varchar(255) NULL COMMENT '图片'",
            'covers' => "text NULL COMMENT '多图'",
            'url' => "varchar(255) NULL COMMENT '链接'",
            'tags' => "varchar(255) NULL COMMENT '标签'",
            'index_show' => "tinyint(1) NULL COMMENT '首页显示'",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) NULL COMMENT '状态：1 启用 0停用'",
            'name' => "varchar(255) NULL COMMENT '所属栏目'",
            'up_id' => "int(11) NULL COMMENT ' 上级 id'",
            'price' => "decimal(10,2) NULL COMMENT '价格'",
            'price_original' => "decimal(10,2) NULL COMMENT '原价'",
            'price_discount' => "decimal(10,0) NULL COMMENT '抢购价'",
            'count_stock' => "int(11) NULL COMMENT '库存'",
            'count_init' => "int(11) NULL COMMENT '初始销量'",
            'count_order' => "int(11) NULL COMMENT '订单数'",
            'shipping_id' => "int(11) NULL COMMENT '运费模板 id '",
            'sticky' => "tinyint(1) NULL COMMENT '推荐'",
            'count_view' => "int(11) NULL COMMENT '查看数'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='商品表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%goods}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

