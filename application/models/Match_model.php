<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * * User: leiguan
 * Date: 2016/1/13
 * Time: 17:44
 */
class Match_model extends CI_Model
{
    private $ddz_gdf;
    private $gdf_room;
    private $room_array;
    public function __construct()
    {
        parent::__construct();
        $this->db=$this->load->database("default",TRUE);
        $this->ddz_gdf=$this->load->database("ddz_gdf",TRUE);
    }

    /**
     * return key=>id  v=>name
     */
    public function getRoomArray()
    {
        if( isset($this->room_array)) return $this->room_array;
        $this->room_array=array();
        foreach ($this->getGdfRomm() as $value)
        {
            $this->room_array[$value['id']]=$value['name'];
        }
        //var_dump($this->room_array);
        return $this->room_array;
    }
    /**
     * 参考文本:玩家$id玩自由房一共$count次,一共赚取$sum金币
     * 得到指定玩家赢亏总和/出现次数
     * return sum   count
     * */
    public function getTotalPriceAndTotalCountByPlayerID($id)
    {
        $str="SELECT
        SUM(CASE player1 WHEN $id THEN score1 ELSE 0 END) as s1sum,
        SUM(CASE player2 WHEN $id THEN score2 ELSE 0 END) as s2sum,
        SUM(CASE player3 WHEN $id THEN score3 ELSE 0 END) as s3sum,
        count(CASE player1 WHEN $id THEN 0 ELSE null END) as s1count,
        count(CASE player2 WHEN $id THEN 0 ELSE null END) as s2count,
        count(CASE player3 WHEN $id THEN 0 ELSE null END) as s3count
        FROM `match_round`";
        $query = $this->db->query($str);
        $record=$query->row();

        $sum=$record->s1sum+$record->s2sum+$record->s3sum;
        $count=$record->s1count+$record->s2count+$record->s3count;
        return array('sum'=>$sum,'count'=>$count);
        #得到指定玩家赢亏总和/出现次数
    }
    //得到room类型表
    private function getGdfRomm()
    {
        if(isset($this->gdf_room)) return $this->gdf_room;

        $q=$this->ddz_gdf->get('match');
        $result=$q->result_array();
        $this->gdf_room= $result;
        return $this->gdf_room;
    }
    /**
     * 得到所有房间的总次数和各个房间开启次数
     * return
     * array
    'total' => string '490983' (length=6)
    'total_10101' => string '154668' (length=6)
    'total_10102' => string '184292' (length=6)
    'total_10103' => string '4467' (length=4)
    'total_10104' => string '172' (length=3)
    'total_10201' => string '2' (length=1)
    'total_10202' => string '0' (length=1)
    'total_10203' => string '0' (length=1)
    'total_10204' => string '0' (length=1)
    'total_10205' => string '0' (length=1)
    'total_10206' => string '0' (length=1)
    'total_20101' => string '48936' (length=5)
    'total_20102' => string '93479' (length=5)
    'total_20103' => string '4434' (length=4)
    'total_20104' => string '477' (length=3)
    'total_20201' => string '9' (length=1)
    'total_20202' => string '0' (length=1)
    'total_20203' => string '0' (length=1)
    'total_20204' => string '0' (length=1)
    'total_20205' => string '0' (length=1)
    'total_20206' => string '0' (length=1)
    'total_30101' => string '18' (length=2)
    'total_30102' => string '4' (length=1)
    'total_30103' => string '0' (length=1)
    'total_30104' => string '0' (length=1)
    'total_30201' => string '0' (length=1)
    'total_30202' => string '0' (length=1)
    'total_30203' => string '0' (length=1)
    'total_30204' => string '0' (length=1)
    'total_30205' => string '0' (length=1)
    'total_30206' => string '0' (length=1)
     * */
    public function getRommTypeCountAndPrice($time=null)
    {
        //$sql=" SELECT ";
        $sql=" SELECT count(*) as total ";
        foreach ($this->getRoomArray() as $key => $value)
        {
            $sql.=", ";
            $sql.=" count(CASE WHEN room=$key THEN 0 ELSE null END) as total_$key ";
        }
        $sql.=" FROM `match_round` ";
        if($time)  $sql.=" where datatime>'".$time."'";
        $query = $this->db->query($sql);
        $record=$query->row_array();
        return ($record) ;
    }
    //得到指定玩家所有房间的次数和金币数
    public function getRommTypeCountAndPriceByPlayerID()
    {

    }
    public function getAllCount()
    {
        $sql=" SELECT count(*) as total FROM `match_round`";
        $query = $this->db->query($sql);
        return ($query->row()->total);
    }
}