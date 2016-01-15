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
    $d = ceil($cle/3600/24);
    $h = ceil(($cle%(3600*24))/3600);  //%取余
    $m = ceil(($cle%(3600*24))/60%60);
    $s = ceil(($cle%(3600*24))%60);
    return $d.'天'.$h.'小时'.$m.'分'.$s.'秒';
//    $date=floor((strtotime($enddate)-strtotime($startdate))/86400);
//    $hour=floor((strtotime($enddate)-strtotime($startdate))%86400/3600);
//    $minute=floor((strtotime($enddate)-strtotime($startdate))%86400/60);
//    var_dump((strtotime($enddate)-strtotime($startdate))%86400);
//    $second=floor((strtotime($enddate)-strtotime($startdate))%86400%60);
//    return $date."天". $hour."小时".$minute."分钟".$second."秒";
}
/**
 * @param $hour 距现在多少小时前
 * @return string 返回human时间
 */
function getNearTimestampString($hour)
{
    return unix_to_human(time()-$hour*60*60,TRUE,NULL);
}