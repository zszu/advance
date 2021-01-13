<?php
use \yii\helpers\Url;
use yii\widgets\ListView;

?>

<div class="container">

    <div class="row">

        <div class="col-md-9">

            <ol class="breadcrumb">
                <li>首页</li>
            </ol>

            <?= ListView::widget([
                'id'=>'postList',
                'dataProvider'=>$dataProvider,
                'itemView'=>'/news/_list_news',//子视图,显示一篇文章的标题等内容.
                'layout'=>'{items} {pager}',
                'pager'=>[
                    'nextPageLabel'=>'下一页',
                    'prevPageLabel'=>'上一页',
                ],
            ])?>

        </div>

        <?= $this->render('/site/_right')?>

    </div>

</div>
