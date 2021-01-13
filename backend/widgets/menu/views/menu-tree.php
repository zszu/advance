<?php
use yii\helpers\Url;
$controller = Yii::$app->controller->id;

$level = 1;
foreach ($menus as $item) { ?>
    <li class="nav-item  <?= !empty($item['-']) ? 'nav-item-has-subnav' : '';?>  <?= $item['controller'] && in_array($controller , $item['controller']) ? 'active open' : ''?>">

        <a href="<?= !$item['fullUrl'] ? 'javascript:void(0)' : Url::toRoute($item['fullUrl']); ?>">
            <?php if($item['icon']){?>
                <i class="mdi mdi-<?= $item['icon'];?>"></i>
            <?php }?>
            <?= $item['title']; ?>
        </a>
        <?php if (!empty($item['-'])) { ?>
            <ul class="nav nav-subnav">
                <?= $this->render('menu-tree', [
                    'menus' => $item['-'],
                    'level' => $level + 1,
                ]) ?>
            </ul>
        <?php } ?>
    </li>
<?php } ?>


