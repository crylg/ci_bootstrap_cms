<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/11
 * Time: 11:34
 */
class Data_model extends CI_Model
{
    //private $tmpSql=" goods_price<300 ";
    private $tmpSql=" 0=0 ";
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    //得到指定用户总充值次数
    public function getCountPriceByPlayerID($id)
    {
        $str ="SELECT COUNT(goods_price) as goods_price,`account_id` ,error_message FROM `pay_bill` where error_message='ok' AND account_id=".$id;
        $query = $this->db->query($str);
        $record=$query->row();
        return isset($record)?$record->goods_price:null;
    }
    //得到指定用户总充值金额
    public function getSumPriceByPlayerID($id)
    {
        $str ="SELECT sum(goods_price) as goods_price,`account_id` ,error_message FROM `pay_bill` where error_message='ok' AND account_id=".$id;
        $query = $this->db->query($str);
        $record=$query->row();
        return isset($record)?$record->goods_price:null;
    }
    //得到充值总玩家数
    public function getPayPlayerCount()
    {
        $str = "SELECT DISTINCT `account_id` ,error_message FROM `pay_bill` where error_message='ok' and  $this->tmpSql";
        $query = $this->db->simple_query($str);
        return $query->num_rows;
    }
    //得到充值总笔数
    public function getPayCount()
    {
        $str = "SELECT count(*) as num FROM `pay_bill` where error_message='ok' and  $this->tmpSql";
        $query = $this->db->query($str);
        return $query->row()->num;
    }
    //得到充值总笔数
    public function getPayTotalPrice()
    {
        $str = "SELECT SUM(goods_price) as num FROM `pay_bill` where error_message='ok' and  $this->tmpSql";
        $query = $this->db->query($str);
        return $query->row()->num;
    }
    //得到玩家激活的时间human
    public function getActiveTimeByPlayerID($id)
    {
        $str ="SELECT datatime FROM `account_register` WHERE account_id=".$id;
        $query = $this->db->query($str);
        $record=$query->row();
        return isset($record)?$record->datatime:null;
    }
    //得到玩家第一次充值的时间human
    public function getFirstPayTimeByPlayerID($id,$sort="asc")
    {
        $str ="SELECT datatime,error_message FROM `pay_bill` WHERE account_id=$id and error_message='ok' order by datatime $sort LIMIT 1";
        $query = $this->db->query($str);
        $record=$query->row();
        return isset($record)?$record->datatime:'未充值过';
    }
    //得到玩家最近一次充值的时间human
    public function getLastPayTimeByPlayerID($id)
    {
        return $this->getFirstPayTimeByPlayerID($id,"desc");
    }
    //得到玩家所有的充值记录
    public function getPayByPlayerID($id)
    {
        $str = "SELECT * FROM `pay_bill` WHERE account_id=".$id."  order by error_message='ok' desc ,datatime desc";
        $query = $this->db->query($str);
        return $query->result_array();
    }
    //得到所有充值的玩家数组
    public function getPayPlayerArray($offset=0,$num=999999,$sort='datatime'){
        $str ="SELECT SUM(`goods_price`) AS `goods_price`, `account_id`, COUNT(`account_id`)as num ,MAX(datatime) as last_time ,MIN(datatime)as first_time
            FROM `pay_bill` where error_message='ok' AND  $this->tmpSql
            GROUP BY `account_id` order by error_message='ok' desc ,$sort DESC limit $num,$offset ";
        $query= $this->db->query($str);
        return  $query->result_array();
        //无法实现  COUNT(`account_id`)功能,弃用!!!!
        //SELECT SUM(`goods_price`) AS `goods_price`, `account_id` FROM `pay_bill` GROUP BY `account_id`
//        $this->db->select_sum('goods_price');
//        $this->db->select('account_id');
//        $this->db->select_sum('goods_price');
//        $this->db->group_by('account_id');
//
//        return ( $this->db->get('pay_bill')->result_array()); // return value
    }


    public function get_news($slug = FALSE)
    {
        if ($slug === FALSE)
        {
            $query = $this->db->get('pay_bill');
            return $query->result_array();
        }

        $query = $this->db->get_where('pay_bill', array('slug' => $slug));
        return $query->row_array();
    }
}