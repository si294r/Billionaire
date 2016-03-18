<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Signin extends CI_Controller {

    public function __construct() {
        parent::__construct();
//        $this->load->model('signin_model', 'signin');
    }

    public function index() {
        $this->load->helper('url');
        $this->load->view('signin_view');
    }

}
