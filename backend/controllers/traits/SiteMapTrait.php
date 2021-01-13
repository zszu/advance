<?php
namespace backend\controllers\traits;
use common\models\Seo;
use yii\helpers\Html;
use Yii;
use yii\helpers\Url;
use common\models\Type;
use common\models\News;

// 站点地图
Trait SiteMapTrait{

    //站点地图
    public function actionSitemap(){


        if(Yii::$app->request->isPost){
            $urlArr = $this->generateLinks();
            //分类
            $cagtegories = Type::find()
                ->select('id')
                ->where(['status' => 1,'name'=>'news'])
                ->column();
            foreach ($cagtegories as $cagtegory) {
                $urlArr[] = [Url::toRoute(['/site/news', 'type' => $cagtegory], true) , 0.9 , 'time'=>time()];
            }


            $key = 'controller.site.sitemap';
            $cache = Yii::$app->cache;
//            if ($cache->get($key) === false) {
            $urlArr = array_merge(self::fetchRules() , $urlArr);
            $this->generateSitemapTxt($urlArr);
            $this->generateSitemapXml($urlArr);
            $cache->set($key, 1, 3600);
//            }
            return $this->message("更新成功", $this->redirect(['sitemap']));
        }
        return $this->render('sitemap');

    }
    private function generateLinks(){
        $links = [];
        //单页链接
        $linksObj = Seo::find()->select('action')->where(['not in' ,'action' ,['site/index' , 'site/news-detail','site/product-detail']])->orderBy('order_by asc')->all();

        foreach ($linksObj as $linkObj){
            $links[] = [Url::toRoute('/'.$linkObj->action ,true) ,'0.9' ,'time'=>date('Y-m-d' , time()) ];
        }

        return $links;
    }
    //产品 新闻 详情路由
    private static function fetchRules()
    {

        $news = News::find()
            ->select('id,created_at')
            ->where(['status' => 1])
            ->all();
        foreach ($news as $new) {
            $result[] = [Url::toRoute(['/site/news-detail', 'id' => $new->id], true) , 'time'=> $new->created_at];
        }
        //为了首页排最前
        $res = [
            [Url::toRoute('/site/index' ,true) , '1.0' ,'time' => date('Y-m-d' , time())]
        ];
        foreach ($result as $item){
            if(isset($item['time'])){
                $res[] = [$item[0] , '0.8' ,'time' => $item['time']];
            }else{
                $res[] = [$item , '0.8' ,'time' => date('Y-m-d' , time())];
            }
        }

        return $res;
    }

    private function generateSitemapTxt($urls){
        $file = $_SERVER['DOCUMENT_ROOT']  . '/sitemap.txt';
        file_put_contents($file, '');
        foreach ($urls as $v) {
            file_put_contents($file, $v[0] . PHP_EOL, FILE_APPEND);
        }
    }
    private function generateSitemapXml($urls){
        $file = Yii::getAlias('@webroot/sitemap.xml');


        file_put_contents($file, '<?xml version="1.0" encoding="UTF-8" ?>' . PHP_EOL);
        foreach ($urls as $url) {
            $content[] = Html::tag('url', PHP_EOL . Html::tag('loc', $url[0]) . PHP_EOL . Html::tag('priority', $url[1]) . PHP_EOL .
                Html::tag('lastmod',  $url['time']) . PHP_EOL . Html::tag('changefreq', 'daily') . PHP_EOL .
                '<mobile:mobile type="pc,mobile"/> ' . PHP_EOL);
        }
        file_put_contents($file, Html::tag('urlset',
            PHP_EOL . implode(PHP_EOL, $content) . PHP_EOL , ['xmlns'=>'http://www.sitemaps.org/schemas/sitemap/0.9' , ' xmlns:mobile'=>'http://www.baidu.com/schemas/sitemap-mobile/1/'] ), FILE_APPEND);
    }

}
?>