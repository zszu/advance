<?php if (!empty($menus)) { ?>
    <?= $this->render('menu-tree', [
        'menus' => $menus,
        'level' => 1,
    ]) ?>
<?php } ?>