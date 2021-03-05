<?php

use yii\db\Migration;

class m210125_053813_tsj_auth_item_role extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%tsj_auth_item_role}}', [
            'role_id' => "int(11) NOT NULL COMMENT '角色 ID'",
            'item_id' => "int(11) NOT NULL COMMENT '权限ID'",
            'created_at' => "int(11) NULL COMMENT '创建时间'",
            'updated_at' => "int(11) NULL COMMENT '编辑时间'",
        ], "ENGINE=MyISAM DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        $this->createIndex('role_id','{{%tsj_auth_item_role}}','role_id',0);
        $this->createIndex('item_id','{{%tsj_auth_item_role}}','item_id',0);
        
        
        /* 表数据 */
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'2','item_id'=>'4','created_at'=>'1611044688','updated_at'=>'1611044688']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'2','item_id'=>'3','created_at'=>'1611044688','updated_at'=>'1611044688']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'2','item_id'=>'2','created_at'=>'1611044688','updated_at'=>'1611044688']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'2','item_id'=>'1','created_at'=>'1611044688','updated_at'=>'1611044688']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'1','item_id'=>'4','created_at'=>'1611292952','updated_at'=>'1611292952']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'1','item_id'=>'1','created_at'=>'1611292952','updated_at'=>'1611292952']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'1','item_id'=>'3','created_at'=>'1611292952','updated_at'=>'1611292952']);
        $this->insert('{{%tsj_auth_item_role}}',['role_id'=>'2','item_id'=>'5','created_at'=>'1611044688','updated_at'=>'1611044688']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%tsj_auth_item_role}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

