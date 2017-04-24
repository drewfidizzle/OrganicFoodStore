-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 24, 2017 at 06:26 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- Creation: Apr 24, 2017 at 03:57 AM
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `categories`:
--

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Vegetables'),
(2, 'Fruits'),
(3, 'Dairy'),
(6, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Creation: Apr 24, 2017 at 04:16 PM
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `orders`:
--

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `first_name`, `last_name`, `email`, `address`, `timestamp`) VALUES
(1, 'andrew', 'fide', 'afidel1743@yahoo.com', 'asd', '2017-04-24 16:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Apr 24, 2017 at 03:57 AM
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `products`:
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`, `product_keywords`) VALUES
(1, 'Lettuce', 1, 1, 5, 'vegetable', '<p>Delicious green crunchy lettuce!</p>', 'lettuce.png', 'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, lettuce, green, Lettuces, lettuces'),
(2, 'Onions', 1, 2, 5, 'onions', '<p>Fresh and tasty onions!</p>', 'onions.png', 'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, onions, onion, Onion, Onions'),
(3, 'Broccoli', 1, 2, 5, 'broccoli', '<p>Nutritious and fresh green broccoli!</p>', 'broccoli.png', 'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, broccoli, Broccoli'),
(4, 'Mushrooms', 1, 3, 5, 'mushroom', '<p>Delicious and fresh mushrooms!</p>', 'mushroom.png', 'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, mushroom, mushrooms, Mushroom, Mushrooms'),
(5, 'Carrots', 1, 3, 5, 'carrots', '<p>Crunchy orange carrots!</p>', 'carrot.png', 'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, carrot, Carrot, carrots, Carrots'),
(6, 'Red Bellpeppers', 1, 3, 5, 'bellpepper', '<p>Delicious Green Crunchy Lettuce!!</p>', 'bellpepper.png', 'bellpepper.png\', \'vegetables, Vegetables, Vegetable, vegetable, veges, Veges, bellpepper, bell peppers, red bell peppers'),
(7, 'Celery', 1, 3, 5, 'celery', '<p>Crunchy fresh green celery!</p>', 'celery.png', 'vegetables, vegetables, vegetable, Vegetable, celery, Celery'),
(8, 'Corn', 1, 4, 5, 'corn', '<p>Fresh golden yellow corn!</p>', 'corn.png', 'vegetables, vegetables, vegetable, Vegetable, corn, Corn'),
(9, 'Cucumbers', 1, 3, 5, 'cucumber', '<p>Crunchy fresh cucumbers!</p>', 'cucumber.png', 'vegetables, vegetables, vegetable, Vegetable, cucumber, Cucumber, Cucumbers, cucumbers'),
(10, 'Apples', 2, 2, 5, 'apple', '<p>Delicious red apples!</p>', 'redApple.png', 'fruit, fruits, Fruit, Fruits, apples, Apple, apple'),
(11, 'Oranges', 2, 4, 5, 'orange', '<p>Juicy tasty oranges!</p>', 'orange.png', 'fruit, fruits, Fruit, Fruits, oranges, Oranges, Orange, orange, oranges, Oranges'),
(12, 'Pears', 2, 3, 5, 'pear', '<p>Fresh and juicy green pears!</p>', 'pear.png', 'fruit, fruits, Fruit, Fruits, Pear, pears, Pears, pear'),
(13, 'Banana', 2, 3, 5, 'banana', '<p>Delicious yellow bananas!</p>', 'banana.png', 'fruit, fruits, Fruit, Fruits, Bananas, bananas, Banana, banana'),
(14, 'Grapes', 2, 3, 5, 'grapes', '<p>Fresh purple grapes!</p>', 'grapes.png', 'fruit, fruits, Fruit, Fruits, Grape, Grapes, grape, grapes'),
(15, 'Strawberry', 2, 5, 5, 'strawberry', '<p>Delicious red strawberries!</p>', 'strawberries.png', 'fruit, fruits, Fruit, Fruits, Strawberry, strawberries, strawberries, strawberry'),
(16, 'Peaches', 2, 5, 5, 'peaches', '<p>Juicy fresh peaches!</p>', 'peaches.png', 'fruit, fruits, Fruit, Fruits, Peach, Peaches, peach, peaches'),
(17, 'Mangoes', 2, 6, 5, 'Mango', '<p>Tasty fresh mangoes!</p>', 'mango.png', 'fruit, fruits, Fruit, Fruits, mangos, Mangos, mango, Mango'),
(18, 'Blueberries', 2, 4, 5, 'berries', '<p>Fresh wild blueberries full of antioxidants!</p>', 'blueberries.png', 'lueberries.png\', \'fruit, fruits, Fruit, Fruits, berry, Berry, Berries, berries, Blueberry, Blueberries'),
(19, 'Milk', 3, 5, 5, 'milk', '<p>Whole milk from Horizon Organic Farm!</p>', 'milk.png', 'dairy, Dairy, Milk, milk'),
(20, 'Chocolate Milk', 3, 5, 5, 'chocolate', '<p>Delicious chocolate milk from Organic Valley farm!</p>', 'chocomilk.png', 'dairy, Dairy, choco, Chocolate, Chocho, Chocolate Milk, chocolate milk, chocolate'),
(21, 'Ice Cream', 3, 10, 5, 'ice cream', '<p>Delicious vanilla bean ice cream from 365 Organic Farm!</p>', 'icecream.png', 'dairy, Dairy, Ice Cream, ice cream, cream, ice'),
(22, 'Eggs', 3, 5, 5, 'eggs', '<p>Fresh brown eggs!</p>', 'eggs.png', 'dairy, Dairy, Eggs, egg, eggs'),
(23, 'Cheddar Cheese', 3, 12, 5, 'cheddar', '<p>Delicious cheddar cheese!</p>', 'cheddar.png', 'dairy, Dairy, Cheddar, cheese, Cheddar Cheese, cheddar cheese, cheddar'),
(24, 'Butter', 3, 6, 5, 'butter', '<p>Creamy unsalted butter from Grassland farm!</p>', 'butter.png', 'dairy, Dairy, Butter, butters, Butter, butter'),
(25, 'Feta Cheese', 3, 12, 5, 'feta cheese', '<p>Delicious feta cheese from Organic Valley farm!</p>', 'fetacheese.png', 'dairy, Dairy, Feta Cheese, Feta cheese, feta cheese'),
(26, 'Stony Yogurt', 3, 7, 5, 'yogurt', '<p>Lowfat french vanilla yogurt from StonyField farm!</p>', 'yogurtStony.png', 'dairy, Dairy, Yogurt, yogurt'),
(27, 'Cream Cheese', 3, 8, 5, 'cream cheese', '<p>Fresh cream cheese from Organic Valley farm!</p>', 'creamcheese.png', 'dairy, Dairy, cream, Cream, Cream Cheese, Cream cheese, cream cheese'),
(28, 'Pretzels', 6, 5, 5, 'pretzel', '<p>Crunchy mini pretzels from Snyder\'s farm!</p>', 'pretzels.png', 'snack, Snacks, Pretzel, pretzel'),
(29, 'Bunnies Fruit Snacks', 6, 4, 5, 'fruit snacks', '<p>Delicious fruit snacks from Annie\'s farm!</p>', 'bunnies.png', 'snack, Snacks, fruit, Fruit, Fruit Snacks, fruit snacks, bunny snacks, bunny, Bunny'),
(30, 'Banana Chips', 6, 7, 5, 'chips', '<p>Sweetened fresh banana chips from Woodstock farm!</p>', 'bananachips.png', 'snack, Snacks, Chips, chip, chips, banana, banana chips, Banana Chips'),
(31, 'Corn chips', 6, 6, 5, 'corn chips', '<p>Crunchy corn chips from Sage Valley farm!</p>', 'cornchips.png', 'snack, Snacks, corn, Corn Chips, Corn chips, chips, corn chips'),
(32, 'Tortilla chips', 6, 7, 5, 'tortilla chips', '<p>Fresh tortilla chips from Simply Balanced farm!</p>', 'tortillachips.png', 'snack, Snacks, chips, Chips, Tortilla Chips, Tortilla chips, tortilla chips'),
(33, 'Dark Chocolate', 6, 19, 5, 'chocolate', '<p>Delicious dark chocolate from Eclat Pennsylvania farm!</p>', 'chocolate.png', 'snack, Snacks, Dark Chocolate, dark chocolate, chocho, chocolate'),
(34, 'Chocolate Almonds', 6, 8, 5, 'almonds', '<p>Delicious dark chocolate covered almonds from Woodstock farm!</p>', 'chocoalmonds.png', 'snack, Snacks, Almond, Almonds, almond, almonds, dark almonds, dark chocolate almonds, chocolate, Dark, Dark Chocolate, Dark Chocolate Almonds, '),
(35, 'Apple Chips', 6, 8, 5, 'apple chips', '<p>Flavorful apple cinnamon chips from Bare farm!</p>', 'applechips.png', 'snack, Snacks, Apple Chips, apple, Apple, apple chips'),
(36, 'Fruit Snacks', 6, 10, 5, 'snacks', '<p>Tasty fruit snacks from StonyField farm!</p>', 'fruitsnacks.png', 'snack, Snacks, fruit snacks, fruit, Fruit Snacks, Fruit, snacks');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--
-- Creation: Apr 24, 2017 at 03:57 AM
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `reports`:
--

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(36, 1, 60, 24.99, 'product 1', 1),
(37, 1, 61, 24.99, 'product 1', 1),
(38, 1, 62, 24.99, 'product 1', 1),
(39, 2, 63, 299.99, 'product 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--
-- Creation: Apr 24, 2017 at 03:57 AM
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_title` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `slides`:
--

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_title`, `slide_image`) VALUES
(4, 'slide 1', 'slideImage1.png'),
(5, 'slide 2', 'slideImage2.png'),
(6, 'slide 3', 'slideImage3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Apr 24, 2017 at 03:57 AM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(5, 'admin', 'admin@gmail.com', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
