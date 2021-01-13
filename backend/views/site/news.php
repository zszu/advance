<?php

// use yii\helpers\Html;
use yii\grid\GridView;
use common\models\Poststatus;
use yii\helpers\Url;
use common\helpers\Html;
/* @var $this yii\web\View */
/* @var $searchModel common\models\PostSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '文章管理';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="post-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php  //echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('创建文章', ['edit'], ['class' => 'btn btn-success']) ?>
    </p>
   
   <?php //$searchModel = new common\models\Tag();?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
         'filterModel' => $searchModel,
        'columns' => [
           // ['class' => 'yii\grid\SerialColumn'],

            //'id',
            [
                'attribute'=>'id',
                'filter'=>false,
                'contentOptions'=>['width'=>'30px'],
            ],
            'title',
            'tags:ntext',
            [
                'attribute'=>'order_by',
                'label'=>'排序',
                'format'=>'raw',
                 'value' => function ($model, $key, $index, $column) {
                        return Html::input('text', 'order_by', $model->order_by,['class' => 'form-control','onblur'=>'rfSort(this)',]);
                    },
            ],
            [
                'attribute'=>'status',
                'class' => 'common\components\ListColumn',
                'list'=>Yii::$app->params['poststatus'],
                'filterInputOptions' => ['class' => 'form-control', 'prompt' => '全部']
   			 ],

          
             [
                'attribute'=>'updated_at',
                 'format'=>['date','php:Y-m-d H:i:s'],
                 'filter'=>false,
        	],

            [
                'class' => 'yii\grid\ActionColumn',
                'header' => '操作',
                // 'contentOptions' => [
                // 'width' => '200px',
                //  ],
                'template' => '{audit}',
                'buttons' => [
                    'audit' => function ($url, $model, $key) {
                        return Html::edit(['edit', 'id' => $model['id']]).'&nbsp;&nbsp;&nbsp;'.
                               Html::delete(['delete', 'id' => $model->id]);
                        // return Html::a('删除', ['post/delete', 'id' => $model->id],['data' => ['confirm' => '你确定要删除吗？'],['class'=>'btn btn-danger btn-sm']]).'&nbsp;&nbsp;&nbsp;'
                        // .Html::a( '编辑', ['post/edit', 'id' => $model->id]);  
                    },
                ],
            ],
        ],
    ]); ?>
</div>



<!--  <script type="text/javascript">
    // 删除提示
function rfDelete(obj, text) {
    
    if (!text) {
        text =  '请谨慎操作';
    }

    appConfirm("您确定要删除这条记录吗?", text, function (value){
        switch (value) {
            case "defeat":
                // window.location = $(obj).attr('href');
                break;
            default:
        }
    })
    //删除确认提示
function appConfirm(title, text, onConfirm){
    swal(title, {
        buttons: {
            cancel: "取消",
            defeat: '确定',
        },
        title: title,
        text: text,
        icon: "warning",
    }).then(onConfirm);
}

function rfText(text) {
    if (text) {
        return text;
    }

    return '小手一抖就打开了一个框';
}
}
</script> -->

<script type="text/javascript">
    function isInteger(obj){
        return typeof obj === 'number' && obj%1 === 0;      //是整数，则返回true，否则返回false

    }
    // 更新排序
    function rfSort(obj) {
        let id = $(obj).attr('data-id');

        if (!id) {
            id = $(obj).parent().parent().attr('id');
        }

        if (!id) {
            id = $(obj).parent().parent().attr('data-key');
        }
        sort = obj.value;
        if(isNaN(sort)){
            alert('排序只能为整数！');
            return false;
        }else{
            $.ajax({

                type:"GET",

                headers:{
                    '<?php echo \yii\web\Request::CSRF_HEADER; ?>' : '<?php echo Yii::$app -> request -> csrfToken; ?>' // _csrf验证
                },

                url:"<?= Url::to(['site/ajax-update'])?>",

                data:{"id":id,"order_by":sort},

                dataType:'json',

                async:false,

                success:function(data){
                    if(data.code==200){
                        // window.location.reload();
                    }
                    else{
                        alert(data.message);
                    }
                },
                error : function(){
                    alert("根本没有传过去");
                }

            });
        }
    }
</script>
