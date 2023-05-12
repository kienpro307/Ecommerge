-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 02:13 PM
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
(212, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/3b/e2/fc8ebacfec38cbe6d3254aec6b8d011b.jpg', 83000, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'Unknown', 4),
(213, 'Sách Atomic Habits - Thay Đổi Tí Hon, Hiệu Quả Bất Ngờ ( Những Thay Đổi Nhỏ Tạo Nên Thành Công Lớn/ Tặng kèm Bookmark)', 'https://salt.tikicdn.com/cache/w1200/ts/product/e2/32/b3/085ee546b06b792e847edd88b02b8f15.jpg', 73000, 'Atomic Habits - Thay Đổi Tí Hon, Hiệu Quả Bất Ngờ', 'Unknown', 7),
(214, 'Sách Tâm Lý Dành Cho Người Nhạy Cảm', 'https://salt.tikicdn.com/cache/w1200/ts/product/ca/13/6a/0d61a976cb4530f64937cb4de4d17801.jpg', 163000, 'Việc chúng ta để tâm đến cảm xúc của chính mình và ý kiến của người khác là điều rất tốt, bởi nó sẽ giúp chúng ta gắn kết bản thân với thế giới xung quanh. Song nếu tính nhạy cảm quá cao, chúng ta sẽ rất dễ tức giận, buồn rầu, sợ hãi và tổn thương, gây ảnh hưởng không nhỏ tới chất lượng cuộc sống, các mối quan hệ cũng như khiến chúng ta không đủ tự tin để phát huy hết năng lực của bản thân.', 'Hiroko Mizushima', 6),
(215, 'Sách - Chữa Lành Đứa Trẻ Bên Trong Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/6f/68/696abb1a54d875e41f0316a572a722cf.jpg', 149000, '( Tặng Postcard bốn mùa ngẫu nhiên )', 'Unknown', 8),
(216, 'Sách Tư Duy Ngược Dịch Chuyển Thế Giới', 'https://salt.tikicdn.com/cache/w1200/ts/product/3c/6d/75/45dbffab3a67de798a132d43e80b833e.jpg', 193000, 'TƯ DUY NGƯỢC DỊCH CHUYỂN THẾ GIỚI Adam Grant là tác giả cuốn Give and take (tựa tiếng Việt là “Cho và nhận), tác phẩm được The New York Times bình chọn là sách bán chạy nhất. Trong Give and take, Adam đã chỉ cho mọi người cách thức để bảo vệ thành công những ý tưởng mới, cũng như phương pháp để các nhà lãnh đạo có thể khuyến khích sự đa dạng và khác biệt trong suy nghĩ và hành động của tổ chức mình.', 'Adam Grant', 7),
(217, 'Sách Thiết Kế Một Cuộc Đời Đáng Sống', 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/4e/50/c31976452e9d4b0b744ab4000a419ef2.png', 109000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 'Dave Evans, Bill Burnett', 6),
(218, 'Sách - Thao túng tâm lý - 1980BOOKS', 'https://salt.tikicdn.com/cache/w1200/ts/product/a9/58/93/c0770a8b8a2848da045459658443336e.png', 163000, 'THÔNG TIN XUẤT BẢN: Tác giả: Shannon Thomas, LCSW Dịch giả: Trương Tuấn Giá bìa: 169,000đ Kích thước khổ:13x20,5 Số trang: 328 Mã EAN: 8936066692298 NXB liên kết:NXB Dân Trí Sách do Công ty TNHH Văn hóa và Truyền thông 1980 BOOKS ấn hành quý 1 năm 2022. -- THAO TÚNG TÂM LÝ Trong cuốn “Thao túng tâm lý”, tác giả Shannon Thomas giới thiệu đến độc giả những hiểu biết liên quan đến thao túng tâm lý và lạm dụng tiềm ẩn. “Thao túng tâm lý” là một dạng của lạm dụng tâm lý. Cũng giống như lạm dụng tâm lý, thao túng tâm lý có thể xuất hiện ở bất kỳ môi trường nào, từ bất cứ đối tượng độc hại nào. Đó có thể là bố mẹ ruột, anh chị em ruột, người yêu, vợ hoặc chồng, sếp hay đồng nghiệp… của bạn. Với tính chất bí hiểm, âm thầm gây hại, thao túng, lạm dụng tâm lý làm tổn thương cảm xúc, lòng tự trọng, cuộc sống của mỗi nạn nhân. Những người từng bị lạm dụng tâm lý thường không thể miêu tả rõ ràng điều gì đã xảy ra với mình. Trong nhiều trường hợp, nạn nhân bị thao túng đến mức tự hỏi có phải họ là người có lỗi, thậm chí họ có phải là người độc hại trong mối quan hệ đó. Hành vi của (những) kẻ lạm dụng giống như một trò chơi bí ẩn, tệ hại và lặp đi lặp lại, do một cá nhân hoặc một nhóm người thực hiện với nạn nhân. Những hành vi này được \"làm không thật\" tài tình đến mức hành vi độc ác của họ diễn ra thường xuyên, nhưng không bị phát hiện. Shannon Thomas giới thiệu những kiến thức cơ bản về đặc điểm, các dạng của lạm dụng tâm lý nói chung, thao túng tâm lý nói riêng, và cung cấp cho người đọc hành trình chữa lành gồm 6 giai đoạn: Giai đoạn 1: Tuyệt vọng Giai đoạn 2: Nhận diện Giai đoạn 3: Thức tỉnh Giai đoạn 4: Những ranh giới Giai đoạn 5: Phục hồi Giai đoạn 6: Duy trì Bằng những kiến thức chuyên sâu và sự thấu hiểu, tác giả sẽ giúp bạn từng bước vượt qua những rắc rối của thao túng tâm lý, lạm dụng tiểm ẩn để có cuộc sống ý nghĩa và lành mạnh hơn. -Thông tin tác giả: Shannon Thomas, là một nhà \"quan sát\" công tác xã hội y tế được cấp phép hành nghề, và là chủ phòng tư vấn/chuyên gia tư vấn tâm lý chính của phòng tư vấn Southlake Christian (SCC) ở Southlake, bang Texas. SCC từng nhận giải thưởng “Phòng thực hành tư vấn tâm lý tốt nhất” năm 2016 của Living Magazine khu vực Hạt Northeast Tarrant tại Dallas-Fort Worth. Thomas là Trợ giảng chuyên ngành và là thành viên Ủy ban tư vấn của Khoa Công tác xã hội – Trường Đại học Texas Christian. Cách tiếp cận khi tư vấn tâm lý của cô ấy xuất phát từ góc nhìn của một nhà tư vấn tâm lý được cấp phép hành nghề đồng thời từ góc nhìn của một người đi trước, một người sống sót sau khi bị lạm dụng tâm lý.', 'Shannon Thomas', 6),
(219, 'Sách: Thay Đổi Một Suy Nghĩ Thay Đổi cả Cuộc Đời', 'https://salt.tikicdn.com/cache/w1200/ts/product/bc/e4/62/c90d693131214d091e22652d8722c779.jpg', 198000, 'THAY ĐỔI MỘT SUY NGHĨ THAY ĐỔI MỘT CUỘC ĐỜI', 'Unknown', 8),
(220, 'Tôi Ước Mình Chưa Từng Được Sinh Ra -Tặng kèm 1 bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/d3/e4/a5/86785ac0765f58eba8d79dd6de274f14.jpg', 172000, 'TÔI ƯỚC MÌNH CHƯA TỪNG ĐƯỢC SINH RA\" - Yim Minkyung ----- \"T.ự T.ử\" gần đây đã trở thành một cùm từ được nhắc đến thường xuyên hơn bao giờ hết. Thật đau lòng khi nghe một ai đó lựa chọn rời bỏ thế gian này, nhưng chính chúng ta không biết tại sao họ lại đưa ra quyết định như vậy, cũng không biết họ đã trải qua những đấu tranh tâm lý đến nhường nào. Liệu chúng ta có thực sự hiểu về t.ự t.ử?', 'Yim Minkyung', 4),
(221, 'Sách: Không Phải Thiếu May Mắn, Chỉ Là Chưa Cố Gắng', 'https://salt.tikicdn.com/cache/w1200/ts/product/a0/8c/71/481038904b9a5fb977d1b0428cf38fce.jpg', 138000, 'This is default book description, it says books are made from wood and has content, that s it!', '2.1/2 Bạn Tốt', 6),
(222, 'Combo The Secret - Bí Mật Luật Hấp Dẫn + The Power - Sức Mạnh (Bộ 2 Cuốn) _TM', 'https://salt.tikicdn.com/cache/w1200/ts/product/d5/d1/b6/1431a4aefe7205ebb38160f0b7b61941.jpg', 104000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 'Rhonda Byrne', 6),
(223, 'Rich habits, poor habits: Sự khác biệt giữa người giàu và người nghèo_ Sách_ Bizbooks_ Sách phát triển bản thân_ Sách hay mỗi ngày', 'https://salt.tikicdn.com/cache/w1200/ts/product/1f/f7/71/c961b16200cf31f18b58143e84875b9e.jpg', 122000, 'Sự khác biệt giữa người giàu và người nghèo.', 'Unknown', 7),
(224, 'Combo Sách Nên Đọc Một Lần Trong Đời : Đừng Lựa Chọn An Nhàn Khi Còn Trẻ + Cân Bằng Cảm Xúc + Nóng Giận Là Bản Năng + Nhà Giả Kim + Sống Thực Tế Giữa Đời Thực Dụng + Dám Bị Ghét + Tuổi Trẻ Đáng Giá Bao Nhiêu / BooksetMK', 'https://salt.tikicdn.com/cache/w1200/ts/product/b6/d4/f2/83ac0a2292bbac75b46bf17ef04c798b.jpg', 115000, 'Combo Sách Nên Đọc Một Lần Trong Đời : Đừng Lựa Chọn An Nhàn Khi Còn Trẻ + Cân Bằng Cảm Xúc + Nóng Giận Là Bản Năng + Nhà Giả Kim + Sống Thực Tế Giữa Đời Thực Dụng + Dám Bị Ghét + Tuổi Trẻ Đáng Giá Bao Nhiêu / BooksetMK (Top Sách Bán Chạy Nhất Tháng)', 'Nhiều Tác Giả', 8),
(225, 'Sách Bạn Thật Sự Là Ai?', 'https://salt.tikicdn.com/cache/w1200/ts/product/4c/9c/cc/01974135871e8c4b20d38beca81be00a.jpg', 135000, '“Bạn thật sự là ai?”', 'Brian R.Little', 6),
(226, 'Sách DevUP', 'https://salt.tikicdn.com/cache/w1200/ts/product/c4/3f/9a/87855a3685dda8def93d40a1d87968a1.png', 87000, 'Thế giới đang đối mặt với những thay đổi chưa từng có. Những gì chúng ta chắc chắn vào 5 năm, hoặc 2 năm trước, giờ đây đang bị thử thách. Từ “cơn bão” của Trí tuệ nhân tạo, những chức năng, ứng dụng mới của các ngôn ngữ lập trình cho đến sự xuất hiện của đa dạng nền tảng công nghệ.', 'Unknown', 8),
(227, 'Thông Điệp Của Nước (Tái Bản 2020)', 'https://salt.tikicdn.com/cache/w1200/ts/product/8a/82/4b/b76f9352f0475274a9e979088e4f84f2.jpg', 133000, 'Thông Điệp Của Nước (Tái Bản 2020)', 'Masaru Emoto', 8),
(228, 'Sách THE MOUNTAIN IS YOU - Nếu Không Giải Quyết Vấn Đề, Bạn Sẽ Trở Thành Vấn Đề - BẢN QUYỀN', 'https://salt.tikicdn.com/cache/w1200/ts/product/e5/b2/ae/5f00f99d3c3a4a610ee50ced11380a20.jpg', 51000, 'THE MOUNTAIN IS YOU - Nếu Không Giải Quyết Vấn Đề, Bạn Sẽ Trở Thành Vấn Đề', 'Unknown', 8),
(229, 'Sách - Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/8a/82/5a9b243f933a3bacd15476616c84d1bd.jpg', 65000, 'GIỚI THIỆU TÁC PHẨM', 'Huỳnh Thái Ngọc', 6),
(230, 'Combo 7 Cuốn Tủ Sách Tinh Hoa : Nhà Giả Kim + Đắc Nhân Tâm + Đọc Vị Bất Kỳ Ai + Khéo Ăn Nói Sẽ Có Được Thiên Hạ + Cư Xử Như Đàn Bà Suy Nghĩ Như Đàn Ông + Tuổi Trẻ Đáng Giá Bao Nhiêu + Quẳng Gánh Lo Đi Và Vui Sống / BooksetMK', 'https://salt.tikicdn.com/cache/w1200/ts/product/20/48/db/519bf4ba1852b2ec32b91f8e248d9742.jpg', 167000, 'Combo 7 Cuốn Tủ Sách Tinh Hoa : Nhà Giả Kim + Đắc Nhân Tâm + Đọc Vị Bất Kỳ Ai + Khéo Ăn Nói Sẽ Có Được Thiên Hạ + Cư Xử Như Đàn Bà Suy Nghĩ Như Đàn Ông + Tuổi Trẻ Đáng Giá Bao Nhiêu + Quẳng Gánh Lo Đi Và Vui Sống / BooksetMK', 'Unknown', 4),
(231, 'Sách Muối - Sự Hồi Sinh Nơi Sâu Thẳm Vụn Vỡ - Skybooks - BẢN QUYỀN', 'https://salt.tikicdn.com/cache/w1200/ts/product/09/4d/44/bef41528505d44297b9ef12c4cf86502.jpg', 140000, 'Gooda tin rằng cuốn sách sẽ mang lại kiến thức thật bổ ích cùng những trải nghiệm thật tuyệt vời, hy vọng đây sẽ là 1 cuốn sách quý trên kệ sách của bạn!', 'Unknown', 7),
(232, 'Sách: Giao Tiếp Chuyên Nghiệp Để Bán Hàng Thành Công (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/ea/28/aa/defa2be520a2264361365901ee386822.jpg', 110000, 'Giao Tiếp Chuyên Nghiệp Để Bán Hàng Thành Công (Tái Bản)', 'Mạc Hạo Kiệt', 6),
(233, 'Sách Thức Tỉnh Và Thay Đổi Cuộc Đời', 'https://salt.tikicdn.com/cache/w1200/ts/product/1c/b9/57/ba9fe490b5c440b0c57d955a840ff460.jpg', 85000, 'Trong chúng ta ai cũng biết và nhận thức rằng thay đổi là việc cần phải làm, thay đổi bây giờ không chỉ là chìa khóa của thành công mà thậm chí là chìa khóa để thích nghi và tồn tại. Nhưng đâu phải dễ dàng để tự nhiên một con người có thể nhận ra những yếu điểm, những điều cần thiết mà bản thân mình phải thay đổi.', 'Duncan Bannatyne', 8),
(234, 'Sách-Tâm lý học thành công tái bản 2020', 'https://salt.tikicdn.com/cache/w1200/ts/product/db/ba/46/0fc390e6b5972f4f9abda929cd4572d8.png', 59000, 'Tác giả Carol S Dweck', 'Carol S. Dweck', 4),
(235, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'https://salt.tikicdn.com/cache/w1200/ts/product/80/3b/e2/fc8ebacfec38cbe6d3254aec6b8d011b.jpg', 91000, 'Combo Sách Kỹ Năng Sống Hay Dành Cho Tuổi Trẻ: Tuổi Trẻ Đáng Giá Bao Nhiêu + Đừng Lựa Chọn An Nhàn Khi Còn Trẻ - (Tặng Kèm Bookmark Thiết Kế)', 'Unknown', 7),
(236, 'Sách Bí Mật Của May Mắn (Khổ Lớn) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/14/d4/53/bc53177b9dcbdae2392975853ffb968b.jpg', 52000, 'Bí Mật của May Mắn kể về một câu chuyện đầy cảm động giữa hai ông già, Max và Jim, khi họ tình cờ gặp nhau ở công viên trung tâm sau 50 năm xa cách. Trong khi Max đã gặt hái được những thành công và hạnh phúc tràn đầy trong cuộc đời mình từ sự khởi đầu vô cùng khó khăn, từ hai bàn tay trắng, thì Jim lại không thể làm được điều đó, dù rằng sự khởi đầu của ông đã được cuộc sống ưu đãi rất nhiều. Bí quyết thành công và may mắn của Max nằm ở câu chuyện kỳ diệu từ người ông đã kể lại cho Max từ nhiều năm trước. Câu chuyện đó thật kỳ bí và có sắc thái gợi nhớ đến những nhà giả kim, hiền triết xa xưa, chỉ ra bí mật, cách nắm bắt các cơ hội và gặt hái thành công trong cuộc sống. Trong đoạn kết đầy bất ngờ, Good Luck tạo ra một chu trình khép kín, mang lại sự khích lệ, những hướng dẫn cách thực hiện và trọn vẹn với một câu chuyện đầy cuốn hút. Đây thực sự là một món quà đặc biệt, thú vị và đầy cảm hứng mà Alex Rovira và Fernando Trías de Bes đã mang đến cho chúng ta.', 'Alex Rovira', 5),
(237, 'Hiệu Ứng Đèn Gas', 'https://salt.tikicdn.com/cache/w1200/ts/product/f0/54/0e/3fb19db4d5aad40da85ae95a70cc07e4.jpg', 132000, 'Hiệu Ứng Đèn Gas', 'Dr. Robin Stern', 8),
(238, 'Sách Người Thông Minh Giải Quyết Vấn Đề Như Thế Nào (Tái Bản 2020)', 'https://salt.tikicdn.com/cache/w1200/media/catalog/producttmp/46/6f/b5/0fc2fd13fb94a723ed47df7303f3a484.jpg', 85000, 'Trong cuộc sống, bất kỳ ai cũng phải đưa ra quyết định, dù nó nhỏ xíu hay nó to đùng, dù nó là chuyện cá nhân hay vấn đề của tập thể. Người Thông Minh Giải Quyết Vấn Đề Như Thế Nào? đưa ra những ví dụ cơ bản trong việc sử dụng phương pháp giải quyết vấn đề đầy hiệu quả và khoa học.', 'Ken Watanabe', 5),
(239, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ Ai + Quẳng Gánh Lo Đi Và Vui Sống + Tuổi Trẻ Đáng Giá Bao Nhiêu? + Nhà Giả Kim (Top 5 Cuốn Sách Kỹ Năng Sống, Tư Duy Và Làm Việc Bán Chạy Nhất Thế Giới - Tặng Kèm Postcard Green Life)', 'https://salt.tikicdn.com/cache/w1200/ts/product/1f/d6/16/3eede4d99d1a0c59e2c3d1d9cf850bb3.jpg', 65000, 'Combo Sách Kỹ Năng: Đắc Nhân Tâm + Đọc Vị Bất Kỳ Ai + Quẳng Gánh Lo Đi Và Vui Sống + Tuổi Trẻ Đáng Giá Bao Nhiêu? + Nhà Giả Kim (Top 5 Cuốn Sách Kỹ Năng Sống, Tư Duy Và Làm Việc Bán Chạy Nhất Thế Giới - Tặng Kèm Postcard Green Life)', 'Dale Carnegie, TS. David J. Lieberman, Rosie Nguyễn, Paulo Coelho', 4),
(240, 'Combo 2 cuốn Thích Nhật Hạnh: Không Diệt Không Sinh Đừng Sợ Hãi + Thiền Sư Và Em Bé 5 Tuổi(Sách hay về trị liệu khổ đau và chữa lành vết thương)', 'https://salt.tikicdn.com/cache/w1200/ts/product/ce/14/0a/35e14360550e9e11116cdf9884d60d7f.jpg', 118000, '1.Không diệt không sinh đừng sợ hãi', 'Unknown', 4),
(241, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không Phải Sói Nhưng Cũng Đừng Là Cừu (Bộ 2 Cuốn)', 'https://salt.tikicdn.com/cache/w1200/ts/product/24/fe/6e/ddc4a0f2e5380c75860edb04444be58a.jpg', 79000, 'Combo Sách Hành Tinh Của Một Kẻ Nghĩ Nhiều + Không Phải Sói Nhưng Cũng Đừng Là Cừu (Bộ 2 Cuốn)', 'Unknown', 4),
(242, 'Luật Hấp Dẫn - Quy Luật Về Sức Mạnh Của Linh Hồn Và Năng Lượng Chữa Lành Cơ Thể Từ Bên Trong', 'https://salt.tikicdn.com/cache/w1200/ts/product/16/7f/b4/3acce05b023d7b7d2ede09ffeed93077.jpg', 98000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 'Prentice Mulford', 4),
(243, 'Sách Đắc Nhân Tâm (Bìa Cứng) (Tái Bản)', 'https://salt.tikicdn.com/cache/w1200/ts/product/0d/43/38/1e7c50e1a1162a98948f2d529d3c6633.png', 116000, 'This is default book description, it says books are made from wood and has content, that s it!', 'Dale Carnegie', 4),
(244, 'Nghĩ Đơn Giản, Sống Đơn Thuần (Tái Bản) - Tặng 1 Bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/04/9e/eb/f1f11c795877a53d374c4b0706d19037.jpg', 109000, 'NGHĨ ĐƠN GIẢN, SỐNG ĐƠN THUẦN, HẠNH PHÚC NHIỀU HƠN', 'Tolly Burkan', 8),
(245, 'Khi Bạn Đang Say Giấc, Ai Đó Đã Đạt Được Ước Mơ-Tặng kèm 01 bookmark', 'https://salt.tikicdn.com/cache/w1200/ts/product/a5/3d/ca/df5859d6aa77038edb17f0fbf733131e.jpg', 158000, 'Mood to Read trân trọng gửi tới độc giả một cuốn sách đáng kinh ngạc của tác giả Kim Yoojin – Người truyền cảm hứng cho làn sóng thức dậy vào lúc bình minh ở Hàn Quốc thông qua kênh Youtube của mình, cô là luật sư có giấy phép tại hai bang của Mỹ là New York và Georgia. Kim Yoojin nhận bằng cử nhân tại Đại học bang Michigan và tốt nghiệp Đại học Luật Emory. Hiện tại cô đang làm luật sư nội bộ cho một công ty tại Hàn Quốc.', 'Kim Yoojin', 5),
(246, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải Có : Cân Bằng Cảm Xúc, Cả Lúc Bão Giông + Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh ( Tặng Kèm Bookmark Green Life)', 'https://salt.tikicdn.com/cache/w1200/ts/product/8f/21/81/9293313e5920833d5fb86bc6e2710e4a.jpg', 167000, 'Combo Sách Tư Duy - Kỹ Năng Sống Ai Cũng Cần Phải Có : Cân Bằng Cảm Xúc, Cả Lúc Bão Giông + Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh ( Tặng Kèm Bookmark Green Life)', 'Richard Nicholls, Tống Mặc', 4),
(247, 'Kỹ Năng Thuyết Phục Trong Giao Tiếp', 'https://salt.tikicdn.com/cache/w1200/ts/product/c4/40/a8/5fcfd21ea381ea0cc6754f77245f4d9b.png', 86000, 'TÁC GIẢ: Kaoru Tachibana', 'Unknown', 7),
(248, 'Sách: Đời Có Thật Nhạt Nhẽo Hay Do Ta Vô Vị', 'https://salt.tikicdn.com/cache/w1200/ts/product/0b/78/57/9717a495221c9c1dcb265fb8c7cad9e0.jpg', 141000, '“Cuộc đời đâu phải một ván bài, làm gì có kẻ thắng người thua, chỉ là mỗi người chúng ta chọn đi một con đường không giống nhau.”', 'Unknown', 6),
(249, 'Sách Thiết Kế Một Cuộc Đời Đáng Sống', 'https://salt.tikicdn.com/cache/w1200/ts/product/f2/4e/50/c31976452e9d4b0b744ab4000a419ef2.png', 145000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 'Dave Evans, Bill Burnett', 6),
(250, 'Sách Làm Điều Quan Trọng', 'https://salt.tikicdn.com/cache/w1200/ts/product/91/9a/d9/416cbcf8f7e8ccfa4611680c5ae04dd2.jpg', 79000, 'This is default book description, it says books are made from wood and has content, that s it!', 'John Doerr', 6),
(251, 'Suy Nghĩ Ngược - Cuốn Sách Cải Thiện Suy Nghĩ Giúp Bạn Sống Chủ Động, Tích Cực Và Thành Công', 'https://salt.tikicdn.com/cache/w1200/ts/product/c0/cf/33/35bb0890bde4ea431ff1a4dd67fe3785.jpg', 50000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 'Shiratori Haruhiko', 8),
(252, 'Cà Phê Cùng Tony (Tái Bản 2017)', 'https://salt.tikicdn.com/cache/w1200/ts/product/e4/c6/e1/0de85aae6089eec7055eeb3e0239d312.jpg', 133000, 'Cà Phê Cùng Tony (Tái Bản 2017)', 'Tony Buổi Sáng', 6),
(253, 'Làm sạch tâm hồn - Các bài tập thiền', 'https://salt.tikicdn.com/cache/w1200/ts/product/e0/c1/48/f657027db177f2c205bc46fb728caa63.jpg', 134000, '“Làm sạch tâm hồn - các bài tập thiền” của tác giả Nishi Katsuzo do Tiến sĩ Trương Thị Thảo dịch, đây là những nội dung và các phương pháp giảng dạy đã được thử thách qua thời gian. Đây là những nghiên cứu kiệt xuất trong nền y học tự nhiên của tất cả các dân tộc từ xưa cho tới nay. Đây là những bí quyết đã được khôi phục lại với những giải thích của các chuyên gia thời nay cùng những lời khuyên hết sức cấp thiết của những nhà chuyên môn vĩ đại.', 'Nishi Katsuzo', 8),
(254, 'Sách Tôi Có Triệu Chứng Cứ Yêu Em - Skybooks', 'https://salt.tikicdn.com/cache/w1200/ts/product/2e/40/2c/08f1f74865a6e617beff0c7ecabb0084.jpg', 70000, 'Gooda tin rằng cuốn sách sẽ mang lại kiến thức thật bổ ích cùng những trải nghiệm thật tuyệt vời, hy vọng đây sẽ là 1 cuốn sách quý trên kệ sách của bạn!', 'Unknown', 4),
(255, 'Sách - Dấu Chân Trên Cát - First News', 'https://salt.tikicdn.com/cache/w1200/ts/product/ad/bc/f5/ac264bf7f5448a0ee6cc312c12335b84.jpg', 148000, 'Tác Giả: Nguyên Phong', 'Unknown', 7),
(256, 'Sách Khi Mọi Điểm Tựa Đều Mất', 'https://salt.tikicdn.com/cache/w1200/ts/product/ea/e5/f7/fcd0f2f174130aead1d5a96a121ff2eb.jpg', 98000, 'Tác Giả: Nhiều tác giả', 'Unknown', 6),
(257, 'Đức Phật Và Kẻ Nổi Loạn (Tĩnh Tại Khi Suy Nghĩ, Táo Bạo Khi Hành Động)', 'https://salt.tikicdn.com/cache/w1200/ts/product/c1/86/f9/8e614705bf581532ad641de208b2f486.jpg', 114000, 'Đức Phật là nguyên mẫu của bậc thầy tâm linh. Đó là một người nhận ra và sử dụng sức mạnh của thế giới “bên trong”, thanh thản và chắc chắn trong mọi hành động của mình. Kẻ Nổi Loạn là nguyên mẫu của người tạo ra sự thay đổi. Anh ta thể hiện sự tự tin trong mọi việc anh ta làm. Anh ta biết mình muốn gì, khi nào và ở đâu cũng như dám đứng dậy, dám đương đầu với bất kỳ ai hoặc với mọi khó khăn thử thách gặp phải. Khi bạn phối hợp được kỹ năng của cả hai phiên bản, bạn sẽ hoạt động trong một không gian hạnh phúc, dễ dàng và đầy cảm hứng.', 'Vishen Lakhiani', 6),
(258, 'Đọc Sách Cộng Hưởng', 'https://salt.tikicdn.com/cache/w1200/ts/product/de/1f/e3/368d77eb57d9a8ae2da5577074d328a5.jpg', 79000, 'Đọc Sách Cộng Hưởng', 'Watanabe Yasuhiro', 4),
(259, 'Sách IKIGAI - Chất Nhật Trong Từng Khoảnh khắc', 'https://salt.tikicdn.com/cache/w1200/ts/product/6e/74/3f/e8fc8c9ab71f15006a4e039fecc73e07.jpg', 61000, 'Ikigai là một khái niệm đã tồn tại từ rất lâu trong truyền thống văn hóa Nhật Bản. Đây là khái niệm về niềm vui trong cuộc sống thường nhật, hay nói cách khác là lý do mà bạn thức dậy vào mỗi sáng.', 'Yukari Mitsuhashi', 7),
(260, 'Sách - Xé vài trang thanh xuân, đổi lấy một bản thân nỗ lực', 'https://salt.tikicdn.com/cache/w1200/ts/product/0f/73/50/bf9237d6e89a6982250e1e9e2cd09a68.jpg', 197000, 'GIỚI THIỆU SÁCH:', 'Unknown', 4),
(261, 'Tủ Sách Tâm Linh Thế Kỷ - Giữa Bóng Tối và Ánh Sáng', 'https://salt.tikicdn.com/cache/w1200/ts/product/2f/86/73/af43f8b11c2578f78ac3eb7da190e7f8.jpg', 111000, 'Bằng giọng văn vừa trí tuệ vừa truyền cảm hứng, Giữa Bóng Tối Và Ánh Sáng khám phá những trăn trở của cuộc sống hiện đại, của trí óc đã lao động quá mức, và của trái tim đầy thương tổn.', 'Joan Chittister', 7);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

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




