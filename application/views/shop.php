<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<?php include "include/head.php"; ?>

<div class="product-big-title-area" style="background-color: white;">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <br><br>
                    <h1><span style="color: gray;">Woodland</span> <span style="color:#1abc9c;">Home</span></h1>
                    <strong><h1><b><span style="color: gray;">Shop</span></b></h1></strong>
                </div>
            </div>
        </div>
    </div>
</div>

<br/><br/>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <?php echo form_open('shop/catFilter'); ?>
            <select class=' add_to_cart_button' name="cat" id="">
                <option value="Dining-Table">Dining Table</option>
                <option value="TV Unit">TV Unit</option>
                <option value="Coffee and Center Tables">Coffee and Center Tables</option>
                <option value="Bar Trolleys">Bar Trolleys</option>
                <option value="Wine Rack">Wine Rack</option>
                <option value="Kitchen Cabinet">Kitchen Cabinet</option>
                <option value="Kitchen Shelves">Kitchen Shelves</option>
                <option value="Beds">Beds</option>
                <option value="Dressing Table">Dressing Tables</option>
                <option value="Wardrobe">Wardrobe</option>
            </select>
            <button class="add_to_cart_button">Filter</button>
            <?php echo form_close(); ?>
        </div>
        <div class="col-md-4">
            <?php echo form_open('shop/search'); ?>
            <input type="text" name="search" placeholder="Search for products..." class="form-control">
            <button type="submit" class="btn btn-primary">Search</button>
            <?php echo form_close(); ?>
        </div>
        <div class="col-md-4">
            <?php echo form_open('shop/sort'); ?>
            <select class=' add_to_cart_button' name="sort" id="">
                <option value="price_asc">Sort by Price: Low to High</option>
                <option value="price_desc">Sort by Price: High to Low</option>
            </select>
            <button class="add_to_cart_button">Sort</button>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>

<br/><br/><br/><br/>

<div class="container-fluid">
    <div class="row">
        <?php
        if(isset($prods)){
            foreach ($prods as $row){
                ?>
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <img style='height:300px; width:300px' src="<?php echo base_url() ?>uploads/<?php echo $row->file_name ?>" alt="">
                        </div>
                        <h2><a href=""><?php echo $row->product_name ?></a></h2>
                        <div class="product-carousel-price">
                            <ins>Rs.<?php echo $row->product_price ?></ins>
                        </div>
                        <div class="product-option-shop">
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="<?php echo base_url()?>index.php/Cart?id=<?php echo $row->p_id ?>">Add to cart</a>
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="<?php echo base_url()?>index.php/Welcome/single?id=<?php echo $row->p_id ?>">Description</a>
                        </div>
                    </div>
                </div>
                <?php
            }
        }

        if(isset($catData)){
            foreach ($catData as $row){
                ?>
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <img style='height:300px; width:300px' src="<?php echo base_url() ?>uploads/<?php echo $row->file_name ?>" alt="">
                        </div>
                        <h2><a href=""><?php echo $row->product_name ?></a></h2>
                        <div class="product-carousel-price">
                            <ins>Rs.<?php echo $row->product_price ?></ins>
                        </div>
                        <div class="product-option-shop">
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="<?php echo base_url()?>index.php/Cart?id=<?php echo $row->p_id ?>">Add to cart</a>
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="<?php echo base_url()?>index.php/Welcome/single?id=<?php echo $row->p_id ?>">Description</a>
                        </div>
                    </div>
                </div>
                <?php
            }
        }
        ?>
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
</body>
</html>
