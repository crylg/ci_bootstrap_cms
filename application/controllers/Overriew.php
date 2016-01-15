<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/14
 * Time: 18:02
 */
class Overriew extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('room_model');
        $this->load->model('match_model');
        $this->load->helper('date');
    }
    public function index()
    {
        $data["roomCount"]=$this->room_model->getAllCount();
        $data["matchCount"]=$this->match_model->getAllCount();
        $this->load->view('templates/header', $data);
        $this->load->view('pages/match_vs_room', $data);
        $this->load->view('templates/footer', $data);

    }
}