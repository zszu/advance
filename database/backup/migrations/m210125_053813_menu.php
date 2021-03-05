<?php

use yii\db\Migration;

class m210125_053813_menu extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%menu}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'pid' => "int(11) NULL COMMENT '父id'",
            'title' => "varchar(32) NULL COMMENT '名称'",
            'url' => "varchar(128) NULL COMMENT '路径'",
            'order_by' => "int(11) NULL DEFAULT '1' COMMENT '排序 '",
            'type' => "char(1) NULL DEFAULT '1' COMMENT '1内部 2外部'",
            'is_menu' => "char(1) NULL DEFAULT '1' COMMENT '是否为菜单 1是'",
            'summary' => "tinytext NULL COMMENT '描述'",
            'icon' => "varchar(32) NULL COMMENT '图标'",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) NULL DEFAULT '1'",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='节点表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%menu}}',['id'=>'33','pid'=>'8','title'=>'菜单列表','url'=>'/pages/menu/index','order_by'=>NULL,'type'=>'1','is_menu'=>'1','summary'=>'菜单列表','icon'=>'iconfont icon-tousu','created_at'=>'1555163817','updated_at'=>'1607407861','status'=>'1']);
        $this->insert('{{%menu}}',['id'=>'37','pid'=>'39','title'=>'角色列表','url'=>'/pages/auth/role','order_by'=>NULL,'type'=>'1','is_menu'=>'1','summary'=>'用户角色','icon'=>'iconfont icon-sousuo','created_at'=>'1553951425','updated_at'=>'1607407856','status'=>'1']);
        $this->insert('{{%menu}}',['id'=>'38','pid'=>'39','title'=>'用户列表','url'=>'/pages/user/index','order_by'=>NULL,'type'=>'1','is_menu'=>'1','summary'=>'用户列表','icon'=>'iconfont icon-cengji','created_at'=>'1563583883','updated_at'=>'1607407857','status'=>'1']);
        $this->insert('{{%menu}}',['id'=>'39','pid'=>'0','title'=>'用户管理','url'=>'','order_by'=>NULL,'type'=>'1','is_menu'=>'1','summary'=>'用户管理','icon'=>'iconfont icon-upgrade','created_at'=>'1603164686','updated_at'=>'1607496280','status'=>'1']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%menu}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

