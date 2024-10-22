<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Woodland Home</title>
    <link rel="shortcut icon" href="<?php echo base_url()?>assets/img/logo.png" />

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/style.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/responsive.css">

    <!-- Datepicker CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        #credit_card_info, #upi_info {
            display: none;
        }
    </style>
</head>
<body>

<?php include "include/head.php"; ?>

<div class="product-big-title-area" style="background-color: white;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <br><br>
                <h1><span style="color: gray;">Woodland </span> <span style="color:#1abc9c;">Home</span></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<br/><br/>

<div class="container">
    <h3 align="center" id="order_review_heading">Your order</h3>

    <div id="order_review" style="position: relative;">
        <table class="shop_table">
            <?php if(isset($total)) { 
                $deposit = 9000; // Default deposit amount
                $netTotal = $total + 500 + $deposit; // Adding cart total, shipping cost, and deposit
            ?>
            <tbody>
            <tr class="cart_item">
                <td class="product-name">Cart Total</td>
                <td class="product-total"><span class="amount">Rs.<?php echo $total ?>/-</span></td>
            </tr>
            <tr class="cart_item">
                <td class="product-name">Deposit</td>
                <td class="product-total"><span class="amount">Rs.<?php echo $deposit ?>/-</span></td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="shipping">
                <th>Shipping and Handling</th>
                <td>Rs. 500/-</td>
            </tr>
            <tr class="order-total">
                <th>Order Total</th>
                <td><strong><span class="amount">Rs.<?php echo $netTotal ?>/-</span></strong></td>
            </tr>
            </tfoot>
        </table>
    </div>
    <?php } ?>
</div>

<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12"></div>
            <div class="col-md-12">
                <div class="product-content-right">
                    <div class="woocommerce">
                        <div id="customer_details" class="col2-set">
                            <div class="col-12">
                                <div class="woocommerce-billing-fields">
                                    <h3>Billing Details</h3>
                                    <?php echo form_open('Checkout/confirmForm', 'class="checkout"') ?>
                                    <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                        <label for="billing_first_name">First Name <abbr title="required" class="required">*</abbr></label>
                                        <input type="text" value="" placeholder="" id="billing_first_name" name="fname" class="input-text" required>
                                        <input type="hidden" value="<?php echo $netTotal ?>" name="netTotal">
                                    </p>
                                    <p id="billing_last_name_field" class="form-row form-row-last validate-required">
                                        <label for="billing_last_name">Last Name <abbr title="required" class="required">*</abbr></label>
                                        <input type="text" value="" placeholder="" id="billing_last_name" name="lname" class="input-text" required>
                                    </p>
                                    <div class="clear"></div>
                                    <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                        <label for="billing_address_1">Address <abbr title="required" class="required">*</abbr></label>
                                        <input type="text" value="" placeholder="Street address" id="billing_address_1" name="address" class="input-text" required>
                                    </p>
                                    <p id="billing_country_field" class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
                                        <label for="billing_country">City of India <abbr title="required" class="required">*</abbr></label>
                                        <select class="country_to_state country_select" id="billing_country" name="city" required>
                                            <option value="">Select A City</option>
                                            <option value="Ahmedabad">Ahmedabad</option>
                                            <option value="Anand">Anand</option>
                                            <option value="Nadiad">Nadiad</option>
                                            <option value="Vadodara">Vadodara</option>
                                            <option value="Surat">Surat</option>
                                        </select>
                                    </p>
                                    <div class="clear"></div>
                                    <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                        <label for="billing_email">Email Address <abbr title="required" class="required">*</abbr></label>
                                        <input type="email" value="" placeholder="" id="billing_email" name="email" class="input-text" required>
                                    </p>
                                    <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                        <label for="billing_phone">Phone (+91XXXXXXXXX)<abbr title="required" class="required">*</abbr></label>
                                        <input type="text" value="" placeholder="" id="billing_phone" name="phone" class="input-text" required>
                                    </p>
                                    <div class="clear"></div>
                                    <h3>Payment Method</h3>
                                    <p id="payment_method_field" class="form-row form-row-wide">
                                        <label for="payment_method">Select Payment Method <abbr title="required" class="required">*</abbr></label><br>
                                        <input type="radio" id="cod" name="payment_method" value="COD" checked onclick="togglePaymentFields()">
                                        <label for="cod">Cash on Delivery</label><br>
                                        <input type="radio" id="credit_card" name="payment_method" value="Credit Card" onclick="togglePaymentFields()">
                                        <label for="credit_card">Credit Card</label><br>
                                        <input type="radio" id="upi" name="payment_method" value="UPI" onclick="togglePaymentFields()">
                                        <label for="upi">UPI</label>
                                    </p>
                                    <div id="credit_card_info">
                                        <p id="billing_credit_card_field" class="form-row form-row-wide">
                                            <label for="billing_credit_card">Credit Card Number <abbr title="required" class="required">*</abbr></label>
                                            <input type="text" value="" placeholder="Enter your credit card number" id="billing_credit_card" name="credit_card" class="input-text">
                                        </p>
                                        <p id="billing_credit_card_expiry_field" class="form-row form-row-first validate-required">
                                            <label for="billing_credit_card_expiry">Expiry Date <abbr title="required" class="required">*</abbr></label>
                                            <input type="text" value="" placeholder="MM/YY" id="billing_credit_card_expiry" name="credit_card_expiry" class="input-text">
                                        </p>
                                        <p id="billing_credit_card_cvc_field" class="form-row form-row-last validate-required">
                                            <label for="billing_credit_card_cvc">CVC <abbr title="required" class="required">*</abbr></label>
                                            <input type="text" value="" placeholder="CVC" id="billing_credit_card_cvc" name="credit_card_cvc" class="input-text">
                                        </p>
                                        <div class="clear"></div>
                                    </div>
                                    <div id="upi_info">
                                        <p id="billing_upi_id_field" class="form-row form-row-wide">
                                            <label for="billing_upi_id">UPI ID <abbr title="required" class="required">*</abbr></label>
                                            <input type="text" value="" placeholder="Enter your UPI ID" id="billing_upi_id" name="upi_id" class="input-text">
                                        </p>
                                    </div>
                                    <input type="submit" value="Order Now" class="add_to_cart_button">
                                    <?php echo form_close() ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include "include/footer.php"; ?>

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>
<!-- Bootstrap JS form CDN -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- jQuery sticky menu -->
<script src="<?php echo base_url() ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url() ?>assets/js/jquery.sticky.js"></script>
<!-- jQuery easing -->
<script src="<?php echo base_url() ?>assets/js/jquery.easing.1.3.min.js"></script>
<!-- Main Script -->
<script src="<?php echo base_url() ?>assets/js/main.js"></script>
<!-- Custom Script for Payment Method Toggle -->
<script>
    function togglePaymentFields() {
        document.getElementById('credit_card_info').style.display = 'none';
        document.getElementById('upi_info').style.display = 'none';
        
        if (document.getElementById('credit_card').checked) {
            document.getElementById('credit_card_info').style.display = 'block';
        } else if (document.getElementById('upi').checked) {
            document.getElementById('upi_info').style.display = 'block';
        }
    }
</script>
</body>
</html>
