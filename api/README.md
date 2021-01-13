# api接口

* namespace 
    api\modules\v1
  
* controller
    http://当前域名/api/v1/(controller)/(action)
    v1 版本
    controller 控制器
    action 方法
* config main
    urlManager 
             'class' => 'yii\rest\UrlRule',
             'controller' => [
                 'v1/article',// 文章入口
                 'v1/goods',// 商品入口
             ],
             'pluralize' => false, // 是否启用复数形式，注意index的复数indices，开启后不直观
             'extraPatterns' => [
                 'GET,HEAD,OPTIONS search' => 'search',
                 'GET,HEAD,OPTIONS index' => 'index',
                 'GET,HEAD,OPTIONS view' => 'view',
                 'POST,OPTIONS create' => 'create',
                 'PUT,PATCH,OPTIONS update' => 'update',
                 'DELETE,OPTIONS delete' => 'delete',
         ] 

