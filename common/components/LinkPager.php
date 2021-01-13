<?php

namespace common\components;

use yii\helpers\Html;

class LinkPager extends \yii\widgets\LinkPager
{

    public $nextPageCssClass = 'next';
    public $prevPageCssClass = 'prev';
    public $options = ['class' => 'pagination'];
    public $firstPageLabel = '首页';
    public $lastPageLabel = '尾页';
    public $prevPageLabel = '&lsaquo;';
    public $nextPageLabel = '&rsaquo;';
    public $activePageCssClass = 'active';


//    //跳转
//    public $skipPage = true;


    protected function renderPageButtons()
    {
        $pageCount = $this->pagination->getPageCount();
        if ($pageCount < 2 && $this->hideOnSinglePage) {
            return '';
        }

        $buttons = [];
        $currentPage = $this->pagination->getPage();

        // first page
        $firstPageLabel = $this->firstPageLabel === true ? '1' : $this->firstPageLabel;
        if ($firstPageLabel !== false) {
            $buttons[] = $this->renderPageButton($firstPageLabel, 0, $this->firstPageCssClass, $currentPage <= 0, false);
        }

        // prev page
        if ($this->prevPageLabel !== false) {
            if (($page = $currentPage - 1) < 0) {
                $page = 0;
            }
            $buttons[] = $this->renderPageButton($this->prevPageLabel, $page, $this->prevPageCssClass, $currentPage <= 0, false);
        }

        // internal pages
        list($beginPage, $endPage) = $this->getPageRange();
        for ($i = $beginPage; $i <= $endPage; ++$i) {
            $buttons[] = $this->renderPageButton($i + 1, $i, '', false, $i == $currentPage);
        }

        // next page
        if ($this->nextPageLabel !== false) {
            if (($page = $currentPage + 1) >= $pageCount - 1) {
                $page = $pageCount - 1;
            }
            $buttons[] = $this->renderPageButton($this->nextPageLabel, $page, $this->nextPageCssClass, $currentPage >= $pageCount - 1, false);
        }

        // last page
        $lastPageLabel = $this->lastPageLabel === true ? $pageCount : $this->lastPageLabel;
        if ($lastPageLabel !== false) {
            $buttons[] = $this->renderPageButton($lastPageLabel, $pageCount - 1, $this->lastPageCssClass, $currentPage >= $pageCount - 1, false);
        }

        //skip page
//        if( $this->skipPage !== false){
//            $buttons[] = '&nbsp;&nbsp;前往&nbsp;'.Html::textInput('','',['class'=>'skip-page-input','style'=>'width:100px;']).'&nbsp;页';
//        }


        return Html::tag('div', implode("\n", $buttons), $this->options);
    }

    protected function renderPageButton($label, $page, $class, $disabled, $active)
    {
        $options = ['class' => $class === '' ? null : $class];
        if ($active) {
            Html::addCssClass($options, $this->activePageCssClass);
        }
        if ($disabled) {
            Html::addCssClass($options, $this->disabledPageCssClass);

            return Html::tag('li', Html::tag('span', $label), $options);
        }

        return Html::tag('li' , Html::a($label, $this->pagination->createUrl($page)) , $options);
    }

}