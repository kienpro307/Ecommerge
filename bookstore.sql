-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 12:40 PM
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
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` text NOT NULL,
  `price` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `price`, `description`, `author`) VALUES
(4, 'Clean Code – Mã Sạch Và Con Đường Trở Thành Lập Tr', 'https://salt.tikicdn.com/cache/w1200/ts/product/eb/76/de/a0e87ef33a285d22f4659374a1f1f177.jpg', 123000, 'Clean Code', 'Robert Cecil Martin'),
(5, 'Không Phải Sói Nhưng Cũng Đừng Là Cừu -Tặng kèm bo', 'https://salt.tikicdn.com/cache/w1200/ts/product/09/2b/e4/e220a9a28a35a7c6ed3336e89c09178b.jpg', 57000, 'SÓI VÀ CỪU - BẠN KHÔNG TỐT NHƯ BẠN NGHĨ ĐÂU!', 'Lê Bảo Ngọc'),
(6, 'Sách OSHO Yêu - Being In Love - Yêu Trong Tỉnh Thứ', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/2d/e3/d4/fe4142e4c0fb202d3d4c01bc9b4ee085.jpg', 123000, '“YÊU” TRONG TỈNH THỨC VỚI OSHO Một chỉ dẫn “yêu kh', 'Osho'),
(7, 'Không Ai Có Thể Làm Bạn Tổn Thương Trừ Khi Bạn Cho', 'https://salt.tikicdn.com/cache/w1200/ts/product/0c/ff/1f/091c739d2cc4c1b2a3a9c5025930adcc.jpg', 142000, 'KHÔNG AI CÓ THỂ LÀM BẠN TỔN THƯƠNG TRỪ KHI BẠN CHO', 'Yoo Eun Jung'),
(8, 'Cuốn Sách Hoàn Hảo Về Ngôn Ngữ Cơ Thể - Body Langu', 'https://salt.tikicdn.com/cache/w1200/ts/product/6f/e9/0c/3008cc78076b1ac7240c55bc014580d7.jpg', 154000, 'Ngôn Ngữ Cơ Thể - Body Language (Tái Bản)', 'Allan & Barbara Pease'),
(9, 'Thân Tâm Trí', 'https://salt.tikicdn.com/cache/w1200/ts/product/6c/5d/d3/2771b391a3ec3fd02e081c5893a12b2f.jpg', 94000, 'Thân thể – tâm thần – trí tuệ từ lâu đã được biết ', 'Daniel J. Siegel, Marion Solomon'),
(10, 'Bí Mật Và Thực Tế Về Tự Kỉ Ám Thị (Self Mastery Th', 'https://salt.tikicdn.com/cache/w1200/ts/product/df/e1/13/f2de3d2e036a443a7428ce2e18ec9386.jpg', 121000, 'BÍ MẬT VÀ THỰC TẾ VỀ TỰ KỈ ÁM THỊ', 'Émile Coué'),
(11, 'Cuộc cách mạng rau sạch', 'https://salt.tikicdn.com/cache/w1200/ts/product/34/68/da/d61358d7eb25b78b5fab2a96535275cd.jpg', 58000, '“Cuộc cách mạng rau sạch” là cuốn sách ghi lại nhữ', 'Toshimichi Yoshida'),
(12, 'Ăn Sạch Sống Xanh, Tâm Lành Trí Khoẻ', 'https://salt.tikicdn.com/cache/w1200/ts/product/4f/87/d7/75d5f3884d462d1b23b7376c5300896f.png', 129000, 'Những người cho rằng một bữa ăn fast-food giá rẻ t', 'Darin Olien'),
(13, 'Sách Đen - Bộ Công Cụ Của Phụ Nữ Thành Đạt', 'https://salt.tikicdn.com/cache/w1200/ts/product/bd/12/18/9b373144a630d650e38325e7127a6349.jpg', 193000, 'Bạn là một phụ nữ thuộc tuýp workaholic? Bạn là ng', 'Otegha Uwagba'),
(14, 'Sách OSHO Yêu - Being In Love - Yêu Trong Tỉnh Thứ', 'https://salt.tikicdn.com/cache/w1200/ts/product/b2/df/75/cb344feedbce2e31e26833f9cd6ae560.jpg', 153000, '“YÊU” TRONG TỈNH THỨC VỚI OSHO Một chỉ dẫn “yêu kh', 'Osho'),
(15, 'Tâm Lý Học Hành Vi (Tặng Kèm 1 Bookmark )', 'https://salt.tikicdn.com/cache/w1200/ts/product/50/bd/eb/51937df1d205a27deb93bde1dda06f05.jpg', 54000, 'Tâm Lý Học Hành Vi', 'Khương Nguy'),
(16, 'Đừng Chạy Theo Số Đông - Cuốn Sách Bạn Cần Đọc Trư', 'https://salt.tikicdn.com/cache/w1200/ts/product/95/c5/71/f260011660001af960c42d7d2f1c5dc1.jpg', 189000, 'Nếu tất cả mọi người ai cũng làm chủ doanh nghiệp,', 'Kiên Trần'),
(17, 'Kỷ Luật Tự Giác (Tặng Kèm Bookmark )', 'https://salt.tikicdn.com/cache/w1200/ts/product/27/2e/63/308986aa2c17293af227162874ad24a3.jpg', 152000, 'TỰ GIÁC BAO NHIÊU, TỰ DO BẤY NHIÊU Theo bạn thì, t', 'Tiểu Dã'),
(18, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không', 'https://salt.tikicdn.com/cache/w1200/ts/product/24/fe/6e/ddc4a0f2e5380c75860edb04444be58a.jpg', 189000, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không', 'Unknown'),
(19, 'Sách Đi Tìm Lẽ Sống (Tái Bản )', 'https://salt.tikicdn.com/cache/w1200/ts/product/fd/ab/2f/8f54bd0b066c0d275eeb52c76c7ff329.png', 58000, 'Đi Tìm Lẽ Sống', 'Viktor Emil Frankl'),
(20, 'Sách Vị Tu Sĩ Bán Chiếc Ferrari (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/78/97/9e/09dc123679ecd939271fe9a4ee4cb841.jpg', 89000, 'VỊ Tu Sĩ Bán Chiếc FERRARI không phải là một cuốn ', 'Robin Sharma'),
(21, 'Sách Đánh Thức Con Người Phi Thường Trong Bạn (Bìa', 'https://salt.tikicdn.com/cache/w1200/ts/product/3b/cd/4b/3b1dac084a5a25611935d664923c6306.jpg', 161000, 'Đánh thức con người phi thường trong bạn” là cuốn ', 'Anthony Robbins'),
(22, 'Combo Sách Kỹ Năng Hay: Lấy Người Mình Yêu, Làm Đi', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/e4/c4/0c51eed555f78717b1e9feba390994d3.jpg', 190000, 'Combo Sách Kỹ Năng Hay: Lấy Người Mình Yêu, Làm Đi', 'Hội đọc sách Từ Hoài, Mộ Dung Tố Y'),
(23, 'Sách Đi Tìm Lẽ Sống (Tái Bản )', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/14/8b/61fb657f347d14d9d7bf6fe901001a8e.jpg', 147000, 'Đi Tìm Lẽ Sống', 'Viktor Emil Frankl'),
(24, 'Cách Sống (Tái Bản 2020)', 'https://salt.tikicdn.com/cache/w1200/ts/product/cc/83/72/1aba10a90b50808a50e0d6ae7428c31f.jpg', 184000, 'Cách sống giống như một cây gậy đập vào dòng chảy ', 'Inamori Kazuo'),
(25, 'Sách Sức Mạnh Tiềm Thức (Tái Bản) (Bìa Mềm)', 'https://salt.tikicdn.com/cache/w1200/ts/product/ea/80/aa/76487dc3664207976a100b4b1b932cd6.jpg', 131000, 'Sức Mạnh Tiềm Thức (Tái Bản)', 'Joseph Murphyc'),
(26, 'Một Cuốn Sách Về Chủ Nghĩa Tối Giản (Tái bản 2022)', 'https://salt.tikicdn.com/cache/w1200/ts/product/26/5d/69/7bf0649939f10d3545325d7b17c11223.jpg', 69000, 'Tác giả: Chi Nguyễn — The Present Writer', 'Chi Nguyễn – The Present Writer'),
(27, 'Sách Thay Đổi Cuộc Sống Với Nhân Số Học - Lê Đỗ Qu', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/25/4d/52/6e5a9b48c1316dc3ccc55df2c955ec24.jpg', 128000, 'Thay Đổi Cuộc Sống Với Nhân Số Học', 'David A. Phillips'),
(28, 'Sách: Trầm Cảm Ẩn - Cách Thoát Khỏi Chủ Nghĩa Hoàn', 'https://salt.tikicdn.com/cache/w1200/ts/product/1e/5f/12/6e392e90d1869d3001a5064d17869827.png', 191000, 'Trầm Cảm Ẩn - Cách Thoát Khỏi Chủ Nghĩa Hoàn Hảo Đ', 'Unknown'),
(29, 'Rèn Luyện Tư Duy Phản Biện', 'https://salt.tikicdn.com/cache/w1200/ts/product/22/cb/a9/524a27dcd45e8a13ae6eecb3dfacba7c.jpg', 138000, 'Như bạn có thể thấy, chìa khóa để trở thành một ng', 'Albert Rutherford'),
(30, 'Kỹ Năng Đọc Sách Hiệu Quả', 'https://salt.tikicdn.com/cache/w1200/ts/product/06/0f/93/e02349d26615b805418888d62e18c687.jpg', 118000, 'Mỗi cuốn sách hay là một cuộc đời, một kho kinh ng', 'Yuji Akaba'),
(31, 'Sách Người trong muôn nghề', 'https://salt.tikicdn.com/cache/w1200/ts/product/fa/c1/75/6f7753cda70ad860288679f5af79f2a4.png', 186000, 'Người Trong Muôn Nghề là cuốn sách hướng nghiệp tu', 'Nhóm tác giả'),
(32, 'Khi Bạn Đang Say Giấc, Ai Đó Đã Đạt Được Ước Mơ-Tặ', 'https://salt.tikicdn.com/cache/w1200/ts/product/a5/3d/ca/df5859d6aa77038edb17f0fbf733131e.jpg', 64000, 'Mood to Read trân trọng gửi tới độc giả một cuốn s', 'Kim Yoojin'),
(33, 'Sách - Ám Ảnh Sợ Xã Hội - Chạy Trốn Hay Đối Mặt', 'https://salt.tikicdn.com/cache/w1200/ts/product/8e/0a/47/70d281ef74f6976194bdce448bbabeb1.jpg', 122000, 'THÔNG TIN SÁCH CƠ BẢN', 'Lý Thế Cường'),
(34, 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', 'https://salt.tikicdn.com/cache/w1200/ts/product/9c/b3/8e/3ff8d70257c97a38d377eeaa564c7f37.jpg', 61000, '', 'John Gray'),
(35, 'Sách: Thay Đổi Một Suy Nghĩ Thay Đổi cả Cuộc Đời', 'https://salt.tikicdn.com/cache/w1200/ts/product/bc/e4/62/c90d693131214d091e22652d8722c779.jpg', 125000, 'THAY ĐỔI MỘT SUY NGHĨ THAY ĐỔI MỘT CUỘC ĐỜI', 'Unknown'),
(36, 'Sách kỹ năng: Kỷ Luật Làm Nên Con Người có bookmar', 'https://salt.tikicdn.com/cache/w1200/ts/product/8c/3f/c3/469eab1e248e549ef4feffcb274d2c55.jpg', 198000, 'Muốn chinh phục thế giới thì trước tiên phải chiến', 'Lý Kiệt'),
(37, 'Sách Người Trong Muôn Nghề: Ngành IT có gì?', 'https://salt.tikicdn.com/cache/w1200/ts/product/06/4f/d9/d5af2fee4c5ec8c42179c83618175511.png', 110000, '\"Học công nghệ thông tin rồi đi lắp máy tính với c', 'Nhóm tác giả Spiderum'),
(38, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh ', 'https://salt.tikicdn.com/cache/w1200/ts/product/e5/f8/d4/afc10d8c5ed72130ee3d20d60af571dd.jpg', 199000, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh ', 'Minh Niệm, Thích Nhất Hạnh'),
(39, 'Tư Duy Hình Ảnh', 'https://salt.tikicdn.com/cache/w1200/ts/product/86/b4/34/739ec1c058f61af1918f71e5c2af43f8.jpg', 78000, 'Nếu bạn vẫn chưa sử dụng được sức mạnh của tư duy ', 'Willemien Brend'),
(40, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản', 'https://salt.tikicdn.com/cache/w1200/ts/product/63/8f/cf/555ac6f80db52502513ae753c7d33722.jpg', 161000, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản', 'Robert B. Cialdini'),
(41, 'Sách Bí Quyết Áp Dụng 7 Thói Quen Của Bạn Trẻ Thàn', 'https://salt.tikicdn.com/cache/w1200/ts/product/57/01/59/cdaa4509b8a65ba0278012629aca6183.jpg', 124000, '“BÍ QUYẾT ÁP DỤNG 7 THÓI QUEN CỦA BẠN TRẺ THÀNH ĐẠ', 'Sean Covey'),
(42, 'Sách Hiểu Về Trái Tim (Tái Bản 2019) - Minh Niệm', 'https://salt.tikicdn.com/cache/w1200/ts/product/d4/cd/ac/79d4182818035ee5c9f7109e76730835.png', 137000, '', 'Minh Niệm'),
(43, 'Sách Seneca: Những Bức Thư Đạo Đức – Chủ nghĩa Khắ', 'https://salt.tikicdn.com/cache/w1200/ts/product/e0/12/92/05b911c39cc232824633a0f89b269cdf.png', 146000, 'Chủ Nghĩa Khắc kỷ (Stoicism) là một trường phái tr', 'Lucius Annaeus Seneca'),
(44, 'Làm ít được nhiều', 'https://salt.tikicdn.com/cache/w1200/ts/product/cc/d3/49/48c7c44b373796bcbc790011859eb83d.jpg', 73000, 'Trong cuốn sách “Làm ít được nhiều”, tác giả Chin-', 'Ching-Nin-Chu'),
(45, 'Sách Khác Biệt Hay Là Chết (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/dc/36/31/329775cc52f494506f2c18f09df1130c.png', 93000, 'Xét thấy tầm quan trọng của việc tạo sự khác biệt,', 'Jack Trout, Steve Rivkin'),
(46, 'Sách: Đời Có Thật Nhạt Nhẽo Hay Do Ta Vô Vị', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/78/57/9717a495221c9c1dcb265fb8c7cad9e0.jpg', 102000, '“Cuộc đời đâu phải một ván bài, làm gì có kẻ thắng', 'Unknown'),
(47, 'Sách Đắc Nhân Tâm (Bìa Cứng) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/0d/43/38/1e7c50e1a1162a98948f2d529d3c6633.png', 119000, '', 'Dale Carnegie'),
(48, 'Cuộc Đời Mỗi Người Phụ Nữ Bắt Đầu Từ Sự Tự Tôn (Tặ', 'https://salt.tikicdn.com/cache/w1200/ts/product/05/8d/a7/abda8fc7d2f35935aa409d226d8d2e44.jpg', 138000, '\"Cuốn thánh kinh dành cho phái nữ bán chạy nhất Hà', 'Insook Nam'),
(49, 'Đúng Việc', 'https://salt.tikicdn.com/cache/w1200/ts/product/a7/9e/df/7cb7919accf80d92fdf976d49ca3faec.jpg', 50000, 'Đúng Việc - Một Góc Nhìn Về Câu Chuyện Khai Minh (', 'Unknown'),
(50, 'Sách Flow - Dòng Chảy', 'https://salt.tikicdn.com/cache/w1200/ts/product/23/54/b0/e4eee2d1711b26492b9b0bee5fc27121.jpg', 93000, 'Dành cho những ai muốn tối ưu khả năng tập trung đ', 'Mihaly Csikszentmihalyi'),
(51, 'Sách-Tâm lý học thành công tái bản 2020', 'https://salt.tikicdn.com/cache/w1200/ts/product/64/a7/9a/ef9ee52fdad71e3c19b4d7cdd61795a5.jpg', 119000, 'Tác giả Carol S Dweck', 'Carol S. Dweck'),
(52, 'Sách - Thao túng tâm lý - 1980BOOKS', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/58/93/c0770a8b8a2848da045459658443336e.png', 158000, 'THÔNG TIN XUẤT BẢN: Tác giả: Shannon Thomas, LCSW ', 'Shannon Thomas'),
(53, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổ', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/3b/e2/fc8ebacfec38cbe6d3254aec6b8d011b.jpg', 70000, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổ', 'Unknown'),
(54, 'Làm ít được nhiều', 'https://salt.tikicdn.com/cache/w1200/ts/product/cc/d3/49/48c7c44b373796bcbc790011859eb83d.jpg', 156000, 'Trong cuốn sách “Làm ít được nhiều”, tác giả Chin-', 'Ching-Nin-Chu'),
(55, 'Sách Thiết Kế Một Cuộc Đời Đáng Sống', 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/4e/50/c31976452e9d4b0b744ab4000a419ef2.png', 118000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Dave Evans, Bill Burnett'),
(56, 'Sách - Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/8a/82/5a9b243f933a3bacd15476616c84d1bd.jpg', 193000, 'GIỚI THIỆU TÁC PHẨM', 'Huỳnh Thái Ngọc'),
(57, 'Cuốn Sách Cực Hay về Tâm Lý Học: Tâm Lý Học - Nghệ', 'https://salt.tikicdn.com/cache/w1200/ts/product/38/7e/a4/6d80113dadbaea7c82a2ad4834051fbe.jpg', 88000, 'TÂM LÝ HỌC – NGHỆ THUẬT GIẢI MÃ HÀNH VI – CUỐN SÁC', 'Unknown'),
(58, 'Combo 2 cuốn Thích Nhật Hạnh: Không Diệt Không Sin', 'https://salt.tikicdn.com/cache/w1200/ts/product/ce/14/0a/35e14360550e9e11116cdf9884d60d7f.jpg', 134000, '1.Không diệt không sinh đừng sợ hãi', 'Unknown'),
(59, 'Cùng Bạn Trưởng Thành', 'https://salt.tikicdn.com/cache/w1200/ts/product/b6/51/ca/4e07cd4133dab7e85024d7dbf69daa69.jpg', 85000, 'Cùng Bạn Trưởng Thành', 'Ying Shu'),
(60, 'Sách: Thay Đổi Một Suy Nghĩ Thay Đổi cả Cuộc Đời', 'https://salt.tikicdn.com/cache/w1200/ts/product/bc/e4/62/c90d693131214d091e22652d8722c779.jpg', 160000, 'THAY ĐỔI MỘT SUY NGHĨ THAY ĐỔI MỘT CUỘC ĐỜI', 'Unknown'),
(61, 'Sách Atomic Habits - Thay Đổi Tí Hon, Hiệu Quả Bất', 'https://salt.tikicdn.com/cache/w1200/ts/product/c2/77/6d/fe48a96472d7ebe25c6be815f9357e4c.png', 197000, 'Atomic Habits - Thay Đổi Tí Hon, Hiệu Quả Bất Ngờ', 'Unknown'),
(62, 'Khi Bạn Đang Say Giấc, Ai Đó Đã Đạt Được Ước Mơ-Tặ', 'https://salt.tikicdn.com/cache/w1200/ts/product/a5/3d/ca/df5859d6aa77038edb17f0fbf733131e.jpg', 67000, 'Mood to Read trân trọng gửi tới độc giả một cuốn s', 'Kim Yoojin'),
(63, 'Suy Nghĩ Ngược - Cuốn Sách Cải Thiện Suy Nghĩ Giúp', 'https://salt.tikicdn.com/cache/w1200/ts/product/c0/cf/33/35bb0890bde4ea431ff1a4dd67fe3785.jpg', 98000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Shiratori Haruhiko'),
(64, 'Combo Bộ sách Chinh Phục Hạnh Phúc: 90 Ngày Thực H', 'https://salt.tikicdn.com/cache/w1200/ts/product/c7/f0/05/379a113f2f1ebeb75069eb028affa1bd.png', 90000, '', 'Unknown'),
(65, 'Sách Người Trong Muôn Nghề: Ngành IT có gì?', 'https://salt.tikicdn.com/cache/w1200/ts/product/06/4f/d9/d5af2fee4c5ec8c42179c83618175511.png', 75000, '\"Học công nghệ thông tin rồi đi lắp máy tính với c', 'Nhóm tác giả Spiderum'),
(66, 'Combo 7 Cuốn Tủ Sách Tinh Hoa : Nhà Giả Kim + Đắc ', 'https://salt.tikicdn.com/cache/w1200/ts/product/20/48/db/519bf4ba1852b2ec32b91f8e248d9742.jpg', 106000, 'Combo 7 Cuốn Tủ Sách Tinh Hoa : Nhà Giả Kim + Đắc ', 'Unknown'),
(67, 'Sách - Xé vài trang thanh xuân, đổi lấy một bản th', 'https://salt.tikicdn.com/cache/w1200/ts/product/0f/73/50/bf9237d6e89a6982250e1e9e2cd09a68.jpg', 190000, 'GIỚI THIỆU SÁCH:', 'Unknown'),
(68, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản', 'https://salt.tikicdn.com/cache/w1200/ts/product/63/8f/cf/555ac6f80db52502513ae753c7d33722.jpg', 91000, 'Sách - Những đòn tâm lý trong thuyết phục (Tái bản', 'Robert B. Cialdini'),
(69, 'Sách Tư Duy Ngược Dịch Chuyển Thế Giới', 'https://salt.tikicdn.com/cache/w1200/ts/product/3c/6d/75/45dbffab3a67de798a132d43e80b833e.jpg', 98000, 'TƯ DUY NGƯỢC DỊCH CHUYỂN THẾ GIỚI Adam Grant là tá', 'Adam Grant'),
(70, 'Nghĩ Đơn Giản, Sống Đơn Thuần (Tái Bản) - Tặng 1 B', 'https://salt.tikicdn.com/cache/w1200/ts/product/04/9e/eb/f1f11c795877a53d374c4b0706d19037.jpg', 109000, 'NGHĨ ĐƠN GIẢN, SỐNG ĐƠN THUẦN, HẠNH PHÚC NHIỀU HƠN', 'Tolly Burkan'),
(71, 'Sách Chữa Lành Nỗi Đau', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/17/e7/a0/2c1dc9fca4b289203a5852528142f3c4.jpg', 103000, 'Cuộc sống hàng ngày đầy rẫy lo toan, tất bật luôn ', 'Louise L.Hay'),
(72, 'Tôi Ước Mình Chưa Từng Được Sinh Ra -Tặng kèm 1 bo', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/e4/a5/86785ac0765f58eba8d79dd6de274f14.jpg', 149000, 'TÔI ƯỚC MÌNH CHƯA TỪNG ĐƯỢC SINH RA\" - Yim Minkyun', 'Yim Minkyung'),
(73, 'Đọc Sách Cộng Hưởng', 'https://salt.tikicdn.com/cache/w1200/ts/product/de/1f/e3/368d77eb57d9a8ae2da5577074d328a5.jpg', 104000, 'Đọc Sách Cộng Hưởng', 'Watanabe Yasuhiro'),
(74, 'Điềm Tĩnh Và Nóng Giận', 'https://salt.tikicdn.com/cache/w1200/ts/product/b3/d0/01/6b7202f2f92ad278157f36b80cb27e64.jpg', 110000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Tạ Quốc Kế'),
(75, 'Combo 2 Cuốn Sách Tâm Lý Học Nhập Môn: Toàn Thư Tâ', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/38/1c/c0bfa19eb1b44afb96be5a4082f8c99c.jpg', 164000, 'Combo sách Tâm Lý Học Nhập Môn', 'Motofumi Fukahori, Shozo Shibuya'),
(76, 'Sách - Giận (Tái Bản 2021)(Cuốn sách hay của Thiền', 'https://salt.tikicdn.com/cache/w1200/ts/product/da/8c/a5/9c61d93b6d2c6420169e0e1eb84104d1.jpg', 88000, 'Giới thiệu sách:', 'Unknown'),
(77, 'Rich habits, poor habits: Sự khác biệt giữa người ', 'https://salt.tikicdn.com/cache/w1200/ts/product/1f/f7/71/c961b16200cf31f18b58143e84875b9e.jpg', 112000, 'Sự khác biệt giữa người giàu và người nghèo.', 'Unknown'),
(78, 'Sách Muối - Sự Hồi Sinh Nơi Sâu Thẳm Vụn Vỡ - Skyb', 'https://salt.tikicdn.com/cache/w1200/ts/product/09/4d/44/bef41528505d44297b9ef12c4cf86502.jpg', 189000, 'Gooda tin rằng cuốn sách sẽ mang lại kiến thức thậ', 'Unknown'),
(79, 'Sách Chữa Lành Nỗi Đau', 'https://salt.tikicdn.com/cache/w1200/ts/product/f0/24/88/50935f05f7b51833de6d19a5a110647f.png', 111000, 'Cuộc sống hàng ngày đầy rẫy lo toan, tất bật luôn ', 'Louise L.Hay'),
(80, 'Sách Khác Biệt Hay Là Chết (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/dc/36/31/329775cc52f494506f2c18f09df1130c.png', 152000, 'Xét thấy tầm quan trọng của việc tạo sự khác biệt,', 'Jack Trout, Steve Rivkin'),
(81, 'Sách - Chữa Lành Đứa Trẻ Bên Trong Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/6f/68/696abb1a54d875e41f0316a572a722cf.jpg', 99000, '( Tặng Postcard bốn mùa ngẫu nhiên )', 'Unknown'),
(82, 'Sách Tư Duy Ngược Dịch Chuyển Thế Giới', 'https://salt.tikicdn.com/cache/w1200/ts/product/3c/6d/75/45dbffab3a67de798a132d43e80b833e.jpg', 148000, 'TƯ DUY NGƯỢC DỊCH CHUYỂN THẾ GIỚI Adam Grant là tá', 'Adam Grant'),
(83, 'Sách Làm Điều Quan Trọng', 'https://salt.tikicdn.com/cache/w1200/ts/product/e0/cc/df/f32e3b5789ac3c792ccc589459768afd.png', 176000, '', 'John Doerr'),
(84, 'Đàn Ông Sao Hỏa Đàn Bà Sao Kim', 'https://salt.tikicdn.com/cache/w1200/ts/product/9c/b3/8e/3ff8d70257c97a38d377eeaa564c7f37.jpg', 72000, '', 'John Gray'),
(85, 'Hôm Nay Phải Mở Mang (Một Tựa Sách Của Ngày Ngày V', 'https://salt.tikicdn.com/cache/w1200/ts/product/a2/56/95/7be009f2e04ae1812db444e7543e905b.jpg', 112000, 'Bạn có ý định trở thành một người viết nhưng còn n', 'Nguyễn Thùy Dung'),
(86, 'Sách - Thao túng tâm lý - 1980BOOKS', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/58/93/c0770a8b8a2848da045459658443336e.png', 113000, 'THÔNG TIN XUẤT BẢN: Tác giả: Shannon Thomas, LCSW ', 'Shannon Thomas'),
(87, 'Sách Tin Vào Chính Mình (Song Ngữ)', 'https://salt.tikicdn.com/cache/w1200/ts/product/2b/26/9c/8ac74a6871d79f330fa0fe10de08fcbf.jpg', 119000, 'Tác Giả: Louise L. Hay', 'Unknown'),
(88, 'Sách Sức Mạnh Của Sự Tử Tế (Tái bản năm 2022)', 'https://salt.tikicdn.com/cache/w1200/ts/product/dc/dc/a8/a36b3628760e3a1de11cf4bdf35da4c8.jpg', 92000, 'Trong kinh doanh, tử tế không có nghĩa là thiếu qu', 'Linda Kaplan Thaler & Robin Koval'),
(89, 'Sách Làm Điều Quan Trọng', 'https://salt.tikicdn.com/cache/w1200/ts/product/91/9a/d9/416cbcf8f7e8ccfa4611680c5ae04dd2.jpg', 64000, '', 'John Doerr'),
(90, 'Combo Bộ sách Chinh Phục Hạnh Phúc: 90 Ngày Thực H', 'https://salt.tikicdn.com/cache/w1200/ts/product/c7/f0/05/379a113f2f1ebeb75069eb028affa1bd.png', 54000, '', 'Unknown'),
(91, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh ', 'https://salt.tikicdn.com/cache/w1200/ts/product/e5/f8/d4/afc10d8c5ed72130ee3d20d60af571dd.jpg', 126000, 'Bộ Sách Hiểu Về Trái Tim Và Không Diệt Không Sinh ', 'Minh Niệm, Thích Nhất Hạnh'),
(92, 'Sách - Hành Trình Về Phương Đông (Bìa Mềm - Tái bả', 'https://salt.tikicdn.com/cache/w1200/ts/product/25/5a/d4/fc46af47ce7a83545a7f5c1344d260b7.jpg', 82000, 'Nhà xuất bản: NXB Thế Giới', 'Baird T. Spalding'),
(93, 'Sách Tâm Lý Dành Cho Người Nhạy Cảm', 'https://salt.tikicdn.com/cache/w1200/ts/product/ca/13/6a/0d61a976cb4530f64937cb4de4d17801.jpg', 67000, 'Việc chúng ta để tâm đến cảm xúc của chính mình và', 'Hiroko Mizushima'),
(94, '365 Ngày Liên Tục Tiến Về Phía Trước', 'https://salt.tikicdn.com/cache/w1200/ts/product/a2/d1/2d/78053463c31be1f0354ce5de6c53c50f.jpg', 174000, '', 'Unknown'),
(95, 'Combo 2 cuốn: Giận (Tái Bản 2021) + Không Diệt Khô', 'https://salt.tikicdn.com/cache/w1200/ts/product/98/06/c0/a97011ee03899cce0b59132e76e63f5b.jpg', 90000, '1, Giận - Tái bản 2021', 'Unknown'),
(96, 'Sách Đắc Nhân Tâm (Bìa Cứng) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/0d/43/38/1e7c50e1a1162a98948f2d529d3c6633.png', 155000, '', 'Dale Carnegie'),
(97, 'Sách Đường Mây Qua Xứ Tuyết - Nguyên Phong (Tái Bả', 'https://salt.tikicdn.com/cache/w1200/ts/product/8c/af/98/8f43688b52e427fe985ba1b9e5dadde6.png', 111000, 'Đường Mây Qua Xứ Tuyết (“The Way of the White Clou', 'Nguyên Phong'),
(98, 'Sách DevUP', 'https://salt.tikicdn.com/cache/w1200/ts/product/c4/3f/9a/87855a3685dda8def93d40a1d87968a1.png', 150000, 'Thế giới đang đối mặt với những thay đổi chưa từng', 'Unknown'),
(99, 'Mặt Dày Tâm Đen (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/e3/d7/fc/79a47ccdf47161da71ba769c8cca786d.jpg', 121000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Chin-Ning Chu'),
(100, 'Sách Bạn Thật Sự Là Ai?', 'https://salt.tikicdn.com/cache/w1200/ts/product/4c/9c/cc/01974135871e8c4b20d38beca81be00a.jpg', 173000, '“Bạn thật sự là ai?”', 'Brian R.Little'),
(101, 'Sách Người Thông Minh Giải Quyết Vấn Đề Như Thế Nà', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/46/6f/b5/0fc2fd13fb94a723ed47df7303f3a484.jpg', 176000, 'Trong cuộc sống, bất kỳ ai cũng phải đưa ra quyết ', 'Ken Watanabe'),
(102, 'Sách Minh Triết Trong Ăn Uống Của Phương Đông (Tái', 'https://salt.tikicdn.com/cache/w1200/ts/product/16/8f/ce/5131b0d2dab7e3a30e6fc3778852ce36.jpg', 102000, '', 'Ngô Đức Vượng'),
(103, 'Sách Làm Người Thú Vị', 'https://salt.tikicdn.com/cache/w1200/ts/product/21/a8/5b/060f0538669d23863ededc186ffcf430.jpg', 171000, 'Cuốn sách “Làm người thú vị” có một lời dẫn rất …t', 'Edward de Bono'),
(104, 'Range - Hiểu Sâu Biết Rộng Kiểu Gì Cũng Thắng', 'https://salt.tikicdn.com/cache/w1200/ts/product/ad/48/9b/c11adf848a00680a584dde0d1df79ea0.jpg', 155000, 'Trong cuốn sách Hiểu sâu, Biết rộng – Kiểu gì cũng', 'David Epstein'),
(105, 'Combo Tuyệt Phẩm Của Tác Giả Văn Tình : Lấy Tình T', 'https://salt.tikicdn.com/cache/w1200/ts/product/e7/82/e0/43696fed1abc47ac681b13370e9887ab.jpg', 72000, 'Combo Tuyệt Phẩm Của Tác Giả Văn Tình : Lấy Tình T', 'Vãn Tình'),
(106, 'Bí mật The secret ( Bìa cứng + Tặng kèm 1 bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/be/3e/10/f678eef4592656368cb6a09bf4099b29.jpg', 196000, 'Liệu Luật hấp dẫn có thực sự là một bí mật? Bạn có', 'Rhonda Byrne'),
(107, 'Bộ sách Song ngữ \"Chicken Soup for the Soul - chủ ', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/d4/a1/9245ea7ec4d51edc2af9b15942ed2868.jpg', 67000, 'Bộ sách Song ngữ \"Chicken Soup for the Soul - chủ ', 'Unknown'),
(108, 'Bộ 2 cuốn sách về tu thân dưỡng tính: Liễu Phàm Tứ', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/bf/e1/3dfebb93cf8cf4964f605c2ff2cc30c3.png', 152000, 'Là cuốn sách được lưu truyền rộng rãi trong dân gi', 'Osho, Liễu Phàm'),
(109, 'ĐỌC NHANH CẢM XÚC & SUY NGHĨ QUA NGÔN NGỮ CƠ THỂ (', 'https://salt.tikicdn.com/cache/w1200/ts/product/07/0a/25/f0ca2b82fbe41c13d1787fb5352973c4.jpg', 163000, 'WARREN BUFFETT (người giàu nhất thế giới 2008, ông', 'Unknown'),
(110, 'Sách: 1 Ngày Bằng 48 Giờ - Sổ tay Quản Lí Thời Gia', 'https://salt.tikicdn.com/cache/w1200/ts/product/77/43/c6/4a6f7f0d38eb4175180d4298843e7020.jpg', 89000, '', 'Instant Research Institude'),
(111, 'Combo 3 Cuốn Sách Luật Hấp Dẫn', 'https://salt.tikicdn.com/cache/w1200/ts/product/10/7a/31/e1506310b8c70920a613ac1c3d747067.jpg', 57000, 'Luật Hấp dẫn (Law of Attraction) là một trong nhữn', 'Prentice Mulford'),
(112, 'Sách Bí Mật Của May Mắn (Khổ Lớn) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/14/d4/53/bc53177b9dcbdae2392975853ffb968b.jpg', 90000, 'Bí Mật của May Mắn kể về một câu chuyện đầy cảm độ', 'Alex Rovira'),
(113, 'Combo 2 cuốn: Ikigai - Bí Mật Sống Trường Thọ Và H', 'https://salt.tikicdn.com/cache/w1200/ts/product/4b/32/5a/0432e87ae9d718767e81ecd644126178.png', 93000, '1. Ikigai - Bí Mật Sống Trường Thọ Và Hạnh Phúc Củ', 'Unknown'),
(114, 'Sức Mạnh Của Thói Quen (Tái Bản 2022)', 'https://salt.tikicdn.com/cache/w1200/ts/product/98/21/f5/d080bb9a27db3ab874a26a40664c20a4.jpg', 63000, 'Về cơ bản, người lớn và trẻ em không khác nhau là ', 'Charles Duhigg'),
(115, 'Sách PACE Books - Cạnh tranh trong thời đại AI (Co', 'https://salt.tikicdn.com/cache/w1200/ts/product/11/fe/37/72dc7dda7e192c82f52cec03a2e3bbc9.jpg', 84000, '“Chúng tôi đã cho rằng chúng ta sẽ có thời gian nh', 'Stefan H. Thomke'),
(116, 'Combo Bộ Sách Jim Rohn : Chìa Khóa Thành Công, Nhữ', 'https://salt.tikicdn.com/cache/w1200/ts/product/8f/d7/01/1eaf9ece33246c7438cff5b1f89c9494.jpeg', 177000, 'Combo Bộ Sách Jim Rohn : Chìa Khóa Thành Công, Nhữ', 'Jim Rohn'),
(117, 'Combo 3 Cuốn Sách: Cuộc Hành Hương Nội Tại - Chính', 'https://salt.tikicdn.com/cache/w1200/ts/product/e4/03/e8/058d06fca534c8953e597ff55fb818e8.jpg', 112000, 'Mỗi người đều trải qua những cuộc hành hương vào b', 'Osho'),
(118, 'Combo Triết Lý Cuộc Đời Sống / Kinh Doanh Robin Sh', 'https://salt.tikicdn.com/cache/w1200/ts/product/be/ef/12/f735e5473fb5033835560e21551d5009.jpg', 198000, 'Combo Triết Lý Cuộc Đời Sống / Kinh Doanh Robin Sh', 'Robin Sharma'),
(119, 'Làm thuê hay Khởi nghiệp', 'https://salt.tikicdn.com/cache/w1200/ts/product/4c/fd/97/704ff0461c44e35fe83d4e653bc23186.jpg', 72000, 'Cuốn sách ID: “Làm thuê hay Khởi nghiệp”', 'Đỗ Mạnh Hùng'),
(120, 'Combo 4 Cuốn Sách Của Tác Giả Nguyên Phong Minh Tr', 'https://salt.tikicdn.com/cache/w1200/ts/product/3e/4f/08/13f1c21b5c5aa9f88aa8ea74e0485109.jpg', 144000, 'Minh Triết Trong Đời Sống', 'Nguyên Phong'),
(121, 'Sách Thuật Thao Túng: Góc Tối Ẩn Sau Mỗi Câu Nói -', 'https://salt.tikicdn.com/cache/w1200/ts/product/b4/8a/a5/09fb2136cf8a44b11f58dab2b880661e.jpg', 108000, 'Gooda tin rằng cuốn sách sẽ mang lại kiến thức thậ', 'Unknown'),
(122, 'Phương Pháp Đọc Sách Hiệu Quả (Tái Bản 2023)', 'https://salt.tikicdn.com/cache/w1200/ts/product/3f/0e/1a/9ac2b49693352d76ff1b408705c17de7.jpg', 101000, 'Đọc sách như một nghệ thuật, ngay từ lần xuất bản ', 'Mortimer J.Adler'),
(123, 'Sách Ping - Vượt Ao Tù Ra Biển Lớn (Tái Bản 2020)', 'https://salt.tikicdn.com/cache/w1200/ts/product/a5/19/19/cdc75798e52e102a4d546ac723fb771a.png', 93000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'Stuart Avery Gold'),
(124, 'Sách Quyền Lực Đích Thực (Tái bản năm 2021) ( Tìm ', 'https://salt.tikicdn.com/cache/w1200/ts/product/13/00/80/46524f915dc16c050c7cb1134da35659.jpg', 198000, 'Quyền lực chỉ có ích khi đem lại hạnh phúc cho ta ', 'Unknown'),
(125, 'Sách Vượt Bẫy Cảm Xúc', 'https://salt.tikicdn.com/cache/w1200/ts/product/d4/16/96/fe48bd6036fcfecbaa9bcbcbb48f9a34.jpg', 197000, '“Vượt bẫy cảm xúc”', 'Unknown'),
(126, 'Combo sách hay mọi thời đại : Nhà giả kim+ Hành tr', 'https://salt.tikicdn.com/cache/w1200/ts/product/1d/ab/58/9ddf31668ce7a1d38324eccb5f0f874c.jpg', 192000, 'Được coi là những cuốn sách đi cùng năm tháng khôn', 'Nguyên Phong, Paulo Coelho'),
(127, 'Sách Dám Nghĩ Lớn (Bìa Cứng)', 'https://salt.tikicdn.com/cache/w1200/ts/product/71/4f/37/5f144fcc596012ea2ca0986c17fa09ca.PNG', 142000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật h', 'David J. Schwartz. Ph.D'),
(128, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải ', 'https://salt.tikicdn.com/cache/w1200/ts/product/8f/21/81/9293313e5920833d5fb86bc6e2710e4a.jpg', 196000, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải ', 'Richard Nicholls, Tống Mặc'),
(129, 'Combo Sách Nên Đọc Một Lần Trong Đời : Đừng Lựa Ch', 'https://salt.tikicdn.com/cache/w1200/ts/product/b6/d4/f2/83ac0a2292bbac75b46bf17ef04c798b.jpg', 75000, 'Combo Sách Nên Đọc Một Lần Trong Đời : Đừng Lựa Ch', 'Nhiều Tác Giả'),
(130, 'Sách Sức Mạnh Của Sự Trầm Lắng', 'https://salt.tikicdn.com/cache/w1200/ts/product/f8/9a/ec/e1e68f01ddc3cbb98b2667772735cfd7.jpg', 65000, 'Công ty phát hành: First News - Trí Việt', 'Dr. Joseph Murphy'),
(131, 'Sách: Làm Thế Nào Để Sống Một Đời Tốt Đẹp', 'https://salt.tikicdn.com/cache/w1200/ts/product/85/31/55/59f21ab29c71c93df39901580e50d807.jpg', 159000, 'Làm Thế Nào Để Sống Một Đời Tốt Đẹp', 'Jonathan'),
(132, 'Sách - Trí Tuệ Xúc Cảm 199K (Tái bản 2021)', 'https://salt.tikicdn.com/cache/w1200/ts/product/51/62/94/a722225975c303ccc9518420319b0d63.jpg', 135000, 'Trí Tuệ Xúc Cảm đã nằm trong danh sách bán chạy nh', 'Daniel Goleman'),
(133, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ A', 'https://salt.tikicdn.com/cache/w1200/ts/product/1f/d6/16/3eede4d99d1a0c59e2c3d1d9cf850bb3.jpg', 175000, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ A', 'Dale Carnegie, TS. David J. Lieberman, Rosie Nguyễ'),
(134, 'Bộ sách Thay thói quen – Đổi vận mệnh', 'https://salt.tikicdn.com/cache/w1200/ts/product/89/0e/39/941b65221f85ea689f0966ff9953cccc.jpg', 79000, '“Thói quen tạo nên tính cách Tính cách tạo nên số ', 'Alan Phan'),
(135, 'Cuộc cách mạng rau sạch', 'https://salt.tikicdn.com/cache/w1200/ts/product/b8/6f/0a/3c60e12e8a81f1f799a3ea4310731923.jpg', 131000, 'Cuộc cách mạng rau sạch', 'Toshimichi Yoshida'),
(136, 'Ai Rồi Cũng Qua, Để Không Hối Hận (Sách ID Hướng N', 'https://salt.tikicdn.com/cache/w1200/ts/product/53/22/f7/6ccbfe3c59426c350a55e5e6ea7d86a4.png', 90000, '\"Ai rồi cũng qua để không hối hận\" là Cuốn sách ID', 'Đỗ Mạnh Hùng'),
(137, 'The Book Of Leadership - Dẫn Dắt Bản Thân, Đội Nhó', 'https://salt.tikicdn.com/cache/w1200/ts/product/8e/74/6a/27acae3b25694b623c96623b6738de86.jpg', 129000, '“Phải biết cách tự lãnh đạo bản thân mình trước, n', 'Anthony Gell'),
(138, 'Sách: Nghệ Thuật Tinh Tế Của Việc \"Đếch\" Quan Tâm', 'https://salt.tikicdn.com/cache/w1200/ts/product/e4/9b/b7/a8b3f9dfdd6a8eef63f20b7646c976d8.jpg', 151000, 'Nghệ Thuật Tinh Tế Của Việc \"Đếch\" Quan Tâm', 'Unknown'),
(139, 'Sách - Bách Khoa Thư Về Nghệ Thuật ( Bìa cứng- Tặn', 'https://salt.tikicdn.com/cache/w1200/ts/product/ac/9f/b0/6fa1224c3fcdeb8f0adf0a948336259f.jpg', 157000, 'Hãy cùng Bách khoa thư về Nghệ thuật mở rộng tầm m', 'Unknown'),
(140, 'Bộ Sách Tự Học & Xử Thế (2 Cuốn)', 'https://salt.tikicdn.com/cache/w1200/ts/product/2d/0f/34/80e171adabf97c628f9d1f99da86a044.jpg', 73000, 'Bộ sách trình bày những nguyên tắc căn bản để tự đ', 'Thu Giang Nguyễn Duy Cần'),
(141, 'Sách - TNT: Bí Quyết Thuyết Trình Từ Nhà Vô Địch (', 'https://salt.tikicdn.com/cache/w1200/ts/product/8b/f3/2e/a24d25ed013256ac34851e6c5184d376.jpg', 182000, 'Dale Carnegie, tác giả sách Đắc Nhân Tâm nổi tiếng', 'FUSUSU, Nguyễn Chu Nam Phương'),
(142, 'Combo 999 Lá Thư Gửi Cho Chính Mình - Tặng kèm boo', 'https://salt.tikicdn.com/cache/w1200/ts/product/2e/c6/a6/a555919afeb01514cfe054ed0167bb40.jpg', 102000, '“999 lá thư gửi cho chính mình” là một tác phẩm đặ', 'Miêu Công Tử'),
(143, 'Sách kỹ năng song ngữ - Sẵn sàng để đến trường', 'https://salt.tikicdn.com/cache/w1200/ts/product/67/08/1c/bd4a2bb3a6c9df7aecad0f8f3cd0809e.jpg', 104000, 'Nhưng rút cục đến trường có đáng sợ thế không? Tớ ', 'Jennifer Moore - Mallinos, Gustavo Mazali'),
(144, 'Sách - Grit vững tâm bền chí ắt thành công', 'https://salt.tikicdn.com/cache/w1200/ts/product/24/2d/99/56b7ee2ed5d667217d09277ec50d1882.jpg', 95000, 'Tên Nhà Cung Cấp Alpha Books', 'Angela Duckworth'),
(145, 'COMBO Sách Vị Tu Sĩ Bán Chiếc Ferrari + Thuật Lãnh', 'https://salt.tikicdn.com/cache/w1200/ts/product/03/2c/a3/012789d13f1dce879d4bd6095380a450.jpg', 124000, 'Vị tu sĩ bán chiếc Ferrari Cuốn sách cho những ngư', 'Robin Sharma'),
(146, 'Bộ Sách Hay: Thay Đổi Bản Thân Làm Chủ Cuộc Sống (', 'https://salt.tikicdn.com/cache/w1200/ts/product/e0/e7/c3/d00d32a932f69eb8dfd538197b041407.png', 60000, 'Trước khi muốn làm chủ cuộc sống thì đầu tiên hãy ', 'Damon Zahariades'),
(147, 'Combo 2 Cuốn Sách Kĩ Năng Sống: Chiến Thắng Con Qu', 'https://salt.tikicdn.com/cache/w1200/ts/product/45/75/8e/2b06ab9d481f24aa13ef5021246c97af.jpg', 74000, 'Combo 2 Cuốn Sách Kĩ Năng Sống: Chiến Thắng Con Qu', 'Napoleon Hill, William B. Irvine');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'admin', '123', 'Duc', 'Kien'),
(2, 'test', '123', 'Khoi', 'Nguyen');

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
  ADD KEY `fk_cart_product` (`product_id`),
  ADD KEY `fk_cart_user` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_cart_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

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
