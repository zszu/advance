<?php
use yii\helpers\Url;
use  \common\widgets\Alert;
use common\helpers\DebrisHelper;
use common\helpers\Html;
$this->beginContent('@app/views/layouts/base.php');

$action = Yii::$app->controller->action->id;
?>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">

        <?= $this->render('_left');?>
        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 后台首页 </span>
                    </div>
                    <div class="top-right"><a href="<?= \common\models\Param::getValue('site_domain');?>" target="_blank">前台首页</a></div>

                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="<?= Yii::$app->user->identity->avatar;?>" alt="<?= Yii::$app->user->identity->username;?>" />
                                <span><?= Yii::$app->user->identity->username;?>  <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="<?= Url::toRoute(['main/user-info'])?>"><i class="mdi mdi-account"></i> 个人信息</a> </li>
                                <li> <a href="<?= Url::toRoute(['main/user-reset-pwd'])?>"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>

                                <li> <a href="<?= Url::toRoute(['base/clear-cache']);?>"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                <li class="divider"></li>
                                <li> <a href="<?= Url::toRoute(['site/logout']);?>"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                                     <span class="inverse">
                                        <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                                        <label for="site_theme_1"></label>
                                      </span>
                                      <span>
                                         <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                                         <label for="site_theme_2"></label>
                                       </span>
                                    <span>
                                        <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                                        <label for="site_theme_3"></label>
                                    </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                                    <span class="inverse">
                                        <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                                        <label for="logo_bg_1"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                                        <label for="logo_bg_2"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                                        <label for="logo_bg_3"></label>
                                     </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                                        <label for="logo_bg_4"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                                        <label for="logo_bg_5"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                                        <label for="logo_bg_6"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                                        <label for="logo_bg_7"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                                        <label for="logo_bg_8"></label>
                                    </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                                      <span class="inverse">
                                        <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                                        <label for="header_bg_1"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                                        <label for="header_bg_2"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                                        <label for="header_bg_3"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                                        <label for="header_bg_4"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                                        <label for="header_bg_5"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                                        <label for="header_bg_6"></label>
                                      </span>
                                      <span>
                                        <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                                        <label for="header_bg_7"></label>
                                      </span>
                                    <span>
                                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                                    <label for="header_bg_8"></label>
                                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                                    <span class="inverse">
                                        <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                                        <label for="sidebar_bg_1"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                                        <label for="sidebar_bg_2"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                                        <label for="sidebar_bg_3"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                                        <label for="sidebar_bg_4"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                                        <label for="sidebar_bg_5"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                                        <label for="sidebar_bg_6"></label>
                                      </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                                        <label for="sidebar_bg_7"></label>
                                    </span>
                                    <span>
                                        <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                                        <label for="sidebar_bg_8"></label>
                                    </span>
                                </li>
                            </ul>
                        </li>
                        <!--切换主题配色-->
                    </ul>

                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--      提示-->
        <?= \backend\widgets\notify\Notify::widget();?>

        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <!-- //右侧内容-->
            <div class="container-fluid">
                <?php if($action != 'index'):?>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                             <?= $content;?>
                        </div>
                    </div>
                </div>
                <?php else:?>
                    <?= $content;?>
                <?php endif;?>
            </div>

        </main>
        <div class="sidebar-footer" style="width: 40%;margin: 0 auto" >
            <p class="copyright">Copyright &copy; 2020.All rights reserved. zu </p>
        </div>
        <!--End 页面主要内容-->
    </div>

</div>

<!--ajax模拟框加载-->
<div class="modal fade" id="ajaxModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <?= Html::img('@web/images/loading.gif', ['class' => 'loading']) ?>
                <span>加载中... </span>
            </div>
        </div>
    </div>
</div>
<!--ajax大模拟框加载-->
<div class="modal fade" id="ajaxModalLg" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <?= Html::img('@web/images/loading.gif', ['class' => 'loading']) ?>
                <span>加载中... </span>
            </div>
        </div>
    </div>
</div>
<!--ajax最大模拟框加载-->
<div class="modal fade" id="ajaxModalMax" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 80%">
        <div class="modal-content">
            <div class="modal-body">
                <?= Html::img('@web/images/loading.gif', ['class' => 'loading']) ?>
                <span>加载中... </span>
            </div>
        </div>
    </div>
</div>
<!--初始化模拟框-->
<div id="rfModalBody" class="hide">
    <div class="modal-body">
        <?= Html::img('@web/images/loading.gif', ['class' => 'loading']) ?>
        <span>加载中... </span>
    </div>
</div>
<script>
    function isInteger(obj){
        return typeof obj === 'number' && obj%1 === 0;      //是整数，则返回true，否则返回false
    }
    // 更新排序
    function rfSort(obj) {
        let id = $(obj).attr('data-id');

        if (!id) {
            id = $(obj).parent().parent().attr('id');
        }

        if (!id) {
            id = $(obj).parent().parent().attr('data-key');
        }
        sort = obj.value;
        if(isNaN(sort)){
            alert('排序只能为整数！');
            window.location.reload();
            return false;
        }else{
            $.ajax({

                type:"GET",

                url:"<?= Url::to(['ajax-update'])?>",

                data:{"id":id,"order_by":sort},

                dataType:'json',

                async:false,

                success:function(data){
                    if(data.code==200){
                        window.location.reload();
                    }
                    else{
                        alert(data.message);
                    }
                },
                error : function(){
                    alert("修改失败");
                }

            });
        }
    }
    function zDelete(obj){
        $.confirm({
            title: '警告',
            content: '确定要删除该项？',
            type: 'orange',
            buttons: {
                confirm: {
                    text: '确认',
                    btnClass: 'btn-primary',
                    action: function(){
                        window.location = $(obj).attr('href');
                    }
                },
                cancel: {
                    text: '取消',
                }
            },
        });
    }


    //更新状态
    function changeStatus(obj) {
        id = $(obj).parent().parent().attr('data-key');
        status = $(obj).children('input').attr('data-value');
        $.get("<?= Url::toRoute(['ajax-update'])?>", {
                id:id,
                status:status
            },
            function (data) {
                if(data.code == 200){
                    window.location.reload();
                }else{
                    alert(data.message);
                }
            },

        );
    }

</script>

<?php
list($fullUrl, $pageConnector) = DebrisHelper::getPageSkipUrl();
$this->registerJs(<<<JS
    //页面跳转
    $(function () {
        $(".pagination").append('&nbsp;&nbsp;前往&nbsp;<input  type="text" class="skip-page-input" style="width:100px;"/>&nbsp;页');
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
   
    // 小模拟框清除
    $('#ajaxModal').on('hide.bs.modal', function (e) {
        if (e.target == this) {
            $(this).removeData("bs.modal");
            $('#ajaxModal').find('.modal-content').html($('#rfModalBody').html());
        }
    });
    // 大模拟框清除
    $('#ajaxModalLg').on('hide.bs.modal', function (e) {
        if (e.target == this) {
            $(this).removeData("bs.modal");
            $('#ajaxModalLg').find('.modal-content').html($('#rfModalBody').html());
        }
    });
    // 最大模拟框清除
    $('#ajaxModalMax').on('hide.bs.modal', function (e) {
        if (e.target == this) {
            $(this).removeData("bs.modal");
            $('#ajaxModalMax').find('.modal-content').html($('#rfModalBody').html());
        }
    });

    // 小模拟框加载完成
    $('#ajaxModal').on('shown.bs.modal', function (e) {
        autoFontColor()
    });
    // 大模拟框加载完成
    $('#ajaxModalLg').on('shown.bs.modal', function (e) {
        autoFontColor()
    });
    // 最模拟框加载完成
    $('#ajaxModalMax').on('shown.bs.modal', function (e) {
        autoFontColor()
    });
    function autoFontColor() {
    $("body").find("label").each(function(i, data){
        if ($(data).find('input').length > 0) {
            $(data).attr('style', 'color:#636f7a');
        }
    })
}
JS
);?>



<?php $this->endContent();?>
