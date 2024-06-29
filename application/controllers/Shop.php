<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Product_model');
    }

    public function index() {
        $data['prods'] = $this->Product_model->get_all_products();
        $this->load->view('shop', $data);
    }

    public function catFilter() {
        $category = $this->input->post('cat');
        $data['catData'] = $this->Product_model->get_products_by_category($category);
        $this->load->view('shop', $data);
    }

    public function sort() {
        $sort_order = $this->input->post('sort');
        if ($sort_order == 'price_asc') {
            $data['prods'] = $this->Product_model->get_products_sorted_by_price('asc');
        } else {
            $data['prods'] = $this->Product_model->get_products_sorted_by_price('desc');
        }
        $this->load->view('shop', $data);
    }

    public function search() {
        $search_term = $this->input->post('search');
        $data['prods'] = $this->Product_model->search_products($search_term);
        $this->load->view('shop', $data);
    }
}
