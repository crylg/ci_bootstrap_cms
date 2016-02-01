<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: leiguan
 * Date: 2016/1/27
 * Time: 14:06
 */
class Fruit extends CI_Controller
{
    private $_userdata;
    public function __construct()
    {
        parent::__construct();
        $this->_userdata=$this->session->get_userdata();

        if(!isset($this->_userdata[SESSION_LOGINED_IN]))
        {
            echo '该网页禁止游客访问,请先登陆!!<br />三秒后自动跳转至登陆页面';
            $targetUrl=site_url("partner/login");
            header("Refresh:3;url=$targetUrl");
            exit();
        }
        $this->load->model("fruit_model");
    }
    public function index()
    {
        $data["title"]="运营商-".$this->_userdata[SESSION_CHANNEL]."信息展示页";
        $outlineDays=array();
        array_push($outlineDays,$this->getOutline($this->_userdata[SESSION_CHANNEL],0,time()));//今天
        array_push($outlineDays,$this->getOutline($this->_userdata[SESSION_CHANNEL],getTodayStartPointUnix(),time()));//今天
        array_push($outlineDays,$this->getOutline($this->_userdata[SESSION_CHANNEL],getDayStartPointUnix(-1),getTodayStartPointUnix()));//昨天
        array_push($outlineDays,$this->getOutline($this->_userdata[SESSION_CHANNEL],getDayStartPointUnix(-2),getDayStartPointUnix(-1)));//前天
        array_push($outlineDays,$this->getOutline($this->_userdata[SESSION_CHANNEL],getDayStartPointUnix(-3),getDayStartPointUnix(-2)));//三天前
        $data["outlineDays"]=$outlineDays;
        $this->load->view('pages/partner/header', $data);
        $this->load->view('pages/partner/info', $data);
        $this->load->view('templates/footer', $data);
        var_dump($data);
    }
    private function getOutline($channel='internal_dev',$startTime=0,$endTime=99999999999)
    {
        $tmpOutline=$this->fruit_model->getFruitBudgetArrayByChannel($channel,$startTime,$endTime);
        $tmpInfo=$this->fruit_model->getFruitBudgetInfoArrayByChannel($channel,$startTime,$endTime);
        return array(
            //大概
            'distHumanDate'=>diffUnix($startTime,getTodayStartPointUnix()>$endTime?getTodayStartPointUnix():$endTime),
            'chipMoney'=>isset($tmpOutline->chipMoney)?$tmpOutline->chipMoney:0,
            'getMoney'=>isset($tmpOutline->getMoney)?$tmpOutline->getMoney:0,
            'count'=>isset($tmpOutline->count)?$tmpOutline->count:0,
            'players_info'=>$tmpInfo
        );
    }

}