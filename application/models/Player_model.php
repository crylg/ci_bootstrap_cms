<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/11
 * Time: 18:26
 */
class Player_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();

        $this->db=$this->load->database('ddz_game',TRUE);

    }
    public function playerInfo($id)
    {
        //$str="SELECT * FROM `character` WHERE `id` LIKE $id";
        $this->db->where('id=', $id);
        $q=$this->db->get('character');

        $result=$q->row_array();
        return $result;
    }
}