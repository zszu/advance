<?php
Yii::setAlias('@common', dirname(__DIR__));
Yii::setAlias('@frontend', dirname(dirname(__DIR__)) . '/frontend');
Yii::setAlias('@backend', dirname(dirname(__DIR__)) . '/backend');
Yii::setAlias('@console', dirname(dirname(__DIR__)) . '/console');
Yii::setAlias('@api', dirname(dirname(__DIR__)) . '/api');

// 加载服务层
Yii::setAlias('@services', dirname(dirname(__DIR__)) . '/services');


// 本地资源目录绝对路径
Yii::setAlias('@attachment', dirname(dirname(__DIR__)) . '/web/attachment');

Yii::setAlias('@web2', dirname(dirname(__DIR__)) . '/web');

