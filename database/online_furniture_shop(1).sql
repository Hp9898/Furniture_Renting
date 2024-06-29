-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 04:55 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_furniture_shop`
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
(2, 3, '15999', 'gajen', 'pradhan', 'bhilai', 'khi', 'gajen@gmail.com', '9165063741', '', '2018-10-11 10:02:41'),
(3, 2, '25000', 'Rishi', 'Soni', '2, Harikrupa Society Near Lions Club Kapadvanj', 'khi', 'rishirsoni3174@gmail.com', '09327504409', '', '2023-10-05 11:42:32'),
(4, 2, '16000', 'Rishi', 'Soni', '2, Harikrupa Society Near Lions Club Kapadvanj', 'isl', 'rishirsoni3174@gmail.com', '09327504409', '', '2023-10-05 12:08:28'),
(5, 2, '49479', 'Rishi', 'Soni', '2, Harikrupa Society Near Lions Club Kapadvanj', 'Nadiad', 'rishirsoni3174@gmail.com', '09327504409', '', '2023-10-05 14:10:56');

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
(1, 'Paul 2 Seater Dining Set', 'Dining-Table', '27489', '•	Seater=2 seater\r\n•	Finish=Walnut finish\r\n•	Material=Sheesham wood\r\n•	Table Dimensions(Inch)=63 L x 35 W x 31 H\r\n•	Chair Dimensions(Inch)=18 L x 18 W x 35 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Dt1.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(2, 'Wertex 6 Seater Dining Set', 'Dining-Table', ' 48979', '•	Seater =6 seater\r\n•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Table Dimensions(Inch)=67 L x 36 W x 30 H\r\n•	Chair Dimensions(Inch)=19 L x 18 W x 40 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=7-9 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Dt3.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(3, 'Jett Metal Base Sheesham Wood Tv Unit with Drawers and Cabinets', 'TV Unit', '26649', '•	Storage=With storage\r\n•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Dimensions(Inch)=67 L x 18 W x 24 H\r\n•	Storage=Yes\r\n•	Storage Type=Closed\r\n•	No. of Drawers=2\r\n•	No. of Doors=2\r\n•	Wall Mounting=No\r\n•	Product Quantity=1 Unit\r\n•	Brand=Wooden Street\r\n•	Ships In=15 Days\r\n', 'Tv2.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(4, 'Chappell Sheesham Wood Tv Entertainment Unit', 'TV Unit', '64689', '•	Storage=With storage\r\n•	Finish=Walnut finish\r\n•	Material=Sheesham wood\r\n•	Dimensions (Inch)=100 L x 16 W x 72 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Tv4.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(5, 'Vesta Sheesham Wood Coffee Table with Four Stools', 'Coffee and Center Tables', '24549', '•	Storage=With storage\r\n•	Seater=4 seater\r\n•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Table Dimensions (Inch)=38 L x 30 W x 15 H\r\n•	Stool Dimensions (Inch)=14 L x 14 W x 12 H\r\n•	Color=Cream Blossom\r\n•	Storage=Yes\r\n•	Features=Contemporary style table with four cushioned pouffes.\r\n•	Table Height=15 inches\r\n•	Product Quantity=1 Unit\r\n•	Brand=Wooden Street\r\n•	Product Weight=52 Kg\r\n•	Ships In=15 Days i\r\n•	Delivery Condition=Pre-assembled\r\n', 'Ct1.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(6, 'Maeve Engineered Wood Coffee Table with Multi Storage Drawers', 'Coffee and Center Tables', '11999', '•	Storage=With storage\r\n•	Finish=Exotic teak frosty white\r\n•	Material=Premium engineered wood\r\n•	Dimensions(Inch)=36 L x 36 W x 16 H\r\n•	Brand=Wooden Street\r\n•	Thickness(MM)=18mm\r\n•	Edge Bending(MM)=2mm\r\n•	Product Weight=40 kg\r\n•	Ships In=23 Days \r\n•	Delivery Condition=Expert-Assembly\r\n', 'Ct2.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(7, 'Slany Bar Trolley', 'Bar Trolleys', '19789', '•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Dimensions(Inch)=26 L x 14 W x 34 H\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Pre-assembled\r\n', 'Bt1.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(8, 'Sheesham Wood Bar Trolley with 3 Shelf and Handles', 'Bar Trolleys', '14979', '•	Material=Sheesham wood\r\n•	Dimensions (Inch)=28 L x 12 W x 32 H\r\n•	Brand=Timberly\r\n•	Pack Content=1 Bar Trolley\r\n•	Ships In=6 Days \r\n•	Delivery Condition=Pre-assembled\r\n', 'Bt2.jpg', 'C:/xampp/htdocs/Mobile_Shop/uploads/', '.jpg'),
(9, 'Ferris Wine Rack', 'Wine Rack', '13398', '•	Finish=Walnut finish\r\n•	Material=Sheesham wood\r\n•	Dimensions(Inch)=28 L x 12 W x 28 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Basic assembly/DIY\r\n', 'Wr1.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(10, 'Sheesham Wood Wall Mounted Wine Rack with Glass Storage', 'Wine Rack', '5319', '•	Material=Sheesham wood\r\n•	Dimensions (Inch)=37 L x 5 W x 24 H\r\n•	Brand=Timberly\r\n•	Pack Content=1 Wine Rack\r\n•	Ships In=6 Days \r\n•	Delivery Condition=Pre-assembled\r\n', 'Wr2.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(11, 'Elissa Kitchen Cabine', 'Kitchen Cabinet', '6499', '•	Finish=Exotic teak finish\r\n•	Material=Premium engineered wood\r\n•	Dimensions(Inch)=36 L x 15 W x 66 H\r\n•	Storage Type=Open and Closed\r\n•	No. of Drawers=3\r\n•	No. of Doors=4\r\n•	Product Quantity=1 Unit\r\n•	Product Weight=66 Kg\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Kc1.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(12, 'Argus Kitchen Cabinet (Flowery Wenge-Frosty White Finish)', 'Kitchen Cabinet', '24588', '•	Finish=Flowery wenge frosty white\r\n•	Material=Premium engineered wood\r\n•	Dimensions(Inch)=30 L x 16 W x 52 H\r\n•	Storage Type=Open and Closed\r\n•	No. of Drawers=1\r\n•	No. of Doors=2\r\n•	Product Quantity=1 Unit\r\n•	Product Weight=52 Kg\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Kc2.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(13, 'Benitez Kitchen Rack', 'Kitchen Shelves', '10799', '•	Finish=Walnut finish\r\n•	Material=Sheesham wood\r\n•	Dimensions(Inch)=18 L x 9 W x 24 H\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Basic assembly/DIY\r\n', 'Ks1.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(14, 'Simone Kitchen Rack (Honey Finish)', 'Kitchen Shelves', '9549', '•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Dimensions(Inch)=22 L x 9 W x 22 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Basic assembly/DIY\r\n', 'Ks2.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(15, 'Ferguson Hydraulic Bed(King Size, Honey Finish)', 'Beds', '59899', '•	Storage=Hydraulic storage\r\n•	Size=King size\r\n•	Finish=Honey finish\r\n•	Material=Sheesham wood\r\n•	Dimension(Inch)=87 L x 75 W x 43 H\r\n•	Mattress Size(Inch)=78 L x 72 W\r\n•	Product Weight=182 Kg\r\n•	Brand=Wooden Street\r\n•	Ships In=15 Days i\r\n•	Delivery Condition=Expert-Assembly\r\n', 'B3.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(16, 'Drewno Upholstered Bed With Storage(King Size, Graphite Grey)', 'Beds', '53989', '•	Storage=With storage\r\n•	Size=King size\r\n•	Material=Sheesham wood\r\n•	Material=Velvet\r\n•	Color=Graphite grey\r\n•	Wooden Structure Dimensions (inch)=80 L x 74 W x 14 H\r\n•	Headboard Dimensions (inch)=80 L x 8 W x 48 H\r\n•	Mattress Size (Inch)=78 L x 72 W\r\n•	Total Bed Dimensions (inch)=84 L x 74 W x 14 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'B4.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(17, 'Cara Dressing Table(Exotic Teak-Frosty White Finish)', 'Dressing Table', '14199', '•	Finish=Exotic teak frosty white\r\n•	Material=Premium engineered wood\r\n•	Dimensions (Inch)=36 L x 16 W x 72 H\r\n•	Storage=Yes\r\n•	Storage Type=Open and Closed\r\n•	No. of Drawers=3\r\n•	No. of Shelves=8\r\n•	No. of Doors=1\r\n•	Product Quantity=1 Unit\r\n•	Product Weight=64Kg\r\n•	Brand=Wooden Street\r\n•	Ships In=5 Days i\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Dr1.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(18, 'Kosmo Alaska High Gloss White Dressing Table', 'Dressing Table', '23989', '•	Material=Engineered wood\r\n•	Dimension (inch)=39 L x 16 W x 74 H\r\n•	Brand=Spacewood\r\n•	Pack Content=1 Dressing Table\r\n•	Ships In=23 Days i\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Dr2.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(19, 'Cambrey 3 Door Multi Utility Wardrobe(Walnut Finish)', 'Wardrobe', '55898', '•	Material=Sheesham wood\r\n•	2 Door Dimension (Inch)=36 L x 22 W x 72 H\r\n•	1 Door Dimension (Inch)=22 L x 22 W x 72 H\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Wa1.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG'),
(20, 'Valor 4 Door Wardrobe with Mirror and Frosty White Drawer(Exotic Teak Finish)', 'Wardrobe', '62469', '•	Finish=Exotic teak frosty white\r\n•	Material=Premium engineered wood\r\n•	Dimensions(Inch)=63 L x 18 W x 72 H\r\n•	Product Weight=160 Kg\r\n•	Brand=Wooden Street\r\n•	Est. Delivery=5-7 Weeks\r\n•	Delivery Condition=Expert-Assembly\r\n', 'Wa2.JPG', 'C:/xampp/htdocs/Furniture-Shop/uploads/', '.JPG');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(1, 1, 'Redmi Note 5 Pro (Blue, 64 GB)  (4 GB RAM)', '12999', '1', 1, '2018-10-10 19:57:43'),
(2, 2, 'Nokia 6.1 Plus (Blue, 64 GB)  (4 GB RAM)', '14999', '1', 3, '2018-10-11 10:02:41'),
(3, 3, 'Daining Table', '12000', '2', 2, '2023-10-05 11:42:32'),
(4, 4, 'bedroom wood almirah', '15000', '1', 2, '2023-10-05 12:08:28'),
(5, 5, 'Wertex 6 Seater Dining Set', ' 48979', '1', 2, '2023-10-05 14:10:56');

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
(1, 'Rishi', 'Soni', 'Rishi', 'admin@gmail.com', 'admin', 'admin'),
(2, 'Ayush', 'Patel', 'Ayush', 'ayush@gmail.com', 'ayush', ''),
(3, 'Marmik', 'Patel', 'Marmik', 'marmik@gmail.com', '12345', '');

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
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
