<?php
namespace common\helpers;

use yii\web\NotFoundHttpException;

class UploadHelper
{

    private $path = 'data/upload/';  //保存路径
    private $fullPath = '';  //全路径
    private $name = 'file'; //input 中 的 name 默认 file

    private $originName;  //源文件名
    private $tmpName; //临时文件名
    private $israndname = true;           //设置是否随机重命名文件， false不随机
    private $newName; //新文件名
    private $type;  //文件类型
    private $extension;  //文件扩展名
    private $size;  //文件大小

    private $maxsize = 10*1024*1024;  //上传大小 kb 默认 10Mb

    private $errorNum = 0;   //错误号
    private $errorMsg = '';  //错误信息

    private $successFilePath = [];  //成功后 返回 文件路径

    private $allowType = ['jpg','jpeg','gif','webp','gif','png','mp4','mp3','avi','psd','flv','f4v','rmvb']; //设置限制上传文件的类型


    //上传文件
    public function upload($name , $path = 'data/upload/'){
        //全路径
        $this->name = $name;
        //全路径
        $this->fullPath = $_SERVER['DOCUMENT_ROOT'] . '/' .$path;
        $this->path = $path;

        if(!$this->checkFilePath()){
            $this->errorMsg =  $this->getError();
            return false;
        }
        //保存文件
        $this->save();
        if($this->errorNum){
            return $this->getError();
        }else{
            //单个文件 返回 url 多个返回 url 数组
            return count($this->successFilePath) > 1 ? $this->successFilePath : $this->successFilePath[0];
        }
    }

    //base 64 上传文件
    public function saveBase64($data , $extend , $path){

        //全路径
        $this->fullPath = $_SERVER['DOCUMENT_ROOT'] . '/' .$path;
        $this->path = $path;
        $this->extension = $extend;

        $this->setNewFileName();

        if(!$this->checkFilePath()){
            $this->errorMsg =  $this->getError();
            return false;
        }
        //返回的 url
        $res =  $this->resultPath();

        if(file_put_contents($this->fullPath . $this->newName, base64_decode($data))){
            return $res;
        }else{
            $this->errorNum = -3;
            return $this->getError();
        }
    }

    //获取视频 封面  需要 安装 ffmpeg
    public function getVideoPoster()
    {
        //视频 保存路径
        $videoPath = $this->getPath() . '.' . $this->extension;
        $this->extension = 'jpg';

        $this->newName = date('ymdHis') . mt_rand(10000, 99999) .  '_poster'. '.'  .$this->extension;

        //视频封面路径
        $url = $this->fullPath .$this->newName;
        $tmpPosterFilePath = sys_get_temp_dir() . DIRECTORY_SEPARATOR . $this->newName;

        //截取 视频 封面 的 临时路径
        FfmpegHelper::imageResize($videoPath, $tmpPosterFilePath, 0);


        if (file_exists($tmpPosterFilePath)) {
            $stream = fopen($tmpPosterFilePath, 'r+');
            $result = file_put_contents($url, $stream);

            if (!$result) {
                throw new NotFoundHttpException('文件写入失败');
            }
            if (is_resource($stream)) {
                fclose($stream);
            }

            $imgInfo = getimagesize($url);
            $width = $imgInfo[0] ?? 0;
            $height = $imgInfo[1] ?? 0;

            unlink($url); // delete tmp file
            return $this->resultPath() . $this->extension;

        }
    }

    private function save(){
        $file = $_FILES[$this->name];
        /* 将文件上传的信息取出赋给变量 */
        $name = $file['name'];
        $type = $file['type'];
        $tmpName = $file['tmp_name'];
        $size = $file['size'];

        if(is_array($file['name'])){
            return $this->saveFiles($name, $type , $tmpName , $size);
        }else{
            return $this->saveFile($name, $type , $tmpName , $size );
        }

    }

    //单个文件
    private function saveFile($name , $type , $tmpName , $size){

        //设置文件信息
        if($this->initFile($name , $type , $tmpName , $size)){

            if($this->checkFileType() && $this->checkFileSize()) {

                //设置新文件名
                $this->setNewFileName();
                //移动文件
                if ($this->moveFile()) {
                    return true;
                } else {
                    return false;
                }
            }else{
                return false;
            }

        }
    }
    //多个文件
    private function saveFiles($name, $type , $tmpName , $size){

        foreach ($name as $k => $item){

            $this->saveFile($name[$k] , $type[$k] , $tmpName[$k] ,$size[$k]);
        }
    }
    //设置单个 文件 信息
    private function initFile($name , $type , $tmpName , $size){
        $this->originName = $name;
        $this->type = $type;
        $this->tmpName = $tmpName;
        $this->size = $size;

        $nameArr = explode('.' , $name);

        $this->extension = end($nameArr);

        return true;
    }


    //验证文件 路径
    private function checkFilePath(){

        if(!$this->fullPath){
            $this->errorNum = -5;
            return false;
        }
        if(!file_exists($this->fullPath) || !is_writeable($this->fullPath)){
            if(!@mkdir($this->fullPath , 0755)){
                $this->errorNum = -4;
                return false;
            }
        }
        return true;

    }
    //验证 文件类型
    private function checkFileType(){

        if(!in_array(strtolower($this->extension) , $this->allowType)){
            $this->errorNum = -1;
            return false;
        }
        return true;
    }
    //验证文件大小
    private function checkFileSize(){
        if($this->size > $this->maxsize){
            $this->errorNum = -2;
            return false;
        }
        return true;
    }
    /* 设置上传出错信息 */
    private function getError() {
        $str = "上传的文件<font color='red'>{$this->originName}</font>时出错 :";
        switch ($this->errorNum) {
            case 4: $str .= "没有文件被上传"; break;
            case 3: $str .= "文件只有部分被上传"; break;
            case 2: $str .= "上传的文件的大小超过了HTML表单中MAX_FILE_SIZE选项指定的值"; break;
            case 1: $str .= "上传的文件超过了php.ini中upload_max_filesize选项限制的值"; break;
            case -1: $str .= "未允许类型"; break;
            case -2: $str .= "文件过大,上传的文件不能超过{$this->maxsize}个字节"; break;
            case -3: $str .= "上传失败"; break;
            case -4: $str .= "建立存放上传文件目录失败，请重新指定上传目录 error : $this->path"; break;
            case -5: $str .= "必须指定上传文件的路径"; break;
            default: $str .= "未知错误";
        }
        return $str.'<br>';
    }
    //设置新文件名称
    private function setNewFileName(){
        $this->newName = $this->israndname ? $this->getRandomName() : $this->originName;
    }

    //获取随机文件名
    private function getRandomName(){
        return  date('ymdHis') . mt_rand(10000, 99999) . '.' . $this->extension;
    }
    //文件 全路径
    private function getPath(){
        $path = rtrim($this->path, '/').'/';
        $path .= $this->newName;
        return $path;
    }
    //返回保存路径
    private function resultPath(){
        return  'http://' . $_SERVER['HTTP_HOST'] . '/' . $this->path .  $this->newName;
    }
    //移动文件
    private function moveFile(){

        if(!$this->errorNum){

            if (@move_uploaded_file($this->tmpName, $this->fullPath . '/' .$this->newName)) {
                // 主机 + 路径
                $this->successFilePath[] = $this->resultPath();
                return true;
            }else{
                $this->errorNum = -3;
                return false;
            }
        }else{
            return false;
        }
    }

}