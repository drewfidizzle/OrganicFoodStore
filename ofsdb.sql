-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2017 at 11:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofsdb`
--
CREATE DATABASE IF NOT EXISTS `ofsdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ofsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--
-- Creation: Apr 08, 2017 at 06:37 AM
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `admins`:
--

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'somerandomemail@aol.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--
-- Creation: Apr 08, 2017 at 06:37 AM
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `cart`:
--

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(26, '::1', 0),
(34, '::1', 0),
(28, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- Creation: Apr 08, 2017 at 06:37 AM
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
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
-- Table structure for table `customers`
--
-- Creation: Apr 08, 2017 at 07:49 AM
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_address` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `customers`:
--

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_city`, `customer_address`, `customer_contact`) VALUES
(2, '::1', 'Sally Kane', 'sallykane@gmail.com', 'sally', 'San Mateo', '387 Tiger Street', '4081834567');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Apr 08, 2017 at 06:37 AM
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `products`:
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_image`, `product_desc`, `product_cat`, `product_price`, `product_keywords`) VALUES
(1, 'Lettuce', 'lettuce.png', '<p>Delicious Green Crunchy Lettuce!!</p>', 1, 1, 'vegetable'),
(2, 'Onions', 'onions.png', 'Fresh onions!', 1, 2, 'vegetables, vegetables, vegetable, Vegetable, onion, onions'),
(3, 'Broccoli', 'broccoli.png', 'Nutritious broccoli!', 1, 2, 'vegetables, vegetables, vegetable, Vegetable, broccoli'),
(4, 'Mushrooms', 'mushroom.png', 'Delicious fresh mushrooms!', 1, 3, 'vegetables, vegetables, vegetable, Vegetable, mushroom'),
(5, 'Carrots', 'carrot.png', 'Crunchy orange carrots!', 1, 3, 'vegetables, vegetables, vegetable, Vegetable, carrots'),
(6, 'Red Bellpeppers', 'bellpepper.png', 'Delicious red bell peppers!', 1, 3, 'vegetables, vegetables, vegetable, Vegetable, bellpepper'),
(7, 'Celery', 'celery.png', 'Crunchy green celery!', 1, 3, 'vegetables, vegetables, vegetable, Vegetable, celery'),
(8, 'Corn', 'corn.png', 'Delicious golden yellow corn!', 1, 4, 'corn'),
(9, 'Cucumbers', 'cucumber.png', 'Crunchy fresh green cucumbers!', 1, 3, 'vegetables, vegetables, vegetable, Vegetable, cucumber'),
(10, 'Apples', 'redApple.png', 'Delicious yummy apples!', 2, 2, 'fruit, fruits, Fruit, Fruits, apples, Apple, apple'),
(11, 'Oranges', 'orange.png', 'Juicy fresh oranges!', 2, 4, 'fruit, fruits, Fruit, Fruits, oranges, Oranges, Orange, orange'),
(12, 'Pears', 'pear.png', 'Delicious crunchy green pears!', 2, 3, 'fruit, fruits, Fruit, Fruits, Pear, pears, Pears, pear'),
(13, 'Banana', 'banana.png', 'Delicious fresh bananas!', 2, 3, 'fruit, fruits, Fruit, Fruits, Bananas, bananas, Banana, banana'),
(14, 'Grapes', 'grapes.png', 'Delicious purple grapes!', 2, 3, 'fruit, fruits, Fruit, Fruits, Grape, Grapes, grape, grapes'),
(15, 'Strawberry', 'strawberries.png', 'Delicious red strawberries!', 2, 5, 'fruit, fruits, Fruit, Fruits, Strawberry, strawberries, strawberries, strawberry'),
(16, 'Peaches', 'peaches.png', 'Juicy delicious peaches!', 2, 5, 'fruit, fruits, Fruit, Fruits, Peach, Peaches, peach, peaches'),
(17, 'Mangoes', 'mango.png', 'Fresh healthy mangoes!', 2, 6, 'fruit, fruits, Fruit, Fruits, mangos, Mangos, mango, Mango'),
(18, 'Blueberries', 'blueberries.png', 'Fresh wild blueberries!', 2, 4, 'fruit, fruits, Fruit, Fruits, berry, Berry, Berries, berries, Blueberry, Blueberries'),
(19, 'Milk', 'milk.png', 'Whole organic milk!', 3, 5, 'dairy, Dairy, Milk, milk'),
(20, 'Chocolate Milk', 'chocomilk.png', 'Delicious chocolate milk!', 3, 5, 'dairy, Dairy, choco, Chocolate, Chocho, Chocolate Milk, chocolate milk, chocolate'),
(21, 'Ice Cream', 'icecream.png', 'French vanilla ice cream!', 3, 10, 'dairy, Dairy, Ice Cream, ice cream, cream, ice'),
(22, 'Eggs', 'eggs.png', 'Fresh brown eggs from healthy grown chickens!', 3, 5, 'dairy, Dairy, Eggs, egg, eggs'),
(23, 'Cheddar Cheese', 'cheddar.png', 'Delicious cheddar cheese!', 3, 12, 'dairy, Dairy, Cheddar, cheese, Cheddar Cheese, cheddar cheese, cheddar'),
(24, 'Butter', 'butter.png', 'Fresh delicious butter!', 3, 6, 'dairy, Dairy, Butter, butters, Butter, butter'),
(25, 'Feta Cheese', 'fetacheese.png', 'Delicious feta cheese!', 3, 12, 'dairy, Dairy, Feta Cheese, Feta cheese, feta cheese'),
(26, 'Stony Yogurt', 'yogurtStony.png', 'Delicious yogurt!', 3, 7, 'dairy, Dairy, Yogurt, yogurt'),
(27, 'Cream Cheese', 'creamcheese.png', 'Delightful creamy cheese!', 3, 8, 'dairy, Dairy, cream, Cream, Cream Cheese, Cream cheese, cream cheese'),
(28, 'Pretzels', 'pretzels.png', 'Crunchy delicious preztels!', 6, 5, 'snack, Snacks, Pretzel, pretzel'),
(29, 'Bunnies Fruit Snacks', 'bunnies.png', 'Fruity sweet bunny fruit snacks!', 6, 4, 'snack, Snacks, fruit, Fruit, Fruit Snacks, fruit snacks'),
(30, 'Banana Chips', 'bananachips.png', 'Crunchy banana chips!', 6, 7, 'snack, Snacks, Chips, chip, chips'),
(31, 'Corn chips', 'cornchips.png', 'Fresh corn chips!', 6, 6, 'snack, Snacks, corn, Corn Chips, Corn chips, chips, corn chips'),
(32, 'Tortilla chips', 'tortillachips.png', 'Delicious tortilla chips!', 6, 7, 'snack, Snacks, chips, Chips, Tortilla Chips, Tortilla chips, tortilla chips'),
(33, 'Dark Chocolate', 'chocolate.png', 'Delicious dark chocolate!', 6, 19, 'snack, Snacks, Dark Chocolate, dark chocolate, chocho, chocolate'),
(34, 'Dark Chocolate Almonds', 'chocoalmonds.png', 'Fresh chocolate covered almonds!', 6, 8, 'snack, Snacks, Almond, Almonds, almond, almonds'),
(35, 'Apple Chips', 'applechips.png', 'Fresh crunchy apple chips!', 6, 8, 'snack, Snacks, Apple Chips, apple, Apple, apple chips'),
(36, 'Fruit Snacks', 'fruitsnacks.png', 'Delicious fruit snacks!', 6, 10, 'snack, Snacks, fruit snacks, fruit, Fruit Snacks, Fruit, snacks');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Apr 08, 2017 at 05:26 AM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'ann', 'ann@gmail.com', 'ann');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;