<?php
namespace frontend\components;
use common\components\ArrayHelper;
use yii\base\Widget;
use yii\helpers\Url;
class TagsCloud extends Widget
{
    public $tags;
    public function init()
    {
        parent::init();
    }
    public function run(){
        $tagsCloudStr = '';
        $fontStyle= [
            "6"=>"danger",
            "5"=>"info",
            "4"=>"warning",
            "3"=>"primary",
            "2"=>"success",
        ];
        $tagArr = ArrayHelper::map($this->tags ,'title','title');
        foreach ($tagArr as  $tag){
            $weight = mt_rand(2,6);
            $url = Url::toRoute(['news/index','title'=>$tag]);
            $tagsCloudStr.='<a href="'.$url.'">'.
                ' <h'.$weight.' style="display:inline-block;"><span class="label label-'
                .$fontStyle[$weight].'">'.$tag.'</span></h'.$weight.'></a>';
        }
//        sleep(3);
        return $tagsCloudStr;
    }


}