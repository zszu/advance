<?php

use yii\db\Migration;

class m210125_053813_active_goods extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%active_goods}}', [
            'active_id' => "int(11) NULL COMMENT '排序'",
            'good_id' => "int(11) NULL COMMENT '类别'",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) NULL COMMENT '状态：1 启用 0停用'",
            'price' => "decimal(10,2) NULL COMMENT '价格'",
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
        $this->dropTable('{{%active_goods}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

