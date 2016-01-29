<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: leiguan
 * Date: 2016/1/8
 * Time: 18:19
 */
class Pages extends CI_Controller {

    public function view($page = 'home')
    {
//        echo 'leiguan';
        if ( ! file_exists(APPPATH.'/views/'.$page.'.php'))
        {
            show_404();
        }

        $data['title'] = ucfirst($page);
        $this->load->view('templates/header', $data);
        $this->load->view('pages/'.$page, $data);
        $this->load->view('templates/footer', $data);
    }
}