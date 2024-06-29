<?php


class Login_model extends CI_Model
{
    function checkUser($email,$password){
        $query = $this->db->get_where('users',array('email'=> $email , 'password'=> $password));
        return $query;
    }
}