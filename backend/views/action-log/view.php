<?php
use \common\helpers\DebrisHelper;
use common\helpers\Html;
?>

<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
    <h4 class="modal-title">基本信息</h4>
</div>
<div class="modal-body">
    <table class="table">
        <tbody>
        <tr>
            <td>用户</td>
            <td>
                <?php
                if (empty($model->user_id)) {
                    echo '游客';
                }else{
                    echo $model->user->username;
                }
                ?>
            </td>
        </tr>

        <tr>
            <td>IP</td>
            <td><?= $model['created_ip']; ?></td>
        </tr>
        <tr>
            <td>地区</td>
            <td><?= DebrisHelper::long2ip($model['created_ip']) ?></td>
        </tr>
        <tr>
            <td>操作</td>
            <td>
                <?= Html::encode($model['content']) ?>
            </td>
        </tr>
        <tr>
            <td>操作时间</td>
            <td><?= date('Y-m-d H:i:s' , $model['created_at']);?></td>
        </tr>

        </tbody>
    </table>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
</div>