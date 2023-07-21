-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 14, 2023 lúc 02:28 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bamicfo_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(1, NULL, 'sdgdfgdbcvbcvbxcv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgdf', 'sdf@gmail.com', '5646', 'sdf@gmail.com', 'sdf@gmail.com'),
(3, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'drtert', 'sdf@gmail.com', '3454', 'sdf@gmail.com', 'sdf@gmail.com'),
(4, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdfasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sfgdfg'),
(5, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(6, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'df', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'ag'),
(7, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', '.'),
(8, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdfg'),
(9, NULL, '507hpkui803q8chnerqdtf3vl2', 1520000, NULL, '0000-00-00', NULL, NULL, 'zsfxdg', 'tung92.ns@gmail.com', '1658824321', '', 'sdfg'),
(10, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdgf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'dfgfdhgvjm'),
(11, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'd'),
(12, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zscf'),
(13, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sds', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xfc'),
(14, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ádasf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cv'),
(15, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxd'),
(16, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'rf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xf'),
(17, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'f', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(18, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'g'),
(19, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfg', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'sdf'),
(20, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sè', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cvb'),
(21, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfgd', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'zxcv'),
(22, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dfjas@gmail.com', 'tung92.ns@gmail.com', '12342', 'fg', 'xc'),
(23, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'sdf', 'tung92.ns@gmail.com', 'dfg', 'dfg', 'gh'),
(24, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'dgfdg', 'tung92.ns@gmail.com', '1234567', 'xfvd', 'sx'),
(25, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ạgdfh', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'cfgvb'),
(26, NULL, '507hpkui803q8chnerqdtf3vl2', 0, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', 'hà nội', 'xcv'),
(27, NULL, '507hpkui803q8chnerqdtf3vl2', 3040000, NULL, '0000-00-00', NULL, NULL, 'ggf', 'tung92.ns@gmail.com', '1658824321', '', 'xcv'),
(28, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 0, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', 'fghfgh', 'zdfgdfg'),
(29, NULL, 'k75ivhcmgk5u9bbi4ajsqeqon7', 1845000, NULL, '0000-00-00', NULL, NULL, 'hangpt', 'phamthuyhang@yahoo.com', '0973378669', '', 'zdfgdfg'),
(30, NULL, '334n6joa344tmhngo3r5aqpve3', 1845000, NULL, '0000-00-00', NULL, NULL, 'HANGWF', 'HGJFGH@GMAIL.COM', '45657', 'qUAN NHAN', 'DTAN'),
(31, NULL, 'uicgfl7gr3e7ahodo04vpssns6', 3930000, NULL, '0000-00-00', NULL, NULL, 'dfHFGH', 'XFGHFG@GMAIL.COM', '3456789', 'ARFG', 'WRWER'),
(32, NULL, '9h180s77g41hqt5d8g95mudic6', 205000, NULL, '0000-00-00', NULL, NULL, 'vcxgf', 'gfgfdg@gmail.com', 'fgfdgdfg', 'fgfdgdf', 'gfdgdf'),
(33, NULL, 'jom8ufm7f64s09i4gk10fp1ma2', 2255000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '12184', 'Fqgq', 'Vsbs'),
(34, NULL, '20ks5j7ju4vpq91d9699nvile3', 1455000, NULL, '0000-00-00', NULL, NULL, 'Vahah', 'vaba@gmail.com', '86633889', 'Fgujbvg', ''),
(35, NULL, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, NULL, '0000-00-00', NULL, NULL, 'Ngọc thế', 'ngocthe505@gmail.com', '0943218532', 'Số 19 ngõ 4 văn la hà đông hn', ''),
(36, NULL, '0m0i103i9mk3s0t8mi1g6gnqd5', 2250000, NULL, '0000-00-00', 4, '', 'Lìu tìu phìu', 'admin@deptrai.com', '096969969', 'Hà Nội', ''),
(37, NULL, 'meesi1d3laemnvqfgu7m1lm9p4', 2050000, NULL, '0000-00-00', 4, 'gfdgfd', 'Lìu tìu phìu', 'admin@deptrai.com', '0969068969', 'Hà Nội', ''),
(38, NULL, 'r3ktn90f3cn3fv82lob0qfv7l2', 0, NULL, '0000-00-00', NULL, NULL, 'hfgh', 'gfhg@gmail.com', '5345345435', 'gbfdgfdg', 'gdfg'),
(39, NULL, '3j87stb5hl70hfftn49fg9uve2', 615000, NULL, '0000-00-00', 1, '', 'Tâm', 'ngockhanh@gmail.com', '0974698975', 'thanh xuân', ''),
(40, NULL, 'vjnoaabl9tui5463ttpol3a745', 3040000, NULL, '0000-00-00', 1, '', 'hằng pt', 'ngockhanh@gmail.com', '123123435', 'dfghdfgh', 'dfghdfgh'),
(41, NULL, '36v2v63fsce7tth1ep3mp51uh3', 760000, NULL, '0000-00-00', NULL, NULL, 'ádfasdf', 'ngockhanh@gmail.com', 'dfgadfg', 'ádfgsdf', ''),
(42, NULL, '9ed4v2g4sm1v3og223ckgdh650', 4560000, NULL, '0000-00-00', NULL, NULL, 'sxdfsdf', 'ng@gmail.com', '345345', 'étdgvdf', ''),
(43, NULL, 's7kfj9rca2ic102k5sgpe4it67', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '30012018', 'Ha Noi', '1'),
(44, NULL, 'uh6mafdedbdh4sqodcd4amspa5', 0, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(45, NULL, '1phakdlrnq7gn5ln72umgujq63', 238620, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '13-7'),
(46, NULL, '14pvd1p4a6tu35c2km9ck3fbf4', 246000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '24-08'),
(47, NULL, '976nru8ujtm188utfmdli20mo5', 420000, NULL, '0000-00-00', NULL, NULL, 'Hanh', 'hanhbp@gmail.com', '0913261689', '326 Le trong Tan Thanh Xuan', 'Giao ngoai gio hanh chinh'),
(48, NULL, 'v3p39e8h23inda7t5e6ch0tv35', 420000, NULL, '0000-00-00', NULL, NULL, 'Hoàng thu thảo', '', '0946944866', 'Số 8, tổ 1, tân lập 1, cẩm thuỷ, cẩm phả, quảng ninh', ''),
(49, NULL, 'addpl7ej742e3q0r43nrfssub3', 315000, NULL, '0000-00-00', NULL, NULL, 'Lê Thị Thuỳ', 'emaillethuy@gmail.com', '0967883638', 'Số 22H Ngõ 350 Kim Giang Hà Nội', 'Muốn nhận hàng trong ngày mai ngày 2/2'),
(50, NULL, 'l3il149c0de98t630fla3fsuq7', 0, NULL, '0000-00-00', NULL, NULL, 'Phạm thanh thuý', 'thanhthuyuno8908@gmail.com', '0979121445', 'CT1B - chung cư Mon city, ngõ 6 Nguyễn Cơ Thạch , Mĩ đình 2, nam từ Liêm, Hà Nội', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 27, 'fg4g7m0pb0vnv4dnvp88f7lds7', 760000, 3, 2280000, NULL, 2, 1, 'Cam', 'S', 1),
(8, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 2, 1520000, NULL, 2, 1, 'Cam', 'S', 25),
(9, 27, '507hpkui803q8chnerqdtf3vl2', 760000, 4, 3040000, NULL, 2, 1, 'Cam', 'S', 26),
(10, 42, 'k75ivhcmgk5u9bbi4ajsqeqon7', 205000, 9, 1845000, NULL, 0, 0, '', '', 28),
(11, 42, '334n6joa344tmhngo3r5aqpve3', 205000, 9, 1845000, NULL, 0, 0, '', '', 30),
(12, 42, 'uicgfl7gr3e7ahodo04vpssns6', 205000, 6, 1230000, NULL, 0, 0, '', '', 31),
(13, 43, 'uicgfl7gr3e7ahodo04vpssns6', 450000, 6, 2700000, NULL, 0, 0, '', '', 31),
(14, 42, '9h180s77g41hqt5d8g95mudic6', 205000, 1, 205000, NULL, 0, 0, '', '', 32),
(15, 42, 'jom8ufm7f64s09i4gk10fp1ma2', 205000, 11, 2255000, NULL, 0, 0, '', '', 33),
(16, 43, '20ks5j7ju4vpq91d9699nvile3', 225000, 1, 225000, NULL, 0, 0, '', '', 34),
(17, 42, '20ks5j7ju4vpq91d9699nvile3', 205000, 6, 1230000, NULL, 0, 0, '', '', 34),
(18, 42, 'ljlvfop98o8sevrh6ihtgdn7o6', 205000, 1, 205000, NULL, 0, 0, '', '', 35),
(19, 43, '0m0i103i9mk3s0t8mi1g6gnqd5', 225000, 10, 2250000, NULL, 0, 0, '', '', 36),
(20, 42, 'meesi1d3laemnvqfgu7m1lm9p4', 205000, 10, 2050000, NULL, 0, 0, '', '', 37),
(21, 42, 'r3ktn90f3cn3fv82lob0qfv7l2', 205000, 0, 0, NULL, 0, 0, '', '', 38),
(22, 42, '3j87stb5hl70hfftn49fg9uve2', 205000, 3, 615000, NULL, 0, 0, '', '', 39),
(23, 27, 'vjnoaabl9tui5463ttpol3a745', 760000, 3, 2280000, NULL, 0, 0, '', '', 40),
(24, 28, 'vjnoaabl9tui5463ttpol3a745', 760000, 1, 760000, NULL, 0, 0, '', '', 40),
(25, 27, '36v2v63fsce7tth1ep3mp51uh3', 760000, 1, 760000, NULL, 0, 0, '', '', 41),
(26, 27, '9ed4v2g4sm1v3og223ckgdh650', 760000, 6, 4560000, NULL, 0, 0, '', '', 42),
(27, 55, 's7kfj9rca2ic102k5sgpe4it67', 0, 2, 0, NULL, 0, 0, '', '60x90 cm', 43),
(28, 48, 'uh6mafdedbdh4sqodcd4amspa5', 0, 1, 0, NULL, 0, 0, '', '', 44),
(29, 55, '1phakdlrnq7gn5ln72umgujq63', 119310, 2, 238620, NULL, 0, 0, '', '', 45),
(30, 55, '14pvd1p4a6tu35c2km9ck3fbf4', 123000, 2, 246000, NULL, 0, 0, '', '', 46),
(31, 154, '976nru8ujtm188utfmdli20mo5', 420000, 1, 420000, NULL, 0, 0, '', '', 47),
(32, 154, 'v3p39e8h23inda7t5e6ch0tv35', 420000, 1, 420000, NULL, 0, 0, '', '', 48),
(33, 139, 'addpl7ej742e3q0r43nrfssub3', 315000, 1, 315000, NULL, 0, 0, '', '', 49),
(34, 154, 'l3il149c0de98t630fla3fsuq7', 0, 1, 0, NULL, 0, 0, '', '', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Kòi Caffe', '', 'kÒI CAFFE - CHUYÊN BÁNH MỲ QUE HẢI PHÒNG', 'Kòi Caffe', 'logo-bami-3.png', '', '', 'kÒI CAFFE - CHUYÊN BÁNH MỲ QUE HẢI PHÒNG', '', '', '', '', '', '', '', '', '', '', '[\"{\\\"image\\\":\\\"t05-fixSize.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'banner2.jpg', 'banner1.jpg', 'banner3.jpg', 'logo-bami-1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Kòi Caffe', '', 'kÒI CAFFE - CHUYÊN BÁNH MỲ QUE HẢI PHÒNG', 'Kòi Caffe', '', '', 'kÒI CAFFE - CHUYÊN BÁNH MỲ QUE HẢI PHÒNG', '', '', '', '', '', '', '', '', '', '', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gui_thong_tin`
--

CREATE TABLE `gui_thong_tin` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gui_thong_tin`
--

INSERT INTO `gui_thong_tin` (`id`, `name`, `email`, `note`, `ngay`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', 'test', '2023-03-24 02:31:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'ewrerwer', 'viethung95cute@gmail.com', '01672545654', 'hà nội', '', '2018-04-05 06:24:46'),
(4, 'tuấn', 'tuan@gmail.com', '0123', '', '13-7', '2018-07-13 11:24:19'),
(5, 'tuấn', 'tuan@gmail.com', '0123', '', '123', '2018-08-24 12:15:54'),
(6, 'Seidel', 'sales01@yataytech.com', '(07) 3302 8599', '', 'Dear Sir,\r\nHow are you doing?\r\nWe just updated our new Android iOS Firefly Smart Watch& Firefly TV BOX price list for you.\r\nOur new Smartwatch latest PRODUCTS list:  \r\nhttps://yataytec.com/firefly-smart-home/\r\n\r\nBest Regards,\r\nAlan Su\r\n\r\nYatay Electronics Ltd \r\nAdd: 4Bldg, GaoXinJian Industrial zone, HePing Fuyong town, Bao’an district , Shenzhen, China\r\nTel:+ 86-755-82964800                                      Fax:+86-755-82964870  \r\nSite: www.yataytec.com                                    Contact: Alan Su \r\nEmail: sales@yataytec.com                                Cell:+86-13923421519\r\n\r\n', '2021-07-22 20:15:08'),
(7, 'Ducan', 'sales01@yataytech.com', '604-276-2548', '', 'Dear Sir,\r\nHow are you doing?\r\nWe just updated our new Android iOS Firefly Smart Watch& Firefly TV BOX price list for you.\r\nOur new Smartwatch latest PRODUCTS list:  \r\nhttps://yataytec.com/bakeey-smart-watch-quotation-20210704/\r\n\r\nBest Regards,\r\nAlan Su\r\n\r\nYatay Electronics Ltd \r\nAdd: 4Bldg, GaoXinJian Industrial zone, HePing Fuyong town, Bao’an district , Shenzhen, China\r\nTel:+ 86-755-82964800                                      Fax:+86-755-82964870  \r\nSite: www.yataytec.com                                    Contact: Alan Su \r\nEmail: sales@yataytec.com                                Cell:+86-13923421519\r\n\r\n', '2021-08-05 10:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'GIỚI THIỆU', 2, 8, '#', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(164, 'Sản phẩm', 4, 8, '#', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(254, 'Liên hệ', 5, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(255, 'Tin tức', 4, 8, '#', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(287, 'vn', 'GIỚI THIỆU', 0, '#', 155),
(288, 'en', 'GIỚI THIỆU', 0, '', 155),
(305, 'vn', 'Sản phẩm', 0, '#', 164),
(306, 'en', 'Sản phẩm', 0, '', 164),
(485, 'vn', 'Liên hệ', 0, '', 254),
(486, 'en', 'Liên hệ', 0, '', 254),
(487, 'vn', 'Tin tức', 0, '#', 255),
(488, 'en', 'Tin tức', 0, '', 255);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(153, 'Bánh mì que cay cay đất Hải Phòng', 'Không rõ từ lúc nào những chiếc bánh có bề ngang chỉ bằng hai đốt ngón tay và chiều dài 30 cm từ đất cảng đã có mặt và được biết tiếng trên khắp cả nước.', '<p>Kh&ocirc;ng r&otilde; từ l&uacute;c n&agrave;o những chiếc b&aacute;nh c&oacute; bề ngang chỉ bằng hai đốt ng&oacute;n tay v&agrave; chiều d&agrave;i 30 cm từ đất cảng đ&atilde; c&oacute; mặt v&agrave; được biết tiếng tr&ecirc;n khắp cả nước.</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay b&eacute; x&iacute;u đ&atilde; trở th&agrave;nh m&oacute;n ngon d&acirc;n d&atilde; nổi tiếng của đất Hải Ph&ograve;ng. C&aacute;ch đ&acirc;y một v&agrave;i năm, khi đến Hải Ph&ograve;ng, những vị kh&aacute;ch rất t&ograve; m&ograve; v&agrave; th&iacute;ch th&uacute; khi thấy những chiếc b&aacute;nh nhỏ, thơm nức vị pate được d&ugrave;ng để ăn chơi m&agrave; kh&ocirc;ng ngấy ng&aacute;n, ăn tạm ấm l&ograve;ng cho qua cơn đ&oacute;i.</p>\r\n\r\n<p>B&aacute;nh mỳ cay được cho l&agrave; bắt đầu từ một qu&aacute;n nhỏ tr&ecirc;n ng&otilde; Kh&aacute;nh Lạp gần H&agrave;ng K&ecirc;nh v&agrave; đến nay b&aacute;n ở khắp phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay đơn giản.</p>\r\n\r\n<p>Để c&oacute; b&aacute;nh m&igrave; que ngon v&agrave; hấp dẫn thực kh&aacute;ch kh&ocirc;ng đơn giản. Ngo&agrave;i những chiếc b&aacute;nh m&igrave; xinh xinh thơm m&ugrave;i bột m&igrave; mới ra l&ograve;, c&aacute;c h&agrave;ng b&aacute;nh đều đa phần tự tay l&agrave;m pate, nh&acirc;n ch&iacute;nh của m&oacute;n b&aacute;nh m&igrave;. T&ugrave;y v&agrave;o độ kh&eacute;o l&eacute;o của b&agrave; chủ cho ra những mẻ pate được l&agrave;m từ gan, mỡ, thịt lợn nạc, th&ecirc;m muối hạt ti&ecirc;u thơm lừng. H&agrave;nh kh&ocirc; cũng tự phi lấy v&agrave; tương ớt, m&oacute;n đặc sản kh&ocirc;ng thể thiếu cho b&aacute;nh m&igrave; cũng được tự l&agrave;m lấy từ ớt tươi cay x&eacute;.</p>\r\n\r\n<p>B&aacute;nh m&igrave; được cho pate c&ugrave;ng ch&uacute;t h&agrave;nh kh&ocirc; cho v&agrave;o l&ograve; nướng. Tr&ecirc;n vỉa h&egrave; nhỏ với l&ograve; nướng b&aacute;nh đơn giản v&agrave; v&agrave;i ba chiếc ghế, qu&aacute;n b&aacute;nh m&igrave; tấp nập người mua mua b&aacute;n b&aacute;n. Từ đầu phố, thấy hương thơm hấp dẫn của b&aacute;nh m&igrave; c&ugrave;ng pate đ&atilde; muốn đến ăn. B&aacute;nh nhỏ ăn gi&ograve;n tan, thơm ngậy m&agrave; kh&ocirc;ng ngấy ng&aacute;n. M&oacute;n b&aacute;nh m&igrave; cay tự l&uacute;c n&agrave;o đ&atilde; trở th&agrave;nh bữa điểm t&acirc;m, bữa l&oacute;t dạ khi đ&oacute;i l&ograve;ng. Với lũ học tr&ograve;, b&aacute;nh m&igrave; cay l&agrave; m&oacute;n kho&aacute;i khẩu. Chỉ hai chiếc b&aacute;nh m&igrave; cay l&agrave; đủ, gi&aacute; lại b&igrave;nh d&acirc;n. Ăn ngay tại chỗ cũng được hay mua mang về, mang đi đường vừa đi vừa ăn cũng được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể th&ecirc;m tương ớt t&ugrave;y theo khẩu vị.</p>\r\n\r\n<p>Một chiếc b&aacute;nh m&igrave; cay h&ocirc;m nay c&oacute; gi&aacute; khoảng 6.000 đồng với nh&acirc;n đơn giản gồm ch&uacute;t pate, ch&uacute;t rau m&ugrave;i, c&oacute; thể th&ecirc;m ch&uacute;t ruốc thịt, v&agrave; ch&uacute;t ớt cay t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '1010447683805611383040989431o-1383709183.jpg', 0, 1, '', '2023-03-24 14:03:22', NULL, 1, '', '', '', '', '', 'Bánh mì que cay cay đất Hải Phòng', '', 'banh-mi-que-cay-cay-dat-hai-phong', '', 1),
(154, 'Chí chương - gia vị lạ mà quen của Hải Phòng', 'Nhìn giống tương ớt nhưng chí chương có hương vị rất riêng theo bí quyết của người Hải Phòng.', '<p>Nh&igrave;n giống tương ớt nhưng ch&iacute; chương c&oacute; hương vị rất ri&ecirc;ng theo b&iacute; quyết của người Hải Ph&ograve;ng.</p>\r\n\r\n<p>Du kh&aacute;ch lần đầu đến th&agrave;nh phố hoa phượng đỏ sẽ bỡ ngỡ khi người&nbsp;Hải Ph&ograve;ng&nbsp;gọi tương ớt l&agrave; ch&iacute; chương. Bản th&acirc;n nhiều người Hải Ph&ograve;ng cũng thắc mắc, kh&ocirc;ng biết v&igrave; sao ch&iacute; chương lại được ph&acirc;n biệt rạch r&ograve;i với tương ớt, d&ugrave; những năm gần đ&acirc;y hai t&ecirc;n gọi n&agrave;y đang dần được d&ugrave;ng như một. Khi tr&agrave;o lưu&nbsp;food tour Hải Ph&ograve;ng&nbsp;l&ecirc;n ng&ocirc;i, nhiều người đam m&ecirc; ẩm thực cũng quan t&acirc;m v&agrave; muốn t&igrave;m hiểu hơn về ch&iacute; chương.</p>\r\n\r\n<p>Ch&iacute; chương giống tương ớt nhưng c&oacute; một v&agrave;i điểm kh&aacute;c biệt, m&agrave;u đỏ tươi bắt mắt. &Agrave;nh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Một trong những nguồn gốc về ch&iacute; chương l&agrave; từ người gốc Hoa ở Hải Ph&ograve;ng. Họ sống nhiều ở khu vực chợ Đổ, hồ Tam Bạc, gọi tương ớt l&agrave; ch&iacute; chương do gần với phi&ecirc;n &acirc;m theo tiếng Trung Quốc. Tuy nhi&ecirc;n, ch&iacute; chương s&aacute;nh hơn, đậm v&agrave; cay, cũng thơm hơn, v&agrave; kh&ocirc;ng chỉ thuần vị ớt như tương ớt b&igrave;nh thường.</p>\r\n\r\n<p>Nguy&ecirc;n liệu l&agrave;m ch&iacute; chương bao gồm ớt v&agrave; c&agrave; chua tươi bỏ hạt, trộn với tỏi băm nhuyễn, cho th&ecirc;m ch&uacute;t muối rồi l&ecirc;n men theo c&ocirc;ng thức đặc biệt của t&ugrave;y nơi sản xuất. Ch&iacute; chương ngon phải cay nồng, m&agrave;u đỏ tươi bắt mắt, ăn l&agrave; nhận ra sự kh&aacute;c biệt so với tương ớt b&igrave;nh thường d&ugrave; kh&oacute; mi&ecirc;u tả bằng lời. T&ugrave;y v&agrave;o c&aacute;ch pha chế, ch&iacute; chương c&oacute; thể hơi chua nhẹ.</p>\r\n\r\n<p>Ch&iacute; chương l&agrave; gia vị để ăn c&ugrave;ng c&aacute;c đặc sản Hải Ph&ograve;ng như b&uacute;n c&aacute; cay, b&aacute;nh đa cua... Với c&aacute;c m&oacute;n nước như vậy, ch&iacute; chương gi&uacute;p l&agrave;m đậm đ&agrave; th&ecirc;m vị của nước d&ugrave;ng. Thực kh&aacute;ch khi ăn sẽ cảm nhận được vị cay của tương kết hợp với chua thanh của quất, cảm gi&aacute;c muốn ăn m&atilde;i kh&ocirc;ng bị ngấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay kh&ocirc;ng thể thiếu ch&iacute; chương ăn k&egrave;m. Ảnh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Đặc biệt, m&oacute;n b&aacute;nh m&igrave; cay Hải Ph&ograve;ng kh&ocirc;ng thể thiếu gia vị n&agrave;y. Từ &quot;cay&quot; trong t&ecirc;n m&oacute;n ăn cũng xuất ph&aacute;t từ việc ăn c&ugrave;ng ch&iacute; chương. Thực kh&aacute;ch nh&uacute;ng đẫm b&aacute;nh m&igrave; với ch&iacute; chương được chan sẵn ra b&aacute;t, cắn vỏ b&aacute;nh m&igrave; gi&ograve;n rụm, cảm nhận vị thơm cay lẫn với mặn ngậy của pate Hải Ph&ograve;ng vốn rất nổi tiếng. Khi b&aacute;n mang về, chủ qu&aacute;n thường cho thực kh&aacute;ch rất nhiều ch&iacute; chương, &quot;chấm cho thỏa&quot;.</p>\r\n\r\n<p>H&atilde;y mạnh dạn n&oacute;i &quot;Cho xin &iacute;t ch&iacute; chương&quot; để người Hải Ph&ograve;ng vui khi bạn biết t&ecirc;n loại tương ớt đặc sản n&agrave;y. Đến th&agrave;nh phố cảng, đừng qu&ecirc;n thưởng thức ch&iacute; chương để c&aacute;c m&oacute;n ăn trở n&ecirc;n tr&ograve;n vị hơn.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '288030298109210587835310043664-6452-2379-1655193668.jpg', 0, 1, '', '2023-03-24 14:03:24', '2023-03-24 14:03:40', 1, '', '', '', '', '', 'Chí chương - gia vị lạ mà quen của Hải Phòng', '', 'chi-chuong-gia-vi-la-ma-quen-cua-hai-phong', '', 1),
(155, 'Trào lưu food tour Hải Phòng', 'Đến Hải Phòng để thưởng thức ẩm thực đang trở thành một trào lưu, sau khi nhiều video giới thiệu xuất hiện, kèm hiệu ứng truyền miệng.', '<p>Đến Hải Ph&ograve;ng để thưởng thức ẩm thực đang trở th&agrave;nh một tr&agrave;o lưu, sau khi nhiều video giới thiệu xuất hiện, k&egrave;m hiệu ứng truyền miệng.</p>\r\n\r\n<p>Thấy bạn b&egrave; đi t&agrave;u về&nbsp;Hải Ph&ograve;ng&nbsp;trải nghiệm tour ẩm thực (food tour), Diệu Hương, 26 tuổi, l&ecirc;n đường dịp nghỉ lễ 30/4. Theo Hương, Hải Ph&ograve;ng l&agrave; điểm đến gần, dễ di chuyển trong ng&agrave;y, c&oacute; thể l&agrave;m những điều th&acirc;n quen m&agrave; hội bạn thường l&agrave;m ở H&agrave; Nội như hẹn h&ograve; ăn uống, tr&ograve; chuyện, ngồi c&agrave; ph&ecirc; nhưng lại kh&aacute;c biệt, c&oacute; thể &quot;đổi gi&oacute;&quot;.</p>\r\n\r\n<p>Hương cho hay 1-2 th&aacute;ng gần đ&acirc;y, li&ecirc;n tục xem được c&aacute;c video cảm nhận food tour ở Hải Ph&ograve;ng. H&igrave;nh ảnh bắt mắt, m&agrave;u sắc đẹp v&agrave; giọng mời gọi của c&aacute;c blogger du lịch g&acirc;y k&iacute;ch th&iacute;ch nhu cầu ăn uống. Kế hoạch chuyến đi v&agrave; v&eacute; t&agrave;u được Hương đặt trước một tuần. &quot;Đi t&agrave;u thử cho biết, d&ugrave; x&oacute;c v&agrave; chậm&quot;. T&agrave;u hoả cũng l&agrave; phương tiện được nhiều du kh&aacute;ch từ H&agrave; Nội chọn để thực hiện food tour do ga Hải Ph&ograve;ng nằm ngay trung t&acirc;m, thuận tiện di chuyển tới nhiều qu&aacute;n ăn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay Hải Ph&ograve;ng. Ảnh:<em>&nbsp;Sơn T&ugrave;ng</em></p>\r\n\r\n<p>Food tour của Diệu Hương bao gồm b&uacute;n chả nem cua bể, dừa dầm, b&uacute;n c&aacute; cay, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;ốc. C&ocirc; nhận x&eacute;t Hải Ph&ograve;ng c&oacute; ẩm thực đa dạng từ đồ mặn đến qu&agrave; ăn vặt đồ ngọt. C&aacute;c m&oacute;n ăn phong ph&uacute;, khiến c&ocirc; muốn quay lại. &quot;80% những video giới thiệu đều chỉ tới qu&aacute;n ăn ngon, 20% l&agrave; những qu&aacute;n kh&ocirc;ng thực sự đặc sắc, chắc tuỳ khẩu vị&quot;, Hương n&oacute;i. Trong c&aacute;c m&oacute;n đ&atilde; ăn, c&ocirc; thấy b&uacute;n c&aacute; cay, b&aacute;nh b&egrave;o kh&ocirc;ng ngon c&ograve;n lại đều ngon &quot;như lời đồn&quot;, v&iacute; dụ b&aacute;nh m&igrave; cay, b&uacute;n chả nem cua bể.</p>\r\n\r\n<p>Diệu Hương chia sẻ c&aacute;c qu&aacute;n ăn nổi tiếng đều đ&ocirc;ng nhưng kh&ocirc;ng c&oacute; t&igrave;nh trạng chen lấn, chặt ch&eacute;m, chỉ mất thời gian xếp h&agrave;ng. C&ocirc; c&oacute; trải nghiệm đ&aacute;ng nhớ ở một cửa h&agrave;ng b&aacute;nh m&igrave; cay khi đặt 300 chiếc mua về l&agrave;m qu&agrave; song kh&ocirc;ng thể v&igrave; kh&aacute;ch qu&aacute; đ&ocirc;ng. Để nhanh, hầu hết kh&aacute;ch đến mua pate v&agrave; b&aacute;nh ri&ecirc;ng về tự phết. Muốn mua phết sẵn, du kh&aacute;ch được trải nghiệm tự cắt b&aacute;nh m&igrave;, sau đ&oacute; đưa cho nh&acirc;n vi&ecirc;n phết pate. &quot;M&igrave;nh thấy giống như một hoạt động &#39;nh&oacute;m&#39;, một trải nghiệm văn h&oacute;a rất hay&quot;, Hương chia sẻ. Nh&acirc;n vi&ecirc;n bận nhưng vẫn hướng dẫn l&agrave;m c&ugrave;ng, gi&uacute;p Hương c&oacute; chuyến đi vui v&agrave; đ&aacute;ng nhớ.</p>\r\n\r\n<p>Sơn T&ugrave;ng, 35 tuổi, ấp ủ thực hiện food tour Hải Ph&ograve;ng từ năm 2021 nhưng do dịch Covid-19 giờ mới thực hiện được. Trong h&igrave;nh dung của T&ugrave;ng, Hải Ph&ograve;ng vẫn nổi tiếng nhất với những cầu cảng, container kh&ocirc; cứng n&ecirc;n muốn trải nghiệm kh&aacute;c hơn tại c&aacute;c g&oacute;c phố b&igrave;nh dị v&agrave; m&oacute;n ăn vặt đường phố. Năm nay, anh quyết định l&ecirc;n đường, chọn t&agrave;u hoả do c&oacute; sở th&iacute;ch chụp ảnh, muốn check-in trong t&agrave;u v&agrave; trước ga. &quot;Nếu bạn kh&ocirc;ng vội xử l&yacute; c&ocirc;ng việc c&aacute; nh&acirc;n th&igrave; đi t&agrave;u an to&agrave;n, nhanh ch&oacute;ng v&agrave; đ&uacute;ng giờ. L&acirc;u nay phương tiện t&agrave;u hoả bị kh&aacute; nhiều người l&atilde;ng qu&ecirc;n&quot;, T&ugrave;ng n&oacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sơn T&ugrave;ng b&ecirc;n trong chợ C&aacute;t Bi - một tụ điểm ăn uống với nhiều qu&aacute;n ăn vặt ngon ở Hải Ph&ograve;ng. Ảnh:&nbsp;<em>NVCC</em></p>\r\n\r\n<p>T&ugrave;ng chọn những m&oacute;n đặc trưng chỉ Hải Ph&ograve;ng mới c&oacute; như b&uacute;n l&ograve;ng c&aacute; cay, b&aacute;nh đa cua bể, b&uacute;n cua hải sản bề bề, ch&aacute;o kho&aacute;i,&nbsp;b&aacute;nh đ&uacute;c t&agrave;u, b&igrave; b&ograve;, gi&aacute; bể, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;tr&agrave; c&uacute;c, dừa dầm, c&agrave; ph&ecirc; cốt dừa... Theo anh, m&oacute;n n&agrave;o cũng ngon nhưng ấn tượng nhất b&aacute;nh m&igrave; cay ăn k&egrave;m ch&iacute; chương (một loại tương ớt Hải Ph&ograve;ng). Tổng cộng, anh thưởng thức được 19 m&oacute;n, song vẫn tiếc khi kh&ocirc;ng đủ thời gian ăn th&ecirc;m một số m&oacute;n như ốc, b&uacute;n chả nem cua bể. Mặc d&ugrave; một số m&oacute;n c&oacute; trải nghiệm thực tế kh&ocirc;ng ngon như giới thiệu, T&ugrave;ng vẫn muốn quay lại lần tiếp theo v&igrave; &quot;ngon, bổ, rẻ&quot;.</p>\r\n\r\n<p>Ho&agrave;ng Huy, 25 tuổi, cũng đi food tour Hải Ph&ograve;ng sau khi đọc c&aacute;c b&igrave;nh luận, đặc biệt l&agrave; những &yacute; kiến tr&aacute;i chiều. Sau khi trải nghiệm thực tế, Huy cho rằng nhiều m&oacute;n ăn được người review &quot;t&acirc;ng bốc qu&aacute; đ&agrave;&quot;.</p>\r\n\r\n<p>&quot;Khi m&igrave;nh thu&ecirc; taxi để đi tới một qu&aacute;n b&aacute;nh đa cua được khen ngon th&igrave; anh t&agrave;i xế bảo &#39;Người Hải Ph&ograve;ng kh&ocirc;ng ai ăn qu&aacute;n đ&oacute;, đừng tin tr&ecirc;n mạng&#39;. Song v&igrave; t&ograve; m&ograve;, m&igrave;nh nhất quyết vẫn đến th&igrave; quả thật kh&ocirc;ng ngon. Khi về H&agrave; Nội chia sẻ cảm nhận với một số người từng ăn giống m&igrave;nh th&igrave; ai cũng n&oacute;i rằng kh&ocirc;ng n&ecirc;n qu&aacute; tin v&agrave;o c&aacute;c video giới thiệu tr&ecirc;n mạng&quot;, Huy cho biết. Lời khuy&ecirc;n khi đi food tour Hải Ph&ograve;ng l&agrave; hỏi th&ecirc;m người địa phương để được chỉ tới những qu&aacute;n ngon, chứ kh&ocirc;ng chỉ xem tr&ecirc;n mạng, từ đ&oacute; c&oacute; trải nghiệm trọn vẹn.</p>\r\n\r\n<p>L&agrave;m việc tại H&agrave; Nội, Ho&agrave;ng Phương, 25 tuổi, qu&ecirc; Hải Ph&ograve;ng, &quot;vừa buồn, vừa vui&quot; khi lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour tăng đột biến. &quot;Vui v&igrave; thấy qu&ecirc; m&igrave;nh được du kh&aacute;ch quan t&acirc;m. Buồn l&agrave; v&igrave; cả năm c&oacute; dịp hiếm hoi về qu&ecirc; để thưởng thức đặc sản nhưng đi chỗ n&agrave;o cũng đ&ocirc;ng hoặc hết h&agrave;ng&quot;, Phương t&acirc;m sự. D&ugrave; vậy Phương vẫn hy vọng food tour Hải Ph&ograve;ng ng&agrave;y c&agrave;ng được nhiều người biết đến để quảng b&aacute; du lịch qu&ecirc; hương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ng&agrave;y 7/5, Sở Du lịch Hải Ph&ograve;ng đ&atilde; c&ocirc;ng bố bản đồ ẩm thực trực tuyến, v&agrave; sẽ c&oacute; bản in ph&aacute;t miễn ph&iacute; tại ga Hải Ph&ograve;ng thời gian tới. Bản đồ gi&uacute;p du kh&aacute;ch dễ lựa chọn h&agrave;ng qu&aacute;n v&agrave; biết về c&aacute;c m&oacute;n ngon tại Hải Ph&ograve;ng. Để tr&aacute;nh t&igrave;nh trạng qu&aacute; tải. Mỗi m&oacute;n ăn tr&ecirc;n bản đồ ẩm thực được gợi &yacute; nhiều qu&aacute;n, phục vụ khẩu vị đa dạng cho du kh&aacute;ch. Những qu&aacute;n xuất hiện tr&ecirc;n bản đồ được lựa chọn với ti&ecirc;u ch&iacute; ngon, được người địa phương c&ocirc;ng nhận v&agrave; đảm bảo vệ sinh an to&agrave;n thực phẩm. Ngo&agrave;i ra, Sở cũng đang phối hợp với c&aacute;c ban ng&agrave;nh để x&acirc;y dựng tuyến xe điện chở kh&aacute;ch từ ga t&agrave;u tới c&aacute;c h&agrave;ng ăn với gi&aacute; phải chăng.</p>\r\n\r\n<p>&Ocirc;ng Vũ Huy Thưởng, Ph&oacute; gi&aacute;m đốc Sở Du lịch Hải Ph&ograve;ng, cho hay: &quot;Food tour l&agrave; một đặc trưng của du lịch Hải Ph&ograve;ng&quot;. Trong 4 ng&agrave;y nghỉ lễ 30/4-1/5, lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour bằng t&agrave;u hoả l&agrave; khoảng hơn 25.000 lượt kh&aacute;ch. Trong đ&oacute;, hai ng&agrave;y 30/4 v&agrave; 1/5 cao điểm với 6.000-7.000 lượt mỗi ng&agrave;y.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i ghi nhận food tour Hải Ph&ograve;ng &#39;b&ugrave;ng nổ&#39; gần đ&acirc;y. Loại h&igrave;nh du lịch n&agrave;y đ&atilde; được triển khai trong v&agrave;i năm, phối hợp quảng b&aacute; qua nhiều k&ecirc;nh truyền th&ocirc;ng, mạng x&atilde; hội, hội nh&oacute;m du lịch&quot;, &ocirc;ng Thưởng cho biết v&agrave; n&oacute;i th&ecirc;m, việc đảm bảo an ninh trật tự khi h&agrave;ng qu&aacute;n đ&ocirc;ng lu&ocirc;n được đảm bảo. C&ocirc;ng an sẽ c&oacute; mặt ở c&aacute;c cửa h&agrave;ng đ&ocirc;ng kh&aacute;ch, song để du kh&aacute;ch thấy thoải m&aacute;i, họ đều mặc thường phục.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một phần của bản đồ ẩm thực Hải Ph&ograve;ng do Sở Du lịch Hải Ph&ograve;ng c&ocirc;ng bố.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', 'st7-1651897899-1651897918-1332-1651898580.jpg', 0, 1, '', '2023-03-24 14:03:16', NULL, 1, '', '', '', '', '', 'Trào lưu food tour Hải Phòng', '', 'trao-luu-food-tour-hai-phong', '', 1),
(156, 'Biển tên phố ở Hải Phòng sẽ có mã QR', 'Từ tháng 12, du khách đến Hải Phòng có thể tìm hiểu về các con đường, công trình bằng cách quét mã QR trên 2.800 biển hiệu.', '<p>Từ th&aacute;ng 12, du kh&aacute;ch đến Hải Ph&ograve;ng c&oacute; thể t&igrave;m hiểu về c&aacute;c con đường, c&ocirc;ng tr&igrave;nh bằng c&aacute;ch qu&eacute;t m&atilde; QR tr&ecirc;n 2.800 biển hiệu.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; dự &aacute;n được UBND TP Hải Ph&ograve;ng ph&ecirc; duyệt v&agrave; triển khai thực hiện trong th&aacute;ng 11. Dự &aacute;n được đ&aacute;nh gi&aacute; ph&ugrave; hợp với xu hướng du lịch v&agrave;&nbsp;food tour&nbsp;đang được ưa chuộng ở th&agrave;nh phố.</p>\r\n\r\n<p>Theo kế hoạch, sẽ c&oacute; 450 đường phố, c&ocirc;ng tr&igrave;nh được gắn m&atilde; QR. Trong đ&oacute; c&oacute; 13 cầu, 10 vườn hoa v&agrave; quảng trường Nh&agrave; h&aacute;t lớn th&agrave;nh phố, với khoảng 2.800 biển hiệu.</p>\r\n\r\n<p>L&atilde;nh đạo UBND TP Hải Ph&ograve;ng cho hay khi người d&acirc;n v&agrave; du kh&aacute;ch d&ugrave;ng điện thoại th&ocirc;ng minh qu&eacute;t m&atilde; QR l&ecirc;n c&aacute;c biển sẽ biết được th&ocirc;ng tin về quy m&ocirc;, tiểu sử danh nh&acirc;n, danh thắng, di t&iacute;ch gắn với tuyến đường, c&ocirc;ng tr&igrave;nh được đặt t&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Biển t&ecirc;n đường ở TP Hải Ph&ograve;ng sẽ c&oacute; m&atilde; QR chứa th&ocirc;ng tin cho kh&aacute;ch du lịch tham khảo. Ảnh:&nbsp;<em>L&ecirc; T&acirc;n</em></p>\r\n\r\n<p>Tổng kinh ph&iacute; thực hiện dự &aacute;n l&agrave; 650 triệu đồng. UBND TP Hải Ph&ograve;ng c&ugrave;ng Sở Văn h&oacute;a v&agrave; Thể thao, Sở Giao th&ocirc;ng Vận tải v&agrave; c&aacute;c đơn vị l&ecirc;n danh s&aacute;ch, sưu tập, bi&ecirc;n soạn th&ocirc;ng tin tiểu sử danh nh&acirc;n hoặc nguồn gốc d&ugrave;ng, &yacute; nghĩ t&ecirc;n được đặt cho 450 c&ocirc;ng tr&igrave;nh rồi chuyển th&agrave;nh m&atilde; QR.</p>\r\n\r\n<p>Căn cứ v&agrave;o hiệu quả thực hiện thời gian đầu. TP Hải Ph&ograve;ng sẽ tiếp tục triển khai mở rộng v&agrave; dịch th&ocirc;ng tin sang tiếng Anh, Trung Quốc, Nhật Bản, H&agrave;n Quốc...</p>\r\n\r\n<p>Hải Ph&ograve;ng l&agrave; địa phương thứ hai tr&ecirc;n cả nước, sau TP HCM, thực hiện việc n&agrave;y.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', 'qr-6568-1667904394-1667962309-9929-1667962312.jpg', 0, 1, '', '2023-03-24 14:03:17', '2023-03-30 15:03:30', 1, '', '', '', '', '', 'Biển tên phố ở Hải Phòng sẽ có mã QR', '', 'bien-ten-pho-o-hai-phong-se-co-ma-qr', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Tư vấn', '', '', 0, 0, '2023-03-24 14:03:29', NULL, 1, '', '', '', '', '', '', 'Tư vấn', '', 'tu-van', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Tư vấn', '', '', '', '', '', '', '', 0, 'tu-van', '', 'Tư vấn', ''),
(2, 1, 'en', 'english version Tư vấn', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tu-van', '', 'Tư vấn', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(305, 153, 'vn', 'Bánh mì que cay cay đất Hải Phòng', 'Không rõ từ lúc nào những chiếc bánh có bề ngang chỉ bằng hai đốt ngón tay và chiều dài 30 cm từ đất cảng đã có mặt và được biết tiếng trên khắp cả nước.', '<p>Kh&ocirc;ng r&otilde; từ l&uacute;c n&agrave;o những chiếc b&aacute;nh c&oacute; bề ngang chỉ bằng hai đốt ng&oacute;n tay v&agrave; chiều d&agrave;i 30 cm từ đất cảng đ&atilde; c&oacute; mặt v&agrave; được biết tiếng tr&ecirc;n khắp cả nước.</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay b&eacute; x&iacute;u đ&atilde; trở th&agrave;nh m&oacute;n ngon d&acirc;n d&atilde; nổi tiếng của đất Hải Ph&ograve;ng. C&aacute;ch đ&acirc;y một v&agrave;i năm, khi đến Hải Ph&ograve;ng, những vị kh&aacute;ch rất t&ograve; m&ograve; v&agrave; th&iacute;ch th&uacute; khi thấy những chiếc b&aacute;nh nhỏ, thơm nức vị pate được d&ugrave;ng để ăn chơi m&agrave; kh&ocirc;ng ngấy ng&aacute;n, ăn tạm ấm l&ograve;ng cho qua cơn đ&oacute;i.</p>\r\n\r\n<p>B&aacute;nh mỳ cay được cho l&agrave; bắt đầu từ một qu&aacute;n nhỏ tr&ecirc;n ng&otilde; Kh&aacute;nh Lạp gần H&agrave;ng K&ecirc;nh v&agrave; đến nay b&aacute;n ở khắp phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay đơn giản.</p>\r\n\r\n<p>Để c&oacute; b&aacute;nh m&igrave; que ngon v&agrave; hấp dẫn thực kh&aacute;ch kh&ocirc;ng đơn giản. Ngo&agrave;i những chiếc b&aacute;nh m&igrave; xinh xinh thơm m&ugrave;i bột m&igrave; mới ra l&ograve;, c&aacute;c h&agrave;ng b&aacute;nh đều đa phần tự tay l&agrave;m pate, nh&acirc;n ch&iacute;nh của m&oacute;n b&aacute;nh m&igrave;. T&ugrave;y v&agrave;o độ kh&eacute;o l&eacute;o của b&agrave; chủ cho ra những mẻ pate được l&agrave;m từ gan, mỡ, thịt lợn nạc, th&ecirc;m muối hạt ti&ecirc;u thơm lừng. H&agrave;nh kh&ocirc; cũng tự phi lấy v&agrave; tương ớt, m&oacute;n đặc sản kh&ocirc;ng thể thiếu cho b&aacute;nh m&igrave; cũng được tự l&agrave;m lấy từ ớt tươi cay x&eacute;.</p>\r\n\r\n<p>B&aacute;nh m&igrave; được cho pate c&ugrave;ng ch&uacute;t h&agrave;nh kh&ocirc; cho v&agrave;o l&ograve; nướng. Tr&ecirc;n vỉa h&egrave; nhỏ với l&ograve; nướng b&aacute;nh đơn giản v&agrave; v&agrave;i ba chiếc ghế, qu&aacute;n b&aacute;nh m&igrave; tấp nập người mua mua b&aacute;n b&aacute;n. Từ đầu phố, thấy hương thơm hấp dẫn của b&aacute;nh m&igrave; c&ugrave;ng pate đ&atilde; muốn đến ăn. B&aacute;nh nhỏ ăn gi&ograve;n tan, thơm ngậy m&agrave; kh&ocirc;ng ngấy ng&aacute;n. M&oacute;n b&aacute;nh m&igrave; cay tự l&uacute;c n&agrave;o đ&atilde; trở th&agrave;nh bữa điểm t&acirc;m, bữa l&oacute;t dạ khi đ&oacute;i l&ograve;ng. Với lũ học tr&ograve;, b&aacute;nh m&igrave; cay l&agrave; m&oacute;n kho&aacute;i khẩu. Chỉ hai chiếc b&aacute;nh m&igrave; cay l&agrave; đủ, gi&aacute; lại b&igrave;nh d&acirc;n. Ăn ngay tại chỗ cũng được hay mua mang về, mang đi đường vừa đi vừa ăn cũng được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể th&ecirc;m tương ớt t&ugrave;y theo khẩu vị.</p>\r\n\r\n<p>Một chiếc b&aacute;nh m&igrave; cay h&ocirc;m nay c&oacute; gi&aacute; khoảng 6.000 đồng với nh&acirc;n đơn giản gồm ch&uacute;t pate, ch&uacute;t rau m&ugrave;i, c&oacute; thể th&ecirc;m ch&uacute;t ruốc thịt, v&agrave; ch&uacute;t ớt cay t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'banh-mi-que-cay-cay-dat-hai-phong', 'Bánh mì que cay cay đất Hải Phòng', '', ''),
(306, 153, 'en', 'english version Bánh mì que cay cay đất Hải Phòng', 'english version Không rõ từ lúc nào những chiếc bánh có bề ngang chỉ bằng hai đốt ngón tay và chiều dài 30 cm từ đất cảng đã có mặt và được biết tiếng trên khắp cả nước.', 'english version <p>Kh&ocirc;ng r&otilde; từ l&uacute;c n&agrave;o những chiếc b&aacute;nh c&oacute; bề ngang chỉ bằng hai đốt ng&oacute;n tay v&agrave; chiều d&agrave;i 30 cm từ đất cảng đ&atilde; c&oacute; mặt v&agrave; được biết tiếng tr&ecirc;n khắp cả nước.</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay b&eacute; x&iacute;u đ&atilde; trở th&agrave;nh m&oacute;n ngon d&acirc;n d&atilde; nổi tiếng của đất Hải Ph&ograve;ng. C&aacute;ch đ&acirc;y một v&agrave;i năm, khi đến Hải Ph&ograve;ng, những vị kh&aacute;ch rất t&ograve; m&ograve; v&agrave; th&iacute;ch th&uacute; khi thấy những chiếc b&aacute;nh nhỏ, thơm nức vị pate được d&ugrave;ng để ăn chơi m&agrave; kh&ocirc;ng ngấy ng&aacute;n, ăn tạm ấm l&ograve;ng cho qua cơn đ&oacute;i.</p>\r\n\r\n<p>B&aacute;nh mỳ cay được cho l&agrave; bắt đầu từ một qu&aacute;n nhỏ tr&ecirc;n ng&otilde; Kh&aacute;nh Lạp gần H&agrave;ng K&ecirc;nh v&agrave; đến nay b&aacute;n ở khắp phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những chiếc b&aacute;nh m&igrave; cay đơn giản.</p>\r\n\r\n<p>Để c&oacute; b&aacute;nh m&igrave; que ngon v&agrave; hấp dẫn thực kh&aacute;ch kh&ocirc;ng đơn giản. Ngo&agrave;i những chiếc b&aacute;nh m&igrave; xinh xinh thơm m&ugrave;i bột m&igrave; mới ra l&ograve;, c&aacute;c h&agrave;ng b&aacute;nh đều đa phần tự tay l&agrave;m pate, nh&acirc;n ch&iacute;nh của m&oacute;n b&aacute;nh m&igrave;. T&ugrave;y v&agrave;o độ kh&eacute;o l&eacute;o của b&agrave; chủ cho ra những mẻ pate được l&agrave;m từ gan, mỡ, thịt lợn nạc, th&ecirc;m muối hạt ti&ecirc;u thơm lừng. H&agrave;nh kh&ocirc; cũng tự phi lấy v&agrave; tương ớt, m&oacute;n đặc sản kh&ocirc;ng thể thiếu cho b&aacute;nh m&igrave; cũng được tự l&agrave;m lấy từ ớt tươi cay x&eacute;.</p>\r\n\r\n<p>B&aacute;nh m&igrave; được cho pate c&ugrave;ng ch&uacute;t h&agrave;nh kh&ocirc; cho v&agrave;o l&ograve; nướng. Tr&ecirc;n vỉa h&egrave; nhỏ với l&ograve; nướng b&aacute;nh đơn giản v&agrave; v&agrave;i ba chiếc ghế, qu&aacute;n b&aacute;nh m&igrave; tấp nập người mua mua b&aacute;n b&aacute;n. Từ đầu phố, thấy hương thơm hấp dẫn của b&aacute;nh m&igrave; c&ugrave;ng pate đ&atilde; muốn đến ăn. B&aacute;nh nhỏ ăn gi&ograve;n tan, thơm ngậy m&agrave; kh&ocirc;ng ngấy ng&aacute;n. M&oacute;n b&aacute;nh m&igrave; cay tự l&uacute;c n&agrave;o đ&atilde; trở th&agrave;nh bữa điểm t&acirc;m, bữa l&oacute;t dạ khi đ&oacute;i l&ograve;ng. Với lũ học tr&ograve;, b&aacute;nh m&igrave; cay l&agrave; m&oacute;n kho&aacute;i khẩu. Chỉ hai chiếc b&aacute;nh m&igrave; cay l&agrave; đủ, gi&aacute; lại b&igrave;nh d&acirc;n. Ăn ngay tại chỗ cũng được hay mua mang về, mang đi đường vừa đi vừa ăn cũng được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn c&oacute; thể th&ecirc;m tương ớt t&ugrave;y theo khẩu vị.</p>\r\n\r\n<p>Một chiếc b&aacute;nh m&igrave; cay h&ocirc;m nay c&oacute; gi&aacute; khoảng 6.000 đồng với nh&acirc;n đơn giản gồm ch&uacute;t pate, ch&uacute;t rau m&ugrave;i, c&oacute; thể th&ecirc;m ch&uacute;t ruốc thịt, v&agrave; ch&uacute;t ớt cay t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'en-banh-mi-que-cay-cay-dat-hai-phong', 'Bánh mì que cay cay đất Hải Phòng', '', ''),
(307, 154, 'vn', 'Chí chương - gia vị lạ mà quen của Hải Phòng', 'Nhìn giống tương ớt nhưng chí chương có hương vị rất riêng theo bí quyết của người Hải Phòng.', '<p>Nh&igrave;n giống tương ớt nhưng ch&iacute; chương c&oacute; hương vị rất ri&ecirc;ng theo b&iacute; quyết của người Hải Ph&ograve;ng.</p>\r\n\r\n<p>Du kh&aacute;ch lần đầu đến th&agrave;nh phố hoa phượng đỏ sẽ bỡ ngỡ khi người&nbsp;Hải Ph&ograve;ng&nbsp;gọi tương ớt l&agrave; ch&iacute; chương. Bản th&acirc;n nhiều người Hải Ph&ograve;ng cũng thắc mắc, kh&ocirc;ng biết v&igrave; sao ch&iacute; chương lại được ph&acirc;n biệt rạch r&ograve;i với tương ớt, d&ugrave; những năm gần đ&acirc;y hai t&ecirc;n gọi n&agrave;y đang dần được d&ugrave;ng như một. Khi tr&agrave;o lưu&nbsp;food tour Hải Ph&ograve;ng&nbsp;l&ecirc;n ng&ocirc;i, nhiều người đam m&ecirc; ẩm thực cũng quan t&acirc;m v&agrave; muốn t&igrave;m hiểu hơn về ch&iacute; chương.</p>\r\n\r\n<p>Ch&iacute; chương giống tương ớt nhưng c&oacute; một v&agrave;i điểm kh&aacute;c biệt, m&agrave;u đỏ tươi bắt mắt. &Agrave;nh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Một trong những nguồn gốc về ch&iacute; chương l&agrave; từ người gốc Hoa ở Hải Ph&ograve;ng. Họ sống nhiều ở khu vực chợ Đổ, hồ Tam Bạc, gọi tương ớt l&agrave; ch&iacute; chương do gần với phi&ecirc;n &acirc;m theo tiếng Trung Quốc. Tuy nhi&ecirc;n, ch&iacute; chương s&aacute;nh hơn, đậm v&agrave; cay, cũng thơm hơn, v&agrave; kh&ocirc;ng chỉ thuần vị ớt như tương ớt b&igrave;nh thường.</p>\r\n\r\n<p>Nguy&ecirc;n liệu l&agrave;m ch&iacute; chương bao gồm ớt v&agrave; c&agrave; chua tươi bỏ hạt, trộn với tỏi băm nhuyễn, cho th&ecirc;m ch&uacute;t muối rồi l&ecirc;n men theo c&ocirc;ng thức đặc biệt của t&ugrave;y nơi sản xuất. Ch&iacute; chương ngon phải cay nồng, m&agrave;u đỏ tươi bắt mắt, ăn l&agrave; nhận ra sự kh&aacute;c biệt so với tương ớt b&igrave;nh thường d&ugrave; kh&oacute; mi&ecirc;u tả bằng lời. T&ugrave;y v&agrave;o c&aacute;ch pha chế, ch&iacute; chương c&oacute; thể hơi chua nhẹ.</p>\r\n\r\n<p>Ch&iacute; chương l&agrave; gia vị để ăn c&ugrave;ng c&aacute;c đặc sản Hải Ph&ograve;ng như b&uacute;n c&aacute; cay, b&aacute;nh đa cua... Với c&aacute;c m&oacute;n nước như vậy, ch&iacute; chương gi&uacute;p l&agrave;m đậm đ&agrave; th&ecirc;m vị của nước d&ugrave;ng. Thực kh&aacute;ch khi ăn sẽ cảm nhận được vị cay của tương kết hợp với chua thanh của quất, cảm gi&aacute;c muốn ăn m&atilde;i kh&ocirc;ng bị ngấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay kh&ocirc;ng thể thiếu ch&iacute; chương ăn k&egrave;m. Ảnh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Đặc biệt, m&oacute;n b&aacute;nh m&igrave; cay Hải Ph&ograve;ng kh&ocirc;ng thể thiếu gia vị n&agrave;y. Từ &quot;cay&quot; trong t&ecirc;n m&oacute;n ăn cũng xuất ph&aacute;t từ việc ăn c&ugrave;ng ch&iacute; chương. Thực kh&aacute;ch nh&uacute;ng đẫm b&aacute;nh m&igrave; với ch&iacute; chương được chan sẵn ra b&aacute;t, cắn vỏ b&aacute;nh m&igrave; gi&ograve;n rụm, cảm nhận vị thơm cay lẫn với mặn ngậy của pate Hải Ph&ograve;ng vốn rất nổi tiếng. Khi b&aacute;n mang về, chủ qu&aacute;n thường cho thực kh&aacute;ch rất nhiều ch&iacute; chương, &quot;chấm cho thỏa&quot;.</p>\r\n\r\n<p>H&atilde;y mạnh dạn n&oacute;i &quot;Cho xin &iacute;t ch&iacute; chương&quot; để người Hải Ph&ograve;ng vui khi bạn biết t&ecirc;n loại tương ớt đặc sản n&agrave;y. Đến th&agrave;nh phố cảng, đừng qu&ecirc;n thưởng thức ch&iacute; chương để c&aacute;c m&oacute;n ăn trở n&ecirc;n tr&ograve;n vị hơn.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'chi-chuong-gia-vi-la-ma-quen-cua-hai-phong', 'Chí chương - gia vị lạ mà quen của Hải Phòng', '', ''),
(308, 154, 'en', 'english version Chí chương - gia vị lạ mà quen của Hải Phòng', 'english version ', 'english version <p>Nh&igrave;n giống tương ớt nhưng ch&iacute; chương c&oacute; hương vị rất ri&ecirc;ng theo b&iacute; quyết của người Hải Ph&ograve;ng.</p>\r\n\r\n<p>Du kh&aacute;ch lần đầu đến th&agrave;nh phố hoa phượng đỏ sẽ bỡ ngỡ khi người&nbsp;Hải Ph&ograve;ng&nbsp;gọi tương ớt l&agrave; ch&iacute; chương. Bản th&acirc;n nhiều người Hải Ph&ograve;ng cũng thắc mắc, kh&ocirc;ng biết v&igrave; sao ch&iacute; chương lại được ph&acirc;n biệt rạch r&ograve;i với tương ớt, d&ugrave; những năm gần đ&acirc;y hai t&ecirc;n gọi n&agrave;y đang dần được d&ugrave;ng như một. Khi tr&agrave;o lưu&nbsp;food tour Hải Ph&ograve;ng&nbsp;l&ecirc;n ng&ocirc;i, nhiều người đam m&ecirc; ẩm thực cũng quan t&acirc;m v&agrave; muốn t&igrave;m hiểu hơn về ch&iacute; chương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Dulich/Dulich.amthuc.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Dulich/Dulich.amthuc.detail_0\" scrolling=\"no\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Ch&iacute; chương giống tương ớt nhưng c&oacute; một v&agrave;i điểm kh&aacute;c biệt, m&agrave;u đỏ tươi bắt mắt. &Agrave;nh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Một trong những nguồn gốc về ch&iacute; chương l&agrave; từ người gốc Hoa ở Hải Ph&ograve;ng. Họ sống nhiều ở khu vực chợ Đổ, hồ Tam Bạc, gọi tương ớt l&agrave; ch&iacute; chương do gần với phi&ecirc;n &acirc;m theo tiếng Trung Quốc. Tuy nhi&ecirc;n, ch&iacute; chương s&aacute;nh hơn, đậm v&agrave; cay, cũng thơm hơn, v&agrave; kh&ocirc;ng chỉ thuần vị ớt như tương ớt b&igrave;nh thường.</p>\r\n\r\n<p>Nguy&ecirc;n liệu l&agrave;m ch&iacute; chương bao gồm ớt v&agrave; c&agrave; chua tươi bỏ hạt, trộn với tỏi băm nhuyễn, cho th&ecirc;m ch&uacute;t muối rồi l&ecirc;n men theo c&ocirc;ng thức đặc biệt của t&ugrave;y nơi sản xuất. Ch&iacute; chương ngon phải cay nồng, m&agrave;u đỏ tươi bắt mắt, ăn l&agrave; nhận ra sự kh&aacute;c biệt so với tương ớt b&igrave;nh thường d&ugrave; kh&oacute; mi&ecirc;u tả bằng lời. T&ugrave;y v&agrave;o c&aacute;ch pha chế, ch&iacute; chương c&oacute; thể hơi chua nhẹ.</p>\r\n\r\n<p>Ch&iacute; chương l&agrave; gia vị để ăn c&ugrave;ng c&aacute;c đặc sản Hải Ph&ograve;ng như b&uacute;n c&aacute; cay, b&aacute;nh đa cua... Với c&aacute;c m&oacute;n nước như vậy, ch&iacute; chương gi&uacute;p l&agrave;m đậm đ&agrave; th&ecirc;m vị của nước d&ugrave;ng. Thực kh&aacute;ch khi ăn sẽ cảm nhận được vị cay của tương kết hợp với chua thanh của quất, cảm gi&aacute;c muốn ăn m&atilde;i kh&ocirc;ng bị ngấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay kh&ocirc;ng thể thiếu ch&iacute; chương ăn k&egrave;m. Ảnh:&nbsp;<em>Ngọc &Aacute;nh</em></p>\r\n\r\n<p>Đặc biệt, m&oacute;n b&aacute;nh m&igrave; cay Hải Ph&ograve;ng kh&ocirc;ng thể thiếu gia vị n&agrave;y. Từ &quot;cay&quot; trong t&ecirc;n m&oacute;n ăn cũng xuất ph&aacute;t từ việc ăn c&ugrave;ng ch&iacute; chương. Thực kh&aacute;ch nh&uacute;ng đẫm b&aacute;nh m&igrave; với ch&iacute; chương được chan sẵn ra b&aacute;t, cắn vỏ b&aacute;nh m&igrave; gi&ograve;n rụm, cảm nhận vị thơm cay lẫn với mặn ngậy của pate Hải Ph&ograve;ng vốn rất nổi tiếng. Khi b&aacute;n mang về, chủ qu&aacute;n thường cho thực kh&aacute;ch rất nhiều ch&iacute; chương, &quot;chấm cho thỏa&quot;.</p>\r\n\r\n<p>H&atilde;y mạnh dạn n&oacute;i &quot;Cho xin &iacute;t ch&iacute; chương&quot; để người Hải Ph&ograve;ng vui khi bạn biết t&ecirc;n loại tương ớt đặc sản n&agrave;y. Đến th&agrave;nh phố cảng, đừng qu&ecirc;n thưởng thức ch&iacute; chương để c&aacute;c m&oacute;n ăn trở n&ecirc;n tr&ograve;n vị hơn.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'en-chi-chuong-gia-vi-la-ma-quen-cua-hai-phong', 'Chí chương - gia vị lạ mà quen của Hải Phòng', '', ''),
(309, 155, 'vn', 'Trào lưu food tour Hải Phòng', 'Đến Hải Phòng để thưởng thức ẩm thực đang trở thành một trào lưu, sau khi nhiều video giới thiệu xuất hiện, kèm hiệu ứng truyền miệng.', '<p>Đến Hải Ph&ograve;ng để thưởng thức ẩm thực đang trở th&agrave;nh một tr&agrave;o lưu, sau khi nhiều video giới thiệu xuất hiện, k&egrave;m hiệu ứng truyền miệng.</p>\r\n\r\n<p>Thấy bạn b&egrave; đi t&agrave;u về&nbsp;Hải Ph&ograve;ng&nbsp;trải nghiệm tour ẩm thực (food tour), Diệu Hương, 26 tuổi, l&ecirc;n đường dịp nghỉ lễ 30/4. Theo Hương, Hải Ph&ograve;ng l&agrave; điểm đến gần, dễ di chuyển trong ng&agrave;y, c&oacute; thể l&agrave;m những điều th&acirc;n quen m&agrave; hội bạn thường l&agrave;m ở H&agrave; Nội như hẹn h&ograve; ăn uống, tr&ograve; chuyện, ngồi c&agrave; ph&ecirc; nhưng lại kh&aacute;c biệt, c&oacute; thể &quot;đổi gi&oacute;&quot;.</p>\r\n\r\n<p>Hương cho hay 1-2 th&aacute;ng gần đ&acirc;y, li&ecirc;n tục xem được c&aacute;c video cảm nhận food tour ở Hải Ph&ograve;ng. H&igrave;nh ảnh bắt mắt, m&agrave;u sắc đẹp v&agrave; giọng mời gọi của c&aacute;c blogger du lịch g&acirc;y k&iacute;ch th&iacute;ch nhu cầu ăn uống. Kế hoạch chuyến đi v&agrave; v&eacute; t&agrave;u được Hương đặt trước một tuần. &quot;Đi t&agrave;u thử cho biết, d&ugrave; x&oacute;c v&agrave; chậm&quot;. T&agrave;u hoả cũng l&agrave; phương tiện được nhiều du kh&aacute;ch từ H&agrave; Nội chọn để thực hiện food tour do ga Hải Ph&ograve;ng nằm ngay trung t&acirc;m, thuận tiện di chuyển tới nhiều qu&aacute;n ăn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay Hải Ph&ograve;ng. Ảnh:<em>&nbsp;Sơn T&ugrave;ng</em></p>\r\n\r\n<p>Food tour của Diệu Hương bao gồm b&uacute;n chả nem cua bể, dừa dầm, b&uacute;n c&aacute; cay, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;ốc. C&ocirc; nhận x&eacute;t Hải Ph&ograve;ng c&oacute; ẩm thực đa dạng từ đồ mặn đến qu&agrave; ăn vặt đồ ngọt. C&aacute;c m&oacute;n ăn phong ph&uacute;, khiến c&ocirc; muốn quay lại. &quot;80% những video giới thiệu đều chỉ tới qu&aacute;n ăn ngon, 20% l&agrave; những qu&aacute;n kh&ocirc;ng thực sự đặc sắc, chắc tuỳ khẩu vị&quot;, Hương n&oacute;i. Trong c&aacute;c m&oacute;n đ&atilde; ăn, c&ocirc; thấy b&uacute;n c&aacute; cay, b&aacute;nh b&egrave;o kh&ocirc;ng ngon c&ograve;n lại đều ngon &quot;như lời đồn&quot;, v&iacute; dụ b&aacute;nh m&igrave; cay, b&uacute;n chả nem cua bể.</p>\r\n\r\n<p>Diệu Hương chia sẻ c&aacute;c qu&aacute;n ăn nổi tiếng đều đ&ocirc;ng nhưng kh&ocirc;ng c&oacute; t&igrave;nh trạng chen lấn, chặt ch&eacute;m, chỉ mất thời gian xếp h&agrave;ng. C&ocirc; c&oacute; trải nghiệm đ&aacute;ng nhớ ở một cửa h&agrave;ng b&aacute;nh m&igrave; cay khi đặt 300 chiếc mua về l&agrave;m qu&agrave; song kh&ocirc;ng thể v&igrave; kh&aacute;ch qu&aacute; đ&ocirc;ng. Để nhanh, hầu hết kh&aacute;ch đến mua pate v&agrave; b&aacute;nh ri&ecirc;ng về tự phết. Muốn mua phết sẵn, du kh&aacute;ch được trải nghiệm tự cắt b&aacute;nh m&igrave;, sau đ&oacute; đưa cho nh&acirc;n vi&ecirc;n phết pate. &quot;M&igrave;nh thấy giống như một hoạt động &#39;nh&oacute;m&#39;, một trải nghiệm văn h&oacute;a rất hay&quot;, Hương chia sẻ. Nh&acirc;n vi&ecirc;n bận nhưng vẫn hướng dẫn l&agrave;m c&ugrave;ng, gi&uacute;p Hương c&oacute; chuyến đi vui v&agrave; đ&aacute;ng nhớ.</p>\r\n\r\n<p>Sơn T&ugrave;ng, 35 tuổi, ấp ủ thực hiện food tour Hải Ph&ograve;ng từ năm 2021 nhưng do dịch Covid-19 giờ mới thực hiện được. Trong h&igrave;nh dung của T&ugrave;ng, Hải Ph&ograve;ng vẫn nổi tiếng nhất với những cầu cảng, container kh&ocirc; cứng n&ecirc;n muốn trải nghiệm kh&aacute;c hơn tại c&aacute;c g&oacute;c phố b&igrave;nh dị v&agrave; m&oacute;n ăn vặt đường phố. Năm nay, anh quyết định l&ecirc;n đường, chọn t&agrave;u hoả do c&oacute; sở th&iacute;ch chụp ảnh, muốn check-in trong t&agrave;u v&agrave; trước ga. &quot;Nếu bạn kh&ocirc;ng vội xử l&yacute; c&ocirc;ng việc c&aacute; nh&acirc;n th&igrave; đi t&agrave;u an to&agrave;n, nhanh ch&oacute;ng v&agrave; đ&uacute;ng giờ. L&acirc;u nay phương tiện t&agrave;u hoả bị kh&aacute; nhiều người l&atilde;ng qu&ecirc;n&quot;, T&ugrave;ng n&oacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sơn T&ugrave;ng b&ecirc;n trong chợ C&aacute;t Bi - một tụ điểm ăn uống với nhiều qu&aacute;n ăn vặt ngon ở Hải Ph&ograve;ng. Ảnh:&nbsp;<em>NVCC</em></p>\r\n\r\n<p>T&ugrave;ng chọn những m&oacute;n đặc trưng chỉ Hải Ph&ograve;ng mới c&oacute; như b&uacute;n l&ograve;ng c&aacute; cay, b&aacute;nh đa cua bể, b&uacute;n cua hải sản bề bề, ch&aacute;o kho&aacute;i,&nbsp;b&aacute;nh đ&uacute;c t&agrave;u, b&igrave; b&ograve;, gi&aacute; bể, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;tr&agrave; c&uacute;c, dừa dầm, c&agrave; ph&ecirc; cốt dừa... Theo anh, m&oacute;n n&agrave;o cũng ngon nhưng ấn tượng nhất b&aacute;nh m&igrave; cay ăn k&egrave;m ch&iacute; chương (một loại tương ớt Hải Ph&ograve;ng). Tổng cộng, anh thưởng thức được 19 m&oacute;n, song vẫn tiếc khi kh&ocirc;ng đủ thời gian ăn th&ecirc;m một số m&oacute;n như ốc, b&uacute;n chả nem cua bể. Mặc d&ugrave; một số m&oacute;n c&oacute; trải nghiệm thực tế kh&ocirc;ng ngon như giới thiệu, T&ugrave;ng vẫn muốn quay lại lần tiếp theo v&igrave; &quot;ngon, bổ, rẻ&quot;.</p>\r\n\r\n<p>Ho&agrave;ng Huy, 25 tuổi, cũng đi food tour Hải Ph&ograve;ng sau khi đọc c&aacute;c b&igrave;nh luận, đặc biệt l&agrave; những &yacute; kiến tr&aacute;i chiều. Sau khi trải nghiệm thực tế, Huy cho rằng nhiều m&oacute;n ăn được người review &quot;t&acirc;ng bốc qu&aacute; đ&agrave;&quot;.</p>\r\n\r\n<p>&quot;Khi m&igrave;nh thu&ecirc; taxi để đi tới một qu&aacute;n b&aacute;nh đa cua được khen ngon th&igrave; anh t&agrave;i xế bảo &#39;Người Hải Ph&ograve;ng kh&ocirc;ng ai ăn qu&aacute;n đ&oacute;, đừng tin tr&ecirc;n mạng&#39;. Song v&igrave; t&ograve; m&ograve;, m&igrave;nh nhất quyết vẫn đến th&igrave; quả thật kh&ocirc;ng ngon. Khi về H&agrave; Nội chia sẻ cảm nhận với một số người từng ăn giống m&igrave;nh th&igrave; ai cũng n&oacute;i rằng kh&ocirc;ng n&ecirc;n qu&aacute; tin v&agrave;o c&aacute;c video giới thiệu tr&ecirc;n mạng&quot;, Huy cho biết. Lời khuy&ecirc;n khi đi food tour Hải Ph&ograve;ng l&agrave; hỏi th&ecirc;m người địa phương để được chỉ tới những qu&aacute;n ngon, chứ kh&ocirc;ng chỉ xem tr&ecirc;n mạng, từ đ&oacute; c&oacute; trải nghiệm trọn vẹn.</p>\r\n\r\n<p>L&agrave;m việc tại H&agrave; Nội, Ho&agrave;ng Phương, 25 tuổi, qu&ecirc; Hải Ph&ograve;ng, &quot;vừa buồn, vừa vui&quot; khi lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour tăng đột biến. &quot;Vui v&igrave; thấy qu&ecirc; m&igrave;nh được du kh&aacute;ch quan t&acirc;m. Buồn l&agrave; v&igrave; cả năm c&oacute; dịp hiếm hoi về qu&ecirc; để thưởng thức đặc sản nhưng đi chỗ n&agrave;o cũng đ&ocirc;ng hoặc hết h&agrave;ng&quot;, Phương t&acirc;m sự. D&ugrave; vậy Phương vẫn hy vọng food tour Hải Ph&ograve;ng ng&agrave;y c&agrave;ng được nhiều người biết đến để quảng b&aacute; du lịch qu&ecirc; hương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ng&agrave;y 7/5, Sở Du lịch Hải Ph&ograve;ng đ&atilde; c&ocirc;ng bố bản đồ ẩm thực trực tuyến, v&agrave; sẽ c&oacute; bản in ph&aacute;t miễn ph&iacute; tại ga Hải Ph&ograve;ng thời gian tới. Bản đồ gi&uacute;p du kh&aacute;ch dễ lựa chọn h&agrave;ng qu&aacute;n v&agrave; biết về c&aacute;c m&oacute;n ngon tại Hải Ph&ograve;ng. Để tr&aacute;nh t&igrave;nh trạng qu&aacute; tải. Mỗi m&oacute;n ăn tr&ecirc;n bản đồ ẩm thực được gợi &yacute; nhiều qu&aacute;n, phục vụ khẩu vị đa dạng cho du kh&aacute;ch. Những qu&aacute;n xuất hiện tr&ecirc;n bản đồ được lựa chọn với ti&ecirc;u ch&iacute; ngon, được người địa phương c&ocirc;ng nhận v&agrave; đảm bảo vệ sinh an to&agrave;n thực phẩm. Ngo&agrave;i ra, Sở cũng đang phối hợp với c&aacute;c ban ng&agrave;nh để x&acirc;y dựng tuyến xe điện chở kh&aacute;ch từ ga t&agrave;u tới c&aacute;c h&agrave;ng ăn với gi&aacute; phải chăng.</p>\r\n\r\n<p>&Ocirc;ng Vũ Huy Thưởng, Ph&oacute; gi&aacute;m đốc Sở Du lịch Hải Ph&ograve;ng, cho hay: &quot;Food tour l&agrave; một đặc trưng của du lịch Hải Ph&ograve;ng&quot;. Trong 4 ng&agrave;y nghỉ lễ 30/4-1/5, lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour bằng t&agrave;u hoả l&agrave; khoảng hơn 25.000 lượt kh&aacute;ch. Trong đ&oacute;, hai ng&agrave;y 30/4 v&agrave; 1/5 cao điểm với 6.000-7.000 lượt mỗi ng&agrave;y.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i ghi nhận food tour Hải Ph&ograve;ng &#39;b&ugrave;ng nổ&#39; gần đ&acirc;y. Loại h&igrave;nh du lịch n&agrave;y đ&atilde; được triển khai trong v&agrave;i năm, phối hợp quảng b&aacute; qua nhiều k&ecirc;nh truyền th&ocirc;ng, mạng x&atilde; hội, hội nh&oacute;m du lịch&quot;, &ocirc;ng Thưởng cho biết v&agrave; n&oacute;i th&ecirc;m, việc đảm bảo an ninh trật tự khi h&agrave;ng qu&aacute;n đ&ocirc;ng lu&ocirc;n được đảm bảo. C&ocirc;ng an sẽ c&oacute; mặt ở c&aacute;c cửa h&agrave;ng đ&ocirc;ng kh&aacute;ch, song để du kh&aacute;ch thấy thoải m&aacute;i, họ đều mặc thường phục.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một phần của bản đồ ẩm thực Hải Ph&ograve;ng do Sở Du lịch Hải Ph&ograve;ng c&ocirc;ng bố.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'trao-luu-food-tour-hai-phong', 'Trào lưu food tour Hải Phòng', '', ''),
(310, 155, 'en', 'english version Trào lưu food tour Hải Phòng', 'english version Đến Hải Phòng để thưởng thức ẩm thực đang trở thành một trào lưu, sau khi nhiều video giới thiệu xuất hiện, kèm hiệu ứng truyền miệng.', 'english version <p>Đến Hải Ph&ograve;ng để thưởng thức ẩm thực đang trở th&agrave;nh một tr&agrave;o lưu, sau khi nhiều video giới thiệu xuất hiện, k&egrave;m hiệu ứng truyền miệng.</p>\r\n\r\n<p>Thấy bạn b&egrave; đi t&agrave;u về&nbsp;Hải Ph&ograve;ng&nbsp;trải nghiệm tour ẩm thực (food tour), Diệu Hương, 26 tuổi, l&ecirc;n đường dịp nghỉ lễ 30/4. Theo Hương, Hải Ph&ograve;ng l&agrave; điểm đến gần, dễ di chuyển trong ng&agrave;y, c&oacute; thể l&agrave;m những điều th&acirc;n quen m&agrave; hội bạn thường l&agrave;m ở H&agrave; Nội như hẹn h&ograve; ăn uống, tr&ograve; chuyện, ngồi c&agrave; ph&ecirc; nhưng lại kh&aacute;c biệt, c&oacute; thể &quot;đổi gi&oacute;&quot;.</p>\r\n\r\n<p>Hương cho hay 1-2 th&aacute;ng gần đ&acirc;y, li&ecirc;n tục xem được c&aacute;c video cảm nhận food tour ở Hải Ph&ograve;ng. H&igrave;nh ảnh bắt mắt, m&agrave;u sắc đẹp v&agrave; giọng mời gọi của c&aacute;c blogger du lịch g&acirc;y k&iacute;ch th&iacute;ch nhu cầu ăn uống. Kế hoạch chuyến đi v&agrave; v&eacute; t&agrave;u được Hương đặt trước một tuần. &quot;Đi t&agrave;u thử cho biết, d&ugrave; x&oacute;c v&agrave; chậm&quot;. T&agrave;u hoả cũng l&agrave; phương tiện được nhiều du kh&aacute;ch từ H&agrave; Nội chọn để thực hiện food tour do ga Hải Ph&ograve;ng nằm ngay trung t&acirc;m, thuận tiện di chuyển tới nhiều qu&aacute;n ăn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&aacute;nh m&igrave; cay Hải Ph&ograve;ng. Ảnh:<em>&nbsp;Sơn T&ugrave;ng</em></p>\r\n\r\n<p>Food tour của Diệu Hương bao gồm b&uacute;n chả nem cua bể, dừa dầm, b&uacute;n c&aacute; cay, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;ốc. C&ocirc; nhận x&eacute;t Hải Ph&ograve;ng c&oacute; ẩm thực đa dạng từ đồ mặn đến qu&agrave; ăn vặt đồ ngọt. C&aacute;c m&oacute;n ăn phong ph&uacute;, khiến c&ocirc; muốn quay lại. &quot;80% những video giới thiệu đều chỉ tới qu&aacute;n ăn ngon, 20% l&agrave; những qu&aacute;n kh&ocirc;ng thực sự đặc sắc, chắc tuỳ khẩu vị&quot;, Hương n&oacute;i. Trong c&aacute;c m&oacute;n đ&atilde; ăn, c&ocirc; thấy b&uacute;n c&aacute; cay, b&aacute;nh b&egrave;o kh&ocirc;ng ngon c&ograve;n lại đều ngon &quot;như lời đồn&quot;, v&iacute; dụ b&aacute;nh m&igrave; cay, b&uacute;n chả nem cua bể.</p>\r\n\r\n<p>Diệu Hương chia sẻ c&aacute;c qu&aacute;n ăn nổi tiếng đều đ&ocirc;ng nhưng kh&ocirc;ng c&oacute; t&igrave;nh trạng chen lấn, chặt ch&eacute;m, chỉ mất thời gian xếp h&agrave;ng. C&ocirc; c&oacute; trải nghiệm đ&aacute;ng nhớ ở một cửa h&agrave;ng b&aacute;nh m&igrave; cay khi đặt 300 chiếc mua về l&agrave;m qu&agrave; song kh&ocirc;ng thể v&igrave; kh&aacute;ch qu&aacute; đ&ocirc;ng. Để nhanh, hầu hết kh&aacute;ch đến mua pate v&agrave; b&aacute;nh ri&ecirc;ng về tự phết. Muốn mua phết sẵn, du kh&aacute;ch được trải nghiệm tự cắt b&aacute;nh m&igrave;, sau đ&oacute; đưa cho nh&acirc;n vi&ecirc;n phết pate. &quot;M&igrave;nh thấy giống như một hoạt động &#39;nh&oacute;m&#39;, một trải nghiệm văn h&oacute;a rất hay&quot;, Hương chia sẻ. Nh&acirc;n vi&ecirc;n bận nhưng vẫn hướng dẫn l&agrave;m c&ugrave;ng, gi&uacute;p Hương c&oacute; chuyến đi vui v&agrave; đ&aacute;ng nhớ.</p>\r\n\r\n<p>Sơn T&ugrave;ng, 35 tuổi, ấp ủ thực hiện food tour Hải Ph&ograve;ng từ năm 2021 nhưng do dịch Covid-19 giờ mới thực hiện được. Trong h&igrave;nh dung của T&ugrave;ng, Hải Ph&ograve;ng vẫn nổi tiếng nhất với những cầu cảng, container kh&ocirc; cứng n&ecirc;n muốn trải nghiệm kh&aacute;c hơn tại c&aacute;c g&oacute;c phố b&igrave;nh dị v&agrave; m&oacute;n ăn vặt đường phố. Năm nay, anh quyết định l&ecirc;n đường, chọn t&agrave;u hoả do c&oacute; sở th&iacute;ch chụp ảnh, muốn check-in trong t&agrave;u v&agrave; trước ga. &quot;Nếu bạn kh&ocirc;ng vội xử l&yacute; c&ocirc;ng việc c&aacute; nh&acirc;n th&igrave; đi t&agrave;u an to&agrave;n, nhanh ch&oacute;ng v&agrave; đ&uacute;ng giờ. L&acirc;u nay phương tiện t&agrave;u hoả bị kh&aacute; nhiều người l&atilde;ng qu&ecirc;n&quot;, T&ugrave;ng n&oacute;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sơn T&ugrave;ng b&ecirc;n trong chợ C&aacute;t Bi - một tụ điểm ăn uống với nhiều qu&aacute;n ăn vặt ngon ở Hải Ph&ograve;ng. Ảnh:&nbsp;<em>NVCC</em></p>\r\n\r\n<p>T&ugrave;ng chọn những m&oacute;n đặc trưng chỉ Hải Ph&ograve;ng mới c&oacute; như b&uacute;n l&ograve;ng c&aacute; cay, b&aacute;nh đa cua bể, b&uacute;n cua hải sản bề bề, ch&aacute;o kho&aacute;i,&nbsp;b&aacute;nh đ&uacute;c t&agrave;u, b&igrave; b&ograve;, gi&aacute; bể, b&aacute;nh m&igrave; cay,&nbsp;b&aacute;nh b&egrave;o,&nbsp;tr&agrave; c&uacute;c, dừa dầm, c&agrave; ph&ecirc; cốt dừa... Theo anh, m&oacute;n n&agrave;o cũng ngon nhưng ấn tượng nhất b&aacute;nh m&igrave; cay ăn k&egrave;m ch&iacute; chương (một loại tương ớt Hải Ph&ograve;ng). Tổng cộng, anh thưởng thức được 19 m&oacute;n, song vẫn tiếc khi kh&ocirc;ng đủ thời gian ăn th&ecirc;m một số m&oacute;n như ốc, b&uacute;n chả nem cua bể. Mặc d&ugrave; một số m&oacute;n c&oacute; trải nghiệm thực tế kh&ocirc;ng ngon như giới thiệu, T&ugrave;ng vẫn muốn quay lại lần tiếp theo v&igrave; &quot;ngon, bổ, rẻ&quot;.</p>\r\n\r\n<p>Ho&agrave;ng Huy, 25 tuổi, cũng đi food tour Hải Ph&ograve;ng sau khi đọc c&aacute;c b&igrave;nh luận, đặc biệt l&agrave; những &yacute; kiến tr&aacute;i chiều. Sau khi trải nghiệm thực tế, Huy cho rằng nhiều m&oacute;n ăn được người review &quot;t&acirc;ng bốc qu&aacute; đ&agrave;&quot;.</p>\r\n\r\n<p>&quot;Khi m&igrave;nh thu&ecirc; taxi để đi tới một qu&aacute;n b&aacute;nh đa cua được khen ngon th&igrave; anh t&agrave;i xế bảo &#39;Người Hải Ph&ograve;ng kh&ocirc;ng ai ăn qu&aacute;n đ&oacute;, đừng tin tr&ecirc;n mạng&#39;. Song v&igrave; t&ograve; m&ograve;, m&igrave;nh nhất quyết vẫn đến th&igrave; quả thật kh&ocirc;ng ngon. Khi về H&agrave; Nội chia sẻ cảm nhận với một số người từng ăn giống m&igrave;nh th&igrave; ai cũng n&oacute;i rằng kh&ocirc;ng n&ecirc;n qu&aacute; tin v&agrave;o c&aacute;c video giới thiệu tr&ecirc;n mạng&quot;, Huy cho biết. Lời khuy&ecirc;n khi đi food tour Hải Ph&ograve;ng l&agrave; hỏi th&ecirc;m người địa phương để được chỉ tới những qu&aacute;n ngon, chứ kh&ocirc;ng chỉ xem tr&ecirc;n mạng, từ đ&oacute; c&oacute; trải nghiệm trọn vẹn.</p>\r\n\r\n<p>L&agrave;m việc tại H&agrave; Nội, Ho&agrave;ng Phương, 25 tuổi, qu&ecirc; Hải Ph&ograve;ng, &quot;vừa buồn, vừa vui&quot; khi lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour tăng đột biến. &quot;Vui v&igrave; thấy qu&ecirc; m&igrave;nh được du kh&aacute;ch quan t&acirc;m. Buồn l&agrave; v&igrave; cả năm c&oacute; dịp hiếm hoi về qu&ecirc; để thưởng thức đặc sản nhưng đi chỗ n&agrave;o cũng đ&ocirc;ng hoặc hết h&agrave;ng&quot;, Phương t&acirc;m sự. D&ugrave; vậy Phương vẫn hy vọng food tour Hải Ph&ograve;ng ng&agrave;y c&agrave;ng được nhiều người biết đến để quảng b&aacute; du lịch qu&ecirc; hương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ng&agrave;y 7/5, Sở Du lịch Hải Ph&ograve;ng đ&atilde; c&ocirc;ng bố bản đồ ẩm thực trực tuyến, v&agrave; sẽ c&oacute; bản in ph&aacute;t miễn ph&iacute; tại ga Hải Ph&ograve;ng thời gian tới. Bản đồ gi&uacute;p du kh&aacute;ch dễ lựa chọn h&agrave;ng qu&aacute;n v&agrave; biết về c&aacute;c m&oacute;n ngon tại Hải Ph&ograve;ng. Để tr&aacute;nh t&igrave;nh trạng qu&aacute; tải. Mỗi m&oacute;n ăn tr&ecirc;n bản đồ ẩm thực được gợi &yacute; nhiều qu&aacute;n, phục vụ khẩu vị đa dạng cho du kh&aacute;ch. Những qu&aacute;n xuất hiện tr&ecirc;n bản đồ được lựa chọn với ti&ecirc;u ch&iacute; ngon, được người địa phương c&ocirc;ng nhận v&agrave; đảm bảo vệ sinh an to&agrave;n thực phẩm. Ngo&agrave;i ra, Sở cũng đang phối hợp với c&aacute;c ban ng&agrave;nh để x&acirc;y dựng tuyến xe điện chở kh&aacute;ch từ ga t&agrave;u tới c&aacute;c h&agrave;ng ăn với gi&aacute; phải chăng.</p>\r\n\r\n<p>&Ocirc;ng Vũ Huy Thưởng, Ph&oacute; gi&aacute;m đốc Sở Du lịch Hải Ph&ograve;ng, cho hay: &quot;Food tour l&agrave; một đặc trưng của du lịch Hải Ph&ograve;ng&quot;. Trong 4 ng&agrave;y nghỉ lễ 30/4-1/5, lượng kh&aacute;ch đến Hải Ph&ograve;ng để thực hiện food tour bằng t&agrave;u hoả l&agrave; khoảng hơn 25.000 lượt kh&aacute;ch. Trong đ&oacute;, hai ng&agrave;y 30/4 v&agrave; 1/5 cao điểm với 6.000-7.000 lượt mỗi ng&agrave;y.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i ghi nhận food tour Hải Ph&ograve;ng &#39;b&ugrave;ng nổ&#39; gần đ&acirc;y. Loại h&igrave;nh du lịch n&agrave;y đ&atilde; được triển khai trong v&agrave;i năm, phối hợp quảng b&aacute; qua nhiều k&ecirc;nh truyền th&ocirc;ng, mạng x&atilde; hội, hội nh&oacute;m du lịch&quot;, &ocirc;ng Thưởng cho biết v&agrave; n&oacute;i th&ecirc;m, việc đảm bảo an ninh trật tự khi h&agrave;ng qu&aacute;n đ&ocirc;ng lu&ocirc;n được đảm bảo. C&ocirc;ng an sẽ c&oacute; mặt ở c&aacute;c cửa h&agrave;ng đ&ocirc;ng kh&aacute;ch, song để du kh&aacute;ch thấy thoải m&aacute;i, họ đều mặc thường phục.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một phần của bản đồ ẩm thực Hải Ph&ograve;ng do Sở Du lịch Hải Ph&ograve;ng c&ocirc;ng bố.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'en-trao-luu-food-tour-hai-phong', 'Trào lưu food tour Hải Phòng', '', ''),
(311, 156, 'vn', 'Biển tên phố ở Hải Phòng sẽ có mã QR', 'Từ tháng 12, du khách đến Hải Phòng có thể tìm hiểu về các con đường, công trình bằng cách quét mã QR trên 2.800 biển hiệu.', '<p>Từ th&aacute;ng 12, du kh&aacute;ch đến Hải Ph&ograve;ng c&oacute; thể t&igrave;m hiểu về c&aacute;c con đường, c&ocirc;ng tr&igrave;nh bằng c&aacute;ch qu&eacute;t m&atilde; QR tr&ecirc;n 2.800 biển hiệu.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; dự &aacute;n được UBND TP Hải Ph&ograve;ng ph&ecirc; duyệt v&agrave; triển khai thực hiện trong th&aacute;ng 11. Dự &aacute;n được đ&aacute;nh gi&aacute; ph&ugrave; hợp với xu hướng du lịch v&agrave;&nbsp;food tour&nbsp;đang được ưa chuộng ở th&agrave;nh phố.</p>\r\n\r\n<p>Theo kế hoạch, sẽ c&oacute; 450 đường phố, c&ocirc;ng tr&igrave;nh được gắn m&atilde; QR. Trong đ&oacute; c&oacute; 13 cầu, 10 vườn hoa v&agrave; quảng trường Nh&agrave; h&aacute;t lớn th&agrave;nh phố, với khoảng 2.800 biển hiệu.</p>\r\n\r\n<p>L&atilde;nh đạo UBND TP Hải Ph&ograve;ng cho hay khi người d&acirc;n v&agrave; du kh&aacute;ch d&ugrave;ng điện thoại th&ocirc;ng minh qu&eacute;t m&atilde; QR l&ecirc;n c&aacute;c biển sẽ biết được th&ocirc;ng tin về quy m&ocirc;, tiểu sử danh nh&acirc;n, danh thắng, di t&iacute;ch gắn với tuyến đường, c&ocirc;ng tr&igrave;nh được đặt t&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Biển t&ecirc;n đường ở TP Hải Ph&ograve;ng sẽ c&oacute; m&atilde; QR chứa th&ocirc;ng tin cho kh&aacute;ch du lịch tham khảo. Ảnh:&nbsp;<em>L&ecirc; T&acirc;n</em></p>\r\n\r\n<p>Tổng kinh ph&iacute; thực hiện dự &aacute;n l&agrave; 650 triệu đồng. UBND TP Hải Ph&ograve;ng c&ugrave;ng Sở Văn h&oacute;a v&agrave; Thể thao, Sở Giao th&ocirc;ng Vận tải v&agrave; c&aacute;c đơn vị l&ecirc;n danh s&aacute;ch, sưu tập, bi&ecirc;n soạn th&ocirc;ng tin tiểu sử danh nh&acirc;n hoặc nguồn gốc d&ugrave;ng, &yacute; nghĩ t&ecirc;n được đặt cho 450 c&ocirc;ng tr&igrave;nh rồi chuyển th&agrave;nh m&atilde; QR.</p>\r\n\r\n<p>Căn cứ v&agrave;o hiệu quả thực hiện thời gian đầu. TP Hải Ph&ograve;ng sẽ tiếp tục triển khai mở rộng v&agrave; dịch th&ocirc;ng tin sang tiếng Anh, Trung Quốc, Nhật Bản, H&agrave;n Quốc...</p>\r\n\r\n<p>Hải Ph&ograve;ng l&agrave; địa phương thứ hai tr&ecirc;n cả nước, sau TP HCM, thực hiện việc n&agrave;y.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'bien-ten-pho-o-hai-phong-se-co-ma-qr', 'Biển tên phố ở Hải Phòng sẽ có mã QR', '', ''),
(312, 156, 'en', 'english version Biển tên phố ở Hải Phòng sẽ có mã QR', 'english version Từ tháng 12, du khách đến Hải Phòng có thể tìm hiểu về các con đường, công trình bằng cách quét mã QR trên 2.800 biển hiệu.', 'english version <p>Từ th&aacute;ng 12, du kh&aacute;ch đến Hải Ph&ograve;ng c&oacute; thể t&igrave;m hiểu về c&aacute;c con đường, c&ocirc;ng tr&igrave;nh bằng c&aacute;ch qu&eacute;t m&atilde; QR tr&ecirc;n 2.800 biển hiệu.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; dự &aacute;n được UBND TP Hải Ph&ograve;ng ph&ecirc; duyệt v&agrave; triển khai thực hiện trong th&aacute;ng 11. Dự &aacute;n được đ&aacute;nh gi&aacute; ph&ugrave; hợp với xu hướng du lịch v&agrave;&nbsp;food tour&nbsp;đang được ưa chuộng ở th&agrave;nh phố.</p>\r\n\r\n<p>Theo kế hoạch, sẽ c&oacute; 450 đường phố, c&ocirc;ng tr&igrave;nh được gắn m&atilde; QR. Trong đ&oacute; c&oacute; 13 cầu, 10 vườn hoa v&agrave; quảng trường Nh&agrave; h&aacute;t lớn th&agrave;nh phố, với khoảng 2.800 biển hiệu.</p>\r\n\r\n<p>L&atilde;nh đạo UBND TP Hải Ph&ograve;ng cho hay khi người d&acirc;n v&agrave; du kh&aacute;ch d&ugrave;ng điện thoại th&ocirc;ng minh qu&eacute;t m&atilde; QR l&ecirc;n c&aacute;c biển sẽ biết được th&ocirc;ng tin về quy m&ocirc;, tiểu sử danh nh&acirc;n, danh thắng, di t&iacute;ch gắn với tuyến đường, c&ocirc;ng tr&igrave;nh được đặt t&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Biển t&ecirc;n đường ở TP Hải Ph&ograve;ng sẽ c&oacute; m&atilde; QR chứa th&ocirc;ng tin cho kh&aacute;ch du lịch tham khảo. Ảnh:&nbsp;<em>L&ecirc; T&acirc;n</em></p>\r\n\r\n<p>Tổng kinh ph&iacute; thực hiện dự &aacute;n l&agrave; 650 triệu đồng. UBND TP Hải Ph&ograve;ng c&ugrave;ng Sở Văn h&oacute;a v&agrave; Thể thao, Sở Giao th&ocirc;ng Vận tải v&agrave; c&aacute;c đơn vị l&ecirc;n danh s&aacute;ch, sưu tập, bi&ecirc;n soạn th&ocirc;ng tin tiểu sử danh nh&acirc;n hoặc nguồn gốc d&ugrave;ng, &yacute; nghĩ t&ecirc;n được đặt cho 450 c&ocirc;ng tr&igrave;nh rồi chuyển th&agrave;nh m&atilde; QR.</p>\r\n\r\n<p>Căn cứ v&agrave;o hiệu quả thực hiện thời gian đầu. TP Hải Ph&ograve;ng sẽ tiếp tục triển khai mở rộng v&agrave; dịch th&ocirc;ng tin sang tiếng Anh, Trung Quốc, Nhật Bản, H&agrave;n Quốc...</p>\r\n\r\n<p>Hải Ph&ograve;ng l&agrave; địa phương thứ hai tr&ecirc;n cả nước, sau TP HCM, thực hiện việc n&agrave;y.</p>\r\n\r\n<p>Nguồn: VnExpress</p>\r\n', '', '', '', '', '', 0, 'en-bien-ten-pho-o-hai-phong-se-co-ma-qr', 'Biển tên phố ở Hải Phòng sẽ có mã QR', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_ban_tin`
--

INSERT INTO `nhan_ban_tin` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 13:54:44'),
(2, 'donguyenthinh30031989@gmail.com', '2017-12-23 01:12:33'),
(3, 'truongquangtuan3110@gmail.com', '2018-01-03 12:04:35'),
(4, 'truongquangtuan3110@gmail.com', '2018-01-03 12:12:05'),
(5, 'donguyenthinh30031989@gmail.com', '2018-01-04 07:40:46'),
(6, 'truongquangtuan3110@gmail.com', '2018-01-04 09:02:07'),
(7, 'donguyenthinh30031989@gmail.com', '2018-01-04 09:31:40'),
(8, 'donguyenthinh30031989@gmail.com', '2018-01-04 10:17:09'),
(9, 'viethung95cute@gmail.com', '2018-03-27 07:55:42'),
(10, 'viethung95cute@gmail.com', '2018-03-28 05:08:41'),
(11, 'viethung95cute@gmail.com', '2018-03-28 05:12:29'),
(12, 'viethung95cute@gmail.com', '2018-03-28 05:13:40'),
(13, 'viethung95cute@gmail.com', '2018-03-28 05:45:42'),
(14, 'viethung95cute@gmail.com', '2018-03-28 05:48:44'),
(15, 'hung71483@gmail.com', '2018-03-28 05:51:51'),
(16, 'hung71483@gmail.com', '2018-03-28 05:54:44'),
(17, 'hung71483@gmail.com', '2018-03-28 06:01:14'),
(18, 'hung71483@gmail.com', '2018-03-28 06:03:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhan_tai_lieu`
--

INSERT INTO `nhan_tai_lieu` (`id`, `email`, `time`) VALUES
(1, 'tuan@gmail.com', '2017-11-29 12:33:22'),
(2, 'manh@gmail.com', '2017-12-02 11:58:58'),
(3, 'ngockhanh260614@gmail.com', '2017-12-03 04:05:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'GIỚI THIỆU VỀ BAMI\'S KÒI', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/bami_gt2.jpg\" width=\"800\" /></p>\r\n', 'bami_gt2.jpg', '2017-05-11 16:05:22', '2023-04-11 08:04:18', 1, '', '', '', '', '', '', 'Về chúng tôi', '', 've-chung-toi', 1),
(36, 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', NULL, '2017-05-11 16:05:03', '2018-08-24 19:08:39', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Chuyên nhận đặt hàng', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-nhan-dat-hang', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', NULL, '2017-05-18 02:05:05', '2017-06-08 08:06:21', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Tiêu đề tin tức</h1>\r\n                                \r\n                                <p class=\"desPageNews\" style=\"width:100%; margin:10px 0px; font-weight:bold; font-size:14px;\">Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết</p>\r\n                                <img src=\"../image/slide1.jpg\">\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                <img src=\"../image/formImgCate.jpg\">', NULL, '2017-07-10 15:07:50', '2017-07-10 15:07:35', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', NULL, '2017-07-10 22:07:44', '2017-07-11 02:07:46', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#C00\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', NULL, '2017-07-10 22:07:03', '2017-07-11 02:07:28', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(43, 'Công xưởng trực tiếp', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, '2017-07-10 22:07:41', '2018-08-24 19:08:07', 1, '', '', '', '', '', '', 'Công xưởng trực tiếp', '', 'cong-xuong-truc-tiep', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', NULL, '2017-07-10 22:07:55', '2017-07-11 02:07:48', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'Tulips.jpg', '2017-07-10 22:07:51', '2017-09-22 07:09:11', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(46, ' Hệ thống', '', '', NULL, '2018-03-27 11:03:18', '2022-10-05 14:10:53', 1, '', '', '', '', '', '', ' Hệ thống', '', 'he-thong', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'GIỚI THIỆU VỀ BAMI\'S KÒI', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/bami_gt2.jpg\" width=\"800\" /></p>\r\n', '', '', '', '', '', 0, 've-chung-toi', 'Về chúng tôi', '', ''),
(36, 35, 'en', 'Giới thiệu', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right; height:564px; width:670px\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyên nhận đặt hàng', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'chuyen-nhan-dat-hang', 'Chuyên nhận đặt hàng', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Tiêu đề tin tức</h1>\r\n                                \r\n                                <p class=\"desPageNews\" style=\"width:100%; margin:10px 0px; font-weight:bold; font-size:14px;\">Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết</p>\r\n                                <img src=\"../image/slide1.jpg\">\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                \r\n                                <h2>Thẻ h2</h2>\r\n    \r\n                                <p>Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết. Nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết, nội dung bài viết</p>\r\n                                <img src=\"../image/formImgCate.jpg\">', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#C00\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(51, 43, 'vn', 'Công xưởng trực tiếp', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'cong-xuong-truc-tiep', 'Công xưởng trực tiếp', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 0, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', ' Hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' Hệ thống', '', ''),
(58, 46, 'en', ' hệ thống', '', '', '', '', '', '', '', 0, 'he-thong', ' hệ thống', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL DEFAULT 0,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`) VALUES
(284, 'Bánh mỳ que', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', 123000, 0, 0, '1010447683805611383040989431o-1383709183.jpg', '[]', '2023-04-11 09:04:03', NULL, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Bánh mỳ que', '', 'banh-my-que', '', 1, '', '', '', NULL, NULL, NULL),
(285, 'Tách cafe', '<p>Nội dung đang cập nh&acirc;t</p>\r\n', '', '', '', '', '', 123000, 0, 0, 'anh-dep-ben-ly-cafe-den_110730392.jpg', '[]', '2023-04-19 10:04:17', '2023-04-19 10:04:53', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Tách cafe', '', 'tach-cafe', '', 1, '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(555, 284, 'vn', 'Bánh mỳ que', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banh-my-que', 'Bánh mỳ que', '', ''),
(556, 284, 'en', 'english version Bánh mỳ que', 'english version <p>Nội dung đang cập nhật</p>\r\n', '', '', 'english version <p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banh-my-que', 'Bánh mỳ que', '', ''),
(557, 285, 'vn', 'Tách cafe', '<p>Nội dung đang cập nh&acirc;t</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tach-cafe', 'Tách cafe', '', ''),
(558, 285, 'en', 'english version Tách cafe', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tach-cafe', 'Tách cafe', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(64, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', 'thong-tin-tuyen-dung1.jpg', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', 1),
(65, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', 1),
(66, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2017-12-28', 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', 1),
(67, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', 1),
(68, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', '-uploaded_Teacher-female_cr_320x320.png', '0', 5, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', 1),
(69, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', 'giao-vien-day-van.jpg', '0', 3, '', '2018-04-26', '2018-04-26', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', 1),
(70, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', '', '0', 3, '', '2018-04-26', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(4, 'Smart Reading Skills', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(83, 'vn', 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', NULL, 64),
(84, 'en', 'Quyết toán thuế', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Quyết toán thuế', '', 'quyet-toan-thue', '', NULL, 64),
(85, 'vn', 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gui_thong_tin`
--
ALTER TABLE `gui_thong_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gui_thong_tin`
--
ALTER TABLE `gui_thong_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
