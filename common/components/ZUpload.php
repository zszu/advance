<?php

namespace common\components;

use yii;
use yii\web\UploadedFile;

Class ZUpload {

    private $file;
    private $type = '';
    private $forcename = '';
    private $is_upload = true;
    private $attach = array();
    private $baseurl = '/attachment';
    private $rootpath = '';
    private $filename = '';
    private $savepath = '';

    public function __construct($file, $type='temp', $forcename='', $baseurl='') {
        if($file && ($file instanceof UploadedFile) && !$file->hasError) {
            $this->type = $type;
            $this->forcename = $forcename;
            $this->file = $file;
            $this->rootpath = Yii::getAlias('@attachment');
            if($baseurl) $this->baseurl = $baseurl;
        } else {
            //Yii::error(serialize($file), 'debug');
            $this->is_upload = false;
        }
    }
    private function get_target_dir() {
        $dir = $this->rootpath.strtr($this->baseurl, '/', DIRECTORY_SEPARATOR).DIRECTORY_SEPARATOR.trim($this->type);
        if(!is_dir($dir)) {
            $paths = explode('/', $this->baseurl);
            $dir = $this->rootpath;
            foreach($paths as $v) {
                if($v) {
                    $dir = $dir.DIRECTORY_SEPARATOR.$v;
                    $this->make_dir($dir);
                }
            }
            if(trim($this->type)) {
                $dir = $dir.DIRECTORY_SEPARATOR.trim($this->type);
                $this->make_dir($dir);
            }
        }
        return $dir;
    }
    private function get_target_filename() {
        if($this->forcename) {
            return $this->forcename;
        } else {
            return date('ymdHis').mt_rand(10000,99999);
        }
    }
    private function make_dir($dir, $index = true) {
        $res = true;
        if(!is_dir($dir)) {
            $res = @mkdir($dir, 0777);
            $index && @touch($dir.'/index.html');
        }
        return $res;
    }
    public function save() {
        if(!$this->is_upload) return false;

        $this->filename = $this->get_target_filename().'.'.$this->file->extension;
        $this->savepath = $this->get_target_dir().DIRECTORY_SEPARATOR.$this->filename;
        if(!$this->file->saveAs($this->savepath)) {
            $this->filename = '';
            $this->savepath = '';
            return false;
        } else {
            return true;
        }
    }
    public function get_path() {
        return $this->savepath;
    }
    public function get_url() {
        $url = '';
        if($this->filename) {
            $url = $this->baseurl.'/'.$this->type.'/'.$this->filename;
        }
        return $url;
    }
}
