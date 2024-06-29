<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Checkout extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Checkout_model');
    }

    function index(){
        $total = $this->input->get('tot');
        $deposit = 9000; // Default deposit amount

        if($total == 0){
            ?>
            <script>
                alert('Unable to proceed. Please add products to the cart.');
                window.location = "<?php echo base_url() ?>index.php/cart/viewCart";
            </script>
            <?php
        } else {
            $data['total'] = $total;
            $data['deposit'] = $deposit; // Add deposit to data
            $data['netTotal'] = $total + 500 + $deposit; // Adding shipping cost and deposit
            $this->load->view('checkout', $data);
        }
    }

    function confirmForm(){
        $u_id = $_SESSION['u_id'];
        $fname = $this->input->post('fname');
        $lname = $this->input->post('lname');
        $add = $this->input->post('address');
        $city = $this->input->post('city');
        $email = $this->input->post('email');
        $phone = $this->input->post('phone');
        $netTotal = $this->input->post('netTotal');

        // Fetch the maximum po_id
        $query = $this->Checkout_model->maxId('po_id', 'pending_orders');
        $po_id = ($query->row() ? $query->row()->po_id : 0) + 1;

        $data = array(
            'po_id' => $po_id,
            'u_id' => $u_id,
            'cart_total' => $netTotal,
            'bill_fname' => $fname,
            'bill_lname' => $lname,
            'bill_add' => $add,
            'bill_city' => $city,
            'bill_email' => $email,
            'bill_phone' => $phone
        );

        $this->Checkout_model->ins('pending_orders', $data);

        // Fetch the maximum oh
        $query = $this->Checkout_model->maxId('oh', 'purchase_history');
        $oh = ($query->row() ? $query->row()->oh : 0) + 1;

        $cartItems = $this->Checkout_model->getCart($u_id);
        foreach ($cartItems->result() as $row) {
            $data = array(
                'oh' => $oh,
                'p_name' => $row->product_name,
                'p_price' => $row->product_price,
                'p_qty' => $row->quantity,
                'u_id' => $row->u_id,
            );
            $this->Checkout_model->ins('purchase_history', $data);
        }
        $this->Checkout_model->del($u_id);

        redirect('Welcome/reciept?oh=' . $oh);
    }
}
?>
