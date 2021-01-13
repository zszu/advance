<?php
use yii\helpers\Url;
use  \common\widgets\Alert;
use common\helpers\DebrisHelper;
use common\helpers\Html;
$this->beginContent('@app/views/layouts/base.php');

$action = Yii::$app->controller->action->id;
?>


<?= $content;?>



<?php $this->endContent();?>
