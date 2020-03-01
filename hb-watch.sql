-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 26, 2019 lúc 04:11 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hbwatch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `status`, `created_at`) VALUES
(1, 1, 9, 'có ship cod không ad?', 0, '2019-09-11 20:37:26'),
(2, 1, 10, 'da của đồng hồ là da gì vậy', 0, '2019-09-11 20:37:43'),
(3, 1, 1, 'Nữ đeo có được không vậy?', 0, '2019-09-11 20:38:09'),
(4, 4, 1, 'Có ship đi tỉnh không shop', 0, '2019-09-11 20:39:01'),
(5, 5, 60, 'có hổ trợ trả góp không vậy?', 0, '2019-09-11 20:40:42'),
(6, 5, 8, 'có dây màu khác không ạ?', 0, '2019-09-11 20:41:12'),
(7, 3, 11, 'giá chát nhỉ', 0, '2019-09-11 20:41:20'),
(8, 6, 8, 'mặt của đồng hồ có chống xước không vậy', 0, '2019-09-11 20:42:05'),
(9, 1, 59, 'đẹp thật, nhưng chả có tiền mua :v', 0, '2019-09-11 21:56:54'),
(11, 6, 64, 'Có dây màu đen không shop?', 0, '2019-09-11 21:58:56'),
(12, 6, 60, 'nhìn đẹp thật', 0, '2019-09-11 22:00:51'),
(13, 6, 2, 'mẫu này có mặt màu xanh không vậy?', 0, '2019-09-11 22:01:20'),
(14, 6, 1, 'mua có thẻ bảo hành k nhỉ', 0, '2019-09-11 22:02:19'),
(15, 6, 9, 'Hết pin thì bên cửa hàng có hỗ trợ thay pin k nhỉ', 0, '2019-09-11 22:04:08'),
(16, 8, 59, 'tôi muốn mua sản phẩm này, hãy gọi cho tôi qua sđt là 113', 0, '2019-09-11 22:05:21'),
(17, 8, 7, 'dây đeo có gỉ k nhỉ', 0, '2019-09-11 22:09:13'),
(18, 8, 38, 'có size nhỏ hơn k', 0, '2019-09-11 22:09:53'),
(20, 8, 62, 'mẫu này đẹp quá', 0, '2019-09-11 22:10:45'),
(21, 8, 62, 'Có dây màu đen k ad', 0, '2019-09-11 22:11:12'),
(22, 8, 46, 'con này nhìn ngầu phết', 0, '2019-09-11 22:16:17'),
(23, 8, 63, 'Đặt hàng r xem đồng hồ r mua dc ko', 0, '2019-09-11 22:16:46'),
(24, 8, 44, 'Đồng hồ của e hỏng mất dây rồi có đặt mua dây đc ko ạ', 0, '2019-09-11 22:17:10'),
(25, 3, 54, 'Máy này có màu xanh ngọc k vậy shop hay chỉ có màu này thôi', 0, '2019-09-11 22:29:09'),
(26, 3, 44, 'Khu vực thành phố hà nội địa chỉ shop nào có máy này mình muốn qua xem nhỉ', 0, '2019-09-11 22:29:35'),
(27, 3, 65, 'CÓ  MẶT MÀU ĐEN KO Ạ', 0, '2019-09-11 22:30:00'),
(28, 3, 9, 'Mua về không có nhu cầu sử dụng nữa bán lại thì HBWatch có thu mua không', 0, '2019-09-11 22:31:34'),
(29, 3, 9, 'Mua về không có nhu cầu sử dụng nữa bán lại thì HBWatch có thu mua không', 0, '2019-09-11 22:32:09'),
(30, 3, 64, 'đồng hồ này có nhanh hết pin k nhỉ', 0, '2019-09-11 22:43:25'),
(31, 9, 48, 'Mình muốn mua 1 chiếc đồng hồ chống nước tốt. Vì mình làm việc trực tiếp với nước. Vậy nên mua mẫu nào. Xin tư vấn', 0, '2019-09-11 22:46:02'),
(32, 9, 63, 'Chống nước tốt ko shop? Vì mình làm việc trực tiếp với nước suốt ngày?', 0, '2019-09-11 22:46:23'),
(33, 9, 27, 'Có thể mua thêm dây da k ạ?', 0, '2019-09-11 22:46:46'),
(34, 9, 25, 'có ship COD không shop\r\nmình muốn mua', 0, '2019-09-11 22:47:29'),
(35, 9, 27, 'Có màu khác không ạk???', 0, '2019-09-11 22:47:51'),
(36, 9, 26, 'Ship về quan ninh kieu tpct dk k ạ', 0, '2019-09-11 22:48:16'),
(37, 2, 56, 'Có hỗ trợ bấm lỗ dây đeo đồng hồ  k', 0, '2019-09-14 20:01:29'),
(38, 6, 38, 'Ở hải dương chi nhánh nào còn hàng ạ', 1, '2019-09-14 20:02:05'),
(39, 4, 45, 'có hổ trợ thay dây k shop?', 0, '2019-09-14 20:05:23'),
(40, 5, 33, 'không có màu khác hả shop', 1, '2019-09-14 20:08:32'),
(41, 1, 59, 'cho hỏi có hỗ trợ mua trả góp ko ạ', 0, '2019-09-14 20:43:27'),
(42, 2, 59, 'Cho em hỏi hàng có sẵn ở cửa hàng k ạ.hay phải đặt ạ', 1, '2019-09-14 20:45:53'),
(43, 1, 13, 'tôi thường xuyên tiếp xúc với nước dùng đồng hồ này có tiện không ?', 0, '2019-09-15 08:19:27'),
(44, 1, 36, 'con này còn hàng ko vậy ad?', 0, '2019-09-15 08:40:39'),
(45, 5, 37, 'Long Xuyên sãn phẩm này còn hàng không shop', 0, '2019-09-15 08:41:41'),
(46, 5, 33, 'mình mới mua máy sao cửa hàng báo không có khuyến mãi vậy?', 0, '2019-09-15 08:45:10'),
(50, 7, 37, 'có màu nào khác không shop?', 0, '2019-09-15 13:02:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product`
--

CREATE TABLE `image_product` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`) VALUES
(26, 1, '2019-09-18 12:57:34'),
(27, 5, '2019-09-18 13:01:04'),
(28, 2, '2019-09-18 13:02:59'),
(29, 8, '2019-09-18 13:03:40'),
(30, 8, '2019-09-18 13:07:26'),
(31, 1, '2019-09-18 13:10:45'),
(32, 1, '2019-09-18 13:10:52'),
(33, 5, '2019-09-18 20:53:55'),
(34, 1, '2019-09-19 21:01:49'),
(35, 1, '2019-09-19 21:11:05'),
(36, 1, '2019-09-21 11:18:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(2, 26, 14, 2),
(3, 26, 32, 1),
(4, 26, 52, 1),
(5, 27, 5, 1),
(6, 27, 24, 2),
(7, 28, 14, 1),
(8, 29, 23, 1),
(9, 30, 15, 1),
(10, 31, 5, 1),
(11, 32, 5, 1),
(12, 33, 15, 1),
(13, 33, 6, 3),
(14, 33, 7, 1),
(15, 34, 10, 1),
(16, 35, 61, 1),
(17, 36, 33, 2),
(18, 36, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_id` int(10) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '<p><h4>Sang trọng và đẳng cấp</h4></p><p> Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.</p>\'',
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `wire_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `water_resistance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `product_category_id`, `description`, `origin`, `code`, `status`, `gender`, `type`, `size`, `price`, `wire_type`, `water_resistance`, `image`, `warranty`, `created_at`) VALUES
(1, 'Orient SFM02001W0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SFM02001W0', 'Còn hàng', 'Nam', 'Cơ tự động', '42 mm', 8001000, 'Thép không gỉ', '5ATM', 'orient-sfm02001w0-nam-avatar-1-600x600.jpg', '24 tháng', '2019-09-04 10:57:59'),
(2, 'Orient DE00002B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'DE00002B', 'Còn hàng', 'Nam', 'Cơ tự động', '39.5 mm', 7920000, 'Thép không gỉ', '20ATM', 'DE00002B.png', '24 tháng', '2019-09-04 10:59:01'),
(3, 'Orient RA-AR0003L10B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AR0003L10B', 'Còn hàng', 'Nam', 'Cơ tự động', '40.5 mm', 7677000, 'Thép không gỉ', '5ATM', 'orient-ra-ar0003l10b-nam-co-tu-dong-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(4, 'Orient DE00004D', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'DE00004D', 'Còn hàng', 'Nam', 'Cơ tự động', '39.5 mm', 6680000, 'Thép không gỉ', '20ATM', 'DE00004D.png', '24 tháng', '2019-09-04 11:05:10'),
(5, 'Orient SUNE5001W0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SUNE5001W0', 'Còn hàng', 'Nam', 'Quartz', '41 mm', 2367000, 'Hợp kim', '10ATM', 'orient-sune5001w0-nam-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(6, 'Orient ER2K004W', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'ER2K004W', 'Còn hàng', 'Nam', 'Quartz', '37.5 mm', 1962000, 'Dây da', '5ATM', 'ER2K004W.png', '24 tháng', '2019-09-04 11:05:10'),
(7, 'Orient FUG1X004D9', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'FUG1X004D9', 'Còn hàng', 'Nam', 'Quartz', '43 mm', 1962000, 'Hợp kim', '5ATM', 'orient-fug1x004d9-nam-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(8, 'Orient AC06004Z', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AC06004Z', 'Còn hàng', 'Nữ', 'Quartz', '35.5 mm', 1760000, 'Dây da', '5ATM', 'AC06004Z.png', '24 tháng', '2019-09-04 11:05:10'),
(9, 'Orient SUNE5003B0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SUNE5003B0', 'Còn hàng', 'Nam', 'Quartz', '41 mm', 2043000, 'Hợp kim', '10 ATM', 'orient-sune5003b0-nam-0-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(10, 'Orient RA-AK0005Y10B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AK0005Y10B', 'Còn hàng', 'Nữ', 'Cơ tự động', '36.4 mm', 7596000, 'Da', '3ATM', 'orient-ra-ak0005y10b-nu-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(11, 'Orient RA-AC0008S10B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AC0008S10B', 'Còn hàng', 'Nữ', 'Cơ tự động', '36.4 mm', 7353000, 'Thép không gỉ', '3ATM', 'orient-ra-ac0008s10b-nu-avatar-1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(12, 'Orient RA-AG0020S10B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AG0020S10B', 'Còn hàng', 'Nữ', 'Cơ tự động', '35.9 mm', 7272000, 'Thép không gỉ', '3ATM', 'orient-ra-ag0020s10b-nu-avatar-1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(13, 'Orient SSZ3W002W0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSZ3W002W0', 'Còn hàng', 'Nữ', 'Quartz', '27.5 mm', 2367000, 'Thép không gỉ', '10ATM', 'orient-ssz3w002w0-nu-0-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(14, 'Orient SSZ45003W0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSZ45003W0', 'Còn hàng', 'Nữ', 'Cơ tự động', '28 mm', 4905000, 'Thép không gỉ', '5ATM', 'orient-ssz45003w0-nu-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(15, 'Orient RA-AR0001S', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AR0001S', 'Còn hàng', 'Nam', 'Cơ tự động', '40.8mm', 11430000, 'Thép không gỉ', '20ATM', 'RA-AR0001S.png', '24 tháng', '2019-09-04 11:05:10'),
(16, 'Orient SDE00001W', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'DE00001W', 'Còn hàng', 'Nam', 'Cơ tự động', '39.5mm', 18610000, 'Thép không gỉ', '20ATM', 'DE00001W.png', '24 tháng', '2019-09-04 11:05:10'),
(17, 'Casio LTP-1183A-1ADF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'LTP-1183A-1ADF', 'Còn hàng', 'Nữ', 'Quartz', '27.3 mm', 930000, 'Hợp kim', '5ATM', 'casio-ltp-1183a-1adf-bac-5-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(18, 'Casio LTP-V002SG-9AUDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'LTP-V002SG-9AUDF', 'Còn hàng', 'Nữ', 'Quartz', '25 mm', 972000, 'Hợp kim', '3ATM', 'casio-ltp-v002sg-9audf-bac-4-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(19, 'Casio LTP-1303D-7BVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'LTP-1303D-7BVDF', 'Còn hàng', 'Nữ', 'Quartz', '30 mm', 1015000, 'Hợp kim', '5ATM', 'casio-ltp-1303d-7bvdf-bac-6-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(20, 'Casio LTP-E141G-2AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'LTP-E141G-2AVDF', 'Còn hàng', 'Nữ', 'Quartz', '34.3 mm', 2580000, 'Thép không gỉ', '5ATM', 'casio-ltp-e141g-2avdf-vang-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(21, 'Casio LTP-1359RG-7AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'LTP-1359RG-7AVDF', 'Còn hàng', 'Nữ', 'Quartz', '37 mm', 2326000, 'Hợp kim', '5ATM', 'casio-ltp-1359rg-7avdf-vang-8-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(22, 'Casio AMW-810D-9AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AMW-810D-9AVDF', 'Còn hàng', 'Nam', 'Quartz', '46.5 mm', 2580000, 'Thép không gỉ', '5ATM', 'casio-amw-810d-9avdf-bac-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(23, 'Casio MTD-330D-1A3VDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'MTD-330D-1A3VDF', 'Còn hàng', 'Nam', 'Quartz', '40 mm', 2580000, 'Thép không gỉ', '10ATM', 'casio-mtd-330d-1a3vdf-bac-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(24, 'Casio MTD-1087D-7AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'MTD-1087D-7AVDF', 'Còn hàng', 'Nam', 'Quartz', '43.1 mm', 2368000, 'Hợp kim', '10ATM', 'casio-mtd-1087d-7avdf-bac-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(25, 'Casio EQB-900DB-2A', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'EQB-900DB-2A', 'Còn hàng', 'Nam', 'Quartz', '45.8 mm', 4036000, 'Thép không gỉ', '10ATM', 'EQB-900DB-2A.png', '24 tháng', '2019-09-04 11:05:10'),
(26, 'Casio AE-1200WHD-1AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AE-1200WHD-1AVDF', 'Còn hàng', 'Nam', 'Quartz', '45.4 mm', 1121000, 'Hợp kim', '10ATM', 'casio-ae-1200whd-1avdf-bac-6-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(27, 'Casio MTP-1303D-1AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'MTP-1303D-1AVDF', 'Còn hàng', 'Nam', 'Quartz', '40 mm', 1020000, 'Hợp kim', '5ATM', 'casio-mtp-1303d-1avdf-nam-avatar-1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(28, 'Casio AW-82D-7AVDF', 2, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AW-82D-7AVDF', 'Còn hàng', 'Nam', 'Quartz', '40 mm', 1226000, 'Théo không gỉ', '5ATM', 'dong-ho-nam-casio-aw-82d-7avdf-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(29, 'Citizen AR3078-88E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AR3078-88E', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '38.6 mm', 11592000, 'Thép không gỉ', '3ATM', 'dong-ho-kim-eco-drive-nam-day-kim-loai-citizen-ar3-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(30, 'Citizen AR1130-81H', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', ' AR1130-81H', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '39 mm', 10143000, 'Thép không gỉ', '3ATM', 'dong-ho-kim-eco-drive-nam-day-kim-loai-citizen-ar1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(31, 'Citizen NJ0090-21L', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'NJ0090-21L', 'Còn hàng', 'Nam', 'Cơ tự động', '41.6 mm', 9630000, 'Da', '3 ATM', 'citizen-nj0090-21l-xanh-5-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(32, 'Citizen BX1010-02E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'BX1010-02E', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '44 mm', 9180000, 'Da', '10ATM', 'BX1010-02E.png', '24 tháng', '2019-09-04 11:05:10'),
(33, 'Citizen AW1593-06X', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'AW1593-06X', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '43 mm', 7290000, 'Da', '10ATM', 'citizen-aw1593-06x-nam-avatar-1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(34, 'Citizen BJ6510-51L', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'BJ6510-51L', 'Còn hàng', 'Nam', 'Quartz', '41 mm', 2610000, 'Thép không gỉ', '5ATM', 'BJ6510-51L.png', '24 tháng', '2019-09-04 11:05:10'),
(35, 'Citizen BI5000-10E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'BI5000-10E', 'Còn hàng', 'Nam', 'Quartz', '39.1 mm', 2565000, 'Da', '5ATM', 'dong-ho-kim-nam-day-da-citizen-bi5000-10e-den-1-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(36, 'Citizen EL3040-12D', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'EL3040-12D', 'Còn hàng', 'Nữ', 'Quartz', '31.2 mm', 2565000, 'Da', '3ATM', 'dong-ho-kim-nu-day-da-citizen-el3040-12d-xa-cu-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(37, 'Citizen EU6010-53E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'EU6010-53E', 'Còn hàng', 'Nữ', 'Quartz', '26.6 mm', 2700000, 'Thép không gỉ', '3ATM', 'citizen-eu6010-53e-trang-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(38, 'Citizen GA1050-51E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'GA1050-51E', 'Còn hàng', 'Nữ', 'Quartz', '30 mm', 2385000, 'Thép không gỉ', '3ATM', 'GA1050-51E.png', '24 tháng', '2019-09-04 11:05:10'),
(39, 'Citizen FE7053-51X', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'FE7053-51X', 'Còn hàng', 'Nữ', 'Eco-Drive (Năng lượng ánh sáng)', '35 mm', 6300000, 'Thép không gỉ', '10ATM', 'citizen-fe7053-51x-nu-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(40, 'Citizen EW2533-11X ', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'EW2533-11X ', 'Còn hàng', 'Nữ', 'Eco-Drive (Năng lượng ánh sáng)', '30.1 mm', 5715000, 'Da', '5ATM', 'dong-ho-kim-eco-drive-nu-day-da-citizen-ew2533-11x-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(41, 'Citizen GA1052-55E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'GA1052-55E', 'Còn hàng', 'Nữ', 'Eco-Drive (Năng lượng ánh sáng)', '29.6 mm', 5850000, 'Thép không gỉ', '3ATM', 'dong-ho-eco-drive-nu-day-kim-loai-citizen-ga1052-5-2-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(42, 'Citizen EM0720-85Y', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'EM0720-85Y', 'Còn hàng', 'Nữ', 'Eco-Drive (Năng lượng ánh sáng)', '30 mm', 10620000, 'Titannium', '5ATM', 'citizen-em0720-85y-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(43, 'Citizen PC1003-15L', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'PC1003-15L', 'Còn hàng', 'Nữ', 'Cơ tự động', '34 mm', 10170000, 'Da', '10ATM', 'citizen-pc1003-15l-xanh-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(44, 'Seiko SSH011J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSH011J1', 'Còn hàng', 'Nữ', 'Quartz', '43.5 ㎜', 7200000, 'Thép không gỉ', '5ATM', 'SSH011J1.png', '24 tháng', '2019-09-04 11:05:10'),
(45, 'Seiko SXB438P1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SXB438P1', 'Còn hàng', 'Nữ', 'Cơ tự động', '30.5 ㎜', 8860000, 'Thép không gỉ', '5ATM', 'SXB438P1_29195711323399_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(46, 'Seiko SRPD85K1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SRPD85K1', 'Còn hàng', 'Nữ', 'Cơ tự động', '42.5 ㎜', 4420000, 'Dây dù', '5ATM', 'SRPD85K1_30200522782312_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(47, 'Seiko SJE077J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SJE077J1', 'Còn hàng', 'Nữ', 'Quartz', '39.5 ㎜', 4100000, 'Dây da', '5ATM', 'SJE077J1.png', '24 tháng', '2019-09-04 11:05:10'),
(48, 'Seiko SUR751P1 ', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SUR751P1 ', 'Còn hàng', 'Nữ', 'Quartz', '29.8 mm', 3220000, 'Thép không gỉ', '5ATM', 'sur751p1-ava.jpg', '24 tháng', '2019-09-04 11:05:10'),
(49, 'Seiko SUP302P1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SUP302P1', 'Còn hàng', 'Nữ', 'Eco-Drive \r\n(Năng Lượng Ánh Sáng)', '39 mm', 3910000, 'Thép không gỉ', '5ATM', 'sup302p1ava.jpg', '24 tháng', '2019-09-04 11:05:10'),
(50, 'Seiko SNP159P1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SNP159P1', 'Còn hàng', 'Nam', 'Cơ tự động', '42.9 ㎜', 11025000, 'Thép không gỉ', '10ATM', 'SNP159P1_06200340927455_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(51, 'Seiko SSA392J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSA392J1', 'Còn hàng', 'Nam', 'Quartz', '40.5 mm', 4580000, 'Da', '5ATM', 'SSA392J1.png', '24 tháng', '2019-09-04 11:05:10'),
(52, 'Seiko SRPD65K4', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SRPD65K4', 'Còn hàng', 'Nam', 'Cơ tự động', '42.5 ㎜', 3500000, 'Dây dù', '5ATM', 'SRPD65K4_30200445674547_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(53, 'Seiko SRPD41J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SRPD41J1', 'Còn hàng', 'Nam', 'Thép không gỉ', '41.7 ㎜', 3220000, 'Thép không gỉ', '5ATM', 'SRPD41J1_17100432481876_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(54, 'Seiko SSH024J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSH024J1', 'Còn hàng', 'Nam', 'Quartz', '42.7 mm', 6185000, 'Dây cao su', '5ATM', 'SSH024J1.png', '24 tháng', '2019-09-04 11:05:10'),
(55, 'Seiko SRX017P1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SRX017P1', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '42.5 ㎜', 8100000, 'Thép không gỉ', '10ATM', 'SRX017P1_17100444433303_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(56, 'Seiko SNR037J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SNR037J1', 'Còn hàng', 'Nam', 'Kinetic', '40 mm', 5980000, 'Dây da', '5ATM', 'SNR037J1_18200332111450_jpg.jpg', '24 tháng', '2019-09-04 11:05:10'),
(57, 'Seiko SNR039J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SNR039J1', 'Còn hàng', 'Nam', 'Eco-Drive (Năng lượng ánh sáng)', '42.5 ㎜', 43070000, 'Dây da', '5ATM', 'SNR039J1_18200334977677_jpg.jpg', '24 tháng', '2019-09-04 11:05:10'),
(58, 'Seiko SRPD55K2', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SRPD55K2', 'Còn hàng', 'Nam', 'Cơ tự động', '40 mm', 44240000, 'Dây dù', '5ATM', 'SRPD55K2_30200419966530_jpg.jpg', '24 tháng', '2019-09-04 11:05:10'),
(59, 'Orient SER0200GW0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SER0200GW0', 'Còn hàng', 'Nam', 'Cơ tự động', '41.4 mm', 15120000, 'Thép không gỉ', '5ATM', 'ezgif-1-69de4dfb059e.jpg', '24 tháng', '2019-09-04 11:05:10'),
(60, 'Orient SAK00002S0', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SAK00002S0', 'Còn hàng', 'Nam', 'Cơ tự động', '42 mm', 9900000, 'Dây da', '5ATM', 'FEZ09004W0-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(61, 'Orient RA-AR0101L10B', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'RA-AR0101L10B', 'Còn hàng', 'Nam', 'Cơ tự động', '38.7 mm', 6696000, 'Thép không gỉ', '10ATM', 'orient-ra-ar0101l10b-nam-600x600.jpg', '24 tháng', '2019-09-04 11:05:10'),
(62, 'Citizen CA4210-24E', 3, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'CA4210-24E', 'Còn hàng', 'Nam', 'Quartz', '45 mm', 6450000, 'Da', '5ATM', 'CA4210-24E.png', '24 tháng', '2019-09-05 11:05:10'),
(63, 'Seiko SSA808J1', 4, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'SSA808J1', 'Còn hàng', 'Nữ', 'Eco-Drive \r\n(Năng Lượng Ánh Sáng)', '34.2 ㎜', 4150000, 'Thép không gỉ', '5ATM', 'SSA808J1_29191234131448_jpg.png', '24 tháng', '2019-09-04 11:05:10'),
(64, 'Orient ER2K001T', 1, 'Sang trọng và đẳng cấp Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.', 'Nhật Bản', 'ER2K001T', 'Còn hàng', 'Nữ', 'Quartz', '37.5 mm', 3650000, 'Dây da', '10ATM', 'ER2K001T.png', '24 tháng', '2019-09-04 11:05:10'),
(65, 'Seiko SPB093J1', 4, '<p><h4>Sang trọng và đẳng cấp</h4></p><p> Đồng hồ  đem đến những sản phẩm ấn tượng chinh phục người nhìn một cách nhanh chóng. Đồng hồ  với những chất liệu cao cấp bóng bẩy nâng tầm đẳng cấp cho người sở hữu, phù hợp với doanh nhân thành đạt, dân văn phòng hay các giám đốc công ty. Phong cách thời thượng, sang trọng đầy sức thu hút đến từ đồng hồ  chắc chắn sẽ khiến bạn luôn hãnh diện với những người xung quanh.</p>\'', 'Nhật Bản', 'SPB093J1', 'Còn hàng', 'Nam', 'Cơ tự động', '40.6 mm', 10450000, 'Dây da', '10ATM', 'SPB093J1.png', '24 tháng', '2019-09-10 21:40:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_category`
--

CREATE TABLE `products_category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_category`
--

INSERT INTO `products_category` (`id`, `name`) VALUES
(1, 'Orient'),
(2, 'Casio'),
(3, 'Citizen'),
(4, 'Seiko');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `value` int(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rates`
--

INSERT INTO `rates` (`id`, `product_id`, `user_id`, `value`, `created`) VALUES
(1, 8, 5, 5, '2019-09-11 20:44:56'),
(2, 8, 1, 3, '2019-09-11 20:44:56'),
(3, 8, 6, 3, '2019-09-11 20:44:56'),
(4, 8, 7, 5, '2019-09-11 20:44:56'),
(5, 8, 3, 4, '2019-09-11 20:44:56'),
(6, 8, 4, 3, '2019-09-11 20:44:56'),
(7, 59, 5, 5, '2019-09-11 21:00:59'),
(8, 59, 1, 4, '2019-09-11 21:55:47'),
(9, 64, 6, 5, '2019-09-11 21:59:04'),
(10, 12, 6, 5, '2019-09-11 21:59:10'),
(11, 4, 6, 5, '2019-09-11 21:59:20'),
(12, 59, 6, 3, '2019-09-11 21:59:29'),
(13, 16, 6, 5, '2019-09-11 21:59:37'),
(14, 3, 6, 5, '2019-09-11 21:59:42'),
(15, 10, 6, 5, '2019-09-11 21:59:49'),
(16, 60, 6, 5, '2019-09-11 21:59:56'),
(17, 2, 6, 4, '2019-09-11 22:00:57'),
(18, 9, 6, 4, '2019-09-11 22:01:29'),
(19, 1, 6, 4, '2019-09-11 22:01:39'),
(20, 59, 8, 5, '2019-09-11 22:04:33'),
(21, 16, 8, 4, '2019-09-11 22:05:32'),
(22, 7, 8, 4, '2019-09-11 22:07:14'),
(23, 15, 8, 4, '2019-09-11 22:07:21'),
(24, 9, 8, 5, '2019-09-11 22:07:27'),
(25, 60, 8, 5, '2019-09-11 22:08:46'),
(26, 35, 8, 4, '2019-09-11 22:10:27'),
(27, 54, 8, 5, '2019-09-11 22:11:23'),
(28, 46, 8, 5, '2019-09-11 22:16:00'),
(29, 8, 8, 4, '2019-09-11 22:17:20'),
(30, 11, 8, 4, '2019-09-11 22:17:53'),
(31, 3, 8, 1, '2019-09-11 22:18:05'),
(32, 4, 8, 4, '2019-09-11 22:18:13'),
(33, 10, 8, 5, '2019-09-11 22:18:19'),
(34, 11, 3, 5, '2019-09-11 22:27:57'),
(35, 14, 3, 5, '2019-09-11 22:28:03'),
(36, 54, 3, 5, '2019-09-11 22:29:12'),
(37, 44, 3, 4, '2019-09-11 22:29:30'),
(38, 65, 3, 4, '2019-09-11 22:30:04'),
(39, 9, 3, 3, '2019-09-11 22:30:31'),
(40, 13, 3, 4, '2019-09-11 22:42:37'),
(41, 16, 3, 5, '2019-09-11 22:42:43'),
(42, 59, 3, 5, '2019-09-11 22:42:52'),
(43, 64, 3, 4, '2019-09-11 22:43:01'),
(44, 10, 9, 4, '2019-09-11 22:44:04'),
(45, 5, 9, 5, '2019-09-11 22:44:10'),
(46, 59, 9, 5, '2019-09-11 22:44:14'),
(47, 13, 9, 3, '2019-09-11 22:44:17'),
(48, 3, 9, 1, '2019-09-11 22:44:24'),
(49, 11, 9, 5, '2019-09-11 22:44:31'),
(50, 63, 9, 5, '2019-09-11 22:44:39'),
(51, 45, 9, 5, '2019-09-11 22:44:43'),
(52, 65, 9, 5, '2019-09-11 22:44:46'),
(53, 56, 9, 5, '2019-09-11 22:44:51'),
(54, 58, 9, 4, '2019-09-11 22:44:56'),
(55, 49, 9, 4, '2019-09-11 22:45:03'),
(56, 52, 9, 4, '2019-09-11 22:45:08'),
(57, 44, 9, 1, '2019-09-11 22:45:12'),
(58, 55, 9, 1, '2019-09-11 22:45:17'),
(59, 48, 9, 2, '2019-09-11 22:45:25'),
(60, 27, 9, 3, '2019-09-11 22:46:38'),
(61, 25, 9, 5, '2019-09-11 22:47:32'),
(62, 28, 9, 3, '2019-09-11 22:47:37'),
(63, 26, 9, 3, '2019-09-11 22:48:57'),
(64, 24, 9, 3, '2019-09-11 22:49:01'),
(65, 20, 9, 4, '2019-09-11 22:49:05'),
(66, 22, 9, 5, '2019-09-11 22:49:09'),
(67, 19, 9, 4, '2019-09-11 22:49:14'),
(68, 59, 2, 5, '2019-09-14 20:40:38'),
(69, 1, 2, 5, '2019-09-15 09:58:58'),
(70, 16, 2, 5, '2019-09-15 10:03:03'),
(71, 5, 2, 4, '2019-09-15 10:58:17'),
(72, 11, 2, 3, '2019-09-15 10:58:32'),
(73, 61, 2, 5, '2019-09-15 10:58:39'),
(74, 64, 2, 2, '2019-09-15 15:26:01'),
(75, 60, 2, 4, '2019-09-15 16:36:15'),
(76, 12, 2, 5, '2019-09-15 16:36:23'),
(77, 7, 2, 3, '2019-09-15 16:36:30'),
(78, 35, 2, 5, '2019-09-15 16:36:41'),
(79, 39, 2, 4, '2019-09-15 16:36:47'),
(80, 42, 2, 1, '2019-09-15 16:46:11'),
(81, 33, 2, 1, '2019-09-15 16:46:15'),
(82, 29, 2, 1, '2019-09-15 16:46:20'),
(83, 32, 2, 4, '2019-09-15 16:46:28'),
(84, 62, 2, 4, '2019-09-15 16:46:33'),
(85, 34, 2, 5, '2019-09-15 16:46:45'),
(86, 15, 2, 5, '2019-09-15 16:46:56'),
(87, 6, 2, 4, '2019-09-15 16:47:03'),
(88, 8, 2, 4, '2019-09-15 16:47:07'),
(89, 9, 1, 3, '2019-09-16 20:45:52'),
(90, 6, 5, 5, '2019-09-18 20:56:22'),
(91, 14, 1, 4, '2019-09-21 10:50:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rep_comments`
--

CREATE TABLE `rep_comments` (
  `id` int(10) NOT NULL,
  `comments_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rep_comments`
--

INSERT INTO `rep_comments` (`id`, `comments_id`, `user_id`, `content`, `created`) VALUES
(1, 17, 5, 'không gỉ bạn ơi', '2019-09-15 09:12:00'),
(2, 3, 5, 'Nữ đeo không hợp đâu bạn', '2019-09-15 09:51:33'),
(3, 4, 5, 'Ship toàn vũ trụ luôn bạn ơi', '2019-09-15 09:51:54'),
(4, 14, 5, 'có bảo hành nge bạn', '2019-09-15 09:52:59'),
(5, 3, 2, 'nữ đeo xấu lắm', '2019-09-15 09:53:44'),
(6, 6, 2, 'Cửa hàng chỉ còn màu này thôi bạn', '2019-09-15 10:11:37'),
(7, 8, 2, 'mặt đồng hồ thuộc loại kính cứng nên không chống xước nhé. Thân gửi bạn!', '2019-09-15 10:12:35'),
(8, 8, 7, 'k chống xước nhé bạn', '2019-09-15 10:28:30'),
(9, 4, 2, 'ship toàn quốc nhé bạn', '2019-09-15 10:32:55'),
(10, 14, 2, 'có nhé bạn', '2019-09-15 10:33:21'),
(11, 30, 1, 'dùng khoảng 2-3 năm đó bạn', '2019-09-15 11:02:50'),
(12, 11, 1, 'có màu đen vs màu nâu như hình nhé', '2019-09-15 11:03:22'),
(13, 0, 7, 'ok bạn', '2019-09-15 13:03:26'),
(14, 45, 7, 'còn nhé bạn', '2019-09-15 13:05:28'),
(15, 8, 1, 'đồng hồ này không có chống xước đâu bạn', '2019-09-15 16:13:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`, `email`, `phone`, `role`, `birthday`, `avatar`, `created_at`, `update_at`) VALUES
(1, 'Võ Văn Đức', 'vovanduc', '1', 'vovanduc@gmail.com', 356575565, 'customer', '1998-06-05', 'avatar.png', '2019-09-04 09:06:40', '0000-00-00 00:00:00'),
(2, 'Hùng Bùi', 'hungbv6', '123', 'hungbv6@fsoft.com.vn', 352893665, 'admin', '1993-10-16', 'user.png', '2019-09-04 09:07:34', '0000-00-00 00:00:00'),
(3, 'Bùi Ngân Hoa', 'nganhoa', '123', 'nganhoa@gmail.com', 352893999, 'customer', '1992-08-27', 'avatar2.png', '2019-09-04 09:12:02', '0000-00-00 00:00:00'),
(4, 'Lương Thế Vinh', 'thevinh11', 'a1', 'vinhluong@outlook.com', 352893893, 'customer', '1997-09-17', 'avatar04.png', '2019-09-04 09:13:20', '0000-00-00 00:00:00'),
(5, 'Thanh Hà', 'thanhha', 'zxc', 'thanhha@gmail.com', 352893398, 'customer', '2001-09-03', 'avatar3.png', '2019-09-04 09:17:52', '0000-00-00 00:00:00'),
(6, 'Như Minh', 'nhuminh_1808', '123', 'ngocnhuminh01@gmail.com', 902786331, 'customer', '2007-08-18', 'user3-128x128.jpg', '2019-09-06 22:50:05', '0000-00-00 00:00:00'),
(7, 'Nguyễn Lâm', 'hoailam', '1', 'hoailam2019@gmail.com', 352893222, 'customer', '1990-09-17', 'user8-128x128.jpg', '2019-09-08 21:37:18', '2019-09-08 21:37:18'),
(8, 'Thanh Tùng', 'Tea', '123', 'taynguyen4life@gmail.com', 352893444, 'customer', '1992-09-16', 'user4-128x128.jpg', '2019-09-08 21:50:40', '2019-09-10 12:00:28'),
(9, 'Linh Lung', 'admin', 'admin', 'admin@hbwatch.net', 368686868, 'admin', '1989-09-09', 'user6-128x128.jpg', '2019-09-09 12:15:16', '2019-09-11 03:29:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rep_comments`
--
ALTER TABLE `rep_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `rep_comments`
--
ALTER TABLE `rep_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
