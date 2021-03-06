<?php
namespace common\widgets;
use Yii;
use common\helpers\Html;
class ActiveField extends \yii\widgets\ActiveField
{
    /**
     * @param array $options
     * @return \backend\widgets\ActiveField
     */
    public function imgInput($options = [])
    {
        if( $this->template === "{label}\n<div class=\"col-sm-{size}\">{input}\n{error}</div>\n{hint}" ) {
            $this->template = "{label}\n<div class=\"col-sm-{size} image\">{input}<div style='position: relative'>{img}{actions}</div>\n{error}</div>\n{hint}";
        }
        $attribute = $this->attribute;
        $src = key_exists('value', $options) ? $options['value'] : $this->model->$attribute;
        /** @var $cdn \feehi\cdn\TargetAbstract */
//        $cdn = Yii::$app->cdn;
//        $baseUrl = $cdn->host;
        $baseUrl = 'localhost';
        $nonePicUrl = isset($options['default']) ? $options['default'] : $baseUrl . 'static/images/none.jpg';
        if ($src != '') {
            if( strpos($src, $baseUrl) !== 0 ){
                $temp = parse_url($src);
                $src = (! isset($temp['host'])) ? $cdn->getCdnUrl($src) : $src;
            }
            $delete = Yii::t('app', 'Delete');
            $this->parts['{actions}'] = "<div onclick=\"$(this).parents('.image').find('input[type=hidden]').val(0);$(this).prev().attr('src', '$nonePicUrl');$(this).remove()\" style='position: absolute;width: 50px;padding: 5px 3px 3px 5px;top:5px;left:6px;background: black;opacity: 0.6;color: white;cursor: pointer'><i class='fa fa-trash' aria-hidden='true'> {$delete}</i></div>";
        }else{
            $src = $nonePicUrl;
            $this->parts['{actions}'] = '';
        }
        if (!isset($options['class'])) {
            $options['class'] = 'pretty-file img-responsive';
        }else{
            $options['class'] .= ' pretty-file img-responsive';
        }
        !isset($options['text']) && $options['text'] = Yii::t("app", 'Choose Image');
        $this->parts['{img}'] = Html::img($src, array_merge($options, ["nonePicUrl"=>$nonePicUrl]));
        return parent::fileInput($options); // TODO: Change the autogenerated stub
    }
}