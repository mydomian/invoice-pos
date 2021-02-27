-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 02:06 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `emp_id` int(11) NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advanced_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advance_salaries`
--

INSERT INTO `advance_salaries` (`id`, `emp_id`, `month`, `year`, `advanced_salary`, `created_at`, `updated_at`) VALUES
(1, 5, 'December', '2018', '4000', NULL, NULL),
(2, 1, 'December', '2018', '4000', NULL, NULL),
(3, 1, 'January', '2019', '4000', '2019-01-01 12:28:42', NULL),
(4, 5, 'January', '2019', '4000', '2019-01-01 12:28:57', NULL),
(5, 4, 'February', '2019', '2000', '2019-02-11 05:44:36', NULL),
(6, 4, 'April', '2019', '2000', '2019-03-07 08:00:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `att_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `att_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendence` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendences`
--

INSERT INTO `attendences` (`id`, `user_id`, `att_date`, `att_year`, `attendence`, `month`, `edit_date`, `created_at`, `updated_at`) VALUES
(1, 1, '07/02/19', '2019', 'Present', 'February', '07_02_19', NULL, NULL),
(2, 4, '07/02/19', '2019', 'Absence', 'February', '07_02_19', NULL, NULL),
(3, 5, '07/02/19', '2019', 'Present', 'February', '07_02_19', NULL, NULL),
(4, 6, '07/02/19', '2019', 'Present', 'February', '07_02_19', NULL, NULL),
(9, 1, '09/02/19', '2019', 'Present', NULL, '09_02_19', NULL, '2019-02-09 15:29:45'),
(10, 4, '09/02/19', '2019', 'Present', NULL, '09_02_19', NULL, '2019-02-09 15:29:27'),
(11, 5, '09/02/19', '2019', 'Present', NULL, '09_02_19', NULL, '2019-02-09 15:29:27'),
(12, 6, '09/02/19', '2019', 'Present', NULL, '09_02_19', NULL, '2019-02-09 15:29:27'),
(13, 1, '10/02/19', '2019', 'Present', 'February', '10_02_19', NULL, NULL),
(14, 4, '10/02/19', '2019', 'Present', 'February', '10_02_19', NULL, NULL),
(15, 5, '10/02/19', '2019', 'Present', 'February', '10_02_19', NULL, NULL),
(16, 6, '10/02/19', '2019', 'Present', 'February', '10_02_19', NULL, NULL),
(17, 1, '11/02/19', '2019', 'Present', NULL, '11_02_19', NULL, '2019-02-11 13:47:06'),
(18, 4, '11/02/19', '2019', 'Present', NULL, '11_02_19', NULL, '2019-02-11 13:47:06'),
(19, 5, '11/02/19', '2019', 'Present', NULL, '11_02_19', NULL, '2019-02-11 13:47:06'),
(20, 6, '11/02/19', '2019', 'Present', NULL, '11_02_19', NULL, '2019-02-11 13:47:06'),
(21, 1, '07/03/19', '2019', 'Present', NULL, '07_03_19', NULL, '2019-03-07 16:03:23'),
(22, 4, '07/03/19', '2019', 'Present', NULL, '07_03_19', NULL, '2019-03-07 16:03:23'),
(23, 5, '07/03/19', '2019', 'Present', NULL, '07_03_19', NULL, '2019-03-07 16:03:23'),
(24, 6, '07/03/19', '2019', 'Present', NULL, '07_03_19', NULL, '2019-03-07 16:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', NULL, NULL),
(2, 'Hyundai', NULL, NULL),
(3, 'Archar', NULL, NULL),
(4, 'Mitshubishi', NULL, NULL),
(5, 'Echovell', NULL, NULL),
(6, 'Joyota', NULL, NULL),
(7, 'Motorbike', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Sujon Ahmed', 'sujon123@gmail.com', '01961363543', '146 gandaria D.I.T plot,', 'SA Motor House', 'public/customer/4wok5Ufg8sxSmggLA1Oz.jpg', 'Sujon Ahmed', '23437492992309', 'Dutch Bangla Bank', 'Islampur', 'Dhaka', NULL, NULL),
(2, 'Jahidul Islam', 'jahidul@gmail.com', '0129478423', 'Dhaka gandaria sadhona', 'Jahid Store', 'public/customer/0W3IM.png', 'Jahidul Islam', '9004748234', 'UCB Bank', 'Dhanmondi', 'Dhaka', '2019-02-18 12:43:10', NULL),
(3, 'Jihad Khan', 'jihadkhan@gmail.com', '0172893812', 'Dhaka gandaria sadhona', 'Jihadstore', 'public/customer/8BKKb.png', 'Jihad Khan', '84233342', 'Dhaka Bank', 'Dhanmondi', 'Dhaka', '2019-03-07 06:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `nid_no`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Sohidul Islam', 'sohidulislam353@gmail.com', '1961363543', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', 'Yes, 3 years', 'public/employee/h3f3M.jpg', '34374941209128', '12000', '10', 'Dhaka', '2018-12-08 14:01:00', NULL),
(4, 'Minhajul Islam', 'minhaj@gmail.com', '0134993923423', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', '4 years experience', 'public/employee/qj4R1.png', '930178743834', '30000', '10', 'Dhaka', '2019-01-18 12:40:55', NULL),
(5, 'Sahin afnan', 'sahinafnan@gmail.com', '19613635433', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', '1 years', 'public/employee/QCdJEyi5IOfNNbl6qIhh.png', '343749412091283', '10000', '10', 'Dhaka', '2018-12-23 14:01:05', NULL),
(6, 'Sahid Mia', 'sahidmia@gmail.com', '017993424732', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', '2 years', 'public/employee/ZlJn9.png', '1438482384934', '14000', '10', 'Dhaka', '2019-01-01 12:52:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `details`, `amount`, `month`, `date`, `year`, `created_at`, `updated_at`) VALUES
(1, '2 keyboard 800', '900', 'January', '13/01/19', 2019, NULL, NULL),
(2, '2 computers 40000', '40000', 'January', '13/01/19', 2019, NULL, NULL),
(3, '2 pensdrive 32 gb', '1000', 'January', '13/01/19', 2019, NULL, NULL),
(4, 'Internet Bill 2000 | cocacola and water 100', '2100', 'January', '13/01/19', 2019, NULL, NULL),
(5, 'Coffee 4 person.', '200', 'January', '17/01/19', 2019, NULL, NULL),
(6, 'Electricity bill 4000, and net bill 3000', '7000', 'January', '18/01/19', 2019, NULL, NULL),
(7, '2 laptop buy', '40000', 'February', '11/02/19', 2019, NULL, NULL),
(8, 'Buying 2 chair for office per piech 4000', '8000', 'March', '07/03/19', 2019, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_08_130430_create_employees_table', 2),
(4, '2018_12_23_140414_create_customers_table', 3),
(5, '2018_12_24_154612_create_suppliers_table', 4),
(6, '2018_12_29_152541_create_salaries_table', 5),
(7, '2019_01_01_124059_create_salaries_table', 6),
(8, '2019_01_07_123547_create_categories_table', 7),
(9, '2019_01_07_130138_create_products_table', 8),
(10, '2019_01_13_114831_creat_expenses_table', 9),
(11, '2019_01_18_124159_creat_attendences_table', 10),
(12, '2019_02_09_073143_create_settings_table', 11),
(13, '2019_02_25_061647_create_orders_table', 12),
(14, '2019_02_25_061700_create_orderdetails_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitcost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 13, '4', '2200', '10648', NULL, NULL),
(2, 1, 14, '4', '3400', '16456', NULL, NULL),
(3, 1, 3, '2', '4800', '11616', NULL, NULL),
(4, 1, 17, '4', '1700', '8228', NULL, NULL),
(5, 2, 16, '4', '1400', '6776', NULL, NULL),
(6, 2, 13, '1', '2200', '2662', NULL, NULL),
(7, 2, 17, '4', '1700', '8228', NULL, NULL),
(8, 2, 2, '4', '2400', '11616', NULL, NULL),
(9, 3, 2, '2', '2400', '5808', NULL, NULL),
(10, 3, 1, '3', '1400', '5082', NULL, NULL),
(11, 3, 12, '1', '4000', '4840', NULL, NULL),
(12, 3, 19, '3', '3700', '13431', NULL, NULL),
(13, 4, 13, '4', '2200', '10648', NULL, NULL),
(14, 5, 14, '4', '3400', '16456', NULL, NULL),
(15, 5, 17, '1', '1700', '2057', NULL, NULL),
(16, 5, 15, '4', '4000', '19360', NULL, NULL),
(17, 5, 2, '1', '2400', '2904', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_products` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `total`, `payment_status`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, 1, '25/02/19', 'success', '14', '38,800.00', '8,148.00', '46,948.00', 'Handcash', '46948', '00', NULL, NULL),
(2, 2, '25/02/19', 'success', '13', '24,200.00', '5,082.00', '29,282.00', 'Handcash', '29000', '282', NULL, NULL),
(3, 3, '07/03/19', 'success', '9', '24,100.00', '5,061.00', '29,161.00', 'Handcash', '29170', NULL, NULL, NULL),
(4, 1, '07/03/19', 'success', '4', '8,800.00', '1,848.00', '10,648.00', 'Handcash', '10700', NULL, NULL, NULL),
(5, 3, '07/03/19', 'success', '10', '33,700.00', '7,077.00', '40,777.00', 'Handcash', '40000', '777', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_garage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `sup_id`, `product_code`, `product_garage`, `product_route`, `product_image`, `buy_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'Gear Level', 2, 2, 'G1234', 'A', '3', 'public/Products/hdGVYuNEzcwXqzPrSh6B.jpg', '2019-01-07', '2024-01-07', '1100', '1400', NULL, NULL),
(2, 'Speed Motor', 6, 2, 'S4823', 'A', '2', 'public/Products/HT4Cs.jpg', '2019-01-08', '2028-01-08', '2000', '2400', '2019-01-07 13:40:10', NULL),
(3, 'Windscreen', 1, 2, 'W3723', 'B', '1', 'public/Products/xpHKO.jpg', '2019-01-08', '2028-01-08', '4000', '4800', '2019-01-08 13:50:56', NULL),
(12, 'desk fan w40', 7, 1, ' M38232', 'C', '1', 'public/Products/deskfan1.jpg', '43504', '44965', '3400', '4000', '2019-02-10 10:28:30', '2019-02-10 10:28:30'),
(13, 'Rospa Tyer', 1, 2, 'T1231', 'A', '4', 'public/Products/vU1N3.jpg', '2019-02-10', '2021-02-10', '2000', '2200', '2019-02-11 02:53:03', NULL),
(14, 'Rimpex Tyer', 2, 1, 'T7123', 'A', '4', 'public/Products/NDx2y.jpg', '2019-02-10', '2022-02-10', '3000', '3400', '2019-02-11 02:54:03', NULL),
(15, 'Gazi Tyer', 2, 2, 'G2312', 'A', '4', 'public/Products/Kkami.png', '2019-02-10', '2023-02-10', '3400', '4000', '2019-02-11 02:55:40', NULL),
(16, 'Cabin air filter', 4, 2, 'C493434', 'B', '1', 'public/Products/dmogE.jpg', '2019-02-10', '2020-02-18', '1200', '1400', '2019-02-11 02:58:20', NULL),
(17, 'Cabin air filter', 5, 1, 'C34283', 'B', '1', 'public/Products/Z5bjZ.jpg', '2019-02-10', '2020-02-12', '1400', '1700', '2019-02-11 03:00:09', NULL),
(18, 'K&F Fuel Filter', 6, 2, 'F342342', 'C', '1', 'public/Products/pS6ct.jpg', '2019-02-10', '2020-02-12', '3000', '3400', '2019-02-11 03:02:04', NULL),
(19, 'Disel fuel Filter', 7, 2, 'F3492384', 'C', '2', 'public/Products/ZigMP.jpg', '2019-02-10', '2020-02-10', '3000', '3700', '2019-02-11 03:03:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `company_address`, `company_email`, `company_phone`, `company_logo`, `company_mobile`, `company_city`, `company_country`, `company_zipcode`, `created_at`, `updated_at`) VALUES
(1, 'Echovel', 'Dhaka , Sutrapur Banglabazar old street', 'sohidulislam@gmail.com', '0193472893', 'public/company/PNVgqNjTYOxiRGbmwFjA.png', '012783122', 'Dhaka', 'Bangladesh', '1204', '2019-02-08 08:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branchname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `type`, `photo`, `shop`, `accountholder`, `accountnumber`, `bankname`, `branchname`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Jahidul Hasan Amily', 'jahidul@gmail.com', '019613632333', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', 'WholeSeller', 'public/supplier/XUB21FtwkMKjMCEEcNhP.jpg', 'Jahidul Store', 'Jahidul Hasan', '3943489234', 'Islami Bank Limited', 'Islampur', 'Dhaka', '2018-12-24 16:05:50', NULL),
(2, 'Masud Khan', 'masudkhan@gmail.com', '0177238433', '146 gandaria D.I.T plot, 146 gandaria D.I.T plot', 'Distributor', 'public/supplier/5PcVk.png', 'Masud Enter Prize', 'Masud Khan', '48239472483', 'Standard Chartard', 'Dhanmondi', 'Dhaka', '2019-01-07 13:38:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sohidul Islam', 'sohidulislam@gmail.com', NULL, '$2y$10$AB8Tl/gGjpX20PuFAOE3CuDz647OVBrQTG295dywKv4x7twjwt8MS', 'P94216ua8IQPUO2KScrKXsOhSttL4Vt3qUAAlyKEhBZKmJJPRA8CEvSLBokX', '2018-11-18 06:42:55', '2018-11-18 06:42:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
