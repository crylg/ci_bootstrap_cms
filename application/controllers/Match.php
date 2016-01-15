<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 竞技场
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/13
 * Time: 12:04
 */
class Match extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('match_model');
        $this->load->helper('date');
    }
    public function index()
    {
        $data["room_type_array"]=$this->match_model->getRoomArray();
        $this->overriew_out_put($data);

        $time_1_hours_data=$data;
        $this->overriew_out_put($time_1_hours_data,1);

        $time_24_hours_data=$data;
        $this->overriew_out_put($time_24_hours_data,24);

        $time_48_hours_data=$data;
        $this->overriew_out_put($time_48_hours_data,48);

        $time_72_hours_data=$data;
        $this->overriew_out_put($time_72_hours_data,72);

        $time_168_hours_data=$data;
        $this->overriew_out_put($time_168_hours_data,168);

        $time_360_hours_data=$data;
        $this->overriew_out_put($time_360_hours_data,360);

        $time_720_hours_data=$data;
        $this->overriew_out_put($time_720_hours_data,720);

        $this->load->view('templates/header', $data);
        $this->load->view('pages/overriew', $data);
        $this->load->view('pages/overriew', $time_1_hours_data);
        $this->load->view('pages/overriew', $time_24_hours_data);
        $this->load->view('pages/overriew', $time_48_hours_data);
        $this->load->view('pages/overriew', $time_72_hours_data);
        $this->load->view('pages/overriew', $time_168_hours_data);
        $this->load->view('pages/overriew', $time_360_hours_data);
        $this->load->view('pages/overriew', $time_720_hours_data);
        $this->load->view('templates/footer', $data);
    }

    /**
     * @param $d    传给页面前的数组变量引用
     * @param null $nearHours 查看最近多少小时内的数据
     */
    private  function overriew_out_put(&$d,$nearHours=null)
    {
        $d["total_list"]=$this->match_model->getRommTypeCountAndPrice(isset($nearHours)?getNearTimestampString($nearHours):null);
        $hourStr=$nearHours>=24?($nearHours/24)."天":$nearHours."小时";
        $hourStr=isset($nearHours)?$hourStr:"";
        $d["title"]="竞技房<b>".$hourStr."</b>概览--总共开过<b>".$d["total_list"]["total"]."</b>场";
        $d["canvasID"]="overriew_".$nearHours."_canvas";

        $str='';
        $infoStr='';
        foreach ($d['room_type_array'] as $rk => $rn)
        {
            $rk="total_".$rk;
            $cur_total=$d['total_list'][$rk];
            $infoStr.= "<span style='min-width: 182px;margin-right:0px;line-height:32px;float: left;display: block'>".$rn.":";
            $infoStr.= "<b>".$cur_total." </b> ";
            $infoStr.= "</span>";
            if($cur_total==0) continue;
            $str.="{";
            $str.= "value:".$cur_total;
            $str.= ',';
            $str.= "label:'$rn 占比:".ceil($cur_total/$d['total_list']["total"]*100)."%/场数'";
            $str.= ',';
            $str.="highlight: '#999999'";
            $str.= '},';
        }
        $d['str']=$str;
        $d['infoStr']=$infoStr;
    }
}