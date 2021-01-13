<?php

namespace common\components;

use yii;
use yii\helpers\Url;
use yii\helpers\Html;
use app\common\models\Message;
class Helper
{

    public static function cutStr($string, $length, $dot = ' ...')
    {
        if (strlen($string) <= $length) {
            return $string;
        }

        $pre = chr(1);
        $end = chr(1);
        $string = str_replace(array('&amp;', '&quot;', '&lt;', '&gt;'), array($pre . '&' . $end, $pre . '"' . $end, $pre . '<' . $end, $pre . '>' . $end), $string);

        $strcut = '';

        $n = $tn = $noc = 0;
        while ($n < strlen($string)) {

            $t = ord($string[$n]);
            if ($t == 9 || $t == 10 || (32 <= $t && $t <= 126)) {
                $tn = 1;
                $n++;
                $noc++;
            } elseif (194 <= $t && $t <= 223) {
                $tn = 2;
                $n += 2;
                $noc += 2;
            } elseif (224 <= $t && $t <= 239) {
                $tn = 3;
                $n += 3;
                $noc += 2;
            } elseif (240 <= $t && $t <= 247) {
                $tn = 4;
                $n += 4;
                $noc += 2;
            } elseif (248 <= $t && $t <= 251) {
                $tn = 5;
                $n += 5;
                $noc += 2;
            } elseif ($t == 252 || $t == 253) {
                $tn = 6;
                $n += 6;
                $noc += 2;
            } else {
                $n++;
            }

            if ($noc >= $length) {
                break;
            }

        }
        if ($noc > $length) {
            $n -= $tn;
        }

        $strcut = substr($string, 0, $n);

        $strcut = str_replace(array($pre . '&' . $end, $pre . '"' . $end, $pre . '<' . $end, $pre . '>' . $end), array('&amp;', '&quot;', '&lt;', '&gt;'), $strcut);

        $pos = strrpos($strcut, chr(1));
        if ($pos !== false) {
            $strcut = substr($strcut, 0, $pos);
        }
        return $strcut . ($strcut != $string ? $dot : '');
    }

    public static function random($length, $numeric = 0)
    {
        $seed = base_convert(md5(microtime() . $_SERVER['DOCUMENT_ROOT']), 16, $numeric ? 10 : 35);
        $seed = $numeric ? (str_replace('0', '', $seed) . '012340567890') : ($seed . 'zZ' . strtoupper($seed));
        if ($numeric) {
            $hash = '';
        } else {
            $hash = chr(rand(1, 26) + rand(0, 1) * 32 + 64);
            $length--;
        }
        $max = strlen($seed) - 1;
        for ($i = 0; $i < $length; $i++) {
            $hash .= $seed{mt_rand(0, $max)};
        }
        return $hash;
    }

    public static function isLocalFile($file)
    {
        $data = parse_url($file);
        return !isset($data['host']);
    }

    public static function unlink($uploadFile)
    {
        if (self::isLocalFile($uploadFile)) {
            @unlink(Yii::getAlias('@webroot' . $uploadFile));
        }
    }

    public static function hiddenMiddle($text, $left = 3, $right = 3)
    {
        $length = mb_strlen($text);
        if ($length <= $left + $right) {
            $left = 1;
            $right = 1;
        }
        if ($length > $left + $right) {
            return mb_substr($text, 0, $left) . str_repeat('*', $length - $left - $right) . ($right ? mb_substr($text, -1 * $right) : '');
        }
        return $text;
    }

    public static function hiddenChineseName($name)
    {
        $name = trim($name);
        if (empty($name)) {
            return '';
        }

        $length = mb_strlen($name);
        if ($length > 1) {
            return mb_substr($name, 0, 1) . str_repeat('*', $length - 1);
        } else {
            return $name;
        }
    }

    public static function isItemActive($item, $route)
    {
        if (isset($item['activeUrls']) && is_array($item['activeUrls'])) {
            foreach ($item['activeUrls'] as &$url) {
                $url = strtolower(trim($url, '/'));
            }
            if (in_array(strtolower($route), $item['activeUrls'])) {
                return true;
            }
        }

        if (isset($item['url']) && is_array($item['url']) && !strcasecmp(trim($item['url'][0], '/'), $route)) {
            unset($item['url']['#']);
            if (count($item['url']) > 1) {
                foreach (array_splice($item['url'], 1) as $name => $value) {
                    if (!isset($_GET[$name]) || $_GET[$name] != $value) {
                        return false;
                    }
                }
            }
            return true;
        }

        if (isset($item['items']) && is_array($item['items'])) {
            foreach ($item['items'] as $item) {
                $return = self::isItemActive($item, $route);
                if ($return) {
                    return true;
                }
            }
        }
        return false;
    }

    public static function cny($amount)
    {
        $amount = round($amount, 2);
        if ($amount <= 0 || $amount > 999999999) {
            return '金额不在范围内';
        }

        mb_internal_encoding("UTF-8");
        $numChars = ["零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖"];
        $bitChars = ["分", "角", "元", "拾", "佰", "仟", "万", "拾", "佰", "仟", "亿"];
        $str = str_replace(array_keys($numChars), $numChars, $amount);
        $length = mb_strlen($str);
        $dotPos = mb_strpos($str, '.');
        $dotLen = $dotPos ? $length - $dotPos : 0;
        $result = '';
        for ($i = 0; $i < $length; $i++) {
            $char = mb_substr($str, $i, 1);
            if ($char == '.') {
                $dotLen--;
                continue;
            } else {
                $index = $length - $i + 1 - $dotLen;
                $result .= $char . $bitChars[$length - $i + 1 - $dotLen];
            }
            //echo $result . "\n";
        }
        switch (mb_substr($result, -1)) {
            case '分':
            case '角':
                break;
            case '元':
                $result .= '整';
                break;
            default:
                $result .= '元整';
        }
        $result = str_replace(['零万', '零仟', '零佰', '零拾', '零元', '零角', '零零', '零元', '零万'], ['万', '零', '零', '零', '元', '', '', '元', '万'], $result);
        if (mb_substr($result, 0, 1) == '元') {
            $result = mb_substr($result, 1);
        }

        return $result;
    }

    public static function amountColumns($amount)
    {
        $amount = str_replace('.', '', sprintf('%.2f', $amount));
        $length = strlen($amount);
        $result = '';
        for ($i = 0; $i < 7; $i++) {
            $result .= '<td>' . ($i + $length >= 7 ? substr($amount, $i - 7, 1) : '') . '</td>';
        }
        return $result;
    }

    public static function emailName($email)
    {
        $email = trim($email);
        return substr($email, 0, strpos($email, '@'));
    }

    public static function chineseDate($dateStr)
    {
        if (empty($dateStr)) {
            return '';
        }
        return date(' Y 年 m 月 d 日', strtotime($dateStr));
    }

    public static function chineseDatetime($dateStr)
    {
        if (empty($dateStr)) {
            return '';
        }
        return date(' Y年m月d日 H:i:s', strtotime($dateStr));
    }

    public static function magicInput($type, $index, $label, $name, $checked, $value)
    {
        $methodList = ['radio','checkbox'];
        if (!in_array($type, $methodList)) {
            return '';
        }
        return Html::$type($name, $checked, ['class' => 'magic-' . $type, 'value' => $value, 'id' => $name . '-' . $index]) .
            Html::label($label, $name . '-' . $index);
    }

    public static function magicRadio($index, $label, $name, $checked, $value)
    {
        return static::magicInput('radio', $index, $label, $name, $checked, $value);
    }

    public static function magicCheck($index, $label, $name, $checked, $value)
    {
        return static::magicInput('checkbox', $index, $label, $name, $checked, $value);
    }
    //删除图片
    public static function ImageDelete($id,$table_name,$field,$model){
        $model = $model::findOne($id);
        if($model->$field){
            if(!file_exists(Yii::getAlias("@web").substr($model->$field,1))){
                return false;
            }
            unlink(Yii::getAlias("@web").substr($model->$field,1));

            $model->updateAttributes([$field=>'']);
            return true;
        }
        return false;
    }

    //返回百分比
    public static function percentage($x,$y){
        if($x==0||$y == 0){
            return sprintf('%.2f%%',0);
        }
        return sprintf('%.2f%%',$x/$y*100);
    }
    /**
     * 获取文件夹大小
     *
     * @param string $dir 根文件夹路径
     * @return int
     */
    public static function getDirSize($dir)
    {
        $handle = opendir($dir);
        $sizeResult = 0;
        while (false !== ($FolderOrFile = readdir($handle)))
        {
            if ($FolderOrFile != "." && $FolderOrFile != "..")
            {
                if (is_dir("$dir/$FolderOrFile"))
                {
                    $sizeResult += self::getDirSize("$dir/$FolderOrFile");
                }
                else
                {
                    $sizeResult += filesize("$dir/$FolderOrFile");
                }
            }
        }

        closedir($handle);
        return $sizeResult;
    }
    // 文件下载

    public static function downLoadsFile($filename){
        $filepath = $filename;
        if (!file_exists($filepath)){
            header("Content-type: text/html; charset=utf-8");
            echo "File not found!";
            // exit;
        } else {
            $file = fopen($filepath,"r");
            Header("Content-type: application/octet-stream");
            Header("Accept-Ranges: bytes");
            Header("Accept-Length: ".filesize($filepath));
            Header("Content-Disposition: attachment; filename=".$filename);
            echo fread($file, filesize($filepath));
            fclose($file);
            return true;
        }
    }


    //发送邮箱内容的格式
    public static function EmailTemplate($Arr = []){
        $str = "姓名:".$Arr['name']."<br>手机号:".$Arr['phone']."<br>内容:".$Arr['content']."";
        return $str;
    }
    //处理域名
    public static function cleanDomain($q,$w=0){ //整理域名 $w=1过滤www.前缀 $w=0不过滤
        $q = htmlspecialchars(strtolower(trim($q)));
        if(substr($q,0,7) == "http://" || substr($q,0,8) == "https://" || substr($q,0,6) == "ftp://"){
            $q = str_replace("http:/","",$q);
            $q = str_replace("https:/","",$q);
            $q = str_replace("ftp:/","",$q);
        }
        if(substr($q,0,4) == "www." && $w==1) {
            $q = str_replace("www.","",$q);
        }
        $q = trim($q,"/");
        return $q;
    }
    /**
     * @param $filePath //下载文件的路径
     * @param int $readBuffer //分段下载 每次下载的字节数 默认1024bytes
     * @param array $allowExt //允许下载的文件类型
     * @return void
     */
    public function downloadFile($filePath, $readBuffer = 1024, $allowExt = ['jpeg', 'jpg', 'peg', 'gif', 'zip', 'rar', 'txt'])
    {
        //检测下载文件是否存在 并且可读
        if (!is_file($filePath) && !is_readable($filePath)) {
            return false;
        }
        //检测文件类型是否允许下载
        $ext = strtolower(pathinfo($filePath, PATHINFO_EXTENSION));
        if (!in_array($ext, $allowExt)) {
            return false;
        }
        //设置头信息
        //声明浏览器输出的是字节流
        header('Content-Type: application/octet-stream');
        //声明浏览器返回大小是按字节进行计算
        header('Accept-Ranges:bytes');
        //告诉浏览器文件的总大小
        $fileSize = filesize($filePath);//坑 filesize 如果超过2G 低版本php会返回负数
        header('Content-Length:' . $fileSize); //注意是'Content-Length:' 非Accept-Length
        //声明下载文件的名称
        header('Content-Disposition:attachment;filename=' . basename($filePath));//声明作为附件处理和下载后文件的名称
        //获取文件内容
        $handle = fopen($filePath, 'rb');//二进制文件用‘rb’模式读取
        while (!feof($handle) ) { //循环到文件末尾 规定每次读取（向浏览器输出为$readBuffer设置的字节数）
            echo fread($handle, $readBuffer);
        }
        fclose($handle);//关闭文件句柄
        exit;

    }
    /**
     * 无限级分类
     * @param Object
     * @return array
     */
    //无限级分类
    public static function cateGroy($_data, $_pid = 0, $_level = 1) {
        static $_new_data = [];

        foreach ($_data as $_key => $_value) {
            if ($_value['up_id'] == $_pid) {

                $_value['level'] = $_level;
                $_new_data[] = $_value;
                unset($_data[$_key]);
                self::cateGroy($_data, $_value['id'], $_level + 1);
            }
        }

        return $_new_data;
    }


}