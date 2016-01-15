<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/1/11
 * Time: 11:41
 */
class Pay extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("data_model");
        $this->load->helper("url_helper");
    }
    public function index()
    {
        $page_segment_num=4;
        $sort=$this->uri->segment(3);
        $sort=isset($sort)?$sort:'datatime';

        $data['total_price']= $this->data_model->getPayTotalPrice();
        $data['total_count']= $this->data_model->getPayCount();
        $uri_cur_page_num=$this->uri->segment($page_segment_num);
        $segment=isset($uri_cur_page_num)?$this->uri->segment($page_segment_num):0;
        $data["startRecordIndex"]=$segment;
        //分页
        $this->load->library('pagination');
        $config['base_url'] = site_url('pay/index/'.$sort.'/');
        $config['total_rows'] = $this->data_model->getPayPlayerCount();
        $config['per_page'] = 15;
        $config['first_page'] = "0";
        $config['uri_segment'] = $page_segment_num;
        $config['use_page_numbers'] = FALSE;
        $config['num_links'] = 0;
        $config['cur_tag_open']='<span class="col-md-1 text-center" >';
        $config['cur_tag_close']='</span>';

        $config['next_link'] = '<button type="button" class="col-md-1 btn btn-success">下一页</button>';
        $config['prev_link'] = '<button type="button" class="col-md-1 btn btn-success">上一页</button>';
        $config['last_link'] = '';
        $config['first_link'] = '';
        $this->pagination->initialize($config);


        //为页面赋值
        $data['pages']= $this->pagination->create_links();
        $data['pay_list'] = $this->data_model->getPayPlayerArray($config['per_page'],$segment,$sort);
        $data['title'] = '充值信息';
        $data['count']=$config['total_rows'];
        $this->load->view('templates/header', $data);
        $this->load->view('templates/side', $data);
        $this->load->view('pages/pay', $data);
        $this->load->view('templates/footer');

    }

    public function view($slug = NULL)
    {
        $data['pay_item'] = $this->news_model->get_news($slug);
    }
}