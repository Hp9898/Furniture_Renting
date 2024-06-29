-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 11:02 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_mobile_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE IF NOT EXISTS `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 1, '13999', 'gajen', 'pradhan', 'bhilai', 'khi', 'gajen@gmail.com', '9165063741', '', '2018-10-10 19:57:43'),
(2, 3, '15999', 'gajen', 'pradhan', 'bhilai', 'khi', 'gajen@gmail.com', '9165063741', '', '2018-10-11 10:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'barrister arm chair', 'Furniture', '5000', '•	DETAILS\r\nSize:	22.5 x 20.5 x 37 inches\r\nMaterial:	Teakwood and Cane\r\nLead Time:	6 - 8 weeks (if not in stock)\r\n•	RETURNS\r\nWe accept returns within 7 days of delivery if the item reaches you in damaged condition.\r\n•	SHIPPING\r\nShipping costs are extra, and will be calculated based on the shipping address.\r\n', 'Barrister-Armchain-3_2048x20481.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(2, 'bedroom wood almirah', 'Furniture', '15000', 'Brand: Sunrise International\r\nStyle: Artistic\r\nType: 3 Doors\r\nAssembly: Assembly not Required\r\nMaterial: Sheesham Wood\r\nSize:  150 W x 60 D x 180 H cms \r\nPolish Stain on picture: Light Teak\r\nCountry of Origin: Made in India\r\n', 'bedroom-furniture-wooden-3-door-cupboard-wardrobe-almirah_1200x1.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(3, 'Daining Table', 'Furniture', '12000', 'Wood : Solid Sheesham Wood\r\nWarranty : Lifetime Warranty for Termite resistance.\r\nShipping : FREE All India (No Pincode check Required)\r\nEstimated Shipping Time : 2 Weeks\r\nSize\r\n•	6 Seater Table Size : L 175 x D 90 x H 76 cms\r\n•	For 6 Seater Bench Size : L 175 x D 35 x H 45 cms\r\n•	Chair Seating Height : 45 cms\r\nAssembly : Required (Table & Bench)\r\n', 'daining_table_set.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(4, 'jali 3 drawer beside', 'Furniture', '10000', 'Wood : Solid Sheesham Wood\r\nWarranty : Lifetime Warranty for Termite resistance.\r\nShipping : FREE All India (No Pincode check Required)\r\nEstimated Shipping Time : 7 Days\r\nAssembly : Ready to use. No assembly required.\r\n', 'jali_3_drawer_beside.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(5, 'office table', 'Furniture', '5500', '•	Product Dimensions: Length ( 116Cm / 45.60 Inches) Breadth ( 57Cm / 22.40 Inches) Height( 72Cm / 28.3 Inches). Please refer the image provided in catalog.\r\n•	Made of Particle Board (High grade prelam engineering wood with natural wood grain finish.)\r\n•	Product Color: Wenge | Product Style: Contemporary | Product Weight: 22.5 Kgs.\r\n•	Product Warranty: 1 year against manufacturing defects\r\n•	This is a DIY (DO-It-Yourself) item and comes with necessary hardware and with a detailed installation guide. We’d recommend hiring an experienced, professional for installation. However, if you’re confident with intermediate DIY (Do-It-Yourself) tasks, you could save time and money by installing it yourself. Make sure you unpack and inspect the condition of the product as soon as you receive it.\r\n', 'office_table.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(6, 'solid wood curved coffee table', 'Furniture', '7200', '\r\nWood : Solid Sheesham Wood\r\nWarranty : Lifetime Warranty for Termite resistance.\r\nShipping : FREE All India (No Pincode check Required)\r\nEstimated Shipping Time : 9 Days\r\nAssembly : Not Required. Ready to use.\r\n', 'solid_wood_curved_coffee.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(7, 'solid wood curved bed', 'Furniture', '25000', 'Wood : Solid Sheesham Wood\r\nWarranty : Lifetime Warranty for Termite resistance.\r\nShipping : FREE All India (No Pincode check Required)\r\nEstimated Shipping Time : 11 Days\r\nSizes\r\n•	Mattress Area for King Size : W 72" x L 78" (inches)\r\n•	Mattress Area for Queen Size : W 60" x L 78" (inches)\r\n•	Post Height (Floor to Top) : 6.5ft\r\nAssembly : Required.\r\n', 'Solid_Wood_Curved_Bed_with_Storage_20481.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(8, 'wood almirah', 'Furniture', '10000', 'Wood : Solid Sheesham Wood\r\nWarranty : Lifetime Warranty for Termite resistance.\r\nShipping : FREE All India (No Pincode check Required)\r\nEstimated Shipping Time : 2 Weeks\r\nAssembly : Ready to use. No assembly required.\r\n', 'wardrobe1.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE IF NOT EXISTS `purchase_history` (
`ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'Redmi Note 5 Pro (Blue, 64 GB)  (4 GB RAM)', '12999', '1', 1, '2018-10-10 19:57:43'),
(2, 2, 'Nokia 6.1 Plus (Blue, 64 GB)  (4 GB RAM)', '14999', '1', 3, '2018-10-11 10:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'gajen', 'pradhan', 'gajen', 'admin@admin.com', 'admin', 'admin'),
(2, 'Muhammad', 'Sameer', 'sameer', 'ms@ms.com', 'user', ''),
(3, 'yugesh', 'verma', 'yugesh', 'yugesh@gmail.com', '12345', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
 ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
 ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
