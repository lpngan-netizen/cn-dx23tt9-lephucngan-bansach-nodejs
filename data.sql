-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: banhang
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (2,'Tự nhiên và xã hội 3','Tự nhiên và xã hội 3','/img/2.jpg','tu-nhien-va-xa-hoi-3',18000,1),(3,'Takenote Toán 4','TAKENOTE TOÁN LỚP 4 là cuốn sổ tay học tập lý tưởng, giúp học sinh lớp 4:\n\n- Nắm chắc kiến thức trọng tâm\n\n- Tự tin làm bài – Dễ dàng đạt điểm cao môn Toán\n\nCuốn sách được biên soạn bởi đội ngũ giáo viên chuyên môn, dựa trên chương trình SGK mới nhất, kết hợp trình bày sinh động, hệ thống hóa kiến thức một cách logic – phù hợp với tâm lý và khả năng tiếp thu của học sinh tiểu học.','/img/134ffa257b04a05971033ab974b0becb.jpg','takenote-toan-4',92000,1),(1,'Combo Ăn chuẩn ít bệnh 1 + 2','Ăn chuẩn ít bệnh là tác phẩm tổng kết của nguyên trưởng khoa dinh dưỡng bệnh viện An Trinh từ kinh nghiệm mắc bệnh của bản thân tác giả và hơn 100.000 ca bệnh lâm sàng trong quá trình công tác tại bệnh viện.','/img/2a9e007c868aac50f5f55dd9925b360d.jpg','combo-an-chuan-it-benh-1-2',309000,13),(24,'Vì Sao Bạn Chưa Giàu? - Cẩm Nang Tài Chính Giúp Bạn Tiêu Xài Đúng Cách, Tiết Kiệm Khôn Ngoan','Cuốn sách tài chính hoạt hình giúp bạn vượt qua cám dỗ chi tiêu bằng những mẹo vặt hằng ngày, xua tan âu lo và dẫn lối đến sự giàu có.\n\nCuốn sách giúp bạn vượt qua sự trì hoãn tài chính và bắt đầu quản lý tiền bằng những mẹo nhỏ đơn giản trong cuộc sống hằng ngày:\n\nNhìn ra những thói quen chi tiêu vô thức khiến tiền luôn “không cánh mà bay”\nBớt né tránh chuyện tiền bạc và bắt đầu quản lý tiền theo cách dễ áp dụng, không áp lực\nTừng bước xây dựng kế hoạch chi tiêu – tiết kiệm – đầu tư phù hợp với','/img/4244357b741ff27c6176b7e6f457426f.png','vi-sao-ban-chua-giau-cam-nang-tai-chinh-giup-ban-tieu-xai-dung-cach-tiet-kiem-khon-ngoan',190000,12),(25,'Lá Hoa Trên Đường Về - Sa Môn Thích Pháp Hoà','Trong quá trình thực hiện hai quyển sách Chia sẻ từ trái tim và Con đường chuyển hóa của thầy Thích Pháp Hòa, ban biên tập nhận ra rằng có những thắc mắc của đại chúng xoay quanh các vấn đề rất thiết thực trong đời sống mà phạm vi các bài pháp thoại khó đáp ứng được. Do đó, chúng tôi đã quyết định thực hiện quyển sách thứ ba như một tuyển tập các câu vấn đáp giữa thầy Pháp Hòa với đại chúng trong các buổi giảng pháp của thầy suốt mấy mươi năm qua.','/img/c0e86ae79a376559959d756d577f2aab.jpeg','la-hoa-tren-duong-ve-sa-mon-thich-phap-hoa',105000,13),(26,'Sách Tô Màu Phát Triển Trí Não Bộ Cho Bé 1-5 Tuổi','Bố mẹ biết chữ, trẻ dưới 18 tháng đã có khả năng chuyển tải suy nghĩ và cảm xúc bằng hình ảnh có màu sắc. Tô màu giúp trẻ rèn kỹ năng điều khiển vận động của đôi tay, tăng khả năng quan sát, được sáng tạo và tưởng tượng một cách tự nhiên, được luyện khả năng tập trung và kiên trì, tăng khả năng thưởng thức cái đẹp trong cuộc sống. Với mục đích tăng cường đa kỹ năng, bộ sách tô màu sáng tạo này được thiết kế để đem đến những bài học thực sự bổ ích cho các bé!','/img/cf3cc397d6db05e5b41677e0db309d91.jpg','sach-to-mau-phat-trien-tri-nao-bo-cho-be-1-5-tuoi',11000,1),(27,'Thương Tiến Tửu','Vận mệnh đã muốn ta suốt kiếp chôn chân tại chốn này, nhưng số mệnh ấy nào phải con đường ta lựa chọn. Cát vàng chôn vùi huynh đệ ta, ta không muốn tiếp tục thần phục số mệnh hư vô nữa. Thánh chỉ không cứu được sĩ tốt của ta, triều đình không nuôi nổi chiến mã của ta, ta không muốn liều mạng vì những thứ đó nữa. Ta muốn băng qua núi xanh kia, ta muốn đánh một trận, vì chính mình','/img/765d85f5afe39b8e8f5c351e7f0ac430.png','thuong-tien-tuu',118000,11),(28,'Cơ Thể Ta Đã Hai Triệu Năm - Giải Mã Các Căn Bệnh Thời Hiện Đại','Những người nguyên thủy vốn cầm dao và cung đi săn bắn. Để tăng hiệu quả săn bắn, huyết áp của họ tăng lên như một cách thích nghi sinh tồn. Thế nhưng, người hiện đại hầu như không phải chạy nhiều, họ không có lý do gì cần phải tăng huyết áp cả. Vậy tại sao huyết áp vẫn cứ tăng cao? Việc tăng huyết áp có phù hợp với sự sinh tồn của người hiện đại không? Hay chúng ta bị tăng huyết áp lên chẳng để làm gì cả?','/img/a58be739890f5d5db528dda4e6333a7f.jpg','co-the-ta-da-hai-trieu-nam-giai-ma-cac-can-benh-thoi-hien-dai',99000,13),(29,'Thám từ lừng danh Conan','','/img/conan.jpg','tham-tu-lung-danh-conan',30000,3);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sách giáo khoa'),(11,'Truyện tiên hiệp'),(3,'Truyện trinh thám'),(12,'Linh tinh'),(13,'Giáo dục');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` tinyint DEFAULT NULL,
  `admin` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Admin',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-07 14:43:19
