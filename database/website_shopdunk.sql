-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2021 lúc 02:35 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `website_shopdunk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `category_status` tinyint(3) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hotcategory` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `status`, `category_status`, `content`, `hotcategory`, `created_at`, `updated_at`) VALUES
(27, 'Iphone', '1618477361-6.jpg', 1, 1, '<pre>\r\n&lt;?php if(!empty($product[&#39;avatar&#39;])): ?&gt;\r\n  &lt;img style=&quot;margin: 10px 0px;border-radius: 3px;&quot; src=&quot;Assets/Uploads/products/&lt;?php echo $product[&#39;avatar&#39;]; ?&gt;&quot; width=&quot;70&quot; height=&quot;60&qu', 1, '2021-04-15 09:02:41', NULL),
(28, 'Macbook', '1620071524-123-03.jpg', 1, 1, '<p>Product Name 005</p>\r\n', 1, '2021-04-15 09:14:28', '2021-05-04 02:52:04'),
(29, 'Ipad', '1620071593-123-01.jpg', 1, 1, '<p>Product Name 005</p>\r\n', 1, '2021-04-15 09:14:43', '2021-05-04 02:53:13'),
(30, 'Watch', '1618478137-7.jpg', 1, 1, '<p>http://localhost/Website_ShopDunk/index.php?</p>\r\n', 1, '2021-04-15 09:15:37', NULL),
(31, 'Phụ Kiện', '1620071577-Untitled-9-02.jpg', 1, 1, '<p>Phụ Kiện&nbsp;Phụ Kiện&nbsp;Phụ Kiện</p>\r\n', 1, '2021-04-15 09:16:08', '2021-05-04 02:52:57'),
(32, 'Dịch vụ', '1620071567-1-2-e1613707842168.jpg', 1, 0, '<p>Phụ Kiện</p>\r\n', 1, '2021-04-15 09:16:33', '2021-05-04 02:52:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `hotnews` tinyint(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `category_id`, `name`, `avatar`, `summary`, `content`, `status`, `hotnews`, `created_at`, `updated_at`) VALUES
(7, 26, 'Nvidia ra mắt CPU Grace, đe dọa mảng data center', '1620385435-anh-2-20210504080527.jpg', '<p>Nvidia đ&atilde; th&ocirc;ng b&aacute;o trong tuần n&agrave;y rằng họ sẽ tung ra một CPU mới,</p>\r\n\r\n<p>d&agrave;nh cho data center &ndash; Nvidia Grace. CPU&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Nvidia đ&atilde; th&ocirc;ng b&aacute;o trong tuần n&agrave;y rằng họ sẽ tung ra một CPU mới, d&agrave;nh cho data center &ndash; Nvidia Grace. CPU n&agrave;y dựa tr&ecirc;n kiến tr&uacute;c Arm sẽ trực tiếp th&aacute;ch thức sự thống trị tr&ecirc;n thị trường m&aacute;y chủ v&agrave; data center của Intel.</p>\r\n\r\n<p>Th&ocirc;ng b&aacute;o được đưa ra trong sự kiện ảo Nvidia GTC 2021 ph&aacute;t biểu bởi Gi&aacute;m đốc điều h&agrave;nh Nvidia Jensen Huang. Đ&acirc;y sẽ l&agrave; bước tiến mới nhất của Nvidia v&agrave;o thị trường CPU v&agrave; họ nhắm đến việc chiếm được một số thị phần của d&ograve;ng vi xử l&yacute; sinh lợi nhất tr&ecirc;n thế giới bằng c&aacute;ch hứa hẹn hiệu năng xử l&yacute; tăng gấp 10 lần khi sử dụng sự kết hợp giữa CPU Nvidia Grace v&agrave; GPU Nvidia Ampere. Nvidia Grace dự kiến sẽ ra mắt v&agrave;o đầu năm 2023.</p>\r\n\r\n<p>Doanh số data center đ&atilde; chiếm khoảng 40% doanh thu của Nvidia, theo&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2021-04-12/nvidia-to-make-central-processing-units-going-after-intel\" target=\"_blank\">Bloomberg</a>&nbsp;một vi xử l&yacute; duy nhất cho data center c&oacute; thể c&oacute; gi&aacute; l&ecirc;n tới 10.000 đ&ocirc; la (khoảng 237 triệu VNĐ) trở l&ecirc;n v&agrave; c&aacute;c trung t&acirc;m điện to&aacute;n đ&aacute;m m&acirc;y quy m&ocirc; lớn như Amazon v&agrave; Google sử dụng h&agrave;ng ngh&igrave;n bộ vi xử l&yacute; &ndash; v&agrave; nhu cầu về điện to&aacute;n đ&aacute;m m&acirc;y đang tăng l&ecirc;n theo cấp số nh&acirc;n.</p>\r\n\r\n<p>Nvidia Grace, được đặt theo t&ecirc;n nh&agrave; khoa học m&aacute;y t&iacute;nh ti&ecirc;n phong Grace Hopper, được x&acirc;y dựng để hoạt động kết hợp với GPU Nvidia, đặc biệt l&agrave; Ampere, để xử l&yacute; tốt hơn c&aacute;c loại nghẽn cổ chai kh&oacute; chữa đi k&egrave;m với kiến tr&uacute;c trung t&acirc;m dữ liệu hiện tại. Huang n&oacute;i rằng Grace sẽ c&oacute; khả năng đạt được tốc độ SPECInt (thước đo sức mạnh xử l&yacute; số nguy&ecirc;n của CPU) l&agrave; 2.400 tr&ecirc;n hệ thống m&aacute;y chủ với t&aacute;m GPU Nvidia DGX, trong khi tốc độ SPECInt hiện tại cho DGX nhanh nhất chỉ l&agrave; 450 khi sử dụng CPU Intel.</p>\r\n\r\n<h2>Grace l&agrave; tin xấu cho cả Intel v&agrave; AMD</h2>\r\n\r\n<p>Kh&ocirc;ng c&oacute; g&igrave; ngạc nhi&ecirc;n khi cổ phiếu của Intel v&agrave; AMD đ&atilde; giảm v&agrave;i phần trăm sau tin tức n&agrave;y. Intel hiện nắm giữ hơn 90% thị phần CPU m&aacute;y chủ với bộ vi xử l&yacute; Xeon của m&igrave;nh. AMD đ&atilde; cố gắng th&acirc;m nhập v&agrave;o thị trường c&oacute; lợi nhuận cao n&agrave;y với loạt bộ vi xử l&yacute; EPYC của m&igrave;nh, nhưng vẫn chưa đạt được bước tiến đ&aacute;ng kể.</p>\r\n\r\n<p>Với việc Nvidia bước v&agrave;o cuộc cạnh tranh với một CPU m&aacute;y chủ mới vượt trội hơn rất nhiều so với c&aacute;c bộ vi xử l&yacute; của Intel v&agrave; AMD, Intel v&agrave; AMD sẽ c&oacute; nguy cơ mất một trong những thị phần ph&aacute;t triển nhanh nhất.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tin xấu đặc biệt đối với Intel khi m&agrave; tr&ecirc;n thị trường phổ th&ocirc;ng, họ đang chịu cạnh tranh gay gắt từ AMD, thứ duy nhất hiện tại khiến Intel vẫn đứng vững l&agrave; thị phần m&aacute;y chủ l&ecirc;n tới 7,2 tỉ đ&ocirc; trong năm 2019 (theo S&amp;P Global). Để so s&aacute;nh, chỉ ri&ecirc;ng phần n&agrave;y đ&atilde; vượt qua doanh thu cả năm 2019 của AMD ở tất cả c&aacute;c mảng khi họ chỉ c&oacute; 6,7 tỉ đ&ocirc;.</p>\r\n\r\n<p>R&otilde; r&agrave;ng, nếu Grace mang lại loại hiệu năng m&agrave; c&ocirc;ng ty đang hứa hẹn, th&igrave; Intel sẽ l&agrave; người thiệt hại nhiều nhất. Họ tốt hơn n&ecirc;n c&oacute; c&aacute;c sản phẩm cạnh tranh nếu kh&ocirc;ng muốn phải vật lộn với AMD để d&agrave;nh vị tr&iacute; thứ hai trong những năm tới.</p>\r\n', 1, 1, '2021-04-13 17:51:39', '2021-05-07 18:03:55'),
(8, 0, 'ShopDunk số 02 Hàng Bài Apple Mono Store đầu tiên tại trung tâm Hà Nội', '1620384813-anh-1-20210504080408.jpg', '<p>Mang tới những trải nghiệm chuy&ecirc;n nghiệp như một Apple Store thu nhỏ với quy chuẩn khắt khe nhất.</p>\r\n\r\n<p>Phong ph&uacute; trải nghiệm, kh&aacute;ch h&agrave;ng được thoải m&aacute;i thử tất cả thiết bị v&agrave; dịch vụ Apple mới nhất.</p>\r\n', '<p>Vị tr&iacute; đắc địa, kh&ocirc;ng gian đậm chất Apple ngay tại phố đi bộ Bờ Hồ, đối diện Tr&agrave;ng Tiền Plaza.</p>\r\n\r\n<p>Mang tới những trải nghiệm chuy&ecirc;n nghiệp như một Apple Store thu nhỏ với quy chuẩn khắt khe nhất.</p>\r\n\r\n<p>Phong ph&uacute; trải nghiệm, kh&aacute;ch h&agrave;ng được thoải m&aacute;i thử tất cả thiết bị v&agrave; dịch vụ Apple mới nhất.</p>\r\n\r\n<p>Chất lượng to&agrave;n cầu với gi&aacute; b&aacute;n v&agrave; dịch vụ ho&agrave;n hảo, ph&ugrave; hợp với mọi người Việt Nam.</p>\r\n', 1, 1, '2021-05-07 10:53:33', NULL),
(9, 0, 'Apple Mono Store đầu tiên tại trung tâm Hà Nội', '1620390329-anh-4b-20210504081836.jpg', '<p>Phong ph&uacute; trải nghiệm, kh&aacute;ch h&agrave;ng được thoải m&aacute;i thử tất cả thiết bị v&agrave; dịch vụ Apple mới nhất.Mang tới những trải nghiệm chuy&ecirc;n nghiệp như một Apple Store thu nhỏ với quy chuẩn khắt khe nhất.Vị tr&iacute; đắc địa, kh&ocirc;ng gian đậm chất Apple ngay tại phố đi bộ Bờ Hồ, đối diện Tr&agrave;ng Tiền Plaza.</p>\r\n', '<p>Phong ph&uacute; trải nghiệm, kh&aacute;ch h&agrave;ng được thoải m&aacute;i thử tất cả thiết bị v&agrave; dịch vụ Apple mới nhất.</p>\r\n\r\n<p>Mang tới những trải nghiệm chuy&ecirc;n nghiệp như một Apple Store thu nhỏ với quy chuẩn khắt khe nhất.</p>\r\n\r\n<p>Vị tr&iacute; đắc địa, kh&ocirc;ng gian đậm chất Apple ngay tại phố đi bộ Bờ Hồ, đối diện Tr&agrave;ng Tiền Plaza.</p>\r\n\r\n<p>Chất lượng to&agrave;n cầu với gi&aacute; b&aacute;n v&agrave; dịch vụ ho&agrave;n hảo, ph&ugrave; hợp với mọi người Việt Nam.</p>\r\n', 1, 1, '2021-05-07 12:25:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(255) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `phone` varchar(255) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text DEFAULT NULL COMMENT 'Ghi chú từ khách hàng',
  `price_total` int(11) DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint(2) DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `phone`, `email`, `note`, `price_total`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(62, 0, 'Hoàng Mạnh Tú', 'Triều khúc-Thanh Trì-Hà Nội', '03956793339', 'binkoy0809@gmail.com', '12345', 18810000, 0, 1, '2021-04-16 17:43:47', '2021-05-07 11:20:54'),
(63, 0, 'Hoàng Mạnh Tú', 'Triều khúc-Thanh Trì-Hà Nội', '03956793339', 'binkoy0809@gmail.com', '12345', 18810000, 0, 1, '2021-04-16 17:44:10', '2021-05-07 11:20:54'),
(64, 0, 'Hoàng Mạnh Tú', 'Triều khúc-Thanh Trì-Hà Nội', '03956793339', 'binkoy0809@gmail.com', '12345', 18810000, 0, 1, '2021-04-16 17:45:17', '2021-05-07 11:20:54'),
(65, 0, 'Hoàng Thị Hoa', 'Tổng Công Ty May LGG, Xã Nghĩa Hòa, Huyện Lạng Giang', '0846842286', 'binkoy0809@gmail.com', 'Ship sáng nhé', 56430000, 0, 1, '2021-04-16 17:50:50', '2021-05-07 11:20:54'),
(66, 7, 'Phạm Thị Thảo', 'Thanh Xuân - Hà Nội', NULL, 'phamthithao78912@gmail.com', '', 10701000, 0, 1, '2021-05-03 18:30:42', '2021-05-07 11:20:54'),
(67, 7, 'Phạm Thị Thảo', 'Thanh Xuân - Hà Nội', NULL, 'phamthithao78912@gmail.com', '', 10701000, 0, 1, '2021-05-03 18:31:08', '2021-05-07 11:20:54'),
(68, 7, 'Phạm Thị Thảo', 'Thanh Xuân - Hà Nội', NULL, 'phamthithao78912@gmail.com', '', 10701000, 0, 1, '2021-05-03 18:31:11', '2021-05-07 11:20:54'),
(69, 7, 'Phạm Thị Thảo', 'Thanh Xuân - Hà Nội', NULL, 'phamthithao78912@gmail.com', '', 10701000, 0, 1, '2021-05-03 18:31:59', '2021-05-07 11:20:54'),
(70, 7, 'Phạm Thị Thảo', 'Thanh Xuân - Hà Nội', '00846842286', 'phamthithao78912@gmail.com', '', 67706000, 0, 1, '2021-05-03 19:20:02', '2021-05-07 11:20:54'),
(71, 0, 'phan anh duc', 'hà dong', '02148552141', 'nhokonhebi99@gmail.com', '', 109093000, 0, 0, '2021-05-07 04:34:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL COMMENT 'Id của order tương ứng, là khóa ngoại liên kết với bảng orders',
  `product_id` int(11) DEFAULT NULL COMMENT 'Id của product tương ứng, là khóa ngoại liên kết với bảng products',
  `quality` int(11) DEFAULT NULL COMMENT 'Số sản phẩm đã đặt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quality`) VALUES
(63, 41, 1),
(64, 41, 1),
(65, 41, 3),
(66, 36, 1),
(67, 36, 1),
(68, 36, 1),
(69, 36, 1),
(70, 42, 2),
(71, 41, 4),
(71, 42, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `present` text NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `discount` int(11) NOT NULL DEFAULT 0,
  `product_year` date DEFAULT NULL,
  `hotproduct` tinyint(3) NOT NULL,
  `total_number_rating` int(11) NOT NULL,
  `total_rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `capacity`, `title`, `avatar`, `price`, `quality`, `ram`, `present`, `summary`, `content`, `status`, `discount`, `product_year`, `hotproduct`, `total_number_rating`, `total_rating`, `created_at`, `updated_at`) VALUES
(36, 27, 128, 'Product Name 001', '1620070807-ipad-pro-12-9-inch-wifi-cellular-128gb-2020-xam-600x600-1-600x600.jpg', 10000000, 0, 4, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>6.1&rdquo;, OLED, Super Retina XDR</p>\r\n	</li>\r\n	<li>Độ ph&acirc;n giải\r\n	<p>2532 x 1770 Pixels</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>1 camera 12 MP</p>\r\n	</li>\r\n	<li>Du</li>\r\n</ul>\r\n', '<p>Products Name 003Products Name 003Products Name 003</p>\r\n', 1, 10, '2021-04-13', 0, 0, 0, '2021-04-15 08:51:32', '2021-05-04 02:40:07'),
(37, 27, 256, 'Product Name 002', '1620070782-vivo-y72-5g-blue-600x600.jpg', 8900000, 10, 4, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>6.1&rdquo;, OLED, Super Retina XDR</p>\r\n	</li>\r\n	<li>Độ ph&acirc;n giải\r\n	<p>2532 x 1770 Pixels</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>1 camera 12 MP</p>\r\n	</li>\r\n	<li>Du</li>\r\n</ul>\r\n', '<p>http://localhost/Website_ShopDunk/index.php</p>\r\n', 1, 10, '2021-04-13', 1, 5, 1, '2021-04-15 08:59:15', '2021-05-04 02:39:42'),
(38, 27, 512, 'Product Name 004', '1620070773-xiaomi-mi-11-lite-4g-blue-600x600.jpg', 18000000, 1, 4, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh\r\n	<p>6.1&rdquo;, OLED, Super Retina XDR</p>\r\n	</li>\r\n	<li>Độ ph&acirc;n giải\r\n	<p>2532 x 1770 Pixels</p>\r\n	</li>\r\n	<li>Camera sau\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>1 camera 12 MP</p>\r\n	</li>\r\n	<li>Du</li>\r\n</ul>\r\n', '<p>http://localhost/Website_ShopDunk/index.php</p>\r\n', 1, 10, '2021-04-12', 1, 0, 0, '2021-04-15 09:00:16', '2021-05-04 02:39:33'),
(39, 28, 64, 'Product Name 005', '1620070762-xiaomi-redmi-note-10-pro-thumb-xam-600x600-600x600.jpg', 19800000, 1, 3, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh :6.1&rdquo;, OLED, Super Retina XDR</li>\r\n	<li>Độ ph&acirc;n giải: 2532 x 1770 Pixels</li>\r\n	<li>Camera sau :2 camera 12 MP</li>\r\n	<li>Camera trước:1 camera 12 MP</li>\r\n	<li>Dung lượng pin\r\n	<p>2815 mAh, ph&aacute;t video</p>\r\n	</li>\r\n</ul>\r\n', '<p>Product Name 005</p>\r\n', 1, 10, '2021-04-15', 1, 0, 0, '2021-04-15 09:04:28', '2021-05-04 02:39:22'),
(40, 27, 256, 'iPhone 12 chính hãng VN/A (Full VAT) (64GB - Đỏ)', '1620070696-samsung-galaxy-m51-trang-new-600x600-600x600.jpg', 15000000, 10, 4, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh : 5.4&rdquo;, OLED, Super Retina XDR</li>\r\n	<li>Độ ph&acirc;n giải:2340 x1080 Pixels</li>\r\n	<li>Camera sau\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>Camera trước\r\n	<p>1 camera 12 MP</p>\r\n	</li>\r\n	<li>Dung lượng pin\r\n	<p>2227 mAh, ph&aacute;t video l&ecirc;n tới 15 giờ (theo Apple)</p>\r\n	</li>\r\n	<li>C&ocirc;̉ng k&ecirc;́t n&ocirc;́i/sạc\r\n	<p>Sạc nhanh 20W, sạc kh&ocirc;ng d&acirc;y, hỗ trợ Magsafe</p>\r\n	</li>\r\n	<li>Kết nối mạng\r\n	<p>1 Nano SIM v&agrave; 1 eSIM, hỗ trợ 5G</p>\r\n	</li>\r\n	<li>Chip đồ họa (GPU)\r\n	<p>A14 Bionic, 6 nh&acirc;n, 5nm</p>\r\n	</li>\r\n	<li>RAM\r\n	<p>4GB</p>\r\n	</li>\r\n	<li>Bộ nhớ\r\n	<p>64GB, 128GB, 256GB</p>\r\n	</li>\r\n	<li>Chất liệu\r\n	<p>Viền nh&ocirc;m, k&iacute;nh cường lực Ceramic Shield ph&iacute;a trước</p>\r\n	</li>\r\n	<li>Th&ocirc;ng tin kh&aacute;c\r\n	<p>Chống nước IP68</p>\r\n	</li>\r\n	<li>T&iacute;nh năng đặc biệt\r\n	<p>Bảo mật Face ID</p>\r\n	</li>\r\n</ul>\r\n', '<h3>1. Viền m&aacute;y v&aacute;t phẳng c&ugrave;ng m&agrave;n h&igrave;nh tai thỏ 5.4 inch</h3>\r\n\r\n<p>Điện thoại iPhone 12 phi&ecirc;n bản mini l&agrave; một trong những phi&ecirc;n bản điện thoại si&ecirc;u phẩm của Apple, ở d&ograve;ng m&aacute;y n&agrave;y viền m&aacute;y kh&ocirc;ng c&ograve;n được thiết kế bo cong c&aacute;c cạnh, m&agrave; thay v&agrave;o đ&oacute; l&agrave; phần cạnh m&aacute;y được v&aacute;t phẳng v&ocirc; c&ugrave;ng mạnh mẽ v&agrave; c&aacute; t&iacute;nh.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh kiểu d&aacute;ng tai thỏ quen thuộc, với phần khuyết được tinh gọn hơn mang đến cảm gi&aacute;c m&agrave;n h&igrave;nh lớn hơn d&ugrave; iPhone 12 mini c&oacute; k&iacute;ch cỡ m&agrave;n h&igrave;nh chỉ 5.4 inch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/09/ip12-10.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh k&iacute;ch cỡ 5.4 inch l&agrave; điểm thuận lợi bởi m&aacute;y kh&aacute; nhỏ gọn, c&oacute; thể dễ d&agrave;ng đặt trong t&uacute;i &aacute;o, quần hơn so với 6.1 inch tr&ecirc;n điện thoại iPhone 12 Pro hay 6.7 inch tr&ecirc;n 12 Pro Max.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của iPhone 12 mini c&oacute; độ ph&acirc;n giải 2340&times;1080, từng chi tiết, chuyển động tr&ecirc;n m&agrave;n h&igrave;nh đều hiện l&ecirc;n r&otilde; n&eacute;t, tươi s&aacute;ng v&agrave; kh&ocirc;ng gặp phải t&igrave;nh trạng nh&ograve;e, giật h&igrave;nh.</p>\r\n\r\n<h3>2. Cụm camera 12MP được trang bị m&aacute;y qu&eacute;t LiDar</h3>\r\n\r\n<p>Điểm nhấn của d&ograve;ng điện thoại lần n&agrave;y nằm ở camera, camera của điện thoại iPhone 12 mini với camera k&eacute;p 12MP nhờ đ&oacute; h&igrave;nh ảnh sẽ được ghi lại r&otilde; n&eacute;t, kh&ocirc;ng bể h&igrave;nh khi ph&oacute;ng to.</p>\r\n\r\n<p>Camera sau cảm biến ch&iacute;nh 64MP được trang bị m&aacute;y qu&eacute;t LiDar</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/04/ip12-7.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, camera được trang bị m&aacute;y qu&eacute;t LiDar, đ&acirc;y l&agrave; một thiết bị gi&uacute;p hỗ trợ qu&eacute;t chiều s&acirc;u của vật bằng h&agrave;ng loạt tia laser được ph&aacute;t ra, nhờ c&oacute; m&aacute;y qu&eacute;t LiDar bạn c&oacute; thể dựng l&ecirc;n một m&ocirc; h&igrave;nh 3D, chụp ảnh x&oacute;a ph&ocirc;ng,&hellip;</p>\r\n\r\n<h3>3. Trang bị chip Apple A14 v&agrave; RAM 4GB</h3>\r\n\r\n<p>iPhone 12 mini cũng tương tự c&aacute;c phi&ecirc;n bản iPhone 12 kh&aacute;c khi m&aacute;y được trang bị con chip Apple A14. Nhờ đ&oacute;, điện thoại cho khả năng xử l&yacute; nhanh &ndash; mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/09/ip12-11.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>RAM của iPhone 12 mini sẽ l&agrave; 4GB v&agrave; c&oacute; 3 loại bộ nhớ trong 64GB, 128GB, 256GB. Với dung lượng bộ nhớ n&agrave;y, vẫn đủ khả năng để người d&ugrave;ng lưu trữ thả ga v&agrave; tốc độ giải quyết thao t&aacute;c nhanh ch&oacute;ng.</p>\r\n\r\n<h3>4. Pin lithium-ion hỗ trợ sạc nhanh 20W, kể cả sạc kh&ocirc;ng d&acirc;y</h3>\r\n\r\n<p>Tuy d&ograve;ng điện thoại lần n&agrave;y sẽ kh&ocirc;ng được đi k&egrave;m với bộ sạc, nhưng b&ugrave; lại, chiếc điện thoại iPhone 2020 mini n&agrave;y c&oacute; dung lượng pin tương đối lớn, dung lượng pin tuy kh&ocirc;ng thuộc h&agrave;ng &ldquo;khủng&rdquo; nhưng vẫn cho thời lượng sử dụng l&ecirc;n đ&ecirc;n 17 giờ xem video, 50 giờ nghe nhạc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/04/ip12-8.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, iP 12 mini c&ograve;n được trang bị t&iacute;nh năng sạc nhanh 20W, nhờ c&oacute; điểm n&agrave;y, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng sạc đầy chiếc điện thoại của m&igrave;nh, để tiếp tục c&ocirc;ng việc m&agrave; kh&ocirc;ng bị gi&aacute;n đoạn qu&aacute; l&acirc;u.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ thế, t&iacute;nh năng sạc nhanh n&agrave;y kh&ocirc;ng chỉ được &aacute;p dụng với bộ sạc c&oacute; d&acirc;y m&agrave; đối với cả sạc kh&ocirc;ng d&acirc;y. Kể cả khi bạn d&ugrave;ng sạc kh&ocirc;ng d&acirc;y th&igrave; t&iacute;nh năng sạc nhanh 20W vẫn được &aacute;p dụng như thường.</p>\r\n\r\n<h3><strong>II. Tại sao n&ecirc;n mua iPhone 12 mini&nbsp;</strong><strong>tại Shopdunk ?</strong></h3>\r\n\r\n<h3>1. Mua iPhone 12 mini trả g&oacute;p l&atilde;i suất 0 đồng&nbsp;với thẻ t&iacute;n dụng</h3>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng cần duyệt hồ sơ hay cần bất kỳ thủ tục giấy tờ phức tạp, thủ tục nhanh ch&oacute;ng v&agrave; đơn giản.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng khi tra g&oacute;p chỉ cần c&oacute; thẻ t&iacute;n dụng VISA/MASTER/JCB (loại ti&ecirc;u trước trả sau &ndash; Credit) của một trong 19 ng&acirc;n h&agrave;ng hợp t&aacute;c tr&ecirc;n. Ri&ecirc;ng VPANK chưa &aacute;p dụng thẻ đồng thương hiệu của Fecredit/TIMO.</li>\r\n	<li>Thời gian trả g&oacute;p linh hoạt từ 3 th&aacute;ng cho đến 12 th&aacute;ng cho tất cả c&aacute;c sản phẩm c&oacute; gi&aacute; trị từ 3.000.000 đồng trở l&ecirc;n (VIB từ 2000.000 đồng).</li>\r\n	<li>Bạn c&oacute; thể thanh to&aacute;n trước 1 phần, trả g&oacute;p 1 phần gi&aacute; trị (t&ugrave;y v&agrave;o hạn mức thẻ m&agrave; bạn c&oacute;)</li>\r\n	<li>Ng&acirc;n h&agrave;ng hợp t&aacute;c với ShopDunk: Sacombank, Citybank, Eximbank, HSBC, Maritimebank, SHINHAN, Techcombank, VIB, VPBank, SeaBank, Standared Chartered, SCB, Nam &Aacute;, FE Credit, OCB, TPBank.</li>\r\n</ul>\r\n\r\n<h3>2. Nhanh ch&oacute;ng dễ d&agrave;ng hơn với 4 bước mua iPhone 12 mini tại ShopDunk</h3>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng cần phải đến tận nơi mua, kh&ocirc;ng cần phải lo lắng sẽ bị &ldquo;ăn quả lừa&rdquo; khi mua h&agrave;ng kh&ocirc;ng được &ldquo;nh&igrave;n tận mắt, sờ tận tay&rdquo; hay chuyển tiền rồi m&agrave; kh&ocirc;ng nhận được h&agrave;ng, kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể kiểm tra h&agrave;ng, đồng &yacute; giao dịch rồi thanh to&aacute;n với dịch vụ mua h&agrave;ng ship COD của ShopDunk.</li>\r\n	<li>Với t&ocirc;n chỉ đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, ShopDunk đ&atilde; hợp t&aacute;c c&ugrave;ng Viettel Post để triển khai dịch vụ ship COD miễn ph&iacute; tr&ecirc;n to&agrave;n quốc. Kh&aacute;ch h&agrave;ng chỉ cần ở nh&agrave;, đặt h&agrave;ng, nhận h&agrave;ng, kiểm tra v&agrave; thanh to&aacute;n l&agrave; đ&atilde; c&oacute; ngay chiếc iPhone sang chảnh tr&ecirc;n tay.</li>\r\n</ul>\r\n\r\n<p>=&gt; Hướng dẫn c&aacute;c bước mua h&agrave;ng ship COD:</p>\r\n\r\n<ul>\r\n	<li>Bước 1: Chọn sản phẩm bạn đang muốn mua, kh&aacute;ch h&agrave;ng để lại th&ocirc;ng tin, nh&acirc;n vi&ecirc;n tư vấn của ShopDunk sẽ gọi điện x&aacute;c minh th&ocirc;ng tin.</li>\r\n	<li>Bước 2:&nbsp;Nh&acirc;n vi&ecirc;n ShopDunk lập phiếu ship COD.</li>\r\n	<li>Bước 3: Giao h&agrave;ng.</li>\r\n	<li>Bước 4:&nbsp;Kiểm tra h&agrave;ng khi nhận v&agrave; thanh to&aacute;n.</li>\r\n</ul>\r\n', 1, 0, '2021-04-20', 1, 0, 0, '2021-04-15 09:36:21', '2021-05-04 02:38:16'),
(41, 27, 128, 'iPhone 11 Chính hãng VN/A (Full VAT) (128GB - Vàng)', '1620070689-iphone-12-xanh-duong-new-600x600.jpg', 19800000, 0, 3, '<ul>\r\n	<li>Giảm gi&aacute; 800,000đ qua qu&agrave; tặng Galaxy&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/galaxy-a52-5g-giam-800-ngan-qua-qua-tang-galaxy-1341827\">Xem chi tiết</a></li>\r\n	<li>Ưu đ&atilde;i qu&agrave; tặng Galaxy trị gi&aacute; đến 960,000đ (&Aacute;p dụng tại Highland Coffee, Jollibee, Ph&uacute;c Long&nbsp;<a href=\"http://www.thegioididong.com/tin-tuc/an-uong-tha-ga-cung-galaxy-a32-galaxy-a52-galaxy-1342705\">Xem chi tiết</a></li>\r\n</ul>\r\n', '<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\" style=\"background-color:#e6e6fa; border-style:hidden\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>Bộ xử l&yacute;</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>C&ocirc;ng nghệ CPU</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Intel Core i5</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Loại CPU</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>1135G7</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Tốc độ CPU</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>2.40GHz</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Tốc độ tối đa</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Turbo Boost 4.20GHz</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>Bộ nhớ RAM, Ổ cứng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>RAM</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>8GB 3200Mhz</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Loại RAM</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>DDR4</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Ổ cứng</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>SSD M.2 NVMe 512GB</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>M&agrave;n h&igrave;nh</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>K&iacute;ch thước m&agrave;n h&igrave;nh</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>15.6inch</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Độ ph&acirc;n giải</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Full HD (1920 x 1080)</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>C&ocirc;ng nghệ m&agrave;n h&igrave;nh</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>-&nbsp;Chống ch&oacute;i Anti Glare<br />\r\n			-&nbsp;Tấm nền IPS<br />\r\n			-&nbsp;60Hz<br />\r\n			-&nbsp;LED Backlit</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>M&agrave;n h&igrave;nh cảm ứng</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Kh&ocirc;ng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>Đồ họa v&agrave; &Acirc;m thanh</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Thiết kế card</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Card đồ họa t&iacute;ch hợp</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Card đồ họa</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Intel Iris Xe Graphics</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>C&ocirc;ng nghệ &acirc;m thanh</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Bang &amp; Olufsen audio</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>Cổng kết nối &amp; t&iacute;nh năng mở rộng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Cổng giao tiếp</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>2&nbsp;x USB 3.1 Gen 1 Type-A&nbsp;<br />\r\n			1 x USB 3.1 Gen 1 Type-C&nbsp;<br />\r\n			1 x HDMI&nbsp;<br />\r\n			1 x Headphone/Microphone combo audio jack</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Kết nối kh&ocirc;ng d&acirc;y</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Bluetooth v5.0,&nbsp;Wi-Fi 802.11 a/b/g/n/ac</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Khe đọc thẻ nhớ</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>C&oacute;</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Webcam</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>HD webcam</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Bảo mật v&acirc;n tay</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Kh&ocirc;ng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Đ&egrave;n b&agrave;n ph&iacute;m</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Kh&ocirc;ng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><small><samp>Pin &amp; Adapter sạc&nbsp;</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Loại PIN</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Lithium-ion</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Th&ocirc;ng tin Pin</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>3 cell</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>Hệ điều h&agrave;nh</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Hệ điều h&agrave;nh</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Windows 10 Home SL</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" rowspan=\"1\">\r\n			<p><small><samp>K&iacute;ch thước &amp; trọng lượng</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>K&iacute;ch thước</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>360.2&nbsp;x 234.0 x 17.9&nbsp;(cm)</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Trọng lượng</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>1.685 kg</samp></small></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><small><samp>Chất liệu</samp></small></p>\r\n			</td>\r\n			<td>\r\n			<p><small><samp>Vỏ nhựa - nắp lưng bằng kim loại</samp></small></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '<h3>1. Thiết kế đột ph&aacute; kiểu mới khung th&eacute;p kh&ocirc;ng gỉ, m&agrave;n h&igrave;nh Super Retina 6.1 inch</h3>\r\n\r\n<p>Sau một thời d&agrave;i ra mắt c&aacute;c sản phẩm mới c&oacute; ch&uacute;t &iacute;t thay đổi về thiết kế b&ecirc;n ngo&agrave;i. Năm 2020, iPhone 12 Pro mang đến một phong c&aacute;ch thiết kế đột ph&aacute; hơn với phần viền được CNC vu&ocirc;ng bo tr&ograve;n như hơi hướng của người anh iPhone 5.</p>\r\n\r\n<p>Chất liệu thiết kế của điện thoại iPhone 12 phi&ecirc;n bản Pro cũng được l&agrave;m từ th&eacute;p kh&ocirc;ng gỉ, mang đến cảm gi&aacute;c cầm nắm chắc chắn v&agrave; cứng c&aacute;p hơn. M&agrave;u sắc tr&ecirc;n điện thoại ngo&agrave;i c&aacute;c m&agrave;u cơ bản cũ cũng c&oacute; th&ecirc;m m&agrave;u Xanh Navy đẹp hơn tinh tế hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/10/ip12-12.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<h3>2. M&agrave;n h&igrave;nh</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n điện thoại iPhone 12 Pro vẫn giữ nguy&ecirc;n thiết kế tai thỏ nhưng phần viền được Apple thiết kế mỏng hơn mang đến một c&aacute;i nh&igrave;n ho&agrave;n to&agrave;n mới về m&agrave;n h&igrave;nh tr&ecirc;n điện thoại.</p>\r\n\r\n<p>Với k&iacute;ch thước m&agrave;n h&igrave;nh lớn l&ecirc;n đến 6.1 inch sử dụng tấm nền Super Retina XDR OLED với độ ph&acirc;n giải 2K mọi h&igrave;nh ảnh đều được t&aacute;i hiện sắc n&eacute;t đến từng chi tiết tr&ecirc;n một kh&ocirc;ng gian rộng đủ để bạn thoải m&aacute;i sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/10/ip12-14.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<h3>3. Cấu h&igrave;nh hiệu năng mạnh mẽ với chip Apple A14 Bionic, bộ nhớ ram 6Gb, bộ nhớ trong dung lượng lớn</h3>\r\n\r\n<p>Như thường lệ mỗi năm Apple đều sản xuất ra những chiếc iPhone mới với những con chip thế hệ mới nhất. Năm nay cũng vậy điện thoại si&ecirc;u phẩm iPhone 12 Pro lần n&agrave;y được sử dụng con chip A14 Bionic với 6 nh&acirc;n cho tốc độ xử l&yacute; xung nhịp l&ecirc;n đến 3.1GHz.</p>\r\n\r\n<p>Mọi ứng dụng đều được xử l&yacute; với tốc độ rất nhanh ch&oacute;ng đối với tất cả c&aacute;c t&aacute;c vụ. Bộ nhớ ram của điện thoại cũng được n&acirc;ng cấp l&ecirc;n đến 6Gb cho khả năng đa nhiệm c&ugrave;ng l&uacute;c nhiều ứng dụng mượt m&agrave;.</p>\r\n\r\n<p>Năm nay bộ nhớ trong tối thiểu tr&ecirc;n điện thoại iPhone 12 Pro đ&atilde; được n&acirc;ng cấp l&ecirc;n 128Gb. Tăng khả năng lưu trữ gấp đ&ocirc;i so với phi&ecirc;n bản basic nhất như c&aacute;c d&ograve;ng iPhone Pro thế hệ trước.</p>\r\n\r\n<p>Apple cũng hỗ trợ nhiều mức dung lượng nữa bao gồm 256Gb v&agrave; 512Gb đến cho người d&ugrave;ng. Với những mức dung lượng n&agrave;y người d&ugrave;ng c&oacute; thể thoải m&aacute;i lưu trữ dữ liệu, c&agrave;i đặt ứng dụng, game nặng m&agrave; kh&ocirc;ng bị đầy bộ nhớ khi sử dụng.</p>\r\n\r\n<h3>4. Bộ ba camera sau + cảm biến LiDAR, camera trước si&ecirc;u sắc n&eacute;t</h3>\r\n\r\n<p>Tương tự như điện thoại iPhone 12 Pro Max, phi&ecirc;n bản Pro cũng được Apple đ&atilde; trang bị bộ ba camera chất lượng cao c&ugrave;ng độ ph&acirc;n giải 12MP bao gồm camera ch&iacute;nh g&oacute;c rộng, camera g&oacute;c si&ecirc;u rộng v&agrave; ống k&iacute;nh tele. M&aacute;y cũng được trang bị ống k&iacute;nh cảm biến LiDAR cho khả năng chụp ảnh sắc n&eacute;t v&agrave; chất thật nhất. Khả năng chụp g&oacute;c rộng v&agrave; Zoom tr&ecirc;n si&ecirc;u phẩm cũng được n&acirc;ng cấp đ&aacute;ng kể cho chất lượng v&agrave; khả năng chụp ảnh tốt hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/10/ip12-13.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>Camera trước của m&aacute;y được trang bị độ ph&acirc;n giải kh&aacute; cao. Cho khả năng selfie g&oacute;c rộng hơn. Với nhiều chế độ chụp h&igrave;nh ảnh được t&aacute;i hiện v&agrave; xử l&yacute; th&ocirc;ng minh hơn với c&ocirc;ng nghệ AI camera của Apple. Bạn c&oacute; thể sử dụng thoải m&aacute;i smartphone cho c&aacute;c t&aacute;c vụ như selfie, quay bằng camera trước hoặc gọi video call qua ứng dụng một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<h3>5. Pin lithium &ndash; ion dung lượng cao, hỗ trợ sạc nhanh, hỗ trợ 5G tốc độ cao</h3>\r\n\r\n<p>L&agrave; chiếc điện thoại c&oacute; hiệu năng mạnh mẽ c&ugrave;ng m&agrave;n h&igrave;nh k&iacute;ch thước lớn. V&igrave; vậy Apple đ&atilde; trang bị cho iPhone 12 Pro một khoảng dung lượng pin lớn. Với khoảng dung lượng n&agrave;y người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng cả một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo hết pin. M&aacute;y cũng được trang bị c&ocirc;ng nghệ sạc nhanh với c&ocirc;ng suất lớn cho thời gian sạc đầy pin nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://shopdunk.com/wp-content/uploads/2020/04/ip12-8.jpg\" style=\"height:450px; width:700px\" /></p>\r\n\r\n<p>L&agrave; một trong những chiếc iPhone đầu ti&ecirc;n được hỗ trợ c&ocirc;ng nghệ 5G. Với chuẩn 5G mới được trang bị n&agrave;y iP 12 Pro sẽ c&oacute; thể truy cập internet với tốc độ cực cao, băng th&ocirc;ng nằm ở khoảng 10Gbps. M&aacute;y cũng được hỗ trợ sử dụng eSim mở rộng cho ph&eacute;p người d&ugrave;ng sử dụng nhiều sim c&ugrave;ng l&uacute;c.</p>\r\n\r\n<h3><strong>II. Tại sao n&ecirc;n mua iPhone 12 Pro&nbsp;</strong><strong>tại Shopdunk ?</strong></h3>\r\n\r\n<h3>1. Mua iPhone 12 Pro trả g&oacute;p l&atilde;i suất 0 đồng&nbsp;với thẻ t&iacute;n dụng</h3>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng cần duyệt hồ sơ hay cần bất kỳ thủ tục giấy tờ phức tạp, thủ tục nhanh ch&oacute;ng v&agrave; đơn giản.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng khi tra g&oacute;p chỉ cần c&oacute; thẻ t&iacute;n dụng VISA/MASTER/JCB (loại ti&ecirc;u trước trả sau &ndash; Credit) của một trong 19 ng&acirc;n h&agrave;ng hợp t&aacute;c tr&ecirc;n. Ri&ecirc;ng VPANK chưa &aacute;p dụng thẻ đồng thương hiệu của Fecredit/TIMO.</li>\r\n	<li>Thời gian trả g&oacute;p linh hoạt từ 3 th&aacute;ng cho đến 12 th&aacute;ng cho tất cả c&aacute;c sản phẩm c&oacute; gi&aacute; trị từ 3.000.000 đồng trở l&ecirc;n (VIB từ 2000.000 đồng).</li>\r\n	<li>Bạn c&oacute; thể thanh to&aacute;n trước 1 phần, trả g&oacute;p 1 phần gi&aacute; trị (t&ugrave;y v&agrave;o hạn mức thẻ m&agrave; bạn c&oacute;)</li>\r\n	<li>Ng&acirc;n h&agrave;ng hợp t&aacute;c với ShopDunk: Sacombank, Citybank, Eximbank, HSBC, Maritimebank, SHINHAN, Techcombank, VIB, VPBank, SeaBank, Standared Chartered, SCB, Nam &Aacute;, FE Credit, OCB, TPBank.</li>\r\n</ul>\r\n\r\n<h3>2. Nhanh ch&oacute;ng dễ d&agrave;ng hơn với 4 bước mua iPhone 12 Pro tại ShopDunk</h3>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng cần phải đến tận nơi mua, kh&ocirc;ng cần phải lo lắng sẽ bị &ldquo;ăn quả lừa&rdquo; khi mua h&agrave;ng kh&ocirc;ng được &ldquo;nh&igrave;n tận mắt, sờ tận tay&rdquo; hay chuyển tiền rồi m&agrave; kh&ocirc;ng nhận được h&agrave;ng, kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể kiểm tra h&agrave;ng, đồng &yacute; giao dịch rồi thanh to&aacute;n với dịch vụ mua h&agrave;ng ship COD của ShopDunk.</li>\r\n	<li>Với t&ocirc;n chỉ đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, ShopDunk đ&atilde; hợp t&aacute;c c&ugrave;ng Viettel Post để triển khai dịch vụ ship COD miễn ph&iacute; tr&ecirc;n to&agrave;n quốc. Kh&aacute;ch h&agrave;ng chỉ cần ở nh&agrave;, đặt h&agrave;ng, nhận h&agrave;ng, kiểm tra v&agrave; thanh to&aacute;n l&agrave; đ&atilde; c&oacute; ngay chiếc iPhone sang chảnh tr&ecirc;n tay.</li>\r\n</ul>\r\n\r\n<p>=&gt; Hướng dẫn c&aacute;c bước mua h&agrave;ng ship COD:</p>\r\n\r\n<ul>\r\n	<li>Bước 1: Chọn sản phẩm bạn đang muốn mua, kh&aacute;ch h&agrave;ng để lại th&ocirc;ng tin, nh&acirc;n vi&ecirc;n tư vấn của ShopDunk sẽ gọi điện x&aacute;c minh th&ocirc;ng tin.</li>\r\n	<li>Bước 2:&nbsp;Nh&acirc;n vi&ecirc;n ShopDunk lập phiếu ship COD.</li>\r\n	<li>Bước 3: Giao h&agrave;ng.</li>\r\n	<li>Bước 4:&nbsp;Kiểm tra h&agrave;ng khi nhận v&agrave; thanh to&aacute;n.</li>\r\n</ul>\r\n\r\n<p>=&gt; Th&ocirc;ng tin chi tiết li&ecirc;n hệ hotline&nbsp;1900.6626&nbsp;hoặc truy cập website&nbsp;<a href=\"https://shopdunk.com/\">shopdunk.com</a></p>\r\n', 1, 5, '2021-04-13', 1, 10, 2, '2021-04-15 09:58:25', '2021-05-04 02:38:09'),
(42, 28, 512, 'Macbook M1 2021 Grey', '1620070682-iphone-12-pro-max-vang-new-600x600-600x600.jpg', 34900000, 1, 16, '<ul>\r\n	<li>\r\n	<p>Tặng th&ecirc;m 1.000.000đ thu cũ đổi mới</p>\r\n	</li>\r\n	<li>\r\n	<p>Trả g&oacute;p 0% l&atilde;i suất thẻ t&iacute;n dụng</p>\r\n	</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh 6.7&rdquo;, OLED, Super Retina XDR</li>\r\n	<li>Độ ph&acirc;n giải 2778 x 1284 Pixels</li>\r\n	<li>Camera sau 3 camera 12 MP, cảm biến LiDAR</li>\r\n	<li>Camera trước 1 camera 12 MP</li>\r\n	<li>Dung lượng pin 3687 mAh, ph&aacute;t video l&ecirc;n tới 20 giờ (theo Apple)</li>\r\n	<li>C&ocirc;̉ng k&ecirc;́t n&ocirc;́i/sạc Sạc nhanh 20W, sạc kh&ocirc;ng d&acirc;y, hỗ trợ Magsafe</li>\r\n	<li>Kết nối mạng 1 Nano SIM v&agrave; 1 eSIM, hỗ trợ 5G</li>\r\n	<li>Chip đồ họa (GPU) A14 Bionic, 6 nh&acirc;n, 5nm</li>\r\n	<li>RAM 6GB</li>\r\n	<li>Bộ nhớ 128GB, 256GB, 512GB</li>\r\n	<li>Chất liệu Viền nh&ocirc;m, k&iacute;nh cường lực Ceramic Shield ph&iacute;a trước</li>\r\n	<li>Th&ocirc;ng tin kh&aacute;c Chống nước IP68</li>\r\n	<li>T&iacute;nh năng đặc biệt Bảo mật Face ID</li>\r\n</ul>\r\n', '<ul>\r\n	<li>M&agrave;n h&igrave;nh 6.7&rdquo;, OLED, Super Retina XDR</li>\r\n	<li>Độ ph&acirc;n giải 2778 x 1284 Pixels</li>\r\n	<li>Camera sau 3 camera 12 MP, cảm biến LiDAR</li>\r\n	<li>Camera trước 1 camera 12 MP</li>\r\n	<li>Dung lượng pin 3687 mAh, ph&aacute;t video l&ecirc;n tới 20 giờ (theo Apple)</li>\r\n	<li>C&ocirc;̉ng k&ecirc;́t n&ocirc;́i/sạc Sạc nhanh 20W, sạc kh&ocirc;ng d&acirc;y, hỗ trợ Magsafe</li>\r\n	<li>Kết nối mạng 1 Nano SIM v&agrave; 1 eSIM, hỗ trợ 5G</li>\r\n	<li>Chip đồ họa (GPU) A14 Bionic, 6 nh&acirc;n, 5nm</li>\r\n	<li>RAM 6GB</li>\r\n	<li>Bộ nhớ 128GB, 256GB, 512GB</li>\r\n	<li>Chất liệu Viền nh&ocirc;m, k&iacute;nh cường lực Ceramic Shield ph&iacute;a trước</li>\r\n	<li>Th&ocirc;ng tin kh&aacute;c Chống nước IP68</li>\r\n	<li>T&iacute;nh năng đặc biệt Bảo mật Face ID</li>\r\n</ul>\r\n', 1, 3, '2021-04-12', 1, 0, 0, '2021-04-16 06:16:02', '2021-05-04 02:38:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `avatar`) VALUES
(135, 35, '1618476600-12 - Copy.jpg'),
(136, 35, '1618476600-12.jpg'),
(137, 35, '1618476600-images (1).jpg'),
(138, 36, '1618476692-images (3).jpg'),
(139, 36, '1618476692-images (4).jpg'),
(140, 36, '1618476692-images (5).jpg'),
(141, 37, '1618477155-images (10).jpg'),
(142, 37, '1618477155-images (11).jpg'),
(143, 37, '1618477155-images.jpg'),
(144, 38, '1618477216-images (6).jpg'),
(145, 38, '1618477216-images (7).jpg'),
(146, 38, '1618477216-images (8).jpg'),
(147, 39, '1618477468-tải xuống (3).jpg'),
(148, 39, '1618477468-tải xuống (4).jpg'),
(149, 39, '1618477468-tải xuống (5).jpg'),
(150, 39, '1618477468-tải xuống (6).jpg'),
(151, 39, '1618477468-tải xuống (7).jpg'),
(152, 40, '1618479381-12 - Copy.jpg'),
(153, 40, '1618479381-12.jpg'),
(154, 40, '1618479381-images (1).jpg'),
(155, 41, '1618480705-images (3).jpg'),
(156, 41, '1618480705-images (4) - Copy.jpg'),
(157, 41, '1618480705-images (7) - Copy.jpg'),
(158, 41, '1618480705-images (8) - Copy.jpg'),
(159, 42, '1618553762-tải xuống (4).jpg'),
(160, 42, '1618553762-tải xuống (5).jpg'),
(161, 42, '1618553762-tải xuống (7).jpg'),
(162, 42, '1618553762-tải xuống (8).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_product`
--

CREATE TABLE `rating_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating_product`
--

INSERT INTO `rating_product` (`id`, `user_id`, `product_id`, `name`, `content`, `number`, `created_at`, `updated_at`) VALUES
(1, 8, 37, 'Hoàng Mạnh Tú', 'Sản phẩm ok.máy dùng ngon k lỗi làm gì', 5, '2021-05-07 02:28:14', '0000-00-00 00:00:00'),
(2, 8, 41, 'Hoàng Mạnh Tú', 'Sản phaammr này tốt', 5, '2021-05-07 03:18:37', NULL),
(3, 8, 41, 'Hoàng Mạnh Tú', 'Ok nhé', 5, '2021-05-07 03:20:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `address`, `password`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Phan Anh Đức', 'phananhduc@gmail.com', '0326868681', 'Hà Đông', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-04-13 18:00:41', NULL),
(5, 'Hoàng Mạnh Tú', 'binkoy0809@gmail.com', '03956793339', '', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-04-16 18:18:21', NULL),
(7, 'Phạm Thị Thảo', 'phamthithao78912@gmail.com', '0846842286', 'Thanh Xuân - Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-05-03 18:27:12', NULL),
(8, 'Hoàng Mạnh Tú', 'hoangmanhtu0809@gmail.com', '0395679339', 'Tiều Khúc-Thanh Xuân - Hà Nội', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-05-07 02:25:24', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_2` (`category_id`),
  ADD KEY `category_id_3` (`category_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `rating_product`
--
ALTER TABLE `rating_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `product_id_3` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `rating_product`
--
ALTER TABLE `rating_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `rating_product`
--
ALTER TABLE `rating_product`
  ADD CONSTRAINT `rating_product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rating_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
