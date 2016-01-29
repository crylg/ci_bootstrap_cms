<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/12
 * Time: 14:55
 */
//计算两个时间差的方法
function diffUnix($startdate,$enddate)
{
    $cle =  abs($startdate - $enddate); //得出时间戳差值
    $d = floor($cle/3600/24);
    $h = floor(($cle%(3600*24))/3600);  //%取余
    $m = floor(($cle%(3600*24))/60%60);
    $s = floor(($cle%(3600*24))%60);
    $str='';
    if($m>0) {
        $str= $m . '分'.$str;
        if($h>0) {
            $str= $h . '小时'.$str;
            if($d>0) {
                $str= $d . '天'.$str;
            }
        }
    }
    if($m==0 && $s==0&& $h==0)
    {
        switch($d)
        {
            case 1: return "昨天";break;
            case 2: return "前天";break;
            case 3: return "3天前";break;
            default: break;
        }
    };
    if($d>100) return '所有';
    return $str.$s.'秒';
}
/**
 * @param $hour 距现在多少小时前
 * @return string 返回human时间
 */
function getNearTimestampString($hour)
{
    return unix_to_human(time()-$hour*60*60,TRUE,NULL);
}

/**
 * @return int 获得今天凌晨时间戳
 */
 function getTodayStartPointUnix()
{
    return strtotime(date('Y-m-d'));
}

/**
 * 获取距今几天前(后)凌晨的时间戳
 */
function getDayStartPointUnix($day)
{
   return strtotime(date('Y-m-d',strtotime($day.' day')));
}
/**
 * @return int 获得今天凌晨到现在已过时间戳
 */
 function getTodayPassedUnix()
{
    return time()-strtotime(date('Y-m-d'));
}
/**
 * 加密密码
 * @param $password
 * @return string
 */
function getEncryptionPassword($password)
{
    $pw=md5(PASSWORD_FLAG.$password);
    return $pw;
}