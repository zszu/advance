<?php

/* @var $this \yii\web\View */
/* @var $content string */

use common\helpers\DebrisHelper;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use \yii\helpers\Url;

use \frontend\assets\LayerAsset;
AppAsset::register($this);
LayerAsset::register($this);

$menuItems = [
];

foreach ($this->params['typesObj'] as $typeObj){
    $temp = ['label'=>$typeObj->title,'url'=>['news/index','type'=>$typeObj->id]];
    array_push($menuItems , $temp);
}

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'zszu',
        'brandUrl' => Url::toRoute(['news/index']),
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    $menuItems;
    if (Yii::$app->user->isGuest) {
        $menuItems[] = ['label' => '注册', 'url' => ['/site/signup']];
        $menuItems[] = ['label' => '登录', 'url' => ['/site/login']];
    } else {
        $menuItems[] = '<li>'
            . Html::beginForm(['/site/logout'], 'post')
            . Html::submitButton(
                '退出 (' . Yii::$app->user->identity->username . ')',
                ['class' => 'btn btn-link logout']
            )
            . Html::endForm()
            . '</li>'
            .Html::tag('li',Html::a('个人中心',Url::toRoute(['user/user-center'])));
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Alert::widget() ?>

        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>
<!--footer-->

<div class="footer">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <p class="pull-left">Copyright&copy; zszu 2020</p>
            </div>

            <div class="col-md-4">
                <p>备案号：<a href="http://www.beian.miit.gov.cn/" target="_blank" rel="nofollow"><?= $this->context->params['site_icp'];?></a></p>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="ajaxModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 80%">
        <div class="modal-content">
            <div class="modal-body">
                <?= Html::img('@web/static/images/loading.gif', ['class' => 'loading']) ?>
                <span>加载中... </span>
            </div>
        </div>
    </div>
</div>

<div id="rfModalBody" class="hide">
    <div class="modal-body">
        <?= Html::img('@web/static/images/loading.gif', ['class' => 'loading']) ?>
        <span>加载中... </span>
    </div>
</div>





<?php
list($fullUrl, $pageConnector) = DebrisHelper::getPageSkipUrl();


$this->registerJs(<<<JS
    //页面跳转
    $(function () {
        $(".pagination").append('<span>&nbsp;&nbsp;前往&nbsp;<input  type="text" class="skip-page-input" style="width:100px;"/>&nbsp;页</span>');
        $('.skip-page-input').blur(function() {
            var p = $(this).val();
          
            if (!p) {
                return;
            }
            if (parseInt(p) > 0) {
                location.href = "{$fullUrl}" + "{$pageConnector}page="+ parseInt(p);
            } else {
                $(this).val('');
                  layer.alert('请输入正确的页码', {
                    skin: 'layui-layer-molv' //样式类名
                    ,closeBtn: 0
                });
            }
        })
    });
 
JS
);?>


<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
