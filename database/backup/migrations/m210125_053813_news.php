<?php

use yii\db\Migration;

class m210125_053813_news extends Migration
{
    public function up()
    {
        /* 取消外键约束 */
        $this->execute('SET foreign_key_checks = 0');
        
        /* 创建表 */
        $this->createTable('{{%news}}', [
            'id' => "int(10) unsigned NOT NULL AUTO_INCREMENT",
            'order_by' => "smallint(6) unsigned NULL DEFAULT '0' COMMENT '排序'",
            'type' => "smallint(6) unsigned NULL DEFAULT '0' COMMENT '分类id'",
            'title' => "varchar(255) NOT NULL COMMENT '标题'",
            'subtitle' => "varchar(255) NULL COMMENT '副标题'",
            'publisher' => "varchar(255) NULL COMMENT '作者'",
            'summary' => "text NULL COMMENT '简介'",
            'content' => "text NULL COMMENT '内容'",
            'cover' => "varchar(255) NULL COMMENT '封面'",
            'covers' => "varchar(255) NULL COMMENT '多图'",
            'qr_code' => "varchar(255) NULL COMMENT '二维码'",
            'bg_color' => "varchar(255) NULL COMMENT '背景色'",
            'bg_pic' => "varchar(255) NULL COMMENT '背景图'",
            'url' => "varchar(255) NULL COMMENT '链接'",
            'tags' => "varchar(255) NULL COMMENT '标签'",
            'views' => "int(10) unsigned NULL DEFAULT '0' COMMENT '查看数'",
            'index_show' => "tinyint(1) NULL DEFAULT '0' COMMENT '首页显示'",
            'created_at' => "int(11) unsigned NULL DEFAULT '0'",
            'updated_at' => "int(11) NULL",
            'status' => "tinyint(1) NULL DEFAULT '1' COMMENT '状态：1 启用 0停用'",
            'name' => "varchar(255) NULL COMMENT '所属栏目'",
            'title_size' => "smallint(6) NULL",
            'keywords' => "varchar(255) NULL",
            'user_id' => "int(10) NULL",
            'PRIMARY KEY (`id`)'
        ], "ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻表'");
        
        /* 索引设置 */
        
        
        /* 表数据 */
        $this->insert('{{%news}}',['id'=>'19','order_by'=>'0','type'=>'31','title'=>'lavarel 配置信息','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'lavarel 配置信息','content'=>'<p>
	介绍<br />
Laravel 框架的所有配置文件都保存在 config 目录中。每个选项都有说明，你可随时查看这些文件并熟悉都有哪些配置选项可供你使用。<br />
<br />
<br />
环境配置<br />
对于应用程序运行的环境来说，不同的环境有不同的配置通常是很有用的。 例如，你可能希望在本地使用的缓存驱动不同于生产服务器所使用的缓存驱动。<br />
<br />
Laravel 利用 Vance Lucas 的 PHP 库 DotEnv 使得此项功能的实现变得非常简单。在新安装好的 Laravel 应用程序中，其根目录会包含一个 .env.example 文件。如果是通过 Composer 安装的 Laravel，该文件会自动更名为 .env。否则，需要你手动更改一下文件名。<br />
<br />
你的 .env 文件不应该提交到应用程序的源代码控制系统中，因为每个使用你的应用程序的开发人员 / 服务器可能需要有一个不同的环境配置。此外，在入侵者获得你的源代码控制仓库的访问权的情况下，这会成为一个安全隐患，因为任何敏感的凭据都被暴露了。<br />
<br />
如果是团队开发，则可能希望应用程序中仍包含 .env.example 文件。因为通过在示例配置文件中放置占位值，团队中的其他开发人员可以清楚地看到哪些环境变量是运行应用程序所必需的。你也可以创建一个 .env.testing 文件，当运行 PHPUnit 测试或以 --env=testing 为选项执行 Artisan 命令时，该文件将覆盖 .env 文件中的值。<br />
<br />
技巧：.env 文件中的所有变量都可被外部环境变量（比如服务器级或系统级环境变量）所覆盖。<br />
<br />
<br />
环境变量类型<br />
因为 .env 文件里所有的变量值都会被解析成字符串类型，所以可以使用 env() 函数，函数里创建了一些保留值，可提供更大范围的变量类型：<br />
<br />
.env Value<span> </span>env() Value<br />
true<span> </span>(bool) true<br />
(true)<span> </span>(bool) true<br />
false<span> </span>(bool) false<br />
(false)<span> </span>(bool) false<br />
empty<span> </span>(string) ‘’<br />
(empty)<span> </span>(string) ‘’<br />
null<span> </span>(null) null<br />
(null)<span> </span>(null) null<br />
如果你需要使用包含空格的值来定义环境变量，可以通过将值括在双引号中来实现。<br />
<br />
APP_NAME=\"My Application\"<br />
<br />
检索环境配置<br />
当你的应用程序收到请求时，此文件中列出的所有变量都将被加载到 PHP $_ENV 超全局变量中。 但是，你可以使用 env 的 helper 方法从配置文件中的这些变量中检索值。 实际上，如果您查看 Laravel 配置文件，您会注意到很多配置中已经使用了 helper 方法：<br />
<br />
\'debug\' =&gt; env(\'APP_DEBUG\', false),<br />
传递给 env 函数的第二个值是 “默认值”。 如果给定的环境参数找不到对应的值，或不存在，则将使用此 “默认值”。<br />
<br />
<br />
确定当前环境<br />
当前的应用程序环境是通过 .env 文件中的 APP_ENV 变量值确定的。你可以通过 App facade 的 environment 方法访问此值：<br />
<br />
$environment = App::environment();<br />
你也可以将参数传递给 environment 方法，以检查环境是否匹配给定值，如果环境匹配任何给定值，则该方法将返回 true：<br />
<br />
if (App::environment(\'local\')) {<br />
&nbsp; &nbsp; // 本地环境<br />
}<br />
<br />
if (App::environment([\'local\', \'staging\'])) {<br />
&nbsp; &nbsp; // 本地环境或临时环境...<br />
}<br />
技巧：服务器级别的 APP_ENV 环境变量可以覆盖当前的应用程序环境检测。当你需要为不同的环境配置共享同一应用程序时，这很有用，因此你可以设置给定的主机以匹配服务器配置中的给定环境。<br />
<br />
<br />
在调试页面隐藏环境变量<br />
当一个异常未被捕获并且 APP_DEBUG 环境变量为 true 时，调试页面会显示所有的环境变量和内容。在某些情况下你可能想隐藏某些变量。你可以通过设置 config/app.php 配置文件中的 debug_blacklist 选项来完成这个操作。<br />
<br />
环境变量、服务器或者请求数据中都有一些变量是可用的。因此，你可能需要将 $_ENV 和 $_SERVER 的变量加入到黑名单中：<br />
<br />
return [<br />
<br />
&nbsp; &nbsp; // ...<br />
<br />
&nbsp; &nbsp; \'debug_hide\' =&gt; [<br />
&nbsp; &nbsp; &nbsp; &nbsp; \'_ENV\' =&gt; [<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'APP_KEY\',<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'DB_PASSWORD\',<br />
&nbsp; &nbsp; &nbsp; &nbsp; ],<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; \'_SERVER\' =&gt; [<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'APP_KEY\',<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'DB_PASSWORD\',<br />
&nbsp; &nbsp; &nbsp; &nbsp; ],<br />
<br />
&nbsp; &nbsp; &nbsp; &nbsp; \'_POST\' =&gt; [<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \'password\',<br />
&nbsp; &nbsp; &nbsp; &nbsp; ],<br />
&nbsp; &nbsp; ],<br />
];<br />
<br />
访问配置值<br />
你可以轻松地在应用程序的任何位置使用全局 config 函数来访问配置值。配置值的访问可以使用「点」语法，这其中包含了要访问的文件和选项的名称。还可以指定默认值，如果配置选项不存在，则返回默认值：<br />
<br />
$value = config(\'app.timezone\');<br />
要在运行时设置配置值，传递一个数组给 config 函数：<br />
<br />
config([\'app.timezone\' =&gt; \'America/Chicago\']);<br />
<br />
配置缓存<br />
为了给你的应用程序提升速度，你应该使用 Artisan 命令 config:cache 将所有的配置文件缓存到单个文件中。这会把你的应用程序中所有的配置选项合并成一个单一的文件，然后框架会快速加载这个文件。<br />
<br />
通常来说，你应该把运行 php artisan config:cache（配置缓存）命令作为生产环境部署工作常态的一部分。而另一方面，由于在应用程序开发过程中经常需要修改配置选项，故该命令不应在本地开发环境下执行。<br />
<br />
注意：如果在部署过程中执行 config:cache 命令，那么你应该确保只从配置文件内部调用 env 函数。一旦配置被缓存，.env 文件将不再被加载，所有对 env 函数的调用都将返回 null。<br />
<br />
<br />
维护模式<br />
当应用程序处于维护模式时，所有对应用程序的请求都显示为一个自定义视图。这样可以在更新或执行维护时轻松地「停用」你的应用程序。 维护模式的检测包含在应用程序的默认中间件栈中。如果应用程序处于维护模式，则将抛出一个状态码为 503 的 MaintenanceModeException 异常。<br />
<br />
要启用维护模式，只需执行下面的 Artisan 的 down 命令：<br />
<br />
php artisan down<br />
你还可以向 down 命令提供 message 和 retry 选项。其中 message 选项的值可用于显示或记录自定义消息，而 retry 值可用于设置 HTTP 请求头中 Retry-After 的值：<br />
<br />
php artisan down --message=\"Upgrading Database\" --retry=60<br />
绕过维护模式<br />
即使在维护模式下，你也可以使用 secret 选项指定维护模式的绕过令牌：<br />
<br />
php artisan down --secret=\"1630542a-246b-4b66-afa1-dd72a4c43515\"<br />
将应用程序置于维护模式后，您可以访问与该令牌匹配的应用程序 URL，Laravel 将向您的浏览器发出一个维护模式绕过 cookie:<br />
<br />
https://example.com/1630542a-246b-4b66-afa1-dd72a4c43515<br />
当访问这个隐藏的路由时，您将被重定向到应用程序的 / 路由。一旦 cookie 被发布到您的浏览器，您将能够正常浏览应用程序，就好像它没有处于维护模式一样。<br />
<br />
预渲染维护模式视图<br />
如果在部署环境中使用 php artisan down 命令，当你的 Composer 依懒或其基础组件更新的时候，你的用户可能遇到偶然性的错误。这是因为 Laravel 框架的重要部分必须启动才能确定应用程序处于维护模式，并使用模板引擎呈现维护模式视图。<br />
<br />
因此，Laravel 允许您预先呈现一个维护模式视图，该视图将在请求周期的最开始返回。此视图在加载应用程序的任何依赖项之前呈现。可以使用 down 命令的 render 选项预渲染所选模板：<br />
<br />
php artisan down --render=\"errors::503\"<br />
重定向维护模式请求<br />
在维护模式下，Laravel 将显示用户尝试访问的所有应用程序 url 的维护模式视图。如果您愿意，您可以指示 Laravel 将所有请求重定向到特定的 URL。这可以使用 redirect 选项来完成。例如，您可能希望将所有请求重定向到 / URI：<br />
<br />
php artisan down --redirect=/<br />
关闭维护模式<br />
要关闭维护模式，请使用 up 命令：<br />
<br />
php artisan up<br />
技巧：你可以通过修改 resources/views/errors/503.blade.php 模板文件来自定义默认维护模式模板。<br />
<br />
维护模式 &amp; 队列<br />
当应用程序处于维护模式时，不会处理 队列任务。而这些任务会在应用程序退出维护模式后再继续处理。<br />
<br />
维护模式的替代方案<br />
维护模式会导致应用程序有数秒的停机（不响应）时间，因此你可以考虑使用像 Envoyer 这样的替代方案，以便与 Laravel 完成零停机时间部署。<br />
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'lavarel配置,环境配置','views'=>'0','index_show'=>'0','created_at'=>'1578130782','updated_at'=>'1600600199','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB全球开放创新中心在深圳启动引领技术变革','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'20','order_by'=>'0','type'=>'31','title'=>'Laravel  开发环境 -- Homestead ','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'Laravel  开发环境','content'=>'<p>
	如何统一开发环境？<br />
在日常的团队开发中，由于开发环境的不一致，往往会导致出现各种各样的问题。即便是经验丰富的工程师，在遇到这种问题时也会特别头疼。为了解决这种问题，Vagrant 顺势而生！Vagrant 是一个用于创建和部署虚拟化开发环境的工具，其依赖于 VirtualBox 虚拟机，致力于帮助开发者快速构建一个环境统一的虚拟系统。Vagrant 最强大的地方是在于它在构建虚拟系统时的快捷简便，使开发者可以在短短几分钟内完成一个虚拟系统的删除与构建。<br />
<br />
Laravel 希望在 Vagrant 的基础上让开发环境更加统一，让开发者都能在指定的具体开发环境下使用 Laravel，这时便有了 Homestead。Homestead 是一个基于 Ubuntu 构建的虚拟机，它包含了所有 Laravel 开发时需要用到的东西，你可以很轻松的通过指定的 Laravel 版本来找到相对应版本的 Homestead 并进行安装。Homestead 提供的默认开发环境还会装上很多常用的开发工具来辅助 Laravel 进行项目开发，包括 PHP7, Nginx, Redis, Memcached, MySQL, Git, Node.js, NPM 等等。或许你对这里提到的一些专有词汇所涉及到的知识并不太了解，但是别担心，这些我们在后面章节都会作相关介绍。<br />
<br />
可以不使用 Homestead 吗？<br />
不可以。<br />
<br />
Homestead 是 Laravel 官方推荐的开发环境。在本书里，我们会强制读者使用 Homestead，原因主要有以下：<br />
<br />
Homestead 是本书很重要的技能点之一，学完此书，你必须学会 Homestead；<br />
Homestead 统一了环境，避免歧义，减少新手在学习中遇到不必要的卡顿；<br />
统一环境带来的好处还有：当你遇到问题的时候，其他同学能很容易的帮助到你；<br />
最大程度接近线上生产环境，为后续的课程做铺垫；<br />
这是最佳实践，是需要从一开始培养起来的好习惯。<br />
在现实的 Laravel 项目开发中，比较正经的团队都会把 Homestead 当做绝对的开发环境要求。你在此处学完 Homestead，是一劳永逸的事情。<br />
<br />
因为 Homestead 有以上优点，我们会竭力为 Homestead 的学习扫清障碍。本书作者甚至为读者定制了专属的 Homestead 环境，定制版的 Homestead 环境预装了必须的软件，软件的配置也依照国内网络环境做了优化，如配置了 NPM 和 Composer 国内镜像加速等。<br />
<br />
需要郑重提醒的是：你必须使用『定制版的 Homestead』，你如果在 非定制版 Homestead 环境下、或者其他开发环境下遇到问题，我们将不会为你解答。原因是变量太多了，我们无法擅长所有系统以及各种版本软件搭配会出现的问题。最重要的，人生苦短，熟知这些 Bug，并没有意义。推荐阅读 为什么你一定要使用 Homestead 来开发 Larave...<br />
<br />
接下来我们会分别为你讲解 Windows 和 Mac 下的开发环境部署，请你根据系统类型选择阅读，使用 Ubuntu 的同学请参考 Mac 版的进行部署。<br />
<br />
————————————————<br />
原文作者：Summer<br />
转自链接：https://learnku.com/docs/laravel-development-environment/7.x/how-to-unify-the-development-environment/8442<br />
版权声明：著作权归作者所有。商业转载请联系作者获得授权，非商业转载请保留以上作者信息和原文链接。
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'Homestead,lavarel,开发环境','views'=>'0','index_show'=>'0','created_at'=>'1578130907','updated_at'=>'1600412027','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB在“改革开放再启动中国制造奖”中获多项大奖','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'21','order_by'=>'0','type'=>'31','title'=>'Laravel 与 PHP','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'Laravel 与 PHP','content'=>'<p>
	为什么是 PHP？<br />
PHP 全称是 PHP: Hypertext Preprocessor，译为：『超文本预处理器』。是一门开源脚本语言，专为『动态 Web 开发』而生。<br />
<br />
PHP 在服务器脚本语言市场占有率中遥遥领先于其他对手：<br />
<br />
<br />
<br />
上图是由 W3Techs 网站提供的 服务器端脚本语言市场占有率 排名，数据样本是 Alexa 世界排名 前一千万 的网站，其中 82.6% 使用 PHP 构建，此数据每日更新。可以看出 PHP 惊人的市场占有率。世界上大部分的商业网站在使用 PHP，可想而知这些企业对 PHP 的人才需求能有多巨大。<br />
<br />
扩展阅读：为什么 PHP 是最好的语言？现在是，将来也会是<br />
<br />
作为职业<br />
如果你在选择职业，巨大的市场占有率有以下好处：<br />
<br />
人才需求大 - 好找工作，可以看下 社区招聘列表；<br />
学习的人多 - 资料多，社区 活跃；<br />
解决方案多 - 开发中基本上遇不到什么技术难题。<br />
架构选型<br />
如果你是创业者或者技术负责人，在做技术架构选型，PHP 的巨大的市场占有率有以下好处：<br />
<br />
招人好招 - 笔者喜爱 ROR（基于 Ruby 语言），但是在 PHP 有了 Laravel 后毫不犹豫就把公司的整个技术堆栈切到 PHP，最大原因就是 人好招，创业公司里，组建团队是个头痛的问题；<br />
解决方案多 - PHP 有很多优质的开源软件，拿过来直接就能使用。另外，作为日常开发，也是非常方便。举个有趣的例子：很多第三方开发者服务 SDK 包优先考虑的就是先出个 PHP 的 SDK，原因就是：PHP 占有率高。<br />
什么是 Laravel？<br />
Laravel 是 Taylor Otwell 开发的一款基于 PHP 语言的 Web 开源框架，采用了 MVC 的架构模式，在 2011 年 6 月正式发布了首个版本。<br />
<br />
由于 Laravel 具备 Rails 敏捷开发等优秀特质，深度集成 PHP 强大的扩展包（Composer）生态与 PHP 开发者广大的受众群，让 Laravel 在发布之后的短短几年时间得到了极其迅猛的发展。我们通过 Google Trends 提供的趋势图（图 1.1）可以看出，Laravel 框架在过去七年，其增长速度在各类 PHP 框架中都是有史以来最快的，这也从正面直接反映出了 Laravel 的强大，以及其未来非常可观的发展前景。<br />
<br />
图 1.1 - Google 趋势（Laravel 为绿色）<br />
<br />
<br />
<br />
扩展阅读：数据说话 - 最火的 PHP 框架是哪个？<br />
<br />
为何 Laravel 如此受欢迎？<br />
一个优秀的工程师在构建一个语言框架时，应该懂得如何去协调好框架和语言之间的关系，并借助前人的智慧来思考框架的合理性与可扩展性。Laravel 的作者 Taylor Otwell 无疑做到了这一点。<br />
<br />
若你之前对 Web 开发有所了解，那么你可能会知道有个叫 Ruby on Rails（简称 Rails）的知名 Web 开发框架。Rails 是基于 Ruby 语言构建的一个 Web 开发框架，该框架有以下原则：<br />
<br />
强调与注重敏捷开发；<br />
约定高于配置（Convention over configuration）；<br />
DRY（Don’t repeat yourself）不要重复自己，提倡代码重用；<br />
重视「编码愉悦性」。<br />
自诞生之日起，Rails 便受到了技术社区的广泛关注与讨论。而 Laravel 正是由于结合了 Rails 框架的这几项优秀特质，才使得其在 PHP 社区中备受推崇。<br />
<br />
国内 Laravel 生态圈在哪？<br />
Laravel 在国内的生态圈发展也日趋成熟，你可以很轻松的在网上找到很多 Laravel 相关的中文学习资料、技术讨论社区：<br />
<br />
Laravel China 社区 - 国内最大的 PHP / Laravel 开发者社区，由 Summer 在 2014 年创建；<br />
Laravel 中文文档 - Laravel China 社区维护的中文文档，涵盖所有版本<br />
Laravel 资讯专栏 - 为 Laravel 开发者提供最新最热的技术资讯<br />
Laravel CheatSheet - Laravel 速查表<br />
Composer 中文镜像 - Packagist 中国全量镜像，让 Composer 速度如飞。<br />
Laravel 版本类型有哪些？<br />
Laravel 有两个版本类型：<br />
<br />
LTS 版本 - 长期支持版本，英文 Long Term Support 的缩写，此类版本是 Laravel 能提供的最长时间维护版本。<br />
一般发行版 - 只提供 6 个月的 Bug 修复支持，一年的安全修复支持。<br />
什么是『长期支持』？<br />
长期支持 （英语：Long-term support，缩写：LTS）是一种软件的产品生命周期政策，特别是开源软件，它增加了软件开发过程及软件版本周期的可靠度。长期支持延长了软件维护的周期；它也改变了软件更新（补丁）的类型及频率以降低风险、费用及软件部署的中断时间，同时提升了软件的可靠性。但这并不必然包含技术支持。<br />
<br />
在长期支持周期的开始，软件设计师会将软件特性冻结：他们制作补丁来修复程序错误及计算机安全隐患，但不会加入新的，可能会造成软件破坏的功能。软件维护者可能会单独发布补丁，或是将其置于维护版本、小数点版本或是服务包中发布。支持周期结束后，其称之为产品的生命周期结束。<br />
<br />
“长期支持” 这个术语通常是保留给特殊的软件版本，其他版本会有更短的生命周期。通常来说，长期支持版本至少会被维护两年。<br />
From 维基百科<br />
<br />
Laravel 有着怎样的版本计划？<br />
版本<span> </span>发布日期<span> </span>版本类型<span> </span>维护周期<br />
Laravel 5.1<span> </span>2015 年 6 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2017 年 6 月份，安全修复 2018 年 6 月份<br />
Laravel 5.2<span> </span>2015 年 12 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />
Laravel 5.3<span> </span>2016 年 8 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />
Laravel 5.4<span> </span>2017 年 1 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />
Laravel 5.5<span> </span>2017 年 8 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2019 年 8 月份，安全修复 2020 年 8 月份<br />
Laravel 5.6<span> </span>2018 年 2 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />
Laravel 5.7<span> </span>2018 年 8 月<span> </span>一般发行<span> </span>提供 6 个月的 Bug 修复支持，一年的安全修复支持<br />
Laravel 5.8<span> </span>2019 年 2 月<span> </span>一般发行<span> </span>Bug 修复 2019 年 8 月份，安全修复 2020 年 2 月份<br />
Laravel 6.0<span> </span>2019 年 9 月<span> </span>LTS 长久支持<span> </span>Bug 修复 2021 年 9 月份，安全修复 2022 年 9 月份<br />
Laravel 7.0<span> </span>2020 年 3 月<span> </span>一般发行<span> </span>Bug 修复 2020 年 9 月份，安全修复 2021 年 3 月份<br />
需要注意的是，以上只是大致的计划，版本的最终发布时间会有所变动。<br />
<br />
如何选择 Laravel 版本？<br />
不同角色，不同项目类型，有不同的建议：<br />
<br />
如果你是新手，目的只是为了学习，请直接选用最新版本；<br />
如果是现有项目，目的是学成后能对项目进行二次开发，请选用与项目匹配的版本进行学习；<br />
如果是商业项目，请优先考虑 LTS 版本；<br />
<br />
————————————————<br />
原文作者：Summer<br />
转自链接：https://learnku.com/courses/laravel-essential-training/7.x/laravel-and-php/8360<br />
版权声明：著作权归作者所有。商业转载请联系作者获得授权，非商业转载请保留以上作者信息和原文链接。
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'Laravel,php','views'=>'0','index_show'=>'0','created_at'=>'1578131016','updated_at'=>'1600411941','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB支持中国单一较大海上风电项目','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'22','order_by'=>'0','type'=>'27','title'=>'yii2 运行应用','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'yii2 运行应用','content'=>'<p>
	<br />
</p>
<h1 style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	运行应用<span id=\"\"></span> 
</h1>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	安装 Yii 后，就有了一个可运行的 Yii 应用， 根据配置的不同，可以通过&nbsp;http://hostname/basic/web/index.php&nbsp;或&nbsp;http://hostname/index.php&nbsp;访问。 本章节将介绍应用的内建功能，如何组织代码， 以及一般情况下应用如何处理请求。
</p>
<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
	<p>
		<span style=\"font-weight:bolder;\">信息：&nbsp;</span>为简单起见，在整个“入门”板块都假定你已经把&nbsp;basic/web&nbsp;设为 Web 服务器根目录并配置完毕， 你访问应用的地址会是&nbsp;http://hostname/index.php&nbsp;或类似的。 请按需调整 URL。
	</p>
</blockquote>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	注意项目模板和框架完全不同，安装完之后全都归你了。你可以根据你的需要自由的添加或删除代码和 修改全部的。
</p>
<h2 id=\"functionality\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	功能
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	一个安装完的基本应用包含四页：
</p>
<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	<li>
		主页，当你访问&nbsp;http://hostname/index.php&nbsp;时显示,
	</li>
	<li>
		“About”页，
	</li>
	<li>
		“Contact”页， 显示一个联系表单，允许终端用户通过 Email 联系你，
	</li>
	<li>
		“Login”页， 显示一个登录表单，用来验证终端用户。试着用“admin/admin”登录， 你可以看到当前是登录状态，已经可以“退出登录”了。
	</li>
</ul>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	这些页面使用同一个头部和尾部。 头部包含了一个可以在不同页面间切换的导航栏。
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	在浏览器底部可以看到一个工具栏。这是 Yii 提供的很有用的<a href=\"https://www.yiichina.com/doc/guide/2.0/tool-debugger\">调试工具</a>， 可以记录并显示大量的调试信息，例如日志信息，响应状态，数据库查询等等。
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	除了 web 应用程序，还有一个控制台脚本叫&nbsp;yii&nbsp;,它位于应用程序根目录。 它可以用于程序的后台运行和维护任务，在<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-console\">控制台应用程序章节</a>&nbsp;中描述。
</p>
<h2 id=\"application-structure\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	应用结构
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	应用中最重要的目录和文件（假设应用根目录是&nbsp;basic）：
</p>
<pre>basic/  应用根目录
composer.json   Composer 配置文件, 描述包信息
config/ 包含应用配置及其它配置 <span class=\"hljs-built_in\" style=\"color:#DC322F;\">console</span>.php 控制台应用配置信息
web.php Web 应用配置信息
commands/   包含控制台命令类
controllers/包含控制器类
models/ 包含模型类
runtime/包含 Yii 在运行时生成的文件，例如日志和缓存文件
vendor/ 包含已经安装的 Composer 包，包括 Yii 框架自身
views/  包含视图文件
web/Web 应用根目录，包含 Web 入口文件
assets/ 包含 Yii 发布的资源文件（javascript 和 css）
index.php   应用入口文件
yii Yii 控制台命令执行脚本</pre>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	一般来说，应用中的文件可被分为两类：在&nbsp;basic/web&nbsp;下的和在其它目录下的。 前者可以直接通过 HTTP 访问（例如浏览器），后者不能也不应该被直接访问。
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 实现了<a href=\"http://wikipedia.org/wiki/Model-view-controller\">模型-视图-控制器 (MVC)</a>设计模式，这点在上述目录结构中也得以体现。&nbsp;models&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-models\">模型类</a>，&nbsp;views&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-views\">视图脚本</a>，&nbsp;controllers&nbsp;目录包含了所有<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">控制器类</a>。
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	以下图表展示了一个应用的静态结构：
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/application-structure.png\" alt=\"应用静态结构\" style=\"height:auto;\" /> 
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	每个应用都有一个入口脚本&nbsp;web/index.php，这是整个应用中唯一可以访问的 PHP 脚本。 入口脚本接受一个 Web 请求并创建<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-application\">应用</a>实例去处理它。&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-applications\">应用</a>在它的<a href=\"https://www.yiichina.com/doc/guide/2.0/concept-components\">组件</a>辅助下解析请求， 并分派请求至 MVC 元素。<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-views\">视图</a>使用<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-widgets\">小部件</a>&nbsp;去创建复杂和动态的用户界面。
</p>
<h2 id=\"request-lifecycle\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	请求生命周期
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	以下图表展示了一个应用如何处理请求：
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/request-lifecycle.png\" alt=\"请求生命周期\" style=\"height:auto;\" /> 
</p>
<ol style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	<li>
		用户向<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-entry-scripts\">入口脚本</a>&nbsp;web/index.php&nbsp;发起请求。
	</li>
	<li>
		入口脚本加载应用<a href=\"https://www.yiichina.com/doc/guide/2.0/concept-configurations\">配置</a>并创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-applications\">应用</a>&nbsp;实例去处理请求。
	</li>
	<li>
		应用通过<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-request\">请求</a>组件解析请求的&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-routing\">路由</a>。
	</li>
	<li>
		应用创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">控制器</a>实例去处理请求。
	</li>
	<li>
		控制器创建一个<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-controllers\">动作</a>实例并针对操作执行过滤器。
	</li>
	<li>
		如果任何一个过滤器返回失败，则动作取消。
	</li>
	<li>
		如果所有过滤器都通过，动作将被执行。
	</li>
	<li>
		动作会加载一个数据模型，或许是来自数据库。
	</li>
	<li>
		动作会渲染一个视图，把数据模型提供给它。
	</li>
	<li>
		渲染结果返回给<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-responses\">响应</a>组件。
	</li>
	<li>
		响应组件发送渲染结果给用户浏览器。
	</li>
</ol>
<p>
	<br />
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'yii2,应用结构','views'=>'7','index_show'=>'0','created_at'=>'1578131184','updated_at'=>'1600412310','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB能力？高精度气体泄漏检测系统在世博会首次亮相','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'23','order_by'=>'0','type'=>'27','title'=>'安装 Yii','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'安装 Yii教程','content'=>'<p>
	<h1 id=\"yii\" style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		安装 Yii
	</h1>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		你可以通过两种方式安装 Yii：使用&nbsp;<a href=\"http://getcomposer.org/\">Composer</a>&nbsp;或下载一个归档文件。 推荐使用前者，这样只需执行一条简单的命令就可以安装新的<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-extensions\">扩展</a>或更新 Yii 了。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		标准安装完Yii之后，框架和一个项目模板两者都下载并安装好了。 一个项目模板是实现了一些基本特性的一个 可行的Yii项目，比如登录，联系表单，等等。 它的代码是以推荐的方式组织的。因此，它能够适合作为你项目的一个好的起点。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		在本章节和以后的章节，我们将会介绍如何去安装Yii和所谓的<em>基本的应用程序模板</em>和如何去实现这个模板上的新特性。 Yii当然也提供了其它模板叫&nbsp;<a href=\"https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide-zh-CN/README.md\">高级的应用程序模板</a>， 它是更好应用于在一个团队开发环境中去开发多层级的应用程序。
	</p>
	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>这个基本的应用程序模板是适合于开发90%的Web应用程序。 它不同于高级的应用程序模板主要地在如何使它们的代码是有组织的。 如果你是刚接触Yii，我们强烈建议你坚持使用简单并有足够的功能的基础的应用程序模板。
		</p>
	</blockquote>
	<h2 id=\"installing-via-composer\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		通过 Composer 安装
	</h2>
	<h3 id=\"composer\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		安装 Composer
	</h3>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		如果还没有安装 Composer，你可以按&nbsp;<a href=\"https://getcomposer.org/download/\">getcomposer.org</a>&nbsp;中的方法安装。 在 Linux 和 Mac OS X 中可以运行如下命令：
	</p>
<pre>curl <span class=\"hljs-operator\">-s</span>S https://getcomposer.org/installer | php
mv composer.phar /usr/<span class=\"hljs-built_in\" style=\"color:#DC322F;\">local</span>/bin/composer</pre>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		在 Windows 中，你需要下载并运行&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer-Setup.exe</a>。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		如果遇到任何问题或者想更深入地学习 Composer， 请参考&nbsp;<a href=\"https://getcomposer.org/doc/\">Composer 文档</a>。 如果你已经安装有 Composer 请确保使用的是最新版本， 你可以用&nbsp;composer self-update&nbsp;命令更新 Composer 为最新版本。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		在本指南中，所有 composer 命令都假定您已经安装了<a href=\"https://getcomposer.org/doc/00-intro.md#globally\">全局</a>&nbsp;的 composer， 这样它可以作为&nbsp;composer&nbsp;命令。如果您在本地目录中使用&nbsp;composer.phar， 则必须相应地调整示例命令。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		如果您之前已安装 Composer，请确保使用最新版本。 您可以通过运行&nbsp;composer self-update&nbsp;来更新Composer。
	</p>
	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>在安装 Yii 期间，Composer 需要从 Github API 请求很多信息。 请求的数量取决于您的应用程序所依赖的数量， 并可能大于&nbsp;<span style=\"font-weight:bolder;\">Github API 速率限制</span>。如果达到此限制，Composer 可能会要求您提供 Github 登录凭据以获取 Github API 访问令牌。在快速连接上，您可能比 Composer 能够处理的时间早， 因此我们建议您在安装 Yii 之前配置访问令牌。 有关如何执行此操作的说明，请参阅&nbsp;<a href=\"https://getcomposer.org/doc/articles/troubleshooting.md#api-rate-limit-and-oauth-tokens\">Composer documentation about Github API tokens</a>。
		</p>
	</blockquote>
	<h3 id=\"installing-from-composer\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		安装 Yii
	</h3>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		安装 Composer 后，您可以通过在 Web 可访问的文件夹下运行以下命令来 安装Yii应用程序模板：
	</p>
<pre>composer create-project --prefer-dist yiisoft/yii2-app-basic basic</pre>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		这将在一个名为&nbsp;basic&nbsp;的目录中安装Yii应用程序模板的最新稳定版本。 如果需要，您可以选择不同的目录名称。
	</p>
	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果&nbsp;composer create-project&nbsp;命令失败，您也可以参考&nbsp;<a href=\"https://getcomposer.org/doc/articles/troubleshooting.md\">Composer 文档的疑难解答</a>&nbsp;部分中的常见错误。修复错误后， 您可以通过在&nbsp;basic&nbsp;目录内运行&nbsp;composer update&nbsp;来恢复中止安装。
		</p>
	</blockquote>
	<blockquote class=\"tip\" style=\"background-color:#D4EDDA;color:#155724;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">提示：&nbsp;</span>如果你想安装 Yii 的最新开发版本，可以使用以下命令代替， 它添加了一个&nbsp;<a href=\"https://getcomposer.org/doc/04-schema.md#minimum-stability\">stability 选项</a>：
		</p>
<pre>composer create-project --prefer-dist --stability=dev yiisoft/yii2-app-basic basic</pre>
		<p>
			请注意，Yii的开发版本不应该用于生产，因为它可能会破坏您的运行代码。
		</p>
	</blockquote>
	<h2 id=\"installing-from-archive-file\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		通过归档文件安装
	</h2>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		通过归档文件安装 Yii 包括三个步骤：
	</p>
	<ol style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		<li>
			从&nbsp;<a href=\"http://www.yiiframework.com/download/\">yiiframework.com</a>&nbsp;下载归档文件。
		</li>
		<li>
			将下载的文件解压缩到 Web 访问的文件夹中。
		</li>
		<li>
			<p>
				修改&nbsp;config/web.php&nbsp;文件，给&nbsp;cookieValidationKey&nbsp;配置项 添加一个密钥（若你通过 Composer 安装，则此步骤会自动完成）：
			</p>
<pre><span class=\"hljs-comment\" style=\"color:#586E75;\">// !!! 在下面插入一段密钥（若为空） - 以供 cookie validation 的需要</span> <span class=\"hljs-string\" style=\"color:#2AA198;\">\'cookieValidationKey\'</span> =&gt; <span class=\"hljs-string\" style=\"color:#2AA198;\">\'在此处输入你的密钥\'</span>,</pre>
		</li>
	</ol>
	<h2 id=\"other-installation-options\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		其他安装方式
	</h2>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		上文介绍了两种安装 Yii 的方法， 安装的同时也会创建一个立即可用的 Web 应用程序。 这个方法对大多数的大或者小的项目是一个不错的起点。如果你正好开始学习Yii，这是特别适合的。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		但是其他的安装方式也存在：
	</p>
	<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		<li>
			如果你只想安装核心框架，然后从零开始构建整个属于你自己的应用程序模版， 可以参考<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-start-from-scratch\">从头构建自定义模版</a>一节的介绍。
		</li>
		<li>
			如果你要开发一个更复杂的应用，可以更好地适用于团队开发环境的， 你可以考虑安装<a href=\"https://github.com/yiisoft/yii2-app-advanced/blob/master/docs/guide-zh-CN/README.md\">高级应用模版</a>。
		</li>
	</ul>
	<h2 id=\"installing-assets\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		安装 Assets
	</h2>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		Yii依靠&nbsp;<a href=\"http://bower.io/\">Bower</a>&nbsp;和/或&nbsp;<a href=\"https://www.npmjs.org/\">NPM</a>&nbsp;软件包来安装 asset（CSS 和 JavaScript）库。 它使用Composer来获取这些库，允许 PHP 和 CSS/JavaScript 包版本同时解析。 这可以通过使用&nbsp;<a href=\"https://asset-packagist.org/\">asset-packagist.org</a>&nbsp;或&nbsp;<a href=\"https://github.com/francoispluchino/composer-asset-plugin/\">composer asset plugin</a>&nbsp;来实现。 有关更多详细信息，请参阅&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/structure-assets\">Assets 文档</a>。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		您可能希望通过本地 Bower/NPM 客户端管理您的 assets，使用 CDN 或完全避免 assets 的安装。 为了防止通过 Composer 安装 assets，请将以下几行添加到您的 \'composer.json\' 中：
	</p>
<pre><span class=\"hljs-string\" style=\"color:#2AA198;\">\"replace\"</span>: { <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/jquery</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=1.11.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/inputmask</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=3.2.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/punycode</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\">\"&gt;=1.3.0\"</span></span>, <span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">bower-asset/yii2-pjax</span><span class=\"hljs-attr\" style=\"color:#B58900;\">\"</span>: <span class=\"hljs-value\"><span class=\"hljs-string\" style=\"color:#2AA198;\"><span class=\"hljs-string\">\"&gt;=2.0.0\"</span></span> </span>},</pre>
	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>在通过 Composer 绕过 assets 安装的情况下，您负责 assets 的安装和解决版本冲突。 准备来自不同扩展名的 assets 文件之间的可能不一致。
		</p>
	</blockquote>
	<h2 id=\"verifying-installation\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		验证安装的结果
	</h2>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		当安装完成之后， 或配置你的Web服务器(看下面的文章)或使用<a href=\"https://secure.php.net/manual/en/features.commandline.webserver.php\">内置Web Server</a>， 当在项目&nbsp;web&nbsp;目录下可以通过下面的命令:
	</p>
<pre>php yii serve</pre>
	<blockquote class=\"note\" style=\"background-color:#FFF3CD;color:#856404;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">注意：&nbsp;</span>默认情况下Https-server将监听8080。可是如果这个端口已经使用或者你想通过这个方式运行多个应用程序，你可以指定使用哪些端口。 只加上 --port 参数：
		</p>
	</blockquote>
<pre>php yii serve --port=<span class=\"hljs-number\" style=\"color:#2AA198;\">8888</span> </pre>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		安装完成后，就可以使用浏览器通过如下 URL 访问刚安装完的 Yii 应用了：
	</p>
<pre><span class=\"hljs-attribute\" style=\"font-weight:bold;color:#B58900;\">http</span>:<span class=\"hljs-comment\" style=\"color:#586E75;\">//localhost:8080/</span> </pre>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		<img class=\"img-responsive\" src=\"https://www.yiichina.com/doc/guide/2.0/images/start-app-installed.png\" alt=\"Yii 安装成功\" style=\"height:auto;\" />
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		你应该可以在浏览器中看到如上所示的 “Congratulations!” 页面。如果没有， 请通过以下任意一种方式，检查当前 PHP 环境是否满足 Yii 最基本需求：
	</p>
	<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		<li>
			复制&nbsp;/requirements.php&nbsp;到&nbsp;/web/requirements.php，然后通过浏览器访问 URL&nbsp;http://localhost/requirements.php
		</li>
		<li>
			<p>
				执行如下命令：
			</p>
<pre><span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">cd</span></span> basic
php requirements.php</pre>
		</li>
	</ul>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		你需要配置好 PHP 安装环境，使其符合 Yii 的最小需求。主要是需要 PHP 5.4 或 以上版本。 如果应用需要用到数据库，那还要安装&nbsp;<a href=\"http://www.php.net/manual/zh/pdo.installation.php\">PDO PHP 扩展</a>&nbsp;和相应的数据库驱动（例如访问 MySQL 数据库所需的&nbsp;pdo_mysql）。
	</p>
	<h2 id=\"configuring-web-servers\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		配置 Web 服务器
	</h2>
	<blockquote class=\"tip\" style=\"background-color:#D4EDDA;color:#155724;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">提示：&nbsp;</span>如果你现在只是要试用 Yii 而不是将其部署到生产环境中， 本小节可以跳过。
		</p>
	</blockquote>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		通过上述方法安装的应用程序在 Windows，Max OS X， Linux 中的&nbsp;<a href=\"http://httpd.apache.org/\">Apache HTTP 服务器</a>&nbsp;或&nbsp;<a href=\"http://nginx.org/\">Nginx HTTP 服务器</a>且PHP版本为5.4或更高都可以直接运行。 Yii 2.0 也兼容 Facebook 公司的&nbsp;<a href=\"http://hhvm.com/\">HHVM</a>， 由于 HHVM 和标准 PHP 在边界案例上有些地方略有不同，在使用 HHVM 时需稍作处理。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		在生产环境的服务器上，你可能会想配置服务器让应用程序可以通过 URL&nbsp;http://www.example.com/index.php&nbsp;访问而不是&nbsp;http://www.example.com/basic/web/index.php。 这种配置需要将 Web 服务器的文档根目录（document root）指向&nbsp;basic/web&nbsp;目录。 可能你还会想隐藏掉 URL 中的&nbsp;index.php，具体细节在&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-routing\">URL 解析和生成</a>一章中有介绍， 你将学到如何配置 Apache 或 Nginx 服务器实现这些目标。
	</p>
	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>将&nbsp;basic/web&nbsp;设置为文档根目录（document root），可以防止终端用户访问&nbsp;basic/web&nbsp;相邻目录中 的私有应用代码和敏感数据文件。 禁止对其他目录的访问是一个不错的安全改进。
		</p>
	</blockquote>
	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果你的应用程序将来要运行在共享虚拟主机环境中， 没有修改其 Web 服务器配置的权限，你依然可以通过调整应用的结构来提升安全性。 详情请参考<a href=\"https://www.yiichina.com/doc/guide/2.0/tutorial-shared-hosting\">共享主机环境</a>&nbsp;一章。
		</p>
	</blockquote>
	<blockquote class=\"info\" style=\"background-color:#CCE5FF;color:#004085;font-family:-apple-system, &quot;font-size:16px;\">
		<p>
			<span style=\"font-weight:bolder;\">信息：&nbsp;</span>如果您在反向代理后面运行Yii应用程序， 则可能需要在请求组件中配置&nbsp;<a href=\"https://www.yiichina.com/doc/guide/2.0/runtime-requests#trusted-proxies\">Trusted proxies and headers</a>。
		</p>
	</blockquote>
	<h3 id=\"recommended-apache-configuration\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		推荐使用的 Apache 配置
	</h3>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		在 Apache 的&nbsp;httpd.conf&nbsp;文件或在一个虚拟主机配置文件中使用如下配置。 注意，你应该将&nbsp;path/to/basic/web&nbsp;替换为实际的&nbsp;basic/web&nbsp;目录。
	</p>
<pre><span class=\"hljs-comment\" style=\"color:#586E75;\"># 设置文档根目录为 \"basic/web\"</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">DocumentRoot</span></span></span> <span class=\"hljs-string\" style=\"color:#2AA198;\">\"path/to/basic/web\"</span> <span class=\"hljs-tag\"><span class=\"hljs-section\" style=\"color:#268BD2;font-weight:bold;\">&lt;Directory \"path/to/basic/web\"&gt;</span></span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># 开启 mod_rewrite 用于美化 URL 功能的支持（译注：对应 pretty URL 选项）</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteEngine</span></span></span> <span class=\"hljs-literal\" style=\"color:#2AA198;\">on</span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># 如果请求的是真实存在的文件或目录，直接访问</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteCond</span></span></span> <span class=\"hljs-cbracket\"><span class=\"hljs-variable\" style=\"color:#B58900;\">%{REQUEST_FILENAME}</span></span> !-f <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteCond</span></span></span> <span class=\"hljs-cbracket\"><span class=\"hljs-variable\" style=\"color:#B58900;\">%{REQUEST_FILENAME}</span></span> !-d <span class=\"hljs-comment\" style=\"color:#586E75;\"># 如果请求的不是真实文件或目录，分发请求至 index.php</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteRule</span></span></span> . index.php <span class=\"hljs-comment\" style=\"color:#586E75;\"># if $showScriptName is false in UrlManager, do not allow accessing URLs with script name</span> <span class=\"hljs-keyword\" style=\"font-weight:bold;color:#859900;\"><span class=\"hljs-common\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">RewriteRule</span></span></span> ^index.php/ -<span class=\"hljs-sqbracket\"><span class=\"hljs-meta\" style=\"color:#CB4B16;\"> [L,R=404]</span></span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># ...其它设置...</span> <span class=\"hljs-tag\"><span class=\"hljs-section\" style=\"color:#268BD2;font-weight:bold;\">&lt;/Directory&gt;</span></span> </pre>
	<h3 id=\"recommended-nginx-configuration\" style=\"font-weight:500;font-size:1.25rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
		推荐使用的 Nginx 配置
	</h3>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		为了使用&nbsp;<a href=\"http://wiki.nginx.org/\">Nginx</a>，你应该已经将 PHP 安装为&nbsp;<a href=\"http://php.net/install.fpm\">FPM SAPI</a>&nbsp;了。 你可以使用如下 Nginx 配置，将&nbsp;path/to/basic/web&nbsp;替换为实际的&nbsp;basic/web&nbsp;目录，&nbsp;mysite.local&nbsp;替换为实际的主机名以提供服务。
	</p>
<pre><span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\">server</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">charset</span></span> utf-<span class=\"hljs-number\" style=\"color:#2AA198;\">8</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">client_max_body_size</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">128M</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">listen</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">80</span>; <span class=\"hljs-comment\" style=\"color:#586E75;\">## listen for ipv4</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#listen [::]:80 default_server ipv6only=on; ## listen for ipv6</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">server_name</span></span> mysite.test; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">root</span></span> /path/to/basic/web; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">index</span></span> index.php; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">access_log</span></span> /path/to/basic/log/access.log; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">error_log</span></span> /path/to/basic/log/error.log; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> / { <span class=\"hljs-comment\" style=\"color:#586E75;\"># Redirect everything that isn\'t a real file to index.php</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">try_files</span></span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span>/ /index.php<span class=\"hljs-variable\" style=\"color:#B58900;\">$is_args</span><span class=\"hljs-variable\" style=\"color:#B58900;\">$args</span>;
} <span class=\"hljs-comment\" style=\"color:#586E75;\"># uncomment to avoid processing of calls to non-existing static files by Yii</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#location ~ \\.(js|css|png|jpg|gif|swf|ico|pdf|mov|fla|zip|rar)$ {</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#try_files $uri =404;</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#}</span> <span class=\"hljs-comment\" style=\"color:#586E75;\">#error_page 404 /404.html;</span> <span class=\"hljs-comment\" style=\"color:#586E75;\"># deny accessing php files for the /assets directory</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~ ^/assets/.*\\.php$</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">deny</span></span> all;
} <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~ \\.php$</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">include</span></span> fastcgi_params; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">fastcgi_param</span></span> SCRIPT_FILENAME <span class=\"hljs-variable\" style=\"color:#B58900;\">$document_root</span><span class=\"hljs-variable\" style=\"color:#B58900;\">$fastcgi_script_name</span>; <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">fastcgi_pass</span></span> <span class=\"hljs-number\" style=\"color:#2AA198;\">127.0.0.1:9000</span>; <span class=\"hljs-comment\" style=\"color:#586E75;\">#fastcgi_pass unix:/var/run/php5-fpm.sock;</span> <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">try_files</span></span> <span class=\"hljs-variable\" style=\"color:#B58900;\">$uri</span> =<span class=\"hljs-number\" style=\"color:#2AA198;\">404</span>;
} <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">location</span></span> <span class=\"hljs-regexp\" style=\"color:#2AA198;\">~* /\\.</span> { <span class=\"hljs-title\" style=\"color:#268BD2;font-weight:bold;\"><span class=\"hljs-attribute\" style=\"color:#B58900;\">deny</span></span> all;
}
}</pre>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		使用该配置时，你还应该在&nbsp;php.ini&nbsp;文件中设置&nbsp;cgi.fix_pathinfo=0&nbsp;， 能避免掉很多不必要的&nbsp;stat()&nbsp;系统调用。
	</p>
	<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
		还要注意当运行一个 HTTPS 服务器时，需要添加&nbsp;fastcgi_param HTTPS on;&nbsp;一行， 这样 Yii 才能正确地判断连接是否安全。
	</p>
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'composer,yii,web','views'=>'0','index_show'=>'0','created_at'=>'1578193795','updated_at'=>'1600411831','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB赢得了升级巴西Copel水电站的合同','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'24','order_by'=>'0','type'=>'28','title'=>'Yii 是什么','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'Yii 是什么','content'=>'<p>
	<br />
</p>
<h1 id=\"yii\" style=\"font-weight:500;font-size:1.875rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	Yii 是什么
</h1>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 是一个高性能，基于组件的 PHP 框架，用于快速开发现代 Web 应用程序。 名字 Yii （读作&nbsp;易）在中文里有“极致简单与不断演变”两重含义， 也可看作&nbsp;<span style=\"font-weight:bolder;\">Yes It Is</span>! 的缩写。
</p>
<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	Yii 最适合做什么？
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 是一个通用的 Web 编程框架，即可以用于开发各种用 PHP 构建的 Web 应用。 因为基于组件的框架结构和设计精巧的缓存支持，它特别适合开发大型应用， 如门户网站、社区、内容管理系统（CMS）、 电子商务项目和 RESTful Web 服务等。
</p>
<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	Yii 和其他框架相比呢？
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	如果你有其它框架使用经验，那么你会很开心看到 Yii 所做的努力：
</p>
<ul style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	<li>
		和其他 PHP 框架类似，Yii 实现了 MVC（Model-View-Controller） 设计模式并基于该模式组织代码。
	</li>
	<li>
		Yii 的代码简洁优雅，这是它的编程哲学。 它永远不会为了刻板地遵照某种设计模式而对代码进行过度的设计。
	</li>
	<li>
		Yii 是一个全栈框架，提供了大量久经考验，开箱即用的特性： 对关系型和 NoSQL 数据库都提供了查询生成器和 ActiveRecord；RESTful API 的开发支持；多层缓存支持，等等。
	</li>
	<li>
		Yii 非常易于扩展。你可以自定义或替换几乎任何一处核心代码。你还会受益于 Yii 坚实可靠的扩展架构，使用、再开发或再发布扩展。
	</li>
	<li>
		高性能始终是 Yii 的首要目标之一。
	</li>
</ul>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 不是一场独角戏，它由一个<a href=\"http://www.yiiframework.com/about/\">强大的开发者团队</a>提供支持， 也有一个庞大的专家社区，持续不断地对 Yii 的开发作出贡献。 Yii 开发者团队始终对 Web 开发趋势和其他框架及项目中的最佳实践和特性保持密切关注， 那些有意义的最佳实践及特性会被不定期的整合进核心框架中， 并提供简单优雅的接口。
</p>
<h2 id=\"yii\" style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	Yii 版本
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 当前有两个主要版本：1.1 和 2.0。 1.1 版是上代的老版本，现在处于维护状态。 2.0 版是一个完全重写的版本，采用了最新的技术和协议，包括依赖包管理器 Composer、PHP 代码规范 PSR、命名空间、Traits（特质）等等。 2.0 版代表新一代框架，是未来几年中我们的主要开发版本。 本指南主要基于 2.0 版编写。
</p>
<h2 style=\"font-weight:500;font-size:1.5rem;color:#212529;font-family:-apple-system, &quot;background-color:#FFFFFF;\">
	系统要求和先决条件<span id=\"\"></span> 
</h2>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	Yii 2.0 需要 PHP 5.4.0 或以上版本支持。你可以通过运行任何 Yii 发行包中附带的系统要求检查器查看每个具体特性所需的 PHP 配置。
</p>
<p style=\"color:#212529;font-family:-apple-system, &quot;font-size:16px;background-color:#FFFFFF;\">
	使用 Yii 需要对面向对象编程（OOP）有基本了解，因为 Yii 是一个纯面向对象的框架。Yii 2.0 还使用了 PHP 的最新特性， 例如<a href=\"http://www.php.net/manual/en/language.namespaces.php\">命名空间</a>&nbsp;和<a href=\"http://www.php.net/manual/en/language.oop5.traits.php\">Trait（特质）</a>。 理解这些概念将有助于你更快地掌握 Yii 2.0。
</p>
<p>
	<br />
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'yii2','views'=>'0','index_show'=>'0','created_at'=>'1578193886','updated_at'=>'1600411771','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB为AGRANA的新小麦淀粉工厂提供安全性和可靠性','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'25','order_by'=>'0','type'=>'27','title'=>'php如何整合qq互联登录 ','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'php整合qq互联登录','content'=>'<p>
	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">php整合qq互联登录</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">接入QQ互联平台后，我们就可以让用户通过QQ帐号登录来登陆我们的网站，这样减少了注册的繁琐，可以更快 、更便捷的为了我带来更多的用户，下面我们一起来看下如何通过QQ互联来实现第三方登录。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">申请资质</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">首先去QQ互联官网：https://connect.qq.com/index.html 申请成为开发者，然后补充自己的信息之后就可以创建应用了。拿到APP ID以及APP Key</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">下载SDK</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这里我们去 http://wiki.connect.qq.com/sdk%E4%B8%8B%E8%BD%BD 网站对应的sdk。</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">安装并配置SDK</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">将我们下载好的SDK放到php运行环境中访问改SDK，会出现提示配置SDK，和查看官方文档选项。</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">代码实现</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">将 SDK 中的 example 文件夹中的 oauth 文件夹复制到API文件夹同级目录下，修改oauth 文件夹中 callback.php 以及 index.php 中的载入qqContentApi.php的路径。</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">前台页面显示QQ登录提示：</span><br />
<br />
<br />
<a href=\"https://www.php.cn/php-weizijiaocheng-459690.html#\">QQ登录</a><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这样点击 [QQ登录] 就会打开QQ授权登录界面</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">回调处理</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">用回点击登录成功后会触发回调接口，这里我们可以对数据做一些操作，比如插入到自己的数据库中，或者要求绑定帐号等等。。</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">require_once(\"/API/qqConnectAPI.php\");</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$qc = new QC();</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$qc-&gt;qq_callback();&nbsp;&nbsp;&nbsp; //返回的验证值</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$openid = $qc-&gt;get_openid();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //qq分配的用户id</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">$result = $qc-&gt;get_user_info(); //获取用户登录信息</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">---------------------</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">本文著作权归作者所有。</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">商业转载请联系作者获得授权，非商业转载请注明出处。</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">来源地址：https://www.php.cn/php-weizijiaocheng-459690.html</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">来源：php中文网(www.php.cn)</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&copy; 版权声明：转载请附上原文链接！</span> 
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'php,qq','views'=>'0','index_show'=>'0','created_at'=>'1578194027','updated_at'=>'1602227277','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'用于ABB通用电机控制器的新软件，可更快，更轻松地配置设备','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'26','order_by'=>'0','type'=>'27','title'=>'编译PHP扩展的方法 ','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'托管数据中心和基础设施提供商Serverius选择ABB作为其两个主要站点的电力基础设施的翻新和扩展的战略合作伙伴。','content'=>'<p>
	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">构建PHP扩展</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">你已经知道如何去编译PHP本身，下一步我们将编译外部扩展。我们将讨论扩展的构建过程和可用的编译选项。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">载入共享扩展</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在前一个章节你已经知道，PHP 扩展既能构建成静态库也可以构建成动态库（.so）。大多数静态库是与 PHP 捆绑在一起编译的，动态库可以显式地传递参数 --enable-EXTNAME=shared 或 --with-EXTNAME=shared 给 ./configure。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">静态扩展默认是可用的，动态库需要增加 extension 或者 zend_extension 的 ini 配置。俩者可以是绝对路径，也可以是相对路径。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">例如编译 PHP 扩展用项目的配置项：</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./configure --prefix=$HOME/myphp</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--enable-debug --enable-maintainer-zts</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--enable-opcache --with-gmp=shared</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这个例子中 opcache 扩展和 GMP 扩展都被编译为位于 modules/ 目录中的共享对象。 您可以通过更改extension_dir或通过传递绝对路径来加载：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; sapi/cli/php -dzend_extension=`pwd`/modules/opcache.so</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-dextension=`pwd`/modules/gmp.so</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># or</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; sapi/cli/php -dextension_dir=`pwd`/modules</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-dzend_extension=opcache.so -dextension=gmp.so</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在 make install 步骤中，这两个 .so 文件会被移进 PHP 安装的扩展目录，你使用 php-config --extension-dir 命令可能可以找到它。对于上面的构建选项，它将是 /home/myuser/myphp/lib/php/extensions/no-debug-non-zts-MODULE_API。这个值也是 extension_dir 配置选项的默认值，所以你无需明确地指定它，就可以直接加载进扩展：</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp&gt; bin/php -dzend_extension=opcache.so -dextension=gmp.so</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">这给我们留下了一个问题：你应该使用哪种机制？共享对象使你有一个基本的 PHP 二进制文件并通过 php.ini 加载其他扩展。发行版通过原始的 PHP 软件包和将扩展作为单独的软件包分发来利用此功能。另一方面，如果你编译自己的 PHP 二进制文件，则可能不需要这个，因为你已经知道需要哪些扩展。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">根据经验，你将对 PHP 本身捆绑的扩展使用静态链接，并将共享扩展用于其他地方。原因很简单，就像你稍后看到的，构建外部扩展为共享对象的更容易（或至少减少了侵入性）。另一个好处是你可以在不用重新构建 PHP 的情况下更新扩展。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">注意</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">如果你需要有关扩展和 Zend 扩展之间差异的信息，你可以查阅专门章节。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">从 PECL 安装扩展</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PECL，PHP 扩展社区库，提供了大量的 PHP 扩展。当扩展从主 PHP 发行版中删除，它们通常还在 PECL中。同样，现在与 PHP 捆绑一起的许多扩展以前都是 PECL 扩展。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">除非你在 PHP 构建的配置步骤指定 --without-pear，否则 make install 将PECL 作为 PEAR 的一部分下载并安装。你可以在 $PREFIX/bin 目录下找到 pecl 脚本。现在安装扩展很简单，就像运行 pecl install EXTNAME 一样，例如：</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp&gt; bin/pecl install apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">该命令将下载、编译并安装 APCu 扩展。结果会是 apcu.so 文件在扩展目录下，可以通过传递 extension=apcu.so 配置选项来加载此文件。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">虽然 pecl install 对终端用户非常方便，但扩展开发人员对它没什么兴趣。在下面，我们将会说明两种手动构建扩展的方式：通过将其导入主要的 PHP 源码树（允许静态链接）或通过外部构建（仅共享）。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">添加扩展到 PHP 源码树</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">第三方扩展和捆绑在 PHP 的扩展之间没有根本上的区别。因此你可以通过复制外部扩展到 PHP 源码树，并和通常的构建过程一样来构建。我们以APCu 作为例子来演示。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">首先，你要把扩展的源代码放到 PHP 源码树的 ext/EXTNAME 目录。如果扩展可通过 Git 获得，就像从 ext/ 中克隆仓库一样简单：</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src/ext&gt; git clone https://github.com/krakjoe/apcu.git</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">或者你也可以下载源码压缩包并解压它：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; wget http://pecl.php.net/get/apcu-4.0.2.tgz</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; tar xzf apcu-4.0.2.tgz</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; mkdir ~/php-src/ext/apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp&gt; cp -r apcu-4.0.2/. ~/php-src/ext/apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">该扩展会包含一个 config.m4 文件，该文件指定autoconf文件使用的特定扩展构建指令。 为了将它们包含在 /configure 脚本，你必须再次运行 ./buildconf。为了确保配置文件已经重新生成，建议事先删除它：</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; rm configure &amp;&amp; ./buildconf --force</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">现在你可以使用 ./config.nice 脚本将 APCu 添加到你的现有配置，或者从全新的配置行开始：</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./config.nice --enable-apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># or</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/php-src&gt; ./configure --enable-apcu # --other-options</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">最后，运行 make -jN 执行实际的构建。由于我们没有使用 --enable-apcu=shared，该扩展已经静态链接到 PHP 库，即不需要额外的操作即可使用它。显然，你也可以使用 make install 去安装最后的二进制文件。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">使用 phpize 构建扩展</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">还可以通过使用构建 PHP章节提及到的 phpize 脚本与 PHP 分开构建。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">phpize 的作用与 ./buildconf 用于 PHP 构建的脚本相似：第一，通过$PREFIX/lib/php/build 复制文件导入 PHP 构建系统到你的扩展中。这些文件是 acinclude.m4（PHP 的 M4宏）、phpize.m4（它会在你的扩展中重命名为 configure.in 并包含主要的构建说明）和 run-tests.php。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后 phpize 将调用 autoconf 生成 ./configure 文件，该文件可以自定义扩展构建。注意，没必要传递 --enable-apcu 给它，因为这是隐式假定的。相反，你应该使用 --with-php-config 指定你的 php-config 脚本路径：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; ~/myphp/bin/phpize</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Configuring for:</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20121113</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Zend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20121113</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Zend Extension Api No:&nbsp;&nbsp; 220121113</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; ./configure --with-php-config=$HOME/myphp/bin/php-config</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/tmp/apcu-4.0.2&gt; make -jN &amp;&amp; make install</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">当你构建扩展时，你应该总是指定 --with-php-config 选项（除非你只有一个全局的 PHP 安装），否则 ./configure 无法确定要构建的 PHP 版本和标志。指定 php-config 脚本也确保了 make install 将移动生成的 .so 文件（可以在 modules/ 目录找到）到正确的扩展目录。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">由于在 phpize 阶段还复制了 run-tests.php 文件，因此你可以使用 make test（或显示调用 run-tests）运行扩展测试。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">删除已编译对象的 make clean 也是可用的，并且允许你增量构建失败时强制重新构建扩展。 另外 phpize 提供了一个清理选项 phpize --clean。该命令将删除所有 phpize 导入的文件和通过 /configure 脚本生成的文件。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">显示关于扩展的信息</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP CLI 二进制文件提供了几个选项来显示关于扩展的信息。你已经知道 -m，该命令会列出所有已经下载的扩展。你可以利用它来确定扩展是否正确下载了：</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so -m | grep apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">还有其他一些以 --r 开头的参数都是具有 Reflection 功能。例如，你可以使用 --ri 去显示扩展的配置：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so --ri apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">APCu Support =&gt; disabled</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Version =&gt; 4.0.2</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">APCu Debugging =&gt; Disabled</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">MMAP Support =&gt; Enabled</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">MMAP File Mask =&gt;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Serialization Support =&gt; broken</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Revision =&gt; $Revision: 328290 $</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Build Date =&gt; Jan&nbsp; 1 2014 16:40:00</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Directive =&gt; Local Value =&gt; Master Value</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.enabled =&gt; On =&gt; On</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.shm_segments =&gt; 1 =&gt; 1</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.shm_size =&gt; 32M =&gt; 32M</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.entries_hint =&gt; 4096 =&gt; 4096</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.gc_ttl =&gt; 3600 =&gt; 3600</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">apc.ttl =&gt; 0 =&gt; 0</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"># ...</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">--re 参数列出扩展添加的所有初始设置、常数、函数和类：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">~/myphp/bin&gt; ./php -dextension=apcu.so --re apcu</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Extension [&nbsp;</span>extension #27 apcu version 4.0.2 ] {<br />
<br />
&nbsp;&nbsp;- INI {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;Entry [ apc.enabled&nbsp;]<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Current = \'1\'<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;Entry [ apc.shm_segments&nbsp;]<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Current = \'1\'<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;# ...<br />
<br />
&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;- Constants [1] {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;Constant [ boolean APCU_APC_FULL_BC ] { 1 }<br />
<br />
&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;- Functions {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;Function [&nbsp;function apcu_cache_info ] {<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Parameters [2] {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parameter #0 [&nbsp;$type ]<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Parameter #1 [&nbsp;$limited ]<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;# ...<br />
<br />
&nbsp;&nbsp;}<br />
<br />
}<br />
<br />
--re 参数仅适用普通扩展，Zend 扩展使用 --rz 代替。 你可以在 opcache 上尝试：<br />
<br />
<br />
~/myphp/bin&gt; ./php -dzend_extension=opcache.so --rz \"Zend OPcache\"<br />
<br />
Zend Extension [ Zend OPcache 7.0.3-dev Copyright (c) 1999-2013 by Zend Technologies&nbsp;<http: www.zend.com=\"\" style=\"margin: 0px; padding: 0px;\">]<br />
<br />
如你所见， 该命令没有显示有用的信息。因为 opcache 同时注册了普通扩展和 Zend 扩展， 前者包含所有初始配置、常量和函数。因此在这个特殊的案例中，你仍然需要使用 --re。其他 Zend 扩展通过 --rz 可得到信息。<br />
<br />
扩展 API 兼容性<br />
扩展对5个主要因素非常敏感。如果它们不合适，则该扩展将不会加载到 PHP中，并将无用：<br />
<br />
PHP Api 版本<br />
Zend 模块 Api 编号<br />
Zend 扩展 Api 编号<br />
调试模式<br />
线程安全<br />
phpize 工具可让你回想它们的一些信息。所以，如果你在调试模式下构建 PHP，并试图加载和使用非调试模式构建的扩展，那它将无法工作。其他检查也一样。<br />
<br />
PHP Api 版本 是内部 API 版本号，Zend 模块 Api 编号 和 Zend 扩展 Api 编号 分别与 PHP 扩展和 Zend 扩展 API 有关。<br />
<br />
那些编号随后作为 C 宏传递给正在构建的扩展，以便它本身可以检查那些参数，并在 C 预处理器 #ifdef 的基础上采用不同的代码路径。当那些编号作为宏传给扩展代码，它们会被写在扩展结构中，以便你每次尝试在 PHP 二进制文件中加载该扩展时，都将对照 PHP 二进制文件本身的编号进行检查。如果不匹配，那么该扩展不会被加载，并显示一条错误信息。<br />
<br />
如果我们看一下扩展的 C 结构，它看起来像这样：<br />
<br />
<br />
<br />
zend_module_entry foo_module_entry = {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_HEADER,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;\"foo\",<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;foo_functions,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_MINIT(foo),<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_MSHUTDOWN(foo),<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;NULL,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;NULL,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_MINFO(foo),<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FOO_VERSION,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_PROPERTIES<br />
<br />
};<br />
<br />
至今，对我们来说有趣的是 STANDARD_MODULE_HEADER 宏。如果我们扩展它，我们可以看到：<br />
<br />
<br />
<br />
#define STANDARD_MODULE_HEADER_EX sizeof(zend_module_entry), ZEND_MODULE_API_NO, ZEND_DEBUG, USING_ZTS<br />
<br />
#define STANDARD_MODULE_HEADER STANDARD_MODULE_HEADER_EX, NULL, NULL<br />
<br />
注意 ZEND_MODULE_API_NO、ZEND_DEBUG、 USING_ZTS 是如何使用的。<br />
<br />
如果查看 PHP 扩展的默认目录，它应该像 no-debug-non-zts-20090626。如你所料，该目录由不同的部分组成：调试模式，其次是线程安全信息，然后是Zend 模块 Api 编号。所以默认情况下，PHP 试图帮你浏览扩展。<br />
<br />
注意<br />
<br />
通常，当你成为一位内部开发人员或扩展开发人员，必须使用调试参数，并且如果必须处理 Windows 平台，线程也会显示出来。你可以针对那些参数的多种情况多次编译同一扩展。<br />
记住，每次新的 PHP 主要/次要版本都会更改参数，比如 PHP Api 版本，这就是为什么你需要针对新的 PHP 版本重新编译的原因。<br />
<br />
<br />
<br />
&gt; /path/to/php70/bin/phpize -v<br />
<br />
Configuring for:<br />
<br />
PHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20151012<br />
<br />
Zend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20151012<br />
<br />
Zend Extension Api No:&nbsp;&nbsp; 320151012<br />
<br />
&nbsp;<br />
<br />
&gt; /path/to/php71/bin/phpize -v<br />
<br />
Configuring for:<br />
<br />
PHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20160303<br />
<br />
Zend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20160303<br />
<br />
Zend Extension Api No:&nbsp;&nbsp; 320160303<br />
<br />
&nbsp;<br />
<br />
&gt; /path/to/php56/bin/phpize -v<br />
<br />
Configuring for:<br />
<br />
PHP Api Version:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20131106<br />
<br />
Zend Module Api No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20131226<br />
<br />
Zend Extension Api No:&nbsp;&nbsp; 220131226<br />
<br />
注意<br />
<br />
Zend 模块 Api 编号 本身是使用 年 月 日 的日期格式构建。这是 API 更改和并被标记的日期。Zend 扩展 Api 编号 是 Zend 版本，其次是 Zend 模块 Api 编号。<br />
<br />
注意<br />
<br />
数字太多？是的，一个 API 编号绑定一个 PHP 版本，对任何人来说都足够了，并且可以简化对 PHP 的理解。不幸的是，除了 PHP 版本本身，还增加了3种不同的 API 编号。你应该找哪一个？答案是任何一个：当 PHP 版本演变时，它们三种同时演变。由于历史原因，我们有三种不同编号。<br />
<br />
但是，你是一位 C开发人员，不是吗？为什么不根据这些数字构建一个“兼容的”头文件？我们在我们的扩展中使用了类似这些：<br />
<br />
<br />
<br />
#include \"php.h\"<br />
<br />
#include \"Zend/zend_extensions.h\"<br />
<br />
&nbsp;<br />
<br />
#define PHP_5_5_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 220121212<br />
<br />
#define PHP_5_6_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 220131226<br />
<br />
&nbsp;<br />
<br />
#define PHP_7_0_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320151012<br />
<br />
#define PHP_7_1_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320160303<br />
<br />
#define PHP_7_2_X_API_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 320160731<br />
<br />
&nbsp;<br />
<br />
#define IS_PHP_72&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_2_X_API_NO<br />
<br />
#define IS_AT_LEAST_PHP_72 ZEND_EXTENSION_API_NO &gt;= PHP_7_2_X_API_NO<br />
<br />
&nbsp;<br />
<br />
#define IS_PHP_71&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_1_X_API_NO<br />
<br />
#define IS_AT_LEAST_PHP_71 ZEND_EXTENSION_API_NO &gt;= PHP_7_1_X_API_NO<br />
<br />
&nbsp;<br />
<br />
#define IS_PHP_70&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_7_0_X_API_NO<br />
<br />
#define IS_AT_LEAST_PHP_70 ZEND_EXTENSION_API_NO &gt;= PHP_7_0_X_API_NO<br />
<br />
&nbsp;<br />
<br />
#define IS_PHP_56&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_5_6_X_API_NO<br />
<br />
#define IS_AT_LEAST_PHP_56 (ZEND_EXTENSION_API_NO &gt;= PHP_5_6_X_API_NO &amp;&amp; ZEND_EXTENSION_API_NO &lt; PHP_7_0_X_API_NO)<br />
<br />
&nbsp;<br />
<br />
#define IS_PHP_55&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZEND_EXTENSION_API_NO == PHP_5_5_X_API_NO<br />
<br />
#define IS_AT_LEAST_PHP_55 (ZEND_EXTENSION_API_NO &gt;= PHP_5_5_X_API_NO &amp;&amp; ZEND_EXTENSION_API_NO &lt; PHP_7_0_X_API_NO)<br />
<br />
&nbsp;<br />
<br />
#if ZEND_EXTENSION_API_NO &gt;= PHP_7_0_X_API_NO<br />
<br />
#define IS_PHP_7 1<br />
<br />
#define IS_PHP_5 0<br />
<br />
#else<br />
<br />
#define IS_PHP_7 0<br />
<br />
#define IS_PHP_5 1<br />
<br />
#endif<br />
<br />
看见了？<br />
<br />
或者更简单（更好）的是使用 PHP_VERSION_ID ，这你可能更熟悉：<br />
<br />
1<br />
<br />
#if PHP_VERSION_ID &gt;= 50600<br />
<br />
---------------------<br />
本文著作权归作者所有。<br />
商业转载请联系作者获得授权，非商业转载请注明出处。<br />
来源地址：https://www.php.cn/php-weizijiaocheng-459724.html<br />
来源：php中文网(www.php.cn)<br />
&copy; 版权声明：转载请附上原文链接！
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/12/08/20120816295799659.png','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'数据中心,abb','views'=>'0','index_show'=>'0','created_at'=>'1578194299','updated_at'=>'1607416201','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB为荷兰托管数据中心的电气化提供动力','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'15','order_by'=>'0','type'=>'30','title'=>'tp 介绍','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'ABB电机是由瑞士制造的，因为ABB集团在瑞士苏黎世跻身全球500强企业之列。 ABB发明了许多产品和技术。 它们包括世界上第一个三相输电系统，世界上第一个自冷变压器，高压直流输电技术和第一个电动工业机器人，并带头使用它们。 ABB有广泛的产品线，包括全系列电力变压器和配电变压器。','content'=>'<p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		ThinkPHP是一个免费开源的，快速、简单的面向对象的轻量级PHP开发框架，是为了敏捷WEB应用开发和简化企业应用开发而诞生的。ThinkPHP从诞生以来一直秉承简洁实用的设计原则，在保持出色的性能和至简代码的同时，更注重易用性。遵循Apache2开源许可协议发布，意味着你可以免费使用ThinkPHP，甚至允许把你基于ThinkPHP开发的应用开源或商业产品发布/销售。
	</p>
	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			<br />
		</p>
	</blockquote>
	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			ThinkPHP6.0基于精简核心和统一用法两大原则在5.1的基础上对底层架构做了进一步的优化改进，并更加规范化。由于引入了一些新特性，ThinkPHP6.0运行环境要求PHP7.1+，不支持5.1的无缝升级（官方给出了<a href=\"https://www.kancloud.cn/manual/thinkphp6_0/1037654\">升级指导</a>用于项目的升级参考）。
		</p>
	</blockquote>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"_15\"></a>主要新特性
	</h2>
	<ul style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
		<li style=\"font-family:&quot;font-size:17px;\">
			采用PHP7强类型（严格模式）
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			支持更多的PSR规范
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			多应用支持
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			ORM组件独立
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			改进的中间件机制
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			更强大和易用的查询
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			全新的事件系统
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			支持容器invoke回调
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			模板引擎组件独立
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			内部功能中间件化
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			SESSION机制改进
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			缓存及日志支持多通道
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			引入Filesystem组件
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			对Swoole以及协程支持改进
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			对IDE更加友好
		</li>
		<li style=\"font-family:&quot;font-size:17px;\">
			统一和精简大量用法
		</li>
	</ul>
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'tp6,SESSION,严格模式','views'=>'0','index_show'=>'0','created_at'=>'1578129389','updated_at'=>'1603963853','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'什么是abb电机','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'14','order_by'=>'0','type'=>'30','title'=>'tp6.0 安装','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'ThinkPHP6.0安装教程','content'=>'<p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		ThinkPHP6.0的环境要求如下：
	</p>
	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<ul>
			<li style=\"font-family:&quot;font-size:17px;\">
				PHP &gt;= 7.1.0
			</li>
		</ul>
	</blockquote>
	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			6.0版本开始，必须通过Composer方式安装和更新，所以你无法通过Git下载安装。
		</p>
	</blockquote>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"Composer_6\"></a>安装Composer
	</h2>
	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			如果还没有安装&nbsp;Composer，在&nbsp;Linux&nbsp;和&nbsp;Mac OS X&nbsp;中可以运行如下命令：
		</p>
		<div class=\"ಠcopy-code-container\">
<pre>curl <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>sS https<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>getcomposer<span class=\"token punctuation\" style=\"color:#999999;\">.</span>org<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>installer <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">|</span> php
mv composer<span class=\"token punctuation\" style=\"color:#999999;\">.</span>phar <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>usr<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>local<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>bin<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>composer</pre>
		</div>
		<p style=\"font-family:&quot;font-size:17px;\">
			在 Windows 中，你需要下载并运行&nbsp;<a href=\"https://getcomposer.org/Composer-Setup.exe\" target=\"_blank\">Composer-Setup.exe</a>。<br />
如果遇到任何问题或者想更深入地学习 Composer，请参考Composer 文档（<a href=\"https://getcomposer.org/doc/\" target=\"_blank\">英文文档</a>，<a href=\"http://www.kancloud.cn/thinkphp/composer\" target=\"_blank\">中文文档</a>）。
		</p>
	</blockquote>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		由于众所周知的原因，国外的网站连接速度很慢。因此安装的时间可能会比较长，我们建议使用国内镜像（阿里云）。
	</p>
	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			打开命令行窗口（windows用户）或控制台（Linux、Mac 用户）并执行如下命令：
		</p>
		<div class=\"ಠcopy-code-container\">
<pre>composer config <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>g repo<span class=\"token punctuation\" style=\"color:#999999;\">.</span>packagist composer https<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>mirrors<span class=\"token punctuation\" style=\"color:#999999;\">.</span>aliyun<span class=\"token punctuation\" style=\"color:#999999;\">.</span>com<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>composer<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>
		</div>
	</blockquote>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"_23\"></a>安装稳定版
	</h2>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		如果你是第一次安装的话，在命令行下面，切换到你的WEB根目录下面并执行下面的命令：
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>composer create<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>project topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>think tp</pre>
	</div>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		这里的tp目录名你可以任意更改，这个目录就是我们后面会经常提到的应用根目录。
	</p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		如果你之前已经安装过，那么切换到你的<span style=\"font-weight:bolder;\">应用根目录</span>下面，然后执行下面的命令进行更新：
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>composer update topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>framework</pre>
	</div>
	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			更新操作会删除thinkphp目录重新下载安装新版本，但不会影响app目录，因此不要在核心框架目录添加任何应用代码和类库。
		</p>
	</blockquote>
	<blockquote class=\"info\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			安装和更新命令所在的目录是不同的，更新必须在你的应用根目录下面执行
		</p>
	</blockquote>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		如果出现错误提示，请根据提示操作或者参考<a href=\"http://www.kancloud.cn/thinkphp/composer\" target=\"_blank\">Composer中文文档</a>。
	</p>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"_45\"></a>安装开发版
	</h2>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		一般情况下，composer&nbsp;安装的是最新的稳定版本，不一定是最新版本，如果你需要安装实时更新的版本（适合学习过程），可以安装6.0.x-dev版本。
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>composer create<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>project topthink<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>think<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">=</span><span class=\"token number\" style=\"color:#990055;\">6.0</span><span class=\"token punctuation\" style=\"color:#999999;\">.</span>x<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>dev tp</pre>
	</div>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"_53\"></a>开启调试模式
	</h2>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		应用默认是部署模式，在开发阶段，可以修改环境变量APP_DEBUG开启调试模式，上线部署后切换到部署模式。
	</p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		本地开发的时候可以在应用根目录下面定义.env文件。
	</p>
	<blockquote class=\"default\" style=\"color:#5BC0DE;background-color:#F4F8FA;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			通过create-project安装后在根目录会自带一个.example.env文件（环境变量示例），你可以直接更名为.env文件并根据你的要求进行修改，该示例文件已经开启调试模式
		</p>
	</blockquote>
	<h2 style=\"font-family:&quot;font-size:30px;color:#525252;background-color:#FFFFFF;\">
		<a id=\"_61\"></a>测试运行
	</h2>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		现在只需要做最后一步来验证是否正常运行。
	</p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		进入命令行下面，执行下面指令
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>php think run</pre>
	</div>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		在浏览器中输入地址：
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>http<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>localhost<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token number\" style=\"color:#990055;\">8000</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>
	</div>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		会看到欢迎页面。恭喜你，现在已经完成ThinkPHP6.0的安装！
	</p>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		如果你本地80端口没有被占用的话，也可以直接使用
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>php think run <span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">-</span>p <span class=\"token number\" style=\"color:#990055;\">80</span> </pre>
	</div>
	<p style=\"font-family:&quot;font-size:17px;color:#525252;background-color:#FFFFFF;\">
		然后就可以直接访问：
	</p>
	<div class=\"ಠcopy-code-container\" style=\"color:#525252;font-family:&quot;font-size:15px;background-color:#FFFFFF;\">
<pre>http<span class=\"token punctuation\" style=\"color:#999999;\">:</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span><span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span>localhost<span class=\"token operator\" style=\"color:#9A6E3A;background:rgba(255, 255, 255, 0.5);\">/</span> </pre>
	</div>
	<blockquote class=\"danger\" style=\"color:#D9534F;background-color:#FDF7F7;font-family:&quot;font-size:15px;\">
		<p style=\"font-family:&quot;font-size:17px;\">
			实际部署中，应该是绑定域名访问到public目录，确保其它目录不在WEB目录下面。
		</p>
	</blockquote>
</p>
<p>
	<br />
</p>','cover'=>'/attachment/2020/05/13/20051313275340906.jpg','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'composer,PHP','views'=>'0','index_show'=>'0','created_at'=>'1578129256','updated_at'=>'1600412262','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'直线电机的正向和反向控制的原理和作用！','user_id'=>'1']);
        $this->insert('{{%news}}',['id'=>'27','order_by'=>'0','type'=>'27','title'=>'小知识大学问的注册 PHP 函数  ','subtitle'=>NULL,'publisher'=>NULL,'summary'=>'PHP扩展的主要目标是为用户注册新的PHP函数，PHP函数非常复杂，很难完全理解它们与Zend引擎密切相关的机制，但幸运的是， 我们在本章中不需要这些知识，因为PHP扩展机制提供了许多方法来抽象如此复杂的内容。','content'=>'<p>
	<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"><span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\"><img id=\"loading_kgvp0swc\" src=\"/backend/assets/6fa26db1/themes/default/images/spacer.gif\" title=\"正在上传...\" />PHP函数的注册和使用</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP扩展的主要目标是为用户注册新的PHP函数，PHP函数非常复杂，很难完全理解它们与Zend引擎密切相关的机制，但幸运的是， 我们在本章中不需要这些知识，因为PHP扩展机制提供了许多方法来抽象如此复杂的内容。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在扩展中注册并使用一个新的PHP函数是一个简单的步骤. 然而，要深刻理解整体情况，则要复杂得多。zend_function章节的第一步 可能会有所帮助.</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">显然，你需要掌握类型, 特别是 zendValues 和 内存管理. 当然, 了解你的钩子.</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">zend_function_entry 结构</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">不要和 zend_function 结构混淆，zend_function_entry 是用在扩展中针对引擎注册函数的。看这里：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">#define INTERNAL_FUNCTION_PARAMETERS zend_execute_data *execute_data, zval *return_value</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">typedef struct _zend_function_entry {</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *fname;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;void (*handler)(INTERNAL_FUNCTION_PARAMETERS);</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_internal_arg_info *arg_info;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint32_t num_args;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;uint32_t flags;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">} zend_function_entry;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">你会发现该结构并不复杂，这就是声明和注册新功能所需要的。让我们一起详细介绍：</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">函数的名字：fname。没什么好补充的，你知道它的用途对吧？只需注意是 const char * 类型。这不适用于引擎。此 fname是一个模型，引擎将会从 内部的 zend_string 创建。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后来看 handler。这是指向 C 代码的函数指针，它将会是函数的主体。这里，我们将使用宏来简化其声明（等等会看到）。进入此函数，我们能够解析函数接收的参数，并且生成一个返回值，就像任何 PHP 用户区的函数。注意，这个返回值作为参数传递到我们的处理程序。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">争论。arg_info 变量是关于声明我们的函数将接收的 API 参数。同样，这部分可能很难深入理解，但我们不需要理解太深，我们再次使用宏进行抽象和简化参数声明。你要知道的是，在这里你不需要声明任何参数即可使用该函数，但是我们强烈建议你这么做。我们将回到这里。参数是一组 arg_info，因此它的大小作为 num_args 传递。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">然后是 flags。在这章我们不详细说明它。这些是内部使用的，你可在 zend_function 章节了解详细信息。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">注册 PHP 函数</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">当加载扩展时，PHP 函数会被注册到 ZEND 引擎当中。一个扩展可以在扩展结构中声明一个函数向量。被扩展声明的函数被称为 核心 函数，与 用户 函数（在PHP用户中被声明和使用的函数）相反，它们在当前的请求结束时不会被注销：可以一直使用。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">提醒一下，以下是为了方便可读性对 PHP 扩展结构的简写</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">struct _zend_module_entry {</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned short size;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int zend_api;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned char zend_debug;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned char zts;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_ini_entry *ini_entry;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_module_dep *deps;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *name;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const struct _zend_function_entry *functions;&nbsp;&nbsp;&nbsp;&nbsp; /* 函数声明向量 */</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int (*module_startup_func)(INIT_FUNC_ARGS);</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int (*module_shutdown_func)(SHUTDOWN_FUNC_ARGS);</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;/* ... */</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">您将向函数向量传递一个已声明的函数向量。让我们一起来看一个简单的例子：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.c 头文件*/</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP_FUNCTION(fahrenheit_to_celsius)</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">static const zend_function_entry pib_functions[] =</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius, NULL)</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">zend_module_entry pib_module_entry = {</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_HEADER,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;\"pib\",</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;pib_functions,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;NULL,</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;\"0.1\",</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;STANDARD_MODULE_PROPERTIES</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">};</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">我们来试试一个简单的函数 fahrenheit_to_celsius() （名字告诉了我们它的作用）</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">通过使用 PHP_FUNCTION() 宏来定义一个函数。后者将传递它的参数并扩展成正确的结构。然后，我们把函数符号汇总并将其添加到 pib_functions 向量中。这就是通过 zend_module_entry 符号延伸的 zend_function_entry * 类型。在此向量中，我们通过 PHP_FE 宏添加我们的 PHP 函数。后者需要 PHP 函数名称，以及我们传递 NULL 值时的一个参数向量。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">在 php_pib.h 头文件中，我们应该像 C 语言一样在这里声明我们的函数：</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">1</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">2</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.h 头文件*/</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">PHP_FUNCTION(fahrenheit_to_celsius);</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">如你所见，声明函数确实很容易。宏为我们干完了所有难活。以下是和上文相同的代码，但是却扩展了宏，因此你可以看下它们是如何运行的：</span><br />
<br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">/* pib.c */</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">void zif_fahrenheit_to_celsius(zend_execute_data *execute_data, zval *return_value)</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">static const zend_function_entry pib_functions[] =</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">{</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;{ \"fahrenheit_to_celsius\", zif_fahrenheit_to_celsius, ((void *)0),</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(uint32_t) (sizeof(((void *)0))/sizeof(struct _zend_internal_arg_info)-1), 0 },</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">}</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">请注意 PHP_FUNCTION() 是如何以 zif_ 开头扩展为 C 符号的。‘zif’ 被添加到你的函数名称中，以防止PHP 及其模块在编译中造成符号名称冲突。因此，我们的 fahrenheit_to_celsius() PHP 函数使用了 zif_fahrenheit_to_celsius() 的处理程序。它几乎和每个 PHP 函数一样。如果你搜索 zif_var_dump，就可以阅读PHP var_dump() 的源码函数等。</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">声明函数参数</span><br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">到目前为止，如果 「你编译」 扩展并将其加载到PHP中，你可以看见函数呈现的反射机制：</span><br />
<br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">&gt; ~/php/bin/php -dextension=pib.so --re pib</span><br />
<br />
<span style=\"font-family:&quot;font-size:14px;background-color:#EEEEEE;\">Extension [&nbsp;</span>extension #37 pib version 0.1 ] {<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;- Functions {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;Function [&nbsp;function fahrenheit_to_celsius ] {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
}<br />
<br />
但是它缺少参数。如果我们发布一个 fahrenheit_to_celsius($fahrenheit) 函数签名，则需要一个强制参数。<br />
<br />
你必须了解，函数声明和函数内部的运行无关。这意味着即便没有声明参数，我们现在编写函数也可能会起作用。<br />
<br />
注意<br />
<br />
声明参数虽然不是强制性的，但是我们强烈推荐使用。反射 API 可通过使用参数获取函数的信息。Zend 引擎也用到参数，尤其是当我们谈及引用传参或者返回引用的函数时。<br />
<br />
要声明参数，我们必须要熟悉 zend_internal_arg_info 结构：<br />
<br />
<br />
typedef struct _zend_internal_arg_info {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *name;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const char *class_name;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_uchar type_hint;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_uchar pass_by_reference;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool allow_null;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zend_bool is_variadic;<br />
<br />
} zend_internal_arg_info;<br />
<br />
没必要详细说明每个字段，但是想要理解参数却比这种单独结构复杂得多。幸运的是，我们再次为你提供了一些宏来抽象这艰巨的工作。<br />
<br />
<br />
<br />
ZEND_BEGIN_ARG_INFO_EX(arginfo_fahrenheit_to_celsius, 0, 0, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, fahrenheit)<br />
<br />
ZEND_END_ARG_INFO()<br />
<br />
上面的代码详细的说明了如何创建参数，但当我们扩展宏时，我们会感到有些困难：<br />
<br />
<br />
static const zend_internal_arg_info arginfo_fahrenheit_to_celsius[] = {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ (const char*)(zend_uintptr_t)(1), ((void *)0), 0, 0, 0, 0 },<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ \"fahrenheit\", ((void *)0), 0, 0, 0, 0 },<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;};<br />
<br />
正如我们所见，宏创建了一个 zend_internal_arg_info 结构。如果你阅读过这类宏的 API，那么对我们来说一切都变得清楚了：<br />
<br />
<br />
<br />
/* API only */<br />
<br />
#define ZEND_BEGIN_ARG_INFO_EX(name, _unused, return_reference, required_num_args)<br />
<br />
#define ZEND_ARG_INFO(pass_by_ref, name)<br />
<br />
#define ZEND_ARG_OBJ_INFO(pass_by_ref, name, classname, allow_null)<br />
<br />
#define ZEND_ARG_ARRAY_INFO(pass_by_ref, name, allow_null)<br />
<br />
#define ZEND_ARG_CALLABLE_INFO(pass_by_ref, name, allow_null)<br />
<br />
#define ZEND_ARG_TYPE_INFO(pass_by_ref, name, type_hint, allow_null)<br />
<br />
#define ZEND_ARG_VARIADIC_INFO(pass_by_ref, name)<br />
<br />
这一系列的宏可以让你处理每个用例。<br />
This bunch of macros allow you to deal with every use-case.<br />
<br />
ZEND_BEGIN_ARG_INFO_EX() 允许你声明你的函数能接收多少个必要参数。它还允许你声明一个 &amp;return_by_ref() 函数。<br />
那么你每个参数都需要 ZEND_ARG_***_INFO() 之一。使用它你可以判断参数是否为 &amp;$passed_by_ref 以及是否需要类型提示。<br />
注意<br />
<br />
如果你不知道怎样去命名参数向量符号，则一种做法是使用 ‘arginfo_[function name]’ 模式。<br />
<br />
所以回到我们的 fahrenheit_to_celsius() 函数，我们这里申明一个简单的按值返回函数（非常经典的用例），其中一个参数称为 fahrenheit ，且未通过引用传递（又一次的传统用例）。<br />
<br />
这就创建了类型 zend_internal_arg_info[] (一个向量, 或一个数组, 都相同) 的 arginfo_fahrenheit_to_celsius 符号，现在我们必须要使用该符号回到函数声明中来添加给它一些参数。<br />
<br />
1<br />
<br />
PHP_FE(fahrenheit_to_celsius, arginfo_fahrenheit_to_celsius)<br />
<br />
至此我们完成了，现在反射可以看见参数了，并会告知引擎在引用不匹配的情况下该怎么做。太棒了！<br />
<br />
注意<br />
<br />
还有其他宏。ZEND_BEGIN_ARG_WITH_RETURN_TYPE_INFO_EX() f.e. 你可以在 Zend/zend_api.h 的源代码中找到所有这些文件。<br />
<br />
C 语言的 PHP 函数结构和 API<br />
好的。下面是一个 PHP 函数。你可以使用它，并用 PHP 语言声明它（用户区）：<br />
<br />
<br />
<br />
function fahrenheit_to_celsius($fahrenheit)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;return 5/9 * ($fahrenheit - 32);<br />
<br />
}<br />
<br />
这是一个简单的函数，以便你可以理解它。这是用 C 编程时的样子：<br />
<br />
<br />
<br />
PHP_FUNCTION(fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;/* code to go here */<br />
<br />
}<br />
<br />
宏展开后，将得到：<br />
<br />
<br />
void zif_fahrenheit_to_celsius(zend_execute_data *execute_data, zval *return_value)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;/* code to go here */<br />
<br />
}<br />
<br />
休息一下，考虑一下主要差异。<br />
<br />
首先奇怪的是，在 C 中，该函数不会返回任何东西。那是一个 void 声明的函数，你不可以在这里返回任何东西。但是我们注意到我们接收了一个 zval *类型的return_value参数，看起来很不错。用 C 编写 PHP 函数时，你将得到一个指向 zval 的返回值 ，希望你们能玩一玩。这有更多关于 zval 的资源.<br />
<br />
注意<br />
<br />
在 C 扩展中编写 PHP 函数时，你接收作为参数的返回值，并且你不会从 C 函数返回任何东西。<br />
<br />
好的，第一点解释了。第二点你可能已经猜到了：PHP 函数的参数在哪里？$fahreinheit在哪里？很难解释完全，事实上，这很难。<br />
<br />
但是我们不需要在这里了解细节。让我们解释下关键的概念：<br />
<br />
参数已经通过引擎推入堆栈中。它们都在内存的某个地方挨着堆放。<br />
如果你的函数被调用，这意味着没有阻塞错误，因此你可以浏览参数堆栈，并读取运行时传递的参数。不仅是你声明的那些，还包括那些在调用函数时传递给函数的。引擎会为你处理一切。<br />
为了读取参数，你需要一个函数或者宏，并且需要知道有多少参数已经推入堆栈中，以便知道什么时候应该停止读取它们。<br />
一切都按照你接收的作为参数的zend_execute_data *execute_data。但是现在我们不详细说明。<br />
解析参数：zend_parse_parameters()<br />
要读取参数，欢迎使用 zend_parse_parameters() API (称为 ‘zpp’).<br />
<br />
注意<br />
<br />
当在 C 扩展中编写 PHP 函数时，多亏了zend_parse_parameters() 函数和它的朋友，你接收到 PHP 函数的参数。<br />
<br />
zend_parse_parameters() 是一个函数，它将为你到 Zend 引擎的堆栈中读取参数。你要告诉它要读取多少个参数，以及想要它为你提供哪种类型。该函数将根据 PHP 类型转换规则（如果需要，并且有可能的话）将参数转换为你要的类型。如果你需要一个整型，但给了一个浮点型，如果没有严格的类型提示规则被阻塞，则引擎会将浮点型转换为整型，然后给你。<br />
<br />
让我们来看看这个函数：<br />
<br />
<br />
PHP_FUNCTION(fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;f) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;/* continue */<br />
<br />
}<br />
<br />
我们希望在 f 变量上得到一个 double 类型。然后我们调用zend_parse_parameters()。<br />
<br />
第一个参数是运行时已给定的参数数目。ZEND_NUM_ARGS() 是一个宏，它会告诉我们，然后我们用它去告知 zpp() 需要读取多少个参数。<br />
<br />
然后我们传递一个const char *类型的 “d” 字符串。在这里，要求你为每一个接收的参数写一个字母，除了一些未在这里讲述的特殊情况。一个简单的 “d” 表示 “如果需要的话，我想要第一个接收的参数转换为 float (double)”。<br />
<br />
然后，在该字符串之后传递 C 真正需要的参数，以满足第二个参数。一个 “d” 表示 “一个 double”，然后你现在传递 double 的 地址，引擎将会填充其值。<br />
<br />
注意<br />
<br />
你总是将一个指针传递给要填充的数据。<br />
<br />
你可以在 PHP 源代码的 README.PARAMETER_PARSING_API文件中找到关于 zpp() 的字符串格式的最新帮助。仔细阅读，因为这是你可能搞错并造成程序崩溃的一步。始终检查你的参数，始终根据你提供的格式字符串传递相同数量的参数变量，以及你要求的类型相同。要合乎逻辑。<br />
<br />
同样注意一下参数解析的正常过程。zend_parse_parameters()函数在成功时应返回 SUCCESS或者在失败时应返回FAILURE。失败可能表示你没有使用ZEND_NUM_ARGS()值，而是手动提供一个值（坏主意）。或者在参数解析时做错了什么。如果是这样，那么是时候 return 了，终止当前函数（你应该从 C 函数中返回 void，所以只要 return）。<br />
<br />
到目前为止，我们接收了一个 double。让我们执行数学运算并返回结果：<br />
<br />
<br />
<br />
static double php_fahrenheit_to_celsius(double f)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;return ((double)5/9) * (double)(f - 32);<br />
<br />
}<br />
<br />
&nbsp;<br />
<br />
PHP_FUNCTION(fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;f) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_fahrenheit_to_celsius(f));<br />
<br />
}<br />
<br />
如你所知的zval 的工作原理，返回值对你来说应该很容易。你必须填写 return_value。<br />
<br />
一些 RETURN_***() 宏以及一些RETVAL_***()宏都是专门用来这么做的。这两个仅设置return_value zval 的类型和值，但是RETURN_***()宏后面会跟着一个从当前函数返回的 Creturn。<br />
<br />
或者，API 提供了一系列去处理和解析参数的宏。如果你对 python 样式说明符困惑的话，那么它更具有可读性。<br />
<br />
你需要使用以下宏来开始和结束函数参数解析：<br />
<br />
ZEND_PARSE_PARAMETERS_START(min_argument_count, max_argument_count) /* 需要两个参数 */<br />
<br />
/* 这里我们将使用参数列表 */<br />
<br />
ZEND_PARSE_PARAMETERS_END();<br />
<br />
可用的参数宏可以列出如下：<br />
<br />
<br />
Z_PARAM_ARRAY()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"a\" */<br />
<br />
Z_PARAM_ARRAY_OR_OBJECT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"A\" */<br />
<br />
Z_PARAM_BOOL()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"b\" */<br />
<br />
Z_PARAM_CLASS()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"C\" */<br />
<br />
Z_PARAM_DOUBLE()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"d\" */<br />
<br />
Z_PARAM_FUNC()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"f\" */<br />
<br />
Z_PARAM_ARRAY_HT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"h\" */<br />
<br />
Z_PARAM_ARRAY_OR_OBJECT_HT()&nbsp;&nbsp; /* old \"H\" */<br />
<br />
Z_PARAM_LONG()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"l\" */<br />
<br />
Z_PARAM_STRICT_LONG()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"L\" */<br />
<br />
Z_PARAM_OBJECT()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"o\" */<br />
<br />
Z_PARAM_OBJECT_OF_CLASS()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"O\" */<br />
<br />
Z_PARAM_PATH()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"p\" */<br />
<br />
Z_PARAM_PATH_STR()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"P\" */<br />
<br />
Z_PARAM_RESOURCE()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"r\" */<br />
<br />
Z_PARAM_STRING()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"s\" */<br />
<br />
Z_PARAM_STR()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"S\" */<br />
<br />
Z_PARAM_ZVAL()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"z\" */<br />
<br />
Z_PARAM_VARIADIC()&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"+\" and \"*\" */<br />
<br />
为了添加一个参数作为可选参数，我们使用以下宏：<br />
<br />
1<br />
<br />
Z_PARAM_OPTIONAL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* old \"|\" */<br />
<br />
这是基于宏的参数解析样式的示例：<br />
<br />
<br />
PHP_FUNCTION(fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double f;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_PARSE_PARAMETERS_START(1, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Z_PARAM_DOUBLE(f);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_PARSE_PARAMETERS_END();<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_fahrenheit_to_celsius(f));<br />
<br />
}<br />
<br />
添加测试<br />
如果你已阅读有关测试的章节(看使用 .phpt 文件测试)，现在你应该编写一个简单的例子：<br />
<br />
<br />
--TEST--<br />
<br />
Test fahrenheit_to_celsius<br />
<br />
--SKIPIF--<br />
<br />
<br />
<br />
--FILE--<br />
<br />
<br />
printf(\"%.2f\", fahrenheit_to_celsius(70));<br />
<br />
?&gt;<br />
<br />
--EXPECTF--<br />
<br />
21.11<br />
<br />
并启动make test<br />
<br />
玩转常量<br />
让我们来看一个高级的例子。我们来添加相反的函数：celsius_to_fahrenheit($celsius):<br />
<br />
<br />
ZEND_BEGIN_ARG_INFO_EX(arginfo_celsius_to_fahrenheit, 0, 0, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, celsius)<br />
<br />
ZEND_END_ARG_INFO();<br />
<br />
&nbsp;<br />
<br />
static double php_celsius_to_fahrenheit(double c)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;return (((double)9/5) * c) + 32 ;<br />
<br />
}<br />
<br />
&nbsp;<br />
<br />
PHP_FUNCTION(celsius_to_fahrenheit)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double c;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d\", &amp;c) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;RETURN_DOUBLE(php_celsius_to_fahrenheit(c));<br />
<br />
}<br />
<br />
&nbsp;<br />
<br />
static const zend_function_entry pib_functions[] =<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius, arginfo_fahrenheit_to_celsius) /* Done above */<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(celsius_to_fahrenheit,arginfo_celsius_to_fahrenheit) /* just added */<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE_END<br />
<br />
};<br />
<br />
现在是一个更复杂的用例，在将它作为 C 扩展实现之前，在 PHP 中展示它：<br />
<br />
<br />
<br />
const TEMP_CONVERTER_TO_CELSIUS&nbsp;&nbsp;&nbsp;&nbsp; = 1;<br />
<br />
const TEMP_CONVERTER_TO_FAHREINHEIT = 2;<br />
<br />
&nbsp;<br />
<br />
function temperature_converter($temp, $type = TEMP_CONVERTER_TO_CELSIUS)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;switch ($type) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_CELSIUS:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return sprintf(\"%.2f degrees fahrenheit gives %.2f degrees celsius\", $temp,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fahrenheit_to_celsius($temp));<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_FAHREINHEIT:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return sprintf(\"%.2f degrees celsius gives %.2f degrees fahrenheit, $temp,<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;celsius_to_fahrenheit($temp));<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;trigger_error(\"Invalid mode provided, accepted values are 1 or 2\", E_USER_WARNING);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
}<br />
<br />
这个例子有助于我们介绍常量。<br />
<br />
常量在扩展中很容易管理，就像它们在用户区一样。常量通常是持久性的，意味着它们应该在请求之间保持其值不变。如果你知道 PHP 的生命周期，则应该猜到 MINIT()是向引擎注册常量的正确阶段。<br />
<br />
在内部，这有个常量，一个zend_constant 结构：<br />
<br />
<br />
typedef struct _zend_constant {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zval value;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zend_string *name;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;int flags;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;int module_number;<br />
<br />
} zend_constant;<br />
<br />
真的是一个简单的结构（如果你深入了解常量是如何管理到引擎中，那可能会是一场噩梦）。你声明了name，value，一些flags（不是很多），并且module_number自动设置为你的扩展编号（不用注意它）。<br />
<br />
要注册常量，同样的，这一点都不难，一堆宏可以帮你完成：<br />
<br />
#define TEMP_CONVERTER_TO_FAHRENHEIT 2<br />
<br />
#define TEMP_CONVERTER_TO_CELSIUS 1<br />
<br />
&nbsp;<br />
<br />
PHP_MINIT_FUNCTION(pib)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;REGISTER_LONG_CONSTANT(\"TEMP_CONVERTER_TO_CELSIUS\", TEMP_CONVERTER_TO_CELSIUS, CONST_CS|CONST_PERSISTENT);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;REGISTER_LONG_CONSTANT(\"TEMP_CONVERTER_TO_FAHRENHEIT\", TEMP_CONVERTER_TO_FAHRENHEIT, CONST_CS|CONST_PERSISTENT);<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;return SUCCESS;<br />
<br />
}<br />
<br />
注意<br />
<br />
给出 C 宏的 PHP 常量值是一个很好的实践。事情变得容易了，这就是我们做的。<br />
<br />
根据你的常量类型，你将使用 REGISTER_LONG_CONSTANT()、 REGISTER_DOUBLE_CONSTANT()等等。API 和宏位于 Zend/zend_constants.h中。<br />
<br />
flag 在CONST_CS （case-sensitive constant 大小写敏感常量，我们想要的）和CONST_PERSISTENT（持久性常量，在请求中也是我们想要的）之间是混合的 OR 操作。<br />
<br />
现在在 C 中的temperature_converter($temp, $type = TEMP_CONVERTER_TO_CELSIUS)函数：<br />
<br />
ZEND_BEGIN_ARG_INFO_EX(arginfo_temperature_converter, 0, 0, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, temperature)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(0, mode)<br />
<br />
ZEND_END_ARG_INFO();<br />
<br />
我们得到了一个必须的参数，两个中的一个。那就是我们声明的。其默认值不是一个参数声明可以解决的，那将在一秒钟内完成。<br />
<br />
然后我们将我们的新函数添加到函数注册向量：<br />
<br />
<br />
static const zend_function_entry pib_functions[] =<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(fahrenheit_to_celsius,arginfo_fahrenheit_to_celsius) /* seen above */<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(celsius_to_fahrenheit,arginfo_celsius_to_fahrenheit) /* seen above */<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(temperature_converter, arginfo_temperature_converter) /* our new function */<br />
<br />
}<br />
<br />
函数主体：<br />
<br />
PHP_FUNCTION(temperature_converter)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double t;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zend_long mode = TEMP_CONVERTER_TO_CELSIUS;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zend_string *result;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"d|l\", &amp;t, &amp;mode) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;switch (mode)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_CELSIUS:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result = strpprintf(0, \"%.2f degrees fahrenheit gives %.2f degrees celsius\", t, php_fahrenheit_to_celsius(t));<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN_STR(result);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case TEMP_CONVERTER_TO_FAHRENHEIT:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result = strpprintf(0, \"%.2f degrees celsius gives %.2f degrees fahrenheit\", t, php_celsius_to_fahrenheit(t));<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RETURN_STR(result);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;php_error(E_WARNING, \"Invalid mode provided, accepted values are 1 or 2\");<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
}<br />
<br />
记得好好看 README.PARAMETER_PARSING_API。它不是一个很难的 API，你必须熟悉它。<br />
<br />
我们使用 “d|l” 作为 zend_parse_parameters()的参数。一个 double、或（管道“|”）、一个 long。注意，如果在运行时不提供可选参数（提醒一下，ZEND_NUM_ARGS()是什么），则 &amp;mode不会被 zpp() 触及。这就是为什么我们提供了一个TEMP_CONVERTER_TO_CELSIUS默认值给该变量。<br />
<br />
然后我们使用 strpprintf() 去构建一个 zend_string，并且使用 RETURN_STR() 返回它到 return_value zval。<br />
<br />
注意<br />
<br />
strpprintf() 和它的朋友们在打印函数章节有解释过。<br />
<br />
使用 Hashtable (PHP 数组)<br />
现在让我们来玩一下PHP 数组并设计：<br />
<br />
<br />
<br />
function multiple_fahrenheit_to_celsius(array $temperatures)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;foreach ($temperatures as $temp) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$return[] = fahreinheit_to_celsius($temp);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;return $return;<br />
<br />
}<br />
<br />
所以在 C 语言实现的时候，我们需要zend_parse_parameters()并请求一个数组，遍历它，进行数学运算，并将结果作为数组添加到 return_value：<br />
<br />
<br />
ZEND_BEGIN_ARG_INFO_EX(arginfo_multiple_fahrenheit_to_celsius, 0, 0, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_ARRAY_INFO(0, temperatures, 0)<br />
<br />
ZEND_END_ARG_INFO();<br />
<br />
&nbsp;<br />
<br />
static const zend_function_entry pib_functions[] =<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* ... */<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE(multiple_fahrenheit_to_celsius, arginfo_multiple_fahrenheit_to_celsius)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;PHP_FE_END<br />
<br />
};<br />
<br />
&nbsp;<br />
<br />
PHP_FUNCTION(multiple_fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;HashTable *temperatures;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zval *data;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"h\", &amp;temperatures) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_hash_num_elements(temperatures) == 0) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;array_init_size(return_value, zend_hash_num_elements(temperatures));<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_HASH_FOREACH_VAL(temperatures, data)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;zval dup;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_COPY_VALUE(&amp;dup, data);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;convert_to_double(&amp;dup);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;add_next_index_double(return_value, php_fahrenheit_to_celsius(Z_DVAL(dup)));<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_HASH_FOREACH_END();<br />
<br />
}<br />
<br />
注意<br />
<br />
你需要知道 Hashtable 的工作原理，并且必读 zval 章节<br />
<br />
在这里，C 语言那部分将更快，因为不需要在 C 循环中调用 PHP 函数，但是一个静态（可能由编辑器内联的）函数，它的运行速度快了几个数量级，并且运行低级 CPU 指令所需的时间也更少。这并不是说这个小小的演示函数在代码性能方面需要如此多的关注，只要记住为什么我们有时会使用 C 语言代替 PHP。<br />
<br />
管理引用<br />
现在让我们开始玩 PHP 引用。您已经从 zval 章节 了解到引用是在引擎中使用的一种特殊技巧。作为提醒，引用(我们指的是&amp;$php_reference)是分配给 zval的，存储在 zval 的容器中。<br />
<br />
所以，只要记住引用是什么以及它们的设计目的，就不难将它们处理成 PHP 函数。<br />
<br />
如果你的函数接受一个参数作为引用，你必须在参数签名中声明，并从你的 zend_parse_parameter() 调用中传递一个引用。<br />
<br />
让我们像往常一样，首先使用 PHP 示例：因此，现在C中，首先我们必须更改 arg_info：<br />
<br />
<br />
ZEND_BEGIN_ARG_INFO_EX(arginfo_fahrenheit_to_celsius, 0, 0, 1)<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZEND_ARG_INFO(1, fahrenheit)<br />
<br />
ZEND_END_ARG_INFO();<br />
<br />
\" 1 \"，中传递的 ZEND_ARG_INFO() 宏告诉引擎必须通过引用传递参数。<br />
<br />
然后，当我们接收到参数时，我们使用 z 参数类型，以告诉我们希望将它作为一个 zval 给出。当我们向引擎提示它应该向我们传递一个引用这一事实时，我们将获得对该 zval 的引用，也就是它的类型为is_reference时，我们只需要解引用它(即获取存储到 zval中的 zval)，并按原样修改它，因为引用的预期行为是您必须修改引用所携带的值：<br />
<br />
<br />
PHP_FUNCTION(fahrenheit_to_celsius)<br />
<br />
{<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;double result;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;zval *param;<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;if (zend_parse_parameters(ZEND_NUM_ARGS(), \"z\", ¶m) == FAILURE) {<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;}<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_DEREF(param);<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;convert_to_double(param);<br />
<br />
&nbsp;<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;ZVAL_DOUBLE(param, php_fahrenheit_to_celsius(Z_DVAL_P(param)));<br />
<br />
}<br />
<br />
完成。<br />
<br />
注意<br />
<br />
默认 return_value 值为 NULL。如果我们不碰它，函数将返回PHP的 NULL。<br />
<br />
</span> 
</p>','cover'=>'/attachment/2020/12/08/20120816243867825.png','covers'=>'','qr_code'=>NULL,'bg_color'=>NULL,'bg_pic'=>NULL,'url'=>NULL,'tags'=>'PHP函数,Hashtable','views'=>'0','index_show'=>'0','created_at'=>'1578194445','updated_at'=>'1610506170','status'=>'1','name'=>NULL,'title_size'=>NULL,'keywords'=>'ABB赢得牵引设备订单，以扩大美国和欧洲的铁路车队','user_id'=>'1']);
        
        /* 设置外键约束 */
        $this->execute('SET foreign_key_checks = 1;');
    }

    public function down()
    {
        $this->execute('SET foreign_key_checks = 0');
        /* 删除表 */
        $this->dropTable('{{%news}}');
        $this->execute('SET foreign_key_checks = 1;');
    }
}

