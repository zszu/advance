<?php
namespace services\common;

use common\components\Service;
use common\models\common\ActionBehavior;

class ActionBehaviorService extends Service
{
    public function getList(){
       return  ActionBehavior::find()
                ->where(['status'=>1])
                ->asArray()
                ->all();
    }
    /**
     * 重组数据列表
     *
     * @return array
     */
    public function getAllData(){
        $list = $this->getList();
        $data = [];
        foreach ($list as $item){
            $key = [];
            $key[] = $item['app_id'];
            $key[] = $item['url'];
            $key[] = $item['action'];
            $data[implode('|', $key)] = $item;
        }
        return $data;
    }

}