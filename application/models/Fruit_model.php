<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: leiguan
 * Date: 2016/1/27
 * Time: 14:25
 */
class Fruit_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function getFruitRecordArrayByChannel($offset=0,$num=999999,$sort='datatime')
    {
        $str = "SELECT SUM(`goods_price`) AS `goods_price`, `account_id`, COUNT(`account_id`)as num ,MAX(datatime) as last_time ,MIN(datatime)as first_time
            FROM `pay_bill` where error_message='ok' AND  $this->tmpSql
            GROUP BY `account_id` order by error_message='ok' desc ,$sort DESC limit $num,$offset ";
        $query = $this->db->query($str);
		if(!$query) return null;
        return $query->result_array();
    }

    /***
     * @param string $channel
     * @param int $startTime
     * @param int $endTime
     * return
     * object(stdClass)[22]
      public 'chipMoney' => string '6020000' (length=7)
      public 'getMoney' => string '4600000' (length=7)
     */
    public function getFruitBudgetArrayByChannel($channel='internal_dev',$startTime=0,$endTime=99999999999)
    {
        $sql= "SELECT count(*) as count, sum(sum_chip) as chipMoney,sum(in_come)as getMoney FROM `fruit_slots_record` WHERE `user_channel` ='$channel'  and start_time>=$startTime and start_time<=$endTime";
        $query= $this->db->query($sql);
		if(!$query) return null;
        $result=($query->row());
        return $result;
    }

    /**
     * 得到详细内容
     * object(stdClass)[23]
    public 'account_id' => string '110073' (length=6)
    public 'count' => string '6' (length=1)
    public 'chipMoney' => string '6020000' (length=7)
    public 'getMoney' => string '4600000' (length=7)
     * @param string $channel
     * @param int $startTime
     * @param int $endTime
     * @return mixed
     */
    public function getFruitBudgetInfoArrayByChannel($channel='internal_dev',$startTime=0,$endTime=99999999999)
    {
        $sql= "SELECT distinct account_id ,count(*) as count, sum(sum_chip) as chipMoney,sum(in_come)as getMoney FROM `fruit_slots_record` WHERE `user_channel` ='$channel'  and start_time>=$startTime and start_time<=$endTime GROUP BY account_id";

        $query= $this->db->query($sql);
		if(!$query) return null;
        $result=($query->result_array());
        //echo isset($result);
        return $result;
    }

}