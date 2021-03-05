<?php

use yii\db\Migration;

class m210125_053813_action_log extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%action_log}}', [
            'id' => "int(11) unsigned NOT NULL AUTO_INCREMENT",
            'user_id' => "int(11) NULL",
            'route' => "varchar(255) NULL COMMENT '用户操作路由'",
            'description' => "text NULL COMMENT '操作的描述'",
            'created_at' => "int(11) NULL",
            'updated_at' => "int(11) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%action_log}}',['id'=>'1','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589246358','updated_at'=>'1589246358']);
        $this->insert('{{%action_log}}',['id'=>'2','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589276754','updated_at'=>'1589276754']);
        $this->insert('{{%action_log}}',['id'=>'3','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589276970','updated_at'=>'1589276970']);
        $this->insert('{{%action_log}}',['id'=>'4','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589277033','updated_at'=>'1589277033']);
        $this->insert('{{%action_log}}',['id'=>'5','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589277061','updated_at'=>'1589277061']);
        $this->insert('{{%action_log}}',['id'=>'6','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589277087','updated_at'=>'1589277087']);
        $this->insert('{{%action_log}}',['id'=>'7','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589336187','updated_at'=>'1589336187']);
        $this->insert('{{%action_log}}',['id'=>'8','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589336255','updated_at'=>'1589336255']);
        $this->insert('{{%action_log}}',['id'=>'9','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589336406','updated_at'=>'1589336406']);
        $this->insert('{{%action_log}}',['id'=>'10','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589336470','updated_at'=>'1589336470']);
        $this->insert('{{%action_log}}',['id'=>'11','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589336501','updated_at'=>'1589336501']);
        $this->insert('{{%action_log}}',['id'=>'12','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337133','updated_at'=>'1589337133']);
        $this->insert('{{%action_log}}',['id'=>'13','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337166','updated_at'=>'1589337166']);
        $this->insert('{{%action_log}}',['id'=>'14','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337276','updated_at'=>'1589337276']);
        $this->insert('{{%action_log}}',['id'=>'15','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337826','updated_at'=>'1589337826']);
        $this->insert('{{%action_log}}',['id'=>'16','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337875','updated_at'=>'1589337875']);
        $this->insert('{{%action_log}}',['id'=>'17','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589337983','updated_at'=>'1589337983']);
        $this->insert('{{%action_log}}',['id'=>'18','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338047','updated_at'=>'1589338047']);
        $this->insert('{{%action_log}}',['id'=>'19','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338159','updated_at'=>'1589338159']);
        $this->insert('{{%action_log}}',['id'=>'20','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338240','updated_at'=>'1589338240']);
        $this->insert('{{%action_log}}',['id'=>'21','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338423','updated_at'=>'1589338423']);
        $this->insert('{{%action_log}}',['id'=>'22','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338452','updated_at'=>'1589338452']);
        $this->insert('{{%action_log}}',['id'=>'23','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338540','updated_at'=>'1589338540']);
        $this->insert('{{%action_log}}',['id'=>'24','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338646','updated_at'=>'1589338646']);
        $this->insert('{{%action_log}}',['id'=>'25','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338789','updated_at'=>'1589338789']);
        $this->insert('{{%action_log}}',['id'=>'26','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338915','updated_at'=>'1589338915']);
        $this->insert('{{%action_log}}',['id'=>'27','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589338961','updated_at'=>'1589338961']);
        $this->insert('{{%action_log}}',['id'=>'28','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589339240','updated_at'=>'1589339240']);
        $this->insert('{{%action_log}}',['id'=>'29','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589339363','updated_at'=>'1589339363']);
        $this->insert('{{%action_log}}',['id'=>'30','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589339745','updated_at'=>'1589339745']);
        $this->insert('{{%action_log}}',['id'=>'53','user_id'=>'1','route'=>'/backend/comment/edit?id=16','description'=>'管理员{admin}在{/backend/comment/edit?id=16}执行了{编辑}操作 id为{16}记录','created_at'=>'1589363724','updated_at'=>'1589363724']);
        $this->insert('{{%action_log}}',['id'=>'32','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589340735','updated_at'=>'1589340735']);
        $this->insert('{{%action_log}}',['id'=>'33','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589340800','updated_at'=>'1589340800']);
        $this->insert('{{%action_log}}',['id'=>'34','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589340958','updated_at'=>'1589340958']);
        $this->insert('{{%action_log}}',['id'=>'35','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589340990','updated_at'=>'1589340990']);
        $this->insert('{{%action_log}}',['id'=>'36','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341025','updated_at'=>'1589341025']);
        $this->insert('{{%action_log}}',['id'=>'37','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341084','updated_at'=>'1589341084']);
        $this->insert('{{%action_log}}',['id'=>'38','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341181','updated_at'=>'1589341181']);
        $this->insert('{{%action_log}}',['id'=>'39','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341280','updated_at'=>'1589341280']);
        $this->insert('{{%action_log}}',['id'=>'40','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341305','updated_at'=>'1589341305']);
        $this->insert('{{%action_log}}',['id'=>'41','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341430','updated_at'=>'1589341430']);
        $this->insert('{{%action_log}}',['id'=>'42','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589341561','updated_at'=>'1589341561']);
        $this->insert('{{%action_log}}',['id'=>'43','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347312','updated_at'=>'1589347312']);
        $this->insert('{{%action_log}}',['id'=>'44','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347392','updated_at'=>'1589347392']);
        $this->insert('{{%action_log}}',['id'=>'45','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347441','updated_at'=>'1589347441']);
        $this->insert('{{%action_log}}',['id'=>'46','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347601','updated_at'=>'1589347601']);
        $this->insert('{{%action_log}}',['id'=>'47','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347614','updated_at'=>'1589347614']);
        $this->insert('{{%action_log}}',['id'=>'48','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347684','updated_at'=>'1589347684']);
        $this->insert('{{%action_log}}',['id'=>'49','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589347694','updated_at'=>'1589347694']);
        $this->insert('{{%action_log}}',['id'=>'50','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589349751','updated_at'=>'1589349751']);
        $this->insert('{{%action_log}}',['id'=>'52','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589363719','updated_at'=>'1589363719']);
        $this->insert('{{%action_log}}',['id'=>'54','user_id'=>'1','route'=>'/backend/news/edit?id=18','description'=>'管理员{admin}在{/backend/news/edit?id=18}执行了{编辑}操作 id为{18}记录','created_at'=>'1589363761','updated_at'=>'1589363761']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%action_log}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

