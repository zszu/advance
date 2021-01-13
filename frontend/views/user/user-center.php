<?php
use yii\helpers\Url;
?>
<div class="container">
    <ol class="breadcrumb">
        <li><a href="<?= Url::toRoute(['site/news'])?>">首页</a></li>
        <li>个人中心</li>
    </ol>
    <div class="row">
        <div class="col-md-3">
          <ul>
              <li>
                  <a href="<?= Url::toRoute(['user/user-info'])?>">个人资料</a>
              </li>
              <li>
                  <a href="<?= Url::toRoute(['user/user-news'])?>">发布的文章</a>
              </li>
              <li>
                  <a href="<?= Url::toRoute(['user/user-comment'])?>">评论</a>
              </li>
          </ul>
            zuo
        </div>
        <div class="col-md-6">
            zhong
        </div>
        <div class="col-md-3">
            you
        </div>
    </div>
</div>
