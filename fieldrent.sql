-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 04:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fieldrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_menu`
--

CREATE TABLE `access_menu` (
  `id_access` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_menu`
--

INSERT INTO `access_menu` (`id_access`, `id_menu`, `level`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(16, 1, 1, '2021-10-18 22:47:33', NULL, NULL, 1),
(17, 2, 1, '2021-10-18 22:47:33', NULL, NULL, 1),
(18, 3, 1, '2021-10-18 22:47:33', NULL, NULL, 1),
(19, 4, 1, '2021-10-18 22:47:33', NULL, NULL, 1),
(28, 14, 1, '2022-03-17 14:49:50', NULL, NULL, 1),
(29, 15, 1, '2022-03-17 14:51:50', NULL, NULL, 1),
(30, 16, 1, '2022-03-17 14:55:32', NULL, NULL, 1),
(31, 1, 2, '2021-10-18 22:47:33', NULL, NULL, 1),
(32, 4, 2, '2021-10-18 22:47:33', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_fields`
--

CREATE TABLE `booking_fields` (
  `id_booking` int(11) NOT NULL,
  `no_booking` varchar(20) NOT NULL,
  `customer_code` varchar(20) NOT NULL,
  `pic` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `booking_date` date NOT NULL,
  `hour` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `id_field` int(11) NOT NULL,
  `dp` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'BELUM LUNAS',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_fields`
--

INSERT INTO `booking_fields` (`id_booking`, `no_booking`, `customer_code`, `pic`, `phone`, `booking_date`, `hour`, `start_time`, `end_time`, `id_field`, `dp`, `total`, `status`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'BF/301021/001', 'CST-0002', 'Surya', '10293021', '2021-10-30', 0, '2021-10-30 16:00:00', '2021-10-30 17:00:00', 1, 0, 60000, '', '2021-10-30 16:21:20', NULL, NULL, 1),
(8, 'BF/301021/002', 'CST-0002', 'Surya', '09218392329', '2021-10-30', 0, '2021-10-30 18:01:00', '2021-10-30 19:31:00', 1, 0, 75000, '', '2021-10-30 18:01:51', NULL, NULL, 1),
(9, 'BF/011121/001', 'CST-0002', 'Surya', '09218392329', '2021-11-01', 0, '2021-11-01 16:00:00', '2021-11-01 17:00:00', 2, 0, 45000, '', '2021-10-31 15:23:19', NULL, NULL, 1),
(10, 'BF/311021/001', 'CST-0002', 'Surya', '09218392329', '2021-10-31', 0, '2021-10-31 16:30:00', '2021-10-31 17:30:00', 1, 0, 50000, '', '2021-10-31 15:24:54', NULL, NULL, 1),
(12, 'BF/291121/002', 'CST-0002', 'Surya', '09218392329', '2021-11-29', 0, '2021-11-29 14:00:00', '2021-11-29 15:00:00', 1, 0, 50000, '', '2021-11-29 14:02:52', NULL, NULL, 1),
(13, 'BF/081221/001', 'CST-0001', 'Rendra Putri', '08192836660', '2021-12-08', 0, '2021-12-08 12:00:00', '2021-12-08 13:00:00', 2, 0, 90000, '', '2021-12-08 09:25:05', NULL, '2021-12-08 09:44:50', 1),
(16, 'BF/091221/001', 'CST-0003', 'Popo', 'dsds', '2021-12-09', 1, '2021-12-09 12:00:00', '2021-12-09 13:00:00', 2, 45000, 90000, 'Canceled', '2021-12-08 09:49:14', NULL, NULL, 1),
(17, 'BF/231221/001', 'CST-0002', 'Surya', '09218392329', '2021-12-23', 2, '2021-12-23 12:00:00', '2021-12-23 14:00:00', 2, 20000, 180000, 'Partially Paid', '2021-12-08 19:27:33', NULL, NULL, 1),
(18, 'BF/101221/001', 'CST-0003', 'Popo', 'dsds', '2021-12-10', 2, '2021-12-10 09:00:00', '2021-12-10 11:00:00', 2, 20000, 180000, 'Paid Off', '2021-12-09 14:51:25', NULL, NULL, 1),
(19, 'BF/121221/001', 'CST-0002', 'Surya', '09218392329', '2021-12-12', 1, '2021-12-12 13:00:00', '2021-12-12 14:00:00', 1, 50000, 50000, 'Paid Off', '2021-12-09 14:52:06', NULL, NULL, 1),
(20, 'BF/111221/001', 'CST-0002', 'Surya', '09218392329', '2021-12-11', 1, '2021-12-11 12:00:00', '2021-12-11 13:00:00', 1, 20000, 50000, 'Paid Off', '2021-12-09 14:56:23', NULL, NULL, 1),
(21, 'BF/091221/002', 'CST-0003', 'Popo', 'dsds', '2021-12-09', 2, '2021-12-09 09:00:00', '2021-12-09 11:00:00', 3, 50000, 150000, 'Paid Off', '2021-12-09 15:12:06', NULL, NULL, 1),
(22, 'BF/121221/002', 'CST-0003', 'Popo', 'dsds', '2021-12-12', 2, '2021-12-12 08:00:00', '2021-12-12 10:00:00', 3, 50000, 150000, 'Paid Off', '2021-12-12 20:04:27', NULL, NULL, 1),
(23, 'BF/131221/001', 'CST-0004', 'Lestari', '087782937662', '2021-12-13', 1, '2021-12-13 09:00:00', '2021-12-13 10:00:00', 3, 50000, 75000, 'Paid Off', '2021-12-12 20:07:57', NULL, NULL, 1),
(24, 'BF/180823/001', 'CST-0003', 'Popo', 'dsds', '2023-08-18', 2, '2023-08-18 18:00:00', '2023-08-18 20:00:00', 1, 50000, 100000, 'Partially Paid', '2023-08-18 17:40:57', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id_customer`, `customer_code`, `customer_name`, `pic`, `email`, `phone`, `address`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(4, 'CST-0001', 'SMA 2 Simbabwe', 'Rendra Putri', 'rendraputr1991@gmail.com', '08192836660', 'Jl. Imogiri no. 130, Bantul, Yogyakarta', '2021-10-30 14:43:22', '2021-10-30 15:06:21', '2021-12-08 09:44:32', 1),
(5, 'CST-0002', 'PT Patigeni', 'Surya', 'surya90@gmail.com', '09218392329', 'Jl Perintis Kemerdekaan no 55, Pudak payung, Semarang', '2021-10-30 15:20:09', NULL, NULL, 1),
(6, 'CST-0003', 'Test Customer', 'Popo', 'popo@popo.com', 'dsds', 'JL mangkulia no 22', '2021-12-07 14:15:39', '2021-12-07 14:15:53', NULL, 1),
(7, 'CST-0004', 'Lestari Endang', 'Lestari', 'Lestarialamku@gmail.com', '087782937662', 'JL. Buntu Raya no. 93', '2021-12-12 20:06:30', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id_field` int(11) NOT NULL,
  `field_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `note` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id_field`, `field_name`, `price`, `note`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'Lapangan Timur', 50000, 'Lapangan Timur - Rumput sintetis', '2021-10-18 21:49:15', '2021-12-12 20:39:35', NULL, 1),
(2, 'Lapangan Tengah', 90000, 'Lapangan Tengah - Alas Vinyl', '2021-10-18 21:49:15', '2021-12-07 14:40:56', NULL, 1),
(3, 'Lapangan Barat', 75000, 'Lapangan Barat - Parquette', '2021-10-18 21:49:55', '2021-12-07 14:41:58', NULL, 1),
(5, 'Lapangan Baru', 95000, 'Lapangan Rumput laut', '2021-12-07 14:34:49', '2021-12-07 14:42:16', '2021-12-07 14:44:44', 1),
(6, 'aA12342344222', 1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2021-12-22 17:19:20', NULL, '2021-12-22 17:19:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `global_variable`
--

CREATE TABLE `global_variable` (
  `id` int(11) NOT NULL,
  `variable` varchar(40) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `global_variable`
--

INSERT INTO `global_variable` (`id`, `variable`, `data`) VALUES
(1, 'default_content_menu', '<header class=\"mb-3\">\r\n                <a href=\"#\" class=\"burger-btn d-block d-xl-none\">\r\n                    <i class=\"bi bi-justify fs-3\"></i>\r\n                </a>\r\n            </header>\r\n\r\n            <div class=\"page-heading\">\r\n                <div class=\"page-title\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-12 col-md-6 order-md-1 order-last\">\r\n                            <h3><?php echo $menu ?></h3>\r\n                            <p class=\"text-subtitle text-muted\"><?php echo $description ?></p>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-6 order-md-2 order-first\">\r\n                            <nav aria-label=\"breadcrumb\" class=\"breadcrumb-header float-start float-lg-end\">\r\n                                <ol class=\"breadcrumb\">\r\n                                    <li class=\"breadcrumb-item active\"><a href=\"<?php echo $menu_link ?>\"><?php echo $menu ?></a></li>\r\n                                    <!-- <li class=\"breadcrumb-item active\" aria-current=\"page\"><?php echo $submenu ?></li> -->\r\n                                </ol>\r\n                            </nav>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <section class=\"section\">\r\n                    <div class=\"card\">\r\n                        <div class=\"card-header\">\r\n                            <h4 class=\"card-title float-start\">List Field</h4>\r\n                            <button id=\"add\" class=\"btn btn-sm btn-outline-primary float-end\">+</button>\r\n                        </div>\r\n                        <div class=\"card-body\">\r\n                            <div class=\"table-responsive\">\r\n                                <table class=\"table table-hover\">\r\n                                    <thead>\r\n                                        <tr>\r\n                                            <th>No.</th>\r\n                                            <th>Column</th>\r\n                                            <th>Column</th>\r\n                                            <th>Column</th>\r\n                                            <th>#</th>\r\n                                        </tr>\r\n                                    </thead>\r\n                                    <tbody id=\"tbody-field\">\r\n\r\n                                    </tbody>\r\n\r\n                                </table>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </section>\r\n            </div>\r\n\r\n            <div class=\"modal fade text-left modal-borderless\" id=\"field-modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel1\" aria-hidden=\"true\">\r\n                <div class=\"modal-dialog modal-lg\" role=\"document\">\r\n                    <div class=\"modal-content\">\r\n                        <div class=\"modal-header bg-primary\" id=\"modal-header\">\r\n                            <h5 class=\"modal-title white\" id=\"myModalLabel1\">Basic Modal</h5>\r\n                            <button type=\"button\" class=\"close rounded-pill\"\r\n                                data-bs-dismiss=\"modal\" aria-label=\"Close\">\r\n                                <i data-feather=\"x\"></i>\r\n                            </button>\r\n                        </div>\r\n                        <div class=\"modal-body\">\r\n                            <form class=\"form form-horizontal\">\r\n                                            <div class=\"form-body\">\r\n                                                <div class=\"row\">\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Field Name</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input type=\"text\" id=\"field_name\" class=\"form-control form-control-sm\"\r\n                                                            name=\"field_name\" placeholder=\"Field Name\">\r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Price</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input type=\"number\" id=\"price\" class=\"form-control form-control-sm\"\r\n                                                            name=\"price\" placeholder=\"0\">\r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Notes</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <div class=\"form-floating\">\r\n                                                            <textarea class=\"form-control form-control-sm\" id=\"note\" name=\"note\" row=\"5\" placeholder=\"Leave a comment here\"\r\n                                                                id=\"floatingTextarea\"></textarea>\r\n                                                            <label for=\"floatingTextarea\">Note</label>\r\n                                                        </div>                                                    \r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Additional Picture</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input class=\"form-control form-control-sm\" id=\"formFileSm\" name=\"picture\" type=\"file\">\r\n\r\n                                                    </div>\r\n                                                </div>\r\n                                            </div>\r\n                                        </form>\r\n                        </div>\r\n                        <div class=\"modal-footer\">\r\n                            <button type=\"button\" class=\"btn\" data-bs-dismiss=\"modal\">\r\n                                <i class=\"bx bx-x d-block d-sm-none\"></i>\r\n                                <span class=\"d-none d-sm-block\">Close</span>\r\n                            </button>\r\n                            <button type=\"button\" class=\"btn btn-primary ml-1\"\r\n                                data-bs-dismiss=\"modal\">\r\n                                <i class=\"bx bx-check d-block d-sm-none\"></i>\r\n                                <span class=\"d-none d-sm-block\">Save</span>\r\n                            </button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n<script>\r\n    //list data goes here.\r\n    //example url : app/master/Fields.php?f_name=get_all_fields\r\n    $.ajax({\r\n        url : \"look at example\",\r\n        type : \"GET\",\r\n        success : function(result){\r\n            $(\"#tbody-field\").html(result);\r\n        }\r\n    })\r\n\r\n    $(\"#add\").click(function(){\r\n        modalShow(\'add\');\r\n    })\r\n\r\n    // function to show modal\r\n    function modalShow(mtd){\r\n        var title;\r\n        if (mtd==\"add\") {\r\n            title = \"Add New Field\";\r\n        }else{\r\n            title = \"Edit field\";\r\n        }\r\n        $(\".modal-title\").html(title);\r\n        $(\"#field-modal\").modal(\'toggle\');\r\n    }\r\n\r\n\r\n\r\n\r\n</script>\r\n'),
(2, 'default_content_submenu', '            <header class=\"mb-3\">\r\n                <a href=\"#\" class=\"burger-btn d-block d-xl-none\">\r\n                    <i class=\"bi bi-justify fs-3\"></i>\r\n                </a>\r\n            </header>\r\n\r\n            <div class=\"page-heading\">\r\n                <div class=\"page-title\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-12 col-md-6 order-md-1 order-last\">\r\n                            <h3><?php echo $submenu ?></h3>\r\n                            <p class=\"text-subtitle text-muted\">Data Field </p>\r\n                        </div>\r\n                        <div class=\"col-12 col-md-6 order-md-2 order-first\">\r\n                            <nav aria-label=\"breadcrumb\" class=\"breadcrumb-header float-start float-lg-end\">\r\n                                <ol class=\"breadcrumb\">\r\n                                    <li class=\"breadcrumb-item\"><a href=\"<?php echo $menu_link ?>\"><?php echo $menu ?></a></li>\r\n                                    <li class=\"breadcrumb-item active\" aria-current=\"page\"><?php echo $submenu ?></li>\r\n                                </ol>\r\n                            </nav>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <section class=\"section\">\r\n                    <div class=\"card\">\r\n                        <div class=\"card-header\">\r\n                            <h4 class=\"card-title float-start\">List Field</h4>\r\n                            <button id=\"add\" class=\"btn btn-sm btn-outline-primary float-end\">+</button>\r\n                        </div>\r\n                        <div class=\"card-body\">\r\n                            <div class=\"table-responsive\">\r\n                                <table class=\"table table-hover\">\r\n                                    <thead>\r\n                                        <tr>\r\n                                            <th>No.</th>\r\n                                            <th>Field Name</th>\r\n                                            <th>Note</th>\r\n                                            <th>Price</th>\r\n                                            <th>#</th>\r\n                                        </tr>\r\n                                    </thead>\r\n                                    <tbody id=\"tbody-field\">\r\n\r\n                                    </tbody>\r\n\r\n                                </table>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </section>\r\n            </div>\r\n\r\n            <div class=\"modal fade text-left modal-borderless\" id=\"field-modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel1\" aria-hidden=\"true\">\r\n                <div class=\"modal-dialog modal-lg\" role=\"document\">\r\n                    <div class=\"modal-content\">\r\n                        <div class=\"modal-header bg-primary\" id=\"modal-header\">\r\n                            <h5 class=\"modal-title white\" id=\"myModalLabel1\">Basic Modal</h5>\r\n                            <button type=\"button\" class=\"close rounded-pill\"\r\n                                data-bs-dismiss=\"modal\" aria-label=\"Close\">\r\n                                <i data-feather=\"x\"></i>\r\n                            </button>\r\n                        </div>\r\n                        <div class=\"modal-body\">\r\n                            <form class=\"form form-horizontal\">\r\n                                            <div class=\"form-body\">\r\n                                                <div class=\"row\">\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Field Name</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input type=\"text\" id=\"field_name\" class=\"form-control form-control-sm\"\r\n                                                            name=\"field_name\" placeholder=\"Field Name\">\r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Price</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input type=\"number\" id=\"price\" class=\"form-control form-control-sm\"\r\n                                                            name=\"price\" placeholder=\"0\">\r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Notes</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <div class=\"form-floating\">\r\n                                                            <textarea class=\"form-control form-control-sm\" id=\"note\" name=\"note\" row=\"5\" placeholder=\"Leave a comment here\"\r\n                                                                id=\"floatingTextarea\"></textarea>\r\n                                                            <label for=\"floatingTextarea\">Note</label>\r\n                                                        </div>                                                    \r\n                                                    </div>\r\n                                                    <div class=\"col-md-4\">\r\n                                                        <label>Additional Picture</label>\r\n                                                    </div>\r\n                                                    <div class=\"col-md-8 form-group\">\r\n                                                        <input class=\"form-control form-control-sm\" id=\"formFileSm\" name=\"picture\" type=\"file\">\r\n\r\n                                                    </div>\r\n                                                </div>\r\n                                            </div>\r\n                                        </form>\r\n                        </div>\r\n                        <div class=\"modal-footer\">\r\n                            <button type=\"button\" class=\"btn\" data-bs-dismiss=\"modal\">\r\n                                <i class=\"bx bx-x d-block d-sm-none\"></i>\r\n                                <span class=\"d-none d-sm-block\">Close</span>\r\n                            </button>\r\n                            <button type=\"button\" class=\"btn btn-primary ml-1\"\r\n                                data-bs-dismiss=\"modal\">\r\n                                <i class=\"bx bx-check d-block d-sm-none\"></i>\r\n                                <span class=\"d-none d-sm-block\">Save</span>\r\n                            </button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n\r\n<script>\r\n    $.ajax({\r\n        url : \"app/master/Fields.php?f_name=get_all_fields\",\r\n        type : \"GET\",\r\n        success : function(result){\r\n            $(\"#tbody-field\").html(result);\r\n        }\r\n    })\r\n\r\n    $(\"#add\").click(function(){\r\n        modalShow(\'add\');\r\n    })\r\n\r\n    function modalShow(mtd){\r\n        var title;\r\n        if (mtd==\"add\") {\r\n            title = \"Add New Field\";\r\n        }else{\r\n            title = \"Edit field\";\r\n        }\r\n        $(\".modal-title\").html(title);\r\n        $(\"#field-modal\").modal(\'toggle\');\r\n    }\r\n\r\n    function getFieldbyId(id){\r\n        $.ajax({\r\n            url : \"app/master/Fields.php?f_name=get_field_by_id\",\r\n            type : \"GET\",\r\n            data : {\r\n                data : id,\r\n            },\r\n            dataType : \"JSON\",\r\n            success : function(result){\r\n                $(\"#field_name\").val(result.field_name);\r\n                $(\"#price\").val(result.price);\r\n                $(\"#note\").val(result.note);\r\n\r\n                modalShow(\'edit\');\r\n            }\r\n        })\r\n    }\r\n\r\n\r\n\r\n</script>\r\n'),
(3, 'app_name', 'Field Rent'),
(4, 'app_logo', '');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id_level` int(11) NOT NULL,
  `level_name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id_level`, `level_name`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'Administrator', '2021-10-18 21:44:41', NULL, NULL, 1),
(2, 'User', '2021-10-18 21:44:41', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL,
  `menu_name` varchar(20) NOT NULL,
  `menu_description` text DEFAULT NULL,
  `link` text NOT NULL,
  `path` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id_menu`, `menu_name`, `menu_description`, `link`, `path`, `icon`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'Dashboard', 'Resume all transactions\r\n', 'index.php', '', 'bi bi-grid-fill', '2021-10-18 21:27:05', NULL, NULL, 1),
(2, 'Master Data', NULL, '#', 'master', 'bi bi-grid-1x2-fill', '2021-10-18 21:27:05', NULL, NULL, 1),
(3, 'Setting', NULL, '#', 'setting', 'bi bi-gear-fill', '2021-10-18 21:32:07', NULL, NULL, 1),
(4, 'Transaction', NULL, '#', 'transaction', 'bi bi-cart-fill', '2021-10-18 21:32:07', NULL, NULL, 1),
(16, 'Hallo', 'jkkjhkjhk', 'index.php?menu=hallo', 'hallo', 'bi bi-gear-fill', '2022-03-17 14:55:32', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id_payment` int(11) NOT NULL,
  `no_payment` varchar(20) NOT NULL,
  `no_booking` varchar(20) NOT NULL,
  `customer_code` varchar(20) NOT NULL,
  `payment` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id_payment`, `no_payment`, `no_booking`, `customer_code`, `payment`, `payment_method`, `payment_date`, `note`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(2, 'PY/091221/001', 'BF/091221/001', 'CST-0003', 45000, 2, '2021-12-09', 'DP', '2021-12-08 09:49:14', NULL, NULL, 1),
(3, 'PY/231221/001', 'BF/231221/001', 'CST-0002', 20000, 2, '2021-12-23', 'DP', '2021-12-08 19:27:33', NULL, NULL, 1),
(4, 'PY/101221/001', 'BF/101221/001', 'CST-0003', 20000, 1, '2021-12-10', 'DP', '2021-12-09 14:51:25', NULL, NULL, 1),
(5, 'PY/121221/001', 'BF/121221/001', 'CST-0002', 50000, 1, '2021-12-12', 'DP', '2021-12-09 14:52:06', NULL, NULL, 1),
(6, 'PY/111221/001', 'BF/111221/001', 'CST-0002', 20000, 1, '2021-12-11', 'DP', '2021-12-09 14:56:23', NULL, NULL, 1),
(7, 'PY/091221/002', 'BF/091221/002', 'CST-0003', 50000, 1, '2021-12-09', 'DP', '2021-12-09 15:12:06', NULL, NULL, 1),
(8, 'PY/091221/003', 'BF/091221/002', 'CST-0003', 100000, 1, '2021-12-09', 'Payment', '2021-12-09 16:35:59', NULL, NULL, 1),
(9, 'PY/091221/004', 'BF/111221/001', 'CST-0002', 30000, 1, '2021-12-09', 'Payment', '2021-12-09 16:55:52', NULL, NULL, 1),
(10, 'PY/091221/005', 'BF/101221/001', 'CST-0003', 160000, 2, '2021-12-09', 'Payment', '2021-12-09 17:08:36', NULL, NULL, 1),
(11, 'PY/121221/002', 'BF/121221/002', 'CST-0003', 50000, 1, '2021-12-12', 'DP', '2021-12-12 20:04:27', NULL, NULL, 1),
(12, 'PY/131221/001', 'BF/131221/001', 'CST-0004', 50000, 1, '2021-12-13', 'DP', '2021-12-12 20:07:57', NULL, NULL, 1),
(13, 'PY/121221/003', 'BF/121221/002', 'CST-0003', 100000, 1, '2021-12-12', 'Payment', '2021-12-12 20:08:56', NULL, NULL, 1),
(14, 'PY/121221/004', 'BF/131221/001', 'CST-0004', 25000, 1, '2021-12-12', 'Payment', '2021-12-12 20:41:21', NULL, NULL, 1),
(15, 'PY/180823/001', 'BF/180823/001', 'CST-0003', 50000, 1, '2023-08-18', 'DP', '2023-08-18 17:40:57', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id_payment_method` int(11) NOT NULL,
  `payment_method` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id_payment_method`, `payment_method`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(1, 'Cash', '2021-10-18 21:45:29', NULL, NULL, 1),
(2, 'Transfer BCA', '2021-10-18 21:45:29', NULL, NULL, 1),
(3, 'GoPay', '2021-12-07 14:53:10', '2021-12-07 14:53:18', '2021-12-07 14:53:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id_submenu` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `submenu_name` varchar(20) NOT NULL,
  `submenu_description` text DEFAULT NULL,
  `link` text NOT NULL,
  `pageload` varchar(20) DEFAULT NULL,
  `path` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id_submenu`, `id_menu`, `submenu_name`, `submenu_description`, `link`, `pageload`, `path`, `created_at`, `updated_at`, `deleted_at`, `id_user`) VALUES
(3, 2, 'Fields', 'Data field', 'index.php?pageload=fields', 'fields', 'pages/master/fields/fields.php', '2021-10-18 21:36:17', NULL, NULL, 1),
(4, 2, 'Customers', NULL, 'index.php?pageload=customers', 'customers', 'pages/master/customers/customers.php', '2021-10-18 21:36:17', NULL, NULL, 1),
(5, 3, 'Payment Method', NULL, 'index.php?pageload=payment_methods', 'payment_methods', 'pages/setting/payment_methods/payment_methods.php', '2021-10-18 21:37:49', NULL, NULL, 1),
(6, 3, 'User Levels', NULL, 'index.php?pageload=user_levels', 'user_levels', 'pages/setting/user_levels/user_levels.php', '2021-10-18 21:37:49', NULL, NULL, 1),
(7, 3, 'Users', NULL, 'index.php?pageload=users', 'users', 'pages/setting/users/users.php', '2021-10-18 21:38:33', NULL, NULL, 1),
(8, 3, 'Menus', 'Set menu on sidebar', 'index.php?pageload=menus', 'menus', 'pages/setting/menus/menus.php', '2021-10-18 21:38:33', NULL, NULL, 1),
(9, 3, 'Submenus', NULL, 'index.php?pageload=submenus', 'submenus', 'pages/setting/submenus/submenus.php', '2021-10-18 21:39:12', NULL, NULL, 1),
(10, 3, 'Access Menu', NULL, 'index.php?pageload=access_menus', 'access_menus', 'pages/setting/access_menu/access_menu.php', '2021-10-18 21:39:12', NULL, NULL, 1),
(11, 4, 'Reservation', NULL, 'index.php?pageload=booking', 'booking', 'pages/transaction/booking/booking.php', '2021-10-18 21:40:33', NULL, NULL, 1),
(12, 4, 'Payments', NULL, 'index.php?pageload=payments', 'payments', 'pages/transaction/payments/payments.php', '2021-10-18 21:40:33', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `user_image` text DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `secrete` text NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `user_image`, `email`, `password`, `secrete`, `level`, `created_at`, `updated_at`, `deleted_at`, `created_by`) VALUES
(1, 'superuser', NULL, 'brianmarcius27@gmail.com', 'MTIzNDU2Nzg=', '12345678', 1, '2021-10-18 21:22:59', NULL, NULL, 1),
(2, 'user', NULL, 'bmm@gmail.com', 'MTIzNDU2Nzg=', '12345678', 2, '2021-10-18 21:22:59', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`id_access`);

--
-- Indexes for table `booking_fields`
--
ALTER TABLE `booking_fields`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id_field`);

--
-- Indexes for table `global_variable`
--
ALTER TABLE `global_variable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id_payment_method`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id_submenu`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `id_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `booking_fields`
--
ALTER TABLE `booking_fields`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id_field` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `global_variable`
--
ALTER TABLE `global_variable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id_payment_method` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
