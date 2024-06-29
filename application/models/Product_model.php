<?php
class Product_model extends CI_Model {

    public function get_all_products() {
        $query = $this->db->get('products');
        return $query->result();
    }

    public function get_products_by_category($category) {
        $this->db->where('product_category', $category); // Use 'product_category' instead of 'category'
        $query = $this->db->get('products');
        return $query->result();
    }

    public function get_products_sorted_by_price($order) {
        $this->db->order_by('product_price', $order);
        $query = $this->db->get('products');
        return $query->result();
    }

    public function search_products($search_term) {
        $this->db->like('product_name', $search_term);
        $query = $this->db->get('products');
        return $query->result();
    }
}
