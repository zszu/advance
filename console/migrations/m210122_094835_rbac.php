<?php

use yii\db\Migration;

/**
 * Class m210122_094835_rbac
 */
class m210122_094835_rbac extends Migration
{
       /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE=InnoDB';
        }
        $timestamp = time();

        $this->createTable('{{%auth_role}}' , [
            'id' =>$this->primaryKey(),
            'app_id' => $this->string()->comment('应用'),
            'shop_id' => $this->integer(11)->defaultValue(0)->comment('商家ID'),
            'title' => $this->string()->comment('名称'),
            'summary' => $this->string()->comment('简介'),
            'order_by' => $this->integer(11)->defaultValue(100)->comment('排序'),
            'pid' => $this->integer(11)->defaultValue(0)->comment('上级ID'),
            'level' => $this->tinyInteger(1)->defaultValue(1)->comment('级别'),
            'status' => $this->tinyInteger(1)->comment('状态'),
            'created_at' => $this->integer(11)->comment('创建时间'),
            'updated_at' =>$this->integer(11)->comment('编辑时间'),
            'is_default' =>$this->tinyInteger(1)->defaultValue(0)->comment('是否默认'),
        ] , $tableOptions . ' COMMENT="角色表"');
        $this->batchInsert('{{%auth_role}}',
            ['app_id' , 'title', 'summary',   'status', 'created_at', 'updated_at'], [
                ['admin'  , '平台超级管理员', '可以做任何操作。请谨慎操作!!!', '1', $timestamp, $timestamp],
            ]);
        $this->createTable('{{%auth_item}}' , [
            'id' =>$this->primaryKey(),
            'app_id' => $this->string(25)->comment('应用'),
            'title' => $this->string()->comment('名称'),
            'name' => $this->string()->comment('别名'),
            'summary' => $this->string()->comment('简介'),
            'order_by' => $this->integer(11)->defaultValue(100)->comment('排序'),
            'pid' => $this->integer(11)->defaultValue(0)->comment('上级ID'),
            'level' => $this->tinyInteger(1)->defaultValue(1)->comment('级别'),
            'status' => $this->tinyInteger(1)->defaultValue(1)->comment('状态'),
            'created_at' => $this->integer(11)->comment('创建时间'),
            'updated_at' =>$this->integer(11)->comment('编辑时间'),
            'tree' => $this->string(500)->comment('树'),
        ] , $tableOptions . ' COMMENT="权限表"');

        $this->createTable('{{%auth_item_role}}' , [
            'role_id' =>$this->integer(11)->comment('角色ID'),
            'item_id' =>$this->integer(11)->comment('权限ID'),
        ] , $tableOptions . ' COMMENT="权限-角色表"');

        $this->createTable('{{%auth_assignment}}' , [
            'role_id' =>$this->integer(11)->comment('角色ID'),
            'user_id' =>$this->integer(11)->comment('用户ID'),
            'app_id' =>$this->string(20)->comment('应用ID'),
        ] , $tableOptions . ' COMMENT="用户-角色表"');
        $this->batchInsert('{{%auth_assignment}}',
            ['role_id' , 'user_id' , 'app_id'], [
                ['1'  , '1'  ,'admin'],
        ]);

       // $this->addForeignKey('fk-auth_role-shop_id', '{{%auth_role}}', 'shop_id', '{{%merchant_id}}', 'id', 'CASCADE', 'CASCADE');
       // $this->addForeignKey('fk-auth_item_role-role_id', '{{%auth_item_role}}', 'role_id', '{{%auth_role}}', 'id', 'CASCADE', 'CASCADE');
       // $this->addForeignKey('fk-auth_item_role-item_id', '{{%auth_item_role}}', 'item_id', '{{%auth_item}}', 'id', 'CASCADE', 'CASCADE');
       // $this->addForeignKey('fk-auth_assignment-role_id', '{{%auth_assignment}}', 'role_id', '{{%auth_item}}', 'id', 'CASCADE', 'CASCADE');

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%auth_role}}');
        $this->dropTable('{{%auth_item}}');
        $this->dropTable('{{%auth_item_role}}');
        $this->dropTable('{{%auth_assignment}}');
    }
}
