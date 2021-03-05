<?php
namespace backend\controllers;

use Yii;
use yii\helpers\ArrayHelper;
use jianyan\migration\components\MigrateCreate;


class MigrateController extends BaseController
{
   

    public function actionIndex()
    {
        $tables = Yii::$app->db->createCommand('SHOW TABLE STATUS')->queryAll();
        $tables = array_map('array_change_key_case' , $tables);


        if (Yii::$app->request->post()) {

            $path = Yii::getAlias('@database')  . '/backup/migrations/';

            /** @var MigrateCreate $migrate */
            $migrate = Yii::createObject([
                'class' => MigrateCreate::class,
                'migrationPath' => $path
            ]);
            $data = ArrayHelper::getValue(Yii::$app->request->post() , 'tables');
            if(!$data){
                return $this->message('请选择迁移的表' , $this->redirect(['index']) , 'error');
            }
            foreach ($data as $v) {
                $migrate->create($v);
            }
            return $this->message('数据迁移创建成功' , $this->redirect(['index']));
        }
        $tables = ArrayHelper::map($tables , 'name' , 'name');
        return $this->render('index' , [
            'tables' =>$tables,
        ]);
    }

}