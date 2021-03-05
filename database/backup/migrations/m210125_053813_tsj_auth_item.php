<?php

use yii\db\Migration;

class m210125_053813_tsj_auth_item extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%tsj_auth_item}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'title' => "varchar(255) NULL COMMENT '标题'",
            'name' => "varchar(255) NULL COMMENT '别名'",
            'order_by' => "int(11) NULL COMMENT '排序'",
            'type' => "varchar(20) NULL COMMENT '类别'",
            'pid' => "int(11) NOT NULL DEFAULT '0'",
            'level' => "int(11) NOT NULL DEFAULT '1' COMMENT '级别'",
            'status' => "tinyint(1) NULL DEFAULT '1' COMMENT '状态[;0:未启用;1已启用]'",
            'created_at' => "int(11) NULL COMMENT '创建时间'",
            'updated_at' => "int(11) NULL COMMENT '编辑时间'",
            'summary' => "tinytext NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%tsj_auth_item}}',['id'=>'1','title'=>'系统基础','name'=>'base','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610525152','updated_at'=>'1610525152','summary'=>'系统基础']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'2','title'=>'个人信息','name'=>'/backend/main/user-info','order_by'=>NULL,'type'=>NULL,'pid'=>'1','level'=>'2','status'=>'1','created_at'=>'1610525203','updated_at'=>'1610525203','summary'=>'个人信息']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'3','title'=>'修改密码','name'=>'/backend/main/user-reset-pwd','order_by'=>NULL,'type'=>NULL,'pid'=>'1','level'=>'2','status'=>'1','created_at'=>'1610525449','updated_at'=>'1610525449','summary'=>'修改密码']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'4','title'=>'清空缓存','name'=>'/backend/base/clear-cache','order_by'=>NULL,'type'=>NULL,'pid'=>'1','level'=>'2','status'=>'1','created_at'=>'1610525494','updated_at'=>'1610525494','summary'=>'清空缓存']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'5','title'=>'首页','name'=>'/backend/site/index','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610525542','updated_at'=>'1610525542','summary'=>'首页']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'6','title'=>'站点设置','name'=>'webSet','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610525785','updated_at'=>'1610525785','summary'=>'网站设置']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'7','title'=>'基本设置','name'=>'/backend/main/site-param','order_by'=>NULL,'type'=>NULL,'pid'=>'6','level'=>'2','status'=>'1','created_at'=>'1610525898','updated_at'=>'1610526002','summary'=>'参数设置']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'8','title'=>'系统设置','name'=>'/backend/main/system-param','order_by'=>NULL,'type'=>NULL,'pid'=>'6','level'=>'2','status'=>'1','created_at'=>'1610526034','updated_at'=>'1610526048','summary'=>'系统设置']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'9','title'=>'邮箱设置','name'=>'/backend/main/email-param','order_by'=>NULL,'type'=>NULL,'pid'=>'6','level'=>'2','status'=>'1','created_at'=>'1610526068','updated_at'=>'1610526068','summary'=>'邮箱设置']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'10','title'=>'SEO设置','name'=>'/backend/main/seo','order_by'=>NULL,'type'=>NULL,'pid'=>'10','level'=>'2','status'=>'1','created_at'=>'1610526088','updated_at'=>'1610526102','summary'=>'SEO设置']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'11','title'=>'运营管理','name'=>'cate:1','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610526130','updated_at'=>'1610526130','summary'=>'运营管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'12','title'=>'订单管理','name'=>'indexOrder','order_by'=>NULL,'type'=>NULL,'pid'=>'11','level'=>'2','status'=>'1','created_at'=>'1610526182','updated_at'=>'1610526182','summary'=>'订单管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'13','title'=>'订单列表','name'=>'/backend/order/index','order_by'=>NULL,'type'=>NULL,'pid'=>'12','level'=>'3','status'=>'1','created_at'=>'1610526233','updated_at'=>'1610526245','summary'=>'订单列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'14','title'=>'订单编辑','name'=>'/backend/order/edit','order_by'=>NULL,'type'=>NULL,'pid'=>'12','level'=>'3','status'=>'1','created_at'=>'1610526270','updated_at'=>'1610526318','summary'=>'订单编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'15','title'=>'订单删除','name'=>'/backend/order/delete','order_by'=>NULL,'type'=>NULL,'pid'=>'12','level'=>'3','status'=>'1','created_at'=>'1610526301','updated_at'=>'1610526312','summary'=>'订单删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'16','title'=>'金额管理','name'=>'indexIntegral','order_by'=>NULL,'type'=>NULL,'pid'=>'11','level'=>'2','status'=>'1','created_at'=>'1610526337','updated_at'=>'1610526444','summary'=>'金额管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'17','title'=>'金额列表','name'=>'/backend/integral/index','order_by'=>NULL,'type'=>NULL,'pid'=>'16','level'=>'3','status'=>'1','created_at'=>'1610526370','updated_at'=>'1610526370','summary'=>'金额列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'18','title'=>'金额编辑','name'=>'/backend/integral/edit','order_by'=>NULL,'type'=>NULL,'pid'=>'16','level'=>'3','status'=>'1','created_at'=>'1610526436','updated_at'=>'1610526436','summary'=>'金额编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'19','title'=>'金额删除','name'=>'/backend/integral/delete','order_by'=>NULL,'type'=>NULL,'pid'=>'16','level'=>'3','status'=>'1','created_at'=>'1610526496','updated_at'=>'1610526496','summary'=>'金额删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'20','title'=>'商品管理','name'=>'/backend/goods/index','order_by'=>NULL,'type'=>NULL,'pid'=>'11','level'=>'2','status'=>'1','created_at'=>'1610526543','updated_at'=>'1610526543','summary'=>'商品管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'21','title'=>'商品编辑','name'=>'/backend/goods/edit','order_by'=>NULL,'type'=>NULL,'pid'=>'20','level'=>'3','status'=>'1','created_at'=>'1610526567','updated_at'=>'1610526567','summary'=>'商品编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'22','title'=>'商品删除','name'=>'/backend/goods/delete','order_by'=>NULL,'type'=>NULL,'pid'=>'20','level'=>'3','status'=>'1','created_at'=>'1610526599','updated_at'=>'1610526599','summary'=>'商品删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'23','title'=>'商品分类管理','name'=>'goodsType','order_by'=>NULL,'type'=>NULL,'pid'=>'11','level'=>'2','status'=>'1','created_at'=>'1610526693','updated_at'=>'1610526693','summary'=>'商品分类管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'24','title'=>'商品分类列表','name'=>'/backend/goods/type','order_by'=>NULL,'type'=>NULL,'pid'=>'23','level'=>'3','status'=>'1','created_at'=>'1610526734','updated_at'=>'1610526734','summary'=>'商品分类列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'25','title'=>'商品分类编辑','name'=>'/backend/goods/type-edit','order_by'=>NULL,'type'=>NULL,'pid'=>'23','level'=>'3','status'=>'1','created_at'=>'1610526761','updated_at'=>'1610526761','summary'=>'商品分类编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'26','title'=>'商品分类删除','name'=>'/backend/goods/type-delete','order_by'=>NULL,'type'=>NULL,'pid'=>'23','level'=>'3','status'=>'1','created_at'=>'1610526787','updated_at'=>'1610526787','summary'=>'商品分类删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'27','title'=>'活动管理','name'=>'indexActiveAll','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610526812','updated_at'=>'1610526812','summary'=>'活动管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'28','title'=>'拼团活动','name'=>'indexActive','order_by'=>NULL,'type'=>NULL,'pid'=>'27','level'=>'2','status'=>'1','created_at'=>'1610526891','updated_at'=>'1610526891','summary'=>'拼团活动']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'29','title'=>'拼团活动列表','name'=>'/backend/active/index','order_by'=>NULL,'type'=>NULL,'pid'=>'28','level'=>'3','status'=>'1','created_at'=>'1610526913','updated_at'=>'1610526913','summary'=>'拼团活动列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'30','title'=>'拼团活动编辑','name'=>'/backend/active/edit','order_by'=>NULL,'type'=>NULL,'pid'=>'28','level'=>'3','status'=>'1','created_at'=>'1610526956','updated_at'=>'1610526956','summary'=>'拼团活动编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'31','title'=>'拼团活动删除','name'=>'/backend/active/index','order_by'=>NULL,'type'=>NULL,'pid'=>'28','level'=>'3','status'=>'1','created_at'=>'1610526974','updated_at'=>'1610526974','summary'=>'拼团活动删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'32','title'=>'日志管理','name'=>'indexLog','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610527101','updated_at'=>'1610527101','summary'=>'日志管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'33','title'=>'日志列表','name'=>'/backend/log/index','order_by'=>NULL,'type'=>NULL,'pid'=>'32','level'=>'2','status'=>'1','created_at'=>'1610527128','updated_at'=>'1610527128','summary'=>'日志列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'34','title'=>'日志查看','name'=>'/backend/log/view','order_by'=>NULL,'type'=>NULL,'pid'=>'32','level'=>'2','status'=>'1','created_at'=>'1610527148','updated_at'=>'1610954461','summary'=>'日志查看']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'35','title'=>'行为日志管理','name'=>'indexActionLog','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610527195','updated_at'=>'1610527195','summary'=>'行为日志管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'36','title'=>'行为日志列表','name'=>'/backend/action-log/index','order_by'=>NULL,'type'=>NULL,'pid'=>'35','level'=>'2','status'=>'1','created_at'=>'1610527226','updated_at'=>'1610527226','summary'=>'行为日志列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'37','title'=>'行为日志查看','name'=>'/backend/action-log/view','order_by'=>NULL,'type'=>NULL,'pid'=>'35','level'=>'2','status'=>'1','created_at'=>'1610527253','updated_at'=>'1610527253','summary'=>'行为日志查看']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'38','title'=>'用户权限','name'=>'authManager','order_by'=>NULL,'type'=>NULL,'pid'=>'0','level'=>'1','status'=>'1','created_at'=>'1610527274','updated_at'=>'1610527274','summary'=>'用户权限']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'39','title'=>'用户管理','name'=>'indexUser','order_by'=>NULL,'type'=>NULL,'pid'=>'38','level'=>'2','status'=>'1','created_at'=>'1610527297','updated_at'=>'1610527297','summary'=>'用户管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'40','title'=>'用户列表','name'=>'/backend/user/index','order_by'=>NULL,'type'=>NULL,'pid'=>'39','level'=>'3','status'=>'1','created_at'=>'1610527326','updated_at'=>'1610527326','summary'=>'用户列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'41','title'=>'用户编辑','name'=>'/backend/auth/user-edit','order_by'=>NULL,'type'=>'','pid'=>'39','level'=>'3','status'=>'1','created_at'=>'1610527326','updated_at'=>'1610527326','summary'=>'用户编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'42','title'=>'用户删除','name'=>'/backend/auth/user-delete','order_by'=>NULL,'type'=>'','pid'=>'39','level'=>'3','status'=>'1','created_at'=>'1610527326','updated_at'=>'1610527326','summary'=>'用户删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'43','title'=>'角色管理','name'=>'roleManager','order_by'=>NULL,'type'=>NULL,'pid'=>'38','level'=>'2','status'=>'1','created_at'=>'1610527473','updated_at'=>'1610527473','summary'=>'角色管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'44','title'=>'角色列表','name'=>'/backend/auth/role','order_by'=>NULL,'type'=>NULL,'pid'=>'43','level'=>'3','status'=>'1','created_at'=>'1610527500','updated_at'=>'1610527500','summary'=>'角色列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'45','title'=>'角色删除','name'=>'/backend/auth/role-delete','order_by'=>NULL,'type'=>NULL,'pid'=>'43','level'=>'3','status'=>'1','created_at'=>'1610527565','updated_at'=>'1610527565','summary'=>'角色删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'46','title'=>'权限管理','name'=>'ruleManager','order_by'=>NULL,'type'=>NULL,'pid'=>'38','level'=>'2','status'=>'1','created_at'=>'1610527587','updated_at'=>'1610527587','summary'=>'权限管理']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'47','title'=>'权限列表','name'=>'/backend/auth/rule','order_by'=>NULL,'type'=>NULL,'pid'=>'46','level'=>'3','status'=>'1','created_at'=>'1610527617','updated_at'=>'1610527617','summary'=>'权限列表']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'48','title'=>'权限编辑','name'=>'/backend/auth/rule-edit','order_by'=>NULL,'type'=>NULL,'pid'=>'46','level'=>'3','status'=>'1','created_at'=>'1610527644','updated_at'=>'1610527644','summary'=>'权限编辑']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'49','title'=>'权限删除','name'=>'/backend/auth/rule-delete','order_by'=>NULL,'type'=>NULL,'pid'=>'46','level'=>'3','status'=>'1','created_at'=>'1610527670','updated_at'=>'1610527670','summary'=>'权限删除']);
        $this->insert('{{%tsj_auth_item}}',['id'=>'50','title'=>'角色编辑','name'=>'/backend/auth/rule-edit','order_by'=>NULL,'type'=>NULL,'pid'=>'43','level'=>'3','status'=>'1','created_at'=>'1610954512','updated_at'=>'1610954512','summary'=>'角色编辑']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%tsj_auth_item}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

