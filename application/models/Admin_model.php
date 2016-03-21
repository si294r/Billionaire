<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {

    var $table = 'admin';
    var $column = array('username', 'password', 'status');

    public function signin($username, $password) {
        $this->db->from($this->table);
        $this->db->where(array('username' => $username, 'password' => md5($password), 'status' => 'active'));
        $query = $this->db->get();
        return $query->row();
    }

}
