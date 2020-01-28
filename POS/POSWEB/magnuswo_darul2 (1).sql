-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 05:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magnuswo_darul2`
--

-- --------------------------------------------------------

--
-- Table structure for table `aip_account_group`
--

CREATE TABLE `aip_account_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `parent_group_id` int(11) NOT NULL,
  `account_type` enum('0','1') NOT NULL COMMENT '0-Builtin Account,1-Created Account',
  `display_name` varchar(100) NOT NULL,
  `discount` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_account_group`
--

INSERT INTO `aip_account_group` (`id`, `group_name`, `parent_group_id`, `account_type`, `display_name`, `discount`, `status`, `created_user`, `created_time`) VALUES
(1, 'Balance Sheet', 0, '0', 'Balance Sheet', '', '1', '1', '2019-12-23 03:59:20'),
(2, 'Assets', 1, '0', 'Assets', '', '1', '1', '2019-12-23 04:00:08'),
(3, 'Fixed Assets', 2, '0', 'Fixed Assets', '', '1', '1', '2019-12-23 04:00:39'),
(4, 'Immovable Assets', 3, '0', 'Immovable Assets', '', '1', '1', '2019-12-23 04:01:05'),
(5, 'Movable Assets', 3, '0', 'Movable Assets', '', '1', '1', '2019-12-23 04:01:36'),
(6, 'Investments', 2, '0', 'Investments', '', '1', '1', '2019-12-23 04:01:58'),
(7, 'Current Assets', 2, '0', 'Current Assets', '', '1', '1', '2019-12-23 04:02:24'),
(8, 'Inventories', 7, '0', 'Inventories', '', '1', '1', '2019-12-23 04:02:49'),
(9, 'Debtors', 7, '0', 'Debtors', '', '1', '1', '2019-12-23 04:03:40'),
(10, 'Banks', 7, '0', 'Banks', '', '1', '1', '2019-12-23 04:03:40'),
(11, 'Cash in Hand', 7, '0', 'Cash in Hand', '', '1', '1', '2019-12-23 04:03:58'),
(12, 'Loans and Advances', 7, '0', 'Loans and Advances', '', '1', '1', '2019-12-23 04:06:08'),
(13, 'Loans Given', 12, '0', 'Loans Given', '', '1', '1', '2019-12-23 04:07:31'),
(14, 'Advances', 12, '0', 'Advances', '', '1', '', '2019-12-23 04:07:50'),
(15, 'Liabilities', 1, '0', 'Liabilities', '', '1', '1', '2019-12-23 04:09:06'),
(16, 'Owners Funds', 15, '0', 'Owners Funds', '', '1', '', '2019-12-23 04:09:06'),
(17, 'Capital', 16, '0', 'Capital', '', '1', '1', '2019-12-23 04:09:51'),
(18, 'Reserves and Surplus', 16, '0', 'Reserves and Surplus', '', '1', '1', '2019-12-23 04:09:51'),
(19, 'Loan Funds', 15, '0', 'Loan Funds', '', '1', '1', '2019-12-23 04:10:19'),
(20, 'Secured Loans', 19, '0', 'Secured Loans', '', '1', '1', '2019-12-23 04:11:01'),
(21, 'Unsecured Loans', 19, '0', 'Unsecured Loans', '', '1', '1', '2019-12-23 04:11:01'),
(22, 'Loan from Partners', 21, '0', 'Loan from Partners', '', '1', '1', '2019-12-23 04:11:33'),
(23, 'Current Liabilities ', 15, '0', 'Current Liabilities & Provisions\r\n', '', '1', '1', '2019-12-23 04:12:38'),
(24, 'Creditors', 23, '0', 'Creditors', '', '1', '1', '2019-12-23 04:14:27'),
(25, 'Provisions for Expen', 23, '0', 'Provisions for Expense', '', '1', '1', '2019-12-23 04:14:27'),
(26, 'Duties and Taxes Pay', 23, '0', 'Duties and Taxes Payable', '', '1', '1', '2019-12-23 04:15:04'),
(27, 'Suspense Accounts', 15, '0', 'Suspense Accounts', '', '1', '1', '2019-12-23 04:15:21'),
(28, 'Profit and Loss Acco', 0, '0', 'Profit and Loss Account', '', '1', '1', '2019-12-23 04:15:49'),
(29, 'Income', 28, '0', 'Income', '', '1', '1', '2019-12-23 04:16:44'),
(30, 'Direct Income', 29, '0', 'Direct Income', '', '1', '1', '2019-12-23 04:16:44'),
(31, 'Sales', 30, '0', 'Sales', '', '1', '1', '2019-12-23 04:17:21'),
(32, 'Carriage Outward', 30, '0', 'Carriage Outward', '', '1', '1', '2019-12-23 04:17:21'),
(33, 'Discount Received', 34, '0', 'Discount Received', '', '1', '1', '2019-12-23 04:17:51'),
(34, 'Indirect Income', 29, '0', 'Indirect Income', '', '1', '1', '2019-12-23 04:18:13'),
(35, 'Interest Received', 34, '0', 'Interest Received', '', '1', '1', '2019-12-23 04:27:48'),
(36, 'Expenses', 28, '0', 'Expenses', '', '1', '1', '2019-12-23 04:19:08'),
(37, 'Direct Expenses', 36, '0', 'Direct Expenses', '', '1', '1', '2019-12-23 04:19:08'),
(38, 'Purchases', 37, '0', 'Purchases', '', '1', '1', '2019-12-23 04:19:22'),
(39, 'Carriage Inward', 37, '0', 'Carriage Inward', '', '1', '1', '2019-12-23 04:19:40'),
(40, 'Indirect Expenses', 36, '0', 'Indirect Expenses', '', '1', '1', '2019-12-23 04:19:59'),
(41, 'Salaries and Incenti', 40, '0', 'Salaries and Incentives', '', '1', '1', '2019-12-23 04:20:16'),
(42, 'Salaries', 41, '0', 'Salaries', '', '1', '1', '2019-12-23 04:20:51'),
(43, 'Incentives', 41, '0', 'Incentives', '', '1', '1', '2019-12-23 04:20:51'),
(44, 'Staff Welfare', 40, '0', 'Staff Welfare', '', '1', '1', '2019-12-23 04:28:39'),
(45, 'Administrative Expen', 40, '0', 'Administrative Expenses', '', '1', '1', '2019-12-23 04:28:39'),
(46, 'Office Expenses', 45, '0', 'Office Expenses', '', '1', '1', '2019-12-23 04:29:36'),
(47, 'Postage and Telegram', 45, '0', 'Postage and Telegrams', '', '1', '1', '2019-12-23 04:30:13'),
(48, 'Printing and Station', 45, '0', 'Printing and Stationeries', '', '1', '1', '2019-12-23 04:30:13'),
(49, 'Discount Given', 40, '0', 'Discount Given', '', '1', '1', '2019-12-23 04:31:36'),
(50, 'Bank Commission and ', 40, '0', 'Bank Commission and Charges', '', '1', '1', '2019-12-23 04:31:36'),
(51, 'Rent', 40, '0', 'Rent', '', '1', '1', '2019-12-23 04:32:19'),
(52, 'Advertisement', 40, '0', 'Advertisement', '', '1', '1', '2019-12-23 04:32:19'),
(53, 'Depreciation', 40, '0', 'Depreciation', '', '1', '1', '2019-12-23 04:32:52'),
(54, 'Interest Given', 40, '0', 'Interest Given', '', '1', '1', '2019-12-23 04:32:52'),
(55, 'Bad Debts', 40, '0', 'Bad Debts', '', '1', '1', '2019-12-23 04:33:07'),
(56, 'Closing Stock', 8, '0', 'Closing Stock', '', '1', '1', '2019-12-23 04:33:24'),
(57, 'Other Income', 34, '0', 'Other Income', '', '1', '1', '2019-12-23 04:35:43'),
(58, 'Miscellaneous Expens', 40, '0', 'Miscellaneous Expense\r\n', '', '1', '1', '2019-12-23 04:36:01'),
(59, 'Bank Overdraft', 23, '0', 'Bank Overdraft', '', '1', '1', '2019-12-23 04:37:53'),
(60, 'Freight', 38, '0', 'Freight', '', '1', '1', '2019-12-23 04:37:53'),
(61, 'Other Expense', 40, '0', 'Other Expense', '', '1', '1', '2019-12-23 04:38:12'),
(62, 'Marketing Expense', 61, '0', 'Marketing Expense', '', '1', '1', '2019-12-23 04:38:55'),
(63, 'Interest', 40, '0', 'Interest', '', '1', '1', '2019-12-23 04:39:11'),
(64, 'Profit/Loss for Prev', 18, '0', 'Profit/Loss for Previous Year', '', '1', '1', '2019-12-23 04:39:30'),
(65, 'Uncleared Receipts', 18, '0', 'Uncleared Receipts', '', '1', '1', '2019-12-23 04:39:47'),
(66, 'Miscellaneous Assets', 2, '0', 'Miscellaneous Assets', '', '1', '1', '2019-12-23 04:40:00'),
(67, 'Deposits', 12, '0', 'Deposits', '', '1', '1', '2019-12-23 04:40:12'),
(68, 'Opening Stock', 37, '0', 'Opening Stock', '', '1', '1', '2019-12-23 04:40:31'),
(69, 'Production Expenses', 37, '0', 'Production Expenses', '', '1', '1', '2019-12-23 04:40:59'),
(70, 'Agent Commission', 23, '0', 'Agent Commission\r\n', '', '1', '1', '2019-12-23 04:41:20'),
(71, 'Insurance', 7, '0', 'Insurance', '', '1', '1', '2019-12-23 04:41:33'),
(72, 'Salary Payable', 23, '0', 'Salary Payable', '', '1', '1', '2019-12-23 04:41:51'),
(73, 'Service', 34, '0', 'Service', '', '1', '1', '2019-12-23 04:42:14'),
(74, 'Product Resources', 37, '0', 'Product Resources', '', '1', '1', '2019-12-23 04:42:28'),
(75, 'Users', 0, '0', 'Users', '', '1', '1', '2019-12-23 06:02:24'),
(76, 'Cash Customer', 9, '0', 'Cash Customer', '', '1', '1', '2019-12-23 06:03:49'),
(77, 'Super Admin', 0, '0', 'Super Admin', '', '1', '1', '2019-12-23 06:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `aip_account_head`
--

CREATE TABLE `aip_account_head` (
  `id` int(11) NOT NULL,
  `acc_group_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT '0',
  `acc_name1` varchar(50) NOT NULL,
  `acc_name2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address1` text,
  `address2` text,
  `customer_trn` varchar(90) DEFAULT NULL,
  `other_details` text NOT NULL,
  `acc_category` enum('0','1') NOT NULL COMMENT '0-Internal Account,1-External Account',
  `discount` varchar(10) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_account_head`
--

INSERT INTO `aip_account_head` (`id`, `acc_group_id`, `branch_id`, `acc_name1`, `acc_name2`, `city`, `location`, `email`, `telephone`, `fax`, `contact_person`, `mobile`, `address1`, `address2`, `customer_trn`, `other_details`, `acc_category`, `discount`, `status`, `created_user`, `created_time`) VALUES
(1, 11, 0, 'Cash Account', 'Cash Account', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:13:30'),
(2, 26, 0, 'VAT on Purchase', 'VAT on Purchase', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:16:14'),
(3, 38, 0, 'Purchase Return Account', 'Purchase Return Account', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:17:40'),
(4, 31, 0, 'Sales Account', 'Sales Account', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:19:05'),
(5, 49, 0, 'Discount on Sales', 'Discount on Sales', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:20:09'),
(6, 26, 0, 'VAT on Sales', 'VAT on Sales', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:20:41'),
(7, 31, 0, 'Sales Return Account', 'Sales Return Account', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:21:53'),
(8, 58, 0, 'Round Off', 'Round Off', NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-23 06:22:51'),
(9, 10, 0, 'Bank Account', NULL, NULL, NULL, '', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2020-01-13 09:01:14'),
(1000, 77, 1, 'NIhad', 'NIhad', 'kannur', 'thazhe chovva', 'nihad@gmail.com', '', '65478596', 'NIhad', '15758856', 'address1', 'address2', NULL, 'other details', '1', NULL, '1', 'while install', '2019-09-18 06:28:13'),
(1001, 75, 1, 'Arjun', 'Arjun', 'Musaffah', 'Abu Dhabi', 'arjun@gmail.com', '123456789', '', '', '', 'address1', '', NULL, '', '0', NULL, '1', '1', '2019-10-04 09:34:30'),
(1002, 77, 1, 'Anand', 'Anand', 'Musaffah', 'Abu Dhabi', 'anand@gmail.com', '852652', '', '', '', 'anad address', '', NULL, '', '0', NULL, '1', '1', '2019-10-04 09:38:00'),
(1003, 75, 1, 'Rajeesh', 'Rajeesh', 'Kannur', 'Kochi', 'rajeesh@gmail.com', '8524569', '', '', '', 'address1', '', NULL, '', '0', NULL, '1', '1', '2019-10-04 09:45:24'),
(1004, 9, 1, 'Muhammed Basheer', NULL, NULL, NULL, '', NULL, '', '', '0525665245', '', '', NULL, '', '0', NULL, '1', '', '2019-11-19 11:48:58'),
(1005, 9, 1, 'Muhammed Basheer', NULL, NULL, NULL, '', NULL, '', '', '0502255625', 'Muhammed Basheer address', '', NULL, 'Muhammed Basheer other details', '0', NULL, '1', '', '2019-11-19 13:04:07'),
(1006, 9, 1, 'Salih', NULL, NULL, NULL, '', NULL, '', '', '0505522556', '', '', NULL, 'other details', '0', NULL, '1', '', '2019-11-20 04:31:18'),
(1008, 75, 1, 'Ramesh', NULL, NULL, NULL, 'ramesh@gmail.com', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-11-21 05:30:53'),
(1009, 75, 1, 'test usr', NULL, NULL, NULL, 'test@gmail.com', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-11-25 06:17:03'),
(1010, 76, 1, 'Cash Customer', 'Cash Customer', 'Cash Customer city', 'Cash Customer location', 'cash_customer@gmail.com', '0000000000', '0000000000', 'Cash Customer', '000000000', '', '', '', '', '1', NULL, '1', '', '2019-11-29 11:17:17'),
(1011, 77, 1, 'klas', NULL, NULL, NULL, 'klas@gmail.com', NULL, '', '', '', NULL, NULL, NULL, '', '0', NULL, '1', '1', '2019-12-07 09:25:21'),
(1012, 9, 1, 'Abdullah', NULL, NULL, NULL, '', NULL, '', '', '0501234567', 'Abdullah Address1', '', NULL, 'Abdullah other details', '0', NULL, '1', '', '2019-11-20 06:08:35'),
(1013, 9, 1, 'Sayad', NULL, NULL, NULL, '', NULL, '', '', '9744362862', 'Tly', 'Tly', '999', '', '0', NULL, '1', '', '2020-01-02 12:16:18'),
(1014, 9, 1, 'SKM', NULL, NULL, NULL, '', NULL, '', '', '9037760313', 'KPBA', 'KPBA', '147852369', '', '0', NULL, '1', '', '2020-01-03 09:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `aip_account_ledger`
--

CREATE TABLE `aip_account_ledger` (
  `id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `balance` float NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_account_ledger`
--

INSERT INTO `aip_account_ledger` (`id`, `head_id`, `balance`, `currency_id`) VALUES
(10, 6, -852.964, 2),
(11, 4, -10662, 2),
(12, 1013, 413.01, 2),
(13, 1, 7870, 2),
(14, 5, 14, 2),
(15, 1010, 3367.99, 2),
(16, 1014, -0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `aip_assigned_addons`
--

CREATE TABLE `aip_assigned_addons` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_assigned_addons`
--

INSERT INTO `aip_assigned_addons` (`id`, `branch_id`, `product_id`, `addon_id`, `price`, `created_user`, `created_date`) VALUES
(1, 1, 375, 4, 15, 1, '0000-00-00 00:00:00'),
(2, 1, 375, 19, 10, 1, '0000-00-00 00:00:00'),
(3, 1, 375, 282, 0, 1, '0000-00-00 00:00:00'),
(4, 1, 19, 4, 1, 1, '0000-00-00 00:00:00'),
(5, 1, 19, 257, 3, 1, '0000-00-00 00:00:00'),
(6, 1, 19, 265, 1, 1, '0000-00-00 00:00:00'),
(7, 1, 19, 341, 3, 1, '0000-00-00 00:00:00'),
(8, 1, 19, 269, 0, 1, '0000-00-00 00:00:00'),
(9, 1, 19, 349, 1, 1, '0000-00-00 00:00:00'),
(10, 1, 155, 218, 10, 1, '0000-00-00 00:00:00'),
(11, 1, 155, 115, 5, 1, '0000-00-00 00:00:00'),
(12, 1, 155, 333, 20, 1, '0000-00-00 00:00:00'),
(13, 1, 155, 247, 1, 1, '0000-00-00 00:00:00'),
(14, 1, 155, 35, 20, 1, '0000-00-00 00:00:00'),
(15, 1, 155, 254, 10, 1, '0000-00-00 00:00:00'),
(16, 1, 155, 221, 25, 1, '0000-00-00 00:00:00'),
(17, 1, 155, 91, 25, 1, '0000-00-00 00:00:00'),
(18, 1, 155, 4, 30, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `aip_assign_backend_dep_to_users`
--

CREATE TABLE `aip_assign_backend_dep_to_users` (
  `id` int(11) NOT NULL,
  `backend_dep_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_assign_customer_to_group`
--

CREATE TABLE `aip_assign_customer_to_group` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_assign_customer_to_group`
--

INSERT INTO `aip_assign_customer_to_group` (`id`, `customer_id`, `group_id`, `status`) VALUES
(19, 2, 12, '0'),
(20, 4, 12, '0'),
(28, 1, 2, '0'),
(29, 2, 16, '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_assign_user_to_branch`
--

CREATE TABLE `aip_assign_user_to_branch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_assign_user_to_branch`
--

INSERT INTO `aip_assign_user_to_branch` (`id`, `user_id`, `branch_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_backend_dependencies`
--

CREATE TABLE `aip_backend_dependencies` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `name_lang` varchar(300) CHARACTER SET utf8 NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_backend_dependencies`
--

INSERT INTO `aip_backend_dependencies` (`id`, `name`, `name_lang`, `status`) VALUES
(1, 'test', '', '1'),
(3, 'dfgdgf', '', '0'),
(4, 'dfghdfgh', '', '0'),
(5, 'gfhjghj', '', '0'),
(6, 'sdg', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_branch`
--

CREATE TABLE `aip_branch` (
  `id` int(11) NOT NULL,
  `parent_company_id` int(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `fax` varchar(30) NOT NULL,
  `licence_no` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `time_zone` varchar(50) NOT NULL,
  `inv_prefix_char` varchar(10) NOT NULL,
  `inv_auto_count_length` int(11) NOT NULL,
  `custid_pref_char` varchar(10) NOT NULL,
  `custid_auto_count_length` int(11) NOT NULL,
  `week_start` text NOT NULL,
  `date_format` text NOT NULL,
  `qty_based_split` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `auto_assign` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `session_expire_time` int(11) NOT NULL DEFAULT '300' COMMENT 'In seconds',
  `billing_to_delivery_diffrence` int(11) NOT NULL,
  `default_service_product_quantity` int(11) NOT NULL,
  `default_service_measurement_quantity` int(11) NOT NULL,
  `default_product_image` varchar(250) DEFAULT NULL,
  `mobile_number_format` varchar(100) NOT NULL,
  `account_start_year` date NOT NULL,
  `account_end_year` date NOT NULL,
  `default_barcode` varchar(250) NOT NULL,
  `tax_registration_number` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_branch`
--

INSERT INTO `aip_branch` (`id`, `parent_company_id`, `city`, `state`, `postal_code`, `email`, `telephone`, `fax`, `licence_no`, `website`, `contact_person`, `country_id`, `address`, `branch_code`, `currency_id`, `time_zone`, `inv_prefix_char`, `inv_auto_count_length`, `custid_pref_char`, `custid_auto_count_length`, `week_start`, `date_format`, `qty_based_split`, `auto_assign`, `session_expire_time`, `billing_to_delivery_diffrence`, `default_service_product_quantity`, `default_service_measurement_quantity`, `default_product_image`, `mobile_number_format`, `account_start_year`, `account_end_year`, `default_barcode`, `tax_registration_number`, `status`) VALUES
(1, 0, 'Kannur', '', '', '', '', '', '', '', '', 3, 'as', 'CAN', 2, 'Asia/Dubai', '', 0, '', 0, '', 'DD/MM/YYYY', '0', '0', 3000, 0, 0, 0, 'product_default_image.png', '', '0000-00-00', '0000-00-00', '', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_commision`
--

CREATE TABLE `aip_commision` (
  `id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `backend_dep_id` int(11) NOT NULL,
  `commission_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_commision`
--

INSERT INTO `aip_commision` (`id`, `designation_id`, `backend_dep_id`, `commission_amount`) VALUES
(1, 1, 1, 2),
(2, 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aip_country_settings`
--

CREATE TABLE `aip_country_settings` (
  `id` int(11) NOT NULL,
  `country_name` varchar(40) NOT NULL,
  `country_short` varchar(3) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_country_settings`
--

INSERT INTO `aip_country_settings` (`id`, `country_name`, `country_short`, `status`) VALUES
(1, 'Bahrain', 'BHR', '1'),
(2, 'Egypt', 'EGY', '1'),
(3, 'India', 'IND', '1'),
(4, 'Kuwait', 'KWT', '1'),
(5, 'Malaysia', 'MYS', '1'),
(6, 'Oman', 'OMN', '1'),
(7, 'Qatar', 'QAT', '1'),
(8, 'Saudi Arabia', 'SAU', '1'),
(9, 'United Arab Emirates', 'UAE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_currencies`
--

CREATE TABLE `aip_currencies` (
  `id` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_currencies`
--

INSERT INTO `aip_currencies` (`id`, `currency`, `status`) VALUES
(1, 1000, '1'),
(2, 2000, '1'),
(3, 500, '1'),
(4, 100, '1'),
(5, 200, '1'),
(6, 50, '1'),
(7, 20, '1'),
(8, 10, '1'),
(9, 5, '1'),
(10, 1, '1'),
(11, 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_currency_settings`
--

CREATE TABLE `aip_currency_settings` (
  `id` int(11) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currency_short` varchar(10) NOT NULL,
  `currency_symbol` varchar(30) CHARACTER SET utf8 NOT NULL,
  `no_of_decimals` int(11) NOT NULL,
  `position` enum('0','1') NOT NULL COMMENT '0-Left,1-Right',
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_currency_settings`
--

INSERT INTO `aip_currency_settings` (`id`, `currency`, `currency_short`, `currency_symbol`, `no_of_decimals`, `position`, `status`) VALUES
(1, 'Indian Rupee Sign', 'INR', '<i class=\"fa fa-inr\"></i>', 2, '0', '1'),
(2, 'UAE dirham', 'AED', 'د.إ', 2, '1', '1'),
(3, 'Kuwaiti dinar', 'KWD', '', 2, '0', '1'),
(4, 'Malaysian ringgit', 'MYR', '&#8377', 2, '0', '1'),
(5, 'Omani rial', 'OMR', '', 2, '0', '1'),
(6, 'Qatari riyal', 'QR ', '', 2, '0', '1'),
(7, 'Bahraini dinar', 'BHD', '', 2, '0', '1'),
(8, 'Saudi riyal', 'SR', '', 2, '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_customers`
--

CREATE TABLE `aip_customers` (
  `id` int(11) NOT NULL,
  `account_head_id` int(11) NOT NULL,
  `customer_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `card_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_customers`
--

INSERT INTO `aip_customers` (`id`, `account_head_id`, `customer_id`, `card_no`) VALUES
(1, 9, '1', ''),
(2, 10, '2', ''),
(3, 11, '3', ''),
(4, 12, '4', ''),
(5, 1006, '5', ''),
(6, 1005, 'cust_1526', 'card_123'),
(7, 1004, '7', 'card_1234'),
(8, 1009, 'cust_8', 'card_1235'),
(9, 1011, 'cust_9', 'card_158'),
(10, 1010, '000000', ''),
(11, 1012, 'cust_5', 'card_123'),
(12, 1013, 'fff', ''),
(13, 1014, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `aip_customer_attributes`
--

CREATE TABLE `aip_customer_attributes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qstn_id` int(11) NOT NULL,
  `value` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_field_one`
--

CREATE TABLE `aip_custom_field_one` (
  `id` int(9) NOT NULL,
  `product_id` int(11) NOT NULL,
  `field_one` varchar(100) DEFAULT NULL,
  `image_new` varchar(234) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aip_custom_field_one`
--

INSERT INTO `aip_custom_field_one` (`id`, `product_id`, `field_one`, `image_new`) VALUES
(1, 5, '345', NULL),
(2, 5, '345', NULL),
(3, 6, '789', NULL),
(4, 50, '57', NULL),
(5, 0, '565', NULL),
(6, 175, '657', NULL),
(7, 182, 'dfg', NULL),
(8, 183, 'aa', NULL),
(9, 10, 'dfgdf', NULL),
(10, 187, 'gj', NULL),
(11, 193, 'cvbcvb', NULL),
(12, 196, 'th', NULL),
(13, 198, 'ghj', NULL),
(14, 199, 'hjm', NULL),
(15, 200, 'vbn', NULL),
(16, 210, 'rftghrf', NULL),
(17, 211, 'aa', NULL),
(18, 212, '11', NULL),
(19, 213, '54345', NULL),
(20, 184, '4675678', NULL),
(21, 214, 'fgdfg', NULL),
(22, 231, NULL, 'dynamic_image_new_5vYRuEBsTDb0VUn.png'),
(23, 233, NULL, 'dynamic_image_new_QJklnT59REqHMXI.png'),
(24, 234, NULL, '0'),
(25, 235, NULL, '0'),
(26, 236, NULL, '0'),
(27, 237, NULL, '0'),
(28, 238, NULL, '0'),
(29, 239, NULL, '0'),
(30, 241, NULL, 'dynamic_image_new_mYR5ayiMgDsPr1n.png'),
(31, 242, NULL, '0'),
(32, 243, NULL, '0'),
(33, 246, '456', 'dynamic_image_new_t4BTnMNc927aPbq.png'),
(34, 314, 'erex', NULL),
(35, 315, 'sda', '0'),
(36, 316, '', '0'),
(37, 317, '', '0'),
(38, 318, 'dsf', 'dynamic_image_new_ghm7243crTUXZl5.png'),
(39, 319, 'sdf', 'dynamic_image_new_Fj2KXCAJr1uyMUS.png'),
(40, 320, '', '0'),
(41, 321, '', '0'),
(42, 373, '', NULL),
(43, 375, '567', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_language_text`
--

CREATE TABLE `aip_custom_language_text` (
  `id` int(11) NOT NULL,
  `module_name` varchar(30) NOT NULL,
  `lang_identifier` varchar(30) NOT NULL,
  `language_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_custom_language_text`
--

INSERT INTO `aip_custom_language_text` (`id`, `module_name`, `lang_identifier`, `language_text`) VALUES
(20, 'mainmenu', 'english', 'a:1:{s:13:\"DASHBOARD_TXT\";s:9:\"Dashboard\";}'),
(21, 'language_files', 'Arabic', 'a:2:{s:10:\"MODULE_TXT\";s:10:\"?????\";s:20:\"MODULE_PARAMETER_TXT\";s:25:\"?????? ??????\";}'),
(22, 'mainmenu', 'Arabic', 'a:1:{s:13:\"DASHBOARD_TXT\";s:23:\"???? ???????\";}'),
(23, 'language_files', 'English', 'a:2:{s:10:\"MODULE_TXT\";s:6:\"Module\";s:20:\"MODULE_PARAMETER_TXT\";s:16:\"Module Parameter\";}');

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_order_extra_column_man`
--

CREATE TABLE `aip_custom_order_extra_column_man` (
  `id` int(9) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `driver` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_table_five`
--

CREATE TABLE `aip_custom_table_five` (
  `id` int(9) NOT NULL,
  `product_id` int(11) NOT NULL,
  `field_four` varchar(100) DEFAULT NULL,
  `pro_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aip_custom_table_five`
--

INSERT INTO `aip_custom_table_five` (`id`, `product_id`, `field_four`, `pro_image`) VALUES
(1, 5, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";}', NULL),
(2, 5, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";}', NULL),
(3, 6, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"4\";}', NULL),
(4, 50, 'a:2:{i:0;s:1:\"4\";i:1;s:1:\"5\";}', NULL),
(5, 0, 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"5\";}', NULL),
(6, 182, 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"5\";i:2;s:2:\"16\";}', NULL),
(7, 214, 'a:3:{i:0;s:1:\"2\";i:1;s:1:\"4\";i:2;s:1:\"5\";}', NULL),
(8, 231, NULL, 'dynamic_pr'),
(9, 232, NULL, 'dynamic_pro_image_C9LP1ObyUgZRrGn.png'),
(10, 233, NULL, 'dynamic_pro_image_14IuAOq3oJc6elP.png'),
(11, 234, NULL, '0'),
(12, 235, NULL, '0'),
(13, 236, NULL, '0'),
(14, 237, NULL, '0'),
(15, 238, NULL, '0'),
(16, 239, NULL, '0'),
(17, 241, NULL, 'dynamic_pro_image_AUxsNLc1hPfvI02.png'),
(18, 242, NULL, '0'),
(19, 243, NULL, '0'),
(20, 246, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'dynamic_pro_image_KktnmqTSBY5dlc0.png'),
(21, 314, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', NULL),
(22, 315, NULL, '0'),
(23, 316, NULL, '0'),
(24, 317, NULL, '0'),
(25, 318, NULL, 'dynamic_pro_image_BiFcUw7dgkalypN.png'),
(26, 319, NULL, 'dynamic_pro_image_70qeD18uUXEc42s.png'),
(27, 320, NULL, '0'),
(28, 321, NULL, '0'),
(29, 373, 'a:1:{i:0;s:1:\"1\";}', NULL),
(30, 375, 'a:1:{i:0;s:1:\"1\";}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_table_three_three`
--

CREATE TABLE `aip_custom_table_three_three` (
  `id` int(9) NOT NULL,
  `product_id` int(11) NOT NULL,
  `field_ten` varchar(234) DEFAULT NULL,
  `field_fourr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aip_custom_table_three_three`
--

INSERT INTO `aip_custom_table_three_three` (`id`, `product_id`, `field_ten`, `field_fourr`) VALUES
(5, 6, NULL, 'select 4'),
(6, 6, '30', ''),
(7, 50, '23', 'sel5'),
(25, 200, NULL, 'sel5'),
(26, 200, '2', ''),
(27, 210, '1', 'select 4'),
(28, 211, '1', 'sel5'),
(29, 212, '1', 'select 4'),
(30, 213, '2', 'sel5'),
(31, 184, '23', 'sel5'),
(32, 214, '23', 'sel5'),
(33, 245, NULL, 'select 4'),
(34, 246, '2', 'select 4'),
(35, 301, NULL, 'select 4'),
(36, 302, NULL, 'select 4'),
(37, 314, '1', 'select 4'),
(38, 315, '1', 'select 4'),
(39, 316, '1', 'select 4'),
(40, 317, '1', 'select 4'),
(41, 318, '1', 'select 4'),
(42, 319, '1', 'select 4'),
(43, 320, '1', 'select 4'),
(44, 321, '1', 'select 4');

-- --------------------------------------------------------

--
-- Table structure for table `aip_custom_table_two`
--

CREATE TABLE `aip_custom_table_two` (
  `id` int(9) NOT NULL,
  `product_id` int(11) NOT NULL,
  `field_two` varchar(100) DEFAULT NULL,
  `field_three` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aip_custom_table_two`
--

INSERT INTO `aip_custom_table_two` (`id`, `product_id`, `field_two`, `field_three`) VALUES
(1, 5, '20', NULL),
(2, 5, NULL, 'rad4'),
(3, 5, '20', NULL),
(4, 5, NULL, 'rad4'),
(5, 5, '20', NULL),
(6, 5, NULL, 'rad4'),
(7, 6, '20', NULL),
(8, 6, NULL, 'radd3'),
(9, 25, '20', NULL),
(10, 35, '20', NULL),
(11, 40, '1', 'rad4'),
(12, 50, '2', 'rad4'),
(13, 0, '1', NULL),
(14, 0, NULL, 'radd3'),
(15, 174, '1', NULL),
(16, 175, '1', 'rad4'),
(17, 182, '2', 'rad4'),
(18, 183, '1', 'radd3'),
(19, 10, '1', NULL),
(20, 10, NULL, 'radd3'),
(21, 187, '20', NULL),
(22, 187, NULL, 'rad4'),
(23, 188, '20', NULL),
(24, 188, '20', 'rad4'),
(25, 189, '20', NULL),
(26, 189, '20', 'rad4'),
(27, 190, '20', NULL),
(28, 190, '20', 'rad4'),
(29, 191, '20', NULL),
(30, 191, '20', 'rad4'),
(31, 192, '20', NULL),
(32, 192, '20', 'rad4'),
(33, 193, '20', NULL),
(34, 193, NULL, 'rad4'),
(35, 195, '1', NULL),
(36, 196, '1', NULL),
(37, 196, NULL, 'radd3'),
(38, 197, '1', NULL),
(39, 197, '1', 'rad4'),
(40, 198, '1', NULL),
(41, 198, NULL, 'radd3'),
(42, 199, '1', NULL),
(43, 199, NULL, 'radd3'),
(44, 200, '1', NULL),
(45, 200, NULL, 'rad4'),
(46, 205, '1', NULL),
(47, 206, '1', NULL),
(48, 207, '1', NULL),
(49, 208, '1', NULL),
(50, 209, '1', 'rad4'),
(51, 210, '1', 'rad4'),
(52, 211, '1', 'radd3'),
(53, 212, '20', 'radd3'),
(54, 213, '20', 'rad4'),
(55, 184, '20', 'rad4'),
(56, 214, '1', 'radd3'),
(57, 231, '1', NULL),
(58, 232, '1', NULL),
(59, 233, '1', NULL),
(60, 234, '1', NULL),
(61, 235, '1', NULL),
(62, 236, '1', NULL),
(63, 237, '1', NULL),
(64, 238, '1', NULL),
(65, 239, '1', NULL),
(66, 241, '1', NULL),
(67, 242, '1', NULL),
(68, 245, '1', 'radd3'),
(69, 246, '1', 'radd3'),
(70, 301, '1', 'radd3'),
(71, 302, '1', 'radd3'),
(72, 314, '1', 'radd3'),
(73, 315, '1', 'radd3'),
(74, 316, '1', 'radd3'),
(75, 317, '1', 'radd3'),
(76, 318, '1', 'radd3'),
(77, 319, '1', 'radd3'),
(78, 320, '1', 'radd3'),
(79, 321, '1', 'radd3');

-- --------------------------------------------------------

--
-- Table structure for table `aip_delivery_type`
--

CREATE TABLE `aip_delivery_type` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `text2` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_delivery_type`
--

INSERT INTO `aip_delivery_type` (`id`, `text`, `text2`, `status`) VALUES
(1, 'Walk In', 'Walk In', '1'),
(2, 'Take Away', 'Take Away', '1'),
(3, 'Home Delivery', 'Home Delivery', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_dependency_pack`
--

CREATE TABLE `aip_dependency_pack` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `set_as_default` enum('0','1') DEFAULT NULL COMMENT '0-Not default,1-Default',
  `branch_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_dependency_pack`
--

INSERT INTO `aip_dependency_pack` (`id`, `name`, `set_as_default`, `branch_id`, `status`) VALUES
(1, 'pack1', '0', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_dependency_pack_details`
--

CREATE TABLE `aip_dependency_pack_details` (
  `id` int(11) NOT NULL,
  `dep_pack_id` int(11) NOT NULL,
  `backend_dep_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_dep_pack_to_product`
--

CREATE TABLE `aip_dep_pack_to_product` (
  `id` int(11) NOT NULL,
  `dep_pack_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_designation`
--

CREATE TABLE `aip_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_designation`
--

INSERT INTO `aip_designation` (`id`, `designation`, `status`) VALUES
(1, 'test2', '1'),
(3, 'TEST5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_designation_to_user`
--

CREATE TABLE `aip_designation_to_user` (
  `id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_designation_to_user`
--

INSERT INTO `aip_designation_to_user` (`id`, `head_id`, `designation_id`, `status`) VALUES
(1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_data`
--

CREATE TABLE `aip_digital_signage_data` (
  `id` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL COMMENT 'image or video',
  `name` varchar(32) DEFAULT NULL,
  `duration` varchar(32) DEFAULT NULL,
  `animation` varchar(32) DEFAULT NULL,
  `animation_atribute` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `added_user` int(11) DEFAULT NULL,
  `added_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_data_on_device`
--

CREATE TABLE `aip_digital_signage_data_on_device` (
  `id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `data_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) NOT NULL,
  `added_user` int(11) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_devices`
--

CREATE TABLE `aip_digital_signage_devices` (
  `id` int(11) NOT NULL,
  `source_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `device_type` varchar(32) DEFAULT NULL COMMENT 'TV or TAB',
  `device_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_digital_signage_devices`
--

INSERT INTO `aip_digital_signage_devices` (`id`, `source_id`, `group_id`, `device_type`, `device_name`) VALUES
(1, 1, 1, '1', 'tv1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_device_sync_log`
--

CREATE TABLE `aip_digital_signage_device_sync_log` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `last_sync_date` date NOT NULL,
  `last_sync_time` time NOT NULL,
  `last_sync_status` int(11) NOT NULL COMMENT '3=>Fully Synced 2=>Partial Sync'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_device_types`
--

CREATE TABLE `aip_digital_signage_device_types` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` varchar(90) DEFAULT NULL,
  `type_image` varchar(90) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_digital_signage_device_types`
--

INSERT INTO `aip_digital_signage_device_types` (`id`, `type`, `description`, `type_image`, `status`) VALUES
(1, 'TV', 'TV', NULL, 3),
(2, 'Tab', 'Tab', NULL, 3),
(3, 'Monitor', 'Monitor', NULL, 3),
(4, 'Led', 'Led', NULL, 3),
(5, 'Projector', 'Projector', NULL, 3),
(6, 'Multiple Tv', 'Multiple Tv', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_groups`
--

CREATE TABLE `aip_digital_signage_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(200) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_digital_signage_groups`
--

INSERT INTO `aip_digital_signage_groups` (`id`, `group_name`, `parent_id`, `status`) VALUES
(1, 'gruop a', 0, 3),
(2, 'group b', 0, 3),
(3, 'group a1', 1, 3),
(4, 'group a2', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aip_digital_signage_schedule`
--

CREATE TABLE `aip_digital_signage_schedule` (
  `id` int(11) NOT NULL,
  `schedule_name` varchar(90) DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT 'if NULL or 00-00-000 = all date',
  `end_date` date DEFAULT NULL COMMENT 'if NULL or 00-00-000 = all date',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `repeat_show` varchar(32) DEFAULT NULL COMMENT '1=sunday, 2=monday, 3=tuesday, 4=wednesday, 5=thurdsday, 6=friday, 7=sataurday (if all day 1,2,3,4,5,6,7)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_dynamic_ele_values`
--

CREATE TABLE `aip_dynamic_ele_values` (
  `id` int(11) NOT NULL,
  `dynamic_form_id` int(11) NOT NULL,
  `is_table` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 = not table, 1 = table',
  `value_table` varchar(50) DEFAULT NULL,
  `element_type_id` int(11) NOT NULL,
  `element_values` text NOT NULL COMMENT 'Comma seperated value'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_dynamic_ele_values`
--

INSERT INTO `aip_dynamic_ele_values` (`id`, `dynamic_form_id`, `is_table`, `value_table`, `element_type_id`, `element_values`) VALUES
(8, 31, '1', 'aip_modules', 2, 'a:2:{s:5:\"value\";s:2:\"id\";s:4:\"text\";s:11:\"module_name\";}'),
(9, 32, '0', '', 2, 'a:2:{i:0;s:5:\"radd3\";i:1;s:4:\"rad4\";}'),
(10, 33, '0', '', 3, 'a:2:{i:0;s:8:\"select 4\";i:1;s:4:\"sel5\";}'),
(11, 34, '1', 'aip_tax', 4, 'a:2:{s:5:\"value\";s:2:\"id\";s:4:\"text\";s:8:\"tax_name\";}'),
(12, 35, '1', 'aip_languages', 3, 'a:2:{s:5:\"value\";s:2:\"id\";s:4:\"text\";s:8:\"language\";}');

-- --------------------------------------------------------

--
-- Table structure for table `aip_dynamic_form`
--

CREATE TABLE `aip_dynamic_form` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `label_name` varchar(20) NOT NULL COMMENT 'Column name of table',
  `display_name` varchar(20) NOT NULL,
  `input_type_id` int(11) NOT NULL COMMENT 'HTML input type id',
  `table_name` varchar(50) NOT NULL COMMENT 'To which the values will be saved',
  `module_id` int(9) DEFAULT NULL,
  `tab_id` int(9) NOT NULL,
  `data_type` varchar(20) NOT NULL COMMENT 'data type of the column',
  `multiple` enum('0','1') NOT NULL DEFAULT '0' COMMENT ' 0 = not multiple, 1 = multiple',
  `length_values` varchar(20) NOT NULL COMMENT 'length for int and varchar field',
  `display_order` int(11) DEFAULT NULL,
  `mandatory` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_dynamic_form`
--

INSERT INTO `aip_dynamic_form` (`id`, `branch_id`, `label_name`, `display_name`, `input_type_id`, `table_name`, `module_id`, `tab_id`, `data_type`, `multiple`, `length_values`, `display_order`, `mandatory`, `status`) VALUES
(1, 1, 'xdfsg', 'sdfg', 1, 'sdgg', 5, 0, 'varchar', '0', '234', 1, '0', '0'),
(2, 1, 'xsdf', 'fsdf', 1, 'sdfg', 5, 0, 'int', '0', '', 1, '0', '0'),
(3, 1, 'serfs', 'serer', 2, 'wer', 5, 0, 'varchar', '0', '255', 1, '0', '0'),
(4, 1, 'stgs', 'sdg', 4, 'sgfs', 3, 0, 'varchar', '0', '234', 1, '0', '0'),
(5, 1, 'sdf', 'sdf', 2, 'sdf', 5, 0, 'varchar', '0', '234', 1, '0', '0'),
(6, 1, 'asf', 'asf', 3, 'asdf', 5, 0, 'varchar', '0', '234', 1, '0', '0'),
(7, 1, 'srtg', 'ertg', 2, 'rtgfrs', 5, 0, 'varchar', '0', '255', 1, '0', '0'),
(8, 1, 'drgfdfg', 'sdg', 1, 'dsfg', 5, 0, 'int', '0', '', 1, '0', '0'),
(9, 1, 'sef', 'sdf', 1, 'new', 5, 0, 'varchar', '0', '234', 1, '0', '0'),
(30, 1, 'field_one', 'field one', 1, 'field_one', 20, 0, 'varchar', '0', '100', 1, '0', '0'),
(31, 1, 'field_two', 'field two', 2, 'table_two', 20, 0, 'varchar', '0', '100', 1, '0', '0'),
(32, 1, 'field_three', 'field three', 2, 'table_two', 20, 0, 'varchar', '0', '100', 2, '0', '0'),
(33, 1, 'field_fourr', 'field fourr', 3, 'table_three_three', 20, 0, 'varchar', '0', '100', 1, '0', '0'),
(34, 1, 'field_four', 'field four', 4, 'table_five', 20, 0, 'varchar', '0', '100', 1, '0', '0'),
(35, 1, 'field_ten', 'field ten', 3, 'table_three_three', 20, 0, 'varchar', '0', '234', 2, '0', '0'),
(36, 1, 'pro_image', 'pro image', 6, 'table_five', 20, 0, 'varchar', '0', '', 2, '0', '0'),
(37, 1, 'image_new', 'image new', 6, 'field_one', 20, 0, 'varchar', '0', '234', 2, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_external_communicaion_details`
--

CREATE TABLE `aip_external_communicaion_details` (
  `id` int(11) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_external_communicaion_details`
--

INSERT INTO `aip_external_communicaion_details` (`id`, `display_name`, `email_id`, `password`) VALUES
(7, 'AIPSOFT', 'testaipsoft@gmail.com', 'UE9kb01YTDJRN3MvVE1saksxK2ErQT09');

-- --------------------------------------------------------

--
-- Table structure for table `aip_general`
--

CREATE TABLE `aip_general` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_general`
--

INSERT INTO `aip_general` (`id`, `user_id`, `branch_id`, `identifier`, `value`, `status`) VALUES
(1, 1, 0, 'widget', 'a:4:{i:0;a:2:{s:11:\"widget_name\";s:17:\"new_orders_widget\";s:8:\"position\";s:0:\"\";}i:1;a:2:{s:11:\"widget_name\";s:20:\"todays_orders_widget\";s:8:\"position\";s:22:\"left: -1px; top: -1px;\";}i:2;a:2:{s:11:\"widget_name\";s:23:\"this_week_orders_widget\";s:8:\"position\";s:22:\"left: -3px; top: -3px;\";}i:3;a:2:{s:11:\"widget_name\";s:24:\"this_month_orders_widget\";s:8:\"position\";s:22:\"left: -5px; top: -1px;\";}}', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_general_ledger`
--

CREATE TABLE `aip_general_ledger` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `txn_no` int(11) NOT NULL,
  `vtype` varchar(10) NOT NULL,
  `si_no` int(11) NOT NULL,
  `ledger_code` int(11) NOT NULL,
  `db_amount` float DEFAULT NULL,
  `cr_amount` float DEFAULT NULL,
  `narration` tinytext,
  `cheque` varchar(50) DEFAULT NULL,
  `cheque_date` date DEFAULT NULL,
  `cheque_reference` tinytext,
  `cheque_status` int(11) NOT NULL DEFAULT '0',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_general_ledger`
--

INSERT INTO `aip_general_ledger` (`id`, `order_id`, `txn_no`, `vtype`, `si_no`, `ledger_code`, `db_amount`, `cr_amount`, `narration`, `cheque`, `cheque_date`, `cheque_reference`, `cheque_status`, `date_time`, `status`) VALUES
(124, 31, 1, 'SI', 1, 6, NULL, 11.111, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:05:40', '0'),
(125, 31, 1, 'SI', 2, 4, NULL, 138.89, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:05:40', '0'),
(126, 31, 1, 'SI', 3, 1013, 150, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:05:40', '0'),
(127, 31, 1, 'CR', 3, 1013, NULL, 150, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:05:40', '0'),
(128, 31, 1, 'CR', 3, 1, 150, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-16 12:05:40', '0'),
(130, 32, 1, 'SI', 2, 6, NULL, 9.111, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:09:59', '1'),
(131, 32, 1, 'SI', 3, 4, NULL, 113.89, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:09:59', '1'),
(132, 32, 1, 'SI', 4, 1010, 120, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:09:59', '1'),
(133, 32, 1, 'CR', 4, 1010, NULL, 120, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:09:59', '1'),
(134, 32, 1, 'CR', 4, 1, 120, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-16 12:09:59', '1'),
(135, 33, 1, 'SI', 1, 6, NULL, 9.333, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:11:24', '0'),
(136, 33, 1, 'SI', 2, 4, NULL, 116.67, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:11:24', '0'),
(137, 33, 1, 'SI', 3, 1010, 126, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:11:24', '0'),
(138, 34, 1, 'SI', 1, 6, NULL, 67.333, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:13:36', '0'),
(139, 34, 1, 'SI', 2, 4, NULL, 841.66, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:13:36', '0'),
(140, 34, 1, 'SI', 3, 1014, 908.99, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:13:36', '0'),
(141, 35, 1, 'SI', 1, 6, NULL, 178.742, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:11:00', '1'),
(142, 35, 1, 'SI', 2, 4, NULL, 2234.27, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:11:00', '1'),
(143, 35, 1, 'SI', 3, 1013, 2413.01, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:11:00', '1'),
(144, 35, 1, 'CR', 3, 1013, NULL, 2000, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:11:00', '1'),
(145, 35, 1, 'CR', 3, 1, 2000, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-16 12:11:00', '1'),
(146, 36, 1, 'SI', 1, 6, NULL, 53.11, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-16 12:17:57', '1'),
(147, 36, 1, 'SI', 2, 4, NULL, 663.87, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-16 12:17:57', '1'),
(148, 36, 1, 'SI', 3, 1010, 716.98, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:17:57', '1'),
(149, 36, 1, 'CR', 3, 1010, NULL, 500, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-16 12:17:57', '1'),
(150, 36, 1, 'CR', 3, 1, 500, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-16 12:17:57', '1'),
(152, 37, 1, 'SI', 2, 6, NULL, 37.112, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-17 04:19:32', '1'),
(153, 37, 1, 'SI', 3, 4, NULL, 463.89, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-17 04:19:32', '1'),
(154, 37, 1, 'SI', 4, 1010, 500, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-17 04:19:32', '1'),
(155, 37, 1, 'CR', 4, 1010, NULL, 500, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 04:19:32', '1'),
(156, 37, 1, 'CR', 4, 1, 500, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 04:19:32', '1'),
(157, 38, 2, 'SI', 1, 6, NULL, 108.814, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-17 11:34:34', '1'),
(158, 38, 2, 'SI', 2, 4, NULL, 1360.18, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-17 11:34:34', '1'),
(159, 38, 2, 'SI', 3, 1010, 1468.99, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-17 11:34:34', '1'),
(160, 39, 1, 'SI', 1, 6, NULL, 75.037, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-17 04:25:41', '1'),
(161, 39, 1, 'SI', 2, 4, NULL, 937.96, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-17 04:25:41', '1'),
(162, 39, 1, 'SI', 3, 1010, 1013, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-17 04:25:41', '1'),
(163, 39, 1, 'CR', 3, 1010, NULL, 500, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 04:25:41', '1'),
(164, 39, 1, 'CR', 3, 1, 500, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 04:25:41', '1'),
(165, 40, 2, 'SI', 1, 6, NULL, 97.186, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-17 09:56:53', '1'),
(166, 40, 2, 'SI', 2, 4, NULL, 1214.82, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-17 09:56:53', '1'),
(167, 40, 2, 'SI', 3, 1010, 1312.01, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-17 09:56:53', '1'),
(168, 41, 7, 'SI', 1, 6, NULL, 106.742, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-17 11:37:18', '1'),
(169, 41, 7, 'SI', 2, 4, NULL, 1334.28, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-17 11:37:18', '1'),
(170, 41, 7, 'SI', 3, 1010, 1431.02, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-17 11:37:18', '1'),
(171, 40, 2, 'CR', 1, 1010, NULL, 1000, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 09:56:53', '1'),
(172, 40, 2, 'CR', 1, 1, 1000, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 09:56:53', '1'),
(174, 41, 2, 'CR', 2, 1010, NULL, 100, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 10:18:08', '1'),
(175, 41, 2, 'CR', 2, 1, 100, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 10:18:08', '1'),
(176, 38, 2, 'CR', 1, 1010, NULL, 1000, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 11:34:34', '1'),
(177, 38, 2, 'CR', 1, 1, 1000, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 11:34:34', '1'),
(178, 41, 7, 'CR', 1, 1010, NULL, 1000, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-17 11:37:18', '1'),
(179, 41, 7, 'CR', 1, 1, 1000, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-17 11:37:18', '1'),
(181, 42, 4, 'SI', 2, 6, NULL, 119.48, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-18 10:06:22', '1'),
(182, 42, 4, 'SI', 3, 4, NULL, 1493.51, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-18 10:06:22', '1'),
(183, 42, 4, 'SI', 4, 1010, 1612.99, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-18 10:06:22', '1'),
(184, 42, 4, 'CR', 1, 1010, NULL, 1000, 'Debit from Customer Account', NULL, NULL, NULL, 0, '2020-01-18 10:06:22', '1'),
(185, 42, 4, 'CR', 1, 1, 1000, NULL, 'Credit to Cash', NULL, NULL, NULL, 0, '2020-01-18 10:06:22', '1'),
(186, 43, 1, 'SI', 1, 6, NULL, 67.63, 'VAT on sales', NULL, NULL, NULL, 0, '2020-01-18 12:34:17', '1'),
(187, 43, 1, 'SI', 2, 4, NULL, 845.37, 'Debit from sales Account', NULL, NULL, NULL, 0, '2020-01-18 12:34:17', '1'),
(188, 43, 1, 'SI', 3, 1010, 913, NULL, 'Credit to customer Account', NULL, NULL, NULL, 0, '2020-01-18 12:34:17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_html_element`
--

CREATE TABLE `aip_html_element` (
  `id` int(11) NOT NULL,
  `element` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_html_element`
--

INSERT INTO `aip_html_element` (`id`, `element`) VALUES
(4, 'checkbox'),
(6, 'file'),
(2, 'radio'),
(3, 'select'),
(1, 'text'),
(5, 'textarea');

-- --------------------------------------------------------

--
-- Table structure for table `aip_images`
--

CREATE TABLE `aip_images` (
  `id` int(11) NOT NULL,
  `identifier` varchar(20) NOT NULL,
  `identifier_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `image_name` varchar(200) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_images`
--

INSERT INTO `aip_images` (`id`, `identifier`, `identifier_id`, `item_id`, `image_name`, `size`) VALUES
(34, 'product', 14, 68, 'medium_308X460_1573115109_921934670.png', 18749),
(35, 'product', 15, 68, 'large_600X800_1573115109_2011801559.png', 51203),
(38, 'product', 14, 70, 'medium_308X460_1573116948_1830131836.png', 19135),
(39, 'product', 15, 70, 'large_600X800_1573116948_678978038.png', 54455),
(40, 'product', 14, 71, 'medium_308X460_1573205873_1036899164.png', 9656),
(41, 'product', 15, 71, 'large_600X800_1573205873_1266890951.png', 26001),
(42, 'product', 14, 75, 'medium_308X460_1573208070_520315132.png', 24606),
(43, 'product', 15, 75, 'large_600X800_1573208070_1751838550.png', 70071),
(44, 'product', 14, 76, 'medium_308X460_1573208161_324760838.png', 25647),
(45, 'product', 15, 76, 'large_600X800_1573208161_1290979167.png', 74870),
(46, 'product', 14, 77, 'medium_308X460_1573208188_1875404269.png', 21063),
(47, 'product', 15, 77, 'large_600X800_1573208188_731701437.png', 60720),
(48, 'product', 14, 89, 'medium_308X460_1573212593_1812105597.png', 21063),
(49, 'product', 15, 89, 'large_600X800_1573212593_1841579281.png', 60720),
(50, 'product', 14, 92, 'medium_308X460_1573213766_1128595025.png', 24606),
(51, 'product', 15, 92, 'large_600X800_1573213766_1542170299.png', 70071),
(52, 'product', 14, 91, 'medium_308X460_1573213814_668584740.png', 25417),
(53, 'product', 15, 91, 'large_600X800_1573213814_2100909688.png', 84549),
(58, 'product', 14, 96, 'medium_308X460_1573217816_1334162670.png', 9656),
(59, 'product', 15, 96, 'large_600X800_1573217816_574879335.png', 26001),
(60, 'product', 14, 98, 'medium_308X460_1573219418_2099112388.png', 17606),
(61, 'product', 15, 98, 'large_600X800_1573219418_1082122229.png', 49186),
(62, 'product', 14, 99, 'medium_308X460_1573219505_527054356.png', 19135),
(63, 'product', 15, 99, 'large_600X800_1573219505_563444692.png', 54455),
(64, 'product', 14, 101, 'medium_308X460_1573271784_1026762922.png', 19747),
(65, 'product', 15, 101, 'large_600X800_1573271784_372779843.png', 53411),
(66, 'product', 12, 102, 'thumb_108X160_1573547681_672020794.png', 4416),
(67, 'product', 13, 102, 'small_160X240_1573547681_274548074.png', 8024),
(68, 'product', 15, 102, 'large_600X800_1573547681_1779552730.png', 84549),
(69, 'product', 12, 103, 'thumb_108X160_1573547829_1564659951.png', 0),
(70, 'product', 13, 103, 'small_160X240_1573547829_1964108667.png', 0),
(71, 'product', 15, 103, 'large_600X800_1573547829_988849810.png', 0),
(72, 'product', 12, 104, 'thumb_108X160_1573547938_289298966.png', 0),
(73, 'product', 13, 104, 'small_160X240_1573547938_1958823775.png', 0),
(74, 'product', 15, 104, 'large_600X800_1573547938_1099279015.png', 0),
(75, 'product', 12, 105, 'download_(1).jpg', 0),
(76, 'product', 13, 105, 'download_(1).jpg', 0),
(77, 'product', 15, 105, 'download_(1).jpg', 0),
(78, 'product', 12, 106, 'images_(3).jpg', 0),
(79, 'product', 13, 106, 'images_(3).jpg', 0),
(80, 'product', 15, 106, 'images_(3).jpg', 0),
(81, 'product', 12, 107, 'images_(5).jpg', 4820),
(82, 'product', 13, 107, 'images_(5).jpg', 9385),
(83, 'product', 12, 115, 'product_default_image.png', 3702),
(84, 'product', 13, 115, 'product_default_image.png', 4688),
(85, 'product', 12, 116, 'product_default_image.png', 3702),
(86, 'product', 13, 116, 'product_default_image.png', 4688),
(87, 'product', 12, 117, 'product_default_image.png', 3702),
(88, 'product', 13, 117, 'product_default_image.png', 4688),
(89, 'product', 12, 118, 'product_default_image.png', 3702),
(90, 'product', 13, 118, 'product_default_image.png', 4688),
(91, 'product', 12, 119, 'product_default_image.png', 3702),
(92, 'product', 13, 119, 'product_default_image.png', 4688),
(93, 'product', 12, 120, 'product_default_image.png', 0),
(94, 'product', 13, 120, 'product_default_image.png', 4688),
(95, 'product', 15, 120, 'product_default_image.png', 0),
(96, 'product', 12, 121, 'product_default_image.jpg', 3462),
(97, 'product', 13, 121, 'product_default_image.jpg', 5113),
(98, 'product', 15, 121, 'product_default_image.jpg', 28796),
(99, 'product', 12, 122, 'download_(1)1.jpg', 3834),
(100, 'product', 13, 122, 'download_(1)1.jpg', 6111),
(101, 'product', 15, 122, 'download_(1)1.jpg', 41635),
(102, 'product', 12, 123, 'photo-1535498730771-e735b998cd64.jpg', 5513),
(103, 'product', 13, 123, 'photo-1535498730771-e735b998cd64.jpg', 10133),
(104, 'product', 15, 123, 'photo-1535498730771-e735b998cd64.jpg', 78770),
(105, 'product', 12, 124, 'silhouette-photo-of-person-standing-in-cave-3098796.jpg', 3235),
(106, 'product', 13, 124, 'silhouette-photo-of-person-standing-in-cave-3098796.jpg', 5677),
(107, 'product', 15, 124, 'silhouette-photo-of-person-standing-in-cave-3098796.jpg', 48077),
(108, 'product', 12, 125, 'silhouette-photo-of-person-standing-in-cave-30987961.jpg', 3235),
(109, 'product', 13, 125, 'silhouette-photo-of-person-standing-in-cave-30987961.jpg', 5677),
(110, 'product', 15, 125, 'silhouette-photo-of-person-standing-in-cave-30987961.jpg', 48077),
(114, 'product', 12, 126, 'thumb_108X160_1573553155_199637145.png', 5413),
(115, 'product', 13, 126, 'small_160X240_1573553155_1844131497.png', 10659),
(116, 'product', 15, 126, 'large_600X800_1573553156_846574051.png', 111479),
(135, 'product', 12, 128, 'herd-of-deers-1742926.jpg', 10878),
(136, 'product', 13, 128, 'herd-of-deers-1742926.jpg', 21576),
(137, 'product', 15, 128, 'herd-of-deers-1742926.jpg', 203876),
(168, 'product', 12, 136, 'images_(1).jpg', 3835),
(169, 'product', 13, 136, 'images_(1).jpg', 6358),
(170, 'product', 15, 136, 'images_(1).jpg', 40525),
(173, 'product', 12, 143, 'download_(4).jpg', 8753),
(174, 'product', 13, 143, 'download_(4).jpg', 16068),
(175, 'product', 15, 143, 'download_(4).jpg', 125835),
(188, 'product', 12, 144, 'XRE112-92_2019_010912.jpg', 5949),
(189, 'product', 13, 144, 'XRE112-92_2019_010912.jpg', 10995),
(190, 'product', 15, 144, 'XRE112-92_2019_010912.jpg', 105018),
(194, 'product', 12, 147, 'images_(4).jpg', 7045),
(195, 'product', 13, 147, 'images_(4).jpg', 12679),
(196, 'product', 15, 147, 'images_(4).jpg', 95868),
(200, 'product', 12, 150, 'forest-trees-1624988.jpg', 8735),
(201, 'product', 13, 150, 'forest-trees-1624988.jpg', 18179),
(202, 'product', 15, 150, 'forest-trees-1624988.jpg', 207238),
(203, 'product', 12, 151, 'forest-trees-16249881.jpg', 8735),
(204, 'product', 13, 151, 'forest-trees-16249881.jpg', 18179),
(205, 'product', 15, 151, 'forest-trees-16249881.jpg', 207238),
(206, 'product', 12, 152, 'download_(5).jpg', 4653),
(207, 'product', 13, 152, 'download_(5).jpg', 8113),
(208, 'product', 15, 152, 'download_(5).jpg', 56349),
(209, 'product', 12, 154, 'download.jpg', 8408),
(210, 'product', 13, 154, 'download.jpg', 15397),
(211, 'product', 15, 154, 'download.jpg', 115047),
(212, 'product', 12, 155, 'download_(2).jpg', 7728),
(213, 'product', 13, 155, 'download_(2).jpg', 14007),
(214, 'product', 15, 155, 'download_(2).jpg', 106186),
(215, 'product', 12, 156, 'images_(3)1.jpg', 9222),
(216, 'product', 13, 156, 'images_(3)1.jpg', 16657),
(217, 'product', 15, 156, 'images_(3)1.jpg', 116523),
(218, 'product', 12, 157, 'images_(5).jpg', 8654),
(219, 'product', 13, 157, 'images_(5).jpg', 16907),
(220, 'product', 15, 157, 'images_(5).jpg', 140534),
(224, 'product', 12, 160, 'images_(4)1.jpg', 7045),
(225, 'product', 13, 160, 'images_(4)1.jpg', 12679),
(226, 'product', 15, 160, 'images_(4)1.jpg', 95868),
(227, 'product', 12, 161, 'download_(3)1.jpg', 6727),
(228, 'product', 13, 161, 'download_(3)1.jpg', 12009),
(229, 'product', 15, 161, 'download_(3)1.jpg', 85297),
(233, 'product', 12, 165, 'images_(3).jpg', 9222),
(234, 'product', 13, 165, 'images_(3).jpg', 16657),
(235, 'product', 15, 165, 'images_(3).jpg', 116523),
(239, 'product', 12, 166, 'water-image.jpg', 5964),
(240, 'product', 13, 166, 'water-image.jpg', 10112),
(241, 'product', 15, 166, 'water-image.jpg', 72982),
(244, 'product', 12, 167, 'images.jpg', 9181),
(245, 'product', 13, 167, 'images.jpg', 18146),
(246, 'product', 15, 167, 'images.jpg', 152021),
(247, 'product', 12, 185, 'download_(3).jpg', 6727),
(248, 'product', 13, 185, 'download_(3).jpg', 12009),
(249, 'product', 15, 185, 'download_(3).jpg', 85297),
(250, 'product', 12, 186, 'download.jpg', 8408),
(251, 'product', 13, 186, 'download.jpg', 15397),
(252, 'product', 15, 186, 'download.jpg', 115047),
(253, 'product', 12, 213, 'download_(2).jpg', 7728),
(254, 'product', 13, 213, 'download_(2).jpg', 14007),
(255, 'product', 15, 213, 'download_(2).jpg', 106186),
(256, 'product', 12, 217, 'download_(2)3.jpg', 7728),
(257, 'product', 13, 217, 'download_(2)3.jpg', 14007),
(258, 'product', 15, 217, 'download_(2)3.jpg', 106186),
(259, 'product', 12, 218, 'download_(2)4.jpg', 7728),
(260, 'product', 13, 218, 'download_(2)4.jpg', 14007),
(261, 'product', 15, 218, 'download_(2)4.jpg', 106186),
(262, 'product', 12, 219, 'download_(1).jpg', 4832),
(263, 'product', 13, 219, 'download_(1).jpg', 8047),
(264, 'product', 15, 219, 'download_(1).jpg', 52768),
(265, 'product', 12, 220, 'download_(4).jpg', 8753),
(266, 'product', 13, 220, 'download_(4).jpg', 16068),
(267, 'product', 15, 220, 'download_(4).jpg', 125835),
(268, 'product', 12, 223, 'download1.jpg', 8408),
(269, 'product', 13, 223, 'download1.jpg', 15397),
(270, 'product', 15, 223, 'download1.jpg', 115047),
(274, 'product', 12, 225, 'download_(3)4.jpg', 6727),
(275, 'product', 13, 225, 'download_(3)4.jpg', 12009),
(276, 'product', 15, 225, 'download_(3)4.jpg', 85297),
(277, 'product', 46, 225, 'download_(3)4.jpg', 1255),
(282, 'product', 12, 224, 'download_(1)1.jpg', 4832),
(283, 'product', 13, 224, 'download_(1)1.jpg', 8047),
(284, 'product', 15, 224, 'download_(1)1.jpg', 52768),
(285, 'product', 46, 224, 'download_(1)1.jpg', 1094),
(286, 'product', 12, 27, 'download_(2)5.jpg', 7728),
(287, 'product', 13, 27, 'download_(2)5.jpg', 14007),
(288, 'product', 15, 27, 'download_(2)5.jpg', 106186),
(289, 'product', 46, 27, 'download_(2)5.jpg', 1281),
(290, 'product', 12, 28, 'download_(3)3.jpg', 6727),
(291, 'product', 13, 28, 'download_(3)3.jpg', 12009),
(292, 'product', 15, 28, 'download_(3)3.jpg', 85297),
(293, 'product', 46, 28, 'download_(3)3.jpg', 1255),
(294, 'product', 12, 226, 'images_(6).jpg', 8404),
(295, 'product', 13, 226, 'images_(6).jpg', 15199),
(296, 'product', 15, 226, 'images_(6).jpg', 111841),
(297, 'product', 46, 226, 'images_(6).jpg', 1394),
(298, 'product', 12, 233, 'download_(3)5.jpg', 6727),
(299, 'product', 13, 233, 'download_(3)5.jpg', 12009),
(300, 'product', 15, 233, 'download_(3)5.jpg', 85297),
(301, 'product', 46, 233, 'download_(3)5.jpg', 1255),
(302, 'product', 12, 234, 'download_(4)1.jpg', 8753),
(303, 'product', 13, 234, 'download_(4)1.jpg', 16068),
(304, 'product', 15, 234, 'download_(4)1.jpg', 125835),
(305, 'product', 46, 234, 'download_(4)1.jpg', 1270),
(306, 'product', 12, 235, '10best-cars-group-cropped-1542126037.jpg', 7509),
(307, 'product', 13, 235, '10best-cars-group-cropped-1542126037.jpg', 14949),
(308, 'product', 15, 235, '10best-cars-group-cropped-1542126037.jpg', 137344),
(309, 'product', 46, 235, '10best-cars-group-cropped-1542126037.jpg', 1223),
(318, 'product', 12, 236, '10best-cars-group-cropped-15421260371.jpg', 7509),
(319, 'product', 13, 236, '10best-cars-group-cropped-15421260371.jpg', 14949),
(320, 'product', 15, 236, '10best-cars-group-cropped-15421260371.jpg', 137344),
(321, 'product', 46, 236, '10best-cars-group-cropped-15421260371.jpg', 1223),
(326, 'product', 12, 238, 'download_(4)2.jpg', 8753),
(327, 'product', 13, 238, 'download_(4)2.jpg', 16068),
(328, 'product', 15, 238, 'download_(4)2.jpg', 125835),
(329, 'product', 46, 238, 'download_(4)2.jpg', 1270),
(330, 'product', 12, 239, 'download_(4)3.jpg', 8753),
(331, 'product', 13, 239, 'download_(4)3.jpg', 16068),
(332, 'product', 15, 239, 'download_(4)3.jpg', 125835),
(333, 'product', 46, 239, 'download_(4)3.jpg', 1270),
(334, 'product', 12, 240, 'photo-1535498730771-e735b998cd64.jpg', 5547),
(335, 'product', 13, 240, 'photo-1535498730771-e735b998cd64.jpg', 10133),
(336, 'product', 15, 240, 'photo-1535498730771-e735b998cd64.jpg', 86843),
(337, 'product', 46, 240, 'photo-1535498730771-e735b998cd64.jpg', 1086),
(338, 'product', 12, 241, 'photo-1535498730771-e735b998cd641.jpg', 5547),
(339, 'product', 13, 241, 'photo-1535498730771-e735b998cd641.jpg', 10133),
(340, 'product', 15, 241, 'photo-1535498730771-e735b998cd641.jpg', 86843),
(341, 'product', 46, 241, 'photo-1535498730771-e735b998cd641.jpg', 1086),
(342, 'product', 12, 242, 'download_(3)7.jpg', 6727),
(343, 'product', 13, 242, 'download_(3)7.jpg', 12009),
(344, 'product', 15, 242, 'download_(3)7.jpg', 85297),
(345, 'product', 46, 242, 'download_(3)7.jpg', 1255),
(346, 'product', 12, 244, 'product-default.png', 6449),
(347, 'product', 13, 244, 'product-default.png', 11362),
(348, 'product', 15, 244, 'product-default.png', 89602),
(349, 'product', 46, 244, 'product-default.png', 751),
(350, 'product', 12, 245, 'download_(3)8.jpg', 6727),
(351, 'product', 13, 245, 'download_(3)8.jpg', 12009),
(352, 'product', 15, 245, 'download_(3)8.jpg', 85297),
(353, 'product', 46, 245, 'download_(3)8.jpg', 1255),
(354, 'product', 12, 246, 'images_(6)1.jpg', 8404),
(355, 'product', 13, 246, 'images_(6)1.jpg', 15199),
(356, 'product', 15, 246, 'images_(6)1.jpg', 111841),
(357, 'product', 46, 246, 'images_(6)1.jpg', 1394),
(358, 'product', 12, 315, 'download_(3)9.jpg', 6727),
(359, 'product', 13, 315, 'download_(3)9.jpg', 12009),
(360, 'product', 15, 315, 'download_(3)9.jpg', 85297),
(361, 'product', 46, 315, 'download_(3)9.jpg', 1255),
(362, 'product', 12, 316, 'download_(2)6.jpg', 7728),
(363, 'product', 13, 316, 'download_(2)6.jpg', 14007),
(364, 'product', 15, 316, 'download_(2)6.jpg', 106186),
(365, 'product', 46, 316, 'download_(2)6.jpg', 1281),
(366, 'product', 12, 317, 'download_(2)7.jpg', 7728),
(367, 'product', 13, 317, 'download_(2)7.jpg', 14007),
(368, 'product', 15, 317, 'download_(2)7.jpg', 106186),
(369, 'product', 46, 317, 'download_(2)7.jpg', 1281),
(370, 'product', 12, 318, 'download_(1)2.jpg', 4832),
(371, 'product', 13, 318, 'download_(1)2.jpg', 8047),
(372, 'product', 15, 318, 'download_(1)2.jpg', 52768),
(373, 'product', 46, 318, 'download_(1)2.jpg', 1094),
(374, 'product', 12, 319, 'download_(3)10.jpg', 6727),
(375, 'product', 13, 319, 'download_(3)10.jpg', 12009),
(376, 'product', 15, 319, 'download_(3)10.jpg', 85297),
(377, 'product', 46, 319, 'download_(3)10.jpg', 1255),
(378, 'product', 12, 320, 'download_(1)3.jpg', 4832),
(379, 'product', 13, 320, 'download_(1)3.jpg', 8047),
(380, 'product', 15, 320, 'download_(1)3.jpg', 52768),
(381, 'product', 46, 320, 'download_(1)3.jpg', 1094),
(382, 'product', 12, 321, 'download_(1)4.jpg', 4832),
(383, 'product', 13, 321, 'download_(1)4.jpg', 8047),
(384, 'product', 15, 321, 'download_(1)4.jpg', 52768),
(385, 'product', 46, 321, 'download_(1)4.jpg', 1094),
(386, 'product', 12, 350, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 7477),
(387, 'product', 13, 350, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 14270),
(388, 'product', 15, 350, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 113042),
(389, 'product', 46, 350, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 1198),
(390, 'product', 12, 375, 'images_(3)1.jpg', 7848),
(391, 'product', 13, 375, 'images_(3)1.jpg', 14345),
(392, 'product', 15, 375, 'images_(3)1.jpg', 105922),
(393, 'product', 46, 375, 'images_(3)1.jpg', 1320);

-- --------------------------------------------------------

--
-- Table structure for table `aip_image_assign`
--

CREATE TABLE `aip_image_assign` (
  `id` int(10) NOT NULL,
  `identifier_id` int(9) NOT NULL,
  `assign_to` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 = disabled, 1= enabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_image_assign`
--

INSERT INTO `aip_image_assign` (`id`, `identifier_id`, `assign_to`, `status`) VALUES
(16, 12, 'brand', '1'),
(17, 13, 'brand', '1'),
(59, 12, 'product', '1'),
(60, 13, 'product', '1'),
(61, 15, 'product', '1'),
(62, 46, 'product', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_image_dimensions`
--

CREATE TABLE `aip_image_dimensions` (
  `id` int(9) NOT NULL,
  `identifier` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `height` int(9) NOT NULL,
  `width` int(9) NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 = disbaled, 1 = enabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_image_dimensions`
--

INSERT INTO `aip_image_dimensions` (`id`, `identifier`, `height`, `width`, `status`) VALUES
(12, 'thumb', 160, 108, '1'),
(13, 'small', 240, 160, '1'),
(14, 'medium', 460, 308, '0'),
(15, 'large', 800, 600, '1'),
(46, 'tab_image', 32, 32, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_image_display_configure`
--

CREATE TABLE `aip_image_display_configure` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `identifier_id` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_languages`
--

CREATE TABLE `aip_languages` (
  `id` int(11) NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `language_short` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `direction` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_languages`
--

INSERT INTO `aip_languages` (`id`, `language`, `language_short`, `direction`, `status`) VALUES
(1, 'english', 'en', 'ltr', '1'),
(2, 'Arabic', 'ar', 'rtl', '1'),
(23, 'French', 'fr', 'ltr', '0'),
(30, 'sdfds', 'ss', 'ltr', '0'),
(31, 'yyy', 'f', 'ltr', '0'),
(32, 'cdgfh', 'g', 'ltr', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_modules`
--

CREATE TABLE `aip_modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_link` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `module_type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-Individual,1-Tabular',
  `widget_configurable` enum('0','1') NOT NULL,
  `show_in_dynamic_form` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_modules`
--

INSERT INTO `aip_modules` (`id`, `module_name`, `module_link`, `parent_id`, `module_type`, `widget_configurable`, `show_in_dynamic_form`, `status`) VALUES
(1, 'POS', '', 0, '0', '1', '1', '0'),
(2, 'Dashboard', '', 0, '0', '1', '1', '1'),
(20, 'product', '', 0, '0', '1', '1', '1'),
(21, 'payment', '', 0, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_module_management`
--

CREATE TABLE `aip_module_management` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `page_level_perm` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `comp_level_perm` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_permission` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_module_tabs`
--

CREATE TABLE `aip_module_tabs` (
  `id` int(9) NOT NULL,
  `module_id` int(9) NOT NULL,
  `tab_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_module_tabs`
--

INSERT INTO `aip_module_tabs` (`id`, `module_id`, `tab_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `aip_multirate_master`
--

CREATE TABLE `aip_multirate_master` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `display_name` varchar(25) NOT NULL,
  `display_name_2` varchar(200) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable',
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_multirate_master`
--

INSERT INTO `aip_multirate_master` (`id`, `name`, `display_name`, `display_name_2`, `status`, `created_user`, `created_time`) VALUES
(1, 'Small', 'S', 'S', '1', '1', '2019-12-12 07:10:02'),
(2, 'Medium', 'M', 'M', '1', '1', '2019-12-12 07:10:02'),
(3, 'Large', 'L', 'l', '1', '1', '2019-12-12 07:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `aip_multirate_to_product`
--

CREATE TABLE `aip_multirate_to_product` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `multi_rate_id` int(11) NOT NULL,
  `multirate_price` float NOT NULL DEFAULT '0',
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_multirate_to_product`
--

INSERT INTO `aip_multirate_to_product` (`id`, `branch_id`, `customer_type_id`, `product_id`, `multi_rate_id`, `multirate_price`, `created_user`, `created_time`) VALUES
(1, 1, 76, 19, 1, 10, '1', '2019-12-26 06:34:21'),
(2, 1, 76, 19, 2, 20, '1', '2019-12-26 06:34:21'),
(3, 1, 76, 19, 3, 30, '1', '2019-12-26 06:34:21'),
(4, 1, 76, 161, 1, 5, '1', '2019-12-26 06:34:43'),
(5, 1, 76, 161, 2, 10, '1', '2019-12-26 06:34:43'),
(6, 1, 76, 161, 3, 15, '1', '2019-12-26 06:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `aip_offers`
--

CREATE TABLE `aip_offers` (
  `id` int(11) NOT NULL,
  `offer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `offer_name` varchar(127) COLLATE utf8_unicode_ci NOT NULL,
  `offer_name_lang` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_desc` text COLLATE utf8_unicode_ci,
  `offer_start_time` datetime DEFAULT NULL,
  `offer_end_time` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `percent_off` int(3) DEFAULT NULL,
  `fixed_off` decimal(6,2) DEFAULT NULL,
  `item_qty_to_buy` int(11) DEFAULT NULL,
  `item_qty_to_get` int(11) DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = not active , 1 = active',
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_offers`
--

INSERT INTO `aip_offers` (`id`, `offer_type`, `branch_id`, `offer_name`, `offer_name_lang`, `offer_desc`, `offer_start_time`, `offer_end_time`, `added_on`, `percent_off`, `fixed_off`, `item_qty_to_buy`, `item_qty_to_get`, `status`, `updated_at`) VALUES
(1, 'simple_discount', NULL, 'offer1', NULL, 'skdjaskd', '2019-10-01 00:00:00', '2019-10-31 00:00:00', '2019-10-01 15:29:04', 10, NULL, NULL, NULL, '0', NULL),
(2, 'simple_discount', NULL, 'ddd', NULL, 'dfsf', '2019-10-01 00:00:00', '2019-10-31 00:00:00', '2019-10-01 16:25:06', 21, NULL, NULL, NULL, '0', NULL),
(3, 'simple_discount', NULL, 'ghhg', NULL, 'fgh', '2019-10-01 00:00:00', '2019-10-31 00:00:00', '2019-10-01 16:48:54', 5, NULL, NULL, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aip_offer_advanced_rules`
--

CREATE TABLE `aip_offer_advanced_rules` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `item_qty_to_buy` int(11) DEFAULT NULL,
  `fixed_discount_per_unit` decimal(6,4) DEFAULT NULL,
  `percentage_discount_per_unit` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_offer_products`
--

CREATE TABLE `aip_offer_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `offer_id` int(9) NOT NULL,
  `product_unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_offer_products`
--

INSERT INTO `aip_offer_products` (`id`, `product_id`, `offer_id`, `product_unit_id`) VALUES
(1, 0, 1, 0),
(2, 0, 2, 0),
(3, 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aip_orders`
--

CREATE TABLE `aip_orders` (
  `id` int(11) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `order_type` enum('0','1') NOT NULL COMMENT '0 - Service item not avail,1-Service item avail',
  `order_date` date NOT NULL,
  `billing_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `order_time` time DEFAULT NULL,
  `billing_time` time DEFAULT NULL,
  `delivery_time` time DEFAULT NULL,
  `invoice_remark1` text NOT NULL,
  `invoice_remark2` text NOT NULL,
  `job_type` enum('0','1') NOT NULL COMMENT '0-Normal,1-Urgent',
  `delivery_type_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `tender_cash` float NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `p_discount` float NOT NULL,
  `round_off` float NOT NULL,
  `received_amount` float NOT NULL,
  `grand_total` float NOT NULL,
  `tax_amount` float NOT NULL,
  `balance` float NOT NULL,
  `order_status` enum('0','1','2','3','4','5') NOT NULL COMMENT '0-Job received (Initial Status),1-Processing (Partial process Done), 2- Completed, 3- Delivered,4-Cancelled,5-Partially delivered',
  `paid_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0-Not paid,1-Partially Paid,2-Fully Paid',
  `done_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user_id` int(11) NOT NULL,
  `hold` enum('0','1') NOT NULL DEFAULT '0',
  `sales_invoice_created` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_assign`
--

CREATE TABLE `aip_order_assign` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `assign_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_order_assign`
--

INSERT INTO `aip_order_assign` (`id`, `order_id`, `assign_to`) VALUES
(1, 22, 1),
(2, 23, 1),
(3, 24, 1),
(4, 25, 1),
(5, 26, 1),
(6, 27, 1),
(7, 28, 1),
(8, 29, 1),
(9, 30, 1),
(10, 31, 1),
(11, 32, 1),
(12, 33, 1),
(13, 34, 1),
(14, 35, 1),
(15, 36, 1),
(16, 37, 1),
(17, 38, 1),
(18, 39, 1),
(19, 40, 1),
(20, 41, 1),
(21, 42, 1),
(22, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_dep_assign_to_user`
--

CREATE TABLE `aip_order_dep_assign_to_user` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `commision` float NOT NULL,
  `done` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-Not Completed,1-Completed',
  `delivered` enum('0','1') NOT NULL COMMENT '0-Not Delivered,1-Delivered',
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_details`
--

CREATE TABLE `aip_order_details` (
  `id` int(11) NOT NULL,
  `sub_orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qstn_type` varchar(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `opt_val` varchar(25) NOT NULL,
  `qty_used` float NOT NULL,
  `actual_amount` varchar(20) NOT NULL,
  `discounted_amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_extra_columns`
--

CREATE TABLE `aip_order_extra_columns` (
  `id` int(11) NOT NULL,
  `display_label` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `report_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `query` text COLLATE utf8_unicode_ci NOT NULL,
  `select_column_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = not active, 1 = active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_extra_column_queries`
--

CREATE TABLE `aip_order_extra_column_queries` (
  `id` int(11) NOT NULL,
  `extra_column_id` int(11) NOT NULL,
  `join_table` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `join_type` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `join_query` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_history`
--

CREATE TABLE `aip_order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `operation_txt` text NOT NULL,
  `back_dep_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL COMMENT 'users table id',
  `read_status` enum('0','1') NOT NULL DEFAULT '0',
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_order_history`
--

INSERT INTO `aip_order_history` (`id`, `order_id`, `sub_order_id`, `operation_txt`, `back_dep_id`, `branch_id`, `login_id`, `read_status`, `date_modified`) VALUES
(1, 1, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:38:18'),
(2, 1, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:38:18'),
(3, 2, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:42:07'),
(4, 2, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:42:07'),
(5, 3, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:47:04'),
(6, 3, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:47:04'),
(7, 4, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:51:57'),
(8, 4, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:51:57'),
(9, 5, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:56:25'),
(10, 5, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:56:25'),
(11, 6, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 15:57:45'),
(12, 6, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 15:57:45'),
(13, 7, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 16:33:50'),
(14, 7, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 16:33:50'),
(15, 8, 0, 'Order Created', 0, 1, 1, '0', '2019-12-28 16:43:28'),
(16, 8, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-28 16:43:28'),
(17, 9, 0, 'Order Created', 0, 1, 1, '0', '2019-12-30 10:20:21'),
(18, 9, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-30 10:20:21'),
(19, 10, 0, 'Order Created', 0, 1, 1, '0', '2019-12-30 11:07:54'),
(20, 10, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-30 11:07:54'),
(21, 11, 0, 'Order Created', 0, 1, 1, '0', '2019-12-30 13:43:45'),
(22, 11, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-30 13:43:45'),
(23, 12, 0, 'Order Created', 0, 1, 1, '0', '2019-12-31 11:53:25'),
(24, 12, 0, 'Order Assigned to', 1, 1, 1, '0', '2019-12-31 11:53:25'),
(25, 13, 0, 'Order Created', 0, 1, 1, '0', '2020-01-02 16:16:18'),
(26, 13, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-02 16:16:18'),
(27, 14, 0, 'Order Created', 0, 1, 1, '0', '2020-01-02 16:21:28'),
(28, 14, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-02 16:21:28'),
(29, 15, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 08:54:32'),
(30, 15, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 08:54:32'),
(31, 16, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 09:19:27'),
(32, 16, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 09:19:27'),
(33, 17, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 13:47:49'),
(34, 17, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 13:47:50'),
(35, 18, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 13:51:19'),
(36, 18, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 13:51:19'),
(37, 19, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 13:56:28'),
(38, 19, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 13:56:28'),
(39, 20, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 14:10:03'),
(40, 20, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 14:10:03'),
(41, 21, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 14:13:09'),
(42, 21, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 14:13:09'),
(43, 22, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 14:15:36'),
(44, 22, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 14:15:36'),
(45, 23, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 17:37:00'),
(46, 23, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 17:37:00'),
(47, 24, 0, 'Order Created', 0, 1, 1, '0', '2020-01-03 17:43:11'),
(48, 24, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-03 17:43:11'),
(49, 25, 0, 'Order Created', 0, 1, 1, '0', '2020-01-04 08:54:37'),
(50, 25, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-04 08:54:37'),
(51, 26, 0, 'Order Created', 0, 1, 1, '0', '2020-01-04 08:55:31'),
(52, 26, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-04 08:55:31'),
(53, 27, 0, 'Order Created', 0, 1, 1, '0', '2020-01-04 10:31:24'),
(54, 27, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-04 10:31:24'),
(55, 28, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 13:55:46'),
(56, 28, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 13:55:46'),
(57, 29, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:12:37'),
(58, 29, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:12:37'),
(59, 30, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:14:09'),
(60, 30, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:14:09'),
(61, 31, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:14:53'),
(62, 31, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:14:53'),
(63, 32, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:17:33'),
(64, 32, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:17:33'),
(65, 33, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:20:50'),
(66, 33, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:20:50'),
(67, 34, 0, 'Order Created', 0, 1, 1, '0', '2020-01-09 14:24:22'),
(68, 34, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-09 14:24:22'),
(69, 35, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 08:34:56'),
(70, 35, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 08:34:56'),
(71, 1, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 12:40:23'),
(72, 1, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 12:40:23'),
(73, 2, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 13:03:01'),
(74, 2, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 13:03:01'),
(75, 3, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 13:36:23'),
(76, 3, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 13:36:23'),
(77, 4, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 13:47:50'),
(78, 4, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 13:47:50'),
(79, 5, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 14:06:25'),
(80, 5, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 14:06:25'),
(81, 1, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 14:27:05'),
(82, 1, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 14:27:05'),
(83, 2, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 14:29:35'),
(84, 2, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 14:29:35'),
(85, 3, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 14:32:07'),
(86, 3, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 14:32:07'),
(87, 4, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 15:22:59'),
(88, 4, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 15:22:59'),
(89, 5, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 15:29:51'),
(90, 5, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 15:29:51'),
(91, 6, 0, 'Order Created', 0, 1, 1, '0', '2020-01-13 15:36:46'),
(92, 6, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-13 15:36:46'),
(93, 7, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 14:06:56'),
(94, 7, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 14:06:56'),
(95, 8, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 14:09:33'),
(96, 8, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 14:09:33'),
(97, 9, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 14:10:17'),
(98, 9, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 14:10:17'),
(99, 10, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:06:18'),
(100, 10, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:06:18'),
(101, 11, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:15:02'),
(102, 11, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:15:02'),
(103, 12, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:19:31'),
(104, 12, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:19:31'),
(105, 13, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:21:08'),
(106, 13, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:21:08'),
(107, 14, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:23:10'),
(108, 14, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:23:10'),
(109, 15, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:24:26'),
(110, 15, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:24:26'),
(111, 16, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:26:48'),
(112, 16, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:26:48'),
(113, 17, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:28:42'),
(114, 17, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:28:42'),
(115, 18, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:48:22'),
(116, 18, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:48:22'),
(117, 19, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 16:55:19'),
(118, 19, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 16:55:19'),
(119, 20, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 17:33:35'),
(120, 20, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 17:33:35'),
(121, 21, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 17:37:16'),
(122, 21, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 17:37:16'),
(123, 22, 0, 'Order Created', 0, 1, 1, '0', '2020-01-14 17:55:34'),
(124, 22, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-14 17:55:34'),
(125, 23, 0, 'Order Created', 0, 1, 1, '0', '2020-01-15 09:33:18'),
(126, 23, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-15 09:33:18'),
(127, 24, 0, 'Order Created', 0, 1, 1, '0', '2020-01-15 09:41:17'),
(128, 24, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-15 09:41:17'),
(129, 25, 0, 'Order Created', 0, 1, 1, '0', '2020-01-15 09:50:16'),
(130, 25, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-15 09:50:16'),
(131, 26, 0, 'Order Created', 0, 1, 1, '0', '2020-01-15 10:02:03'),
(132, 26, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-15 10:02:03'),
(133, 27, 0, 'Order Created', 0, 1, 1, '0', '2020-01-15 10:04:25'),
(134, 27, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-15 10:04:25'),
(135, 28, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 15:56:30'),
(136, 28, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 15:56:30'),
(137, 29, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 15:59:54'),
(138, 29, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 15:59:54'),
(139, 30, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:01:27'),
(140, 30, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:01:27'),
(141, 31, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:03:49'),
(142, 31, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:03:49'),
(143, 31, 0, 'Order Cancelled', 0, 1, 1, '0', '2020-01-16 16:05:40'),
(144, 32, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:09:59'),
(145, 32, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:09:59'),
(146, 33, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:10:25'),
(147, 33, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:10:25'),
(148, 34, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:10:40'),
(149, 34, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:10:40'),
(150, 35, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:11:00'),
(151, 35, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:11:00'),
(152, 33, 0, 'Order Cancelled', 0, 1, 1, '0', '2020-01-16 16:11:24'),
(153, 34, 0, 'Order Cancelled', 0, 1, 1, '0', '2020-01-16 16:13:36'),
(154, 36, 0, 'Order Created', 0, 1, 1, '0', '2020-01-16 16:17:57'),
(155, 36, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-16 16:17:57'),
(156, 37, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 08:19:31'),
(157, 37, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 08:19:31'),
(158, 38, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 08:21:47'),
(159, 38, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 08:21:47'),
(160, 39, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 08:25:41'),
(161, 39, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 08:25:41'),
(162, 40, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 08:45:29'),
(163, 40, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 08:45:29'),
(164, 41, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 08:53:14'),
(165, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 08:53:14'),
(166, 40, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 13:56:53'),
(167, 40, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 13:56:53'),
(168, 40, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 13:56:53'),
(169, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 14:18:08'),
(170, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 14:18:08'),
(171, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 14:18:08'),
(172, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:29:32'),
(173, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:29:32'),
(174, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:29:32'),
(175, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:29:44'),
(176, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:29:44'),
(177, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:29:44'),
(178, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:30:04'),
(179, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:30:04'),
(180, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:30:04'),
(181, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:32:46'),
(182, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:32:46'),
(183, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:32:46'),
(184, 38, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:34:34'),
(185, 38, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:34:34'),
(186, 38, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:34:34'),
(187, 41, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 15:37:18'),
(188, 41, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 15:37:18'),
(189, 41, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 15:37:18'),
(190, 42, 0, 'Order Created', 0, 1, 1, '0', '2020-01-17 16:02:37'),
(191, 42, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 16:02:37'),
(192, 42, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-17 17:30:30'),
(193, 42, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-17 17:30:30'),
(194, 42, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-17 17:30:30'),
(195, 42, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-18 13:25:47'),
(196, 42, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-18 13:25:47'),
(197, 42, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-18 13:25:47'),
(198, 42, 0, 'Updated Order Table', 0, 1, 1, '0', '2020-01-18 14:06:22'),
(199, 42, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-18 14:06:22'),
(200, 42, 0, 'Order Assigned to', 0, 1, 1, '0', '2020-01-18 14:06:22'),
(201, 43, 0, 'Order Created', 0, 1, 1, '0', '2020-01-18 16:34:17'),
(202, 43, 0, 'Order Assigned to', 1, 1, 1, '0', '2020-01-18 16:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_service_products`
--

CREATE TABLE `aip_order_service_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `measurement` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `tax_amount` float NOT NULL,
  `additional_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aip_order_tax`
--

CREATE TABLE `aip_order_tax` (
  `id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax_percentage` float NOT NULL,
  `tax_amount` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_password_reset`
--

CREATE TABLE `aip_password_reset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reset_string` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_password_reset`
--

INSERT INTO `aip_password_reset` (`id`, `user_id`, `reset_string`, `created_time`) VALUES
(63, 2, 'IkHygT1YdXeLDcQS0peVRSFq67nJK8Q2kC94UvWUAOZ5CLas1lhEGgIutfyd5rWj', '2019-10-17 09:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `aip_payment_available_cards`
--

CREATE TABLE `aip_payment_available_cards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_payment_available_cards`
--

INSERT INTO `aip_payment_available_cards` (`id`, `name`, `image`, `payment_method_id`, `status`) VALUES
(11, 'Visa', 'payment_card_image_zHLIbuy2TBSQscRgwmVPAe89f.png', 23, '1'),
(12, 'Paypal', 'payment_card_image_gLteUYBmjEkPN1qlQ5z3xcGHo.png', 23, '1'),
(13, 'Master Card', 'payment_card_image_KDELwBQHFW9GnvhjM3sbyC641.png', 23, '1'),
(14, 'Maestro', 'payment_card_image_9ktTQUdwcFEKo4VHDuOJzlAY7.png', 23, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_payment_history`
--

CREATE TABLE `aip_payment_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `txn_no` int(11) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `linked_account_id` int(11) NOT NULL,
  `card_name` varchar(20) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `amount` float NOT NULL,
  `tender_cash` float DEFAULT NULL,
  `change_given` float DEFAULT NULL,
  `added_date` varchar(50) NOT NULL,
  `added_by` int(11) NOT NULL DEFAULT '0',
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1-Added,2-Removed',
  `deleted_date` varchar(20) DEFAULT NULL,
  `deleted_by` int(11) NOT NULL DEFAULT '0',
  `authorised_by_id` int(11) DEFAULT NULL COMMENT 'Who Authorised to remove'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_payment_history`
--

INSERT INTO `aip_payment_history` (`id`, `order_id`, `txn_no`, `payment_method`, `linked_account_id`, `card_name`, `card_no`, `amount`, `tender_cash`, `change_given`, `added_date`, `added_by`, `status`, `deleted_date`, `deleted_by`, `authorised_by_id`) VALUES
(22, 31, 1, 'Cash', 1, NULL, NULL, 150, 500, 350, '1/16/2020, 4:03:49 PM', 1, '1', NULL, 0, NULL),
(23, 32, 1, 'Cash', 1, NULL, NULL, 120, 500, 380, '1/16/2020, 4:09:59 PM', 1, '1', NULL, 0, NULL),
(24, 35, 1, 'Cash', 1, NULL, NULL, 2000, 5000, 3000, '1/16/2020, 4:11:00 PM', 1, '1', NULL, 0, NULL),
(25, 36, 1, 'Cash', 1, NULL, NULL, 500, 1000, 500, '1/16/2020, 4:17:57 PM', 1, '1', NULL, 0, NULL),
(26, 37, 1, 'Cash', 1, NULL, NULL, 500, 1000, 500, '1/17/2020, 8:19:31 AM', 1, '1', NULL, 0, NULL),
(27, 39, 1, 'Cash', 1, NULL, NULL, 500, 500, 0, '1/17/2020, 8:25:41 AM', 1, '1', NULL, 0, NULL),
(28, 40, 2, 'Cash', 1, NULL, NULL, 1000, 1000, 0, '1/17/2020, 1:56:52 PM', 1, '1', NULL, 0, NULL),
(29, 41, 2, 'Cash', 1, NULL, NULL, 100, 100, 0, '1/17/2020, 2:18:08 PM', 1, '1', NULL, 0, NULL),
(30, 38, 2, 'Cash', 1, NULL, NULL, 1000, 1000, 0, '1/17/2020, 3:34:34 PM', 1, '1', NULL, 0, NULL),
(31, 41, 7, 'Cash', 1, NULL, NULL, 1000, 1000, 0, '1/17/2020, 3:37:17 PM', 1, '1', NULL, 0, NULL),
(32, 42, 4, 'Cash', 1, NULL, NULL, 1000, 1000, 0, '1/18/2020, 2:06:22 PM', 1, '1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aip_payment_methods`
--

CREATE TABLE `aip_payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `full_size_image` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `linked_head_id` int(11) NOT NULL,
  `identification_code` text NOT NULL,
  `code_mandatory_status` enum('0','1') NOT NULL,
  `code_enable_status` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_payment_methods`
--

INSERT INTO `aip_payment_methods` (`id`, `name`, `full_size_image`, `icon`, `branch_id`, `linked_head_id`, `identification_code`, `code_mandatory_status`, `code_enable_status`, `status`) VALUES
(3, 'rtfyrty', '', 'payment_method_img_8vnQsYiWc12top7.png', 1, 0, '', '0', '0', '0'),
(4, 'dasf', '', 'images.jpg', 1, 0, '', '0', '0', '0'),
(5, 'new', '', '', 1, 0, '', '0', '0', '0'),
(6, 'new', '', '', 1, 0, '', '0', '0', '0'),
(7, 'ppp', '', 'payment_method_image_i3t6uZRbQNL4pAv0hGXomJMaW.png', 1, 0, '123', '0', '1', '0'),
(8, 'ujh', '', 'payment_method_image_HMwunleOag4FWKYEi3dX2DZ7h.png', 1, 0, '452753', '0', '1', '0'),
(9, 'sdfgdfsg', '', 'payment_method_img_FTW9G3AfZdMqBctnab4iEPo58rJ0KRHhSzYOVvwL6Nj1X2IkDU.png', 0, 0, '67689', '1', '0', '1'),
(10, 'Net Banking', '', 'payment_method_image_WHCszvYh5GrKx4PgLwTOME3FV.png', 1, 0, '12', '1', '1', '0'),
(11, 'bbb', '', 'payment_method_image_ybF90lxczvf5HMQTuiWUdJP61.png', 1, 0, '676', '0', '0', '0'),
(12, 'qqq', 'payment_method_image_zp5lK8iEFhnCgeOMQqw9fPvo3.png', 'payment_method_image_zp5lK8iEFhnCgeOMQqw9fPvo3.png', 1, 0, 'e545', '0', '0', '0'),
(13, 'ett', 'payment_method_image_Ty3zGPBKOhmR85pocU0FsQZAJ.png', 'payment_method_image_Ty3zGPBKOhmR85pocU0FsQZAJ.png', 1, 0, '45', '0', '0', '0'),
(14, 'aaa', 'payment_method_image_LfrpxRmbNTHOl84JtKV7wzCiP.png', 'payment_method_image_LfrpxRmbNTHOl84JtKV7wzCiP.png', 1, 0, '56', '0', '0', '0'),
(15, 'new pay', 'payment_method_image_Xe3zu6twUiRD1yNkIcm0hVnKg.png', 'payment_method_image_Xe3zu6twUiRD1yNkIcm0hVnKg.png', 1, 0, '56', '0', '0', '0'),
(16, 'zsdd', 'payment_method_image_x4tQoCV56l1X0SBF7UDrZaYyd.png', 'payment_method_image_x4tQoCV56l1X0SBF7UDrZaYyd.png', 1, 0, '235', '0', '0', '0'),
(17, 'visa card', 'payment_method_image_9cajzgP36onItwdiqY4KCONGQ.png', 'icon_OZjaPeFA7niJquEldRzLo8U90.png', 1, 0, '5', '1', '1', '0'),
(18, 'zzz', 'payment_method_image_Rd1inNv96OZ5upJgWePXLTzfV.png', '', 1, 1, '45', '0', '0', '0'),
(20, 'zaa', 'payment_method_image_H4eQ1ZgGzE6UuShWMwmborasx.png', 'icon_agj1rYiZ7OWq36pnFI9cATmdJ.png', 1, 0, '45', '0', '0', '0'),
(22, 'Cash', 'payment_method_image_OjJP3WBLEDUXaYhGdibof1ACH.png', '', 1, 1, '', '0', '0', '1'),
(23, 'Credit Card', 'payment_method_image_htVS3TLsHbnG7R5PyeBvkj2uW.png', '', 1, 9, '4', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_pos_settings`
--

CREATE TABLE `aip_pos_settings` (
  `id` int(11) NOT NULL,
  `setting_identifier` varchar(50) NOT NULL,
  `setting_value` text NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_pos_settings`
--

INSERT INTO `aip_pos_settings` (`id`, `setting_identifier`, `setting_value`, `branch_id`) VALUES
(1, 'post_product_selection_focus', 'unit_selection', 1),
(2, 'initial_focus', '0', 1),
(3, 'default_tab', '', 1),
(4, 'cash_customer_as_default', '1', 1),
(5, 'item_not_found', '0', 1),
(6, 'always_show_add_product', '1', 1),
(7, 'should_ask_for_password', '1', 1),
(9, 'auto_roundoff', '0', 1),
(10, 'auto_roundoff_rule', 'a:4:{i:0;s:8:\"0,0.24,0\";i:1;s:14:\"0.25,0.50,0.50\";i:2;s:14:\"0.51,0.74,0.75\";i:3;s:11:\"0.75,0.99,1\";}', 1),
(11, 'enable_touch_keyboard', '1', 1),
(12, 'can_change_grand_total', '1', 1),
(13, 'enable_credit_sale', '1', 1),
(14, 'show_number_pad', '1', 1),
(15, 'show_table', '1', 1),
(16, 'fast_moving', '1', 1),
(17, 'barcode_scan_fm', '1', 1),
(18, 'discount_popup', '1', 1),
(19, 'item_as_new_row', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_pos_tab_labels`
--

CREATE TABLE `aip_pos_tab_labels` (
  `id` int(11) NOT NULL,
  `tab_name` varchar(20) NOT NULL,
  `display_label` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_pos_tab_labels`
--

INSERT INTO `aip_pos_tab_labels` (`id`, `tab_name`, `display_label`, `branch_id`) VALUES
(5, 'customer', 'Customer', 1),
(6, 'order_info', 'Order Infos', 1),
(7, 'service', 'Service', 1),
(8, 'orders', 'Orders', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_predefined_permissions`
--

CREATE TABLE `aip_predefined_permissions` (
  `id` int(11) NOT NULL,
  `permission_name` varchar(100) NOT NULL,
  `permission_details` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_price_to_product`
--

CREATE TABLE `aip_price_to_product` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `multi_rate_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_price_to_product`
--

INSERT INTO `aip_price_to_product` (`id`, `branch_id`, `product_id`, `unit_id`, `customer_type_id`, `multi_rate_id`, `currency_id`, `price`, `created_user`, `created_time`) VALUES
(11, 1, 106, 2, 2, 0, 2, 11, 'admin', '2019-11-12 08:52:45'),
(12, 1, 107, 2, 2, 0, 2, 12, 'admin', '2019-11-12 08:56:23'),
(13, 1, 108, 2, 2, 0, 2, 13, 'admin', '2019-11-12 09:20:11'),
(14, 1, 109, 3, 2, 0, 2, 457, 'admin', '2019-11-12 09:24:07'),
(15, 1, 110, 2, 2, 0, 2, 15, 'admin', '2019-11-12 09:28:48'),
(16, 1, 111, 2, 2, 0, 2, 47, 'admin', '2019-11-12 09:30:52'),
(17, 1, 112, 2, 2, 0, 2, 47, 'admin', '2019-11-12 09:30:59'),
(18, 1, 113, 2, 2, 0, 2, 47, 'admin', '2019-11-12 09:31:11'),
(19, 1, 114, 1, 2, 0, 2, 36, 'admin', '2019-11-12 09:35:22'),
(20, 1, 115, 2, 2, 0, 2, 20, 'admin', '2019-11-12 09:37:38'),
(21, 1, 116, 1, 2, 0, 2, 456, 'admin', '2019-11-12 09:38:49'),
(22, 1, 117, 1, 2, 0, 2, 456, 'admin', '2019-11-12 09:40:33'),
(23, 1, 118, 1, 2, 0, 2, 456, 'admin', '2019-11-12 09:41:56'),
(24, 1, 119, 2, 2, 0, 2, 346, 'admin', '2019-11-12 09:44:48'),
(25, 1, 120, 2, 2, 0, 2, 25, 'admin', '2019-11-12 09:45:45'),
(26, 1, 121, 1, 2, 0, 2, 26, 'admin', '2019-11-12 09:46:20'),
(27, 1, 122, 2, 2, 0, 2, 27, 'admin', '2019-11-12 09:51:11'),
(28, 1, 123, 1, 2, 0, 2, 65, 'admin', '2019-11-12 09:53:27'),
(29, 1, 124, 3, 2, 0, 2, 29, 'admin', '2019-11-12 09:59:36'),
(30, 1, 125, 1, 2, 0, 2, 366, 'admin', '2019-11-12 10:00:59'),
(31, 1, 126, 3, 2, 0, 2, 31, 'admin', '2019-11-12 10:03:42'),
(32, 1, 127, 3, 2, 0, 2, 356, 'admin', '2019-11-12 10:08:17'),
(33, 1, 128, 2, 2, 0, 2, 33, 'admin', '2019-11-12 10:11:30'),
(34, 1, 129, 1, 2, 0, 2, 34, 'admin', '2019-11-12 10:23:00'),
(35, 1, 130, 3, 2, 0, 2, 457, 'admin', '2019-11-12 10:25:03'),
(36, 1, 131, 1, 2, 0, 2, 36, 'admin', '2019-11-12 10:25:35'),
(37, 1, 132, 2, 2, 0, 2, 457, 'admin', '2019-11-12 12:21:37'),
(38, 1, 133, 3, 2, 0, 2, 38, 'admin', '2019-11-12 12:23:30'),
(39, 1, 134, 7, 2, 0, 2, 76, 'admin', '2019-11-12 12:24:49'),
(40, 1, 135, 2, 2, 0, 2, 345, 'admin', '2019-11-12 14:04:23'),
(41, 1, 136, 1, 2, 0, 2, 346, 'admin', '2019-11-13 03:48:08'),
(42, 1, 137, 2, 2, 0, 2, 42, 'admin', '2019-11-13 04:36:01'),
(43, 1, 138, 2, 2, 0, 2, 346, 'admin', '2019-11-13 04:39:18'),
(44, 1, 139, 1, 2, 0, 2, 44, 'admin', '2019-11-13 04:42:03'),
(45, 1, 140, 3, 2, 0, 2, 467, 'admin', '2019-11-13 04:44:11'),
(46, 1, 141, 1, 2, 0, 2, 46, 'admin', '2019-11-13 05:08:04'),
(47, 1, 142, 1, 2, 0, 2, 25, 'admin', '2019-11-13 06:02:21'),
(48, 1, 143, 1, 2, 0, 2, 48, 'admin', '2019-11-13 06:05:31'),
(49, 1, 144, 1, 2, 0, 2, 346, 'admin', '2019-11-13 06:09:57'),
(50, 1, 145, 1, 2, 0, 2, 50, 'admin', '2019-11-13 06:12:58'),
(51, 1, 146, 1, 2, 0, 2, 51, 'admin', '2019-11-13 06:13:34'),
(52, 1, 147, 1, 2, 0, 2, 52, 'admin', '2019-11-13 06:17:54'),
(53, 1, 149, 2, 2, 0, 2, 53, 'admin', '2019-11-13 12:52:23'),
(54, 1, 150, 7, 2, 0, 2, 345, 'admin', '2019-11-13 12:54:05'),
(55, 1, 151, 1, 2, 0, 2, 456, 'admin', '2019-11-13 13:10:31'),
(56, 1, 152, 2, 2, 0, 2, 45, 'admin', '2019-11-14 03:39:55'),
(57, 1, 153, 2, 2, 0, 2, 456, 'admin', '2019-11-14 06:49:46'),
(58, 1, 154, 2, 2, 0, 2, 456, 'admin', '2019-11-14 06:50:16'),
(59, 1, 155, 3, 2, 0, 2, 200, 'admin', '2019-11-14 06:56:24'),
(60, 1, 156, 2, 2, 0, 2, 60, 'admin', '2019-11-14 07:04:41'),
(61, 1, 157, 2, 2, 0, 2, 36, 'admin', '2019-11-14 09:20:52'),
(62, 1, 158, 2, 2, 0, 2, 235, 'admin', '2019-11-14 09:21:44'),
(63, 1, 159, 1, 2, 0, 2, 45, 'admin', '2019-11-14 09:43:45'),
(64, 1, 160, 2, 2, 0, 2, 346, 'admin', '2019-11-14 09:51:27'),
(65, 1, 161, 2, 2, 0, 2, 65, 'admin', '2019-11-14 09:53:09'),
(66, 1, 162, 1, 2, 0, 2, 5, 'admin', '2019-11-15 09:04:25'),
(67, 1, 163, 1, 2, 0, 2, 67, 'admin', '2019-11-15 09:05:40'),
(68, 1, 164, 1, 2, 0, 2, 22, 'admin', '2019-11-18 05:12:28'),
(69, 1, 165, 1, 2, 0, 2, 100, 'admin', '2019-11-18 06:57:59'),
(70, 1, 166, 1, 2, 0, 2, 456, 'admin', '2019-11-18 07:06:00'),
(71, 1, 167, 2, 2, 0, 2, 46, 'admin', '2019-11-18 09:06:01'),
(72, 1, 168, 1, 2, 0, 2, 35, 'admin', '2019-11-18 10:13:37'),
(73, 1, 169, 2, 2, 0, 2, 346, 'admin', '2019-11-18 10:16:25'),
(74, 1, 170, 2, 2, 0, 2, 7, 'admin', '2019-11-18 11:02:57'),
(75, 1, 171, 1, 2, 0, 2, 75, 'admin', '2019-11-18 11:10:49'),
(76, 1, 172, 1, 2, 0, 2, 36, 'admin', '2019-11-18 11:19:56'),
(77, 1, 173, 2, 2, 0, 2, 56, 'admin', '2019-11-18 11:22:43'),
(78, 1, 174, 1, 2, 0, 2, 457, 'admin', '2019-11-18 11:23:58'),
(79, 1, 175, 1, 2, 0, 2, 457, 'admin', '2019-11-18 11:24:14'),
(80, 1, 176, 1, 2, 0, 2, 346, 'admin', '2019-11-19 06:12:59'),
(81, 1, 177, 2, 2, 0, 2, 81, 'admin', '2019-11-19 06:14:31'),
(82, 1, 178, 1, 2, 0, 2, 453, 'admin', '2019-11-19 08:41:21'),
(83, 1, 179, 2, 2, 0, 2, 83, 'admin', '2019-11-19 08:42:21'),
(84, 1, 180, 2, 2, 0, 2, 467, 'admin', '2019-11-19 08:51:09'),
(85, 1, 181, 2, 2, 0, 2, 47, 'admin', '2019-11-19 08:55:57'),
(86, 1, 182, 2, 2, 0, 2, 86, 'admin', '2019-11-19 11:48:10'),
(87, 1, 183, 1, 2, 0, 2, 457, 'admin', '2019-11-19 13:45:32'),
(88, 1, 184, 1, 2, 0, 2, 456, 'admin', '2019-11-20 04:52:30'),
(89, 1, 185, 1, 2, 0, 2, 89, 'admin', '2019-11-20 05:35:11'),
(90, 1, 186, 2, 2, 0, 2, 47, 'admin', '2019-11-20 05:36:41'),
(91, 1, 187, 1, 2, 0, 2, 58, 'admin', '2019-11-20 06:02:37'),
(92, 1, 188, 2, 2, 0, 2, 92, 'admin', '2019-11-20 06:06:05'),
(93, 1, 189, 2, 2, 0, 2, 93, 'admin', '2019-11-20 06:06:14'),
(94, 1, 190, 2, 2, 0, 2, 94, 'admin', '2019-11-20 06:06:19'),
(95, 1, 191, 1, 2, 0, 2, 95, 'admin', '2019-11-20 06:06:37'),
(96, 1, 192, 1, 2, 0, 2, 35, 'admin', '2019-11-20 06:07:37'),
(97, 1, 193, 2, 2, 0, 2, 47, 'admin', '2019-11-20 06:08:45'),
(98, 1, 194, 1, 2, 0, 2, 364, 'admin', '2019-11-20 06:11:50'),
(99, 1, 195, 2, 2, 0, 2, 99, 'admin', '2019-11-20 06:14:42'),
(100, 1, 196, 1, 2, 0, 2, 100, 'admin', '2019-11-20 06:16:25'),
(101, 1, 197, 2, 2, 0, 2, 346, 'admin', '2019-11-20 06:17:49'),
(102, 1, 198, 2, 2, 0, 2, 121, 'admin', '2019-11-20 06:19:29'),
(103, 1, 199, 2, 2, 0, 2, 103, 'admin', '2019-11-20 06:22:00'),
(104, 1, 200, 2, 2, 0, 2, 104, 'admin', '2019-11-20 06:25:25'),
(105, 1, 201, 1, 2, 0, 2, 105, 'admin', '2019-11-20 06:28:02'),
(106, 1, 202, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:28:33'),
(107, 1, 203, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:29:51'),
(108, 1, 204, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:31:07'),
(109, 1, 205, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:31:48'),
(110, 1, 206, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:32:12'),
(111, 1, 207, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:33:08'),
(112, 1, 208, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:33:45'),
(113, 1, 209, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:35:23'),
(114, 1, 210, 2, 2, 0, 2, 345, 'admin', '2019-11-20 06:35:45'),
(115, 1, 211, 2, 2, 0, 2, 346, 'admin', '2019-11-20 06:38:39'),
(116, 1, 212, 7, 2, 0, 2, 116, 'admin', '2019-11-20 06:45:14'),
(117, 1, 213, 2, 2, 0, 2, 117, 'admin', '2019-11-20 06:48:32'),
(118, 1, 214, 1, 2, 0, 2, 346, '1', '2019-11-20 10:08:40'),
(119, 1, 215, 2, 2, 0, 2, 119, '1', '2019-11-20 11:55:04'),
(120, 1, 216, 1, 2, 0, 2, 120, '1', '2019-11-20 12:21:32'),
(121, 1, 232, 1, 2, 0, 2, 121, '1', '2019-11-20 12:29:18'),
(122, 1, 232, 4, 12, 0, 2, 20, '1', '2019-11-21 04:41:00'),
(123, 1, 232, 2, 16, 0, 2, 40, '1', '2019-11-21 04:41:27'),
(124, 1, 232, 2, 2, 0, 2, 457, '1', '2019-11-21 04:41:40'),
(125, 1, 232, 3, 2, 0, 2, 10, '1', '2019-11-21 04:42:14'),
(126, 1, 243, 3, 19, 0, 2, 457, '1', '2019-11-21 04:42:44'),
(127, 1, 243, 1, 18, 0, 2, 127, '1', '2019-11-21 04:51:45'),
(128, 1, 243, 2, 17, 0, 2, 128, '1', '2019-11-21 04:53:42'),
(129, 1, 243, 2, 16, 0, 2, 129, '1', '2019-11-21 04:54:50'),
(130, 1, 243, 2, 13, 0, 2, 130, '1', '2019-11-21 04:56:40'),
(131, 1, 243, 1, 2, 0, 2, 35, '1', '2019-11-21 05:09:55'),
(132, 1, 243, 1, 16, 0, 2, 50, '1', '2019-11-21 05:48:18'),
(134, 1, 243, 3, 2, 0, 2, 30, '1', '2019-11-22 12:17:28'),
(135, 1, 242, 1, 7, 0, 2, 67, '1', '2019-11-25 05:04:47'),
(136, 1, 0, 0, 2, 0, 2, 67, '1', '2019-11-25 05:13:53'),
(139, 1, 243, 1, 2, 0, 2, 400, '1', '2019-11-25 06:56:19'),
(140, 1, 242, 2, 2, 0, 2, 50, '1', '2019-11-25 07:06:26'),
(142, 1, 242, 3, 12, 0, 2, 400, '1', '2019-11-25 07:18:15'),
(143, 1, 0, 0, 12, 0, 2, 400, '1', '2019-11-26 05:17:51'),
(144, 1, 242, 1, 8, 0, 2, 3, '1', '2019-11-26 05:20:26'),
(145, 1, 242, 1, 8, 0, 2, 145, '1', '2019-11-26 08:48:58'),
(146, 1, 242, 2, 18, 0, 2, 475, '1', '2019-11-26 09:01:58'),
(148, 1, 242, 1, 2, 0, 2, 20, '1', '2019-11-26 12:04:19'),
(149, 1, 242, 1, 12, 0, 2, 40, '1', '2019-11-26 12:05:37'),
(150, 1, 242, 3, 2, 0, 2, 150, '1', '2019-11-26 12:07:04'),
(151, 1, 165, 1, 12, 0, 2, 150, 'admin', '2019-11-18 06:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `aip_printer_settings`
--

CREATE TABLE `aip_printer_settings` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `footer_text1` varchar(100) NOT NULL,
  `footer_text2` varchar(100) CHARACTER SET utf32 NOT NULL,
  `thankyou_text1` varchar(100) NOT NULL,
  `thankyou_text2` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_product`
--

CREATE TABLE `aip_product` (
  `id` int(11) NOT NULL,
  `product_name1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `product_name2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_model` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `online_ean` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `base_unit_id` int(11) DEFAULT NULL,
  `base_unit_qty` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `sale_unit_id` int(11) DEFAULT NULL,
  `purchase_unit_id` int(11) DEFAULT NULL,
  `report_unit_id` int(11) DEFAULT NULL,
  `minstock` float DEFAULT NULL,
  `reorder` float DEFAULT NULL,
  `maxstock` float DEFAULT NULL,
  `purchase_rate` float(6,2) DEFAULT NULL,
  `rate_type` enum('0','1','2') CHARACTER SET latin1 DEFAULT NULL COMMENT '0-Normal,1-Flexible rate,2-Multi rate',
  `created_user` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fast_moving` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('0','1','2') CHARACTER SET latin1 DEFAULT '1' COMMENT '0-Disable,1-Enable,2-deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_product`
--

INSERT INTO `aip_product` (`id`, `product_name1`, `product_name2`, `product_model`, `product_category_id`, `online_ean`, `product_brand_id`, `base_unit_id`, `base_unit_qty`, `image`, `product_type_id`, `sale_unit_id`, `purchase_unit_id`, `report_unit_id`, `minstock`, `reorder`, `maxstock`, `purchase_rate`, `rate_type`, `created_user`, `created_time`, `fast_moving`, `status`) VALUES
(1, 'xcvxe', 'xcv', 'md1', 42, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 10:44:56', '0', '0'),
(2, 'gnhjgfvh', 'ghj', 'md2', 42, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 10:45:05', '0', '0'),
(3, 'xcvx', 'xcb', 'md3', 42, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-17 10:45:16', '1', '0'),
(4, 'asd', 'asf', 'md4', 42, '234', 0, 1, 232, 'download.jpg', 1, NULL, NULL, NULL, 234, NULL, 434, 234.00, '1', NULL, '2019-10-24 10:03:39', '0', '1'),
(5, 'drstfdsf', 'tdsfgd', 'md5', 42, '4534', 1, 1, 356, 'download_(1).jpg', 1, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-10-24 10:17:22', '0', '0'),
(6, 'asderf', 'asedf', 'md6', 42, '44e56y', 1, 1, 25, 'download_(1)1.jpg', 1, NULL, NULL, NULL, 235, NULL, 3454, 234.00, '0', NULL, '2019-10-29 10:54:38', '0', '0'),
(7, 'drgydf', 'dfgd', 'md7', 42, '787', 8, 1, 356, 'nature-3082832_960_720.jpg', 2, NULL, NULL, NULL, 6, NULL, 346, 464.00, '0', NULL, '2019-11-01 04:17:43', '0', '0'),
(8, 'drgydf', 'dfgd', 'md8', 42, '784567467', 8, 1, 356, 'nature-3082832_960_7201.jpg', 2, NULL, NULL, NULL, 6, NULL, 346, 464.00, '0', NULL, '2019-11-01 04:18:36', '0', '0'),
(9, 'dfg', 'dfg', 'md9', 42, '253', 15, 1, 356, 'istockphoto-535455441-612x612.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-01 04:20:23', '0', '0'),
(10, 'zdfdzf', 'dsgs', 'md10', 42, '56', 16, 1, 254, 'download_(1)2.jpg', 1, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-01 04:22:33', '0', '0'),
(11, 'SEGTS', 'SDGSDF', 'md11', 42, '9889', 8, 1, 356, 'istockphoto-535455441-612x6121.jpg', 1, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-01 04:24:48', '0', '0'),
(12, 'xcvx', 'xcb', 'md12', 42, '', NULL, 1, 0, 'download3.jpg', NULL, NULL, NULL, NULL, 0, NULL, 0, 0.00, NULL, NULL, '2019-11-01 04:36:08', '0', '0'),
(19, 'Idly', 'asdf', 'md19', 42, '54754', 15, 1, 545, 'water-image.jpg', 2, NULL, NULL, NULL, 6, NULL, 346, 45.00, '0', NULL, '2019-11-05 09:40:16', '0', '1'),
(21, 'one', 'dfg', 'md21', 42, '679', 15, 1, 46, 'nature-3082832_960_7201.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:40:17', '0', '0'),
(22, 'two', 'sdregf', 'md22', 42, '6796', 15, 1, 46, 'download_(1).jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:40:40', '0', '0'),
(23, 'three', 'vghn', 'md23', 42, '679679', 15, 1, 46, 'download.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:40:56', '0', '0'),
(24, 'four', 'fgh', 'md24', 42, '67960', 15, 1, 46, 'images.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:41:18', '0', '0'),
(25, 'five', 'df', 'md25', 42, '67960546', 15, 1, 46, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:42:07', '0', '0'),
(26, 'six', 'drfg', 'md26', 43, '679605467', 15, 1, 46, 'XRE112-92_2019_010912.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:42:29', '1', '0'),
(27, 'seven', NULL, 'md27', 43, NULL, NULL, 1, 46, 'download_(2)5.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-06 04:43:01', '0', '0'),
(28, 'eight', NULL, 'md28', 43, NULL, NULL, 1, 46, 'download_(3)3.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-06 04:43:25', '0', '0'),
(29, 'nine', 'sdfg', 'md29', 43, '80780sdg', 15, 1, 46, 'download_(1)1.jpg', 2, NULL, NULL, NULL, 6, NULL, 456, 464.00, '0', NULL, '2019-11-06 04:43:50', '0', '0'),
(35, 'new product', NULL, 'md35', 43, NULL, NULL, 3, 10, NULL, 2, 3, 3, NULL, 0, NULL, 100, 20.00, '2', NULL, '2019-11-06 12:56:21', '0', '0'),
(36, 'new product 1', 'sdgf', 'md36', 43, '457', 15, 2, 356, 'download_(2)2.jpg', 3, 3, 1, NULL, 0, NULL, 100, 346.00, '0', NULL, '2019-11-06 12:59:50', '0', '0'),
(37, 's', 'sd', 'md37', 43, '457', NULL, 1, 45326, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 452.00, '0', NULL, '2019-11-06 13:03:52', '0', '0'),
(38, 'zxcdz', NULL, 'md38', 43, '80', NULL, 1, 4, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 46.00, '0', NULL, '2019-11-06 13:09:17', '0', '0'),
(39, 'zdcvf', NULL, 'md39', 43, '80', NULL, 1, 7452, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 7.00, '0', NULL, '2019-11-06 13:10:37', '0', '0'),
(40, 'dfg', NULL, 'md40', 43, '80', NULL, 1, 356, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 464.00, '0', NULL, '2019-11-06 13:11:14', '0', '0'),
(42, 'fgh', NULL, 'md42', 43, '585357456', NULL, 1, 354, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 346.00, '0', 'admin', '2019-11-06 13:26:18', '0', '0'),
(43, 'dfg', NULL, 'md43', 43, '7452754', NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, 752.00, '0', 'admin', '2019-11-06 13:27:14', '0', '0'),
(44, 'dfg', NULL, 'md44', 43, '74525', NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, 752.00, '0', 'admin', '2019-11-06 13:27:52', '0', '1'),
(45, 'dfgd', NULL, 'md45', 43, '785', NULL, 1, 75, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 75.00, '0', 'admin', '2019-11-06 13:28:22', '1', '0'),
(46, 'gfjh', NULL, 'md46', 43, '752757', NULL, 1, 7452, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 452.00, '0', 'admin', '2019-11-06 13:29:48', '0', '0'),
(47, 'fghfgh', NULL, 'md47', 43, '453446', NULL, 1, 56, '10best-cars-group-cropped-15421260371.jpg', 2, NULL, NULL, NULL, 0, NULL, 100, 464.00, '0', 'admin', '2019-11-07 03:29:50', '0', '0'),
(48, 'fghfgh', NULL, 'md48', 43, '3465', NULL, 1, 56, '10best-cars-group-cropped-15421260372.jpg', 2, NULL, NULL, NULL, 0, NULL, 100, 464.00, '0', 'admin', '2019-11-07 03:31:45', '0', '0'),
(49, 'dfgd', NULL, 'md49', 43, '453414', NULL, 1, 254, 'XRE112-92_2019_0109121.jpg', 2, 1, 1, NULL, 0, NULL, 100, 25.00, '0', 'admin', '2019-11-07 03:55:39', '0', '0'),
(50, 'dfgd', NULL, 'md50', 43, '453414563', NULL, 1, 254, 'XRE112-92_2019_0109122.jpg', 2, 1, 1, NULL, 0, NULL, 100, 25.00, '0', 'admin', '2019-11-07 03:55:47', '0', '0'),
(51, 'dsrgf', NULL, 'md51', 44, '34634', NULL, 2, 356, 'images4.jpg', 2, 2, 2, NULL, 0, NULL, 100, 464.00, '0', 'admin', '2019-11-07 03:58:23', '0', '0'),
(57, 'fghdg', NULL, 'md57', 44, '57658568', NULL, 1, 356, 'download_(2)3.jpg', 2, NULL, NULL, NULL, 0, NULL, 100, 464.00, '0', 'admin', '2019-11-07 04:03:38', '0', '0'),
(60, 'product', 'product 1', 'md60', 44, '123000', 15, 1, 10, 'water-image1.jpg', 2, 1, 3, NULL, 0, NULL, 100, 40.00, '1', 'admin', '2019-11-07 04:35:01', '0', '0'),
(64, 'dfghdh', NULL, 'md64', 44, NULL, NULL, 2, 4532, 'download_(4).jpg', 2, 2, 2, NULL, 0, NULL, 100, 452.00, '0', 'admin', '2019-11-07 05:58:33', '0', '0'),
(65, 'xzdf', NULL, 'md65', 44, '452452', NULL, 1, 53, 'download_(5).jpg', 2, 1, 1, NULL, 0, NULL, 100, 736.00, '0', 'admin', '2019-11-07 06:00:12', '0', '0'),
(66, 'asrefs', NULL, 'md66', 44, '45275', NULL, 2, 4572, 'download_(5)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, 464.00, '0', 'admin', '2019-11-07 06:02:34', '0', '1'),
(70, 'sdfgdfsg', 'fghgfh', 'md70', 44, '457567', NULL, 1, 345, 'images_(4).jpg', 2, 1, 1, NULL, 0, NULL, 100, 425.00, '0', 'admin', '2019-11-07 08:55:48', '0', '0'),
(71, 'dfgdf', 'dh', 'md71', 44, '753753', 16, 1, 365, 'images_(1).jpg', 1, 1, 1, NULL, 0, NULL, 100, 0.00, '0', 'admin', '2019-11-08 09:37:53', '0', '0'),
(72, 'xsdgf', 'gjgh', 'md72', 44, '4532', 18, 1, 0, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 0.00, '0', 'admin', '2019-11-08 09:40:13', '0', '0'),
(73, 'ssssssegf', 'dg', 'md73', 44, '453', NULL, 1, 0, NULL, 2, NULL, NULL, NULL, 0, NULL, 100, 0.00, '0', 'admin', '2019-11-08 09:42:03', '0', '0'),
(74, 'cvfbcvfb', NULL, 'md74', 44, NULL, NULL, 1, 0, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-08 09:42:29', '0', '1'),
(75, 'gfhgfh', NULL, 'md75', 44, NULL, NULL, 2, 7856, 'download3.jpg', 2, 2, 2, NULL, 0, NULL, 100, 786.00, '0', 'admin', '2019-11-08 10:14:30', '0', '0'),
(76, 'fyj', NULL, 'md76', 44, NULL, NULL, 2, 7452, 'download_(4)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, 4523.00, '0', 'admin', '2019-11-08 10:16:01', '1', '0'),
(77, 'dfgdg', NULL, 'md77', 44, NULL, NULL, 3, 345634, 'download_(2)14.jpg', 2, 3, 3, NULL, 0, NULL, 100, 457.00, '0', 'admin', '2019-11-08 10:16:28', '0', '0'),
(78, 'dfghfgh', NULL, 'md78', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 10:21:09', '0', '0'),
(79, 'dfghfgh', NULL, 'md79', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:02:49', '0', '0'),
(80, 'dfghfgh', NULL, 'md80', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:03:22', '0', '0'),
(81, 'dfghfgh', NULL, 'md81', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:05:31', '0', '0'),
(82, 'dfghfgh', NULL, 'md82', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:08:41', '0', '0'),
(83, 'dfghfgh', NULL, 'md83', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:09:13', '0', '0'),
(84, 'dfghfgh', NULL, 'md84', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:12:09', '0', '0'),
(85, 'dfghfgh', NULL, 'md85', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:17:37', '1', '0'),
(86, 'dfhgdfg', NULL, 'md86', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 9999.99, '0', 'admin', '2019-11-08 11:20:04', '0', '0'),
(87, 'DFGDFG', NULL, 'md87', 44, NULL, NULL, 2, 678, 'download_(2)15.jpg', 2, 2, 2, NULL, 0, NULL, 100, 678.00, '0', 'admin', '2019-11-08 11:22:37', '0', '0'),
(88, 'DFGDFG', NULL, 'md88', 44, NULL, NULL, 2, 678, 'download_(2)16.jpg', 2, 2, 2, NULL, 0, NULL, 100, 678.00, '0', 'admin', '2019-11-08 11:27:40', '0', '0'),
(89, 'DFGDFG', '', 'md89', 44, NULL, NULL, 2, 678, 'download_(2)20.jpg', 2, 2, 2, NULL, 0, NULL, 100, 678.00, '0', 'admin', '2019-11-08 11:29:53', '0', '0'),
(90, 'drfgdfg', 'zdf', 'md90', 44, NULL, NULL, 2, 453, NULL, 2, 2, 2, NULL, 0, NULL, 100, 453.00, '0', 'admin', '2019-11-08 11:30:21', '0', '0'),
(91, 'vghj', 'cgfhgf', 'md91', 44, NULL, NULL, 1, 5678, '10best-cars-group-cropped-15421260373.jpg', 2, 1, 1, NULL, 0, NULL, 100, 789.00, '0', 'admin', '2019-11-08 11:35:36', '0', '0'),
(92, 'xvfxv', 'xcvx', 'md92', 44, NULL, NULL, 1, 0, 'download4.jpg', 2, 1, 1, NULL, 0, NULL, 100, 36.00, '0', 'admin', '2019-11-08 11:45:14', '0', '0'),
(93, 'dfgdsfg', 'dfg', 'md93', 44, NULL, NULL, 2, 345, 'images_(1)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, 36.00, '0', 'admin', '2019-11-08 12:47:13', '0', '0'),
(94, 'dfgdsfg', 'dfg', 'md94', 44, NULL, NULL, 2, 345, 'images_(1)2.jpg', 2, 2, 2, NULL, 0, NULL, 100, 36.00, '0', 'admin', '2019-11-08 12:48:26', '0', '0'),
(95, 'dfgdsfg', 'dfg', 'md95', 44, NULL, NULL, 2, 345, 'images_(1)3.jpg', 2, 2, 2, NULL, 0, NULL, 100, 36.00, '0', 'admin', '2019-11-08 12:49:24', '0', '0'),
(96, 'ygu', NULL, 'md96', 44, NULL, NULL, 3, 345, 'images_(1)5.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-08 12:50:32', '0', '1'),
(97, 'xcdv', NULL, 'md97', 44, NULL, NULL, 2, 342, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-08 13:21:53', '0', '0'),
(98, 'srfdgf', 'srfg', 'md98', 44, '3534', 17, 1, 345, 'download_(3)5.jpg', 2, 1, 2, NULL, 456, NULL, 234, 234.00, '0', 'admin', '2019-11-08 13:23:38', '1', '1'),
(99, 'zsdvf', 's', 'md99', 44, '534', 17, 2, 46, 'images_(4)1.jpg', 2, 2, 2, NULL, 56, NULL, 456, 4567.00, '0', 'admin', '2019-11-08 13:25:05', '0', '0'),
(100, 'sdfdf', NULL, 'md100', 45, NULL, NULL, 2, 2354, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-09 03:54:48', '0', '0'),
(101, 'sdfsdf', 'sdf', 'md101', 45, '5677', 15, 3, 45, 'images_(3).jpg', 2, 2, 3, NULL, 0, NULL, 100, 654.00, '0', 'admin', '2019-11-09 03:55:10', '0', '1'),
(102, 'dsfrtg', NULL, 'md102', 45, NULL, NULL, 1, 3, '10best-cars-group-cropped-1542126037.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:34:41', '0', '0'),
(103, 'sgfsdgf', NULL, 'md103', 45, NULL, NULL, 2, 435, 'download_(2).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:37:09', '0', '0'),
(104, 'dfghdgfh', NULL, 'md104', 45, NULL, NULL, 2, 7567, 'images_(1).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:38:58', '0', '0'),
(105, 'cfgbh', NULL, 'md105', 45, NULL, NULL, 2, 345, 'download_(1).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:45:11', '0', '0'),
(106, 'drfgfg', NULL, 'md106', 45, NULL, NULL, 2, 647, 'images_(3).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:52:45', '0', '0'),
(107, 'dfthdh', NULL, 'md107', 45, NULL, NULL, 2, 356, 'images_(5).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 08:56:23', '0', '0'),
(108, 'TDFYDTFY', NULL, 'md108', 45, NULL, NULL, 2, 789, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:20:11', '0', '0'),
(109, 'xfvgxf', NULL, 'md109', 45, NULL, NULL, 3, 346, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:24:07', '0', '0'),
(110, 'xfgfsg', NULL, 'md110', 45, NULL, NULL, 2, 467, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:28:48', '1', '0'),
(111, 'fghfghtghdt', NULL, 'md111', 45, NULL, NULL, 2, 5467, 'product_default_image.png', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:30:52', '1', '0'),
(112, 'tty', NULL, 'md112', 45, NULL, NULL, 2, 5467, 'product_default_image.png', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:30:59', '0', '0'),
(113, 'yy', NULL, 'md113', 45, NULL, NULL, 2, 56, 'product_default_image.png', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:31:11', '0', '0'),
(114, 'dcfg', NULL, 'md114', 45, NULL, NULL, 1, 546, 'product_default_image.png', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:35:22', '0', '0'),
(115, 'sdf', NULL, 'md115', 45, NULL, NULL, 2, 345, 'product_default_image.png', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:37:38', '0', '0'),
(116, 'sfdgs', NULL, 'md116', 45, NULL, NULL, 1, 2147483647, 'product_default_image.png', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:38:49', '0', '0'),
(117, 'dfgzdcds', NULL, 'md117', 45, NULL, NULL, 1, 345, 'product_default_image.png', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:40:33', '0', '0'),
(118, 'ii', NULL, 'md118', 45, NULL, NULL, 1, 345, 'product_default_image.png', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:41:56', '0', '0'),
(119, 'uuu', NULL, 'md119', 45, NULL, NULL, 2, 435, 'product_default_image.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:44:48', '0', '0'),
(120, 'ttt', NULL, 'md120', 45, NULL, NULL, 2, 7878, 'product_default_image.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:45:45', '0', '0'),
(121, 'xfv', NULL, 'md121', 45, NULL, NULL, 1, 0, 'product_default_image.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:46:20', '0', '0'),
(122, 'DFGXFG', NULL, 'md122', 45, NULL, NULL, 2, 345, 'download_(1)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:51:11', '0', '0'),
(123, 'FHFGH', NULL, 'md123', 45, NULL, NULL, 1, 3456, 'photo-1535498730771-e735b998cd64.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:53:27', '0', '0'),
(124, 'SDEFSDF', NULL, 'md124', 45, NULL, NULL, 3, 3453, 'silhouette-photo-of-person-standing-in-cave-3098796.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 09:59:36', '0', '0'),
(125, 'SOO', NULL, 'md125', 45, NULL, NULL, 1, 54, 'silhouette-photo-of-person-standing-in-cave-30987961.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 10:00:59', '0', '0'),
(126, 'DFGDFGFGH', NULL, 'md126', 45, NULL, NULL, 3, 568, 'herd-of-deers-1742926.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 10:03:42', '0', '1'),
(128, 'SDFDFUU', NULL, 'md128', 45, NULL, NULL, 2, 567, 'herd-of-deers-1742926.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-12 10:11:30', '0', '0'),
(136, 'xv', NULL, 'md136', 51, NULL, NULL, 1, 25, 'images_(1).jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 03:48:08', '0', '0'),
(142, 'wE', NULL, 'md142', 51, NULL, NULL, 1, 24, '10best-cars-group-cropped-1542126037.jpg', 1, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 06:02:21', '0', '0'),
(143, 'xzsdf', NULL, 'md143', 51, NULL, NULL, 1, 45645, 'download_(4).jpg', 1, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 06:05:31', '1', '0'),
(144, 'drtgds', NULL, 'md144', 51, NULL, NULL, 1, 45, 'XRE112-92_2019_010912.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 06:09:57', '0', '0'),
(147, 'oliu', NULL, 'md147', 51, NULL, NULL, 1, 56, 'images_(4).jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 06:17:54', '0', '0'),
(148, 'FYGHJFGHJU', NULL, 'md148', 51, NULL, NULL, 2, 547, '10best-cars-group-cropped-15421260371.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 12:25:47', '0', '0'),
(150, 'xbvx', NULL, 'md150', 51, NULL, NULL, 7, 345, 'forest-trees-1624988.jpg', 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 12:54:05', '0', '0'),
(151, 'dsfg', NULL, 'md151', 51, NULL, NULL, 1, 546, 'forest-trees-16249881.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-13 13:10:31', '1', '0'),
(152, 'dfgf', NULL, 'md152', 51, NULL, NULL, 2, 3456, 'download_(5).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 03:39:55', '0', '1'),
(153, 'dfsgfs', NULL, 'md153', 51, NULL, NULL, 2, 3456, 'download_(4)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 06:49:46', '0', '1'),
(154, 'fghgfh', NULL, 'md154', 51, NULL, NULL, 2, 356, 'download.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 06:50:16', '0', '1'),
(155, 'tt', NULL, 'md155', 51, NULL, NULL, 3, 200, 'download_(2).jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 06:56:24', '0', '1'),
(156, 'drfgdsfg', NULL, 'md156', 51, NULL, NULL, 2, 6, 'images_(3)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 07:04:41', '0', '1'),
(157, 'sdrfgdfsg', NULL, 'md157', 51, NULL, NULL, 2, 345, 'images_(5).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 09:20:52', '0', '1'),
(158, 'dfthh', NULL, 'md158', 51, NULL, NULL, 2, 33456, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 09:21:44', '0', '1'),
(159, 'cdfgfcdg', NULL, 'md159', 46, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 09:43:45', '0', '1'),
(160, 'serts', NULL, 'md160', 46, NULL, NULL, 2, 5, 'images_(4)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 09:51:27', '0', '1'),
(161, 'iop', NULL, 'md161', 46, NULL, NULL, 2, 345, 'download_(3)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-14 09:53:09', '0', '1'),
(162, 'xdfbgvxfg', NULL, 'md162', 46, NULL, NULL, 1, 34, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-15 09:04:25', '0', '1'),
(163, 'cfgh', NULL, 'md163', 46, NULL, NULL, 1, 34, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-15 09:05:40', '0', '1'),
(164, 'zdvfz', NULL, 'md164', 46, NULL, NULL, 1, 1, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 05:12:28', '0', '1'),
(165, 'vfghjgf', NULL, 'md165', 46, NULL, NULL, 1, 99, 'images_(3).jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 06:57:59', '1', '1'),
(166, 'sgfsg', NULL, 'md166', 46, NULL, NULL, 1, 34, 'water-image.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 07:06:00', '0', '1'),
(167, 'ttty', NULL, 'md167', 46, NULL, NULL, 2, 33, 'images.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 09:06:01', '0', '1'),
(168, 'fth', NULL, 'md168', 46, NULL, NULL, 1, 234, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 10:13:37', '0', '1'),
(169, 'dgdfg', NULL, 'md169', 46, NULL, NULL, 2, 34, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 10:16:25', '0', '1'),
(170, 'op', NULL, 'md170', 46, NULL, NULL, 2, 45, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 11:02:57', '0', '1'),
(171, 'dfh', NULL, 'md171', 46, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 11:10:49', '0', '1'),
(172, 'teye', NULL, 'md172', 46, NULL, NULL, 1, 345, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 11:19:56', '0', '1'),
(173, 'ppp', NULL, 'md173', 46, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 11:22:43', '0', '1'),
(174, 'ppp', NULL, 'md174', 46, NULL, NULL, 1, 5, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-18 11:23:58', '0', '0'),
(176, 'dfgxdfg', NULL, 'md176', 46, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-19 06:12:59', '0', '1'),
(177, 'op', NULL, 'md177', 46, NULL, NULL, 2, 54, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-19 06:14:31', '0', '1'),
(178, 'ppl', NULL, 'md178', 46, NULL, NULL, 1, 345, NULL, 2, 1, 1, NULL, 452, NULL, 453, 453.00, '0', 'admin', '2019-11-19 08:41:21', '0', '1'),
(179, 'dthdgfh', NULL, 'md179', 46, NULL, NULL, 3, 567, NULL, 2, 2, 1, NULL, 5678, NULL, 568, 5678.00, '2', 'admin', '2019-11-19 08:42:21', '0', '1'),
(180, 'dfghdgh', NULL, 'md180', 46, NULL, NULL, 1, 345, NULL, 2, 2, 1, NULL, 456, NULL, 47, 47.00, '1', 'admin', '2019-11-19 08:51:09', '0', '1'),
(181, 'dgfhd', NULL, 'md181', 46, NULL, NULL, 2, 46, NULL, 2, 2, 7, NULL, 45, NULL, 4567, 47.00, '2', 'admin', '2019-11-19 08:55:57', '0', '1'),
(182, 'hjk', NULL, 'md182', 46, NULL, NULL, 2, 678, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-19 11:48:10', '0', '1'),
(183, 'dryhurfhdhdh', NULL, 'md183', 46, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-19 13:45:32', '0', '1'),
(184, 'fghjfj', NULL, 'md184', 46, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 04:52:30', '0', '1'),
(185, 'sdgsfg', NULL, 'md185', 46, NULL, NULL, 1, 346, 'download_(3).jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 05:35:11', '0', '1'),
(186, 'dgh', NULL, 'md186', 46, NULL, NULL, 2, 56, 'download.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 05:36:41', '0', '1'),
(187, 'dfgdfgi', NULL, 'md187', 46, NULL, NULL, 1, 57, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:02:37', '1', '1'),
(188, 'dgfdgf', NULL, 'md188', 46, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:06:05', '0', '1'),
(189, 'dgfdgfp', NULL, 'md189', 46, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:06:14', '0', '1'),
(190, 'dgfdgfpppp', NULL, 'md190', 46, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:06:19', '0', '1'),
(191, 'sdfdsf', NULL, 'md191', 46, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:06:37', '0', '1'),
(192, 'sdfbgfs', NULL, 'md192', 46, NULL, NULL, 1, 345, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:07:37', '0', '1'),
(193, 'bxfvb', NULL, 'md193', 46, NULL, NULL, 2, 0, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:08:45', '0', '1'),
(194, 'asgdzsgf', NULL, 'md194', 46, NULL, NULL, 1, 235, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:11:50', '0', '1'),
(195, 'sdfdsf0', NULL, 'md195', 46, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:14:42', '0', '1'),
(196, 'dfhdf', NULL, 'md196', 46, NULL, NULL, 1, 46, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:16:25', '0', '1'),
(197, 'dfhgdfg1', NULL, 'md197', 46, NULL, NULL, 2, 356, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:17:49', '0', '1'),
(198, 'dsfgfsg', NULL, 'md198', 46, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:19:29', '1', '1'),
(199, 'dsfgfsgi', NULL, 'md199', 46, NULL, NULL, 2, 4353, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:22:00', '0', '1'),
(200, 'dfgdfgv', NULL, 'md200', 47, NULL, NULL, 2, 456, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:25:25', '0', '1'),
(201, 'dfgfg', NULL, 'md201', 47, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:28:02', '0', '1'),
(202, 'dgfhdgf', NULL, 'md202', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:28:33', '0', '1'),
(203, 'dgfhdgfv', NULL, 'md203', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:29:51', '0', '1'),
(204, 'dgfhdgfv0', NULL, 'md204', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:31:07', '0', '1'),
(205, 'dgfhdgfv0v', NULL, 'md205', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:31:48', '0', '1'),
(206, 'dgfhdgfv0vv', NULL, 'md206', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:32:12', '0', '1'),
(207, 'dgfhdgfv0vv0', NULL, 'md207', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:33:08', '0', '1'),
(208, 'dgfhdgfv0vv0v', NULL, 'md208', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:33:45', '0', '1'),
(209, 'dgfhdgfv0vv0vn', NULL, 'md209', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:35:23', '0', '1'),
(210, 'dgfhdgfv0vv0vnc', NULL, 'md210', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', 'admin', '2019-11-20 06:35:45', '0', '1'),
(211, 'new v', '', 'md211', 47, '', NULL, 2, 54, NULL, 2, 2, 2, NULL, 0, NULL, 100, 2558.00, '0', 'admin', '2019-11-20 06:38:39', '0', '1'),
(212, 'dfhdfh', '', 'md212', 47, '', NULL, 7, 0, NULL, 2, 7, 7, NULL, 0, NULL, 100, 9999.99, '0', 'admin', '2019-11-20 06:45:14', '0', '1'),
(213, 'dfghcdgfh', 'sdrfgsfg', 'md213', 47, '67896768989897', 19, 2, 457, 'download_(2).jpg', 3, 2, 1, NULL, 20, NULL, 100, 543.00, '2', 'admin', '2019-11-20 06:48:32', '0', '1'),
(214, 'drstgdfsg', NULL, 'md214', 47, NULL, NULL, 1, 345, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-20 10:08:40', '0', '1'),
(215, 'fthjufg', NULL, 'md215', 47, NULL, NULL, 2, 254, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-20 11:55:04', '0', '1'),
(216, 'dgfd', NULL, 'md216', 47, NULL, NULL, 1, 3456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-20 12:21:32', '0', '1'),
(217, 'fghfghp', NULL, 'md217', 47, NULL, NULL, 1, 345, 'download_(2)3.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-20 12:29:18', '0', '1'),
(218, 'adf', NULL, 'md218', 47, NULL, NULL, 1, 3, 'download_(2)4.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:41:00', '0', '1'),
(219, 'gfjfh', NULL, 'md219', 47, NULL, NULL, 2, 2147483647, 'download_(1).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:41:27', '0', '1'),
(220, 'cfghgf', NULL, 'md220', 47, NULL, NULL, 3, 6, 'download_(4).jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:41:40', '0', '1'),
(221, 'fgh8', NULL, 'md221', 47, NULL, NULL, 3, 346, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:42:14', '1', '1'),
(222, 'dfghdfh', NULL, 'md222', 47, NULL, NULL, 2, 456, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:42:44', '0', '1'),
(223, 'dgfhdgh', NULL, 'md223', 47, NULL, NULL, 1, 234, 'download1.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:51:45', '0', '1'),
(224, 'dfgdfg0', NULL, 'md224', 47, NULL, NULL, 2, 234, 'download_(1)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:53:42', '0', '1'),
(225, 'dfghdfg', NULL, 'md225', 47, NULL, NULL, 1, 345, 'download_(3)4.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:54:50', '0', '1'),
(226, 'dfgdf5', NULL, 'md226', 47, NULL, NULL, 2, 345, 'images_(6).jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 04:56:40', '0', '1'),
(227, 'xdfbgxfg', NULL, 'md227', 47, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 05:09:55', '0', '1'),
(228, 'dfg0', NULL, 'md228', 47, NULL, NULL, 1, 345, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 05:48:18', '0', '1'),
(229, 'sdfdf0', NULL, 'md229', 47, NULL, NULL, 3, 20, NULL, 2, 1, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 08:51:19', '0', '1'),
(230, 'mansdf', NULL, 'md230', 47, NULL, NULL, 3, 50, NULL, 2, 1, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-21 08:58:55', '0', '1'),
(231, 'shirt', NULL, 'md231', 47, NULL, NULL, 1, 235, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 08:28:23', '0', '1'),
(232, 'pant', NULL, 'md232', 47, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 08:33:05', '0', '1'),
(233, 'tshirt', NULL, 'md233', 47, NULL, NULL, 1, 57, 'download_(3)5.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 09:05:08', '0', '1'),
(234, 'dgbc', NULL, 'md234', 47, NULL, NULL, 3, 35, 'download_(4)1.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 11:55:22', '0', '1'),
(235, 'fghuouio', NULL, 'md235', 47, NULL, NULL, 2, 34, '10best-cars-group-cropped-1542126037.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 12:55:23', '0', '1'),
(236, 'fghfgh46', NULL, 'md236', 47, NULL, NULL, 2, 47, '10best-cars-group-cropped-15421260371.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 12:58:19', '0', '1'),
(238, 'fghdgfh', NULL, 'md238', 47, NULL, NULL, 2, 36, 'download_(4)2.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 13:04:06', '0', '1'),
(239, 'xxfbgxg', NULL, 'md239', 47, NULL, NULL, 1, 235, 'download_(4)3.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-23 13:05:32', '0', '1'),
(240, 'frtyrty', NULL, 'md240', 47, NULL, NULL, 2, 345, 'photo-1535498730771-e735b998cd64.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-25 03:51:46', '0', '1'),
(241, 'fhfghytgj66', NULL, 'md241', 47, NULL, NULL, 2, 345, 'photo-1535498730771-e735b998cd641.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-25 03:52:28', '0', '1'),
(242, 'mobile phone', NULL, 'md242', 47, NULL, NULL, 3, 50, 'download_(3)7.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-25 05:23:46', '0', '1'),
(243, 'jeanss', NULL, 'md243', 47, NULL, NULL, 1, 234, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-26 12:03:38', '0', '1'),
(244, 'computer', NULL, 'md244', 47, NULL, NULL, 2, 234, 'product-default.png', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 06:16:19', '0', '1'),
(245, 'tv', 'fghg', 'md245', 47, '346', 19, 1, 456, 'download_(3)8.jpg', 2, 2, 3, NULL, 45, NULL, 457, 56.00, '0', '1', '2019-11-29 06:25:25', '0', '1'),
(246, 'phone', 'w45r', 'md246', 47, '456', 17, 1, 345, 'images_(6)1.jpg', 2, 3, 2, NULL, 56, NULL, 6786, 78.00, '0', '1', '2019-11-29 06:28:31', '0', '1'),
(247, 'car', NULL, 'md247', 47, NULL, NULL, 2, 34, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 08:57:00', '0', '1'),
(248, 'jeep', NULL, 'md248', 47, NULL, NULL, 2, 34, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 08:58:05', '0', '1'),
(249, 'toy', NULL, 'md249', 47, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 09:12:24', '0', '1'),
(250, 'icecream', NULL, 'md250', 48, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 09:13:18', '0', '1'),
(251, 'lemon', NULL, 'md251', 48, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 09:13:40', '0', '1'),
(252, 'ice', NULL, 'md252', 48, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 09:15:27', '0', '1'),
(253, 'phone nokia', NULL, 'md253', 48, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 09:17:46', '0', '1'),
(254, 'book', NULL, 'md254', 48, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:50:03', '0', '1'),
(255, 'pen', NULL, 'md255', 48, NULL, NULL, 1, 234, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:51:06', '0', '1'),
(256, 'car1', NULL, 'md256', 48, NULL, NULL, 1, 36, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:52:38', '0', '1'),
(257, 'pen2', NULL, 'md257', 48, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:54:02', '0', '1'),
(258, 'pen3', NULL, 'md258', 48, NULL, NULL, 2, 235, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:55:06', '0', '1'),
(259, 'phone1', NULL, 'md259', 48, NULL, NULL, 3, 456, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:56:18', '0', '1'),
(260, 'dfg4567', NULL, 'md260', 48, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:57:48', '0', '1'),
(261, 'dg7', NULL, 'md261', 48, NULL, NULL, 3, 678, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 11:58:57', '0', '1'),
(262, 'gfy6r57', NULL, 'md262', 48, NULL, NULL, 7, 6986, NULL, 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:01:21', '0', '1'),
(263, 'gh708', NULL, 'md263', 48, NULL, NULL, 2, 789, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:02:56', '0', '1'),
(264, 'hjkh90897', NULL, 'md264', 48, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:05:24', '1', '1'),
(265, '464grt', NULL, 'md265', 48, NULL, NULL, 3, 567, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:06:07', '0', '1'),
(266, 'xdfv234d', NULL, 'md266', 48, NULL, NULL, 3, 567, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:07:51', '0', '1'),
(267, 'vghfg67', NULL, 'md267', 48, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:12:29', '0', '1'),
(268, 'sdfgfs', NULL, 'md268', 48, NULL, NULL, 3, 56, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:14:38', '0', '1'),
(269, 'ert45', NULL, 'md269', 48, NULL, NULL, 2, 356, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:15:29', '0', '1'),
(270, 'gbcvb45', NULL, 'md270', 48, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:17:30', '0', '1'),
(271, 'ghdh546', NULL, 'md271', 48, NULL, NULL, 2, 456, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:18:05', '0', '1'),
(272, 'dfgdg353453', NULL, 'md272', 48, NULL, NULL, 2, 235, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:18:52', '0', '1'),
(273, 'fghcg', NULL, 'md273', 48, NULL, NULL, 3, 456, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:22:21', '0', '1'),
(274, 'dsfg565', NULL, 'md274', 48, NULL, NULL, 2, 546, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:25:33', '0', '1'),
(275, 'cfghdt', NULL, 'md275', 48, NULL, NULL, 2, 346, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:26:15', '0', '1'),
(276, 'gbhgfh5685', NULL, 'md276', 48, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:26:43', '0', '1'),
(277, 'dfge4', NULL, 'md277', 48, NULL, NULL, 7, 345, NULL, 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:27:24', '0', '1'),
(278, 'fgh567', NULL, 'md278', 48, NULL, NULL, 2, 567, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:29:04', '0', '1'),
(279, 'rfs23', NULL, 'md279', 48, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:30:16', '0', '1'),
(280, 'dfgdf678678', NULL, 'md280', 49, NULL, NULL, 1, 456, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:36:04', '0', '1'),
(281, 'fg76', NULL, 'md281', 49, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:50:02', '0', '1'),
(282, 'fgch7', NULL, 'md282', 49, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:53:19', '0', '1'),
(283, 'sdfcvcv34', NULL, 'md283', 49, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:55:03', '0', '1'),
(284, 'ddddddd', NULL, 'md284', 49, NULL, NULL, 3, 78, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:55:59', '0', '1'),
(285, 'sdgf44', NULL, 'md285', 49, NULL, NULL, 2, 34, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:58:21', '0', '1'),
(286, 'cgh5', NULL, 'md286', 49, NULL, NULL, 7, 67, NULL, 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 12:59:30', '0', '1'),
(287, 'xfg23', NULL, 'md287', 49, NULL, NULL, 3, 9, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:00:02', '0', '1'),
(288, 'cgvbngf5675', NULL, 'md288', 49, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:03:41', '0', '1'),
(289, 'dft56f', NULL, 'md289', 49, NULL, NULL, 2, 5, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:07:25', '0', '1'),
(290, 'cfg345', NULL, 'md290', 49, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:10:21', '0', '1'),
(291, 'ftghdfg345', NULL, 'md291', 49, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:11:44', '0', '1'),
(292, 'xdft456', NULL, 'md292', 49, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:15:02', '0', '1'),
(293, 'dfg34', NULL, 'md293', 49, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:16:46', '0', '1'),
(294, 'xbv4', NULL, 'md294', 49, NULL, NULL, 2, 5, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:19:53', '0', '1'),
(295, 'xdftg45', NULL, 'md295', 49, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:24:32', '0', '1'),
(296, 'sdfg567', NULL, 'md296', 49, NULL, NULL, 1, 678, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:26:25', '0', '1'),
(297, 'fgdfg565', NULL, 'md297', 49, NULL, NULL, 3, 7, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-29 13:26:47', '0', '1'),
(298, 'dfg5tg', NULL, 'md298', 49, NULL, NULL, 2, 45, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 03:58:55', '0', '1'),
(299, 'cvcd45', NULL, 'md299', 49, NULL, NULL, 2, 678, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 04:40:34', '0', '1'),
(300, 'dg567', NULL, 'md300', 49, NULL, NULL, 1, 567, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 05:54:27', '0', '1'),
(301, 'xdftge4', NULL, 'md301', 49, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 05:55:50', '0', '1'),
(302, 'cfg54g', NULL, 'md302', 49, NULL, NULL, 2, 657, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 05:57:38', '0', '1'),
(303, 'cdfb88', NULL, 'md303', 49, NULL, NULL, 1, 8, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 05:59:49', '0', '1'),
(304, 'zx34d', NULL, 'md304', 49, NULL, NULL, 3, 67, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:00:25', '0', '1'),
(305, 'cfg54gf', NULL, 'md305', 49, NULL, NULL, 1, 6, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:01:35', '0', '1'),
(306, 'cfg54', NULL, 'md306', 49, NULL, NULL, 2, 14, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:02:45', '0', '1'),
(307, 'xcvb4', NULL, 'md307', 49, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:06:22', '0', '1'),
(308, 'cvb56', NULL, 'md308', 49, NULL, NULL, 1, 3, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:06:48', '0', '1'),
(309, 'cdfgh7', NULL, 'md309', 49, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:09:06', '0', '1'),
(310, 'drtg', NULL, 'md310', 50, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:09:46', '0', '1'),
(311, 'ftyt67', NULL, 'md311', 50, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:10:39', '0', '1'),
(312, 'ftyt677', NULL, 'md312', 50, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:11:08', '0', '1'),
(313, 'fgh7y', NULL, 'md313', 50, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:14:08', '0', '1'),
(314, 'xdf45', NULL, 'md314', 50, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:22:13', '0', '1'),
(315, 'dfxsg', NULL, 'md315', 50, NULL, NULL, 1, 56, 'download_(3)9.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:50:56', '0', '1'),
(316, 'sdf4r', NULL, 'md316', 50, NULL, NULL, 3, 89, 'download_(2)6.jpg', 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:51:28', '0', '1'),
(317, 'dsfg6y', NULL, 'md317', 50, NULL, NULL, 1, 45, 'download_(2)7.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:53:42', '0', '1'),
(318, 'xd4r', NULL, 'md318', 50, NULL, NULL, 1, 34, 'download_(1)2.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 06:55:57', '0', '1'),
(319, 'dfg45dsf', NULL, 'md319', 50, NULL, NULL, 1, 67, 'download_(3)10.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:02:00', '0', '1'),
(320, 'xsdf@d', NULL, 'md320', 50, NULL, NULL, 1, 34, 'download_(1)3.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:04:24', '0', '1'),
(321, 'df56', NULL, 'md321', 50, NULL, NULL, 2, 35, 'download_(1)4.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:05:44', '0', '1'),
(322, 'dfg55', NULL, 'md322', 50, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:09:36', '0', '1'),
(323, 'xdsfdsf', NULL, 'md323', 50, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:10:22', '0', '1'),
(324, 'xdg354', NULL, 'md324', 50, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:12:32', '0', '1'),
(325, 'sdff', NULL, 'md325', 50, NULL, NULL, 2, 66, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:16:22', '0', '1'),
(326, 'xdgf56', NULL, 'md326', 50, NULL, NULL, 2, 4, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:16:40', '0', '1'),
(327, 'xdfgv6', NULL, 'md327', 50, NULL, NULL, 1, 78, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:18:47', '0', '1'),
(328, 'xxsdfds', NULL, 'md328', 50, NULL, NULL, 2, 45, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:19:45', '0', '1'),
(329, 'df546', NULL, 'md329', 50, NULL, NULL, 1, 78, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:21:21', '0', '1'),
(330, 'dfg89', NULL, 'md330', 51, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:24:19', '0', '1'),
(331, 'zdf55', NULL, 'md331', 51, NULL, NULL, 2, 90, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:28:10', '0', '1'),
(332, 'zdf565', NULL, 'md332', 51, NULL, NULL, 1, 89, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:28:44', '0', '1'),
(333, 'dsaf34f', NULL, 'md333', 51, NULL, NULL, 2, 89, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-11-30 07:29:21', '0', '1'),
(334, 'xdfg56546', NULL, 'md334', 51, NULL, NULL, 2, 345, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 09:56:54', '0', '1'),
(335, 'gfdgf', NULL, 'md335', 51, NULL, NULL, 2, 67, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 09:57:37', '1', '1'),
(336, 'xdfg12', NULL, 'md336', 51, NULL, NULL, 1, 89, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 09:59:41', '0', '1'),
(341, 'cdfghd45gf', NULL, 'md341', 51, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 10:14:09', '0', '1'),
(342, 'sdfd4rxc', NULL, 'md342', 51, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:20:16', '0', '1'),
(343, 'sdf7h', NULL, 'md343', 51, NULL, NULL, 1, 5, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:24:33', '0', '1'),
(344, 'xdsf5t', NULL, 'md344', 51, NULL, NULL, 2, 34, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:26:52', '0', '1'),
(345, 'dsr4', NULL, 'md345', 51, NULL, NULL, 1, 34, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:29:45', '0', '1'),
(346, 'zdfg5t', NULL, 'md346', 51, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:33:30', '0', '1'),
(347, 'fcg5t', NULL, 'md347', 51, NULL, NULL, 1, 4, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:43:05', '0', '1'),
(348, 'cfbh7j', NULL, 'md348', 51, NULL, NULL, 1, 5, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 11:43:24', '0', '1'),
(349, 'sdf4rdfw', NULL, 'md349', 51, NULL, NULL, 2, 56, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 12:17:13', '0', '1'),
(350, 'dfgh', NULL, 'md350', 52, NULL, NULL, 1, 6, 'storyblocks-sunset-over-rocky-sea-coast_H8ogAvuyf_thumb.jpg', 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 12:19:54', '0', '1'),
(355, 'sdfg', NULL, 'md355', 52, NULL, NULL, 1, 45, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:09:38', '0', '1'),
(356, 'xcdv45', NULL, 'md356', 52, NULL, NULL, 2, 45, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:10:09', '0', '1'),
(357, 'dsf44', NULL, 'md357', 52, NULL, NULL, 3, 67, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:11:04', '0', '1'),
(358, 'zxd5f', NULL, 'md358', 52, NULL, NULL, 7, 7, NULL, 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:15:25', '0', '1'),
(359, 'xtf', NULL, 'md359', 52, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:16:28', '0', '1'),
(360, 'd5g', NULL, 'md360', 52, NULL, NULL, 1, 6, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:20:21', '0', '1'),
(361, 'cf5tf', NULL, 'md361', 52, NULL, NULL, 3, 67, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:20:55', '0', '1'),
(362, 'dgfh6g', NULL, 'md362', 52, NULL, NULL, 2, 68, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:23:34', '0', '1'),
(363, 'xfg56', NULL, 'md363', 52, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:24:09', '0', '1'),
(364, 'dfg565c', NULL, 'md364', 52, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:25:23', '0', '1'),
(365, 'vfgh565', NULL, 'md365', 52, NULL, NULL, 1, 78, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:28:10', '0', '1'),
(366, 'cv6h', NULL, 'md366', 52, NULL, NULL, 1, 89, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-03 13:28:39', '0', '1'),
(367, 'dfg6t6', NULL, 'md367', 52, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:35:33', '0', '1'),
(368, 'cfg5t', NULL, 'md368', 52, NULL, NULL, 1, 78, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:36:21', '0', '1'),
(369, 'df', NULL, 'md369', 52, NULL, NULL, 7, 45, NULL, 2, 7, 7, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:36:50', '0', '1'),
(370, 'sdfg5r', NULL, 'md370', 52, NULL, NULL, 1, 56, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:38:24', '0', '1'),
(371, 'xdfg5rt', NULL, 'md371', 52, NULL, NULL, 2, 78, NULL, 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:38:44', '0', '1'),
(372, 'xv5gf', NULL, 'md372', 52, NULL, NULL, 3, 778, NULL, 2, 3, 3, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 03:39:47', '0', '1'),
(373, 'xdfg6ytg', NULL, 'md373', 52, NULL, NULL, 1, 67, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 04:10:43', '0', '1'),
(374, 'xdf5gf', NULL, 'md374', 52, NULL, NULL, 1, 7, NULL, 2, 1, 1, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-04 04:41:08', '0', '1'),
(375, 'dfg56b5', NULL, 'md375', 52, NULL, NULL, 2, 6, 'images_(3)1.jpg', 2, 2, 2, NULL, 0, NULL, 100, NULL, '0', '1', '2019-12-05 06:16:49', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_addons`
--

CREATE TABLE `aip_product_addons` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_2` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_brand`
--

CREATE TABLE `aip_product_brand` (
  `id` int(11) NOT NULL,
  `brandname1` varchar(20) NOT NULL,
  `brandname2` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_brand`
--

INSERT INTO `aip_product_brand` (`id`, `brandname1`, `brandname2`, `image`) VALUES
(15, 'brand2', 'xfbxb', 'brand_image_edit_EHsVLTf2gPkAbw3.png'),
(16, 'xfgf', 'dsfgdf', 'brand_image_edit_lgBqaYPxtAnyUD9.png'),
(17, 'bvhj', 'df', 'brand_image_edit_Rj2XVrzhoId1p5M.png'),
(18, 'sdg', 'sdg', 'brand_image_SIHPoY3xMRyf5hg.png'),
(19, 'brand new', 'dzsf', 'brand_image_ExHqneAZL8FKdg0.png'),
(20, 'sdfg', 'sdgsg', 'brand_image_QptNcUm2MrCFAJZ.png'),
(21, 'newd', 'fdgs', 'brand_image_XRqEJ1tcxBh8ua5.png'),
(23, 'one', 'dfg', 'brand_image_edit_IStTKq7GrkjcZRx.png'),
(24, 'dfgh', 'fh', 'brand_image_f2z1ku9EZ6H3hCv.png'),
(25, 'dfg', 'dfh', 'brand_image_e14muPiBDhWyTo3.png'),
(26, 'fh', 'fh', 'brand_image_o1Sz2M4EiqjQsLt.png'),
(27, 'nwe bb', 'dfsg', 'brand_image_XdQgz71WCRDh9LG.png'),
(28, 'new bcc', 'cdfhdfg', 'brand_image_edit_7dUksR6rDTYaQlz.png');

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_category`
--

CREATE TABLE `aip_product_category` (
  `id` int(11) NOT NULL,
  `category_name1` varchar(20) NOT NULL,
  `category_name2` varchar(20) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `background_color` varchar(50) NOT NULL,
  `show_on_pos` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_category`
--

INSERT INTO `aip_product_category` (`id`, `category_name1`, `category_name2`, `parent_category_id`, `image`, `icon`, `background_color`, `show_on_pos`, `status`) VALUES
(42, 'Break Fast', '???? ?????', 0, 'category_image_GfFMpaX5c8lo27V.png', 'fa-arrow-right', '#FF99CC', '1', '1'),
(43, 'Fresh Juice', '', 0, 'category_image_Pmz9gQHw1UiFcZj.png', 'fa-arrow-circle-right', '', '1', '1'),
(44, 'Dessert', '', 0, '', 'fa-birthday-cake', '#336633', '1', '1'),
(45, 'Cool Drinks', '', 0, 'category_image_c1iaxQD645MtVXo.png', '', '', '1', '1'),
(46, 'Hot Drinks', '', 0, 'category_image_QYfU5zaIlbAynWu.png', 'fa-heart', '#663366', '1', '1'),
(47, 'Meals', '', 0, 'category_image_6blr8uqkpx1s09w.png', '', '', '1', '1'),
(48, 'Dinner', '', 51, 'category_image_zMjbZSso3g2fHan.png', '', '', '1', '1'),
(49, 'Tea Snacks', '', 50, 'category_image_NzduY5XtSxpTGMk.png', '', '', '1', '1'),
(50, 'Sweets', '', 52, 'category_image_IFfhDmBzZY8PJNS.png', 'fa-forumbee', '#CCFFff', '1', '1'),
(51, 'Lunch', '', 52, 'category_image_nrgKxQEIdJMp2lW.png', 'fa-bathtub', '#99CCFF', '1', '1'),
(52, 'Ice Creams', '', 40, 'category_image_QZljIxWOznKY9uy.png', '', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_kit`
--

CREATE TABLE `aip_product_kit` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text,
  `branch_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_kit`
--

INSERT INTO `aip_product_kit` (`id`, `name`, `description`, `branch_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'edrft', 'srgfs', 0, '0', '2019-10-31 08:35:36', '0000-00-00 00:00:00'),
(2, 'srgf', 'sdregf', 0, '0', '2019-11-05 09:03:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_kit_products`
--

CREATE TABLE `aip_product_kit_products` (
  `id` int(11) NOT NULL,
  `kit_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_kit_products`
--

INSERT INTO `aip_product_kit_products` (`id`, `kit_id`, `product_id`, `quantity`) VALUES
(1, 1, 2, 1),
(2, 1, 5, 1),
(3, 2, 3, 3),
(4, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_otherdescription`
--

CREATE TABLE `aip_product_otherdescription` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `amount` float NOT NULL,
  `extratime` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_otherdescription`
--

INSERT INTO `aip_product_otherdescription` (`id`, `branch_id`, `product_id`, `description`, `amount`, `extratime`, `created_user`, `created_datetime`, `status`) VALUES
(1, 1, 155, 'www', 1, 1, 1, '2020-01-09 14:17:33', 1),
(2, 1, 155, 'eee', 1, 0, 1, '2020-01-09 14:17:33', 1),
(3, 1, 155, 'fff', 2, 0, 1, '2020-01-09 14:17:33', 1),
(4, 1, 156, 'aaa', 2, 1, 1, '2020-01-09 14:17:33', 1),
(5, 1, 156, 'bbb', 2, 0, 1, '2020-01-09 14:17:33', 1),
(6, 1, 156, 'ccc', 2, 0, 1, '2020-01-09 14:17:33', 1),
(7, 1, 165, 'new one', 2, 1, 1, '2020-01-09 14:20:50', 1),
(8, 1, 165, 'last one', 2, 0, 1, '2020-01-09 14:20:50', 1),
(9, 1, 155, 'ADD SALT', 2, 1, 1, '2020-01-13 14:27:05', 1),
(10, 1, 155, 'LESS PEPPER', 1, 0, 1, '2020-01-13 14:27:05', 1),
(11, 1, 159, 'newww', 2, 1, 1, '2020-01-17 16:02:37', 1),
(12, 1, 159, 'another one', 1, 0, 1, '2020-01-17 16:02:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_stock`
--

CREATE TABLE `aip_product_stock` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `stock` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_type`
--

CREATE TABLE `aip_product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_type`
--

INSERT INTO `aip_product_type` (`id`, `name`) VALUES
(1, 'Non Stock'),
(2, 'Stock'),
(3, 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `aip_product_unit`
--

CREATE TABLE `aip_product_unit` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `eq_to_base` float NOT NULL COMMENT 'Stock equivalent in base unit (1 CAR - 4 EA)',
  `sale_price` decimal(19,2) NOT NULL,
  `minimum_sale_rate` float DEFAULT NULL,
  `mrp` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_product_unit`
--

INSERT INTO `aip_product_unit` (`id`, `product_id`, `barcode`, `unit_id`, `eq_to_base`, `sale_price`, `minimum_sale_rate`, `mrp`) VALUES
(1, 154, '1', 2, 356, '456.00', NULL, NULL),
(2, 155, '2', 3, 200, '200.00', NULL, NULL),
(3, 156, '3', 2, 6, '123.00', NULL, NULL),
(4, 157, '4', 2, 345, '36.00', NULL, NULL),
(5, 158, '5', 2, 33456, '235.00', NULL, NULL),
(6, 159, '6', 1, 456, '45.00', NULL, NULL),
(7, 160, '7', 2, 5, '346.00', NULL, NULL),
(8, 161, '8', 2, 345, '546.00', NULL, NULL),
(9, 162, '9', 1, 34, '5.00', NULL, NULL),
(10, 163, '10', 1, 34, '67.00', NULL, NULL),
(11, 164, '11', 1, 1, '22.00', NULL, NULL),
(12, 165, '12', 1, 99, '56.00', NULL, NULL),
(13, 166, '13', 1, 34, '456.00', NULL, NULL),
(14, 167, '14', 2, 33, '46.00', NULL, NULL),
(15, 168, '15', 1, 234, '35.00', NULL, NULL),
(16, 169, '16', 2, 34, '346.00', NULL, NULL),
(17, 170, '17', 2, 45, '7.00', NULL, NULL),
(18, 171, '18', 1, 456, '568.00', NULL, NULL),
(19, 172, '19', 1, 345, '36.00', NULL, NULL),
(20, 173, '20', 2, 345, '56.00', NULL, NULL),
(21, 174, '21', 1, 5, '457.00', NULL, NULL),
(22, 175, '22', 1, 5, '457.00', NULL, NULL),
(23, 176, '23', 1, 45, '346.00', NULL, NULL),
(24, 177, '24', 2, 54, '567.00', NULL, NULL),
(25, 178, '25', 1, 345, '453.00', NULL, NULL),
(26, 179, '26', 2, 567, '678.00', NULL, NULL),
(27, 180, '27', 2, 345, '467.00', NULL, NULL),
(28, 181, '28', 2, 46, '47.00', NULL, NULL),
(29, 182, '29', 2, 678, '789.00', NULL, NULL),
(30, 183, '30', 1, 56, '457.00', NULL, NULL),
(31, 184, '31', 1, 56, '456.00', NULL, NULL),
(32, 185, '32', 1, 346, '0.00', NULL, NULL),
(33, 186, '33', 2, 56, '47.00', NULL, NULL),
(34, 187, '34', 1, 57, '58.00', NULL, NULL),
(35, 188, '35', 2, 567, '567.00', NULL, NULL),
(36, 189, '36', 2, 567, '567.00', NULL, NULL),
(37, 190, '37', 2, 567, '567.00', NULL, NULL),
(38, 191, '38', 1, 45, '0.00', NULL, NULL),
(39, 192, '39', 1, 345, '35.00', NULL, NULL),
(40, 193, '40', 2, 0, '47.00', NULL, NULL),
(41, 194, '41', 1, 235, '364.00', NULL, NULL),
(42, 195, '42', 2, 345, '0.00', NULL, NULL),
(43, 196, '43', 1, 46, '0.00', NULL, NULL),
(44, 197, '44', 2, 356, '346.00', NULL, NULL),
(45, 198, '45', 2, 345, '0.00', NULL, NULL),
(46, 199, '46', 2, 4353, '0.00', NULL, NULL),
(47, 200, '47', 2, 456, '0.00', NULL, NULL),
(48, 201, '48', 1, 456, '0.00', NULL, NULL),
(49, 202, '49', 2, 345, '345.00', NULL, NULL),
(50, 203, '50', 2, 345, '345.00', NULL, NULL),
(51, 204, '51', 2, 345, '345.00', NULL, NULL),
(52, 205, '52', 2, 345, '345.00', NULL, NULL),
(53, 206, '53', 2, 345, '345.00', NULL, NULL),
(54, 207, '54', 2, 345, '345.00', NULL, NULL),
(55, 208, '55', 2, 345, '345.00', NULL, NULL),
(56, 209, '56', 2, 345, '345.00', NULL, NULL),
(57, 210, '57', 2, 345, '345.00', NULL, NULL),
(58, 211, '58', 2, 54, '346.00', NULL, NULL),
(59, 212, '59', 7, 0, '0.00', NULL, NULL),
(60, 213, '60', 2, 457, '0.00', NULL, NULL),
(61, 214, '61', 1, 345, '346.00', NULL, NULL),
(62, 215, '62', 2, 254, '0.00', NULL, NULL),
(63, 216, '63', 1, 3456, '0.00', NULL, NULL),
(64, 217, '64', 1, 345, '0.00', NULL, NULL),
(65, 218, '65', 1, 3, '0.00', NULL, NULL),
(66, 219, '66', 2, 3.40282e38, '457.00', NULL, NULL),
(67, 220, '67', 3, 6, '457.00', NULL, NULL),
(68, 221, '68', 3, 346, '0.00', NULL, NULL),
(69, 222, '69', 2, 456, '457.00', NULL, NULL),
(70, 223, '70', 1, 234, '0.00', NULL, NULL),
(71, 224, '71', 2, 234, '0.00', NULL, NULL),
(72, 225, '72', 1, 345, '0.00', NULL, NULL),
(73, 226, '73', 2, 345, '0.00', NULL, NULL),
(74, 227, '74', 2, 345, '0.00', NULL, NULL),
(75, 228, '75', 1, 345, '200.00', NULL, NULL),
(76, 225, '76', 1, 345, '0.00', NULL, NULL),
(78, 229, '78', 1, 20, '0.00', NULL, NULL),
(80, 230, '80', 3, 50, '50.00', NULL, NULL),
(83, 230, '83', 1, 0.02, '200.00', NULL, NULL),
(84, 231, '84', 1, 235, '364.00', NULL, NULL),
(85, 232, '85', 1, 67, '124.00', NULL, NULL),
(86, 233, '86', 1, 57, '754.00', NULL, NULL),
(87, 234, '87', 3, 35, '346.00', NULL, NULL),
(88, 235, '88', 2, 34, '346.00', NULL, NULL),
(89, 236, '89', 2, 47, '0.00', NULL, NULL),
(90, 237, '90', 2, 345, '345.00', NULL, NULL),
(91, 238, '91', 2, 36, '0.00', NULL, NULL),
(92, 239, '92', 1, 235, '363.00', NULL, NULL),
(93, 240, '93', 2, 345, '346.00', NULL, NULL),
(94, 241, '94', 2, 345, '36.00', NULL, NULL),
(96, 242, '96', 3, 50, '676.00', NULL, NULL),
(117, 243, '117', 1, 234, '0.00', NULL, NULL),
(118, 244, '118', 2, 234, '786.00', NULL, NULL),
(119, 244, '119', 1, 0.175, '52.00', NULL, NULL),
(120, 245, '120', 1, 456, '54.00', NULL, NULL),
(121, 246, '121', 1, 345, '67.00', NULL, NULL),
(122, 247, '122', 2, 34, '345.00', NULL, NULL),
(123, 248, '123', 2, 34, '345.00', NULL, NULL),
(124, 249, '124', 1, 56, '57.00', NULL, NULL),
(125, 250, '125', 1, 456, '457.00', NULL, NULL),
(126, 251, '126', 2, 345, '346.00', NULL, NULL),
(127, 252, '127', 2, 67, '0.00', NULL, NULL),
(128, 253, '128', 1, 45, '346.00', NULL, NULL),
(129, 273, '129', 3, 456, '0.00', NULL, NULL),
(130, 279, '130', 2, 345, '0.00', NULL, NULL),
(131, 280, '131', 1, 456, '0.00', NULL, NULL),
(134, 287, '134', 3, 9, '0.00', NULL, NULL),
(135, 288, '135', 2, 67, '89.00', NULL, NULL),
(136, 289, '136', 2, 5, '67.00', NULL, NULL),
(137, 290, '137', 2, 78, '786.00', NULL, NULL),
(138, 291, '138', 2, 67, '678.00', NULL, NULL),
(139, 292, '139', 2, 78, '678.00', NULL, NULL),
(140, 293, '140', 1, 45, '567.00', NULL, NULL),
(141, 294, '141', 2, 5, '785.00', NULL, NULL),
(142, 295, '142', 2, 56, '546.00', NULL, NULL),
(143, 296, '143', 1, 678, '78.00', NULL, NULL),
(144, 297, '144', 3, 7, '678.00', NULL, NULL),
(145, 298, '145', 2, 45, '79.00', NULL, NULL),
(146, 298, '146', 1, 1.511, '689.00', NULL, NULL),
(147, 299, '147', 2, 678, '799.00', NULL, NULL),
(148, 300, '148', 1, 567, '65.00', NULL, NULL),
(149, 301, '149', 1, 56, '557.00', NULL, NULL),
(150, 302, '150', 2, 657, '0.00', NULL, NULL),
(151, 303, '151', 1, 8, '89.00', NULL, NULL),
(152, 304, '152', 3, 67, '69.00', NULL, NULL),
(153, 305, '153', 1, 6, '65.00', NULL, NULL),
(154, 306, '154', 2, 14, '52.00', NULL, NULL),
(155, 307, '155', 2, 56, '56.00', NULL, NULL),
(156, 308, '156', 1, 3, '354.00', NULL, NULL),
(157, 309, '157', 2, 56, '67.00', NULL, NULL),
(158, 310, '158', 1, 67, '879.00', NULL, NULL),
(159, 311, '159', 1, 67, '87.00', NULL, NULL),
(160, 312, '160', 1, 67, '87.00', NULL, NULL),
(161, 313, '161', 2, 56, '46.00', NULL, NULL),
(162, 314, '162', 2, 67, '34.00', NULL, NULL),
(163, 315, '163', 1, 56, '68.00', NULL, NULL),
(164, 316, '164', 3, 89, '99.00', NULL, NULL),
(165, 317, '165', 1, 45, '57.00', NULL, NULL),
(166, 318, '166', 1, 34, '46.00', NULL, NULL),
(167, 319, '167', 1, 67, '89.00', NULL, NULL),
(168, 320, '168', 1, 34, '255.00', NULL, NULL),
(169, 321, '169', 2, 35, '44.00', NULL, NULL),
(170, 322, '170', 1, 45, '67.00', NULL, NULL),
(171, 323, '171', 1, 67, '89.00', NULL, NULL),
(172, 324, '172', 2, 78, '90.00', NULL, NULL),
(173, 325, '173', 2, 66, '89.00', NULL, NULL),
(174, 326, '174', 2, 4, '46.00', NULL, NULL),
(175, 327, '175', 1, 78, '9.00', NULL, NULL),
(176, 328, '176', 2, 45, '0.00', NULL, NULL),
(177, 329, '177', 1, 78, '99.00', NULL, NULL),
(188, 340, '188', 1, 3, '545.00', NULL, NULL),
(189, 341, '189', 1, 45, '45.00', NULL, NULL),
(190, 342, '190', 2, 56, '77.00', NULL, NULL),
(191, 342, '191', 1, 0.804, '454.00', NULL, NULL),
(192, 343, '192', 1, 5, '45.00', NULL, NULL),
(193, 344, '193', 2, 34, '456.00', NULL, NULL),
(194, 345, '194', 1, 34, '34.00', NULL, NULL),
(195, 346, '195', 1, 56, '78.00', NULL, NULL),
(196, 347, '196', 1, 4, '46.00', NULL, NULL),
(197, 348, '197', 1, 5, '56.00', NULL, NULL),
(198, 349, '198', 2, 56, '67.00', NULL, NULL),
(199, 350, '199', 1, 6, '68.00', NULL, NULL),
(204, 355, '204', 1, 45, '454.00', NULL, NULL),
(205, 356, '205', 2, 45, '6.00', NULL, NULL),
(206, 357, '206', 3, 67, '78.00', NULL, NULL),
(207, 358, '207', 7, 7, '9.00', NULL, NULL),
(208, 359, '208', 2, 78, '79.00', NULL, NULL),
(209, 360, '209', 1, 6, '78.00', NULL, NULL),
(210, 361, '210', 3, 67, '67.00', NULL, NULL),
(211, 362, '211', 2, 68, '89.00', NULL, NULL),
(212, 363, '212', 1, 67, '67.00', NULL, NULL),
(213, 364, '213', 2, 78, '89.00', NULL, NULL),
(214, 365, '214', 1, 78, '89.00', NULL, NULL),
(215, 366, '215', 1, 89, '90.00', NULL, NULL),
(216, 367, '216', 1, 56, '67.00', NULL, NULL),
(217, 368, '217', 1, 78, '8.00', NULL, NULL),
(218, 369, '218', 7, 45, '46.00', NULL, NULL),
(219, 370, '219', 1, 56, '56.00', NULL, NULL),
(220, 371, '220', 2, 78, '98.00', NULL, NULL),
(221, 372, '221', 3, 778, '89.00', NULL, NULL),
(222, 373, '222', 1, 67, '67.00', NULL, NULL),
(223, 374, '223', 1, 7, '567.00', NULL, NULL),
(224, 375, '224', 2, 6, '68.00', NULL, NULL),
(225, 306, '1154', 1, 0.357, '100.00', NULL, NULL),
(226, 306, '2154', 3, 0.143, '125.00', NULL, NULL),
(227, 19, '1111', 3, 0.022, '10.00', NULL, NULL),
(228, 154, '1000000', 1, 0.006, '100.00', NULL, NULL),
(229, 154, '100001', 3, 0.034, '125.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aip_purchase_documents`
--

CREATE TABLE `aip_purchase_documents` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_purchase_history`
--

CREATE TABLE `aip_purchase_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `purchase_quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_invoice_number` varchar(200) NOT NULL,
  `purchase_invoice_date` date NOT NULL,
  `purchase_amount` int(11) NOT NULL,
  `bill_type` enum('0','1') NOT NULL COMMENT '0 = cash, 1 = credit',
  `credit_not_amount` int(11) NOT NULL,
  `credit_not_remark` text NOT NULL,
  `credit_note_attachment` varchar(255) DEFAULT NULL,
  `comments` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_purchase_tax_to_product`
--

CREATE TABLE `aip_purchase_tax_to_product` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_purchase_tax_to_product`
--

INSERT INTO `aip_purchase_tax_to_product` (`id`, `branch_id`, `tax_id`, `product_id`, `created_user`, `created_time`) VALUES
(1, 1, 1, 159, '1', '2019-12-16 11:01:08'),
(2, 1, 1, 160, '1', '2019-12-16 11:01:08'),
(3, 1, 1, 161, '1', '2019-12-16 11:01:08'),
(4, 1, 1, 162, '1', '2019-12-16 11:01:08'),
(5, 1, 1, 163, '1', '2019-12-16 11:01:08'),
(6, 1, 1, 164, '1', '2019-12-16 11:01:08'),
(7, 1, 1, 165, '1', '2019-12-16 11:01:08'),
(8, 1, 1, 166, '1', '2019-12-16 11:01:08'),
(9, 1, 1, 167, '1', '2019-12-16 11:01:08'),
(10, 1, 1, 168, '1', '2019-12-16 11:01:08'),
(11, 1, 1, 169, '1', '2019-12-16 11:01:08'),
(12, 1, 1, 170, '1', '2019-12-16 11:01:08'),
(13, 1, 1, 171, '1', '2019-12-16 11:01:08'),
(14, 1, 1, 172, '1', '2019-12-16 11:01:08'),
(15, 1, 1, 173, '1', '2019-12-16 11:01:08'),
(16, 1, 1, 174, '1', '2019-12-16 11:01:08'),
(17, 1, 1, 176, '1', '2019-12-16 11:01:08'),
(18, 1, 1, 177, '1', '2019-12-16 11:01:08'),
(19, 1, 1, 178, '1', '2019-12-16 11:01:08'),
(20, 1, 1, 179, '1', '2019-12-16 11:01:08'),
(21, 1, 1, 180, '1', '2019-12-16 11:01:08'),
(22, 1, 1, 181, '1', '2019-12-16 11:01:08'),
(23, 1, 1, 182, '1', '2019-12-16 11:01:08'),
(24, 1, 1, 183, '1', '2019-12-16 11:01:08'),
(25, 1, 1, 184, '1', '2019-12-16 11:01:08'),
(26, 1, 1, 185, '1', '2019-12-16 11:01:08'),
(27, 1, 1, 186, '1', '2019-12-16 11:01:08'),
(28, 1, 1, 187, '1', '2019-12-16 11:01:08'),
(29, 1, 1, 188, '1', '2019-12-16 11:01:08'),
(30, 1, 1, 189, '1', '2019-12-16 11:01:08'),
(31, 1, 1, 190, '1', '2019-12-16 11:01:08'),
(32, 1, 1, 191, '1', '2019-12-16 11:01:08'),
(33, 1, 1, 192, '1', '2019-12-16 11:01:08'),
(34, 1, 1, 193, '1', '2019-12-16 11:01:08'),
(35, 1, 1, 194, '1', '2019-12-16 11:01:08'),
(36, 1, 1, 195, '1', '2019-12-16 11:01:08'),
(37, 1, 1, 196, '1', '2019-12-16 11:01:08'),
(38, 1, 1, 197, '1', '2019-12-16 11:01:08'),
(39, 1, 1, 198, '1', '2019-12-16 11:01:08'),
(40, 1, 1, 199, '1', '2019-12-16 11:01:08'),
(41, 1, 1, 1, '1', '2019-12-23 05:49:55'),
(42, 1, 2, 1, '1', '2019-12-23 05:49:55'),
(43, 1, 1, 2, '1', '2019-12-23 05:49:55'),
(44, 1, 2, 2, '1', '2019-12-23 05:49:55'),
(45, 1, 1, 3, '1', '2019-12-23 05:49:55'),
(46, 1, 2, 3, '1', '2019-12-23 05:49:55'),
(47, 1, 1, 4, '1', '2019-12-23 05:49:55'),
(48, 1, 2, 4, '1', '2019-12-23 05:49:55'),
(49, 1, 1, 5, '1', '2019-12-23 05:49:55'),
(50, 1, 2, 5, '1', '2019-12-23 05:49:55'),
(51, 1, 1, 6, '1', '2019-12-23 05:49:55'),
(52, 1, 2, 6, '1', '2019-12-23 05:49:55'),
(53, 1, 1, 7, '1', '2019-12-23 05:49:55'),
(54, 1, 2, 7, '1', '2019-12-23 05:49:55'),
(55, 1, 1, 8, '1', '2019-12-23 05:49:55'),
(56, 1, 2, 8, '1', '2019-12-23 05:49:55'),
(57, 1, 1, 9, '1', '2019-12-23 05:49:55'),
(58, 1, 2, 9, '1', '2019-12-23 05:49:55'),
(59, 1, 1, 10, '1', '2019-12-23 05:49:55'),
(60, 1, 2, 10, '1', '2019-12-23 05:49:55'),
(61, 1, 1, 11, '1', '2019-12-23 05:49:55'),
(62, 1, 2, 11, '1', '2019-12-23 05:49:55'),
(63, 1, 1, 12, '1', '2019-12-23 05:49:55'),
(64, 1, 2, 12, '1', '2019-12-23 05:49:55'),
(65, 1, 1, 19, '1', '2019-12-23 05:49:55'),
(66, 1, 2, 19, '1', '2019-12-23 05:49:55'),
(67, 1, 1, 21, '1', '2019-12-23 05:49:55'),
(68, 1, 2, 21, '1', '2019-12-23 05:49:55'),
(69, 1, 1, 22, '1', '2019-12-23 05:49:55'),
(70, 1, 2, 22, '1', '2019-12-23 05:49:55'),
(71, 1, 1, 23, '1', '2019-12-23 05:49:55'),
(72, 1, 2, 23, '1', '2019-12-23 05:49:55'),
(73, 1, 1, 24, '1', '2019-12-23 05:49:55'),
(74, 1, 2, 24, '1', '2019-12-23 05:49:55'),
(75, 1, 1, 25, '1', '2019-12-23 05:49:55'),
(76, 1, 2, 25, '1', '2019-12-23 05:49:55'),
(77, 1, 1, 26, '1', '2019-12-23 05:49:55'),
(78, 1, 2, 26, '1', '2019-12-23 05:49:55'),
(79, 1, 1, 27, '1', '2019-12-23 05:49:55'),
(80, 1, 2, 27, '1', '2019-12-23 05:49:55'),
(81, 1, 1, 28, '1', '2019-12-23 05:49:55'),
(82, 1, 2, 28, '1', '2019-12-23 05:49:55'),
(83, 1, 1, 29, '1', '2019-12-23 05:49:55'),
(84, 1, 2, 29, '1', '2019-12-23 05:49:55'),
(85, 1, 1, 35, '1', '2019-12-23 05:49:55'),
(86, 1, 2, 35, '1', '2019-12-23 05:49:55'),
(87, 1, 1, 36, '1', '2019-12-23 05:49:55'),
(88, 1, 2, 36, '1', '2019-12-23 05:49:55'),
(89, 1, 1, 37, '1', '2019-12-23 05:49:55'),
(90, 1, 2, 37, '1', '2019-12-23 05:49:55'),
(91, 1, 1, 38, '1', '2019-12-23 05:49:55'),
(92, 1, 2, 38, '1', '2019-12-23 05:49:55'),
(93, 1, 1, 39, '1', '2019-12-23 05:49:55'),
(94, 1, 2, 39, '1', '2019-12-23 05:49:55'),
(95, 1, 1, 40, '1', '2019-12-23 05:49:55'),
(96, 1, 2, 40, '1', '2019-12-23 05:49:55'),
(97, 1, 1, 42, '1', '2019-12-23 05:49:55'),
(98, 1, 2, 42, '1', '2019-12-23 05:49:55'),
(99, 1, 1, 43, '1', '2019-12-23 05:49:55'),
(100, 1, 2, 43, '1', '2019-12-23 05:49:55'),
(101, 1, 1, 44, '1', '2019-12-23 05:49:55'),
(102, 1, 2, 44, '1', '2019-12-23 05:49:55'),
(103, 1, 1, 45, '1', '2019-12-23 05:49:55'),
(104, 1, 2, 45, '1', '2019-12-23 05:49:55'),
(105, 1, 1, 46, '1', '2019-12-23 05:49:55'),
(106, 1, 2, 46, '1', '2019-12-23 05:49:55'),
(107, 1, 1, 47, '1', '2019-12-23 05:49:55'),
(108, 1, 2, 47, '1', '2019-12-23 05:49:55'),
(109, 1, 1, 48, '1', '2019-12-23 05:49:55'),
(110, 1, 2, 48, '1', '2019-12-23 05:49:55'),
(111, 1, 1, 49, '1', '2019-12-23 05:49:55'),
(112, 1, 2, 49, '1', '2019-12-23 05:49:55'),
(113, 1, 1, 50, '1', '2019-12-23 05:49:55'),
(114, 1, 2, 50, '1', '2019-12-23 05:49:55'),
(115, 1, 1, 51, '1', '2019-12-23 05:49:55'),
(116, 1, 2, 51, '1', '2019-12-23 05:49:55'),
(117, 1, 1, 57, '1', '2019-12-23 05:49:55'),
(118, 1, 2, 57, '1', '2019-12-23 05:49:55'),
(119, 1, 1, 60, '1', '2019-12-23 05:49:55'),
(120, 1, 2, 60, '1', '2019-12-23 05:49:55'),
(121, 1, 1, 64, '1', '2019-12-23 05:49:55'),
(122, 1, 2, 64, '1', '2019-12-23 05:49:55'),
(123, 1, 1, 65, '1', '2019-12-23 05:49:55'),
(124, 1, 2, 65, '1', '2019-12-23 05:49:55'),
(125, 1, 1, 66, '1', '2019-12-23 05:49:55'),
(126, 1, 2, 66, '1', '2019-12-23 05:49:55'),
(127, 1, 1, 70, '1', '2019-12-23 05:49:55'),
(128, 1, 2, 70, '1', '2019-12-23 05:49:55'),
(129, 1, 1, 71, '1', '2019-12-23 05:49:55'),
(130, 1, 2, 71, '1', '2019-12-23 05:49:55'),
(131, 1, 1, 72, '1', '2019-12-23 05:49:55'),
(132, 1, 2, 72, '1', '2019-12-23 05:49:55'),
(133, 1, 1, 73, '1', '2019-12-23 05:49:55'),
(134, 1, 2, 73, '1', '2019-12-23 05:49:55'),
(135, 1, 1, 74, '1', '2019-12-23 05:49:55'),
(136, 1, 2, 74, '1', '2019-12-23 05:49:55'),
(137, 1, 1, 75, '1', '2019-12-23 05:49:55'),
(138, 1, 2, 75, '1', '2019-12-23 05:49:55'),
(139, 1, 1, 76, '1', '2019-12-23 05:49:55'),
(140, 1, 2, 76, '1', '2019-12-23 05:49:55'),
(141, 1, 1, 77, '1', '2019-12-23 05:49:55'),
(142, 1, 2, 77, '1', '2019-12-23 05:49:55'),
(143, 1, 1, 78, '1', '2019-12-23 05:49:55'),
(144, 1, 2, 78, '1', '2019-12-23 05:49:55'),
(145, 1, 1, 79, '1', '2019-12-23 05:49:55'),
(146, 1, 2, 79, '1', '2019-12-23 05:49:55'),
(147, 1, 1, 80, '1', '2019-12-23 05:49:55'),
(148, 1, 2, 80, '1', '2019-12-23 05:49:55'),
(149, 1, 1, 81, '1', '2019-12-23 05:49:55'),
(150, 1, 2, 81, '1', '2019-12-23 05:49:55'),
(151, 1, 1, 82, '1', '2019-12-23 05:49:55'),
(152, 1, 2, 82, '1', '2019-12-23 05:49:55'),
(153, 1, 1, 83, '1', '2019-12-23 05:49:55'),
(154, 1, 2, 83, '1', '2019-12-23 05:49:55'),
(155, 1, 1, 84, '1', '2019-12-23 05:49:55'),
(156, 1, 2, 84, '1', '2019-12-23 05:49:55'),
(157, 1, 1, 85, '1', '2019-12-23 05:49:55'),
(158, 1, 2, 85, '1', '2019-12-23 05:49:55'),
(159, 1, 1, 86, '1', '2019-12-23 05:49:55'),
(160, 1, 2, 86, '1', '2019-12-23 05:49:55'),
(161, 1, 1, 87, '1', '2019-12-23 05:49:55'),
(162, 1, 2, 87, '1', '2019-12-23 05:49:55'),
(163, 1, 1, 88, '1', '2019-12-23 05:49:55'),
(164, 1, 2, 88, '1', '2019-12-23 05:49:55'),
(165, 1, 1, 89, '1', '2019-12-23 05:49:55'),
(166, 1, 2, 89, '1', '2019-12-23 05:49:55'),
(167, 1, 1, 90, '1', '2019-12-23 05:49:55'),
(168, 1, 2, 90, '1', '2019-12-23 05:49:55'),
(169, 1, 1, 91, '1', '2019-12-23 05:49:55'),
(170, 1, 2, 91, '1', '2019-12-23 05:49:55'),
(171, 1, 1, 92, '1', '2019-12-23 05:49:55'),
(172, 1, 2, 92, '1', '2019-12-23 05:49:55'),
(173, 1, 1, 93, '1', '2019-12-23 05:49:55'),
(174, 1, 2, 93, '1', '2019-12-23 05:49:55'),
(175, 1, 1, 94, '1', '2019-12-23 05:49:55'),
(176, 1, 2, 94, '1', '2019-12-23 05:49:55'),
(177, 1, 1, 95, '1', '2019-12-23 05:49:55'),
(178, 1, 2, 95, '1', '2019-12-23 05:49:55'),
(179, 1, 1, 96, '1', '2019-12-23 05:49:55'),
(180, 1, 2, 96, '1', '2019-12-23 05:49:55'),
(181, 1, 1, 97, '1', '2019-12-23 05:49:55'),
(182, 1, 2, 97, '1', '2019-12-23 05:49:55'),
(183, 1, 1, 98, '1', '2019-12-23 05:49:55'),
(184, 1, 2, 98, '1', '2019-12-23 05:49:55'),
(185, 1, 1, 99, '1', '2019-12-23 05:49:55'),
(186, 1, 2, 99, '1', '2019-12-23 05:49:55'),
(187, 1, 1, 100, '1', '2019-12-23 05:49:55'),
(188, 1, 2, 100, '1', '2019-12-23 05:49:55'),
(189, 1, 1, 101, '1', '2019-12-23 05:49:55'),
(190, 1, 2, 101, '1', '2019-12-23 05:49:55'),
(191, 1, 1, 102, '1', '2019-12-23 05:49:55'),
(192, 1, 2, 102, '1', '2019-12-23 05:49:55'),
(193, 1, 1, 103, '1', '2019-12-23 05:49:55'),
(194, 1, 2, 103, '1', '2019-12-23 05:49:55'),
(195, 1, 1, 104, '1', '2019-12-23 05:49:55'),
(196, 1, 2, 104, '1', '2019-12-23 05:49:55'),
(197, 1, 1, 105, '1', '2019-12-23 05:49:55'),
(198, 1, 2, 105, '1', '2019-12-23 05:49:55'),
(199, 1, 1, 106, '1', '2019-12-23 05:49:55'),
(200, 1, 2, 106, '1', '2019-12-23 05:49:55'),
(201, 1, 1, 107, '1', '2019-12-23 05:49:55'),
(202, 1, 2, 107, '1', '2019-12-23 05:49:55'),
(203, 1, 1, 108, '1', '2019-12-23 05:49:55'),
(204, 1, 2, 108, '1', '2019-12-23 05:49:55'),
(205, 1, 1, 109, '1', '2019-12-23 05:49:55'),
(206, 1, 2, 109, '1', '2019-12-23 05:49:55'),
(207, 1, 1, 110, '1', '2019-12-23 05:49:56'),
(208, 1, 2, 110, '1', '2019-12-23 05:49:56'),
(209, 1, 1, 111, '1', '2019-12-23 05:49:56'),
(210, 1, 2, 111, '1', '2019-12-23 05:49:56'),
(211, 1, 1, 112, '1', '2019-12-23 05:49:56'),
(212, 1, 2, 112, '1', '2019-12-23 05:49:56'),
(213, 1, 1, 113, '1', '2019-12-23 05:49:56'),
(214, 1, 2, 113, '1', '2019-12-23 05:49:56'),
(215, 1, 1, 114, '1', '2019-12-23 05:49:56'),
(216, 1, 2, 114, '1', '2019-12-23 05:49:56'),
(217, 1, 1, 115, '1', '2019-12-23 05:49:56'),
(218, 1, 2, 115, '1', '2019-12-23 05:49:56'),
(219, 1, 1, 116, '1', '2019-12-23 05:49:56'),
(220, 1, 2, 116, '1', '2019-12-23 05:49:56'),
(221, 1, 1, 117, '1', '2019-12-23 05:49:56'),
(222, 1, 2, 117, '1', '2019-12-23 05:49:56'),
(223, 1, 1, 118, '1', '2019-12-23 05:49:56'),
(224, 1, 2, 118, '1', '2019-12-23 05:49:56'),
(225, 1, 1, 119, '1', '2019-12-23 05:49:56'),
(226, 1, 2, 119, '1', '2019-12-23 05:49:56'),
(227, 1, 1, 120, '1', '2019-12-23 05:49:56'),
(228, 1, 2, 120, '1', '2019-12-23 05:49:56'),
(229, 1, 1, 121, '1', '2019-12-23 05:49:56'),
(230, 1, 2, 121, '1', '2019-12-23 05:49:56'),
(231, 1, 1, 122, '1', '2019-12-23 05:49:56'),
(232, 1, 2, 122, '1', '2019-12-23 05:49:56'),
(233, 1, 1, 123, '1', '2019-12-23 05:49:56'),
(234, 1, 2, 123, '1', '2019-12-23 05:49:56'),
(235, 1, 1, 124, '1', '2019-12-23 05:49:56'),
(236, 1, 2, 124, '1', '2019-12-23 05:49:56'),
(237, 1, 1, 125, '1', '2019-12-23 05:49:56'),
(238, 1, 2, 125, '1', '2019-12-23 05:49:56'),
(239, 1, 1, 126, '1', '2019-12-23 05:49:56'),
(240, 1, 2, 126, '1', '2019-12-23 05:49:56'),
(241, 1, 1, 128, '1', '2019-12-23 05:49:56'),
(242, 1, 2, 128, '1', '2019-12-23 05:49:56'),
(243, 1, 1, 136, '1', '2019-12-23 05:49:56'),
(244, 1, 2, 136, '1', '2019-12-23 05:49:56'),
(245, 1, 1, 142, '1', '2019-12-23 05:49:56'),
(246, 1, 2, 142, '1', '2019-12-23 05:49:56'),
(247, 1, 1, 143, '1', '2019-12-23 05:49:56'),
(248, 1, 2, 143, '1', '2019-12-23 05:49:56'),
(249, 1, 1, 144, '1', '2019-12-23 05:49:56'),
(250, 1, 2, 144, '1', '2019-12-23 05:49:56'),
(251, 1, 1, 147, '1', '2019-12-23 05:49:56'),
(252, 1, 2, 147, '1', '2019-12-23 05:49:56'),
(253, 1, 1, 148, '1', '2019-12-23 05:49:56'),
(254, 1, 2, 148, '1', '2019-12-23 05:49:56'),
(255, 1, 1, 150, '1', '2019-12-23 05:49:56'),
(256, 1, 2, 150, '1', '2019-12-23 05:49:56'),
(257, 1, 1, 151, '1', '2019-12-23 05:49:56'),
(258, 1, 2, 151, '1', '2019-12-23 05:49:56'),
(259, 1, 1, 152, '1', '2019-12-23 05:49:56'),
(260, 1, 2, 152, '1', '2019-12-23 05:49:56'),
(261, 1, 1, 153, '1', '2019-12-23 05:49:56'),
(262, 1, 2, 153, '1', '2019-12-23 05:49:56'),
(263, 1, 1, 154, '1', '2019-12-23 05:49:56'),
(264, 1, 2, 154, '1', '2019-12-23 05:49:56'),
(265, 1, 1, 155, '1', '2019-12-23 05:49:56'),
(266, 1, 2, 155, '1', '2019-12-23 05:49:56'),
(267, 1, 1, 156, '1', '2019-12-23 05:49:56'),
(268, 1, 2, 156, '1', '2019-12-23 05:49:56'),
(269, 1, 1, 157, '1', '2019-12-23 05:49:56'),
(270, 1, 2, 157, '1', '2019-12-23 05:49:56'),
(271, 1, 1, 158, '1', '2019-12-23 05:49:56'),
(272, 1, 2, 158, '1', '2019-12-23 05:49:56'),
(273, 1, 2, 159, '1', '2019-12-23 05:49:56'),
(274, 1, 2, 160, '1', '2019-12-23 05:49:56'),
(275, 1, 2, 161, '1', '2019-12-23 05:49:56'),
(276, 1, 2, 162, '1', '2019-12-23 05:49:56'),
(277, 1, 2, 163, '1', '2019-12-23 05:49:56'),
(278, 1, 2, 164, '1', '2019-12-23 05:49:56'),
(279, 1, 2, 165, '1', '2019-12-23 05:49:56'),
(280, 1, 2, 166, '1', '2019-12-23 05:49:56'),
(281, 1, 2, 167, '1', '2019-12-23 05:49:56'),
(282, 1, 2, 168, '1', '2019-12-23 05:49:56'),
(283, 1, 2, 169, '1', '2019-12-23 05:49:56'),
(284, 1, 2, 170, '1', '2019-12-23 05:49:56'),
(285, 1, 2, 171, '1', '2019-12-23 05:49:56'),
(286, 1, 2, 172, '1', '2019-12-23 05:49:56'),
(287, 1, 2, 173, '1', '2019-12-23 05:49:56'),
(288, 1, 2, 174, '1', '2019-12-23 05:49:56'),
(289, 1, 2, 176, '1', '2019-12-23 05:49:56'),
(290, 1, 2, 177, '1', '2019-12-23 05:49:56'),
(291, 1, 2, 178, '1', '2019-12-23 05:49:56'),
(292, 1, 2, 179, '1', '2019-12-23 05:49:56'),
(293, 1, 2, 180, '1', '2019-12-23 05:49:56'),
(294, 1, 2, 181, '1', '2019-12-23 05:49:56'),
(295, 1, 2, 182, '1', '2019-12-23 05:49:56'),
(296, 1, 2, 183, '1', '2019-12-23 05:49:56'),
(297, 1, 2, 184, '1', '2019-12-23 05:49:56'),
(298, 1, 2, 185, '1', '2019-12-23 05:49:56'),
(299, 1, 2, 186, '1', '2019-12-23 05:49:56'),
(300, 1, 2, 187, '1', '2019-12-23 05:49:56'),
(301, 1, 2, 188, '1', '2019-12-23 05:49:56'),
(302, 1, 2, 189, '1', '2019-12-23 05:49:56'),
(303, 1, 2, 190, '1', '2019-12-23 05:49:56'),
(304, 1, 2, 191, '1', '2019-12-23 05:49:56'),
(305, 1, 2, 192, '1', '2019-12-23 05:49:56'),
(306, 1, 2, 193, '1', '2019-12-23 05:49:56'),
(307, 1, 2, 194, '1', '2019-12-23 05:49:56'),
(308, 1, 2, 195, '1', '2019-12-23 05:49:56'),
(309, 1, 2, 196, '1', '2019-12-23 05:49:56'),
(310, 1, 2, 197, '1', '2019-12-23 05:49:56'),
(311, 1, 2, 198, '1', '2019-12-23 05:49:56'),
(312, 1, 2, 199, '1', '2019-12-23 05:49:56'),
(313, 1, 1, 200, '1', '2019-12-23 05:49:56'),
(314, 1, 2, 200, '1', '2019-12-23 05:49:56'),
(315, 1, 1, 201, '1', '2019-12-23 05:49:56'),
(316, 1, 2, 201, '1', '2019-12-23 05:49:56'),
(317, 1, 1, 202, '1', '2019-12-23 05:49:56'),
(318, 1, 2, 202, '1', '2019-12-23 05:49:56'),
(319, 1, 1, 203, '1', '2019-12-23 05:49:56'),
(320, 1, 2, 203, '1', '2019-12-23 05:49:56'),
(321, 1, 1, 204, '1', '2019-12-23 05:49:56'),
(322, 1, 2, 204, '1', '2019-12-23 05:49:56'),
(323, 1, 1, 205, '1', '2019-12-23 05:49:56'),
(324, 1, 2, 205, '1', '2019-12-23 05:49:56'),
(325, 1, 1, 206, '1', '2019-12-23 05:49:56'),
(326, 1, 2, 206, '1', '2019-12-23 05:49:56'),
(327, 1, 1, 207, '1', '2019-12-23 05:49:56'),
(328, 1, 2, 207, '1', '2019-12-23 05:49:56'),
(329, 1, 1, 208, '1', '2019-12-23 05:49:56'),
(330, 1, 2, 208, '1', '2019-12-23 05:49:56'),
(331, 1, 1, 209, '1', '2019-12-23 05:49:56'),
(332, 1, 2, 209, '1', '2019-12-23 05:49:56'),
(333, 1, 1, 210, '1', '2019-12-23 05:49:56'),
(334, 1, 2, 210, '1', '2019-12-23 05:49:56'),
(335, 1, 1, 211, '1', '2019-12-23 05:49:56'),
(336, 1, 2, 211, '1', '2019-12-23 05:49:56'),
(337, 1, 1, 212, '1', '2019-12-23 05:49:56'),
(338, 1, 2, 212, '1', '2019-12-23 05:49:56'),
(339, 1, 1, 213, '1', '2019-12-23 05:49:56'),
(340, 1, 2, 213, '1', '2019-12-23 05:49:56'),
(341, 1, 1, 214, '1', '2019-12-23 05:49:56'),
(342, 1, 2, 214, '1', '2019-12-23 05:49:56'),
(343, 1, 1, 215, '1', '2019-12-23 05:49:56'),
(344, 1, 2, 215, '1', '2019-12-23 05:49:56'),
(345, 1, 1, 216, '1', '2019-12-23 05:49:56'),
(346, 1, 2, 216, '1', '2019-12-23 05:49:56'),
(347, 1, 1, 217, '1', '2019-12-23 05:49:56'),
(348, 1, 2, 217, '1', '2019-12-23 05:49:56'),
(349, 1, 1, 218, '1', '2019-12-23 05:49:56'),
(350, 1, 2, 218, '1', '2019-12-23 05:49:56'),
(351, 1, 1, 219, '1', '2019-12-23 05:49:56'),
(352, 1, 2, 219, '1', '2019-12-23 05:49:56'),
(353, 1, 1, 220, '1', '2019-12-23 05:49:56'),
(354, 1, 2, 220, '1', '2019-12-23 05:49:56'),
(355, 1, 1, 221, '1', '2019-12-23 05:49:56'),
(356, 1, 2, 221, '1', '2019-12-23 05:49:56'),
(357, 1, 1, 222, '1', '2019-12-23 05:49:56'),
(358, 1, 2, 222, '1', '2019-12-23 05:49:56'),
(359, 1, 1, 223, '1', '2019-12-23 05:49:56'),
(360, 1, 2, 223, '1', '2019-12-23 05:49:56'),
(361, 1, 1, 224, '1', '2019-12-23 05:49:56'),
(362, 1, 2, 224, '1', '2019-12-23 05:49:56'),
(363, 1, 1, 225, '1', '2019-12-23 05:49:56'),
(364, 1, 2, 225, '1', '2019-12-23 05:49:56'),
(365, 1, 1, 226, '1', '2019-12-23 05:49:56'),
(366, 1, 2, 226, '1', '2019-12-23 05:49:56'),
(367, 1, 1, 227, '1', '2019-12-23 05:49:56'),
(368, 1, 2, 227, '1', '2019-12-23 05:49:56'),
(369, 1, 1, 228, '1', '2019-12-23 05:49:56'),
(370, 1, 2, 228, '1', '2019-12-23 05:49:56'),
(371, 1, 1, 229, '1', '2019-12-23 05:49:56'),
(372, 1, 2, 229, '1', '2019-12-23 05:49:56'),
(373, 1, 1, 230, '1', '2019-12-23 05:49:56'),
(374, 1, 2, 230, '1', '2019-12-23 05:49:56'),
(375, 1, 1, 231, '1', '2019-12-23 05:49:56'),
(376, 1, 2, 231, '1', '2019-12-23 05:49:56'),
(377, 1, 1, 232, '1', '2019-12-23 05:49:56'),
(378, 1, 2, 232, '1', '2019-12-23 05:49:56'),
(379, 1, 1, 233, '1', '2019-12-23 05:49:56'),
(380, 1, 2, 233, '1', '2019-12-23 05:49:56'),
(381, 1, 1, 234, '1', '2019-12-23 05:49:56'),
(382, 1, 2, 234, '1', '2019-12-23 05:49:56'),
(383, 1, 1, 235, '1', '2019-12-23 05:49:56'),
(384, 1, 2, 235, '1', '2019-12-23 05:49:56'),
(385, 1, 1, 236, '1', '2019-12-23 05:49:56'),
(386, 1, 2, 236, '1', '2019-12-23 05:49:56'),
(387, 1, 1, 238, '1', '2019-12-23 05:49:56'),
(388, 1, 2, 238, '1', '2019-12-23 05:49:56'),
(389, 1, 1, 239, '1', '2019-12-23 05:49:56'),
(390, 1, 2, 239, '1', '2019-12-23 05:49:56'),
(391, 1, 1, 240, '1', '2019-12-23 05:49:56'),
(392, 1, 2, 240, '1', '2019-12-23 05:49:56'),
(393, 1, 1, 241, '1', '2019-12-23 05:49:56'),
(394, 1, 2, 241, '1', '2019-12-23 05:49:56'),
(395, 1, 1, 242, '1', '2019-12-23 05:49:56'),
(396, 1, 2, 242, '1', '2019-12-23 05:49:56'),
(397, 1, 1, 243, '1', '2019-12-23 05:49:56'),
(398, 1, 2, 243, '1', '2019-12-23 05:49:56'),
(399, 1, 1, 244, '1', '2019-12-23 05:49:56'),
(400, 1, 2, 244, '1', '2019-12-23 05:49:56'),
(401, 1, 1, 245, '1', '2019-12-23 05:49:56'),
(402, 1, 2, 245, '1', '2019-12-23 05:49:56'),
(403, 1, 1, 246, '1', '2019-12-23 05:49:56'),
(404, 1, 2, 246, '1', '2019-12-23 05:49:56'),
(405, 1, 1, 247, '1', '2019-12-23 05:49:56'),
(406, 1, 2, 247, '1', '2019-12-23 05:49:56'),
(407, 1, 1, 248, '1', '2019-12-23 05:49:56'),
(408, 1, 2, 248, '1', '2019-12-23 05:49:56'),
(409, 1, 1, 249, '1', '2019-12-23 05:49:56'),
(410, 1, 2, 249, '1', '2019-12-23 05:49:56'),
(411, 1, 1, 250, '1', '2019-12-23 05:49:56'),
(412, 1, 2, 250, '1', '2019-12-23 05:49:56'),
(413, 1, 1, 251, '1', '2019-12-23 05:49:56'),
(414, 1, 2, 251, '1', '2019-12-23 05:49:56'),
(415, 1, 1, 252, '1', '2019-12-23 05:49:56'),
(416, 1, 2, 252, '1', '2019-12-23 05:49:56'),
(417, 1, 1, 253, '1', '2019-12-23 05:49:56'),
(418, 1, 2, 253, '1', '2019-12-23 05:49:56'),
(419, 1, 1, 254, '1', '2019-12-23 05:49:56'),
(420, 1, 2, 254, '1', '2019-12-23 05:49:56'),
(421, 1, 1, 255, '1', '2019-12-23 05:49:56'),
(422, 1, 2, 255, '1', '2019-12-23 05:49:56'),
(423, 1, 1, 256, '1', '2019-12-23 05:49:56'),
(424, 1, 2, 256, '1', '2019-12-23 05:49:56'),
(425, 1, 1, 257, '1', '2019-12-23 05:49:56'),
(426, 1, 2, 257, '1', '2019-12-23 05:49:56'),
(427, 1, 1, 258, '1', '2019-12-23 05:49:56'),
(428, 1, 2, 258, '1', '2019-12-23 05:49:56'),
(429, 1, 1, 259, '1', '2019-12-23 05:49:56'),
(430, 1, 2, 259, '1', '2019-12-23 05:49:56'),
(431, 1, 1, 260, '1', '2019-12-23 05:49:56'),
(432, 1, 2, 260, '1', '2019-12-23 05:49:56'),
(433, 1, 1, 261, '1', '2019-12-23 05:49:56'),
(434, 1, 2, 261, '1', '2019-12-23 05:49:56'),
(435, 1, 1, 262, '1', '2019-12-23 05:49:56'),
(436, 1, 2, 262, '1', '2019-12-23 05:49:56'),
(437, 1, 1, 263, '1', '2019-12-23 05:49:56'),
(438, 1, 2, 263, '1', '2019-12-23 05:49:56'),
(439, 1, 1, 264, '1', '2019-12-23 05:49:56'),
(440, 1, 2, 264, '1', '2019-12-23 05:49:56'),
(441, 1, 1, 265, '1', '2019-12-23 05:49:56'),
(442, 1, 2, 265, '1', '2019-12-23 05:49:56'),
(443, 1, 1, 266, '1', '2019-12-23 05:49:56'),
(444, 1, 2, 266, '1', '2019-12-23 05:49:56'),
(445, 1, 1, 267, '1', '2019-12-23 05:49:56'),
(446, 1, 2, 267, '1', '2019-12-23 05:49:56'),
(447, 1, 1, 268, '1', '2019-12-23 05:49:56'),
(448, 1, 2, 268, '1', '2019-12-23 05:49:56'),
(449, 1, 1, 269, '1', '2019-12-23 05:49:56'),
(450, 1, 2, 269, '1', '2019-12-23 05:49:56'),
(451, 1, 1, 270, '1', '2019-12-23 05:49:56'),
(452, 1, 2, 270, '1', '2019-12-23 05:49:56'),
(453, 1, 1, 271, '1', '2019-12-23 05:49:56'),
(454, 1, 2, 271, '1', '2019-12-23 05:49:56'),
(455, 1, 1, 272, '1', '2019-12-23 05:49:56'),
(456, 1, 2, 272, '1', '2019-12-23 05:49:56'),
(457, 1, 1, 273, '1', '2019-12-23 05:49:56'),
(458, 1, 2, 273, '1', '2019-12-23 05:49:56'),
(459, 1, 1, 274, '1', '2019-12-23 05:49:56'),
(460, 1, 2, 274, '1', '2019-12-23 05:49:56'),
(461, 1, 1, 275, '1', '2019-12-23 05:49:56'),
(462, 1, 2, 275, '1', '2019-12-23 05:49:56'),
(463, 1, 1, 276, '1', '2019-12-23 05:49:56'),
(464, 1, 2, 276, '1', '2019-12-23 05:49:56'),
(465, 1, 1, 277, '1', '2019-12-23 05:49:56'),
(466, 1, 2, 277, '1', '2019-12-23 05:49:56'),
(467, 1, 1, 278, '1', '2019-12-23 05:49:56'),
(468, 1, 2, 278, '1', '2019-12-23 05:49:56'),
(469, 1, 1, 279, '1', '2019-12-23 05:49:56'),
(470, 1, 2, 279, '1', '2019-12-23 05:49:56'),
(471, 1, 1, 280, '1', '2019-12-23 05:49:56'),
(472, 1, 2, 280, '1', '2019-12-23 05:49:56'),
(473, 1, 1, 281, '1', '2019-12-23 05:49:56'),
(474, 1, 2, 281, '1', '2019-12-23 05:49:56'),
(475, 1, 1, 282, '1', '2019-12-23 05:49:56'),
(476, 1, 2, 282, '1', '2019-12-23 05:49:56'),
(477, 1, 1, 283, '1', '2019-12-23 05:49:56'),
(478, 1, 2, 283, '1', '2019-12-23 05:49:56'),
(479, 1, 1, 284, '1', '2019-12-23 05:49:56'),
(480, 1, 2, 284, '1', '2019-12-23 05:49:56'),
(481, 1, 1, 285, '1', '2019-12-23 05:49:56'),
(482, 1, 2, 285, '1', '2019-12-23 05:49:56'),
(483, 1, 1, 286, '1', '2019-12-23 05:49:56'),
(484, 1, 2, 286, '1', '2019-12-23 05:49:56'),
(485, 1, 1, 287, '1', '2019-12-23 05:49:56'),
(486, 1, 2, 287, '1', '2019-12-23 05:49:56'),
(487, 1, 1, 288, '1', '2019-12-23 05:49:56'),
(488, 1, 2, 288, '1', '2019-12-23 05:49:56'),
(489, 1, 1, 289, '1', '2019-12-23 05:49:56'),
(490, 1, 2, 289, '1', '2019-12-23 05:49:56'),
(491, 1, 1, 290, '1', '2019-12-23 05:49:56'),
(492, 1, 2, 290, '1', '2019-12-23 05:49:56'),
(493, 1, 1, 291, '1', '2019-12-23 05:49:56'),
(494, 1, 2, 291, '1', '2019-12-23 05:49:56'),
(495, 1, 1, 292, '1', '2019-12-23 05:49:56'),
(496, 1, 2, 292, '1', '2019-12-23 05:49:56'),
(497, 1, 1, 293, '1', '2019-12-23 05:49:56'),
(498, 1, 2, 293, '1', '2019-12-23 05:49:56'),
(499, 1, 1, 294, '1', '2019-12-23 05:49:56'),
(500, 1, 2, 294, '1', '2019-12-23 05:49:56'),
(501, 1, 1, 295, '1', '2019-12-23 05:49:56'),
(502, 1, 2, 295, '1', '2019-12-23 05:49:56'),
(503, 1, 1, 296, '1', '2019-12-23 05:49:56'),
(504, 1, 2, 296, '1', '2019-12-23 05:49:56'),
(505, 1, 1, 297, '1', '2019-12-23 05:49:56'),
(506, 1, 2, 297, '1', '2019-12-23 05:49:56'),
(507, 1, 1, 298, '1', '2019-12-23 05:49:56'),
(508, 1, 2, 298, '1', '2019-12-23 05:49:56'),
(509, 1, 1, 299, '1', '2019-12-23 05:49:56'),
(510, 1, 2, 299, '1', '2019-12-23 05:49:56'),
(511, 1, 1, 300, '1', '2019-12-23 05:49:56'),
(512, 1, 2, 300, '1', '2019-12-23 05:49:56'),
(513, 1, 1, 301, '1', '2019-12-23 05:49:56'),
(514, 1, 2, 301, '1', '2019-12-23 05:49:56'),
(515, 1, 1, 302, '1', '2019-12-23 05:49:56'),
(516, 1, 2, 302, '1', '2019-12-23 05:49:56'),
(517, 1, 1, 303, '1', '2019-12-23 05:49:56'),
(518, 1, 2, 303, '1', '2019-12-23 05:49:56'),
(519, 1, 1, 304, '1', '2019-12-23 05:49:56'),
(520, 1, 2, 304, '1', '2019-12-23 05:49:56'),
(521, 1, 1, 305, '1', '2019-12-23 05:49:56'),
(522, 1, 2, 305, '1', '2019-12-23 05:49:56'),
(523, 1, 1, 306, '1', '2019-12-23 05:49:56'),
(524, 1, 2, 306, '1', '2019-12-23 05:49:56'),
(525, 1, 1, 307, '1', '2019-12-23 05:49:56'),
(526, 1, 2, 307, '1', '2019-12-23 05:49:56'),
(527, 1, 1, 308, '1', '2019-12-23 05:49:56'),
(528, 1, 2, 308, '1', '2019-12-23 05:49:56'),
(529, 1, 1, 309, '1', '2019-12-23 05:49:56'),
(530, 1, 2, 309, '1', '2019-12-23 05:49:56'),
(531, 1, 1, 310, '1', '2019-12-23 05:49:56'),
(532, 1, 2, 310, '1', '2019-12-23 05:49:56'),
(533, 1, 1, 311, '1', '2019-12-23 05:49:56'),
(534, 1, 2, 311, '1', '2019-12-23 05:49:56'),
(535, 1, 1, 312, '1', '2019-12-23 05:49:56'),
(536, 1, 2, 312, '1', '2019-12-23 05:49:56'),
(537, 1, 1, 313, '1', '2019-12-23 05:49:56'),
(538, 1, 2, 313, '1', '2019-12-23 05:49:56'),
(539, 1, 1, 314, '1', '2019-12-23 05:49:56'),
(540, 1, 2, 314, '1', '2019-12-23 05:49:56'),
(541, 1, 1, 315, '1', '2019-12-23 05:49:56'),
(542, 1, 2, 315, '1', '2019-12-23 05:49:56'),
(543, 1, 1, 316, '1', '2019-12-23 05:49:56'),
(544, 1, 2, 316, '1', '2019-12-23 05:49:56'),
(545, 1, 1, 317, '1', '2019-12-23 05:49:56'),
(546, 1, 2, 317, '1', '2019-12-23 05:49:56'),
(547, 1, 1, 318, '1', '2019-12-23 05:49:56'),
(548, 1, 2, 318, '1', '2019-12-23 05:49:56'),
(549, 1, 1, 319, '1', '2019-12-23 05:49:56'),
(550, 1, 2, 319, '1', '2019-12-23 05:49:56'),
(551, 1, 1, 320, '1', '2019-12-23 05:49:56'),
(552, 1, 2, 320, '1', '2019-12-23 05:49:56'),
(553, 1, 1, 321, '1', '2019-12-23 05:49:56'),
(554, 1, 2, 321, '1', '2019-12-23 05:49:56'),
(555, 1, 1, 322, '1', '2019-12-23 05:49:56'),
(556, 1, 2, 322, '1', '2019-12-23 05:49:56'),
(557, 1, 1, 323, '1', '2019-12-23 05:49:56'),
(558, 1, 2, 323, '1', '2019-12-23 05:49:56'),
(559, 1, 1, 324, '1', '2019-12-23 05:49:56'),
(560, 1, 2, 324, '1', '2019-12-23 05:49:56'),
(561, 1, 1, 325, '1', '2019-12-23 05:49:56'),
(562, 1, 2, 325, '1', '2019-12-23 05:49:56'),
(563, 1, 1, 326, '1', '2019-12-23 05:49:56'),
(564, 1, 2, 326, '1', '2019-12-23 05:49:56'),
(565, 1, 1, 327, '1', '2019-12-23 05:49:56'),
(566, 1, 2, 327, '1', '2019-12-23 05:49:56'),
(567, 1, 1, 328, '1', '2019-12-23 05:49:56'),
(568, 1, 2, 328, '1', '2019-12-23 05:49:56'),
(569, 1, 1, 329, '1', '2019-12-23 05:49:56'),
(570, 1, 2, 329, '1', '2019-12-23 05:49:56'),
(571, 1, 1, 330, '1', '2019-12-23 05:49:56'),
(572, 1, 2, 330, '1', '2019-12-23 05:49:56'),
(573, 1, 1, 331, '1', '2019-12-23 05:49:56'),
(574, 1, 2, 331, '1', '2019-12-23 05:49:56'),
(575, 1, 1, 332, '1', '2019-12-23 05:49:56'),
(576, 1, 2, 332, '1', '2019-12-23 05:49:56'),
(577, 1, 1, 333, '1', '2019-12-23 05:49:56'),
(578, 1, 2, 333, '1', '2019-12-23 05:49:56'),
(579, 1, 1, 334, '1', '2019-12-23 05:49:56'),
(580, 1, 2, 334, '1', '2019-12-23 05:49:56'),
(581, 1, 1, 335, '1', '2019-12-23 05:49:56'),
(582, 1, 2, 335, '1', '2019-12-23 05:49:56'),
(583, 1, 1, 336, '1', '2019-12-23 05:49:56'),
(584, 1, 2, 336, '1', '2019-12-23 05:49:56'),
(585, 1, 1, 341, '1', '2019-12-23 05:49:56'),
(586, 1, 2, 341, '1', '2019-12-23 05:49:56'),
(587, 1, 1, 342, '1', '2019-12-23 05:49:56'),
(588, 1, 2, 342, '1', '2019-12-23 05:49:56'),
(589, 1, 1, 343, '1', '2019-12-23 05:49:56'),
(590, 1, 2, 343, '1', '2019-12-23 05:49:56'),
(591, 1, 1, 344, '1', '2019-12-23 05:49:56'),
(592, 1, 2, 344, '1', '2019-12-23 05:49:56'),
(593, 1, 1, 345, '1', '2019-12-23 05:49:56'),
(594, 1, 2, 345, '1', '2019-12-23 05:49:56'),
(595, 1, 1, 346, '1', '2019-12-23 05:49:56'),
(596, 1, 2, 346, '1', '2019-12-23 05:49:56'),
(597, 1, 1, 347, '1', '2019-12-23 05:49:56'),
(598, 1, 2, 347, '1', '2019-12-23 05:49:56'),
(599, 1, 1, 348, '1', '2019-12-23 05:49:56'),
(600, 1, 2, 348, '1', '2019-12-23 05:49:56'),
(601, 1, 1, 349, '1', '2019-12-23 05:49:56'),
(602, 1, 2, 349, '1', '2019-12-23 05:49:56'),
(603, 1, 1, 350, '1', '2019-12-23 05:49:56'),
(604, 1, 2, 350, '1', '2019-12-23 05:49:56'),
(605, 1, 1, 355, '1', '2019-12-23 05:49:56'),
(606, 1, 2, 355, '1', '2019-12-23 05:49:56'),
(607, 1, 1, 356, '1', '2019-12-23 05:49:56'),
(608, 1, 2, 356, '1', '2019-12-23 05:49:56'),
(609, 1, 1, 357, '1', '2019-12-23 05:49:56'),
(610, 1, 2, 357, '1', '2019-12-23 05:49:56'),
(611, 1, 1, 358, '1', '2019-12-23 05:49:56'),
(612, 1, 2, 358, '1', '2019-12-23 05:49:56'),
(613, 1, 1, 359, '1', '2019-12-23 05:49:56'),
(614, 1, 2, 359, '1', '2019-12-23 05:49:56'),
(615, 1, 1, 360, '1', '2019-12-23 05:49:56'),
(616, 1, 2, 360, '1', '2019-12-23 05:49:56'),
(617, 1, 1, 361, '1', '2019-12-23 05:49:56'),
(618, 1, 2, 361, '1', '2019-12-23 05:49:56'),
(619, 1, 1, 362, '1', '2019-12-23 05:49:56'),
(620, 1, 2, 362, '1', '2019-12-23 05:49:56'),
(621, 1, 1, 363, '1', '2019-12-23 05:49:56'),
(622, 1, 2, 363, '1', '2019-12-23 05:49:56'),
(623, 1, 1, 364, '1', '2019-12-23 05:49:56'),
(624, 1, 2, 364, '1', '2019-12-23 05:49:56'),
(625, 1, 1, 365, '1', '2019-12-23 05:49:56'),
(626, 1, 2, 365, '1', '2019-12-23 05:49:56'),
(627, 1, 1, 366, '1', '2019-12-23 05:49:56'),
(628, 1, 2, 366, '1', '2019-12-23 05:49:56'),
(629, 1, 1, 367, '1', '2019-12-23 05:49:56'),
(630, 1, 2, 367, '1', '2019-12-23 05:49:56'),
(631, 1, 1, 368, '1', '2019-12-23 05:49:56'),
(632, 1, 2, 368, '1', '2019-12-23 05:49:56'),
(633, 1, 1, 369, '1', '2019-12-23 05:49:56'),
(634, 1, 2, 369, '1', '2019-12-23 05:49:56'),
(635, 1, 1, 370, '1', '2019-12-23 05:49:56'),
(636, 1, 2, 370, '1', '2019-12-23 05:49:56'),
(637, 1, 1, 371, '1', '2019-12-23 05:49:56'),
(638, 1, 2, 371, '1', '2019-12-23 05:49:57'),
(639, 1, 1, 372, '1', '2019-12-23 05:49:57'),
(640, 1, 2, 372, '1', '2019-12-23 05:49:57'),
(641, 1, 1, 373, '1', '2019-12-23 05:49:57'),
(642, 1, 2, 373, '1', '2019-12-23 05:49:57'),
(643, 1, 1, 374, '1', '2019-12-23 05:49:57'),
(644, 1, 2, 374, '1', '2019-12-23 05:49:57'),
(645, 1, 1, 375, '1', '2019-12-23 05:49:57'),
(646, 1, 2, 375, '1', '2019-12-23 05:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `aip_sales_invoice`
--

CREATE TABLE `aip_sales_invoice` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `customer_type_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `order_type` enum('0','1') NOT NULL COMMENT '0 - Service item not avail,1-Service item avail',
  `order_date` date NOT NULL,
  `billing_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `order_time` time DEFAULT NULL,
  `billing_time` time DEFAULT NULL,
  `delivery_time` time DEFAULT NULL,
  `invoice_remark1` text NOT NULL,
  `invoice_remark2` text NOT NULL,
  `job_type` enum('0','1') NOT NULL COMMENT '0-Normal,1-Urgent',
  `delivery_type_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `tender_cash` float NOT NULL,
  `total_amount` float NOT NULL,
  `discount` float NOT NULL,
  `p_discount` float NOT NULL,
  `round_off` float NOT NULL,
  `received_amount` float NOT NULL,
  `grand_total` float NOT NULL,
  `tax_amount` float NOT NULL,
  `balance` float NOT NULL,
  `order_status` enum('0','1','2','3','4','5') NOT NULL COMMENT '0-Job received (Initial Status),1-Processing (Partial process Done), 2- Completed, 3- Delivered,4-Cancelled,5-Partially delivered',
  `paid_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0-Not paid,1-Partially Paid,2-Fully Paid',
  `done_by` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user_id` int(11) NOT NULL,
  `hold` enum('0','1') NOT NULL DEFAULT '0',
  `sales_invoice_created` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_sales_invoice`
--

INSERT INTO `aip_sales_invoice` (`id`, `order_id`, `customer_type_id`, `customer_id`, `order_no`, `order_type`, `order_date`, `billing_date`, `delivery_date`, `order_time`, `billing_time`, `delivery_time`, `invoice_remark1`, `invoice_remark2`, `job_type`, `delivery_type_id`, `branch_id`, `tender_cash`, `total_amount`, `discount`, `p_discount`, `round_off`, `received_amount`, `grand_total`, `tax_amount`, `balance`, `order_status`, `paid_status`, `done_by`, `last_modified`, `modified_user_id`, `hold`, `sales_invoice_created`) VALUES
(31, NULL, 76, 12, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:03:49', '16:03:49', '16:03:49', '', '', '', 1, 1, 500, 138.89, 0, 0, 0, 150, 150, 11.111, 0, '4', '2', 1, '2020-01-16 12:05:40', 0, '0', '0'),
(32, NULL, 76, 10, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:09:59', '16:09:59', '16:09:59', '', '', '', 1, 1, 500, 113.89, 3, 0, 0, 120, 120, 9.111, 0, '0', '2', 1, '2020-01-16 12:09:59', 0, '0', '0'),
(33, NULL, 76, 10, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:10:25', '16:10:25', '16:10:25', '', '', '', 1, 1, 0, 116.67, 0, 0, 0, 0, 126, 9.333, 126, '4', '0', 1, '2020-01-16 12:11:24', 0, '0', '0'),
(34, NULL, 76, 13, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:10:40', '16:10:40', '16:10:40', '', '', '', 1, 1, 0, 841.66, 0, 0, 0, 0, 908.99, 67.333, 908.99, '4', '0', 1, '2020-01-16 12:13:36', 0, '0', '0'),
(35, NULL, 76, 12, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:11:00', '16:11:00', '16:11:00', '', '', '', 1, 1, 5000, 2234.27, 0, 0, 0, 2000, 2413.01, 178.742, 413.01, '0', '1', 1, '2020-01-16 12:11:00', 0, '0', '0'),
(36, NULL, 76, 10, '', '0', '2020-01-16', '1970-01-01', '2020-01-16', '16:17:57', '16:17:57', '16:17:57', '', 'A-5', '', 1, 1, 1000, 663.87, 0, 0, 0, 500, 716.98, 53.11, 216.98, '0', '1', 1, '2020-01-16 12:17:57', 0, '0', '0'),
(37, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-17', '08:19:31', '08:19:31', '08:19:31', '', 'A-4', '', 1, 1, 1000, 463.89, 1, 0, 0, 500, 500, 37.112, 0, '0', '2', 1, '2020-01-17 04:19:31', 0, '0', '0'),
(38, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-17', '08:21:47', '15:34:34', '15:34:34', '', 'A-6', '', 1, 1, 1000, 1360.18, 0, 0, 0, 1000, 1468.99, 108.814, 468.99, '0', '1', 1, '2020-01-17 11:34:34', 1, '0', '0'),
(39, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-17', '08:25:41', '08:25:41', '08:25:41', '', 'A-3', '', 1, 1, 500, 937.96, 0, 0, 0, 500, 1013, 75.037, 513, '0', '1', 1, '2020-01-17 04:25:41', 0, '0', '0'),
(40, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-17', '08:45:29', '13:56:53', '13:56:53', '', 'A-7', '', 1, 1, 1000, 1214.82, 0, 0, 0, 1000, 1312.01, 97.186, 312.01, '0', '1', 1, '2020-01-17 09:56:53', 1, '0', '0'),
(41, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-17', '08:53:14', '15:37:18', '15:37:18', '', 'A-1', '', 1, 1, 1000, 1334.28, 10, 0, 0, 1100, 1431.02, 106.742, 331.02, '0', '1', 1, '2020-01-17 11:37:18', 1, '0', '0'),
(42, NULL, 76, 10, '', '0', '2020-01-17', '1970-01-01', '2020-01-18', '16:02:37', '14:06:22', '14:06:22', '', 'A-8', '', 1, 1, 1000, 1493.51, 0, 0, 0, 1000, 1612.99, 119.48, 612.99, '0', '1', 1, '2020-01-18 10:06:22', 1, '0', '0'),
(43, NULL, 76, 10, '', '0', '2020-01-18', '1970-01-01', '2020-01-18', '16:34:17', '16:34:17', '16:34:17', '', 'A-16', '', 1, 1, 0, 845.37, 0, 0, 0, 0, 913, 67.63, 913, '0', '0', 1, '2020-01-18 12:34:17', 0, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_sales_invoice_details`
--

CREATE TABLE `aip_sales_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `parent_product` int(11) DEFAULT NULL COMMENT 'Invoice Product ID of the Addon''s parent Product',
  `package_id` int(11) DEFAULT NULL,
  `multirate_id` int(11) DEFAULT NULL,
  `unit_id` int(10) NOT NULL,
  `unit_price` float NOT NULL,
  `qty` float NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `p_discount` float NOT NULL,
  `tax_amount` float NOT NULL,
  `sub_total` float NOT NULL,
  `delivered_qty` int(11) NOT NULL,
  `delivery_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0-Not Delivered,1-Partially Delivered,2-Fully Delivered',
  `remark` varchar(250) NOT NULL,
  `ready_time` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aip_sales_invoice_details`
--

INSERT INTO `aip_sales_invoice_details` (`id`, `invoice_id`, `product_id`, `parent_product`, `package_id`, `multirate_id`, `unit_id`, `unit_price`, `qty`, `barcode`, `p_discount`, `tax_amount`, `sub_total`, `delivered_qty`, `delivery_status`, `remark`, `ready_time`, `last_modified`, `modified_user_id`, `status`) VALUES
(52, 31, 19, NULL, NULL, 0, 3, 9.26, 5, '1111', 0, 3.704, 46.3, 0, '0', '', NULL, '2020-01-16 12:05:40', 1, '0'),
(53, 31, 307, NULL, NULL, 0, 2, 46.3, 2, '155', 0, 7.407, 92.59, 0, '0', '', NULL, '2020-01-16 12:05:40', 1, '0'),
(54, 32, 156, NULL, NULL, 0, 2, 113.89, 1, '3', 0, 9.111, 113.89, 0, '0', '', NULL, '2020-01-16 12:09:59', 1, '1'),
(55, 33, 195, NULL, NULL, 0, 2, 0, 1, '42', 0, 0, 0, 0, '0', '', NULL, '2020-01-16 12:11:24', 1, '0'),
(56, 33, 156, NULL, NULL, 0, 2, 113.89, 1, '3', 0, 9.111, 113.89, 0, '0', '', NULL, '2020-01-16 12:11:24', 1, '0'),
(57, 33, 158, NULL, NULL, 0, 2, 2.78, 1, '5', 0, 0.222, 2.78, 0, '0', '', NULL, '2020-01-16 12:11:24', 1, '0'),
(58, 34, 184, NULL, NULL, 0, 1, 422.22, 1, '31', 0, 33.778, 422.22, 0, '0', '', NULL, '2020-01-16 12:13:36', 1, '0'),
(59, 34, 178, NULL, NULL, 0, 1, 419.44, 1, '25', 0, 33.556, 419.44, 0, '0', '', NULL, '2020-01-16 12:13:36', 1, '0'),
(60, 35, 182, NULL, NULL, 0, 2, 730.56, 3, '29', 0, 175.34, 2191.68, 0, '0', '', NULL, '2020-01-16 12:11:00', 1, '1'),
(61, 35, 167, NULL, NULL, 0, 2, 42.59, 1, '14', 0, 3.407, 42.59, 0, '0', '', NULL, '2020-01-16 12:11:00', 1, '1'),
(62, 36, 207, NULL, NULL, 0, 2, 319.44, 1, '54', 0, 25.556, 319.44, 0, '0', '', NULL, '2020-01-16 12:17:57', 1, '1'),
(63, 36, 232, NULL, NULL, 0, 1, 114.81, 3, '85', 0, 27.55, 344.43, 0, '0', '', NULL, '2020-01-16 12:17:57', 1, '1'),
(64, 37, 162, NULL, NULL, 0, 1, 4.63, 4, '9', 0, 1.48, 18.52, 0, '0', '', NULL, '2020-01-17 04:19:31', 1, '1'),
(65, 37, 156, NULL, NULL, 0, 2, 113.89, 2, '3', 0, 18.22, 227.78, 0, '0', '', NULL, '2020-01-17 04:19:31', 1, '1'),
(66, 37, 158, NULL, NULL, 0, 2, 217.59, 1, '5', 0, 17.407, 217.59, 0, '0', '', NULL, '2020-01-17 04:19:31', 1, '1'),
(67, 38, 178, NULL, NULL, 0, 1, 419.44, 1, '25', 0, 33.556, 419.44, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '0'),
(68, 38, 171, NULL, NULL, 0, 1, 525.93, 1, '18', 0, 42.074, 525.93, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '0'),
(69, 38, 167, NULL, NULL, 0, 2, 42.59, 1, '14', 0, 3.407, 42.59, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '0'),
(70, 38, 169, NULL, NULL, 0, 2, 320.37, 1, '16', 0, 25.63, 320.37, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '0'),
(71, 38, 165, NULL, NULL, 0, 1, 51.85, 1, '12', 0, 4.148, 51.85, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '0'),
(72, 39, 206, NULL, NULL, 0, 2, 319.44, 2, '53', 0, 51.11, 638.88, 0, '0', '', NULL, '2020-01-17 04:25:41', 1, '1'),
(73, 39, 156, NULL, NULL, 0, 2, 113.89, 1, '3', 0, 9.111, 113.89, 0, '0', '', NULL, '2020-01-17 04:25:41', 1, '1'),
(74, 39, 155, NULL, NULL, 0, 3, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 04:25:41', 1, '1'),
(75, 40, 154, NULL, NULL, 0, 2, 422.22, 1, '1', 0, 33.778, 422.22, 0, '0', '', NULL, '2020-01-17 09:56:53', 1, '0'),
(76, 40, 155, NULL, NULL, 0, 3, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 09:56:53', 1, '0'),
(77, 41, 155, NULL, NULL, 0, 3, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 10:18:08', 1, '0'),
(78, 40, 155, NULL, NULL, 0, 0, 185.19, 2, '2', 0, 29.63, 370.38, 0, '0', '', NULL, '2020-01-17 09:56:53', 1, '1'),
(79, 40, 154, NULL, NULL, 0, 0, 422.22, 2, '1', 0, 67.56, 844.44, 0, '0', '', NULL, '2020-01-17 09:56:53', 1, '1'),
(80, 41, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 11:29:32', 1, '0'),
(81, 41, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 11:29:44', 1, '0'),
(82, 41, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 11:30:04', 1, '0'),
(83, 41, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 11:32:46', 1, '0'),
(84, 41, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 11:37:18', 1, '0'),
(85, 38, 178, NULL, NULL, 0, 0, 419.44, 1, '25', 0, 33.556, 419.44, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '1'),
(86, 38, 171, NULL, NULL, 0, 0, 525.93, 1, '18', 0, 42.074, 525.93, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '1'),
(87, 38, 169, NULL, NULL, 0, 0, 320.37, 1, '16', 0, 25.63, 320.37, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '1'),
(88, 38, 167, NULL, NULL, 0, 0, 42.59, 1, '14', 0, 3.407, 42.59, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '1'),
(89, 38, 165, NULL, NULL, 0, 0, 51.85, 1, '12', 0, 4.148, 51.85, 0, '0', '', NULL, '2020-01-17 11:34:34', 1, '1'),
(90, 41, 157, NULL, NULL, 0, 2, 33.33, 2, '4', 0, 5.33, 66.66, 0, '0', '', NULL, '2020-01-17 11:37:18', 1, '1'),
(91, 41, 156, NULL, NULL, 0, 2, 113.89, 3, '3', 0, 27.33, 341.67, 0, '0', '', NULL, '2020-01-17 11:37:18', 1, '1'),
(92, 41, 155, NULL, NULL, 0, 0, 185.19, 5, '2', 0, 74.09, 925.95, 0, '0', '', NULL, '2020-01-17 11:37:18', 1, '1'),
(93, 42, 159, NULL, NULL, 0, 1, 44.67, 5, '6', 0, 17.86, 223.35, 0, '0', 'newww,another one', NULL, '2020-01-17 13:30:30', 1, '0'),
(94, 42, 155, NULL, NULL, 0, 3, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-17 13:30:30', 1, '0'),
(95, 42, 159, NULL, NULL, 0, 0, 44.67, 1, '6', 0, 3.58, 44.67, 0, '0', 'newww,another one', NULL, '2020-01-18 09:25:47', 1, '0'),
(96, 42, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-18 09:25:47', 1, '0'),
(97, 42, 166, NULL, NULL, 0, 1, 422.22, 1, '13', 0, 33.778, 422.22, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '0'),
(98, 42, 155, NULL, NULL, 0, 3, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '0'),
(99, 42, 156, NULL, NULL, 0, 2, 113.89, 2, '3', 0, 18.222, 227.78, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '0'),
(100, 42, 159, NULL, NULL, 0, 0, 44.67, 1, '6', 0, 3.58, 44.67, 0, '0', 'newww,another one', NULL, '2020-01-18 10:06:22', 1, '0'),
(101, 42, 155, NULL, NULL, 0, 0, 185.19, 1, '2', 0, 14.815, 185.19, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '0'),
(102, 42, 157, NULL, NULL, 0, 2, 33.33, 4, '4', 0, 10.67, 133.32, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '1'),
(103, 42, 182, NULL, NULL, 0, 2, 730.56, 1, '29', 0, 58.45, 730.56, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '1'),
(104, 42, 171, NULL, NULL, 0, 1, 525.93, 1, '18', 0, 42.074, 525.93, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '1'),
(105, 42, 165, NULL, NULL, 0, 1, 51.85, 2, '12', 0, 8.3, 103.7, 0, '0', '', NULL, '2020-01-18 10:06:22', 1, '1'),
(106, 43, 218, NULL, NULL, 0, 1, 0, 1, '65', 0, 0, 0, 0, '0', '', NULL, '2020-01-18 12:34:17', 1, '1'),
(107, 43, 177, NULL, NULL, 0, 2, 525, 1, '24', 0, 42, 525, 0, '0', '', NULL, '2020-01-18 12:34:17', 1, '1'),
(108, 43, 169, NULL, NULL, 0, 2, 320.37, 1, '16', 0, 25.63, 320.37, 0, '0', '', NULL, '2020-01-18 12:34:17', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_sales_invoice_tax`
--

CREATE TABLE `aip_sales_invoice_tax` (
  `id` int(11) NOT NULL,
  `invoice_details_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax_percentage` float NOT NULL,
  `tax_amount` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_sales_invoice_tax`
--

INSERT INTO `aip_sales_invoice_tax` (`id`, `invoice_details_id`, `tax_id`, `tax_percentage`, `tax_amount`, `status`) VALUES
(99, 52, 1, 5, 0.463, '0'),
(100, 52, 2, 3, 0.2778, '0'),
(101, 53, 1, 5, 2.315, '0'),
(102, 53, 2, 3, 1.389, '0'),
(103, 54, 1, 5, 5.6945, '1'),
(104, 54, 2, 3, 3.4167, '1'),
(105, 55, 1, 5, 0, '0'),
(106, 55, 2, 3, 0, '0'),
(107, 56, 1, 5, 5.6945, '0'),
(108, 56, 2, 3, 3.4167, '0'),
(109, 57, 1, 5, 0.139, '0'),
(110, 57, 2, 3, 0.0834, '0'),
(111, 58, 1, 5, 21.111, '0'),
(112, 58, 2, 3, 12.6666, '0'),
(113, 59, 1, 5, 20.972, '0'),
(114, 59, 2, 3, 12.5832, '0'),
(115, 60, 1, 5, 36.528, '1'),
(116, 60, 2, 3, 21.9168, '1'),
(117, 61, 1, 5, 2.1295, '1'),
(118, 61, 2, 3, 1.2777, '1'),
(119, 62, 1, 5, 15.972, '1'),
(120, 62, 2, 3, 9.5832, '1'),
(121, 63, 1, 5, 5.7405, '1'),
(122, 63, 2, 3, 3.4443, '1'),
(123, 64, 1, 5, 0.2315, '1'),
(124, 64, 2, 3, 0.1389, '1'),
(125, 65, 1, 5, 5.6945, '1'),
(126, 65, 2, 3, 3.4167, '1'),
(127, 66, 1, 5, 10.8795, '1'),
(128, 66, 2, 3, 6.5277, '1'),
(129, 67, 1, 5, 20.972, '0'),
(130, 67, 2, 3, 12.5832, '0'),
(131, 68, 1, 5, 26.2965, '0'),
(132, 68, 2, 3, 15.7779, '0'),
(133, 69, 1, 5, 2.1295, '0'),
(134, 69, 2, 3, 1.2777, '0'),
(135, 70, 1, 5, 16.0185, '0'),
(136, 70, 2, 3, 9.6111, '0'),
(137, 71, 1, 5, 2.5925, '0'),
(138, 71, 2, 3, 1.5555, '0'),
(139, 72, 1, 5, 15.972, '1'),
(140, 72, 2, 3, 9.5832, '1'),
(141, 73, 1, 5, 5.6945, '1'),
(142, 73, 2, 3, 3.4167, '1'),
(143, 74, 1, 5, 9.2595, '1'),
(144, 74, 2, 3, 5.5557, '1'),
(149, 77, 1, 5, 9.2595, '0'),
(150, 77, 2, 3, 5.5557, '0'),
(151, 78, 1, 5, 9.2595, '1'),
(152, 78, 2, 3, 5.5557, '1'),
(153, 79, 1, 5, 21.111, '1'),
(154, 79, 2, 3, 12.6666, '1'),
(155, 80, 1, 5, 9.2595, '0'),
(156, 80, 2, 3, 5.5557, '0'),
(157, 81, 1, 5, 9.2595, '0'),
(158, 81, 2, 3, 5.5557, '0'),
(159, 82, 1, 5, 9.2595, '0'),
(160, 82, 2, 3, 5.5557, '0'),
(161, 83, 1, 5, 9.2595, '0'),
(162, 83, 2, 3, 5.5557, '0'),
(163, 84, 1, 5, 9.2595, '0'),
(164, 84, 2, 3, 5.5557, '0'),
(165, 85, 1, 5, 20.972, '1'),
(166, 85, 2, 3, 12.5832, '1'),
(167, 86, 1, 5, 26.2965, '1'),
(168, 86, 2, 3, 15.7779, '1'),
(169, 87, 1, 5, 16.0185, '1'),
(170, 87, 2, 3, 9.6111, '1'),
(171, 88, 1, 5, 2.1295, '1'),
(172, 88, 2, 3, 1.2777, '1'),
(173, 89, 1, 5, 2.5925, '1'),
(174, 89, 2, 3, 1.5555, '1'),
(175, 90, 1, 5, 1.6665, '1'),
(176, 90, 2, 3, 0.9999, '1'),
(177, 91, 1, 5, 5.6945, '1'),
(178, 91, 2, 3, 3.4167, '1'),
(179, 92, 1, 5, 9.2595, '1'),
(180, 92, 2, 3, 5.5557, '1'),
(181, 93, 1, 5, 2.2335, '0'),
(182, 93, 2, 3, 1.3401, '0'),
(183, 94, 1, 5, 9.2595, '0'),
(184, 94, 2, 3, 5.5557, '0'),
(185, 95, 1, 5, 2.2335, '0'),
(186, 95, 2, 3, 1.3401, '0'),
(187, 96, 1, 5, 9.2595, '0'),
(188, 96, 2, 3, 5.5557, '0'),
(189, 97, 1, 5, 21.111, '0'),
(190, 97, 2, 3, 12.6666, '0'),
(191, 98, 1, 5, 9.2595, '0'),
(192, 98, 2, 3, 5.5557, '0'),
(193, 99, 1, 5, 5.6945, '0'),
(194, 99, 2, 3, 3.4167, '0'),
(195, 100, 1, 5, 2.2335, '0'),
(196, 100, 2, 3, 1.3401, '0'),
(197, 101, 1, 5, 9.2595, '0'),
(198, 101, 2, 3, 5.5557, '0'),
(199, 102, 1, 5, 1.6665, '1'),
(200, 102, 2, 3, 0.9999, '1'),
(201, 103, 1, 5, 36.528, '1'),
(202, 103, 2, 3, 21.9168, '1'),
(203, 104, 1, 5, 26.2965, '1'),
(204, 104, 2, 3, 15.7779, '1'),
(205, 105, 1, 5, 2.5925, '1'),
(206, 105, 2, 3, 1.5555, '1'),
(207, 106, 1, 5, 0, '1'),
(208, 106, 2, 3, 0, '1'),
(209, 107, 1, 5, 26.25, '1'),
(210, 107, 2, 3, 15.75, '1'),
(211, 108, 1, 5, 16.0185, '1'),
(212, 108, 2, 3, 9.6111, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_sale_order_details`
--

CREATE TABLE `aip_sale_order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `multirate_id` int(11) DEFAULT NULL,
  `unit_id` int(10) NOT NULL,
  `unit_price` float NOT NULL,
  `qty` float NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `p_discount` float NOT NULL,
  `tax_amount` float NOT NULL,
  `sub_total` float NOT NULL,
  `delivered_qty` int(11) NOT NULL,
  `delivery_status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0-Not Delivered,1-Partially Delivered,2-Fully Delivered',
  `remark` varchar(250) NOT NULL,
  `ready_time` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_user_id` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aip_search_table`
--

CREATE TABLE `aip_search_table` (
  `id` int(11) NOT NULL,
  `display_label` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `where_condition` text COLLATE utf8_unicode_ci NOT NULL,
  `to_be_returned` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `select_fields` text COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 = active, 1 = not active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aip_search_table_joins`
--

CREATE TABLE `aip_search_table_joins` (
  `id` int(11) NOT NULL,
  `search_id` int(11) NOT NULL,
  `join_query` text NOT NULL,
  `identifier` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_service_dependancy`
--

CREATE TABLE `aip_service_dependancy` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `name_lang` varchar(30) CHARACTER SET utf8 NOT NULL,
  `tab_image` varchar(100) NOT NULL,
  `dep_type` varchar(15) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'from product table',
  `cust_attr` enum('0','1') NOT NULL COMMENT '0-Not Customer Attribute,1-Customer Attribute',
  `tab_order` int(11) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_service_dependancy_value`
--

CREATE TABLE `aip_service_dependancy_value` (
  `id` int(11) NOT NULL,
  `mandatory` enum('0','1') NOT NULL,
  `dep_id` int(11) NOT NULL COMMENT 'Id from aip_service_dependancy',
  `dep_type` varchar(15) NOT NULL,
  `value` varchar(50) NOT NULL,
  `value_lang` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `single_multiple` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_service_dep_sel_values`
--

CREATE TABLE `aip_service_dep_sel_values` (
  `id` int(11) NOT NULL,
  `dep_value_id` int(11) NOT NULL COMMENT 'Id from aip_service_dependancy_value',
  `value` varchar(200) NOT NULL,
  `value_lang` varchar(200) CHARACTER SET utf8 NOT NULL,
  `img_txt` varchar(250) DEFAULT NULL,
  `img_txt_lang` varchar(250) CHARACTER SET utf8 NOT NULL,
  `amount` float DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_service_entry`
--

CREATE TABLE `aip_service_entry` (
  `id` int(11) NOT NULL,
  `srv_no` int(11) NOT NULL,
  `service_no` varchar(25) NOT NULL,
  `qstn_type` varchar(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `opt_val` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_service_model`
--

CREATE TABLE `aip_service_model` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `model_no` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `images` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_stock_ledger`
--

CREATE TABLE `aip_stock_ledger` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL COMMENT 'Sales invoice id when in sale',
  `operation` varchar(5) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `stock_count` float NOT NULL,
  `taken_from` int(11) DEFAULT NULL,
  `added_to` int(11) DEFAULT '0',
  `date_time` datetime NOT NULL,
  `user` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0-Deleted,1-Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_stock_ledger`
--

INSERT INTO `aip_stock_ledger` (`id`, `reference_id`, `operation`, `product_id`, `unit_id`, `stock_count`, `taken_from`, `added_to`, `date_time`, `user`, `status`) VALUES
(50, 31, 'S', 19, 3, 5, 1, 0, '2020-01-16 16:03:49', 1, '1'),
(51, 31, 'S', 307, 2, 2, 1, 0, '2020-01-16 16:03:49', 1, '1'),
(52, 32, 'S', 156, 2, 1, 1, 0, '2020-01-16 16:09:59', 1, '1'),
(53, 33, 'S', 195, 2, 1, 1, 0, '2020-01-16 16:10:25', 1, '0'),
(54, 33, 'S', 156, 2, 1, 1, 0, '2020-01-16 16:10:25', 1, '0'),
(55, 33, 'S', 158, 2, 1, 1, 0, '2020-01-16 16:10:25', 1, '0'),
(56, 34, 'S', 184, 1, 1, 1, 0, '2020-01-16 16:10:40', 1, '0'),
(57, 34, 'S', 178, 1, 1, 1, 0, '2020-01-16 16:10:40', 1, '0'),
(58, 35, 'S', 182, 2, 3, 1, 0, '2020-01-16 16:11:00', 1, '1'),
(59, 35, 'S', 167, 2, 1, 1, 0, '2020-01-16 16:11:00', 1, '1'),
(60, 36, 'S', 207, 2, 1, 1, 0, '2020-01-16 16:17:57', 1, '1'),
(61, 36, 'S', 232, 1, 3, 1, 0, '2020-01-16 16:17:57', 1, '1'),
(62, 37, 'S', 162, 1, 4, 1, 0, '2020-01-17 08:19:31', 1, '1'),
(63, 37, 'S', 156, 2, 2, 1, 0, '2020-01-17 08:19:31', 1, '1'),
(64, 37, 'S', 158, 2, 1, 1, 0, '2020-01-17 08:19:31', 1, '1'),
(65, 38, 'S', 178, 1, 1, 1, 0, '2020-01-17 08:21:47', 1, '1'),
(66, 38, 'S', 171, 1, 1, 1, 0, '2020-01-17 08:21:47', 1, '1'),
(67, 38, 'S', 167, 2, 1, 1, 0, '2020-01-17 08:21:47', 1, '1'),
(68, 38, 'S', 169, 2, 1, 1, 0, '2020-01-17 08:21:47', 1, '1'),
(69, 38, 'S', 165, 1, 1, 1, 0, '2020-01-17 08:21:47', 1, '1'),
(70, 39, 'S', 206, 2, 2, 1, 0, '2020-01-17 08:25:41', 1, '1'),
(71, 39, 'S', 156, 2, 1, 1, 0, '2020-01-17 08:25:41', 1, '1'),
(72, 39, 'S', 155, 3, 1, 1, 0, '2020-01-17 08:25:41', 1, '1'),
(73, 40, 'S', 154, 2, 1, 1, 0, '2020-01-17 08:45:29', 1, '1'),
(74, 40, 'S', 155, 3, 1, 1, 0, '2020-01-17 08:45:29', 1, '1'),
(75, 41, 'S', 155, 3, 1, 1, 0, '2020-01-17 08:53:14', 1, '1'),
(76, 42, 'S', 159, 1, 5, 1, 0, '2020-01-17 16:02:37', 1, '1'),
(77, 42, 'S', 155, 3, 1, 1, 0, '2020-01-17 16:02:37', 1, '1'),
(78, 43, 'S', 218, 1, 1, 1, 0, '2020-01-18 16:34:17', 1, '1'),
(79, 43, 'S', 177, 2, 1, 1, 0, '2020-01-18 16:34:17', 1, '1'),
(80, 43, 'S', 169, 2, 1, 1, 0, '2020-01-18 16:34:17', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_sub_orders`
--

CREATE TABLE `aip_sub_orders` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `order_id` int(11) NOT NULL,
  `serv_prod_id` int(11) NOT NULL,
  `sub_order_id` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `dep_pack_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_system_labels`
--

CREATE TABLE `aip_system_labels` (
  `id` int(11) NOT NULL,
  `table_name` varchar(20) NOT NULL,
  `column_name` varchar(20) NOT NULL,
  `default_label` varchar(20) NOT NULL,
  `display_label` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_system_preference`
--

CREATE TABLE `aip_system_preference` (
  `id` int(11) NOT NULL,
  `pref_type` varchar(100) NOT NULL,
  `pref_name` varchar(100) NOT NULL,
  `pref_text` varchar(100) NOT NULL,
  `parameter` varchar(50) NOT NULL,
  `business_type` varchar(20) DEFAULT NULL,
  `module_id` int(9) DEFAULT NULL COMMENT 'Under which module, this is applicable',
  `branch_id` int(9) NOT NULL,
  `purpose` text NOT NULL,
  `mandatory` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_system_preference`
--

INSERT INTO `aip_system_preference` (`id`, `pref_type`, `pref_name`, `pref_text`, `parameter`, `business_type`, `module_id`, `branch_id`, `purpose`, `mandatory`, `status`) VALUES
(1, 'common', '', '', 'tax_inclusive', '', 0, 1, 'Enable/Disable whether tax calculation is included for billing for a particular branch', '0', '1'),
(2, 'common', '', '', 'oem_workflow', NULL, 0, 1, 'whether this application is connected with OEM/client relationship', '0', '0'),
(9, 'product', 'product second name', '', 'product_second_name', NULL, 3, 1, '', '0', '0'),
(10, 'product', 'product model number', '', 'product_model_number', NULL, 3, 1, '', '1', '0'),
(11, 'product', 'online ean', '', 'online_ean', NULL, 3, 1, '', '1', '0'),
(12, 'product', 'product brand', '', 'product_brand', NULL, 3, 1, '', '1', '0'),
(13, 'product', 'product image', '', 'product_image', NULL, 3, 1, '', '1', '1'),
(14, 'product', 'product type', '', 'product_type', NULL, 3, 1, '', '1', '1'),
(15, 'product', 'minimum stock', '', 'minimum_stock', NULL, 3, 1, '', '1', '0'),
(16, 'product', 'maximum stock', '', 'maximum_stock', NULL, 3, 1, '', '1', '0'),
(18, 'product', 'purchase rate', '', 'purchase_rate', NULL, 3, 1, '', '1', '0'),
(19, 'product', 'rate type', '', 'rate_type', NULL, 3, 1, '', '1', '0'),
(20, 'product', 'sale unit', '', 'sale_unit', NULL, 3, 1, '', '0', '1'),
(21, 'product', 'purchase unit', '', 'purchase_unit', NULL, 3, 1, '', '0', '1'),
(22, 'user', 'Name Lang', '', 'acc_name2', NULL, NULL, 1, '', '1', '0'),
(23, 'user', 'city', '', 'city', NULL, NULL, 1, '', '1', '0'),
(24, 'user', 'location', '', 'location', NULL, NULL, 1, '', '1', '0'),
(25, 'user', 'telephone', '', 'telephone', NULL, NULL, 1, '', '1', '0'),
(26, 'user', 'address', '', 'address', NULL, NULL, 1, '', '1', '0'),
(27, 'user', 'language', '', 'language', NULL, NULL, 1, '', '1', '0'),
(28, 'product', 'mrp', '', 'mrp', NULL, 3, 1, '', '1', '0'),
(29, 'pos', 'Customer Card', '', 'customer_card', NULL, NULL, 1, '', '0', '1'),
(30, 'pos', 'Customer mobile', '', 'customer_mobile', NULL, NULL, 1, '', '0', '1'),
(31, 'pos', 'Customer Name', '', 'customer_name', NULL, NULL, 1, '', '0', '1'),
(32, 'pos', 'Customer Address1', '', 'customer_address1', NULL, NULL, 1, '', '0', '1'),
(33, 'pos', 'Customer Address2', '', 'customer_address2', NULL, NULL, 1, '', '0', '1'),
(34, 'pos', 'Other Details', '', 'other_details', NULL, NULL, 1, '', '1', '1'),
(35, 'pos', 'Assign Order to Salesman', '', 'assign_order_to_salesman', NULL, NULL, 1, '', '0', '0'),
(36, 'product', 'Allow custom sale price greater than sale price', '', 'allow_custom_sale_price_greater_than_sale_price', NULL, 3, 1, '', '1', '1'),
(37, 'pos', 'Payment method Image Display', '', 'payment_method_img_display', NULL, NULL, 1, 'To show the Image type in the payment PopUP', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_table_data`
--

CREATE TABLE `aip_table_data` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `salesman` int(11) NOT NULL,
  `invoiced_user` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `added_time` time NOT NULL,
  `modified_date` date NOT NULL,
  `modified_time` time NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=>opened 0=>closed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_table_data`
--

INSERT INTO `aip_table_data` (`id`, `tbl_id`, `invoice_id`, `customer_id`, `salesman`, `invoiced_user`, `counter`, `added_date`, `added_time`, `modified_date`, `modified_time`, `status`) VALUES
(4, 8, '36', '10', 1, 1, 1, '2020-01-16', '16:17:57', '2020-01-16', '16:17:57', 1),
(5, 7, '37', '10', 1, 1, 1, '2020-01-17', '08:19:31', '2020-01-17', '08:19:31', 1),
(7, 6, '39', '10', 1, 1, 1, '2020-01-17', '08:25:41', '2020-01-17', '08:25:41', 1),
(10, 10, '40', '10', 1, 1, 1, '2020-01-17', '13:56:53', '2020-01-17', '13:56:53', 1),
(16, 9, '38', '10', 1, 1, 1, '2020-01-17', '15:34:34', '2020-01-17', '15:34:34', 1),
(17, 4, '41', '10', 1, 1, 1, '2020-01-17', '15:37:18', '2020-01-17', '15:37:18', 1),
(21, 11, '42', '10', 1, 1, 1, '2020-01-18', '14:06:22', '2020-01-18', '14:06:22', 1),
(22, 19, '43', '10', 1, 1, 1, '2020-01-18', '16:34:17', '2020-01-18', '16:34:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_table_manager`
--

CREATE TABLE `aip_table_manager` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `number_of_chairs` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1-round,2-square',
  `image` varchar(100) NOT NULL,
  `position_top` text NOT NULL,
  `position_left` text NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_table_manager`
--

INSERT INTO `aip_table_manager` (`id`, `name`, `parent_id`, `branch_id`, `number_of_chairs`, `type`, `image`, `position_top`, `position_left`, `created_user`, `created_date`, `status`) VALUES
(1, 'Ground Floor', 0, 1, 0, 0, '', '', '', 1, '2020-01-03 12:36:26', 1),
(2, 'First Floor', 0, 1, 0, 0, '', '', '', 1, '2020-01-03 12:36:25', 1),
(3, 'Second Floor', 0, 1, 0, 0, '', '', '', 1, '2020-01-03 12:36:24', 1),
(4, 'A-1', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:03', 1),
(5, 'A-2', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(6, 'A-3', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(7, 'A-4', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(8, 'A-5', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(9, 'A-6', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(10, 'A-7', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(11, 'A-8', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(12, 'A-9', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(13, 'A-10', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(14, 'A-11', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(15, 'A-12', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(16, 'A-13', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(17, 'A-14', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(18, 'A-15', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(19, 'A-16', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(20, 'A-17', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(21, 'A-18', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(22, 'A-19', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(23, 'A-20', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(24, 'A-21', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(25, 'A-22', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(26, 'A-23', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(27, 'A-24', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(28, 'A-25', 1, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(29, 'VIP-1', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(30, 'VIP-2', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(31, 'VIP-3', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(32, 'VIP-4', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(33, 'VIP-5', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(34, 'VIP-6', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(35, 'VIP-7', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(36, 'VIP-8', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(37, 'VIP-9', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(38, 'VIP-10', 3, 1, 4, 1, '', '', '', 0, '2020-01-03 14:34:10', 1),
(39, 'B-1', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(40, 'B-2', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(41, 'B-3', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(42, 'B-4', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(43, 'B-5', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(44, 'B-6', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(45, 'B-7', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(46, 'B-8', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(47, 'B-9', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(48, 'B-10', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(49, 'B-11', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(50, 'B-12', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(51, 'B-13', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(52, 'B-14', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(53, 'B-15', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(54, 'B-16', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(55, 'B-17', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(56, 'B-18', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(57, 'B-19', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1),
(58, 'B-20', 2, 1, 4, 1, '', '', '', 0, '2020-01-06 10:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aip_tabs`
--

CREATE TABLE `aip_tabs` (
  `id` int(11) NOT NULL,
  `tab_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aip_tabs`
--

INSERT INTO `aip_tabs` (`id`, `tab_name`, `display_name`) VALUES
(1, 'Customer', 'Customer'),
(2, 'Order info', 'Order info'),
(3, 'Service', 'Service'),
(4, 'Orders', 'Orders');

-- --------------------------------------------------------

--
-- Table structure for table `aip_tax`
--

CREATE TABLE `aip_tax` (
  `id` int(11) NOT NULL,
  `tax_name` varchar(25) NOT NULL,
  `display_name` varchar(25) NOT NULL,
  `tax_short_name` varchar(10) NOT NULL,
  `tax_value` varchar(10) NOT NULL,
  `effect_from` date NOT NULL,
  `effect_to` date NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0-Disable,1-Enable',
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_tax`
--

INSERT INTO `aip_tax` (`id`, `tax_name`, `display_name`, `tax_short_name`, `tax_value`, `effect_from`, `effect_to`, `status`, `created_user`, `created_time`) VALUES
(1, 'VAT', 'VAT', 'VAT', '5', '2019-10-20', '2020-12-01', '1', '1', '2019-10-02 05:16:56'),
(2, 'GST', 'gst', 'GST', '3', '2019-12-01', '2020-12-01', '1', '1', '2019-11-01 07:09:23'),
(4, 'Income Tax', 'income t', 'IN', '20%', '2019-11-03', '2020-01-31', '0', '1', '2019-11-01 07:11:15'),
(5, 'taxx', 'xc', 'df', '78', '2019-11-20', '2019-11-29', '0', '1', '2019-11-02 07:52:46'),
(16, 'tax new', 'zasdi', 'tt', '67%', '2019-11-20', '2019-11-28', '1', '1', '2019-11-05 05:47:42'),
(17, 'sdgf', 'sdg', 'd', '9%', '2019-10-31', '2019-11-02', '1', '1', '2019-11-05 05:49:02'),
(18, 'xdg', 'xsdg', 'sd', '5%', '2019-11-26', '2019-11-29', '0', '1', '2019-11-05 05:50:54'),
(19, 'xdfsg', 'dfg', 'dfg', '74', '2019-11-26', '2019-11-29', '1', 'admin', '2019-11-05 09:54:36'),
(20, 'vat44', 'dfgh', 'gh', '7', '2019-12-12', '2019-12-19', '1', '1', '2019-12-05 04:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `aip_tax_to_product`
--

CREATE TABLE `aip_tax_to_product` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_user` varchar(20) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_tax_to_product`
--

INSERT INTO `aip_tax_to_product` (`id`, `branch_id`, `tax_id`, `product_id`, `created_user`, `created_time`) VALUES
(1, 1, 1, 159, '1', '2019-12-16 11:01:07'),
(2, 1, 1, 160, '1', '2019-12-16 11:01:07'),
(3, 1, 1, 161, '1', '2019-12-16 11:01:07'),
(4, 1, 1, 162, '1', '2019-12-16 11:01:08'),
(5, 1, 1, 163, '1', '2019-12-16 11:01:08'),
(6, 1, 1, 164, '1', '2019-12-16 11:01:08'),
(7, 1, 1, 165, '1', '2019-12-16 11:01:08'),
(8, 1, 1, 166, '1', '2019-12-16 11:01:08'),
(9, 1, 1, 167, '1', '2019-12-16 11:01:08'),
(10, 1, 1, 168, '1', '2019-12-16 11:01:08'),
(11, 1, 1, 169, '1', '2019-12-16 11:01:08'),
(12, 1, 1, 170, '1', '2019-12-16 11:01:08'),
(13, 1, 1, 171, '1', '2019-12-16 11:01:08'),
(14, 1, 1, 172, '1', '2019-12-16 11:01:08'),
(15, 1, 1, 173, '1', '2019-12-16 11:01:08'),
(16, 1, 1, 174, '1', '2019-12-16 11:01:08'),
(17, 1, 1, 176, '1', '2019-12-16 11:01:08'),
(18, 1, 1, 177, '1', '2019-12-16 11:01:08'),
(19, 1, 1, 178, '1', '2019-12-16 11:01:08'),
(20, 1, 1, 179, '1', '2019-12-16 11:01:08'),
(21, 1, 1, 180, '1', '2019-12-16 11:01:08'),
(22, 1, 1, 181, '1', '2019-12-16 11:01:08'),
(23, 1, 1, 182, '1', '2019-12-16 11:01:08'),
(24, 1, 1, 183, '1', '2019-12-16 11:01:08'),
(25, 1, 1, 184, '1', '2019-12-16 11:01:08'),
(26, 1, 1, 185, '1', '2019-12-16 11:01:08'),
(27, 1, 1, 186, '1', '2019-12-16 11:01:08'),
(28, 1, 1, 187, '1', '2019-12-16 11:01:08'),
(29, 1, 1, 188, '1', '2019-12-16 11:01:08'),
(30, 1, 1, 189, '1', '2019-12-16 11:01:08'),
(31, 1, 1, 190, '1', '2019-12-16 11:01:08'),
(32, 1, 1, 191, '1', '2019-12-16 11:01:08'),
(33, 1, 1, 192, '1', '2019-12-16 11:01:08'),
(34, 1, 1, 193, '1', '2019-12-16 11:01:08'),
(35, 1, 1, 194, '1', '2019-12-16 11:01:08'),
(36, 1, 1, 195, '1', '2019-12-16 11:01:08'),
(37, 1, 1, 196, '1', '2019-12-16 11:01:08'),
(38, 1, 1, 197, '1', '2019-12-16 11:01:08'),
(39, 1, 1, 198, '1', '2019-12-16 11:01:08'),
(40, 1, 1, 199, '1', '2019-12-16 11:01:08'),
(41, 1, 1, 1, '1', '2019-12-23 05:49:54'),
(42, 1, 2, 1, '1', '2019-12-23 05:49:54'),
(43, 1, 1, 2, '1', '2019-12-23 05:49:54'),
(44, 1, 2, 2, '1', '2019-12-23 05:49:54'),
(45, 1, 1, 3, '1', '2019-12-23 05:49:54'),
(46, 1, 2, 3, '1', '2019-12-23 05:49:54'),
(47, 1, 1, 4, '1', '2019-12-23 05:49:54'),
(48, 1, 2, 4, '1', '2019-12-23 05:49:54'),
(49, 1, 1, 5, '1', '2019-12-23 05:49:54'),
(50, 1, 2, 5, '1', '2019-12-23 05:49:54'),
(51, 1, 1, 6, '1', '2019-12-23 05:49:54'),
(52, 1, 2, 6, '1', '2019-12-23 05:49:54'),
(53, 1, 1, 7, '1', '2019-12-23 05:49:54'),
(54, 1, 2, 7, '1', '2019-12-23 05:49:54'),
(55, 1, 1, 8, '1', '2019-12-23 05:49:54'),
(56, 1, 2, 8, '1', '2019-12-23 05:49:54'),
(57, 1, 1, 9, '1', '2019-12-23 05:49:54'),
(58, 1, 2, 9, '1', '2019-12-23 05:49:54'),
(59, 1, 1, 10, '1', '2019-12-23 05:49:54'),
(60, 1, 2, 10, '1', '2019-12-23 05:49:54'),
(61, 1, 1, 11, '1', '2019-12-23 05:49:54'),
(62, 1, 2, 11, '1', '2019-12-23 05:49:54'),
(63, 1, 1, 12, '1', '2019-12-23 05:49:54'),
(64, 1, 2, 12, '1', '2019-12-23 05:49:54'),
(65, 1, 1, 19, '1', '2019-12-23 05:49:54'),
(66, 1, 2, 19, '1', '2019-12-23 05:49:54'),
(67, 1, 1, 21, '1', '2019-12-23 05:49:54'),
(68, 1, 2, 21, '1', '2019-12-23 05:49:54'),
(69, 1, 1, 22, '1', '2019-12-23 05:49:54'),
(70, 1, 2, 22, '1', '2019-12-23 05:49:54'),
(71, 1, 1, 23, '1', '2019-12-23 05:49:54'),
(72, 1, 2, 23, '1', '2019-12-23 05:49:54'),
(73, 1, 1, 24, '1', '2019-12-23 05:49:54'),
(74, 1, 2, 24, '1', '2019-12-23 05:49:54'),
(75, 1, 1, 25, '1', '2019-12-23 05:49:54'),
(76, 1, 2, 25, '1', '2019-12-23 05:49:54'),
(77, 1, 1, 26, '1', '2019-12-23 05:49:54'),
(78, 1, 2, 26, '1', '2019-12-23 05:49:54'),
(79, 1, 1, 27, '1', '2019-12-23 05:49:54'),
(80, 1, 2, 27, '1', '2019-12-23 05:49:54'),
(81, 1, 1, 28, '1', '2019-12-23 05:49:54'),
(82, 1, 2, 28, '1', '2019-12-23 05:49:54'),
(83, 1, 1, 29, '1', '2019-12-23 05:49:54'),
(84, 1, 2, 29, '1', '2019-12-23 05:49:54'),
(85, 1, 1, 35, '1', '2019-12-23 05:49:54'),
(86, 1, 2, 35, '1', '2019-12-23 05:49:54'),
(87, 1, 1, 36, '1', '2019-12-23 05:49:54'),
(88, 1, 2, 36, '1', '2019-12-23 05:49:54'),
(89, 1, 1, 37, '1', '2019-12-23 05:49:54'),
(90, 1, 2, 37, '1', '2019-12-23 05:49:54'),
(91, 1, 1, 38, '1', '2019-12-23 05:49:54'),
(92, 1, 2, 38, '1', '2019-12-23 05:49:54'),
(93, 1, 1, 39, '1', '2019-12-23 05:49:54'),
(94, 1, 2, 39, '1', '2019-12-23 05:49:54'),
(95, 1, 1, 40, '1', '2019-12-23 05:49:54'),
(96, 1, 2, 40, '1', '2019-12-23 05:49:54'),
(97, 1, 1, 42, '1', '2019-12-23 05:49:54'),
(98, 1, 2, 42, '1', '2019-12-23 05:49:54'),
(99, 1, 1, 43, '1', '2019-12-23 05:49:54'),
(100, 1, 2, 43, '1', '2019-12-23 05:49:54'),
(101, 1, 1, 44, '1', '2019-12-23 05:49:54'),
(102, 1, 2, 44, '1', '2019-12-23 05:49:54'),
(103, 1, 1, 45, '1', '2019-12-23 05:49:54'),
(104, 1, 2, 45, '1', '2019-12-23 05:49:54'),
(105, 1, 1, 46, '1', '2019-12-23 05:49:54'),
(106, 1, 2, 46, '1', '2019-12-23 05:49:54'),
(107, 1, 1, 47, '1', '2019-12-23 05:49:54'),
(108, 1, 2, 47, '1', '2019-12-23 05:49:54'),
(109, 1, 1, 48, '1', '2019-12-23 05:49:54'),
(110, 1, 2, 48, '1', '2019-12-23 05:49:54'),
(111, 1, 1, 49, '1', '2019-12-23 05:49:54'),
(112, 1, 2, 49, '1', '2019-12-23 05:49:54'),
(113, 1, 1, 50, '1', '2019-12-23 05:49:54'),
(114, 1, 2, 50, '1', '2019-12-23 05:49:54'),
(115, 1, 1, 51, '1', '2019-12-23 05:49:54'),
(116, 1, 2, 51, '1', '2019-12-23 05:49:54'),
(117, 1, 1, 57, '1', '2019-12-23 05:49:54'),
(118, 1, 2, 57, '1', '2019-12-23 05:49:54'),
(119, 1, 1, 60, '1', '2019-12-23 05:49:54'),
(120, 1, 2, 60, '1', '2019-12-23 05:49:54'),
(121, 1, 1, 64, '1', '2019-12-23 05:49:54'),
(122, 1, 2, 64, '1', '2019-12-23 05:49:54'),
(123, 1, 1, 65, '1', '2019-12-23 05:49:54'),
(124, 1, 2, 65, '1', '2019-12-23 05:49:54'),
(125, 1, 1, 66, '1', '2019-12-23 05:49:54'),
(126, 1, 2, 66, '1', '2019-12-23 05:49:54'),
(127, 1, 1, 70, '1', '2019-12-23 05:49:54'),
(128, 1, 2, 70, '1', '2019-12-23 05:49:54'),
(129, 1, 1, 71, '1', '2019-12-23 05:49:54'),
(130, 1, 2, 71, '1', '2019-12-23 05:49:54'),
(131, 1, 1, 72, '1', '2019-12-23 05:49:54'),
(132, 1, 2, 72, '1', '2019-12-23 05:49:54'),
(133, 1, 1, 73, '1', '2019-12-23 05:49:54'),
(134, 1, 2, 73, '1', '2019-12-23 05:49:54'),
(135, 1, 1, 74, '1', '2019-12-23 05:49:54'),
(136, 1, 2, 74, '1', '2019-12-23 05:49:54'),
(137, 1, 1, 75, '1', '2019-12-23 05:49:54'),
(138, 1, 2, 75, '1', '2019-12-23 05:49:54'),
(139, 1, 1, 76, '1', '2019-12-23 05:49:54'),
(140, 1, 2, 76, '1', '2019-12-23 05:49:54'),
(141, 1, 1, 77, '1', '2019-12-23 05:49:54'),
(142, 1, 2, 77, '1', '2019-12-23 05:49:54'),
(143, 1, 1, 78, '1', '2019-12-23 05:49:54'),
(144, 1, 2, 78, '1', '2019-12-23 05:49:54'),
(145, 1, 1, 79, '1', '2019-12-23 05:49:54'),
(146, 1, 2, 79, '1', '2019-12-23 05:49:54'),
(147, 1, 1, 80, '1', '2019-12-23 05:49:54'),
(148, 1, 2, 80, '1', '2019-12-23 05:49:54'),
(149, 1, 1, 81, '1', '2019-12-23 05:49:54'),
(150, 1, 2, 81, '1', '2019-12-23 05:49:54'),
(151, 1, 1, 82, '1', '2019-12-23 05:49:54'),
(152, 1, 2, 82, '1', '2019-12-23 05:49:54'),
(153, 1, 1, 83, '1', '2019-12-23 05:49:54'),
(154, 1, 2, 83, '1', '2019-12-23 05:49:54'),
(155, 1, 1, 84, '1', '2019-12-23 05:49:54'),
(156, 1, 2, 84, '1', '2019-12-23 05:49:54'),
(157, 1, 1, 85, '1', '2019-12-23 05:49:54'),
(158, 1, 2, 85, '1', '2019-12-23 05:49:54'),
(159, 1, 1, 86, '1', '2019-12-23 05:49:54'),
(160, 1, 2, 86, '1', '2019-12-23 05:49:54'),
(161, 1, 1, 87, '1', '2019-12-23 05:49:54'),
(162, 1, 2, 87, '1', '2019-12-23 05:49:54'),
(163, 1, 1, 88, '1', '2019-12-23 05:49:54'),
(164, 1, 2, 88, '1', '2019-12-23 05:49:54'),
(165, 1, 1, 89, '1', '2019-12-23 05:49:54'),
(166, 1, 2, 89, '1', '2019-12-23 05:49:54'),
(167, 1, 1, 90, '1', '2019-12-23 05:49:54'),
(168, 1, 2, 90, '1', '2019-12-23 05:49:54'),
(169, 1, 1, 91, '1', '2019-12-23 05:49:54'),
(170, 1, 2, 91, '1', '2019-12-23 05:49:54'),
(171, 1, 1, 92, '1', '2019-12-23 05:49:54'),
(172, 1, 2, 92, '1', '2019-12-23 05:49:54'),
(173, 1, 1, 93, '1', '2019-12-23 05:49:54'),
(174, 1, 2, 93, '1', '2019-12-23 05:49:54'),
(175, 1, 1, 94, '1', '2019-12-23 05:49:54'),
(176, 1, 2, 94, '1', '2019-12-23 05:49:54'),
(177, 1, 1, 95, '1', '2019-12-23 05:49:54'),
(178, 1, 2, 95, '1', '2019-12-23 05:49:54'),
(179, 1, 1, 96, '1', '2019-12-23 05:49:54'),
(180, 1, 2, 96, '1', '2019-12-23 05:49:54'),
(181, 1, 1, 97, '1', '2019-12-23 05:49:54'),
(182, 1, 2, 97, '1', '2019-12-23 05:49:54'),
(183, 1, 1, 98, '1', '2019-12-23 05:49:54'),
(184, 1, 2, 98, '1', '2019-12-23 05:49:54'),
(185, 1, 1, 99, '1', '2019-12-23 05:49:54'),
(186, 1, 2, 99, '1', '2019-12-23 05:49:54'),
(187, 1, 1, 100, '1', '2019-12-23 05:49:54'),
(188, 1, 2, 100, '1', '2019-12-23 05:49:54'),
(189, 1, 1, 101, '1', '2019-12-23 05:49:54'),
(190, 1, 2, 101, '1', '2019-12-23 05:49:54'),
(191, 1, 1, 102, '1', '2019-12-23 05:49:54'),
(192, 1, 2, 102, '1', '2019-12-23 05:49:54'),
(193, 1, 1, 103, '1', '2019-12-23 05:49:54'),
(194, 1, 2, 103, '1', '2019-12-23 05:49:54'),
(195, 1, 1, 104, '1', '2019-12-23 05:49:54'),
(196, 1, 2, 104, '1', '2019-12-23 05:49:54'),
(197, 1, 1, 105, '1', '2019-12-23 05:49:54'),
(198, 1, 2, 105, '1', '2019-12-23 05:49:54'),
(199, 1, 1, 106, '1', '2019-12-23 05:49:54'),
(200, 1, 2, 106, '1', '2019-12-23 05:49:54'),
(201, 1, 1, 107, '1', '2019-12-23 05:49:54'),
(202, 1, 2, 107, '1', '2019-12-23 05:49:54'),
(203, 1, 1, 108, '1', '2019-12-23 05:49:54'),
(204, 1, 2, 108, '1', '2019-12-23 05:49:54'),
(205, 1, 1, 109, '1', '2019-12-23 05:49:54'),
(206, 1, 2, 109, '1', '2019-12-23 05:49:54'),
(207, 1, 1, 110, '1', '2019-12-23 05:49:54'),
(208, 1, 2, 110, '1', '2019-12-23 05:49:54'),
(209, 1, 1, 111, '1', '2019-12-23 05:49:54'),
(210, 1, 2, 111, '1', '2019-12-23 05:49:54'),
(211, 1, 1, 112, '1', '2019-12-23 05:49:54'),
(212, 1, 2, 112, '1', '2019-12-23 05:49:54'),
(213, 1, 1, 113, '1', '2019-12-23 05:49:54'),
(214, 1, 2, 113, '1', '2019-12-23 05:49:54'),
(215, 1, 1, 114, '1', '2019-12-23 05:49:54'),
(216, 1, 2, 114, '1', '2019-12-23 05:49:54'),
(217, 1, 1, 115, '1', '2019-12-23 05:49:54'),
(218, 1, 2, 115, '1', '2019-12-23 05:49:54'),
(219, 1, 1, 116, '1', '2019-12-23 05:49:54'),
(220, 1, 2, 116, '1', '2019-12-23 05:49:54'),
(221, 1, 1, 117, '1', '2019-12-23 05:49:54'),
(222, 1, 2, 117, '1', '2019-12-23 05:49:54'),
(223, 1, 1, 118, '1', '2019-12-23 05:49:54'),
(224, 1, 2, 118, '1', '2019-12-23 05:49:54'),
(225, 1, 1, 119, '1', '2019-12-23 05:49:54'),
(226, 1, 2, 119, '1', '2019-12-23 05:49:54'),
(227, 1, 1, 120, '1', '2019-12-23 05:49:54'),
(228, 1, 2, 120, '1', '2019-12-23 05:49:54'),
(229, 1, 1, 121, '1', '2019-12-23 05:49:54'),
(230, 1, 2, 121, '1', '2019-12-23 05:49:54'),
(231, 1, 1, 122, '1', '2019-12-23 05:49:54'),
(232, 1, 2, 122, '1', '2019-12-23 05:49:54'),
(233, 1, 1, 123, '1', '2019-12-23 05:49:54'),
(234, 1, 2, 123, '1', '2019-12-23 05:49:54'),
(235, 1, 1, 124, '1', '2019-12-23 05:49:54'),
(236, 1, 2, 124, '1', '2019-12-23 05:49:54'),
(237, 1, 1, 125, '1', '2019-12-23 05:49:54'),
(238, 1, 2, 125, '1', '2019-12-23 05:49:54'),
(239, 1, 1, 126, '1', '2019-12-23 05:49:54'),
(240, 1, 2, 126, '1', '2019-12-23 05:49:54'),
(241, 1, 1, 128, '1', '2019-12-23 05:49:54'),
(242, 1, 2, 128, '1', '2019-12-23 05:49:54'),
(243, 1, 1, 136, '1', '2019-12-23 05:49:54'),
(244, 1, 2, 136, '1', '2019-12-23 05:49:54'),
(245, 1, 1, 142, '1', '2019-12-23 05:49:54'),
(246, 1, 2, 142, '1', '2019-12-23 05:49:54'),
(247, 1, 1, 143, '1', '2019-12-23 05:49:54'),
(248, 1, 2, 143, '1', '2019-12-23 05:49:54'),
(249, 1, 1, 144, '1', '2019-12-23 05:49:54'),
(250, 1, 2, 144, '1', '2019-12-23 05:49:54'),
(251, 1, 1, 147, '1', '2019-12-23 05:49:54'),
(252, 1, 2, 147, '1', '2019-12-23 05:49:54'),
(253, 1, 1, 148, '1', '2019-12-23 05:49:54'),
(254, 1, 2, 148, '1', '2019-12-23 05:49:54'),
(255, 1, 1, 150, '1', '2019-12-23 05:49:54'),
(256, 1, 2, 150, '1', '2019-12-23 05:49:54'),
(257, 1, 1, 151, '1', '2019-12-23 05:49:54'),
(258, 1, 2, 151, '1', '2019-12-23 05:49:54'),
(259, 1, 1, 152, '1', '2019-12-23 05:49:54'),
(260, 1, 2, 152, '1', '2019-12-23 05:49:54'),
(261, 1, 1, 153, '1', '2019-12-23 05:49:54'),
(262, 1, 2, 153, '1', '2019-12-23 05:49:54'),
(263, 1, 1, 154, '1', '2019-12-23 05:49:54'),
(264, 1, 2, 154, '1', '2019-12-23 05:49:54'),
(265, 1, 1, 155, '1', '2019-12-23 05:49:54'),
(266, 1, 2, 155, '1', '2019-12-23 05:49:54'),
(267, 1, 1, 156, '1', '2019-12-23 05:49:54'),
(268, 1, 2, 156, '1', '2019-12-23 05:49:54'),
(269, 1, 1, 157, '1', '2019-12-23 05:49:54'),
(270, 1, 2, 157, '1', '2019-12-23 05:49:54'),
(271, 1, 1, 158, '1', '2019-12-23 05:49:54'),
(272, 1, 2, 158, '1', '2019-12-23 05:49:54'),
(273, 1, 2, 159, '1', '2019-12-23 05:49:54'),
(274, 1, 2, 160, '1', '2019-12-23 05:49:54'),
(275, 1, 2, 161, '1', '2019-12-23 05:49:54'),
(276, 1, 2, 162, '1', '2019-12-23 05:49:54'),
(277, 1, 2, 163, '1', '2019-12-23 05:49:54'),
(278, 1, 2, 164, '1', '2019-12-23 05:49:54'),
(279, 1, 2, 165, '1', '2019-12-23 05:49:54'),
(280, 1, 2, 166, '1', '2019-12-23 05:49:54'),
(281, 1, 2, 167, '1', '2019-12-23 05:49:54'),
(282, 1, 2, 168, '1', '2019-12-23 05:49:54'),
(283, 1, 2, 169, '1', '2019-12-23 05:49:54'),
(284, 1, 2, 170, '1', '2019-12-23 05:49:54'),
(285, 1, 2, 171, '1', '2019-12-23 05:49:54'),
(286, 1, 2, 172, '1', '2019-12-23 05:49:54'),
(287, 1, 2, 173, '1', '2019-12-23 05:49:54'),
(288, 1, 2, 174, '1', '2019-12-23 05:49:54'),
(289, 1, 2, 176, '1', '2019-12-23 05:49:54'),
(290, 1, 2, 177, '1', '2019-12-23 05:49:54'),
(291, 1, 2, 178, '1', '2019-12-23 05:49:54'),
(292, 1, 2, 179, '1', '2019-12-23 05:49:54'),
(293, 1, 2, 180, '1', '2019-12-23 05:49:54'),
(294, 1, 2, 181, '1', '2019-12-23 05:49:54'),
(295, 1, 2, 182, '1', '2019-12-23 05:49:54'),
(296, 1, 2, 183, '1', '2019-12-23 05:49:54'),
(297, 1, 2, 184, '1', '2019-12-23 05:49:54'),
(298, 1, 2, 185, '1', '2019-12-23 05:49:54'),
(299, 1, 2, 186, '1', '2019-12-23 05:49:54'),
(300, 1, 2, 187, '1', '2019-12-23 05:49:54'),
(301, 1, 2, 188, '1', '2019-12-23 05:49:54'),
(302, 1, 2, 189, '1', '2019-12-23 05:49:54'),
(303, 1, 2, 190, '1', '2019-12-23 05:49:54'),
(304, 1, 2, 191, '1', '2019-12-23 05:49:54'),
(305, 1, 2, 192, '1', '2019-12-23 05:49:54'),
(306, 1, 2, 193, '1', '2019-12-23 05:49:54'),
(307, 1, 2, 194, '1', '2019-12-23 05:49:54'),
(308, 1, 2, 195, '1', '2019-12-23 05:49:54'),
(309, 1, 2, 196, '1', '2019-12-23 05:49:54'),
(310, 1, 2, 197, '1', '2019-12-23 05:49:54'),
(311, 1, 2, 198, '1', '2019-12-23 05:49:54'),
(312, 1, 2, 199, '1', '2019-12-23 05:49:54'),
(313, 1, 1, 200, '1', '2019-12-23 05:49:54'),
(314, 1, 2, 200, '1', '2019-12-23 05:49:54'),
(315, 1, 1, 201, '1', '2019-12-23 05:49:54'),
(316, 1, 2, 201, '1', '2019-12-23 05:49:54'),
(317, 1, 1, 202, '1', '2019-12-23 05:49:54'),
(318, 1, 2, 202, '1', '2019-12-23 05:49:54'),
(319, 1, 1, 203, '1', '2019-12-23 05:49:54'),
(320, 1, 2, 203, '1', '2019-12-23 05:49:54'),
(321, 1, 1, 204, '1', '2019-12-23 05:49:54'),
(322, 1, 2, 204, '1', '2019-12-23 05:49:54'),
(323, 1, 1, 205, '1', '2019-12-23 05:49:54'),
(324, 1, 2, 205, '1', '2019-12-23 05:49:54'),
(325, 1, 1, 206, '1', '2019-12-23 05:49:54'),
(326, 1, 2, 206, '1', '2019-12-23 05:49:54'),
(327, 1, 1, 207, '1', '2019-12-23 05:49:54'),
(328, 1, 2, 207, '1', '2019-12-23 05:49:54'),
(329, 1, 1, 208, '1', '2019-12-23 05:49:54'),
(330, 1, 2, 208, '1', '2019-12-23 05:49:54'),
(331, 1, 1, 209, '1', '2019-12-23 05:49:54'),
(332, 1, 2, 209, '1', '2019-12-23 05:49:54'),
(333, 1, 1, 210, '1', '2019-12-23 05:49:54'),
(334, 1, 2, 210, '1', '2019-12-23 05:49:54'),
(335, 1, 1, 211, '1', '2019-12-23 05:49:54'),
(336, 1, 2, 211, '1', '2019-12-23 05:49:55'),
(337, 1, 1, 212, '1', '2019-12-23 05:49:55'),
(338, 1, 2, 212, '1', '2019-12-23 05:49:55'),
(339, 1, 1, 213, '1', '2019-12-23 05:49:55'),
(340, 1, 2, 213, '1', '2019-12-23 05:49:55'),
(341, 1, 1, 214, '1', '2019-12-23 05:49:55'),
(342, 1, 2, 214, '1', '2019-12-23 05:49:55'),
(343, 1, 1, 215, '1', '2019-12-23 05:49:55'),
(344, 1, 2, 215, '1', '2019-12-23 05:49:55'),
(345, 1, 1, 216, '1', '2019-12-23 05:49:55'),
(346, 1, 2, 216, '1', '2019-12-23 05:49:55'),
(347, 1, 1, 217, '1', '2019-12-23 05:49:55'),
(348, 1, 2, 217, '1', '2019-12-23 05:49:55'),
(349, 1, 1, 218, '1', '2019-12-23 05:49:55'),
(350, 1, 2, 218, '1', '2019-12-23 05:49:55'),
(351, 1, 1, 219, '1', '2019-12-23 05:49:55'),
(352, 1, 2, 219, '1', '2019-12-23 05:49:55'),
(353, 1, 1, 220, '1', '2019-12-23 05:49:55'),
(354, 1, 2, 220, '1', '2019-12-23 05:49:55'),
(355, 1, 1, 221, '1', '2019-12-23 05:49:55'),
(356, 1, 2, 221, '1', '2019-12-23 05:49:55'),
(357, 1, 1, 222, '1', '2019-12-23 05:49:55'),
(358, 1, 2, 222, '1', '2019-12-23 05:49:55'),
(359, 1, 1, 223, '1', '2019-12-23 05:49:55'),
(360, 1, 2, 223, '1', '2019-12-23 05:49:55'),
(361, 1, 1, 224, '1', '2019-12-23 05:49:55'),
(362, 1, 2, 224, '1', '2019-12-23 05:49:55'),
(363, 1, 1, 225, '1', '2019-12-23 05:49:55'),
(364, 1, 2, 225, '1', '2019-12-23 05:49:55'),
(365, 1, 1, 226, '1', '2019-12-23 05:49:55'),
(366, 1, 2, 226, '1', '2019-12-23 05:49:55'),
(367, 1, 1, 227, '1', '2019-12-23 05:49:55'),
(368, 1, 2, 227, '1', '2019-12-23 05:49:55'),
(369, 1, 1, 228, '1', '2019-12-23 05:49:55'),
(370, 1, 2, 228, '1', '2019-12-23 05:49:55'),
(371, 1, 1, 229, '1', '2019-12-23 05:49:55'),
(372, 1, 2, 229, '1', '2019-12-23 05:49:55'),
(373, 1, 1, 230, '1', '2019-12-23 05:49:55'),
(374, 1, 2, 230, '1', '2019-12-23 05:49:55'),
(375, 1, 1, 231, '1', '2019-12-23 05:49:55'),
(376, 1, 2, 231, '1', '2019-12-23 05:49:55'),
(377, 1, 1, 232, '1', '2019-12-23 05:49:55'),
(378, 1, 2, 232, '1', '2019-12-23 05:49:55'),
(379, 1, 1, 233, '1', '2019-12-23 05:49:55'),
(380, 1, 2, 233, '1', '2019-12-23 05:49:55'),
(381, 1, 1, 234, '1', '2019-12-23 05:49:55'),
(382, 1, 2, 234, '1', '2019-12-23 05:49:55'),
(383, 1, 1, 235, '1', '2019-12-23 05:49:55'),
(384, 1, 2, 235, '1', '2019-12-23 05:49:55'),
(385, 1, 1, 236, '1', '2019-12-23 05:49:55'),
(386, 1, 2, 236, '1', '2019-12-23 05:49:55'),
(387, 1, 1, 238, '1', '2019-12-23 05:49:55'),
(388, 1, 2, 238, '1', '2019-12-23 05:49:55'),
(389, 1, 1, 239, '1', '2019-12-23 05:49:55'),
(390, 1, 2, 239, '1', '2019-12-23 05:49:55'),
(391, 1, 1, 240, '1', '2019-12-23 05:49:55'),
(392, 1, 2, 240, '1', '2019-12-23 05:49:55'),
(393, 1, 1, 241, '1', '2019-12-23 05:49:55'),
(394, 1, 2, 241, '1', '2019-12-23 05:49:55'),
(395, 1, 1, 242, '1', '2019-12-23 05:49:55'),
(396, 1, 2, 242, '1', '2019-12-23 05:49:55'),
(397, 1, 1, 243, '1', '2019-12-23 05:49:55'),
(398, 1, 2, 243, '1', '2019-12-23 05:49:55'),
(399, 1, 1, 244, '1', '2019-12-23 05:49:55'),
(400, 1, 2, 244, '1', '2019-12-23 05:49:55'),
(401, 1, 1, 245, '1', '2019-12-23 05:49:55'),
(402, 1, 2, 245, '1', '2019-12-23 05:49:55'),
(403, 1, 1, 246, '1', '2019-12-23 05:49:55'),
(404, 1, 2, 246, '1', '2019-12-23 05:49:55'),
(405, 1, 1, 247, '1', '2019-12-23 05:49:55'),
(406, 1, 2, 247, '1', '2019-12-23 05:49:55'),
(407, 1, 1, 248, '1', '2019-12-23 05:49:55'),
(408, 1, 2, 248, '1', '2019-12-23 05:49:55'),
(409, 1, 1, 249, '1', '2019-12-23 05:49:55'),
(410, 1, 2, 249, '1', '2019-12-23 05:49:55'),
(411, 1, 1, 250, '1', '2019-12-23 05:49:55'),
(412, 1, 2, 250, '1', '2019-12-23 05:49:55'),
(413, 1, 1, 251, '1', '2019-12-23 05:49:55'),
(414, 1, 2, 251, '1', '2019-12-23 05:49:55'),
(415, 1, 1, 252, '1', '2019-12-23 05:49:55'),
(416, 1, 2, 252, '1', '2019-12-23 05:49:55'),
(417, 1, 1, 253, '1', '2019-12-23 05:49:55'),
(418, 1, 2, 253, '1', '2019-12-23 05:49:55'),
(419, 1, 1, 254, '1', '2019-12-23 05:49:55'),
(420, 1, 2, 254, '1', '2019-12-23 05:49:55'),
(421, 1, 1, 255, '1', '2019-12-23 05:49:55'),
(422, 1, 2, 255, '1', '2019-12-23 05:49:55'),
(423, 1, 1, 256, '1', '2019-12-23 05:49:55'),
(424, 1, 2, 256, '1', '2019-12-23 05:49:55'),
(425, 1, 1, 257, '1', '2019-12-23 05:49:55'),
(426, 1, 2, 257, '1', '2019-12-23 05:49:55'),
(427, 1, 1, 258, '1', '2019-12-23 05:49:55'),
(428, 1, 2, 258, '1', '2019-12-23 05:49:55'),
(429, 1, 1, 259, '1', '2019-12-23 05:49:55'),
(430, 1, 2, 259, '1', '2019-12-23 05:49:55'),
(431, 1, 1, 260, '1', '2019-12-23 05:49:55'),
(432, 1, 2, 260, '1', '2019-12-23 05:49:55'),
(433, 1, 1, 261, '1', '2019-12-23 05:49:55'),
(434, 1, 2, 261, '1', '2019-12-23 05:49:55'),
(435, 1, 1, 262, '1', '2019-12-23 05:49:55'),
(436, 1, 2, 262, '1', '2019-12-23 05:49:55'),
(437, 1, 1, 263, '1', '2019-12-23 05:49:55'),
(438, 1, 2, 263, '1', '2019-12-23 05:49:55'),
(439, 1, 1, 264, '1', '2019-12-23 05:49:55'),
(440, 1, 2, 264, '1', '2019-12-23 05:49:55'),
(441, 1, 1, 265, '1', '2019-12-23 05:49:55'),
(442, 1, 2, 265, '1', '2019-12-23 05:49:55'),
(443, 1, 1, 266, '1', '2019-12-23 05:49:55'),
(444, 1, 2, 266, '1', '2019-12-23 05:49:55'),
(445, 1, 1, 267, '1', '2019-12-23 05:49:55'),
(446, 1, 2, 267, '1', '2019-12-23 05:49:55'),
(447, 1, 1, 268, '1', '2019-12-23 05:49:55'),
(448, 1, 2, 268, '1', '2019-12-23 05:49:55'),
(449, 1, 1, 269, '1', '2019-12-23 05:49:55'),
(450, 1, 2, 269, '1', '2019-12-23 05:49:55'),
(451, 1, 1, 270, '1', '2019-12-23 05:49:55'),
(452, 1, 2, 270, '1', '2019-12-23 05:49:55'),
(453, 1, 1, 271, '1', '2019-12-23 05:49:55'),
(454, 1, 2, 271, '1', '2019-12-23 05:49:55'),
(455, 1, 1, 272, '1', '2019-12-23 05:49:55'),
(456, 1, 2, 272, '1', '2019-12-23 05:49:55'),
(457, 1, 1, 273, '1', '2019-12-23 05:49:55'),
(458, 1, 2, 273, '1', '2019-12-23 05:49:55'),
(459, 1, 1, 274, '1', '2019-12-23 05:49:55'),
(460, 1, 2, 274, '1', '2019-12-23 05:49:55'),
(461, 1, 1, 275, '1', '2019-12-23 05:49:55'),
(462, 1, 2, 275, '1', '2019-12-23 05:49:55'),
(463, 1, 1, 276, '1', '2019-12-23 05:49:55'),
(464, 1, 2, 276, '1', '2019-12-23 05:49:55'),
(465, 1, 1, 277, '1', '2019-12-23 05:49:55'),
(466, 1, 2, 277, '1', '2019-12-23 05:49:55'),
(467, 1, 1, 278, '1', '2019-12-23 05:49:55'),
(468, 1, 2, 278, '1', '2019-12-23 05:49:55'),
(469, 1, 1, 279, '1', '2019-12-23 05:49:55'),
(470, 1, 2, 279, '1', '2019-12-23 05:49:55'),
(471, 1, 1, 280, '1', '2019-12-23 05:49:55'),
(472, 1, 2, 280, '1', '2019-12-23 05:49:55'),
(473, 1, 1, 281, '1', '2019-12-23 05:49:55'),
(474, 1, 2, 281, '1', '2019-12-23 05:49:55'),
(475, 1, 1, 282, '1', '2019-12-23 05:49:55'),
(476, 1, 2, 282, '1', '2019-12-23 05:49:55'),
(477, 1, 1, 283, '1', '2019-12-23 05:49:55'),
(478, 1, 2, 283, '1', '2019-12-23 05:49:55'),
(479, 1, 1, 284, '1', '2019-12-23 05:49:55'),
(480, 1, 2, 284, '1', '2019-12-23 05:49:55'),
(481, 1, 1, 285, '1', '2019-12-23 05:49:55'),
(482, 1, 2, 285, '1', '2019-12-23 05:49:55'),
(483, 1, 1, 286, '1', '2019-12-23 05:49:55'),
(484, 1, 2, 286, '1', '2019-12-23 05:49:55'),
(485, 1, 1, 287, '1', '2019-12-23 05:49:55'),
(486, 1, 2, 287, '1', '2019-12-23 05:49:55'),
(487, 1, 1, 288, '1', '2019-12-23 05:49:55'),
(488, 1, 2, 288, '1', '2019-12-23 05:49:55'),
(489, 1, 1, 289, '1', '2019-12-23 05:49:55'),
(490, 1, 2, 289, '1', '2019-12-23 05:49:55'),
(491, 1, 1, 290, '1', '2019-12-23 05:49:55'),
(492, 1, 2, 290, '1', '2019-12-23 05:49:55'),
(493, 1, 1, 291, '1', '2019-12-23 05:49:55'),
(494, 1, 2, 291, '1', '2019-12-23 05:49:55'),
(495, 1, 1, 292, '1', '2019-12-23 05:49:55'),
(496, 1, 2, 292, '1', '2019-12-23 05:49:55'),
(497, 1, 1, 293, '1', '2019-12-23 05:49:55'),
(498, 1, 2, 293, '1', '2019-12-23 05:49:55'),
(499, 1, 1, 294, '1', '2019-12-23 05:49:55'),
(500, 1, 2, 294, '1', '2019-12-23 05:49:55'),
(501, 1, 1, 295, '1', '2019-12-23 05:49:55'),
(502, 1, 2, 295, '1', '2019-12-23 05:49:55'),
(503, 1, 1, 296, '1', '2019-12-23 05:49:55'),
(504, 1, 2, 296, '1', '2019-12-23 05:49:55'),
(505, 1, 1, 297, '1', '2019-12-23 05:49:55'),
(506, 1, 2, 297, '1', '2019-12-23 05:49:55'),
(507, 1, 1, 298, '1', '2019-12-23 05:49:55'),
(508, 1, 2, 298, '1', '2019-12-23 05:49:55'),
(509, 1, 1, 299, '1', '2019-12-23 05:49:55'),
(510, 1, 2, 299, '1', '2019-12-23 05:49:55'),
(511, 1, 1, 300, '1', '2019-12-23 05:49:55'),
(512, 1, 2, 300, '1', '2019-12-23 05:49:55'),
(513, 1, 1, 301, '1', '2019-12-23 05:49:55'),
(514, 1, 2, 301, '1', '2019-12-23 05:49:55'),
(515, 1, 1, 302, '1', '2019-12-23 05:49:55'),
(516, 1, 2, 302, '1', '2019-12-23 05:49:55'),
(517, 1, 1, 303, '1', '2019-12-23 05:49:55'),
(518, 1, 2, 303, '1', '2019-12-23 05:49:55'),
(519, 1, 1, 304, '1', '2019-12-23 05:49:55'),
(520, 1, 2, 304, '1', '2019-12-23 05:49:55'),
(521, 1, 1, 305, '1', '2019-12-23 05:49:55'),
(522, 1, 2, 305, '1', '2019-12-23 05:49:55'),
(523, 1, 1, 306, '1', '2019-12-23 05:49:55'),
(524, 1, 2, 306, '1', '2019-12-23 05:49:55'),
(525, 1, 1, 307, '1', '2019-12-23 05:49:55'),
(526, 1, 2, 307, '1', '2019-12-23 05:49:55'),
(527, 1, 1, 308, '1', '2019-12-23 05:49:55'),
(528, 1, 2, 308, '1', '2019-12-23 05:49:55'),
(529, 1, 1, 309, '1', '2019-12-23 05:49:55'),
(530, 1, 2, 309, '1', '2019-12-23 05:49:55'),
(531, 1, 1, 310, '1', '2019-12-23 05:49:55'),
(532, 1, 2, 310, '1', '2019-12-23 05:49:55'),
(533, 1, 1, 311, '1', '2019-12-23 05:49:55'),
(534, 1, 2, 311, '1', '2019-12-23 05:49:55'),
(535, 1, 1, 312, '1', '2019-12-23 05:49:55'),
(536, 1, 2, 312, '1', '2019-12-23 05:49:55'),
(537, 1, 1, 313, '1', '2019-12-23 05:49:55'),
(538, 1, 2, 313, '1', '2019-12-23 05:49:55'),
(539, 1, 1, 314, '1', '2019-12-23 05:49:55'),
(540, 1, 2, 314, '1', '2019-12-23 05:49:55'),
(541, 1, 1, 315, '1', '2019-12-23 05:49:55'),
(542, 1, 2, 315, '1', '2019-12-23 05:49:55'),
(543, 1, 1, 316, '1', '2019-12-23 05:49:55'),
(544, 1, 2, 316, '1', '2019-12-23 05:49:55'),
(545, 1, 1, 317, '1', '2019-12-23 05:49:55'),
(546, 1, 2, 317, '1', '2019-12-23 05:49:55'),
(547, 1, 1, 318, '1', '2019-12-23 05:49:55'),
(548, 1, 2, 318, '1', '2019-12-23 05:49:55'),
(549, 1, 1, 319, '1', '2019-12-23 05:49:55'),
(550, 1, 2, 319, '1', '2019-12-23 05:49:55'),
(551, 1, 1, 320, '1', '2019-12-23 05:49:55'),
(552, 1, 2, 320, '1', '2019-12-23 05:49:55'),
(553, 1, 1, 321, '1', '2019-12-23 05:49:55'),
(554, 1, 2, 321, '1', '2019-12-23 05:49:55'),
(555, 1, 1, 322, '1', '2019-12-23 05:49:55'),
(556, 1, 2, 322, '1', '2019-12-23 05:49:55'),
(557, 1, 1, 323, '1', '2019-12-23 05:49:55'),
(558, 1, 2, 323, '1', '2019-12-23 05:49:55'),
(559, 1, 1, 324, '1', '2019-12-23 05:49:55'),
(560, 1, 2, 324, '1', '2019-12-23 05:49:55'),
(561, 1, 1, 325, '1', '2019-12-23 05:49:55'),
(562, 1, 2, 325, '1', '2019-12-23 05:49:55'),
(563, 1, 1, 326, '1', '2019-12-23 05:49:55'),
(564, 1, 2, 326, '1', '2019-12-23 05:49:55'),
(565, 1, 1, 327, '1', '2019-12-23 05:49:55'),
(566, 1, 2, 327, '1', '2019-12-23 05:49:55'),
(567, 1, 1, 328, '1', '2019-12-23 05:49:55'),
(568, 1, 2, 328, '1', '2019-12-23 05:49:55'),
(569, 1, 1, 329, '1', '2019-12-23 05:49:55'),
(570, 1, 2, 329, '1', '2019-12-23 05:49:55'),
(571, 1, 1, 330, '1', '2019-12-23 05:49:55'),
(572, 1, 2, 330, '1', '2019-12-23 05:49:55'),
(573, 1, 1, 331, '1', '2019-12-23 05:49:55'),
(574, 1, 2, 331, '1', '2019-12-23 05:49:55'),
(575, 1, 1, 332, '1', '2019-12-23 05:49:55'),
(576, 1, 2, 332, '1', '2019-12-23 05:49:55'),
(577, 1, 1, 333, '1', '2019-12-23 05:49:55'),
(578, 1, 2, 333, '1', '2019-12-23 05:49:55'),
(579, 1, 1, 334, '1', '2019-12-23 05:49:55'),
(580, 1, 2, 334, '1', '2019-12-23 05:49:55'),
(581, 1, 1, 335, '1', '2019-12-23 05:49:55'),
(582, 1, 2, 335, '1', '2019-12-23 05:49:55'),
(583, 1, 1, 336, '1', '2019-12-23 05:49:55'),
(584, 1, 2, 336, '1', '2019-12-23 05:49:55'),
(585, 1, 1, 341, '1', '2019-12-23 05:49:55'),
(586, 1, 2, 341, '1', '2019-12-23 05:49:55'),
(587, 1, 1, 342, '1', '2019-12-23 05:49:55'),
(588, 1, 2, 342, '1', '2019-12-23 05:49:55'),
(589, 1, 1, 343, '1', '2019-12-23 05:49:55'),
(590, 1, 2, 343, '1', '2019-12-23 05:49:55'),
(591, 1, 1, 344, '1', '2019-12-23 05:49:55'),
(592, 1, 2, 344, '1', '2019-12-23 05:49:55'),
(593, 1, 1, 345, '1', '2019-12-23 05:49:55'),
(594, 1, 2, 345, '1', '2019-12-23 05:49:55'),
(595, 1, 1, 346, '1', '2019-12-23 05:49:55'),
(596, 1, 2, 346, '1', '2019-12-23 05:49:55'),
(597, 1, 1, 347, '1', '2019-12-23 05:49:55'),
(598, 1, 2, 347, '1', '2019-12-23 05:49:55'),
(599, 1, 1, 348, '1', '2019-12-23 05:49:55'),
(600, 1, 2, 348, '1', '2019-12-23 05:49:55'),
(601, 1, 1, 349, '1', '2019-12-23 05:49:55'),
(602, 1, 2, 349, '1', '2019-12-23 05:49:55'),
(603, 1, 1, 350, '1', '2019-12-23 05:49:55'),
(604, 1, 2, 350, '1', '2019-12-23 05:49:55'),
(605, 1, 1, 355, '1', '2019-12-23 05:49:55'),
(606, 1, 2, 355, '1', '2019-12-23 05:49:55'),
(607, 1, 1, 356, '1', '2019-12-23 05:49:55'),
(608, 1, 2, 356, '1', '2019-12-23 05:49:55'),
(609, 1, 1, 357, '1', '2019-12-23 05:49:55'),
(610, 1, 2, 357, '1', '2019-12-23 05:49:55'),
(611, 1, 1, 358, '1', '2019-12-23 05:49:55'),
(612, 1, 2, 358, '1', '2019-12-23 05:49:55'),
(613, 1, 1, 359, '1', '2019-12-23 05:49:55'),
(614, 1, 2, 359, '1', '2019-12-23 05:49:55'),
(615, 1, 1, 360, '1', '2019-12-23 05:49:55'),
(616, 1, 2, 360, '1', '2019-12-23 05:49:55'),
(617, 1, 1, 361, '1', '2019-12-23 05:49:55'),
(618, 1, 2, 361, '1', '2019-12-23 05:49:55'),
(619, 1, 1, 362, '1', '2019-12-23 05:49:55'),
(620, 1, 2, 362, '1', '2019-12-23 05:49:55'),
(621, 1, 1, 363, '1', '2019-12-23 05:49:55'),
(622, 1, 2, 363, '1', '2019-12-23 05:49:55'),
(623, 1, 1, 364, '1', '2019-12-23 05:49:55'),
(624, 1, 2, 364, '1', '2019-12-23 05:49:55'),
(625, 1, 1, 365, '1', '2019-12-23 05:49:55'),
(626, 1, 2, 365, '1', '2019-12-23 05:49:55'),
(627, 1, 1, 366, '1', '2019-12-23 05:49:55'),
(628, 1, 2, 366, '1', '2019-12-23 05:49:55'),
(629, 1, 1, 367, '1', '2019-12-23 05:49:55'),
(630, 1, 2, 367, '1', '2019-12-23 05:49:55'),
(631, 1, 1, 368, '1', '2019-12-23 05:49:55'),
(632, 1, 2, 368, '1', '2019-12-23 05:49:55'),
(633, 1, 1, 369, '1', '2019-12-23 05:49:55'),
(634, 1, 2, 369, '1', '2019-12-23 05:49:55'),
(635, 1, 1, 370, '1', '2019-12-23 05:49:55'),
(636, 1, 2, 370, '1', '2019-12-23 05:49:55'),
(637, 1, 1, 371, '1', '2019-12-23 05:49:55'),
(638, 1, 2, 371, '1', '2019-12-23 05:49:55'),
(639, 1, 1, 372, '1', '2019-12-23 05:49:55'),
(640, 1, 2, 372, '1', '2019-12-23 05:49:55'),
(641, 1, 1, 373, '1', '2019-12-23 05:49:55'),
(642, 1, 2, 373, '1', '2019-12-23 05:49:55'),
(643, 1, 1, 374, '1', '2019-12-23 05:49:55'),
(644, 1, 2, 374, '1', '2019-12-23 05:49:55'),
(645, 1, 1, 375, '1', '2019-12-23 05:49:55'),
(646, 1, 2, 375, '1', '2019-12-23 05:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `aip_timezones`
--

CREATE TABLE `aip_timezones` (
  `id` int(11) NOT NULL,
  `timezone_txt` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_timezones`
--

INSERT INTO `aip_timezones` (`id`, `timezone_txt`, `status`) VALUES
(1, 'Asia/Dubai', '1'),
(2, 'Asia/Bahrain', '1'),
(3, 'Asia/Muscat', '1'),
(4, 'Asia/Kolkata', '0'),
(10, 'Asia/mumbai', '0'),
(12, 'Asia/delhi', '0'),
(13, 'Asia/wyd', '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_units`
--

CREATE TABLE `aip_units` (
  `id` int(11) NOT NULL,
  `unitname` varchar(50) NOT NULL,
  `unitname_short` varchar(10) NOT NULL,
  `unitname_lang` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `unitname_lang_short` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_units`
--

INSERT INTO `aip_units` (`id`, `unitname`, `unitname_short`, `unitname_lang`, `unitname_lang_short`) VALUES
(1, 'EACH', 'EH', 'كل', 'كل'),
(2, 'HALF DOZEN', 'HD', 'نصف دزين', 'ستة'),
(3, 'DOZEN', 'DZ', ' دزينة', 'اثني عشر '),
(7, 'test1', 'dv', 'dzsf', 'dvf'),
(8, 'test2', 'aa', 'ss', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `aip_users`
--

CREATE TABLE `aip_users` (
  `id` int(11) NOT NULL,
  `account_head_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `permissions` text NOT NULL,
  `login_tried` int(11) NOT NULL,
  `reset_time` datetime DEFAULT NULL,
  `reset` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_users`
--

INSERT INTO `aip_users` (`id`, `account_head_id`, `user_type_id`, `language_id`, `username`, `password`, `permissions`, `login_tried`, `reset_time`, `reset`, `status`) VALUES
(1, 1000, 3, 1, 'admin', '$2y$10$rL6f6jdMcmgxcAhvZDX85u/zF6jDBDEiAauFeZpq.klgMFaJlXO4u', '', 0, NULL, NULL, '1'),
(6, 5, 3, 1, 'Test', '$2y$10$OJz6W.lFrd.e.flJhjSvyOMHODqrfFLWBJXUg2svU1o0r2CdmBChu', '', 0, NULL, NULL, '1'),
(7, 9, 3, 1, 'user', '$2y$10$rjEz5/87oC9jVIbmbWtcXuflM0GCe0dpt3j0.bTYYcvmAFnlkYjgi', '', 0, NULL, NULL, '0'),
(8, 10, 3, 1, 'pp', '$2y$10$dwvu.De1H.4DsnYKTKTdwu.AvwPIPp2PIM49ET7d2D.GjpEVJijbi', '', 0, NULL, NULL, '1'),
(9, 12, 2, 1, 'admin@sabash1', '$2y$10$olDOht1rtbC.oJrPhaYFlus6UvFrmWDwhMarp7O5TH139DeutC8l6', '', 0, NULL, NULL, '0'),
(10, 13, 1, 1, 'adminfggfh', '$2y$10$RX6K/7niHHFZkL.bRKNV3eEalkBBQE0z.zx8wFmm6KVlsFGirriIy', '', 0, NULL, NULL, '0'),
(11, 14, 2, 1, 'adfth', '$2y$10$Fu9kGz9B0iWOJnA.c4GxfeC88uB9y3RSy91a.nfjKablI3NssL.NW', '', 0, NULL, NULL, '0'),
(12, 15, 2, 1, 'ppghj', '$2y$10$4tDGwapzo0A./QFjBuf.YeuEwwvNGGD.OtgZkSXsk74/zWAiyUIda', '', 0, NULL, NULL, '0'),
(13, 16, 2, 1, 'ttt', '$2y$10$8RHOuCr2iUSDyi8WU423fe2Fd8VCvs7EII.SIGTVHHNUFDC9oqf/K', '', 0, NULL, NULL, '0'),
(14, 17, 1, 1, 'ghj', '$2y$10$ovB6/N3akbVABsjVnQY87ORY.Y0CI.N/12k.gWK/qmGyKwzTsYi9G', '', 0, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `aip_user_login_history`
--

CREATE TABLE `aip_user_login_history` (
  `id` int(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `region` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `os` varchar(250) NOT NULL,
  `browser` varchar(250) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `logout_behaviour` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_user_login_history`
--

INSERT INTO `aip_user_login_history` (`id`, `user_id`, `ip`, `country`, `region`, `city`, `os`, `browser`, `login_time`, `logout_time`, `logout_behaviour`) VALUES
(1, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 7', 'Chrome', '2019-10-10 10:11:52', '2019-10-10 10:13:49', ''),
(2, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 7', 'Chrome', '2019-10-10 10:14:09', NULL, ''),
(3, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 7', 'Chrome', '2019-10-10 11:52:31', NULL, ''),
(4, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 7', 'Chrome', '2019-10-10 17:33:14', NULL, ''),
(5, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 7', 'Chrome', '2019-10-11 10:08:55', NULL, ''),
(6, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 17:32:33', '2019-10-11 17:33:08', ''),
(7, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 17:33:11', '2019-10-11 17:43:30', ''),
(8, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 17:43:33', '2019-10-11 17:45:16', ''),
(9, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 17:45:19', '2019-10-11 17:53:09', ''),
(10, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 17:53:19', '2019-10-11 18:10:24', ''),
(11, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:10:34', '2019-10-11 18:13:20', ''),
(12, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:13:26', '2019-10-11 18:13:48', ''),
(13, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:13:53', NULL, ''),
(14, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:14:45', NULL, ''),
(15, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:15:20', '2019-10-11 18:16:01', ''),
(16, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:16:05', NULL, ''),
(17, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:19:22', NULL, ''),
(18, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:21:20', NULL, ''),
(19, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:23:23', NULL, ''),
(20, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:25:07', NULL, ''),
(21, 1, '117.254.182.162', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-11 18:25:59', NULL, ''),
(22, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:26:50', NULL, ''),
(23, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:30:03', NULL, ''),
(24, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:31:06', NULL, ''),
(25, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:31:29', NULL, ''),
(26, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:32:31', NULL, ''),
(27, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:34:08', NULL, ''),
(28, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:35:12', NULL, ''),
(29, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:38:12', NULL, ''),
(30, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:38:52', NULL, ''),
(31, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:39:50', NULL, ''),
(32, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:43:51', NULL, ''),
(33, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:45:38', NULL, ''),
(34, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:47:07', NULL, ''),
(35, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:47:37', NULL, ''),
(36, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:48:44', NULL, ''),
(37, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:49:55', NULL, ''),
(38, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 18:50:34', '2019-10-11 18:51:57', ''),
(39, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:00:34', '2019-10-11 19:00:43', ''),
(40, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:01:16', '2019-10-11 19:05:26', ''),
(41, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:11:25', NULL, ''),
(42, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:12:11', '2019-10-11 19:12:19', ''),
(43, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:30:23', NULL, ''),
(44, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:30:52', '2019-10-11 19:31:11', ''),
(45, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:33:36', '2019-10-11 19:33:40', ''),
(46, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:33:44', '2019-10-11 19:33:56', ''),
(47, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:34:00', '2019-10-11 19:34:10', ''),
(48, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:34:48', '2019-10-11 19:35:02', ''),
(49, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-11 19:35:06', '2019-10-11 19:35:12', ''),
(50, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 09:01:04', '2019-10-12 09:01:34', ''),
(51, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 09:01:38', '2019-10-12 09:01:49', ''),
(52, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 09:56:19', NULL, ''),
(53, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:06:50', NULL, ''),
(54, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:07:10', '2019-10-12 11:07:24', ''),
(55, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:07:47', '2019-10-12 11:11:20', ''),
(56, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:17:39', '2019-10-12 11:20:20', ''),
(57, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:20:23', NULL, ''),
(58, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:25:43', '2019-10-12 11:25:57', ''),
(59, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:26:01', '2019-10-12 11:26:06', ''),
(60, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:26:10', '2019-10-12 11:26:14', ''),
(61, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 11:26:21', NULL, ''),
(62, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 14:04:21', '2019-10-12 14:04:45', ''),
(63, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 14:04:52', NULL, ''),
(64, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-12 18:22:46', NULL, ''),
(65, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 09:12:54', NULL, ''),
(66, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 09:13:29', '2019-10-14 09:19:15', ''),
(67, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 09:19:19', '2019-10-14 09:19:30', ''),
(68, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 09:19:33', '2019-10-14 09:19:38', ''),
(69, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 09:19:41', NULL, ''),
(70, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:46:29', '2019-10-14 11:46:36', ''),
(71, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:46:39', '2019-10-14 11:46:50', ''),
(72, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:46:57', '2019-10-14 11:47:30', ''),
(73, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:47:36', '2019-10-14 11:48:10', ''),
(74, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:48:24', NULL, ''),
(75, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:48:38', NULL, ''),
(76, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:48:49', NULL, ''),
(77, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:49:17', NULL, ''),
(78, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:50:44', '2019-10-14 11:52:19', ''),
(79, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:52:28', '2019-10-14 11:54:08', ''),
(80, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:54:11', '2019-10-14 11:54:30', ''),
(81, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:55:00', '2019-10-14 11:55:29', ''),
(82, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 11:59:05', '2019-10-14 12:02:02', ''),
(83, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:02:07', '2019-10-14 12:02:51', ''),
(84, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:02:54', '2019-10-14 12:03:19', ''),
(85, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:03:23', '2019-10-14 12:05:29', ''),
(86, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:07:03', '2019-10-14 12:08:14', ''),
(87, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:08:19', '2019-10-14 12:09:12', ''),
(88, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:09:15', '2019-10-14 12:10:32', ''),
(89, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:10:51', '2019-10-14 12:10:56', ''),
(90, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:12:56', '2019-10-14 12:13:00', ''),
(91, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:13:47', '2019-10-14 12:14:39', ''),
(92, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:14:41', '2019-10-14 12:14:45', ''),
(93, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:16:21', '2019-10-14 12:17:29', ''),
(94, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:17:33', '2019-10-14 12:19:02', ''),
(95, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:19:04', '2019-10-14 12:20:56', ''),
(96, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:20:59', '2019-10-14 12:22:38', ''),
(97, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:22:41', '2019-10-14 12:23:07', ''),
(98, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:23:10', '2019-10-14 12:23:44', ''),
(99, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:23:47', '2019-10-14 12:24:16', ''),
(100, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:24:19', '2019-10-14 12:24:44', ''),
(101, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:24:47', '2019-10-14 12:26:04', ''),
(102, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:26:06', '2019-10-14 12:27:04', ''),
(103, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:27:06', '2019-10-14 12:29:18', ''),
(104, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:29:21', '2019-10-14 12:30:06', ''),
(105, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:30:12', '2019-10-14 12:30:57', ''),
(106, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:31:00', '2019-10-14 12:31:32', ''),
(107, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:31:36', '2019-10-14 12:32:44', ''),
(108, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:32:47', '2019-10-14 12:32:52', ''),
(109, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:32:55', '2019-10-14 12:33:39', ''),
(110, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:33:42', '2019-10-14 12:52:49', ''),
(111, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:52:53', '2019-10-14 12:53:02', ''),
(112, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 12:53:05', '2019-10-14 13:20:12', ''),
(113, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 13:53:03', '2019-10-14 13:53:12', ''),
(114, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 13:55:10', '2019-10-14 13:56:16', ''),
(115, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 14:19:55', '2019-10-14 14:19:59', ''),
(116, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 14:42:59', '2019-10-14 14:43:26', ''),
(117, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 14:44:57', '2019-10-14 14:45:01', ''),
(118, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 14:47:33', '2019-10-14 14:48:16', ''),
(119, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 15:39:15', '2019-10-14 15:39:27', ''),
(120, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 15:39:31', '2019-10-14 15:39:37', ''),
(121, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 15:53:18', '2019-10-14 15:54:00', ''),
(122, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 15:57:10', '2019-10-14 15:57:15', ''),
(123, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 16:34:47', '2019-10-14 16:34:55', ''),
(124, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 16:37:41', '2019-10-14 16:37:46', ''),
(125, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 16:37:51', '2019-10-14 16:38:05', ''),
(126, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 16:38:08', '2019-10-14 16:38:15', ''),
(127, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 16:38:18', '2019-10-14 16:38:21', ''),
(128, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:21:43', '2019-10-14 17:21:47', ''),
(129, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:21:52', '2019-10-14 17:23:22', ''),
(130, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:23:25', '2019-10-14 17:23:31', ''),
(131, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:29:07', '2019-10-14 17:30:19', ''),
(132, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:30:32', '2019-10-14 17:30:38', ''),
(133, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:35:24', '2019-10-14 17:35:38', ''),
(134, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:35:45', '2019-10-14 17:35:49', ''),
(135, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:36:55', '2019-10-14 17:37:04', ''),
(136, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:39:01', '2019-10-14 17:39:05', ''),
(137, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:39:28', '2019-10-14 17:39:36', ''),
(138, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:47:20', '2019-10-14 17:47:35', ''),
(139, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:47:56', NULL, ''),
(140, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:48:51', '2019-10-14 17:49:00', ''),
(141, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 17:50:43', '2019-10-14 17:50:48', ''),
(142, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:02:01', '2019-10-14 18:02:13', ''),
(143, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:02:22', '2019-10-14 18:02:27', ''),
(144, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:05:46', '2019-10-14 18:05:49', ''),
(145, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:06:04', '2019-10-14 18:06:25', ''),
(146, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:15:08', '2019-10-14 18:15:12', ''),
(147, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:28:10', '2019-10-14 18:28:29', ''),
(148, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:28:35', '2019-10-14 18:28:37', ''),
(149, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:30:37', '2019-10-14 18:34:47', ''),
(150, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:34:55', '2019-10-14 18:34:58', ''),
(151, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:37:13', '2019-10-14 18:37:22', ''),
(152, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:37:24', '2019-10-14 18:37:27', ''),
(153, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:39:50', '2019-10-14 18:39:54', ''),
(154, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:40:13', '2019-10-14 18:40:23', ''),
(155, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:41:12', '2019-10-14 18:41:16', ''),
(156, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:44:24', '2019-10-14 18:44:27', ''),
(157, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:46:36', '2019-10-14 18:46:38', ''),
(158, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:48:55', '2019-10-14 18:49:04', ''),
(159, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 18:52:25', '2019-10-14 18:52:28', ''),
(160, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:08:04', '2019-10-14 19:08:08', ''),
(161, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:08:11', '2019-10-14 19:08:17', ''),
(162, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:08:21', '2019-10-14 19:08:25', ''),
(163, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:08:33', '2019-10-14 19:08:45', ''),
(164, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:08:47', '2019-10-14 19:09:01', ''),
(165, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:09:06', '2019-10-14 19:09:09', ''),
(166, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:09:13', '2019-10-14 19:09:30', ''),
(167, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-14 19:09:33', '2019-10-14 19:09:37', ''),
(168, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 12:25:34', '2019-10-15 12:25:52', ''),
(169, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 12:25:55', '2019-10-15 12:25:59', ''),
(170, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 12:30:07', '2019-10-15 12:30:17', ''),
(171, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 12:30:20', '2019-10-15 12:30:23', ''),
(172, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:25:53', '2019-10-15 14:25:58', ''),
(173, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:27:41', '2019-10-15 14:27:46', ''),
(174, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:28:12', '2019-10-15 14:28:26', ''),
(175, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:28:33', '2019-10-15 14:28:42', ''),
(176, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:36:21', '2019-10-15 14:36:30', ''),
(177, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 14:37:28', '2019-10-15 14:37:52', ''),
(178, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 15:03:28', '2019-10-15 15:03:31', ''),
(179, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 17:37:03', '2019-10-15 17:37:09', ''),
(180, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 17:37:46', '2019-10-15 17:38:00', ''),
(181, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-15 17:38:11', '2019-10-15 17:38:34', ''),
(182, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 09:04:02', NULL, ''),
(183, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 15:46:51', '2019-10-16 15:48:45', ''),
(184, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 15:49:54', '2019-10-16 15:49:57', ''),
(185, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 15:57:07', '2019-10-16 15:57:12', ''),
(186, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 15:58:19', NULL, ''),
(187, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 16:54:36', NULL, ''),
(188, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:01:15', '2019-10-16 18:08:11', ''),
(189, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:12:40', '2019-10-16 18:12:53', ''),
(190, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:12:58', '2019-10-16 18:13:01', ''),
(191, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:21:36', '2019-10-16 18:24:21', ''),
(192, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:24:24', '2019-10-16 18:24:28', ''),
(193, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-16 18:34:45', '2019-10-16 18:34:52', ''),
(194, 1, '117.254.182.162', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-16 18:36:43', '2019-10-16 18:36:46', ''),
(195, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 10:38:24', '2019-10-17 10:38:40', 'Normal Logout'),
(196, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 11:27:19', '2019-10-17 11:32:00', 'Normal Logout'),
(197, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 12:47:50', '2019-10-17 12:47:56', 'Normal Logout'),
(198, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 12:49:30', '2019-10-17 12:49:34', 'Normal Logout'),
(199, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 12:49:38', '2019-10-17 12:49:42', 'Normal Logout'),
(200, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:08:00', '2019-10-17 14:08:16', 'Normal Logout'),
(201, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:31:14', '2019-10-17 14:32:10', 'Normal Logout'),
(202, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:33:50', '2019-10-17 14:33:52', 'Normal Logout'),
(203, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:34:34', '2019-10-17 14:34:49', 'Normal Logout'),
(204, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:35:15', '2019-10-17 14:35:27', 'Normal Logout'),
(205, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:35:38', '2019-10-17 14:35:42', 'Normal Logout'),
(206, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:36:49', '2019-10-17 14:36:51', 'Normal Logout'),
(207, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:54:22', '2019-10-17 14:54:30', 'Normal Logout'),
(208, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 14:54:34', '2019-10-17 14:54:39', 'Normal Logout'),
(209, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 15:24:53', '2019-10-17 15:26:49', 'Normal Logout'),
(210, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 15:26:52', '2019-10-17 15:26:55', 'Normal Logout'),
(211, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 15:29:12', '2019-10-17 16:15:56', 'Normal Logout'),
(212, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 16:15:59', '2019-10-17 16:16:14', 'Normal Logout'),
(213, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 16:20:45', '2019-10-17 16:20:48', 'Normal Logout'),
(214, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:15:00', '2019-10-17 17:15:18', 'Normal Logout'),
(215, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:15:21', '2019-10-17 17:15:24', 'Normal Logout'),
(216, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:19:58', '2019-10-17 17:20:09', 'Normal Logout'),
(217, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:20:12', '2019-10-17 17:20:26', 'Normal Logout'),
(218, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:40:28', '2019-10-17 17:41:08', 'Normal Logout'),
(219, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 17:42:24', '2019-10-17 18:05:35', 'Normal Logout'),
(220, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 18:07:16', '2019-10-17 18:07:21', 'Normal Logout'),
(221, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 18:10:43', '2019-10-17 18:27:18', 'Normal Logout'),
(222, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 18:30:34', '2019-10-17 18:30:37', 'Normal Logout'),
(223, 1, '117.254.182.162', 'India', 'Kerala', 'Kannur', 'Windows 10', 'Chrome', '2019-10-17 18:32:07', '2019-10-17 19:33:17', 'Normal Logout'),
(224, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 09:18:22', '2019-10-18 09:25:28', 'Normal Logout'),
(225, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 09:25:31', '2019-10-18 09:25:46', 'Normal Logout'),
(226, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 09:25:52', '2019-10-18 09:28:04', 'Normal Logout'),
(227, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 09:28:07', '2019-10-18 09:42:51', 'Normal Logout'),
(228, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 10:18:33', NULL, ''),
(229, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 10:18:47', NULL, ''),
(230, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 10:45:47', NULL, ''),
(231, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 15:25:29', '2019-10-18 15:26:31', 'Normal Logout'),
(232, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-18 15:26:37', NULL, ''),
(233, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-21 13:42:16', NULL, ''),
(234, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 08:40:46', '2019-10-22 11:50:43', 'Normal Logout'),
(235, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 14:43:44', '2019-10-22 14:47:42', 'Normal Logout'),
(236, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 15:03:28', '2019-10-22 15:46:12', 'Normal Logout'),
(237, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 16:01:24', '2019-10-22 17:45:04', 'Normal Logout'),
(238, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 17:45:21', '2019-10-22 17:47:34', 'Normal Logout'),
(239, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:05:43', '2019-10-22 18:05:47', 'Normal Logout'),
(240, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:06:17', '2019-10-22 18:22:34', 'Normal Logout'),
(241, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:22:45', '2019-10-22 18:22:53', 'Normal Logout'),
(242, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:36:43', '2019-10-22 18:36:56', 'Normal Logout'),
(243, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:38:22', '2019-10-22 18:38:59', 'Normal Logout'),
(244, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:39:06', '2019-10-22 18:39:18', 'Normal Logout'),
(245, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:39:32', '2019-10-22 18:39:37', 'Normal Logout'),
(246, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:56:19', '2019-10-22 18:56:23', 'Normal Logout'),
(247, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-22 18:56:39', NULL, ''),
(248, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 09:24:11', NULL, ''),
(249, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 09:37:28', '2019-10-23 09:37:54', 'Normal Logout'),
(250, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 09:39:54', '2019-10-23 09:52:02', 'Normal Logout'),
(251, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 10:05:03', '2019-10-23 10:31:54', 'Normal Logout'),
(252, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 10:31:57', NULL, ''),
(253, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 10:32:45', '2019-10-23 10:35:11', 'Normal Logout'),
(254, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 10:35:14', '2019-10-23 12:24:24', 'Normal Logout'),
(255, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 12:25:21', '2019-10-23 12:25:27', 'Normal Logout'),
(256, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 12:25:30', '2019-10-23 12:25:35', 'Normal Logout'),
(257, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 12:25:45', '2019-10-23 12:25:55', 'Normal Logout'),
(258, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 12:26:03', '2019-10-23 12:26:27', 'Normal Logout'),
(259, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 12:27:37', NULL, ''),
(260, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-23 13:55:09', NULL, ''),
(261, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 08:46:08', '2019-10-24 09:39:10', 'Normal Logout'),
(262, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 09:42:43', NULL, ''),
(263, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 11:58:24', '2019-10-24 16:47:20', 'Normal Logout'),
(264, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 17:51:28', '2019-10-24 18:06:46', 'Normal Logout'),
(265, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 18:06:51', '2019-10-24 18:23:12', 'Normal Logout'),
(266, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 18:23:17', '2019-10-24 18:25:09', 'Normal Logout'),
(267, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-24 18:27:01', NULL, ''),
(268, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 09:04:41', '2019-10-25 11:09:44', 'Normal Logout'),
(269, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 11:09:49', '2019-10-25 11:09:52', 'Normal Logout'),
(270, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 11:09:55', NULL, ''),
(271, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 13:51:56', NULL, ''),
(272, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 16:46:33', NULL, ''),
(273, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 17:36:08', NULL, ''),
(274, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-25 19:05:31', NULL, ''),
(275, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 09:31:35', NULL, ''),
(276, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 10:42:30', NULL, ''),
(277, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 12:08:54', '2019-10-26 12:21:06', 'Normal Logout'),
(278, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 12:21:10', '2019-10-26 12:35:02', 'Normal Logout'),
(279, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 12:41:57', NULL, ''),
(280, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 14:05:17', NULL, ''),
(281, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-26 16:42:01', NULL, ''),
(282, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 09:17:21', NULL, ''),
(283, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 13:24:02', NULL, ''),
(284, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 14:55:36', '2019-10-28 15:33:59', 'Normal Logout'),
(285, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 15:34:04', NULL, ''),
(286, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 15:34:24', NULL, ''),
(287, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 15:37:39', NULL, ''),
(288, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 15:39:01', NULL, ''),
(289, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 15:40:28', NULL, ''),
(290, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-28 18:21:22', NULL, ''),
(291, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-29 09:00:29', NULL, ''),
(292, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-29 09:32:10', '2019-10-29 17:34:13', 'Normal Logout'),
(293, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-29 17:34:21', NULL, ''),
(294, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 09:00:45', NULL, ''),
(295, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 09:01:31', '2019-10-30 11:22:17', 'Normal Logout'),
(296, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 11:22:23', '2019-10-30 11:22:46', 'Normal Logout'),
(297, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 11:22:53', '2019-10-30 11:25:58', 'Normal Logout'),
(298, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 11:26:01', '2019-10-30 13:56:36', 'Normal Logout'),
(299, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 13:57:34', '2019-10-30 14:35:46', 'Normal Logout'),
(300, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 14:35:51', '2019-10-30 15:14:11', 'Normal Logout'),
(301, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-30 15:14:14', NULL, ''),
(302, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-10-31 09:10:50', NULL, ''),
(303, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 08:59:11', '2019-11-01 09:05:20', 'Normal Logout'),
(304, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 09:05:23', '2019-11-01 09:12:37', 'Normal Logout'),
(305, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 09:12:40', '2019-11-01 09:22:29', 'Normal Logout'),
(306, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 09:22:32', '2019-11-01 09:26:20', 'Normal Logout'),
(307, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 09:26:23', '2019-11-01 09:32:52', 'Normal Logout'),
(308, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 09:32:57', NULL, ''),
(309, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-01 13:53:19', NULL, ''),
(310, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-02 09:05:48', NULL, ''),
(311, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-02 10:39:37', NULL, ''),
(312, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-02 10:49:32', NULL, ''),
(313, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-02 18:34:56', NULL, ''),
(314, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-02 18:35:19', NULL, ''),
(315, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-04 09:30:12', '2019-11-04 16:26:04', 'Normal Logout'),
(316, 6, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-04 16:26:57', '2019-11-04 16:32:30', 'Normal Logout'),
(317, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-04 16:32:36', NULL, ''),
(318, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-04 17:35:00', NULL, ''),
(319, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 08:56:58', '2019-11-05 09:39:48', 'Normal Logout'),
(320, 6, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 08:58:02', '2019-11-05 09:35:48', 'Normal Logout'),
(321, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 09:41:31', '2019-11-05 09:48:30', 'Normal Logout'),
(322, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 09:49:17', '2019-11-05 09:49:21', 'Normal Logout'),
(323, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 09:50:03', NULL, ''),
(324, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 10:17:53', '2019-11-05 10:25:49', 'Normal Logout'),
(325, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 10:26:03', '2019-11-05 10:29:30', 'Normal Logout'),
(326, 6, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 10:29:43', '2019-11-05 10:31:02', 'Normal Logout'),
(327, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 10:31:05', '2019-11-05 10:39:17', 'Normal Logout'),
(328, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 10:39:22', '2019-11-05 11:03:47', 'Normal Logout'),
(329, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 11:08:09', '2019-11-05 11:08:37', 'Normal Logout'),
(330, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 11:08:40', '2019-11-05 11:08:44', 'Normal Logout'),
(331, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 11:09:18', NULL, ''),
(332, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 11:10:09', '2019-11-05 12:31:55', 'Session Expired'),
(333, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 12:32:41', '2019-11-05 13:41:55', 'Session Expired'),
(334, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-05 13:42:01', NULL, ''),
(335, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-06 09:04:02', NULL, ''),
(336, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-06 12:20:32', NULL, ''),
(337, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-07 08:56:09', NULL, ''),
(338, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-08 09:06:07', '2019-11-08 14:05:52', 'Session Expired'),
(339, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-08 14:06:04', NULL, ''),
(340, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 09:23:37', '2019-11-09 09:53:00', 'Normal Logout'),
(341, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 09:53:04', '2019-11-09 11:36:05', 'Normal Logout'),
(342, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 11:36:09', '2019-11-09 11:52:33', 'Normal Logout'),
(343, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 11:52:47', '2019-11-09 11:54:23', 'Normal Logout'),
(344, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 11:54:26', '2019-11-09 11:57:52', 'Normal Logout'),
(345, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 11:57:55', '2019-11-09 12:00:08', 'Normal Logout'),
(346, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 12:00:17', '2019-11-09 12:07:45', 'Normal Logout'),
(347, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 12:07:48', '2019-11-09 12:07:59', 'Normal Logout'),
(348, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 12:08:02', '2019-11-09 14:37:22', 'Normal Logout'),
(349, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 14:37:26', '2019-11-09 14:48:13', 'Normal Logout'),
(350, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 14:51:55', '2019-11-09 14:58:03', 'Normal Logout'),
(351, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 14:58:06', '2019-11-09 14:59:09', 'Normal Logout'),
(352, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 15:00:35', '2019-11-09 15:01:11', 'Normal Logout'),
(353, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-09 15:14:13', '2019-11-09 15:14:55', 'Normal Logout'),
(354, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-12 13:27:46', NULL, ''),
(355, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-12 19:03:17', '2019-11-12 19:21:03', 'Normal Logout'),
(356, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-12 19:21:07', '2019-11-12 19:23:31', 'Normal Logout'),
(357, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-12 19:28:00', '2019-11-12 19:37:51', 'Logout from App'),
(358, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-12 19:38:00', NULL, ''),
(359, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 09:14:53', '2019-11-13 11:30:30', 'Session Expired'),
(360, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 11:30:33', '2019-11-13 11:56:07', 'Normal Logout'),
(361, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 12:03:55', '2019-11-13 13:39:53', 'Session Expired'),
(362, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 13:39:56', '2019-11-13 17:56:07', 'Normal Logout'),
(363, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:11:34', '2019-11-13 18:11:34', 'Session Expired'),
(364, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:12:25', '2019-11-13 18:19:18', 'Session Expired'),
(365, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:20:09', '2019-11-13 18:29:16', 'Session Expired'),
(366, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:29:20', '2019-11-13 18:36:28', 'Session Expired'),
(367, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:36:32', '2019-11-13 18:46:45', 'Session Expired'),
(368, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-13 18:46:57', NULL, ''),
(369, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 08:54:43', '2019-11-14 10:06:50', 'Session Expired'),
(370, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 10:06:53', NULL, ''),
(371, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 11:07:19', '2019-11-14 13:36:09', 'Session Expired'),
(372, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 13:37:01', '2019-11-14 16:26:44', 'Session Expired'),
(373, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 16:27:24', '2019-11-14 19:29:31', 'Session Expired'),
(374, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-14 19:29:35', NULL, ''),
(375, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 09:05:57', NULL, ''),
(376, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 09:10:00', '2019-11-15 09:22:57', 'Normal Logout'),
(377, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 09:23:00', '2019-11-15 11:18:58', 'Normal Logout'),
(378, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 11:20:37', '2019-11-15 14:02:44', 'Session Expired'),
(379, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 14:02:47', '2019-11-15 16:26:25', 'Session Expired'),
(380, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 16:26:40', NULL, ''),
(381, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-15 16:55:42', NULL, ''),
(382, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 09:01:16', '2019-11-18 12:49:06', 'Normal Logout'),
(383, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 12:49:11', '2019-11-18 12:52:04', 'Normal Logout'),
(384, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 13:22:04', '2019-11-18 14:14:24', 'Session Expired'),
(385, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 14:14:27', '2019-11-18 17:23:49', 'Session Expired'),
(386, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 17:23:53', '2019-11-18 18:36:41', 'Session Expired'),
(387, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-18 18:36:44', NULL, ''),
(388, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-19 09:01:35', '2019-11-19 13:35:09', 'Session Expired'),
(389, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-19 13:35:13', '2019-11-19 16:17:35', 'Session Expired'),
(390, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-19 16:17:46', NULL, ''),
(391, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 09:01:35', '2019-11-20 13:27:02', 'Session Expired'),
(392, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 13:27:05', '2019-11-20 14:28:57', 'Session Expired'),
(393, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 14:29:00', '2019-11-20 14:52:46', 'Session Expired'),
(394, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 14:52:49', '2019-11-20 16:26:30', 'Session Expired'),
(395, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 16:26:33', '2019-11-20 16:38:42', 'Normal Logout'),
(396, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 16:38:53', '2019-11-20 17:50:43', 'Normal Logout'),
(397, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 17:51:05', '2019-11-20 18:56:44', 'Session Expired'),
(398, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-20 18:56:48', NULL, ''),
(399, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 09:01:14', '2019-11-21 09:31:30', 'Normal Logout'),
(400, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 09:31:34', '2019-11-21 12:22:30', 'Session Expired'),
(401, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 12:22:33', NULL, ''),
(402, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 12:25:36', '2019-11-21 13:44:57', 'Session Expired');
INSERT INTO `aip_user_login_history` (`id`, `user_id`, `ip`, `country`, `region`, `city`, `os`, `browser`, `login_time`, `logout_time`, `logout_behaviour`) VALUES
(403, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 13:45:00', '2019-11-21 14:19:53', 'Session Expired'),
(404, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 14:19:58', '2019-11-21 15:01:54', 'Normal Logout'),
(405, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 15:01:57', '2019-11-21 15:27:39', 'Session Expired'),
(406, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 15:27:42', '2019-11-21 16:22:36', 'Session Expired'),
(407, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 16:22:39', '2019-11-21 17:38:30', 'Session Expired'),
(408, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 17:38:33', '2019-11-21 17:43:01', 'Normal Logout'),
(409, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-21 17:43:06', NULL, ''),
(410, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 09:32:02', '2019-11-22 10:29:47', 'Session Expired'),
(411, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 10:29:50', '2019-11-22 11:12:14', 'Session Expired'),
(412, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 11:12:18', '2019-11-22 11:44:24', 'Session Expired'),
(413, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 11:44:28', '2019-11-22 12:35:15', 'Session Expired'),
(414, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 12:35:30', NULL, ''),
(415, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 12:36:07', '2019-11-22 13:55:09', 'Session Expired'),
(416, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 13:55:12', '2019-11-22 14:18:45', 'Session Expired'),
(417, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 14:18:48', '2019-11-22 16:28:53', 'Session Expired'),
(418, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-22 16:28:56', NULL, ''),
(419, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 09:10:32', '2019-11-23 10:33:20', 'Session Expired'),
(420, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 10:33:24', '2019-11-23 11:07:20', 'Session Expired'),
(421, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 11:07:23', '2019-11-23 11:37:59', 'Session Expired'),
(422, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 11:38:03', '2019-11-23 12:53:38', 'Session Expired'),
(423, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 12:54:16', '2019-11-23 13:27:33', 'Session Expired'),
(424, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 13:27:36', '2019-11-23 14:33:18', 'Session Expired'),
(425, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 14:33:21', '2019-11-23 16:30:03', 'Session Expired'),
(426, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-23 16:30:07', NULL, ''),
(427, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 09:13:07', '2019-11-25 09:36:59', 'Normal Logout'),
(428, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 09:37:02', '2019-11-25 09:38:07', 'Normal Logout'),
(429, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 09:38:10', '2019-11-25 10:26:30', 'Session Expired'),
(430, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 10:26:33', '2019-11-25 10:30:42', 'Normal Logout'),
(431, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 10:30:45', '2019-11-25 10:33:53', 'Normal Logout'),
(432, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 10:33:58', NULL, ''),
(433, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 11:43:08', '2019-11-25 13:21:15', 'Session Expired'),
(434, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 13:21:18', '2019-11-25 13:57:00', 'Session Expired'),
(435, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 13:57:03', '2019-11-25 14:52:40', 'Session Expired'),
(436, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 14:52:43', '2019-11-25 16:29:17', 'Session Expired'),
(437, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 16:29:20', '2019-11-25 17:12:19', 'Session Expired'),
(438, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 17:12:22', '2019-11-25 19:03:40', 'Session Expired'),
(439, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-25 19:03:43', NULL, ''),
(440, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-26 09:32:42', '2019-11-26 13:14:01', 'Session Expired'),
(441, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-26 13:14:05', '2019-11-26 13:35:50', 'Session Expired'),
(442, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-26 13:35:54', '2019-11-26 16:25:46', 'Session Expired'),
(443, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-26 16:25:58', '2019-11-26 19:44:19', 'Session Expired'),
(444, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-26 19:44:22', NULL, ''),
(445, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 09:18:08', '2019-11-27 10:30:49', 'Session Expired'),
(446, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 10:30:52', '2019-11-27 13:36:06', 'Session Expired'),
(447, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 13:36:09', '2019-11-27 16:25:08', 'Session Expired'),
(448, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 16:25:12', '2019-11-27 16:51:53', 'Session Expired'),
(449, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 16:51:56', NULL, ''),
(450, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-27 18:04:52', NULL, ''),
(451, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 09:05:49', '2019-11-28 11:03:47', 'Session Expired'),
(452, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 11:03:50', '2019-11-28 13:41:39', 'Session Expired'),
(453, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 13:42:35', NULL, ''),
(454, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 17:04:44', NULL, ''),
(455, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 18:17:58', NULL, ''),
(456, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 18:18:01', NULL, ''),
(457, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-28 19:04:22', NULL, ''),
(458, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-29 09:11:58', '2019-11-29 13:48:17', 'Session Expired'),
(459, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-29 13:48:20', '2019-11-29 14:18:20', 'Session Expired'),
(460, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-29 14:18:26', '2019-11-29 16:31:28', 'Session Expired'),
(461, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-29 16:31:31', NULL, ''),
(462, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-29 17:46:02', NULL, ''),
(463, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-30 09:24:19', '2019-11-30 13:37:44', 'Session Expired'),
(464, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-30 13:37:50', '2019-11-30 14:17:03', 'Normal Logout'),
(465, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-11-30 14:17:06', NULL, ''),
(466, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-03 12:23:41', '2019-12-03 13:44:06', 'Session Expired'),
(467, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-03 13:44:09', NULL, ''),
(468, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-03 16:35:50', NULL, ''),
(469, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-04 09:04:23', NULL, ''),
(470, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-05 09:03:48', '2019-12-05 13:35:49', 'Session Expired'),
(471, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-05 13:36:01', '2019-12-05 14:40:11', 'Normal Logout'),
(472, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-05 14:40:14', '2019-12-05 18:06:22', 'Normal Logout'),
(473, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-05 18:06:24', '2019-12-05 18:08:03', 'Normal Logout'),
(474, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-05 18:08:06', NULL, ''),
(475, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-06 09:19:59', NULL, ''),
(476, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-06 12:08:15', '2019-12-06 12:10:27', 'Normal Logout'),
(477, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-06 12:10:31', '2019-12-06 13:45:30', 'Session Expired'),
(478, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-06 13:45:34', NULL, ''),
(479, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 10', 'Chrome', '2019-12-07 09:30:39', NULL, ''),
(480, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-07 12:00:48', '2019-12-07 16:37:48', 'Session Expired'),
(481, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-07 16:37:51', '2019-12-07 17:27:52', 'Normal Logout'),
(482, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-07 17:27:55', NULL, ''),
(483, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-07 18:04:48', NULL, ''),
(484, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-09 10:03:54', NULL, ''),
(485, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-11 10:00:05', '2019-12-11 11:57:06', 'Session Expired'),
(486, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-11 11:57:09', NULL, ''),
(487, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-11 17:36:26', NULL, ''),
(488, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-11 17:36:27', NULL, ''),
(489, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-12 10:19:00', NULL, ''),
(490, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-13 08:45:35', '2019-12-13 14:23:27', 'Session Expired'),
(491, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-13 14:23:31', NULL, ''),
(492, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-16 09:53:44', '2019-12-16 16:51:11', 'Normal Logout'),
(493, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-16 16:51:14', '2019-12-16 16:55:43', 'Normal Logout'),
(494, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-16 16:55:47', '2019-12-16 17:00:50', 'Normal Logout'),
(495, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-16 17:00:52', '2019-12-16 17:34:48', 'Normal Logout'),
(496, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-16 17:34:52', '2019-12-17 10:17:17', 'Session Expired'),
(497, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 10:17:25', NULL, ''),
(498, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 10:17:38', '2019-12-17 11:53:45', 'Normal Logout'),
(499, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 11:53:49', '2019-12-17 14:14:15', 'Session Expired'),
(500, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 14:14:19', NULL, ''),
(501, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 14:14:19', NULL, ''),
(502, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-17 14:14:22', NULL, ''),
(503, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-18 09:53:17', '2019-12-18 13:45:35', 'Session Expired'),
(504, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-18 13:45:41', '2019-12-19 09:59:01', 'Session Expired'),
(505, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 10:07:21', '2019-12-19 11:18:54', 'Session Expired'),
(506, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 11:18:57', '2019-12-19 12:36:32', 'Session Expired'),
(507, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 12:36:35', NULL, ''),
(508, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 12:36:35', NULL, ''),
(509, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 12:36:38', '2019-12-19 16:42:43', 'Session Expired'),
(510, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-19 16:42:47', NULL, ''),
(511, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-20 10:01:46', '2019-12-20 14:54:38', 'Session Expired'),
(512, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-20 14:54:41', '2019-12-20 16:36:48', 'Session Expired'),
(513, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-20 16:36:53', NULL, ''),
(514, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-21 09:49:12', NULL, ''),
(515, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-21 15:00:13', '2019-12-21 16:41:35', 'Session Expired'),
(516, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-21 16:41:40', NULL, ''),
(517, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-23 10:05:51', '2019-12-23 13:34:18', 'Session Expired'),
(518, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-23 13:34:21', '2019-12-23 18:21:39', 'Session Expired'),
(519, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-23 18:21:48', '2019-12-23 19:16:49', 'Session Expired'),
(520, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-23 19:24:29', NULL, ''),
(521, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 09:59:17', NULL, ''),
(522, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 09:59:35', '2019-12-24 11:30:06', 'Normal Logout'),
(523, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 11:30:33', '2019-12-24 13:10:52', 'Session Expired'),
(524, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 13:10:54', '2019-12-24 16:23:46', 'Session Expired'),
(525, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 16:23:50', NULL, ''),
(526, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 16:23:50', NULL, ''),
(527, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-24 16:23:54', NULL, ''),
(528, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-26 10:08:39', '2019-12-26 16:35:50', 'Session Expired'),
(529, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-26 16:36:52', NULL, ''),
(530, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-27 10:10:01', '2019-12-27 13:51:27', 'Session Expired'),
(531, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-27 13:51:31', NULL, ''),
(532, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-28 09:47:34', '2019-12-28 11:34:53', 'Session Expired'),
(533, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-28 11:34:56', '2019-12-28 13:37:45', 'Session Expired'),
(534, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-28 13:37:48', '2019-12-28 16:37:44', 'Session Expired'),
(535, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-28 16:37:48', NULL, ''),
(536, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-30 10:04:21', '2019-12-30 13:40:14', 'Session Expired'),
(537, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-30 13:40:16', NULL, ''),
(538, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-31 09:48:50', NULL, ''),
(539, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-31 09:48:51', NULL, ''),
(540, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-31 09:48:51', NULL, ''),
(541, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-31 09:48:51', NULL, ''),
(542, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2019-12-31 09:48:54', NULL, ''),
(543, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-01 10:16:44', NULL, ''),
(544, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-02 10:22:56', NULL, ''),
(545, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-03 10:14:32', '2020-01-03 14:18:04', 'Session Expired'),
(546, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-03 14:18:08', '2020-01-03 16:47:07', 'Session Expired'),
(547, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-03 16:47:11', NULL, ''),
(548, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-04 09:34:47', NULL, ''),
(549, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-06 10:07:06', '2020-01-06 13:33:38', 'Session Expired'),
(550, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-06 13:33:42', NULL, ''),
(551, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-07 10:02:26', '2020-01-07 16:36:34', 'Session Expired'),
(552, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-07 16:36:37', NULL, ''),
(553, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-09 10:19:36', NULL, ''),
(554, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-10 10:06:49', '2020-01-10 14:32:04', 'Session Expired'),
(555, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-10 14:32:14', NULL, ''),
(556, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-11 09:55:04', '2020-01-11 11:04:21', 'Session Expired'),
(557, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-11 11:04:24', NULL, ''),
(558, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-13 09:57:16', '2020-01-13 11:56:47', 'Session Expired'),
(559, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-13 11:56:49', '2020-01-13 13:44:33', 'Session Expired'),
(560, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-13 13:44:36', NULL, ''),
(561, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-14 10:01:20', '2020-01-14 13:55:44', 'Session Expired'),
(562, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-14 13:55:48', NULL, ''),
(563, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-15 10:54:30', '2020-01-15 11:02:38', 'Normal Logout'),
(564, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-15 11:02:41', '2020-01-15 14:09:28', 'Session Expired'),
(565, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-15 14:09:32', NULL, ''),
(566, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-16 10:04:07', NULL, ''),
(567, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-17 09:34:57', '2020-01-17 15:07:23', 'Session Expired'),
(568, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-17 15:07:40', '2020-01-17 16:59:12', 'Session Expired'),
(569, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-17 16:59:15', NULL, ''),
(570, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 09:49:13', '2020-01-18 13:44:26', 'Session Expired'),
(571, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 13:44:29', NULL, ''),
(572, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 13:44:30', NULL, ''),
(573, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 13:44:32', '2020-01-18 18:00:41', 'Session Expired'),
(574, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 18:00:44', NULL, ''),
(575, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 18:00:45', NULL, ''),
(576, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-18 18:00:47', NULL, ''),
(577, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-20 09:51:24', '2020-01-20 14:02:27', 'Session Expired'),
(578, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-20 14:02:30', NULL, ''),
(579, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-20 14:02:30', NULL, ''),
(580, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-20 14:02:32', NULL, ''),
(581, 1, '127.0.0.1', 'NIL', 'NIL', 'NIL', 'Windows 7', 'Chrome', '2020-01-21 10:05:07', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `aip_user_permissions`
--

CREATE TABLE `aip_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aip_user_types`
--

CREATE TABLE `aip_user_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL,
  `work_specific` enum('0','1') NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Disable,1-Enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_user_types`
--

INSERT INTO `aip_user_types` (`id`, `type_name`, `work_specific`, `status`) VALUES
(1, 'Driver', '0', '1'),
(2, 'Cashier', '0', '1'),
(3, 'Admin', '0', '1'),
(4, 'Sales man', '0', '1'),
(5, 'Tailor', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_widget`
--

CREATE TABLE `aip_widget` (
  `id` int(11) NOT NULL,
  `widget_name` varchar(200) NOT NULL,
  `widget_slug` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 = not active, 1 = active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_widget`
--

INSERT INTO `aip_widget` (`id`, `widget_name`, `widget_slug`, `status`) VALUES
(9, 'dashboard sales', 'dashboard_sales', '1'),
(11, 'Dashboard new orders', 'dashboard_new_orders', '1'),
(13, 'Dashboard add widget', 'dashboard_add_widget', '0'),
(14, 'Dashboard todays orders widget', 'dashboard_todays_orders_widget', '1'),
(15, 'Dashboard this week orders widget', 'dashboard_this_week_orders_widget', '1'),
(16, 'Dashboard this month orders widget', 'dashboard_this_month_orders_widget', '1'),
(17, 'Dashboard this year orders widget', 'dashboard_this_year_orders_widget', '1'),
(18, 'Pos customer orders made', 'pos_customer_orders_made', '1'),
(19, 'POS customer pending order', 'pos_customer_pending_order', '1'),
(21, 'POS customer total paid', 'pos_customer_total_paid', '1'),
(22, 'POS customer total outstanding balance', 'pos_customer_total_outstanding_balance', '1'),
(23, 'POS customer barchart holder', 'pos_customer_barchart_holder', '1'),
(24, 'POS order info orders made', 'pos_order_info_orders_made', '1'),
(25, 'POS order info orders completed', 'pos_order_info_orders_completed', '1'),
(26, 'POS order info orders delivered', 'pos_order_info_orders_delivered', '1'),
(27, 'POS order info orders cancelled', 'pos_order_info_orders_cancelled', '1'),
(28, 'POS order info partially delivered', 'pos_order_info_partially_delivered', '1'),
(29, 'POS order info orders left', 'pos_order_info_orders_left', '1'),
(30, 'POS order info recently made orders', 'pos_order_info_recently_made_orders', '1');

-- --------------------------------------------------------

--
-- Table structure for table `aip_widget_to_module`
--

CREATE TABLE `aip_widget_to_module` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_widget_to_module`
--

INSERT INTO `aip_widget_to_module` (`id`, `module_id`, `widget_id`) VALUES
(11, 20, 19),
(12, 2, 9),
(13, 2, 11),
(14, 2, 13),
(15, 2, 14),
(16, 2, 15),
(17, 2, 16),
(18, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `aip_widget_to_user`
--

CREATE TABLE `aip_widget_to_user` (
  `id` int(11) NOT NULL,
  `widget_to_module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `allowed_to_user` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aip_widget_to_user`
--

INSERT INTO `aip_widget_to_user` (`id`, `widget_to_module_id`, `user_id`, `allowed_to_user`) VALUES
(159, 8, 1, '1'),
(162, 9, 1, '1'),
(163, 7, 1, '1'),
(164, 7, 6, NULL),
(165, 8, 6, NULL),
(167, 11, 1, NULL),
(169, 12, 1, '1'),
(170, 13, 1, '1'),
(171, 14, 1, '1'),
(172, 15, 1, '1'),
(173, 16, 1, '1'),
(175, 17, 1, '1'),
(176, 12, 6, NULL),
(177, 13, 6, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aip_account_group`
--
ALTER TABLE `aip_account_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_account_head`
--
ALTER TABLE `aip_account_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_account_ledger`
--
ALTER TABLE `aip_account_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_assigned_addons`
--
ALTER TABLE `aip_assigned_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_assign_backend_dep_to_users`
--
ALTER TABLE `aip_assign_backend_dep_to_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_assign_customer_to_group`
--
ALTER TABLE `aip_assign_customer_to_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_assign_user_to_branch`
--
ALTER TABLE `aip_assign_user_to_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_backend_dependencies`
--
ALTER TABLE `aip_backend_dependencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_branch`
--
ALTER TABLE `aip_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_commision`
--
ALTER TABLE `aip_commision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_country_settings`
--
ALTER TABLE `aip_country_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_currencies`
--
ALTER TABLE `aip_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_currency_settings`
--
ALTER TABLE `aip_currency_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_customers`
--
ALTER TABLE `aip_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_customer_attributes`
--
ALTER TABLE `aip_customer_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_field_one`
--
ALTER TABLE `aip_custom_field_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_language_text`
--
ALTER TABLE `aip_custom_language_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_order_extra_column_man`
--
ALTER TABLE `aip_custom_order_extra_column_man`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_table_five`
--
ALTER TABLE `aip_custom_table_five`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_table_three_three`
--
ALTER TABLE `aip_custom_table_three_three`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_custom_table_two`
--
ALTER TABLE `aip_custom_table_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_delivery_type`
--
ALTER TABLE `aip_delivery_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_dependency_pack`
--
ALTER TABLE `aip_dependency_pack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_dependency_pack_details`
--
ALTER TABLE `aip_dependency_pack_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_dep_pack_to_product`
--
ALTER TABLE `aip_dep_pack_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_designation`
--
ALTER TABLE `aip_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_designation_to_user`
--
ALTER TABLE `aip_designation_to_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_data`
--
ALTER TABLE `aip_digital_signage_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_data_on_device`
--
ALTER TABLE `aip_digital_signage_data_on_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_devices`
--
ALTER TABLE `aip_digital_signage_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_device_sync_log`
--
ALTER TABLE `aip_digital_signage_device_sync_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_device_types`
--
ALTER TABLE `aip_digital_signage_device_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_digital_signage_groups`
--
ALTER TABLE `aip_digital_signage_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `aip_digital_signage_schedule`
--
ALTER TABLE `aip_digital_signage_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_dynamic_ele_values`
--
ALTER TABLE `aip_dynamic_ele_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_dynamic_form`
--
ALTER TABLE `aip_dynamic_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_external_communicaion_details`
--
ALTER TABLE `aip_external_communicaion_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_general`
--
ALTER TABLE `aip_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_general_ledger`
--
ALTER TABLE `aip_general_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_html_element`
--
ALTER TABLE `aip_html_element`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element` (`element`);

--
-- Indexes for table `aip_images`
--
ALTER TABLE `aip_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_image_assign`
--
ALTER TABLE `aip_image_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_image_dimensions`
--
ALTER TABLE `aip_image_dimensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_image_display_configure`
--
ALTER TABLE `aip_image_display_configure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_languages`
--
ALTER TABLE `aip_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_modules`
--
ALTER TABLE `aip_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_module_management`
--
ALTER TABLE `aip_module_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_module_tabs`
--
ALTER TABLE `aip_module_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_multirate_master`
--
ALTER TABLE `aip_multirate_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_multirate_to_product`
--
ALTER TABLE `aip_multirate_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_offers`
--
ALTER TABLE `aip_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_offer_advanced_rules`
--
ALTER TABLE `aip_offer_advanced_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_offer_products`
--
ALTER TABLE `aip_offer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_orders`
--
ALTER TABLE `aip_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_assign`
--
ALTER TABLE `aip_order_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_dep_assign_to_user`
--
ALTER TABLE `aip_order_dep_assign_to_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_details`
--
ALTER TABLE `aip_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_extra_columns`
--
ALTER TABLE `aip_order_extra_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_extra_column_queries`
--
ALTER TABLE `aip_order_extra_column_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_history`
--
ALTER TABLE `aip_order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_service_products`
--
ALTER TABLE `aip_order_service_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_order_tax`
--
ALTER TABLE `aip_order_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_password_reset`
--
ALTER TABLE `aip_password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `aip_payment_available_cards`
--
ALTER TABLE `aip_payment_available_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_payment_history`
--
ALTER TABLE `aip_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_payment_methods`
--
ALTER TABLE `aip_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_pos_settings`
--
ALTER TABLE `aip_pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_pos_tab_labels`
--
ALTER TABLE `aip_pos_tab_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_predefined_permissions`
--
ALTER TABLE `aip_predefined_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_price_to_product`
--
ALTER TABLE `aip_price_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_printer_settings`
--
ALTER TABLE `aip_printer_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product`
--
ALTER TABLE `aip_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_addons`
--
ALTER TABLE `aip_product_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_brand`
--
ALTER TABLE `aip_product_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_category`
--
ALTER TABLE `aip_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_kit`
--
ALTER TABLE `aip_product_kit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_kit_products`
--
ALTER TABLE `aip_product_kit_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kit_id` (`kit_id`,`product_id`);

--
-- Indexes for table `aip_product_otherdescription`
--
ALTER TABLE `aip_product_otherdescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_stock`
--
ALTER TABLE `aip_product_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_type`
--
ALTER TABLE `aip_product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_product_unit`
--
ALTER TABLE `aip_product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_purchase_documents`
--
ALTER TABLE `aip_purchase_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_purchase_history`
--
ALTER TABLE `aip_purchase_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_purchase_tax_to_product`
--
ALTER TABLE `aip_purchase_tax_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_sales_invoice`
--
ALTER TABLE `aip_sales_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_sales_invoice_details`
--
ALTER TABLE `aip_sales_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_sales_invoice_tax`
--
ALTER TABLE `aip_sales_invoice_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_sale_order_details`
--
ALTER TABLE `aip_sale_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_search_table`
--
ALTER TABLE `aip_search_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_search_table_joins`
--
ALTER TABLE `aip_search_table_joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_service_dependancy`
--
ALTER TABLE `aip_service_dependancy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_service_dependancy_value`
--
ALTER TABLE `aip_service_dependancy_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_service_dep_sel_values`
--
ALTER TABLE `aip_service_dep_sel_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_service_entry`
--
ALTER TABLE `aip_service_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_service_model`
--
ALTER TABLE `aip_service_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_stock_ledger`
--
ALTER TABLE `aip_stock_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_sub_orders`
--
ALTER TABLE `aip_sub_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_system_labels`
--
ALTER TABLE `aip_system_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_system_preference`
--
ALTER TABLE `aip_system_preference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_table_data`
--
ALTER TABLE `aip_table_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_table_manager`
--
ALTER TABLE `aip_table_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_tabs`
--
ALTER TABLE `aip_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_tax`
--
ALTER TABLE `aip_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_tax_to_product`
--
ALTER TABLE `aip_tax_to_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_timezones`
--
ALTER TABLE `aip_timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_units`
--
ALTER TABLE `aip_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_users`
--
ALTER TABLE `aip_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_user_login_history`
--
ALTER TABLE `aip_user_login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_user_permissions`
--
ALTER TABLE `aip_user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_user_types`
--
ALTER TABLE `aip_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_widget`
--
ALTER TABLE `aip_widget`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widget_slug` (`widget_slug`);

--
-- Indexes for table `aip_widget_to_module`
--
ALTER TABLE `aip_widget_to_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aip_widget_to_user`
--
ALTER TABLE `aip_widget_to_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aip_account_group`
--
ALTER TABLE `aip_account_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `aip_account_head`
--
ALTER TABLE `aip_account_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `aip_account_ledger`
--
ALTER TABLE `aip_account_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `aip_assigned_addons`
--
ALTER TABLE `aip_assigned_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `aip_assign_backend_dep_to_users`
--
ALTER TABLE `aip_assign_backend_dep_to_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_assign_customer_to_group`
--
ALTER TABLE `aip_assign_customer_to_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `aip_assign_user_to_branch`
--
ALTER TABLE `aip_assign_user_to_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_backend_dependencies`
--
ALTER TABLE `aip_backend_dependencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aip_branch`
--
ALTER TABLE `aip_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_commision`
--
ALTER TABLE `aip_commision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aip_country_settings`
--
ALTER TABLE `aip_country_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `aip_currencies`
--
ALTER TABLE `aip_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `aip_currency_settings`
--
ALTER TABLE `aip_currency_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aip_customers`
--
ALTER TABLE `aip_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `aip_customer_attributes`
--
ALTER TABLE `aip_customer_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_custom_field_one`
--
ALTER TABLE `aip_custom_field_one`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `aip_custom_language_text`
--
ALTER TABLE `aip_custom_language_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `aip_custom_order_extra_column_man`
--
ALTER TABLE `aip_custom_order_extra_column_man`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_custom_table_five`
--
ALTER TABLE `aip_custom_table_five`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `aip_custom_table_three_three`
--
ALTER TABLE `aip_custom_table_three_three`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `aip_custom_table_two`
--
ALTER TABLE `aip_custom_table_two`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `aip_delivery_type`
--
ALTER TABLE `aip_delivery_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_dependency_pack`
--
ALTER TABLE `aip_dependency_pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_dependency_pack_details`
--
ALTER TABLE `aip_dependency_pack_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_dep_pack_to_product`
--
ALTER TABLE `aip_dep_pack_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_designation`
--
ALTER TABLE `aip_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_designation_to_user`
--
ALTER TABLE `aip_designation_to_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_digital_signage_data`
--
ALTER TABLE `aip_digital_signage_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_digital_signage_data_on_device`
--
ALTER TABLE `aip_digital_signage_data_on_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_digital_signage_devices`
--
ALTER TABLE `aip_digital_signage_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_digital_signage_device_sync_log`
--
ALTER TABLE `aip_digital_signage_device_sync_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_digital_signage_device_types`
--
ALTER TABLE `aip_digital_signage_device_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aip_digital_signage_groups`
--
ALTER TABLE `aip_digital_signage_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aip_digital_signage_schedule`
--
ALTER TABLE `aip_digital_signage_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_dynamic_ele_values`
--
ALTER TABLE `aip_dynamic_ele_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `aip_dynamic_form`
--
ALTER TABLE `aip_dynamic_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `aip_external_communicaion_details`
--
ALTER TABLE `aip_external_communicaion_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `aip_general`
--
ALTER TABLE `aip_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aip_general_ledger`
--
ALTER TABLE `aip_general_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `aip_html_element`
--
ALTER TABLE `aip_html_element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aip_images`
--
ALTER TABLE `aip_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `aip_image_assign`
--
ALTER TABLE `aip_image_assign`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `aip_image_dimensions`
--
ALTER TABLE `aip_image_dimensions`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `aip_image_display_configure`
--
ALTER TABLE `aip_image_display_configure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_languages`
--
ALTER TABLE `aip_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `aip_modules`
--
ALTER TABLE `aip_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `aip_module_management`
--
ALTER TABLE `aip_module_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_module_tabs`
--
ALTER TABLE `aip_module_tabs`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aip_multirate_master`
--
ALTER TABLE `aip_multirate_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_multirate_to_product`
--
ALTER TABLE `aip_multirate_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `aip_offers`
--
ALTER TABLE `aip_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_offer_advanced_rules`
--
ALTER TABLE `aip_offer_advanced_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_offer_products`
--
ALTER TABLE `aip_offer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_orders`
--
ALTER TABLE `aip_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_assign`
--
ALTER TABLE `aip_order_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `aip_order_dep_assign_to_user`
--
ALTER TABLE `aip_order_dep_assign_to_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_details`
--
ALTER TABLE `aip_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_extra_columns`
--
ALTER TABLE `aip_order_extra_columns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_extra_column_queries`
--
ALTER TABLE `aip_order_extra_column_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_history`
--
ALTER TABLE `aip_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `aip_order_service_products`
--
ALTER TABLE `aip_order_service_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_order_tax`
--
ALTER TABLE `aip_order_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_password_reset`
--
ALTER TABLE `aip_password_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `aip_payment_available_cards`
--
ALTER TABLE `aip_payment_available_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `aip_payment_history`
--
ALTER TABLE `aip_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `aip_payment_methods`
--
ALTER TABLE `aip_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `aip_pos_settings`
--
ALTER TABLE `aip_pos_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `aip_pos_tab_labels`
--
ALTER TABLE `aip_pos_tab_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aip_predefined_permissions`
--
ALTER TABLE `aip_predefined_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_price_to_product`
--
ALTER TABLE `aip_price_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `aip_printer_settings`
--
ALTER TABLE `aip_printer_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_product`
--
ALTER TABLE `aip_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `aip_product_addons`
--
ALTER TABLE `aip_product_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_product_brand`
--
ALTER TABLE `aip_product_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `aip_product_category`
--
ALTER TABLE `aip_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `aip_product_kit`
--
ALTER TABLE `aip_product_kit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aip_product_kit_products`
--
ALTER TABLE `aip_product_kit_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aip_product_otherdescription`
--
ALTER TABLE `aip_product_otherdescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `aip_product_stock`
--
ALTER TABLE `aip_product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_product_type`
--
ALTER TABLE `aip_product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aip_product_unit`
--
ALTER TABLE `aip_product_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `aip_purchase_documents`
--
ALTER TABLE `aip_purchase_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_purchase_history`
--
ALTER TABLE `aip_purchase_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_purchase_tax_to_product`
--
ALTER TABLE `aip_purchase_tax_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;

--
-- AUTO_INCREMENT for table `aip_sales_invoice`
--
ALTER TABLE `aip_sales_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `aip_sales_invoice_details`
--
ALTER TABLE `aip_sales_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `aip_sales_invoice_tax`
--
ALTER TABLE `aip_sales_invoice_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `aip_sale_order_details`
--
ALTER TABLE `aip_sale_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_search_table`
--
ALTER TABLE `aip_search_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_search_table_joins`
--
ALTER TABLE `aip_search_table_joins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_service_dependancy`
--
ALTER TABLE `aip_service_dependancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_service_dependancy_value`
--
ALTER TABLE `aip_service_dependancy_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_service_dep_sel_values`
--
ALTER TABLE `aip_service_dep_sel_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_service_entry`
--
ALTER TABLE `aip_service_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_service_model`
--
ALTER TABLE `aip_service_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_stock_ledger`
--
ALTER TABLE `aip_stock_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `aip_sub_orders`
--
ALTER TABLE `aip_sub_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_system_labels`
--
ALTER TABLE `aip_system_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_system_preference`
--
ALTER TABLE `aip_system_preference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `aip_table_data`
--
ALTER TABLE `aip_table_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `aip_table_manager`
--
ALTER TABLE `aip_table_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `aip_tabs`
--
ALTER TABLE `aip_tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aip_tax`
--
ALTER TABLE `aip_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `aip_tax_to_product`
--
ALTER TABLE `aip_tax_to_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;

--
-- AUTO_INCREMENT for table `aip_timezones`
--
ALTER TABLE `aip_timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `aip_units`
--
ALTER TABLE `aip_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aip_users`
--
ALTER TABLE `aip_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `aip_user_login_history`
--
ALTER TABLE `aip_user_login_history`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `aip_user_permissions`
--
ALTER TABLE `aip_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aip_user_types`
--
ALTER TABLE `aip_user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aip_widget`
--
ALTER TABLE `aip_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `aip_widget_to_module`
--
ALTER TABLE `aip_widget_to_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `aip_widget_to_user`
--
ALTER TABLE `aip_widget_to_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
