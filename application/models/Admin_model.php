<?php


 class Admin_model extends CI_Model
{
    function pId(){
        $this->db->select_max('p_id', 'p_id');
        $query = $this->db->get('products');
        return $query;
    }

    function addProd($data){
        $this->db->insert('products' , $data);
    }

    function getProd(){
        $query = $this->db->get('products');
        return $query;
    }

    function del_pro($id){
        $this->db->where('p_id', $id);
        $this->db->delete('products');
    }

    function edit_pro($id){
        $query = $this->db->get_where('products', array('p_id' => $id));
        return $query;
    }

    function upd_pro($id, $data){
        $this->db->where('p_id', $id);
        $this->db->update('products', $data);
    }

    function getOrders(){
        $query = $this->db->get('pending_orders');
        return $query;
    }

    function updStatus($po_id, $value){
        $this->db->set('status', $value);
        $this->db->where('po_id', $po_id);
        $this->db->update('pending_orders');
    }

    public function getOrdersByEmail($email) {
        $this->db->where('bill_email', $email); // Use the 'bill_email' field to filter orders
        $query = $this->db->get('pending_orders'); // Use 'pending_orders' as the table name
        return $query;
    }
}

 
