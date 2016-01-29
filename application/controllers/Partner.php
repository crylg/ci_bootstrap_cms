<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: leiguan
 * Date: 2016/1/25
 * Time: 17:53
 */
class Partner extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('partner_model');
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
    }
    public function login()
    {

        $data['title']="运营商登陆页面";
        $userNameRules=array(
            "trim","required","min_length[5]","max_length[12]",
            array("exist", array($this->partner_model, 'validationIsUserExistence'))
        );
        $this->form_validation->set_rules('username', 'Username',$userNameRules,
            array(
                'max_length'=>"用户名不可大于12个字符",
                'min_length'=>"用户名不可小于5个字符",
                'required'=>"用户名不可为空",
                "exist"=>"没有该用户"
            )
        );
        $passwordRules=array(
            "trim","required","min_length[7]",
            array("check", array($this->partner_model, 'password_check'))
        );
        $this->form_validation->set_rules('password', 'Password', $passwordRules,
            array(
                'min_length'=>"密码不可小于7个字符",
                'required'=>"密码不可为空",
                'check'=>"密码不正确"
            )
        );


        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('pages/partner/header', $data);
            $this->load->view('pages/partner/login');
            $this->load->view('templates/footer');
        }
        else
        {
            //登陆成功
            $this->partner_model->login();
            redirect(site_url("fruit"));

        }
    }
    public function reg()
    {
        $data['title']="运营商注册页面";
        $userNameRules=array(
            "trim","required","min_length[5]","max_length[12]",
            array("exist", array($this->partner_model, 'validationIsNotUserExistence'))
        );
        $this->form_validation->set_rules('username', 'Username',$userNameRules,
            array(
                'max_length'=>"用户名不可大于12个字符",
                'min_length'=>"用户名不可小于5个字符",
                'required'=>"用户名不可为空",
                "exist"=>"用户名重复"
            )
        );
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[7]',
            array(
                'min_length'=>"密码不可小于7个字符",
                'required'=>"密码不可为空"
            )
        );
        $this->form_validation->set_rules('passconf', 'Password Confirmation', 'trim|required|matches[password]',
            array(
                'matches'=>"两次密码不匹配",
                'required'=>"第二次密码不可为空"
            )
        );


        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('pages/partner/header', $data);
            $this->load->view('pages/partner/reg');
            $this->load->view('templates/footer');
        }
        else
        {
            $this->partner_model->inset_reg();//注册
            $this->load->view('pages/partner/header', $data);
            $this->load->view('pages/partner/login');
            $this->load->view('templates/footer');
        }
    }

}