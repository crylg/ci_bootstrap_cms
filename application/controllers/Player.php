<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/11
 * Time: 18:16
 */
class Player extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("match_model");
        $this->load->model("room_model");
        $this->load->model("player_model");
        $this->load->model("data_model");
        $this->load->helper('date');
        $this->load->helper('lg');
    }
    public function index($id=null)
    {
        isset($id)?null:exit("无此账号,请输入类似网址,http://127.0.0.1/index.php/player/index/127232");
        $data["total_price"]=$this->data_model->getSumPriceByPlayerID($id);
        $data["count_price"]=$this->data_model->getCountPriceByPlayerID($id);
        $data["activeTime"]=$this->data_model->getActiveTimeByPlayerID($id);//激活时间
        $data["firstPayTime"]=$this->data_model->getFirstPayTimeByPlayerID($id);
        $data["lastPayTime"]=$this->data_model->getLastPayTimeByPlayerID($id);
        $data["diffUnix"]=diffUnix(human_to_unix($data["activeTime"]), human_to_unix($data["firstPayTime"]));
        $data['pay_list']=$this->data_model->getPayByPlayerID($id);
        $data['title'] = '账号ID:'.$id.'的详细信息';
        $data["info"]=$this->player_model->playerInfo($id);


        //chart info
        $room_info=($this->match_model->getTotalPriceAndTotalCountByPlayerID($id));
        $match_info=$this->room_model->getTotalPriceAndTotalCountByPlayerID($id);
        $data['room_sum']=$room_info['sum'];
        $data['room_count']=$room_info['count'];

        $data['match_sum']=$match_info['sum'];
        $data['match_count']=$match_info['count'];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/side', $data);
        $this->load->view('pages/player', $data);
        $this->load->view('pages/pay_by_id', $data);
        $this->load->view('templates/footer');
    }

}