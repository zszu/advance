<?php

namespace common\widgets\ZKindEditor;

use common\widgets\ZKindEditor\assets\ZKindEditorAsset;
use Yii;
use yii\base\Widget;
use yii\base\InvalidConfigException;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\JsExpression;
use \yii\helpers\Json;

class ZKindEditor extends Widget
{
	const STYLE_SIMPLE = 1;
	const STYLE_ADAVANCED = 2;
	const STYLE_FULL = 3;
	
	public $style = self::STYLE_SIMPLE;
	public $options = [];
	public $model;
	public $attribute;
	public $name;
	public $userId;
	
	public function init() 
	{

        parent::init();

		if($this->name===null && !$this->hasModel()) {
			throw new InvalidConfigException("Either 'name', or 'model' and 'attribute' properties must be specified.");
		}
		
		if(!isset($this->options['id'])) {
			$this->options['id'] = $this->hasModel() ? Html::getInputId($this->model, $this->attribute) : $this->getId();
		}

        if (empty($this->userId)) {
            $this->userId = Yii::$app->user->id;
        }
	}
	
	public function run()
	{
		$view = $this->view;
		
		ZKindEditorAsset::register($view);

		
		$paramStr = Json::encode($this->getKEditorOptions(), 0);

		$js=<<<EOF
KindEditor.ready(function(K) {
	var editor_{$this->getId()} = K.create('#{$this->options['id']}', 
$paramStr
	);
});
EOF;
		$view->registerJs($js, $view::POS_END);

		return $this->renderTextarea();
	}
	
	protected function renderTextarea()
	{
		if($this->name === null) {

			return Html::activeTextarea($this->model, $this->attribute, $this->options);
		} else {
			return Html::textarea($this->name, '', $this->options);
		}
	}
	
	protected function getKEditorOptions(){

		$options = [
            // 图片上传
            'uploadJson' => Url::toRoute(['base/upload']),
            'fileMangerJson' => Url::toRoute(['base/manage']),
        ];


		if(!isset($options['filterMode'])) {
			$options['filterMode'] = true;
		}
		if(!isset($options['extraFileUploadParams']['_csrf'])) {
			$options['extraFileUploadParams']['_csrf'] = Yii::$app->request->csrfToken;
		}
		if(!isset($options['extraFileUploadParams']['_csrfZ'])) {
			$options['extraFileUploadParams']['_csrfZ'] = urlencode(serialize([
			    'uid' => $this->userId,
                'key' => md5($this->userId . date('Ymd') . Yii::$app->request->cookieValidationKey)
            ]));
		}
		
		if(!isset($options['items']) && $this->style != self::STYLE_FULL) {
			$options['items'] = $this->getItems();
		}

		$options['afterBlur'] = new JsExpression('function() {this.sync();}');
		return $options;
	}
	
	protected function getItems() {
	
		if($this->style == self::STYLE_SIMPLE) {

			return ['source', '|', 'cut', 'copy', 'paste', '|', 'justifyleft', 'justifycenter', 'justifyright',
				'justifyfull', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
				'italic', 'underline', 'strikethrough', 'removeformat', 'link', 'unlink', 'clearhtml', '|', 'quickformat', 'fullscreen'];
		} elseif($this->style == self::STYLE_ADAVANCED) {
			return ['source', '|',
				'undo', 'redo', '|', 
				'cut', 'copy', 'paste', 'plainpaste', '|', 
				'justifyleft', 'justifycenter', 'justifyright', 'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', '|', 
				'clearhtml', 'quickformat', 'selectall', '|', 
				'fullscreen', 
				'formatblock', 'fontname', 'fontsize', '|', 
				'forecolor', 'hilitecolor', 'bold', 'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 
				'image',  'multiimage', 'insertfile', 'table', 'hr', 'emoticons', 'link', 'unlink'];
		} else {
			return '';
		}
	}
	
	protected function hasModel()
	{
		return $this->model instanceof \yii\base\Model && $this->attribute !== null;
	}
}