<?php

use yii\db\Migration;

class m210125_053813_tsj_auth_role extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%tsj_auth_role}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID'",
            'title' => "varchar(255) NULL COMMENT '标题'",
            'order_by' => "int(11) NULL COMMENT '排序'",
            'pid' => "int(11) NOT NULL DEFAULT '0' COMMENT '父级 ID'",
            'level' => "tinyint(1) NULL DEFAULT '1' COMMENT '等级'",
            'status' => "tinyint(1) NULL DEFAULT '1' COMMENT '状态 0：未启用 1：已启用'",
            'created_at' => "int(11) NULL COMMENT '创建时间'",
            'updated_at' => "int(11) NULL COMMENT '编辑时间'",
            'summary' => "varchar(128) NULL COMMENT '描述'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COMMENT='角色表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%tsj_auth_role}}',['id'=>'1','title'=>'测试管理员','order_by'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610527734','updated_at'=>'1610527734','summary'=>'']);
        $this->insert('{{%tsj_auth_role}}',['id'=>'2','title'=>'test','order_by'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1611044688','updated_at'=>'1611044688','summary'=>'']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%tsj_auth_role}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

