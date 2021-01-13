<?php
namespace console\controllers;
use Yii;
use yii\console\Controller;
/**
 * 
 */

class HelloController extends Controller
{
	
	public function index($message="hello world"){
		echo $message . "\n";

        return ExitCode::OK;
	}
}
?>