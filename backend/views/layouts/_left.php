<?php
use yii\helpers\Url;
$controller = Yii::$app->controller->id;
$action =Yii::$app->controller->action->id;
$name = Yii::$app->request->get('name' , null);

$menus = [
    ['title' => '首页' , 'icon' => 'home' , 'fullUrl' => 'site/index' , 'controller' => ['site']],
    ['title' => '测试功能' , 'icon' => 'palette',  'controller' => ['test'],
        '-' =>[
            ['title' => '文件管理' , 'fullUrl' => 'test/index'],
        ]],
    ['title' => '网站设置' , 'icon' => 'palette',  'controller' => ['main'],
        '-' =>[
            ['title' => '网站设置'  , 'fullUrl' => 'main/site-param'],
            ['title' => '网站 SEO 设置' , 'fullUrl' => 'main/seo'],
        ]],
    ['title' => '运营管理' , 'icon' => 'format-align-justify','controller' => ['goods' , 'order' , 'integral' , 'type'],
        '-' =>[
            ['title' => '订单管理'  , 'fullUrl' => 'order/index'],
            ['title' => '金额管理' , 'fullUrl' => 'integral/index'],
            ['title' => '商品管理' , 'fullUrl' => 'goods/index'],
            ['title' => '商品分类管理' , 'fullUrl' => ['type/index','name'=>'goods']],
        ]],
    ['title' => '活动管理' , 'icon' => 'format-align-justify','controller' => ['active' , 'spike' , 'coupon'],
        '-' =>[
            ['title' => '拼团活动'  , 'fullUrl' => 'active/index'],
            ['title' => '秒杀活动' , 'fullUrl' => 'spike/index'],
            ['title' => '优惠卷' , 'fullUrl' => 'coupon/index'],
        ]],
    ['title' => '资料管理' , 'icon' => 'format-align-justify','controller' => ['news' , 'comment' , 'type' ,  'address'],
        '-' =>[
            ['title' => '文章管理'  , 'fullUrl' => 'news/index'],
            ['title' => '评论管理' , 'fullUrl' => 'comment/index'],
            ['title' => '文章分类管理' , 'fullUrl' => ['type/index','name'=>'news']],
            ['title' => '地址管理' , 'fullUrl' => 'address/index'],
        ]],
    ['title' => '用户权限' , 'icon' => 'account','controller' => ['auth'],
        '-' =>[
            ['title' => '用户管理'  , 'fullUrl' => 'auth/user'],
            ['title' => '角色管理'  , 'fullUrl' => 'auth/role'],
            ['title' => '权限管理' , 'fullUrl' => 'auth/rule'],
        ]],
    ['title' => '日志管理' , 'icon' => 'dots-horizontal-circle','controller' => ['action-log' , 'log'],
        '-' =>[
            ['title' => '全局日志'  , 'fullUrl' => 'log/index'],
            ['title' => '行为日志' , 'fullUrl' => 'action-log/index'],
        ]],
    ['title' => '菜单管理' , 'icon' => 'collage','fullUrl' => 'menu/index' , 'controller' => ['menu']],




];
?>
<!--左侧导航-->
<aside class="lyear-layout-sidebar">

    <!-- logo -->
    <div id="logo" class="sidebar-header">
        <a href="<?= Url::toRoute(['site/index'])?>" style="width: 240px;height: 68px;"><img src="<?= Yii::getAlias('@web')?>/images/logo.jpg" title="LightYear" alt="LightYear" /></a>
    </div>
    <div class="lyear-layout-sidebar-scroll">
        <nav class="sidebar-main">
            <ul class="nav nav-drawer">
                <?= \backend\widgets\menu\MenuWidget::widget([
                            'menus'=>$menus,
                ]);?>
            </ul>
        </nav>
    </div>

</aside>


<!--End 左侧导航-->
