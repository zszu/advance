<?php
namespace frontend\controllers;
class UserController extends BaseController
{
    public function actionUserCenter(){
        return $this->render('user-center');
    }
}