<?php

use yii\db\Migration;

class m210125_053813_integral extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%integral}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'order_by' => "int(11) NULL",
            'user_id' => "int(11) NULL",
            'total_amount' => "decimal(10,0) NULL",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) NULL DEFAULT '0'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%integral}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

