-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 01:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_bought` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `date`, `description`, `image_url`, `is_bought`, `name`, `price`, `user_id`) VALUES
(1, '2023-05-11 18:02:35', 'my desc', 'https://t3.ftcdn.net/jpg/00/92/53/56/360_F_92535664_IvFsQeHjBzfE6sD4VHdO8u5OHUSc6yHF.jpg', 0, 'cart 1', 69000, 4),
(3, '2023-05-11 18:03:42', 'foo description', 'https://t3.ftcdn.net/jpg/00/92/53/56/360_F_92535664_IvFsQeHjBzfE6sD4VHdO8u5OHUSc6yHF.jpg', 1, 'cart bar', 69000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `image_url` text NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image_url`, `description`) VALUES
(2, 'paper', 'https://media.istockphoto.com/id/939197818/photo/person-holding-white-empty-paper.jpg?s=612x612&w=0&k=20&c=Ea6UA7JyzAxIdHkoFDnpAv8VUyVBa9mhCX2bvuKDqFk=', 'wood dust'),
(4, 'my test', 'foo.bar', 'my desc'),
(5, 'văn học', 'https://media.istockphoto.com/id/627965868/photo/many-old-books-in-a-row.jpg?s=1024x1024&w=is&k=20&c=W6c-wm_Dpdpo2r0KcQQK5VFZfTeRz0eu5Fb_QzCa2Z8=', '1 văn bản gồm nhiều đoạn, 1 đoạn gồm nhiều câu, 1 câu gồm nhiều từ'),
(6, 'kinh tế', 'https://media.istockphoto.com/id/1345912457/photo/financial-stock-market-graph-selective-focus.jpg?s=612x612&w=0&k=20&c=I-XKq4_2c3rOJPezkG5J6DNbl65OVgmGbX4yrp5T7qQ=', 'tiền giấy là vật ngang giá chung cho mọi mặt hàng'),
(7, 'kỹ năng sống', 'https://c8.alamy.com/comp/2CC2MNY/life-skills-the-words-life-skills-on-a-notebook-sheet-with-some-colorful-crumpled-paper-balls-around-them-close-up-2CC2MNY.jpg', 'kỹ năng không rắn thì được gọi là kỹ năng mềm'),
(8, 'kiến thức tổng hợp', 'https://t3.ftcdn.net/jpg/03/59/09/04/360_F_359090423_7kA3WC9HnDEf1I9dx4ccGFhhO90vmzhk.jpg', 'thập cẩm'),
(9, 'chính trị - pháp lý', 'https://st2.depositphotos.com/1018728/6135/i/600/depositphotos_61350641-stock-photo-politician-at-press-conference.jpg', 'đối ngoại, hợp tác phát triển, đầu tư, v.v'),
(11, 'miscalenious', 'www.minecraft.net', 'lung_ta_lung_tung'),
(13, 'test', 'test.my', 'desc');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image_url` text NOT NULL,
  `price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `author` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `price`, `description`, `author`, `category_id`) VALUES
(5, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu -Tặng kèm bo', 'https://salt.tikicdn.com/cache/w1200/ts/product/09/2b/e4/e220a9a28a35a7c6ed3336e89c09178b.jpg', 57000, 'SÓI VÀ CỪU - BẠN KHÔNG TỐT NHƯ BẠN NGHĨ ĐÂU!', 'Lê Bảo Ngọc', 2),
(162, 'Sách-Tâm lý học thành công tái bản 2020', 'https://salt.tikicdn.com/cache/w1200/ts/product/64/a7/9a/ef9ee52fdad71e3c19b4d7cdd61795a5.jpg', 59000, 'Tác giả Carol S Dweck', 'Carol S. Dweck', 7),
(163, 'Sách Làm Điều Quan Trọng', 'https://salt.tikicdn.com/cache/w1200/ts/product/91/9a/d9/416cbcf8f7e8ccfa4611680c5ae04dd2.jpg', 77000, 'This is default book description, it says books are made from wood and has content, that s it!', 'John Doerr', 6),
(164, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh Đừng Sợ Hãi (Tái Bản 2023)', 'https://salt.tikicdn.com/cache/w1200/ts/product/e5/f8/d4/afc10d8c5ed72130ee3d20d60af571dd.jpg', 137000, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh ', 'Minh Niệm, Thích Nhất Hạnh', 8),
(165, 'SÁCH KÍCH HOẠT THIÊN TÀI SÁNG TẠO', 'https://salt.tikicdn.com/cache/w1200/ts/product/15/fc/da/b03dd46b0321287bc1ec7c9a9880302b.jpg', 153000, 'This is default book description, it says books are made from wood and has content, that s it!', 'Unknown', 4),
(166, 'Sách: Không Phải Thiếu May Mắn, Chỉ Là Chưa Cố Gắng', 'https://salt.tikicdn.com/cache/w1200/ts/product/a0/8c/71/481038904b9a5fb977d1b0428cf38fce.jpg', 164000, 'This is default book description, it says books are made from wood and has content, that s it!', '2.1/2 Bạn Tốt', 5),
(167, 'Sách Thiết Kế Một Cuộc Đời Đáng Sống', 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/4e/50/c31976452e9d4b0b744ab4000a419ef2.png', 116000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Dave Evans, Bill Burnett', 7),
(168, 'Sách: Trầm Cảm Ẩn - Cách Thoát Khỏi Chủ Nghĩa Hoàn Hảo Đang Che Đậy Căn Bệnh Trầm Cảm Của Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/1e/5f/12/6e392e90d1869d3001a5064d17869827.png', 199000, 'Trầm Cảm Ẩn - Cách Thoát Khỏi Chủ Nghĩa Hoàn Hảo Đ', 'Unknown', 5),
(169, 'Sách Người Thông Minh Giải Quyết Vấn Đề Như Thế Nào (Tái Bản 2020)', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/46/6f/b5/0fc2fd13fb94a723ed47df7303f3a484.jpg', 187000, 'Trong cuộc sống, bất kỳ ai cũng phải đưa ra quyết ', 'Ken Watanabe', 5),
(170, 'Sách Đắc Nhân Tâm (Bìa Cứng) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/0d/43/38/1e7c50e1a1162a98948f2d529d3c6633.png', 69000, 'This is default book description, it says books are made from wood and has content, that s it!', 'Dale Carnegie', 8),
(171, 'Sách DevUP', 'https://salt.tikicdn.com/cache/w1200/ts/product/c4/3f/9a/87855a3685dda8def93d40a1d87968a1.png', 168000, 'Thế giới đang đối mặt với những thay đổi chưa từng', 'Unknown', 8),
(172, 'Kỷ Luật Bản Thân', 'https://salt.tikicdn.com/cache/w1200/ts/product/09/3b/73/873b5e1f6e55c774b90062ad94e07940.png', 107000, 'Trong cuộc sống hiện nay, bất cứ ai cũng phải cùng', 'Peg Dawson, Richard Guare', 6),
(173, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không Phải Sói Nhưng Cũng Đừng Là Cừu (Bộ 2 Cuốn)', 'https://salt.tikicdn.com/cache/w1200/ts/product/24/fe/6e/ddc4a0f2e5380c75860edb04444be58a.jpg', 146000, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không', 'Unknown', 4),
(174, 'Sách - Chữa Lành Đứa Trẻ Bên Trong Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/6f/68/696abb1a54d875e41f0316a572a722cf.jpg', 98000, '( Tặng Postcard bốn mùa ngẫu nhiên )', 'Unknown', 5),
(175, 'Sách: Đời Có Thật Nhạt Nhẽo Hay Do Ta Vô Vị', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/78/57/9717a495221c9c1dcb265fb8c7cad9e0.jpg', 85000, '“Cuộc đời đâu phải một ván bài, làm gì có kẻ thắng', 'Unknown', 5),
(176, 'Làm sạch tâm hồn - Các bài tập thiền', 'https://salt.tikicdn.com/cache/w1200/ts/product/e0/c1/48/f657027db177f2c205bc46fb728caa63.jpg', 156000, '“Làm sạch tâm hồn - các bài tập thiền” của tác giả', 'Nishi Katsuzo', 7),
(177, 'Sách - Thao túng tâm lý - 1980BOOKS', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/58/93/c0770a8b8a2848da045459658443336e.png', 180000, 'THÔNG TIN XUẤT BẢN: Tác giả: Shannon Thomas, LCSW ', 'Shannon Thomas', 8),
(178, 'Sách Người trong muôn nghề: Ngành Kinh tế có gì?', 'https://salt.tikicdn.com/cache/w1200/ts/product/e6/8e/70/f54cde94815e47d95a93c3a573c14dd2.png', 135000, '- GIỚI THIỆU SÁCH:', 'Nhóm tác giả Spiderum', 5),
(179, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ Ai + Quẳng Gánh Lo Đi Và Vui Sống + Tuổi Trẻ Đáng Giá Bao Nhiêu? + Nhà Giả Kim (Top 5 Cuốn Sách Kỹ Năng Sống, Tư Duy Và Làm Việc Bán Chạy Nhất Thế Giới - Tặng Kèm Postcard Green Life)', 'https://salt.tikicdn.com/cache/w1200/ts/product/1f/d6/16/3eede4d99d1a0c59e2c3d1d9cf850bb3.jpg', 67000, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ A', 'Dale Carnegie, TS. David J. Lieberman, Rosie Nguyễn, Paulo Coelho', 7),
(180, 'Sách Flow - Dòng Chảy', 'https://salt.tikicdn.com/cache/w1200/ts/product/23/54/b0/e4eee2d1711b26492b9b0bee5fc27121.jpg', 93000, 'Dành cho những ai muốn tối ưu khả năng tập trung đ', 'Mihaly Csikszentmihalyi', 5),
(181, 'Sách - Thao túng tâm lý - 1980BOOKS', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/58/93/c0770a8b8a2848da045459658443336e.png', 160000, 'THÔNG TIN XUẤT BẢN: Tác giả: Shannon Thomas, LCSW ', 'Shannon Thomas', 7),
(182, 'Sách - Chữa Lành Đứa Trẻ Bên Trong Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/6f/68/696abb1a54d875e41f0316a572a722cf.jpg', 196000, '( Tặng Postcard bốn mùa ngẫu nhiên )', 'Unknown', 8),
(183, 'Sách Thiết Kế Một Cuộc Đời Đáng Sống', 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/4e/50/c31976452e9d4b0b744ab4000a419ef2.png', 165000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Dave Evans, Bill Burnett', 6),
(184, 'Sách Chữa Lành Nỗi Đau', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/17/e7/a0/2c1dc9fca4b289203a5852528142f3c4.jpg', 161000, 'Cuộc sống hàng ngày đầy rẫy lo toan, tất bật luôn ', 'Louise L.Hay', 4),
(185, 'Đọc Sách Cộng Hưởng', 'https://salt.tikicdn.com/cache/w1200/ts/product/de/1f/e3/368d77eb57d9a8ae2da5577074d328a5.jpg', 136000, 'Đọc Sách Cộng Hưởng', 'Watanabe Yasuhiro', 6),
(186, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản 2020 - 169k)', 'https://salt.tikicdn.com/cache/w1200/ts/product/d1/d1/d5/d298212f25edcddebc7569b354feec59.jpg', 84000, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản', 'Robert B. Cialdini', 8),
(187, 'Đúng Việc', 'https://salt.tikicdn.com/cache/w1200/ts/product/a7/9e/df/7cb7919accf80d92fdf976d49ca3faec.jpg', 112000, 'Đúng Việc - Một Góc Nhìn Về Câu Chuyện Khai Minh (', 'Unknown', 4),
(188, 'Sách - Xé vài trang thanh xuân, đổi lấy một bản thân nỗ lực', 'https://salt.tikicdn.com/cache/w1200/ts/product/0f/73/50/bf9237d6e89a6982250e1e9e2cd09a68.jpg', 59000, 'GIỚI THIỆU SÁCH:', 'Unknown', 8),
(189, 'Sách - Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/8a/82/5a9b243f933a3bacd15476616c84d1bd.jpg', 177000, 'GIỚI THIỆU TÁC PHẨM', 'Huỳnh Thái Ngọc', 6),
(190, 'Sách Tự học - Kiến tạo một hành trình học tập -mhbooks tặng bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/70/04/65/a8c569e98511e169d72d45c4bf38284e.jpg', 57000, 'Cuốn sách gồm 8 chương, lần lượt tiếp cận những kh', 'Unknown', 7),
(191, 'Sách - Hành Trình Về Phương Đông (Bìa Mềm - Tái bản 2021) - First News', 'https://salt.tikicdn.com/cache/w1200/ts/product/25/5a/d4/fc46af47ce7a83545a7f5c1344d260b7.jpg', 153000, 'Nhà xuất bản: NXB Thế Giới', 'Baird T. Spalding', 5),
(192, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/3b/e2/fc8ebacfec38cbe6d3254aec6b8d011b.jpg', 187000, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổ', 'Unknown', 5),
(193, 'Tôi Ước Mình Chưa Từng Được Sinh Ra -Tặng kèm 1 bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/e4/a5/86785ac0765f58eba8d79dd6de274f14.jpg', 92000, 'TÔI ƯỚC MÌNH CHƯA TỪNG ĐƯỢC SINH RA\" - Yim Minkyun', 'Yim Minkyung', 4),
(194, 'Sách Tâm Lý Dành Cho Người Nhạy Cảm', 'https://salt.tikicdn.com/cache/w1200/ts/product/ca/13/6a/0d61a976cb4530f64937cb4de4d17801.jpg', 108000, 'Việc chúng ta để tâm đến cảm xúc của chính mình và', 'Hiroko Mizushima', 6),
(195, 'Sách Bạn Thật Sự Là Ai?', 'https://salt.tikicdn.com/cache/w1200/ts/product/4c/9c/cc/01974135871e8c4b20d38beca81be00a.jpg', 114000, '“Bạn thật sự là ai?”', 'Brian R.Little', 5),
(196, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải Có : Cân Bằng Cảm Xúc, Cả Lúc Bão Giông + Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh ( Tặng Kèm Bookmark Green Life)', 'https://salt.tikicdn.com/cache/w1200/ts/product/8f/21/81/9293313e5920833d5fb86bc6e2710e4a.jpg', 88000, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải ', 'Richard Nicholls, Tống Mặc', 4),
(197, 'Không Diệt Không Sinh Đừng Sợ Hãi (TB5)', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/2f/08/51ecae50eee41553349512015898d23d.jpg', 105000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Thích Nhất Hạnh', 8),
(198, 'Sách OSHO - Can Đảm Là Chính Mình Trong Thế Giới Hiểm Nguy', 'https://salt.tikicdn.com/cache/w1200/ts/product/31/db/69/e468d22b6f157cb42741ed7313a27f4a.jpg', 142000, 'CAN ĐẢM LÀ CHÍNH MÌNH TRONG THẾ GIỚI HIỂM NGUY', 'Osho', 8),
(199, 'Nghĩ Đơn Giản, Sống Đơn Thuần (Tái Bản) - Tặng 1 Bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/04/9e/eb/f1f11c795877a53d374c4b0706d19037.jpg', 194000, 'NGHĨ ĐƠN GIẢN, SỐNG ĐƠN THUẦN, HẠNH PHÚC NHIỀU HƠN', 'Tolly Burkan', 6),
(200, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/3b/e2/fc8ebacfec38cbe6d3254aec6b8d011b.jpg', 174000, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổ', 'Unknown', 5),
(201, 'Bộ 3 sách giấy phát triển bản thân Fususu kèm vòng tay độc đáo', 'https://salt.tikicdn.com/cache/w1200/ts/product/38/dd/94/f11d4ead9759a8bee5f896027d6c4ce4.jpg', 123000, 'Bộ 3 sách giấy Fususu kèm vòng tay độc đáo', 'FUSUSU', 6),
(202, 'Điềm Tĩnh Và Nóng Giận', 'https://salt.tikicdn.com/cache/w1200/ts/product/b3/d0/01/6b7202f2f92ad278157f36b80cb27e64.jpg', 63000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Tạ Quốc Kế', 5),
(203, 'Suy Nghĩ Ngược - Cuốn Sách Cải Thiện Suy Nghĩ Giúp Bạn Sống Chủ Động, Tích Cực Và Thành Công', 'https://salt.tikicdn.com/cache/w1200/ts/product/c0/cf/33/35bb0890bde4ea431ff1a4dd67fe3785.jpg', 147000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Shiratori Haruhiko', 4),
(204, 'Combo 2 cuốn: Giận (Tái Bản 2021) + Không Diệt Không Sinh Đừng Sợ Hãi ( Bộ Sách Hay Nhất Của Thiền Sư Thich Nhất hạnh/ Tặng Kèm Bookmark)', 'https://salt.tikicdn.com/cache/w1200/ts/product/98/06/c0/a97011ee03899cce0b59132e76e63f5b.jpg', 148000, '1, Giận - Tái bản 2021', 'Unknown', 7),
(205, 'Khi Bạn Đang Say Giấc, Ai Đó Đã Đạt Được Ước Mơ-Tặng kèm 01 bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/a5/3d/ca/df5859d6aa77038edb17f0fbf733131e.jpg', 51000, 'Mood to Read trân trọng gửi tới độc giả một cuốn s', 'Kim Yoojin', 4),
(206, 'Sách: 1 Ngày Bằng 48 Giờ - Sổ tay Quản Lí Thời Gian Hiệu Quả', 'https://salt.tikicdn.com/cache/w1200/ts/product/77/43/c6/4a6f7f0d38eb4175180d4298843e7020.jpg', 137000, 'This is default book description, it says books are made from wood and has content, that s it!', 'Instant Research Institude', 6),
(207, 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', 'https://salt.tikicdn.com/cache/w1200/ts/product/bc/66/9a/f507bd36cf01fbc02948f3d01baeb627.jpg', 157000, 'This is default book description, it says books are made from wood and has content, that s it!', 'John Gray', 8),
(208, 'Combo Bạn Đắt Giá Bao Nhiêu + Khí Chất Bao Nhiêu - Hạnh Phúc Bấy Nhiêu (2 Cuốn) (Tặng Kèm Bookmark Sắt)', 'https://salt.tikicdn.com/cache/w1200/ts/product/6b/30/ce/82ff34f5cfb1e482d34150422ba7e856.jpg', 104000, 'Combo Bạn Đắt Giá Bao Nhiêu + Khí Chất Bao Nhiêu -', 'Vãn Tình', 8),
(209, 'Sách - The one thing - Điều ý nghĩa nhất trong từng khoảnh khắc cuộc đời', 'https://salt.tikicdn.com/cache/w1200/ts/product/fb/ac/17/23671c23ee1cebda8916bc8b0c002679.png', 161000, 'Sách - The one thing - Điều ý nghĩa nhất trong từn', 'Unknown', 5),
(210, 'Sách Tư Duy Ngược Dịch Chuyển Thế Giới', 'https://salt.tikicdn.com/cache/w1200/ts/product/3c/6d/75/45dbffab3a67de798a132d43e80b833e.jpg', 157000, 'TƯ DUY NGƯỢC DỊCH CHUYỂN THẾ GIỚI Adam Grant là tá', 'Adam Grant', 4),
(211, 'Sách-Tâm lý học thành công tái bản 2020', 'https://salt.tikicdn.com/cache/w1200/ts/product/db/ba/46/0fc390e6b5972f4f9abda929cd4572d8.png', 80000, 'Tác giả Carol S Dweck', 'Carol S. Dweck', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `created_date`, `user_id`) VALUES
(5, '5adcfd3f-ad8c-4862-b7ae-b02be833f201', '2023-05-10 15:23:30', 3),
(6, 'dec442b2-860d-405c-93d9-ab2daea30154', '2023-05-10 15:23:45', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `phone_number`, `address`) VALUES
(3, 'admin', '202CB962AC59075B964B07152D234B70', 'Duc', 'Kien', 987654321, NULL),
(4, 'test', '202CB962AC59075B964B07152D234B70', 'Khoi', 'Nguyen', 987123456, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_token` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `fk_wishlist_product` (`product_id`),
  ADD KEY `fk_wishlist_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk_wishlist_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_wishlist_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
