<?php

use yii\db\Migration;

class m210125_053813_order extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%order}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'user_id' => "int(11) NOT NULL",
            'good_amount' => "decimal(10,0) NULL COMMENT '商品金额'",
            'express_amount' => "decimal(10,0) NULL COMMENT '快递费'",
            'express_id' => "int(11) NULL COMMENT '快退公司'",
            'express_no' => "varchar(20) NULL COMMENT '快递单号'",
            'discount_amount' => "decimal(10,0) NULL COMMENT '优惠金额'",
            'discount_id' => "int(11) NULL",
            'realy_amount' => "decimal(10,0) NULL COMMENT '实付金额'",
            'refound_amout' => "decimal(10,0) NULL COMMENT '退款金额'",
            'remart' => "varchar(255) NULL COMMENT '备注'",
            'collect_money_name' => "varchar(255) NULL COMMENT '收款人'",
            'address_id' => "int(11) NULL COMMENT '收货地址'",
            'order_no' => "varchar(128) NULL COMMENT '订单号'",
            'pay_type' => "tinyint(1) NULL COMMENT '支付类型'",
            'pay_no' => "varchar(255) NULL COMMENT '支付单号'",
            'order_status' => "tinyint(1) NULL COMMENT '订单 步骤'",
            'status' => "tinyint(1) NULL COMMENT '订单状态'",
            'pay_at' => "int(11) NULL COMMENT '支付时间'",
            'confirm_at' => "int(11) NULL COMMENT '确认时间'",
            'ship_at' => "int(11) NULL COMMENT '发货时间'",
            'receipt_at' => "int(11) NULL COMMENT '收货时间'",
            'finished_at' => "int(11) NULL COMMENT '完成时间'",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'name' => "varchar(255) NULL",
            'order_by' => "int(11) NULL",
            'serviced_at' => "int(11) NULL COMMENT '发起售后时间'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%order}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

