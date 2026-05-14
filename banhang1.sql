-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2026 at 11:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `new` int(11) NOT NULL,
  `promo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `description`, `img`, `url`, `price`, `category`, `new`, `promo`) VALUES
(2, 'Tự nhiên và xã hội 3', 'Tự nhiên và xã hội 3', '/img/2.jpg', 'tu-nhien-va-xa-hoi-3', 18000, 1, 0, 0),
(3, 'Takenote Toán 4', 'TAKENOTE TOÁN LỚP 4 là cuốn sổ tay học tập lý tưởng, giúp học sinh lớp 4:\n\n- Nắm chắc kiến thức trọng tâm\n\n- Tự tin làm bài – Dễ dàng đạt điểm cao môn Toán\n\nCuốn sách được biên soạn bởi đội ngũ giáo viên chuyên môn, dựa trên chương trình SGK mới nhất, kết hợp trình bày sinh động, hệ thống hóa kiến thức một cách logic – phù hợp với tâm lý và khả năng tiếp thu của học sinh tiểu học.', '/img/134ffa257b04a05971033ab974b0becb.jpg', 'takenote-toan-4', 92000, 1, 0, 0),
(1, 'Combo Ăn chuẩn ít bệnh 1 + 2', 'Ăn chuẩn ít bệnh là tác phẩm tổng kết của nguyên trưởng khoa dinh dưỡng bệnh viện An Trinh từ kinh nghiệm mắc bệnh của bản thân tác giả và hơn 100.000 ca bệnh lâm sàng trong quá trình công tác tại bệnh viện.', '/img/2a9e007c868aac50f5f55dd9925b360d.jpg', 'combo-an-chuan-it-benh-1-2', 309000, 3, 1, 0),
(24, 'Vì Sao Bạn Chưa Giàu? - Cẩm Nang Tài Chính Giúp Bạn Tiêu Xài Đúng Cách, Tiết Kiệm Khôn Ngoan', 'Cuốn sách tài chính hoạt hình giúp bạn vượt qua cám dỗ chi tiêu bằng những mẹo vặt hằng ngày, xua tan âu lo và dẫn lối đến sự giàu có.\n\nCuốn sách giúp bạn vượt qua sự trì hoãn tài chính và bắt đầu quản lý tiền bằng những mẹo nhỏ đơn giản trong cuộc sống hằng ngày:', '/img/4244357b741ff27c6176b7e6f457426f.png', 'vi-sao-ban-chua-giau-cam-nang-tai-chinh-giup-ban-tieu-xai-dung-cach-tiet-kiem-khon-ngoan', 190000, 12, 1, 0),
(25, 'Lá Hoa Trên Đường Về - Sa Môn Thích Pháp Hoà', 'Trong quá trình thực hiện hai quyển sách Chia sẻ từ trái tim và Con đường chuyển hóa của thầy Thích Pháp Hòa, ban biên tập nhận ra rằng có những thắc mắc của đại chúng xoay quanh các vấn đề rất thiết thực trong đời sống mà phạm vi các bài pháp thoại khó đáp ứng được. Do đó, chúng tôi đã quyết định thực hiện quyển sách thứ ba như một tuyển tập các câu vấn đáp giữa thầy Pháp Hòa với đại chúng trong các buổi giảng pháp của thầy suốt mấy mươi năm qua.', '/img/c0e86ae79a376559959d756d577f2aab.jpeg', 'la-hoa-tren-duong-ve-sa-mon-thich-phap-hoa', 105000, 12, 1, 0),
(26, 'Sách Tô Màu Phát Triển Trí Não Bộ Cho Bé 1-5 Tuổi', 'Bố mẹ biết chữ, trẻ dưới 18 tháng đã có khả năng chuyển tải suy nghĩ và cảm xúc bằng hình ảnh có màu sắc. Tô màu giúp trẻ rèn kỹ năng điều khiển vận động của đôi tay, tăng khả năng quan sát, được sáng tạo và tưởng tượng một cách tự nhiên, được luyện khả năng tập trung và kiên trì, tăng khả năng thưởng thức cái đẹp trong cuộc sống. Với mục đích tăng cường đa kỹ năng, bộ sách tô màu sáng tạo này được thiết kế để đem đến những bài học thực sự bổ ích cho các bé!', '/img/cf3cc397d6db05e5b41677e0db309d91.jpg', 'sach-to-mau-phat-trien-tri-nao-bo-cho-be-1-5-tuoi', 11000, 1, 0, 0),
(27, 'Thương Tiến Tửu', 'Vận mệnh đã muốn ta suốt kiếp chôn chân tại chốn này, nhưng số mệnh ấy nào phải con đường ta lựa chọn. Cát vàng chôn vùi huynh đệ ta, ta không muốn tiếp tục thần phục số mệnh hư vô nữa. Thánh chỉ không cứu được sĩ tốt của ta, triều đình không nuôi nổi chiến mã của ta, ta không muốn liều mạng vì những thứ đó nữa. Ta muốn băng qua núi xanh kia, ta muốn đánh một trận, vì chính mình', '/img/765d85f5afe39b8e8f5c351e7f0ac430.png', 'thuong-tien-tuu', 118000, 11, 0, 0),
(28, 'Cơ Thể Ta Đã Hai Triệu Năm - Giải Mã Các Căn Bệnh Thời Hiện Đại', 'Những người nguyên thủy vốn cầm dao và cung đi săn bắn. Để tăng hiệu quả săn bắn, huyết áp của họ tăng lên như một cách thích nghi sinh tồn. Thế nhưng, người hiện đại hầu như không phải chạy nhiều, họ không có lý do gì cần phải tăng huyết áp cả. Vậy tại sao huyết áp vẫn cứ tăng cao? Việc tăng huyết áp có phù hợp với sự sinh tồn của người hiện đại không? Hay chúng ta bị tăng huyết áp lên chẳng để làm gì cả?', '/img/a58be739890f5d5db528dda4e6333a7f.jpg', 'co-the-ta-da-hai-trieu-nam-giai-ma-cac-can-benh-thoi-hien-dai', 99000, 3, 0, 0),
(29, 'Thám từ lừng danh Conan', '', '/img/conan.jpg', 'tham-tu-lung-danh-conan', 30000, 11, 0, 0),
(30, 'Hành trình thống trị thế giới của Youtube', '* Giới thiệu\nHành trình thống trị thế giới của YouTube là một sách về YouTube hấp dẫn dành cho những ai quan tâm đến công nghệ, truyền thông số và sự vận hành phía sau một nền tảng có sức ảnh hưởng toàn cầu. Cuốn sách công nghệ này không chỉ kể lại hành trình phát triển của YouTube từ một startup video non trẻ thành đế chế nội dung số, mà còn mở ra bức tranh hậu trường về thuật toán, quyền lực quảng cáo, kiểm duyệt nội dung và những hệ lụy xã hội đi kèm.\n\nNếu anh/chị đang tìm một sách về YouTube vừa giàu tính thời sự vừa có chiều sâu phân tích, đây là cuốn sách rất đáng đọc.\n\n** Tóm tắt nội dung chính\n\nCuốn sách đưa người đọc đi sâu vào lịch sử hình thành và bành trướng của YouTube, từ những ngày đầu khởi nghiệp cho đến khi trở thành một phần cốt lõi trong hệ sinh thái quyền lực của Google. Mark Bergen không chỉ kể câu chuyện tăng trưởng thần tốc của nền tảng này mà còn bóc tách cách YouTube vận hành phía sau màn hình: từ thuật toán đề xuất, hệ thống quảng cáo, chính sách kiểm duyệt nội dung cho đến mối quan hệ phức tạp với các nhà sáng tạo nội dung. Qua góc nhìn của các nhân vật nội bộ và những người nổi lên nhờ nền tảng, cuốn sách cho thấy YouTube vừa là kỳ quan công nghệ thay đổi thế giới, vừa là một cỗ máy khuếch đại sự chú ý, tranh cãi và quyền lực truyền thông trong thời đại số.', '/img/HTTTTGYT.jpg', 'hanh-trinh-thong-tri-the-gioi-cua-youtube', 49000, 12, 1, 0),
(31, 'Khoa học về dinh dưỡng - The Science of Nutrition', 'Mang đến những câu trả lời rõ ràng, được hậu thuẫn bởi các nghiên cứu mới nhất, cuốn sách đột phá này giải đáp mọi thắc mắc về dinh dưỡng – từ vi khuẩn đường ruột đến quản lý cân nặng, từ sức khỏe tim mạch và hỗ trợ miễn dịch đến chế độ ăn uống dựa trên thực vật và nhịn ăn gián đoạn, v.v.\nKhông có một công thức chung nào cho chế độ ăn uống tối ưu vì sức khỏe và hạnh phúc. Tuy nhiên, với những lời khuyên dễ hiểu dựa trên bằng chứng khoa học – cùng với các hình ảnh minh họa sinh động, giàu thông tin – cuốn sách sẽ trang bị cho bạn kiến thức và sự tự tin để đánh giá và nâng cao cách tiếp cận dinh dưỡng phù hợp của riêng bạn.', '/img/KHDD.jpg', 'khoa-hoc-ve-dinh-duong-the-science-of-nutrition', 314000, 3, 1, 0),
(32, 'Gi Gỉ Gì Gi Cái Gì Cũng Biết - 130 Bí Mật Vui Nhất Cho Tuổi Tiểu Học', 'Vui thú biết bao khi được khám phá mọi thứ xung quanh!\n\nCó vô số câu hỏi “vì sao” quanh ta mỗi phút giây. Mỗi ngày giải đáp được một câu trong số ấy thì thú vị biết mấy, kiến thức cùng lòng ham học hỏi trong ta sẽ lớn lên dần. Cuốn sách này là người bạn đắc lực đem đến những điều ngộ nghĩnh ta thường bắt gặp buổi sáng, buổi trưa, buổi tối và các ngày nghỉ.\n\nCùng tìm hiểu hơn 100 bí mật về Cơ thể con người, Thế giới tự nhiên, Cuộc sống quanh ta, Đồ ăn thức uống, Những thứ phục vụ cuộc sống của con người!', '/img/TNGG.jpg', 'gi-gi-gi-gi-cai-gi-cung-biet-130-bi-mat-vui-nhat-cho-tuoi-tieu-hoc', 123250, 12, 1, 0),
(33, 'Tiếng Anh - lớp 6 - tập 1', 'TIẾNG ANH 6 - SÁCH BÀI TẬP, tập một được biên soạn để giúp học sinh củng cố và mở rộng kiến thức ngôn ngữ và kĩ năng giao tiếp tiếng Anh các em đã học trong Tiếng Anh 6 – Sách học sinh, tập một. Sách gồm 6 đơn vị bài tập ứng với 6 đơn vị bài học trong Tiếng Anh 6 – Sách học sinh, tập một và 2 bài tự kiểm tra (Test yourself).\n\nMÔI ĐƠN VỊ BÀI TẬP GỒM 5 PHÂN:\n\nPRONUNCIATION củng cố khả năng phát âm, khả năng nhận biết của học sinh về những âm phát âm giống nhau và những âm được phát âm khác nhau trong từ.\n\nVOCABULARY & GRAMMAR củng cố những từ và cấu trúc ngữ pháp học sinh đã học và mở rộng khối lượng từ vựng của các em thông qua các dạng bài tập khác nhau.\n\nSPEAKING củng cố khả năng nói học sinh đã học thông qua các hình thức như: nhìn (Sơ đồ, tranh, vv.) và thực hành nói, điền thông tin vào hội thoại và thực hành nói, viết và thực hành nói, trả lời các câu hỏi thông qua nói, vv.\n\nREADING củng cố và phát triển kĩ năng đọc hiểu của học sinh ở cấp độ đoạn văn và đoạn thoại ngắn thông qua các hình thức đọc và chọn đáp án đúng để điền vào chỗ trống, đọc và tự tìm từ đúng để điền vào chỗ trống, đọc và trả lời câu hỏi, vv. WRITING củng cố kĩ năng viết đoạn văn của học sinh về những chủ đề các em đã học.\n\nTEST YOURSELF1 và TEST YOURSELF2 giúp học sinh tự kiểm tra những nội dung kiến thức và những yêu cầu về kĩ năng các em đã học sau mỗi 3 đơn vị bài học, đồng thời làm quen với các dạng bài kiểm tra tiếng Anh theo chuẩn quốc tế. Các bài tập trong Tiếng Anh 6-Sách bài tập, tập một đa dạng, phong phú, bám sát ngữ pháp, từ vựng và chủ đề trong Tiếng Anh 6 - Sách học sinh, tập một. Sách Có nhiều tranh minh hoạ sinh động nhằm hỗ trợ học sinh liên hệ hình ảnh với từ ngữ và tình huống trong khi làm bài tập và thực hành giao tiếp.\n\nTập thể tác giả hi vọng Tiếng Anh 6 - Sách bài tập, tập một sẽ là một phương tiện hỗ trợ tốt cho học sinh lớp 6 học tiếng Anh. Chúc các em học tiếng Anh thành công!', '/img/TA6.1.jpg', 'tieng-anh-lop-6-tap-1', 32000, 1, 0, 0),
(34, 'Giáo Dục Công Dân - Lớp 6 - Kết Nối Tri Thức', 'Giáo Dục Công Dân - Lớp 6 - Kết Nối Tri Thức', '/img/GDCD6.jpg', 'giao-duc-cong-dan-lop-6-ket-noi-tri-thuc', 8000, 1, 0, 0),
(35, 'Sách Giáo Khoa Ngữ Văn Lớp 9 Tập 1 - Chân Trời Sáng Tạo - 2025', 'Mã hàng 9786040393104\n\nTên Nhà Cung Cấp Nhà xuất bản Giáo Dục\n\nTác giả Nhiều Tác Giả\n\nNXB Giáo Dục Việt Nam\n\nNăm XB 2024\n\nTrọng lượng (gr) 170\n\nKích Thước Bao Bì 26.5 x 19 x 0.7 cm\n\nSố trang 156\n\nHình thức Bìa Mềm\n\n-----------------------------------------\nNgữ Văn 9 - Tập 1\n \nSách được biên soạn theo Chương trình giáo dục phổ thông năm 2018.\nVới quan điểm giáo dục mới, các chủ đề, các bài học được thiết kế nhằm giúp học sinh hình thành và phát triển các kỹ năng môn ngữ văn của mình.\nĐặc biệt sách chú trọng nội dung, giúp học sinh chủ động học.', '/img/NV9.1.jpg', 'sach-giao-khoa-ngu-van-lop-9-tap-1-chan-troi-sang-tao-2025', 21000, 1, 0, 0),
(36, 'Sách Giáo Khoa Khoa Học Tự Nhiên Lớp 9 - Chân Trời Sáng Tạo - 2025', 'Khoa Học Tự Nhiên 9 (Chân Trời)\n\nSách được biên soạn theo Chương trình giáo dục phổ thông năm 2018.\n\nVới quan điểm giáo dục mới, các chủ đề, các bài học được thiết kế nhằm giúp học sinh hình thành và phát triển các kỹ năng của mình như khám phá, chủ động và sáng tạo...\n\nĐặc biệt sách chú trọng nội dung phát triển ý tưởng thực tế, đưa ra các gợi ý thực hành khác nhau, giúp học sinh chủ động học.\n\nTác giả là những nhà khoa học, nhà sư phạm, nhà giáo giàu kinh nghiệm trong giáo dục phổ thông.', '/img/KHTN9.1.jpg', 'sach-giao-khoa-khoa-hoc-tu-nhien-lop-9-chan-troi-sang-tao-2025', 28000, 1, 1, 0),
(37, 'Chuyên Đề Bồi Dưỡng Toán 1', 'Chuyên Đề Bồi Dưỡng Toán 1', '/img/BDT1.1.jpg', 'chuyen-de-boi-duong-toan-1', 54000, 1, 0, 0),
(38, 'Vở Bài Tập Toán Lớp 5 Tập 2 - Chân Trời Sáng Tạo - 2025', 'Vở Bài Tập Toán Lớp 5 Tập 2 - Chân Trời Sáng Tạo - 2025', '/img/BTT5.2.jpg', 'vo-bai-tap-toan-lop-5-tap-2-chan-troi-sang-tao-2025', 19000, 1, 0, 0),
(39, 'Vở Bài Tập Mĩ Thuật 3 Bản 2 - Chân Trời Sáng Tạo', 'Vở Bài Tập Mĩ Thuật 3 Bản 2 - Chân Trời Sáng Tạo', '/img/BTMT3.1.jpg', 'vo-bai-tap-mi-thuat-3-ban-2-chan-troi-sang-tao', 9000, 1, 0, 0),
(40, 'Chuyên Đề Học Tập Ngữ Văn 10 - Cánh Diều', 'Chuyên Đề Học Tập Ngữ Văn 10 - Cánh Diều', '/img/NV10.1.jpg', 'chuyen-de-hoc-tap-ngu-van-10-canh-dieu', 16000, 1, 1, 0),
(41, 'Sổ Tay Kiến Thức Toán Tiểu Học', 'Sổ Tay Kiến Thức Toán Tiểu Học', '/img/STKTH.1.jpg', 'so-tay-kien-thuc-toan-tieu-hoc', 57000, 1, 1, 0),
(42, 'Luyện Tập Tập Làm Văn 5', 'Để tăng thêm nguồn tư liệu phong phú cho các bậc phụ huynh hướng dẫn con em mình phát triển kĩ năng làm văn, đồng thời đem đến cho các thầy cô giáo nguồn tư liệu tham khảo trong giảng dạy, chúng tôi biên soạn cuốn:\n\nLUYỆN TẬP TẬP LÀM VĂN 5\n\nCuốn sách hội tụ những đề văn, bài văn về các thể loại trong chương trình lớp Năm đổi mới. Các em học sinh không chỉ tìm thấy trong cuốn sách này cách thức đường hướng giải quyết một cách cơ bản các đề văn của chương trình mà còn mở rộng, phát triển năng lực giao tiếp của mình trong đời sống xã hội.\n\nChúng tôi tin rằng cuốn sách sẽ đáp ứng được phân nào cho cả hai đối tượng DẠY và HỌC phân môn Tập làm văn 5.', '/img/LTTLV5.1.jpg', 'luyen-tap-tap-lam-van-5', 55000, 1, 1, 0),
(43, 'Tuyển Tập Các Bài Toán Hay Và Khó 5', 'Để đáp ứng nhu cầu học Toán của học sinh lớp năm, đồng thời giúp quý thầy, cô giáo, quý bậc phụ huynh có tài liệu bồi dưỡng học sinh giỏi Toán. Chúng tôi biên soạn quyển TUYỂN TẬP CÁC BÀI TOÁN HAY VÀ KHÓ LỚP 5.\n\nTrong quyển sách này chúng tôi chọn lọc những bài toán hay, hấp dẫn, trong đó có những bài toán rèn kỹ năng tính toán, có những bài toán rèn năng lực tư duy và có những bài toán vui nhằm tạo hứng thú cho học sinh khi học Toán. Hệ thống các bài toán được sắp xếp theo cấu trúc chương trình Toán lớp năm mới, kết hợp với các bài giải trình bày cẩn thận, rõ ràng, đầy đủ sẽ giúp học sinh dễ dàng trong tự học, giúp quý phụ huynh thuận tiện trong việc hướng dẫn con em học tập.\n\nChúng tôi tin rằng, quyển sách này sẽ là một tài liệu hữu ích cho quý thầy cô giáo, quý phụ huynh và các em học sinh lớp năm trong việc dạy và học tốt môn Toán.', '/img/TTTK5.1.jpg', 'tuyen-tap-cac-bai-toan-hay-va-kho-5', 59000, 1, 1, 0),
(44, 'Tuyển Tập 166 Bài Làm Văn Chọn Lọc 11', 'Tuyển Tập 166 Bài Làm Văn Chọn Lọc 11', '/img/TTV11.1.jpg', 'tuyen-tap-166-bai-lam-van-chon-loc-11', 115000, 1, 1, 0),
(45, 'Arsène Wenger: Cuộc Đời Tôi Qua Hai Màu Đỏ-Trắng', 'Arsène Wenger: Cuộc Đời Tôi Qua Hai Màu Đỏ-Trắng\n\nTrong cuốn hồi ký Cuộc Đời Tôi Qua Hai Màu Đỏ-Trắng, huấn luyện viên bóng đá hàng đầu thế giới Arsène Wenger lần đầu tiên kể cho chúng ta nghe câu chuyện của chính bản thân mình. Wenger thoải mái chia sẻ về cuộc đời ông, những nguyên tắc thành công ở cả trong và ngoài sân cỏ, cùng những bài học về thuật lãnh đạo, sự phát triển cá nhân và công tác quản trị đội bóng. Wenger trình bày nhiều suy ngẫm có giá trị về bóng đá – Những cách tiếp cận mới mẻ và độc đáo của ông trong việc xây dựng động lực, tư duy, duy trì thể lực và tâm lý chiến thắng cho đội bóng. Ông từng dẫn dắt nhiều câu lạc bộ, ấn tượng nhất là thời gian 22 năm dẫn dắt đội Arsenal 1996-2018. Cùng đội bóng London này, ông giành được nhiều danh hiệu, trong đó có một mùa giải bất bại khi Arsenal vô địch Anh (Premier League) mùa bóng 2003-2004. Wenger nổi tiếng với tư duy bóng đá tấn công, những phương pháp cách tân trong chế độ dinh dưỡng và duy trì thể lực cho cầu thủ, cũng như khả năng độc đáo trong việc phát hiện ra các tài năng trẻ. Là người đam mê lối chơi bóng đá tấn công, Wenger luôn tin rằng chơi đẹp và cống hiến nên là mục tiêu của bóng đá. Hiện nay ông là Giám đốc phát triển bóng đá toàn cầu của Liên đoàn Bóng đá Thế giới (FIFA)', '/img/Wenger.jpg', 'arsene-wenger-cuoc-doi-toi-qua-hai-mau-do-trang', 155000, 11, 1, 0),
(46, 'Mossad - Chiến Dịch Tình Báo Huyền Thoại', 'Mossad - Chiến Dịch Tình Báo Huyền Thoại\n\nMossad: Chiến dịch tình báo huyền thoại tập hợp 22 chiến dịch nổi bật nhất trong hơn 60 năm hoạt động của Mossad – một trong những tổ chức tình báo hiệu quả và bí ẩn nhất thế giới.\n\nThông qua nghiên cứu sâu rộng và phỏng vấn độc quyền với các cựu điệp viên cùng lãnh đạo Israel, hai tác giả tái hiện những nhiệm vụ then chốt như:\n\nBắt giữ Adolf Eichmann – tội phạm chiến tranh Đức Quốc xã – tại Argentina.\nChiến dịch “Sự phẫn nộ của Chúa” – truy lùng và ám sát các thủ lĩnh Tháng Chín Đen sau vụ thảm sát Olympic Munich 1972.\nPhá hủy lò phản ứng hạt nhân tại Syria, loại bỏ các nhà khoa học hạt nhân Iran.\nGiải cứu người Do Thái bí mật di cư từ Ethiopia và các nước Ả Rập về Israel.\nCuốn sách không né tránh việc nói đến những thất bại, tranh cãi và cái giá con người phải trả sau mỗi nhiệm vụ, mang đến cái nhìn toàn diện và chân thực về Mossad.\n\nĐối tượng độc giả\n\nCuốn sách phù hợp với:\n\nNgười yêu thích đề tài tình báo, trinh thám và lịch sử hiện đại.\nSinh viên, học giả nghiên cứu về quan hệ quốc tế, an ninh và chính trị toàn cầu.\nĐộc giả quan tâm đến khu vực Trung Đông, Israel và các chiến lược bảo vệ an ninh quốc gia.\nNgười tìm kiếm những câu chuyện có thật nhưng hấp dẫn như tiểu thuyết.\nCuốn sách có gì đặc biệt?\n\n#1. Tác giả uy tín:\n\nMichael Bar-Zohar là nhà sử học, cựu nghị sĩ Knesset, cố vấn cho tướng Moshe Dayan, đồng thời là người viết tiểu sử chính thức của các lãnh đạo Israel như Ben-Gurion và Shimon Peres.\n\nNissim Mishal là nhà báo kỳ cựu, từng giữ vị trí Tổng giám đốc Đài Truyền hình Nhà nước Israel.\n\n#2. Cấu trúc dễ tiếp cận:\n\nMỗi chương là một câu chuyện độc lập, giúp độc giả dễ theo dõi và chọn đọc.\n\n#3. Phong cách kể chuyện cuốn hút:\n\nĐược viết như một tiểu thuyết trinh thám, với nhịp điệu nhanh, chi tiết sống động và những bất ngờ khó đoán.\n\n#4. Tư liệu phong phú, xác thực:\n\nDựa trên hàng trăm cuộc phỏng vấn và tài liệu mật chưa từng công bố, mang lại góc nhìn chân thực và độc quyền.\n\n#5. Được đánh giá cao bởi giới chuyên môn:\n\nNhiều chuyên gia xem đây là một trong những tác phẩm hay nhất về Mossad, với giá trị lịch sử và giải trí song hành.', '/img/Mossad.jpg', 'mossad-chien-dich-tinh-bao-huyen-thoai', 229000, 11, 1, 0),
(47, 'Ông Tướng Tình Báo Bí Ẩn Và Những Điệp Vụ Siêu Hạng', 'Sự hy sinh thầm lặng, những chiến công hiển hách cùng di sản quân sự - chính trị quý giá của vị tướng lừng lẫy Đặng Trần Đức (ông Ba Quốc)\n\nDân tộc Việt Nam đã trải qua hàng ngàn trận chiến lớn nhỏ trong suốt quá trình dựng nước và giữ nước. Nhỏ bé mà anh hùng, thế hệ ông cha ta đã lập nhiều chiến công hiển hách, vượt mọi khó khăn, gian khổ để giành lại nền độc lập, tự do cho dân tộc. Và một trong những chiến công quan trọng nhưng ít người biết đến nhất có lẽ là chiến công của lực lượng tình báo Việt Nam.', '/img/TuongTinhBao.jpg', 'ong-tuong-tinh-bao-bi-an-va-nhung-diep-vu-sieu-hang', 118000, 11, 1, 0),
(48, 'Tuổi Thơ Ở Đông Dương: Từ Ngày Tháng Êm Đềm Đến Thời Tao Loạn', 'Tuổi Thơ Ở Đông Dương: Từ Ngày Tháng Êm Đềm Đến Thời Tao Loạn\n\nĐông Dương của tuổi thơ tôi là Đông Dương vào những năm 1934 - 1946, trước tiên đó là những năm tháng êm đềm của thời bé dại, rồi những năm tháng khi trí khôn đến càng nhanh hơn các biến cố trong đời sống đòi hỏi nó nữa.\n\nKhi chiến tranh bùng nổ vào năm 1939, không có gì thực sự thay đổi đối với người châu Âu sinh sống ở Đông Dương ngoại trừ sự liên lạc và giao thông dần dần bị gián đoạn với nước mẹ.\n\nTừ năm 1945 đến 1946, những biến cố đã thay đổi rồi làm đảo lộn cuộc sống của người Pháp chúng tôi. Tôi muốn nhắc lại một cách ngắn gọn theo trình tự thời gian...\n\nBắt đầu từ... Cha tôi đã rời quê hương Tarn của mình và chọn đến sống ở Đông Dương ngõ hầu thỏa mãn bằng được lý tưởng sống trong xã hội nguyên sơ, cái lý tưởng làm ông hoa mắt tin rằng hạnh phúc có thể tìm thấy ở vùng châu Á xa xôi này, trên những bãi biển hoang vắng của Thái Bình Dương. Nha Thuế quan và Công quản Đông Dương đã cho ông cơ hội. Giấc mơ vẫn sống trong ông và Tam Quan cho ông một khung cảnh có thể chở che cho điều mà ông xem là giống nhất với niềm hạnh phúc ở cõi trần. Ông có thể sống ở đó, hơi giống như Robinson, xa cách hẳn với nền văn minh châu Âu, với những ràng buộc, gò bó của nó, và tránh xa những tác hại của một cuộc sống quá bị đô thị hóa.', '/img/TuoithoDD.jpg', 'tuoi-tho-o-dong-duong-tu-ngay-thang-em-dem-den-thoi-tao-loan', 150000, 11, 1, 0),
(49, '36 Tấm Gương Lãnh Đạo: Học Tiếng Anh Qua Đọc Sách Song Ngữ Anh-Việt', '36 Tấm Gương Lãnh Đạo: Học Tiếng Anh Qua Đọc Sách Song Ngữ Anh-Việt', '/img/36-tamguong.jpg', '36-tam-guong-lanh-dao-hoc-tieng-anh-qua-doc-sach-song-ngu-anh-viet', 279000, 11, 1, 0),
(50, 'A Promised Land - Miền Đất Hứa', 'Cuốn hồi ký nổi tiếng của vị Tổng thống da màu đầu tiên nước Mỹ, Barack Obama\n\nMiền Đất Hứa (tựa gốc A Promised Land) là một trong những cuốn sách được bạn đọc trông chờ nhất trong năm nay. Đây là cuốn hồi ký của cựu Tổng thống Barack Obama, chứa đựng những ghi chép cuốn hút, đầy riêng tư về lịch sử trong quá trình tạo lập đến từ vị Tổng thống đã truyền cảm hứng để chúng ta tin vào sức mạnh của nền dân chủ.\n\nMiền Đất Hứa là tập một trong bộ hai cuốn tự truyện của Barack Obama. Trong tập đầu tiên này, ông đã kể lại câu chuyện về cuộc viễn du của chàng thanh niên da đen, từ lúc đi tìm danh tính cho mình, cho đến khi trở thành Tổng thống da màu đầu tiên của nước Mỹ. Cuốn sách mô tả chi tiết góc nhìn cá nhân đầy ấn tượng cả về Giáo dục, Chính trị, lẫn những bước ngoặt ở nhiệm kỳ đầu khi giữ cương vị Tổng thống - khoảng thời gian có tính chất lịch sử đối với bản thân Barack Obama và cũng là thời kỳ chuyển đổi đầy hỗn loạn và kịch tính.\n\nObama đã dẫn dắt độc giả vào một hành trình cuốn hút, khởi đi từ khát vọng chính trị đầu tiên của ông cho đến chiến thắng then chốt tại hội nghị cử tri Iowa, rồi đến đêm 4 tháng 11 năm 2008 trọng đại, khi ông được bầu làm tổng thống thứ 44 của Hoa Kỳ, trở thành người Mỹ gốc Phi đầu tiên giữ chức vụ cao nhất của cường quốc này.\n\nThông qua 7 chương sách, Barack Obama như đã đưa bạn đọc vào Phòng Bầu dục và Phòng Tình hình của Nhà Trắng, rồi đến Moscow, Cairo, Bắc Kinh, và cả những địa điểm xa xôi hơn nữa. Từ đó, quý độc giả sẽ khám phá được những phạm vi đáng kinh ngạc lẫn giới hạn quyền lực của một vị Tổng thống, cũng như sẽ hiểu biết sâu sắc hơn về động lực của chính trị các Đảng phái của Mỹ và ngoại giao quốc tế.', '/img/MDHObama.jpg', 'a-promised-land-mien-dat-hua', 768000, 11, 1, 0),
(51, 'Bà Đại Sứ (Tái bản năm 2024)', 'Sau những ngày vật lộn với bệnh viêm màng não vào năm lên hai tuổi, Helen Keller đã hoàn toàn bị điếc, câm, mù. Tương lai tưởng chừng như đen tối của Helen chợt bừng sáng khi em được một cô gia sư Ann Sullivan giàu lòng nhân ái và thông minh dạy dỗ, giúp đỡ. Với tài năng bẩm sinh và một nghị lực phi thường, từ một cô bé bẳn tính, ương bướng, Helen đã trở thành một người phụ nữ thanh lịch, nhân hậu, tốt nghiệp trường Đại học Harvard và là Đại sứ thiện chí của Hoa Kỳ.\n\nTiểu thuyết Bà đại sứ được tác giả Lorena A. Hickok viết dựa trên cuộc đời thực của bà Helen Keller và tác phẩm Chuyện đời tôi của bà. Cuộc đời của Helen Keller với biết bao sự dày công khổ luyện, vượt qua mọi khó khăn để vươn lên cùng hình ảnh cao cả của cô gia sư đã được tái hiện hết sức sinh động qua từng trang sách.\n\nCuốn tiểu thuyết chân thực tới từng chi tiết này đã làm xúc động hàng triệu triệu con tim độc giả. Người đọc khâm phục trí tuệ và nghị lực siêu phàm của Helen Keller bao nhiêu thì lại càng cảm mến tấm lòng vị tha cao cả của cô Anne Sullivan bấy nhiêu. Vượt ra khỏi hình tượng một cô gia sư thông thường, Anne trở thành biểu tượng của sự hy sinh, xả thân vì người khác, bắt nguồn từ chính sự đồng cảm sâu sắc và từ hoàn cảnh xuất thân cũng chẳng mấy may mắn, sáng sủa của cô. Nói không ngoa, nếu không gặp được cô Anne, chắc chắn cuộc đời Helen vẫn mãi chìm trong bóng tối như muôn vàn số phận bất hạnh, thiệt thòi khác. Và ở chiều ngược lại, cũng chính trí tuệ thiên bẩm và nghị lực tuyệt vời của Helen đã thắp sáng cho mối thâm giao đẹp đẽ của họ. Người đọc có thể rơi nước mắt khi thấy cô Anne cố gắng đọc thật nhiều tài liệu để có thể chỉ dạy lại cho Helen mặc cho thị lực ngày càng giảm sút; còn Helen chấp nhận đi diễn thuyết trong các chương trình tạp kỹ vòng quanh nước Mỹ để kiếm tiền chữa bệnh và lo cho tương lai của cô Anne. May thay, khi sức khỏe và thị lực của cô Anne ngày một suy giảm, số phận đã sắp đặt cho Keller và cô Anne gặp được Polly Thomson – một cô thư ký đã chẳng nề hà việc gì đồng hành với họ trong suốt quãng đời còn lại.', '/img/ba-dai-su.jpg', 'ba-dai-su-tai-ban-nam-2024', 80000, 11, 1, 0),
(52, 'Điệp Viên Hoàn Hảo X6 - Phạm Xuân Ẩn (Tái bản năm 2022) (Bìa cứng)', 'Phạm Xuân Ẩn, một cái tên chứa biết bao điều bí ẩn, không chỉ với người Việt Nam, mà đối với cả rất nhiều chính khách và báo chí thế giới, đặc biệt là báo chí Mỹ. Người ta đã bình luận, tranh cãi, phỏng đoán và viết rất nhiều về ông, thậm chí còn làm phim tài liệu nhiều tập về ông, nhưng dường như còn có quá nhiều điều vẫn chưa được làm sáng tỏ. Cho đến khi một người Mỹ bắt tay vào cuộc… Đó chính là Larry Berman, nhà sử học, giáo sư chính trị học thuộc đại học California, một chuyên gia xuất sắc chuyên nghiên cứu về cuộc chiến tranh xâm lược Việt Nam của Mỹ.', '/img/DV.PXA.jpg', 'diep-vien-hoan-hao-x6-pham-xuan-an-tai-ban-nam-2022-bia-cung', 198000, 11, 1, 0),
(53, 'Donald Trump Dưới Góc Nhìn Của Tâm Lý Học', 'Donald Trump Dưới Góc Nhìn Của Tâm Lý Học\n\n\"Có thể coi cuốn sách này là một tập tài liệu chuyên môn về sức khỏe tâm thần, tâm lý học, nhưng không làm cho người đọc thấy hoảng sợ, vì lý thuyết được gắn với một tình huống nghiên cứu thực tiễn, điển hình.\n\nĐồng thời đây cũng là tiếng nói của những công dân có chuyên môn, ý thức rất rõ về “trách nhiệm cảnh báo” của mình; nhưng lại bị kẹt giữa hai nghĩa vụ nghề nghiệp hoàn toàn đối lập nhau, và việc vi phạm bất cứ nghĩa vụ nào cũng khiến họ bị coi là hành xử thiếu đạo đức.\n\nThứ nhất, họ có nghĩa vụ im lặng về đánh giá của họ với bất kỳ ai nếu người đó chưa cho phép họ lên tiếng công khai. Thứ hai, họ có nghĩa vụ lên tiếng và thông báo cho những người khác nếu họ có cơ sở để tin rằng một người nào đó có thể gây nguy hiểm cho những người khác.\n\nNhân vật được đưa ra làm điển hình trong cuốn sách là Donald Trump, tổng thống đương nhiệm của Hoa Kỳ, vì những hành xử có vẻ bất thường của ông.\n\nTuy nhiên, tác giả Bandy X. Lee đã chỉ ra rằng, “điểm chính của cuốn sách này không phải là về ông Trump, mà về bối cảnh lớn hơn dẫn tới việc ông lên làm tổng thống, và về phần đông dân số mà ông gây được ảnh hưởng bởi vị thế của ông”.\n\nBà đã đặt ngược lại câu hỏi, rằng việc Donald Trump đắc cử tổng thống Mỹ không phải vấn đề, mà vấn đề nằm ở chính đám đông dân số đã bầu cho ông. Và, “Sự nổi lên của một cá nhân với những khiếm khuyết như thế tự nó nói lên tình trạng sức khỏe và sự thịnh vượng của quốc gia, và chúng ta có thể phản ứng thế nào: cải thiện nó hay làm nó suy yếu thêm nữa?”\n\n“Không cuốn sách nào được xuất bản trong mùa thu này nguy hiểm hơn, quan trọng hơn và gây tranh cãi hơn cuốn sách này… sâu sắc, sáng tỏ và đầy lo lắng.” - Bill Moyers\n\n“Lập trường của các chuyên gia tâm thần học này cần đến lòng can đảm, và những kết luận của họ thật thuyết phục.” - The Washington Post\"', '/img/donald-trump-duoi-goc-nhin-cua-tam-ly-hoc.jpg', 'donald-trump-duoi-goc-nhin-cua-tam-ly-hoc', 180000, 11, 1, 0),
(54, 'Đi Qua Trăm Năm - Nguyễn Đình Tư Tự Truyện', '“Bỗng nhiên không biết do cơ duyên tốt lành nào đưa tới mà tôi ở tuổi gần đất xa trời, được tin ông Chủ tịch Ủy ban nhân dân Thành phố đến thăm và qua hôm sau là ông Bí thư Thành ủy. Hai vị lãnh đạo Đảng và Chính quyền cao nhất Thành phố tới thăm một người dân bình thường, mừng thọ tôi 102 tuổi, tặng quà và nhất là chịu khó ngồi cả tiếng đồng hồ nghe tôi kể lại cuộc đời đầy gian khổ của tôi từ nhỏ đến già, với tấm lòng thương yêu Tổ quốc, vẫn say mê theo đuổi sự nghiệp nghiên cứu và biên khảo lịch sử nước nhà, với quan điểm viết sử của tôi là phải khách quan. Nhân vô thập toàn, thánh nhân còn có cái sai huống chi người trần tục. Cái gì đúng, hay thì khen, cái gì sai, dở thì không che giấu, không bênh vực. Nếu viết sử mà không khách quan thì hậu thế sẽ hiểu không đúng quá khứ”.\n\n\n– Trích Đi qua trăm năm', '/img/di-qua-tram-nam_NDTu.jpg', 'di-qua-tram-nam-nguyen-dinh-tu-tu-truyen', 180000, 11, 1, 0),
(55, 'Cuộc Sống Không Giới Hạn (Tái bản năm 2022)', 'CÂU CHUYỆN DIỆU KỲ CỦA CHÀNG TRAI ĐẶC BIỆT NHẤT HÀNH TINH\n\nNick sinh ra mắc hội chứng Tetra-amelia bẩm sinh, một rối loạn gen hiếm gặp gây ra sự thiếu hụt chân, tay. Điều đó đồng nghĩa với việc anh có rất ít hy vọng để sống một cuộc đời bình thường. Người mẹ và người cha thân yêu của anh lần đầu nhìn thấy con trai đã sốc kinh khủng. Sự ra đời của Nick đã làm chao đảo cả cuộc sống của một gia đình trẻ. Họ khó có thể chấp nhận được sự thật đau lòng về đứa con bé bỏng; không chỉ vô cùng đau khổ, họ còn hết sức lo lắng cho tương lai của con trai.\n\nLớn lên, bắt đầu ý thức về thân phận của mình cũng là lúc Nick chỉ muốn biến mất khỏi cuộc sống. Như anh từng tâm sự: “Hoàn cảnh nghiệt ngã tưởng đã có lúc nhấn chìm tôi. Hơn ai hết, tôi từng muốn tự tử, và đã từng rất nhiều lần định bỏ cuộc. Nhưng cuối cùng, tôi đã can đảm đứng dậy sau hàng ngàn lần ngã…”\n\nĐiều gì đã khiến Nick đứng dậy và đi qua tất cả? Đó thật sự là một điều kỳ diệu lớn lao – Khát vọng sống mãnh liệt và ý chí quật cường chiến thắng số phận.\n\n“Thường thì chúng ta cứ tự nhủ rằng mình không đủ thông minh hoặc không đủ hấp dẫn hoặc không đủ tài năng để theo đuổi những ước mơ. Chúng ta tin những gì người khác nói về chúng ta,hoặc tự đặt ra những giới hạn cho bản thân mình. Tồi tệ hơn, khi bạn tự coi mình là một người vô giá trị có nghĩa là bạn đang đặt ra giới hạn cho những điều kỳ diệu mà Chúa có thể trao gửi cho bạn!” - Nick Vujicic\n\n“Từ sâu thẳm trái tim mình, tôi tin rằng cuộc đời không có bất cứ giới hạn nào hết. Cho dù những thách thức mà bạn đang phải đối mặt là gì đi nữa, cho dù những thách thức ấy có khốc liệt, nghiệt ngã đến mức nào chăng nữa, tôi cũng mong bạn hãy tin tưởng và cảm thấy như vậy về cuộc sống của chính mình…” - Nick Vujicic', '/img/cuoc-song-khong-gioi-han.jpg', 'cuoc-song-khong-gioi-han-tai-ban-nam-2022', 148000, 12, 1, 0),
(56, 'Chân Trần Chí Thép', 'Tác giả James G. Zumwalt xuất thân trong một gia đình có truyền thống binh nghiệp. Cha ông là Đô đốc Elmo R. Zumwalt, Tư lệnh Hải quân Mỹ tại Việt Nam, và sau này là Tham mưu trưởng Hải quân Mỹ.\n\nTrong vai trò chỉ huy Hải quân Mỹ tại Việt Nam, bắt đầu vào năm 1968, Tư lệnh Elmo Zumwalt đã phát động chiến dịch rải Chất độc da Cam dọc các bờ sông ở miền Nam Việt Nam, để lại hậu quả nặng nề cho đất nước và người dân Việt Nam. Nhiều chiến binh Mỹ trở về từ cuộc chiến cũng bị phơi nhiễm chất độc này, trong đó có người con trai cùng tên Elmo R. Zumwalt III của ông. Elmo R. Zumwalt III đã qua đời năm 1988 vì ung thư, hậu quả của phơi nhiễm chất độc.\n\nSau chiến tranh, Đô đốc Zumwalt đã trở lại Việt Nam để thúc đẩy các hoạt động khắc phục hậu quả chiến tranh. Ông cũng là người ủng hộ quyết định bình thường hóa quan hệ Mỹ - Việt của Tổng thống Bill Clinton.\n\nBản thân tác giả James Zumwalt, từng tham chiến tại Việt Nam, sau đó tham gia cuộc can thiệp vào Panama năm 1989 và Chiến dịch Bão táp Sa mạc tại vùng Vịnh năm 1990-1991. Năm 1994, lần đầu tiên ông cùng cha mình – Đô đốc Zumwalt - trở lại Việt Nam trong một chuyến đi nằm trong nỗ lực tìm hiểu tác hại của Chất độc da Cam lên sức khỏe con người. Chính từ chuyến đi ấy, ông Zumwalt đã được tiếp xúc với nhiều vị tướng lĩnh cấp cao, các cựu quân nhân từng tham gia cuộc chiến chống Mỹ cũng như những người dân thường.\n\nSau chuyến đi năm 1994, ông còn trở lại Việt Nam nhiều lần nữa. Mỗi một chuyến đi, mỗi một cuộc gặp cho ông một cái nhìn mới, một nhận thức mới về đất nước và con người ở đây. Khi hiểu biết đơm mầm, lòng thù hận âm ỉ bấy lâu tan biến, thay vào đó là sự thông cảm, sẻ chia, và trên hết là lòng khâm phục đối với những người từng ở bên kia chiến tuyến – mà giờ đây ông đã coi là bạn bè. Các cuộc tiếp xúc cũng giúp ông, cuối cùng, đã hiểu rõ đâu là nguyên nhân dẫn tới thắng lợi của Việt Nam trong cuộc chiến ấy. Ông kinh ngạc khi phát hiện ra rằng, những người Việt Nam CHÂN TRẦN đã bước vào cuộc chiến với một CHÍ THÉP, sẵn sàng chiến đấu trường kỳ tới chừng nào đạt được mục tiêu thống nhất non sông mới thôi.', '/img/chan-tran-chi-thep.jpg', 'chan-tran-chi-thep', 168000, 11, 1, 0),
(57, 'Carlo Ancelotti - Lãnh Đạo Trầm Lặng (Tái bản năm 2024)', 'Carlo Ancelotti - Lãnh Đạo Trầm Lặng (Tái bản năm 2024)', '/img/Carlo-ancelotti.jpg', 'carlo-ancelotti-lanh-dao-tram-lang-tai-ban-nam-2024', 180000, 11, 1, 0),
(58, 'Origami Sea Animals: Paper block plus 64-page book', 'Origami Sea Animals: Paper block plus 64-page book\n\nTake a trip into the deep blue with this 64-page project book and 250 sheets of origami paper.\n\nBestselling origami expert Mari Ono has put together an awesome collection of ocean dwellers and sea creatures that kids and adults alike will love to make.\n\nDive right in with a toothy shark, a wiggly jellyfish, playful sea otters, a shy little seahorse, and hilarious crabs.\n\nAll 15 projects come with simple step-by-step instructions, difficulty ratings, and clear photographs with arrows showing you where to fold, meaning mastering the art of paper folding has never been easier.\n\nOrigami Sea Animals comes with 250 specially designed pieces of origami paper, so you can start making your very own marine habitat right away.', '/img/origami-sea-animals.jpg', 'origami-sea-animals-paper-block-plus-64-page-book', 349000, 15, 1, 0),
(59, 'The Simple Art of Japanese Origami: 24 unique step-by-step projects', 'The Simple Art of Japanese Origami: 24 unique step-by-step projects\n\nDiscover TRUE JAPANESE DESIGN with 24 BEAUTIFUL paper projects, designed by BESTSELLING author Mari Ono, with 50 sheets of origami paper included.\n\nIDEAL FOR BEGINNNERS: each project features clear STEP-BY-STEP images and EASY-TO-FOLLOW instructions.\n\nTokyo-born Mari Ono introduces you to the top Japanese origami techniques, teaching you how to understand and use paper authentically to make beautiful gifts, decorations, and more. Plus, the 50 pieces of gorgeous origami paper included mean you can get started right away.\n\nThe projects range from traditional ideas to more contemporary designs. Give a card embellished with symbols of love and luck for a special occasion, fill a vase with pretty paper irises to decorate your home, or bring the paper to life by folding a sweet rabbit or crane.\n\nIncluding professional tips and finishing touches, this is the book that will show you how to create truly authentic Japanese papercrafts using the best paper designs from the modern East.', '/img/the-simple-art-of-japanese-origami.jpg', 'the-simple-art-of-japanese-origami-24-unique-step-by-step-projects', 479000, 15, 1, 0),
(60, 'Cosy Colouring Poster Art Mini Moments', 'Cosy Colouring Poster Art Mini Moments\n\nNot every moment has to be big to be special, sometimes it’s the little moments that make life most joyful! Cosy Colouring: Mini Moments is a celebration of the everyday where every corner holds a charming moment waiting to be discovered. With 20 tear-away pages, it’s the perfect way to unwind as you colour your way to cosy bliss!\n\n• Includes 20 tear-away pages of cosy art to colour.', '/img/cosy-colouring-poster-art-mini-moments.jpg', 'cosy-colouring-poster-art-mini-moments', 179000, 15, 1, 0),
(61, 'Perfect Puzzles Word Search 2', 'Perfect Puzzles Word Search 2\n\nThere’s nothing like a good old-fashioned puzzle to give you a sense of achievement in just a few minutes. This Perfect Puzzles Word Search book is packed with over 150 word searches that’ll have you puzzling away for hours! It’s the perfect way to take a break from the screen and stimulate your brain!', '/img/perfect-puzzles-word-search-2.png', 'perfect-puzzles-word-search-2', 139000, 15, 1, 0),
(62, 'Kaleidoscope Colouring Kit Capybaras', 'Kaleidoscope Colouring Kit Capybaras\n\nCosy up to your capybara buddies with this colouring and activity book! Four coloured markers are available to fill up the 32 colouring and activity pages full of cuddly capybara cuteness!', '/img/kaleidoscope-colouring-kit-capybaras.jpg', 'kaleidoscope-colouring-kit-capybaras', 209000, 15, 1, 0),
(63, 'Từ Nhà Sáng Lập Đến Người Kiến Tạo Di Sản', 'Từ Nhà Sáng Lập Đến Người Kiến Tạo Di Sản - 50 Bài Học Đột Phá Dành Cho Nhà Lãnh Đạo Sau Khởi Nghiệp\n\n\"Làm người sáng lập đã khó. Từ người sáng lập trở thành nhà lãnh đạo xuất sắc càng khó hơn.\". Đó là sự đúc kết đầy thấu cảm của Simon Court – chuyên gia huấn luyện lãnh đạo với hơn 25 năm kinh nghiệm đồng hành cùng các \"kỳ lân\" tỷ đô. Cuốn sách “Từ nhà sáng lập đến người kiến tạo di sản” là bản lộ trình dành cho những ai đang muốn thoát khỏi sự hỗn loạn để xây dựng một doanh nghiệp vĩ đại và bền vững.\n\nNHỮNG ĐIỂM NỔI BẬT\n\n- Giải mã bước chuyển mình từ \"Trí thông minh linh hoạt\" sang \"Trí thông minh kết tinh\": Sách phân tích sâu sắc quá trình chuyển đổi tư duy của nhà lãnh đạo – từ việc dùng sự nhạy bén, tư duy nhanh để sinh tồn giai đoạn đầu sang việc vận dụng kinh nghiệm tích lũy để đặt ra những câu hỏi đúng nhằm định hướng tổ chức.\n\n- Chiến lược thoát khỏi \"Cái bẫy của nhà sáng lập\": Cung cấp các phương pháp thực tiễn để nhà sáng lập không trở thành điểm nghẽn của chính doanh nghiệp mình, giúp tổ chức vận hành chuyên nghiệp mà không cần sự can thiệp trực tiếp vào mọi chi tiết nhỏ.\n\n- Đúc kết từ những câu chuyện thành công \"Kỳ lân\" thực tế: Những bài học không dựa trên lý thuyết suông mà được kiểm chứng qua quá trình biến Miniclip và Tipico thành những doanh nghiệp tỷ đô, với những chuyển biến thực tế về chiến lược, văn hóa và đội ngũ lãnh đạo.', '/img/tu-nha-sang-lap-den-nguoi-kien-tao-di-san.jpg', 'tu-nha-sang-lap-den-nguoi-kien-tao-di-san', 259000, 14, 1, 0),
(64, 'Quản Trị Kinh Doanh Hiện Đại', 'Quản Trị Kinh Doanh Hiện Đại\nĐược mệnh danh là \"cuốn sách gối đầu giường\" trong ngành kinh doanh, \"Quản trị Kinh doanh Hiện đại\" (Understanding Business) đáp ứng mọi phương thức giảng dạy và mục tiêu học tập. Với nội dung chi tiết, đa dạng và bắt kịp những thay đổi mới nhất của thị trường, đây được coi là \"Tiêu chuẩn Vàng\" trong các nguồn tài liệu giảng dạy kinh doanh toàn cầu.\n\nTại sao cuốn sách này là lựa chọn hàng đầu?\n\n- Dành cho Sinh viên: Với lối trình bày cực kỳ dễ đọc, cuốn sách \"Quản trị Kinh doanh Hiện đại\" diễn giải những lý thuyết khô khan thành những bài học sinh động qua các ví dụ thực tế và gương doanh nhân điển hình. Đặc biệt, sách còn hướng dẫn sinh viên cách chuẩn bị cho sự nghiệp lâu dài, từ việc quản lý thời gian đến việc tận dụng các nguồn tài nguyên học tập hiệu quả.\n\n- Dành cho Giảng viên: Nội dung sách được cập nhật định kỳ dựa trên phản hồi từ chính các giảng viên và sinh viên, đảm bảo tính liên kết chặt chẽ giữa các khái niệm trong chương với các tài liệu bổ trợ, giúp tối ưu hóa quy trình giảng dạy và đánh giá.\n\n- Dành cho Nhà quản lý: Những quan sát sắc bén về sự khác biệt giữa mô hình kinh doanh Mỹ và các quốc gia khác (như Trung Quốc) trong cuốn sách \"Quản trị Kinh doanh Hiện đại\", cùng những tranh luận về tư duy diễn dịch và quy nạp, mang lại góc nhìn đa chiều cho các quyết định quản trị.', '/img/quan-tri-kinh-doanh-hien-dai.jpg', 'quan-tri-kinh-doanh-hien-dai', 680000, 14, 1, 0),
(69, 'Uy Thế Lượng Tử - Quantum Supremacy', 'Cuốn sách giải thích vì sao máy tính lượng tử có thể đạt đến \"sự tối thượng\", tức khả năng xử lý những tác vụ mà máy tính cổ điển, dù mạnh mẽ đến đâu, cũng không thể giải được trong thời gian hợp lý.\nKaku cho thấy cách máy tính lượng tử sẽ mô phỏng phân tử ở cấp độ lượng tử, từ đó tăng tốc quá trình phát triển thuốc, vật liệu siêu dẫn, và thúc đẩy AI tiến hóa mạnh mẽ hơn bao giờ hết\nCuốn sách đào sâu vào khía cạnh an ninh mạng, nơi công nghệ lượng tử có thể phá vỡ mã hóa hiện tại chỉ trong vài giây, nhưng đồng thời cũng mở ra giải pháp mới: mã hóa lượng tử an toàn tuyệt đối.\nTriết lý và thách thức kỹ thuật: Liệu chúng ta đã sẵn sàng?', '/img/Sachluongtu.jpg', 'uy-the-luong-tu-quantum-supremacy', 172000, 15, 1, 0),
(68, 'Những câu hỏi kinh tế ra tiền', 'Sách Kinh Tế Học Vui Nhộn - Những Câu Hỏi Kinh Tế Ra Tiền', '/img/nhung-cau-hoi-kinh-te-ra-tien.jpg', 'nhung-cau-hoi-kinh-te-ra-tien', 75000, 14, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Sách Giáo Khoa'),
(11, 'Truyện - Tiểu Thuyết'),
(3, 'Sức khỏe'),
(12, 'Kỹ năng - Phát Triển Bản Thân'),
(14, 'Sách Kinh Tế - Kinh Doanh'),
(15, 'Sách Khác');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `customer`, `phone`, `address`, `total`) VALUES
(1, '2026-05-12 00:00:00', 'zxc', '0903077717', '227 Nguyễn Văn Cừ, Quận 5', 198000),
(2, '2026-05-13 15:21:05', 'Trần văn Toàn', '0903077727', '225 Nguyễn Văn Cừ, Quận 5', 278000),
(3, '2026-05-13 15:22:00', 'Nguyễn Anh Tú', '0903077737', '21 Nguyễn Cư Trinh, Quận 1', 312000),
(4, '2026-05-13 15:23:42', 'Huỳnh Như', '0903077765', '21 Lê Hồng Phong, quận 10', 148000),
(5, '2026-05-13 15:25:00', 'Đoàn Cường', '0912251117', '02 Hùng Vương, quận 5', 519000),
(6, '2026-05-14 11:22:12', 'Trần hoàng Anh', '0987545622', '21 Võ Văn Ngân, Tp. Thủ Đức', 67000);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `book_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 2, 11, 18000, 198000),
(2, 2, 46, 1, 229000, 229000),
(3, 2, 30, 1, 49000, 49000),
(4, 3, 3, 1, 92000, 92000),
(5, 3, 24, 1, 190000, 190000),
(6, 3, 29, 1, 30000, 30000),
(7, 4, 26, 1, 11000, 11000),
(8, 4, 28, 1, 99000, 99000),
(9, 4, 29, 1, 30000, 30000),
(10, 4, 34, 1, 8000, 8000),
(11, 5, 43, 1, 59000, 59000),
(12, 5, 44, 1, 115000, 115000),
(13, 5, 45, 1, 155000, 155000),
(14, 5, 24, 1, 190000, 190000),
(15, 6, 2, 1, 18000, 18000),
(16, 6, 30, 1, 49000, 49000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `state`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
