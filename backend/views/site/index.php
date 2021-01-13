<?php

/* @var $this yii\web\View */

$this->title = '首页';
?>

<div class="row">
    <div class="col-sm-6 col-lg-3">
        <div class="card bg-primary">
            <div class="card-body clearfix">
                <div class="pull-right">
                    <p class="h6 text-white m-t-0">今日收入</p>
                    <p class="h3 text-white m-b-0">102,125.00</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-currency-cny fa-1-5x"></i></span> </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card bg-danger">
            <div class="card-body clearfix">
                <div class="pull-right">
                    <p class="h6 text-white m-t-0">用户总数</p>
                    <p class="h3 text-white m-b-0"><?= $user_total;?></p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-account fa-1-5x"></i></span> </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card bg-success">
            <div class="card-body clearfix">
                <div class="pull-right">
                    <p class="h6 text-white m-t-0">新增文章</p>
                    <p class="h3 text-white m-b-0"><?= $new_news_count;?></p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-tooltip-text fa-1-5x"></i></span> </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-lg-3">
        <div class="card bg-purple">
            <div class="card-body clearfix">
                <div class="pull-right">
                    <p class="h6 text-white m-t-0">新增留言</p>
                    <p class="h3 text-white m-b-0"><?= $new_comment_count;?> 条</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-comment-outline fa-1-5x"></i></span> </div>
            </div>
        </div>
    </div>
</div>

<div class="row">

    <div class="col-lg-6">
        <?= \common\widgets\echarts\Echats::widget([
            'title' => '注册用户',
            'type' => 'bar',
            'labels' => ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
            'datasets'=>[
                [
                    'label'=> "注册用户",
                    'borderWidth'=> 1,
                    'borderColor'=> 'rgba(0,0,0,0)',
                    'backgroundColor'=> 'rgba(51,202,185,0.5)',
                    'hoverBackgroundColor'=>"rgba(51,202,185,0.7)",
                    'hoverBorderColor'=> "rgba(0,0,0,0)",
                    'data'=> [2500, 1500, 1200, 3200, 4800, 3500, 1500]
                ],
            ],
        ]);?>
    </div>
    <div class="col-lg-6">
        <?= \common\widgets\echarts\Echats::widget([
                'title' => '交易历史记录',
                'labels' => ['2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014'],
                'datasets'=>[
                    [
                        'label'=> '交易资金',
                        'data'=> [20, 25, 40, 30, 45, 40, 55, 40, 48, 40, 42, 50],
                        'borderColor'=> '#358ed7',
                        'backgroundColor'=> 'rgba(53, 142, 215, 0.175)',
                        'borderWidth'=> 1,
                        'fill'=> false,
                        'lineTension'=> 0.5
                    ],
                ],
        ]);?>
    </div>
    <div class="col-lg-6">
        <?= \common\widgets\echarts\Echats::widget([
            'title' => '面积图',
            'labels' => ['2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014'],
            'datasets'=>[
                [
                    'label'=> '交易资金',
                    'data'=> [20, 25, 40, 30, 45, 40, 55, 40, 48, 40, 42, 50],
                    'borderColor'=> '#358ed7',
                    'backgroundColor'=> 'rgba(53, 142, 215, 0.175)',
                    'borderWidth'=> 1,
//                    'fill'=> false,
                    'lineTension'=> 0.5
                ],
            ],
        ]);?>
    </div>
</div>

<div class="row">

    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4>配置信息</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive" style="margin: 0 auto;text-align: center;">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <td>IP：</td>
                            <td><?= $_SERVER['SERVER_ADDR'] ?? '';?></td>
                        </tr>
                        <tr>
                            <td>现在时间：</td>

                            <td id="current-time"><?= date('Y年m月d日 H:i:s') . '今天是' . \common\components\AppHelper::getWeek();?></td>
                        </tr>
                        <tr>
                            <td>服务器系统及PHP版本：</td>
                            <td><?= PHP_OS.' / PHP v'.PHP_VERSION;?></td>
                        </tr>
                        <tr>
                            <td>服务器软件：</td>
                            <td><?= $_SERVER['SERVER_SOFTWARE'];?></td>
                        </tr>
                        <tr>
                            <td>服务器 MySQL 版本：</td>
                            <td><?= Yii::$app->db->createCommand('SELECT VERSION()')->queryScalar();?></td>
                        </tr>
                        <tr>
                            <td>文件上传最大：</td>
                            <td><?= ini_get('upload_max_filesize');?></td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>

<?php
$this->registerJs(<<<JS
    $(document).ready(function(e) {
        //时间
        window.setInterval(currentTime,1000);
       
    })
    function currentTime(){
        var time=document.getElementById("current-time");
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hour = date.getHours();
        var minutes = date.getMinutes();
        var seond = date.getSeconds();
        var week = date.getDay();
        var timestr = year + "年" + check(month) +"月"+ check(day) +"日"+ check(hour) +":"+ check(minutes) +":"+ check(seond) + "  今天是" + getWeek(week);
        time.innerHTML = timestr;
    };
    function check(val) {
        return val < 10 ? "0"+val : val;
    };
    function getWeek(week) {
        switch (week) {
            case 1 :
                return '周一';
                break;
            case 2 :
                return '周二';
                break;
            case 3 :
                return '周三';
                break;
            case 4 :
                return '周四';
                break;
            case 5 :
                return '周五';
                break;
            case 6 :
                return '周六';
                break;
            case 0 :
                return '周日';
                break;
        }
    }
JS
);?>


