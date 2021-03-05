<?php

use yii\db\Migration;

class m210125_053813_migration extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%migration}}', [
            'version' => "varchar(180) NOT NULL",
            'apply_time' => "int(11) NULL",
            'PRIMARY KEY (`version`)'
        ], "ENGINE=MyISAM DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%migration}}',['version'=>'m000000_000000_base','apply_time'=>'1588065056']);
        $this->insert('{{%migration}}',['version'=>'m140506_102106_rbac_init','apply_time'=>'1588065060']);
        $this->insert('{{%migration}}',['version'=>'m170907_052038_rbac_add_index_on_auth_assignment_user_id','apply_time'=>'1588065060']);
        $this->insert('{{%migration}}',['version'=>'m180523_151638_rbac_updates_indexes_without_prefix','apply_time'=>'1588065061']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%migration}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

