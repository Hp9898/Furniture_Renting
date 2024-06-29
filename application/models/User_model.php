<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    // Method to fetch user details by email
    public function getUserByEmail($email)
    {
        $this->db->where('email', $email);
        $query = $this->db->get('users');
        return $query->row();
    }

    // Method to update user details
    public function updateUser($email, $data)
    {
        $this->db->where('email', $email);
        return $this->db->update('users', $data);
    }
}
