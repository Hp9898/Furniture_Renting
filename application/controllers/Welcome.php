<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function index()
    {
        $query = $this->Admin_model->getProd();

        $data['prod'] = $query->result();

        $this->load->view('index',$data);
    }

    public function checkout()
    {
        //$this->load->view('checkout');
        redirect('Checkout');
    }

    public function shop()
    {
        redirect('Shop');
    }

    public function cart()
    {
        if(isset($_SESSION['email'])){
            if($_SESSION['email'] != ''){
                $this->load->view('cart');
            }
        }
        else{
            ?>
            <script>
                alert('Access Denied');
                window.location = "<?php echo base_url() ?>";
            </script>
            <?php
        }
    }

    public function single()
    {
        $id = $_GET['id'];
        redirect('Single?id='.$id);
    }

    public function login()
    {
        $this->load->view('login');
    }

    public function register()
    {
        $this->load->view('register');
    }

    public function add_pro()
    {
        if(isset($_SESSION['status'])){
            if($_SESSION['status'] == 'admin'){
                $this->load->view('add_pro');
            }
        }
        else{
            ?>
            <script>
                alert('Access Denied');
                window.location = "<?php echo base_url() ?>";
            </script>
            <?php
        }
    }
    public function profile()
    {
        if(isset($_SESSION['email'])){
            $email = $_SESSION['email'];
            $this->load->model('User_model'); // Load your model
            $user = $this->User_model->getUserByEmail($email);
    
            $data['user'] = $user;
            $this->load->view('profile', $data);
        } else {
            redirect('welcome/login');
        }
    }
    
    public function update_profile()
    {
        if(isset($_SESSION['email'])){
            $email = $_SESSION['email'];
            $data = array(
                'fname' => $this->input->post('fname'),
                'lname' => $this->input->post('lname'),
                'username' => $this->input->post('username')
            );
    
            $this->load->model('User_model');
            $this->User_model->updateUser($email, $data);
    
            redirect('welcome/profile');
        } else {
            redirect('welcome/login');
        }
    }
    


    public function orders()
    {
        if(isset($_SESSION['status'])){
            if($_SESSION['status'] == 'admin'){
                $this->load->view('orders');
            }
        }
        else{
            ?>
            <script>
                alert('Access Denied');
                window.location = "<?php echo base_url() ?>";
            </script>
            <?php
        }
    }

    public function user_ord() {
        if (isset($_SESSION['email'])) {
            $email = $_SESSION['email']; // Get the logged-in user's email
            $this->load->model('Admin_model'); // Load the model
    
            // Get orders specific to the logged-in user
            $query = $this->Admin_model->getOrdersByEmail($email);
    
            $data['order1'] = $query->result();
    
            $this->load->view('user_ord', $data);
        } else {
            redirect('welcome/login'); // Redirect to login if the user is not logged in
        }
    }
    
    
    

    public function reciept()
    {
        $oh = $_GET['oh'];

        $query = $this->Checkout_model->getOrder($oh);

        $data['order'] = $query->result();

        $this->load->view('reciept',$data);
    }
}
