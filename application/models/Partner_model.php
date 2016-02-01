<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * * User: leiguan
 * Date: 2016/1/25
 * Time: 18:06
 */
class Partner_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database("web");
        $this->load->library('session');
    }

    /**
     * 注册合作伙伴账号
     */
    public function inset_reg()
    {
        $this->load->helper('url');
        $data = array(
            'account_name' => $this->input->post('username'),
            'account_pw' => getEncryptionPassword($this->input->post('password')),
            'user_channel' => $this->input->post('username')
        );

        $result=$this->db->insert('account', $data);
        if(!$result) exit("创建失败,联系管理员!!");
        //INSERT INTO `account` (`account_name`, `account_pw`, `user_channel`) VALUES ('leiguan', 'sssss', 'no1')
    }

    /**
     * 获取所有渠道商名称
     */
    public function select_chanels()
    {
        $sql="SELECT DISTINCT account.user_channel FROM account";
        $query=$this->db->query($sql);
        $result=$query->row_array();
        var_dump($result);
    }
    /**
     * 判断注册时运营商用户名是否重名
     * @param $username
     * @return bool 不存在返回true,存在返回false
     */
    public function validationIsNotUserExistence($username)
    {
        $sql="SELECT * FROM `account` WHERE `account_name` ='".$username."'";
        $query=$this->db->query($sql);
        $result=$query->row_array();
        return !isset($result);
    }
    /**
     * 判断登陆时运营商用户名是否重名
     * @param $username
     * @return bool 不存在返回true,存在返回false
     */
    public function validationIsUserExistence($username)
    {
        $sql="SELECT * FROM `account` WHERE `account_name` ='".$username."'";
        $query=$this->db->query($sql);
        $result=$query->row_array();
        return isset($result);
    }

    /**
     * @param $username
     * @return mixed  $result->account_name;
     *
     * object(stdClass)[21]
    public 'id' => string '128886' (length=6)
    public 'account_name' => string 'leiguan' (length=7)
    public 'account_pw' => string 'leiguan' (length=7)
    public 'user_channel' => string 'leiguan' (length=7)
     */
    public function getByUsername($username)
    {
        $sql="SELECT * FROM `account` WHERE `account_name` ='".$username."'";
        $query=$this->db->query($sql);
        $result=$query->row();
        return $result;
    }

    /**
     * @param $password
     * @return bool 如果密码不一致返回false,否则返回true
     */
    public function password_check($password)
    {
        $username=$this->input->post('username');
        $result=$this->getByUsername($username);
        if(!$result) return false;
        $db_pw=$result->account_pw;
        if($db_pw==getEncryptionPassword($password))
        {
            return true;
        }
        return false;
    }

    /**
     * 注销用户
     * @return boolean
     */
    function logout()
    {
        if ($this->logged_in() === TRUE)
        {
            $this->session->sess_destroy();                //销毁所有session的数据
            return TRUE;
        }
        return FALSE;
    }
    /**
     * 添加用户session数据,设置用户在线状态
     * @param string $username
     */
    function login()
    {
        $username=$this->input->post('username');
        $channel=$this->getChannel($username);
        $data = array(SESSION_USERNAME=>$username,SESSION_LOGINED_IN=>TRUE,SESSION_CHANNEL=>$channel);

        $this->session->set_userdata($data);                    //添加session数据
    }
    private function getChannel($username)
    {
        $sql="SELECT user_channel FROM `account` WHERE `account_name` = '$username'";
        $query=$this->db->query($sql);
        if(!$query) return false;
        $result=$query->row();
        $channel=$result->user_channel;
        return $channel;
    }
}