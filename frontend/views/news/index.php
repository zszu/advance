<?php
use \yii\helpers\Url;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

?>

<div class="container">

    <div class="row">

        <div class="col-md-9">

            <ol class="breadcrumb">
                <li><a href="<?= Url::toRoute(['site/index'])?>">首页</a></li>
                <li>文章列表</li>
            </ol>

            <?= ListView::widget([
                'id'=>'postList',
                'dataProvider'=>$dataProvider,
                'itemView'=>'_list_news',//子视图,显示一篇文章的标题等内容.
                'layout'=>'{items} {pager}',
                'pager'=>[
//                    'maxButtonCount'=>10,
                    'nextPageLabel'=>'下一页',
                    'prevPageLabel'=>'上一页',
                ],
            ])?>

        </div>


        <?= $this->render('/site/_right')?>

    </div>

</div>
