<?php
use common\helpers\Html;
use \common\components\ArrayHelper;
use \backend\assets\AppAsset;

AppAsset::register($this);

$theme = [
      'body'=>['data-theme'  => 'dark'],
];


$dataTheme = ArrayHelper::setValue($theme , 'body.data-theme' , 'dark');
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
<!--    <body data-theme="dark" data-headerbg="color_2" data-logobg="color_2" data-sidebarbg="color_2">-->
    <body data-theme="<?= $dataTheme;?>">
    <?php $this->beginBody() ?>
        <?= $content;?>
    <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>

