<?php
namespace common\widgets\provinces;


use yii\web\Controller;
use yii\web\Response;
use Yii;
use common\helpers\Html;

class ProvincesController extends Controller
{
    /**
     * 首页
     */
    public function actionIndex($pid, $type_id = 0)
    {
        Yii::$app->response->format = Response::FORMAT_JSON;

        $str = "-- 请选择市 --";
        $model = ProvincesHelper::getCityList($pid);
        if ($type_id == 1 && !$pid) {
            return Html::tag('option', '-- 请选择市 --', ['value' => '']);
        } elseif ($type_id == 2 && !$pid) {
            return Html::tag('option', '-- 请选择区 --', ['value' => '']);
        } elseif ($type_id == 2 && $model) {
            $str = "-- 请选择区 --";
        }

        $str = Html::tag('option', $str, ['value' => '']);
        foreach ($model as $value => $name) {
            $str .= Html::tag('option', Html::encode($name), ['value' => $value]);
        }

        return $str;
    }


}