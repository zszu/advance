<?php
namespace frontend\components;
use common\helpers\Html;
use yii\base\Widget;
use Yii;

class RecentComment extends Widget
{
    public $comments;
    public function init()
    {
        parent::init();
    }

    public function run()
    {

        $commentStr = '';

       foreach ($this->comments as $comment){
           $url = Yii::$app->urlManager->createUrl(['news/detail','id'=>$comment->news_id]);
           $commentStr .= '<div class="post">'.
               '<div class="title">'.
               '<p style="color:#777777;font-style:italic;">'.
               nl2br($comment->content).'</p>'.
               '<p class="text"> <span class="glyphicon glyphicon-user" aria-hidden="ture">
							</span> '.Html::encode($comment->user->username ?? '').'</p>'.
               '<p style="font-size:8pt;color:bule">
							《<a href="'.$url.'">'.Html::encode($comment->news->title).'</a>》</p>'.
               '<hr></div></div>';
       }
        return $commentStr;
    }
}