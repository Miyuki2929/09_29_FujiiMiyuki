-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-14 18:13:29
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_d06_11`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `customer_table`
--

CREATE TABLE `customer_table` (
  `id` int(12) NOT NULL,
  `namae` varchar(128) NOT NULL,
  `jyusho` varchar(128) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `tel` varchar(128) NOT NULL,
  `birthday` varchar(128) NOT NULL,
  `age` varchar(3) NOT NULL,
  `bloodtype` varchar(2) NOT NULL,
  `seibetu` varchar(3) NOT NULL,
  `trb1` varchar(128) DEFAULT NULL,
  `care1` varchar(128) DEFAULT NULL,
  `care2` varchar(128) DEFAULT NULL,
  `care3` varchar(128) DEFAULT NULL,
  `exp1` varchar(128) NOT NULL,
  `exp2` varchar(8) NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `customer_table`
--

INSERT INTO `customer_table` (`id`, `namae`, `jyusho`, `date`, `created_at`, `updated_at`, `tel`, `birthday`, `age`, `bloodtype`, `seibetu`, `trb1`, `care1`, `care2`, `care3`, `exp1`, `exp2`, `detail`, `is_admin`, `is_deleted`) VALUES
(23, 'ゆみえ', '福岡市', '2020-06-30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '1987.4.22', '33', 'AB', '女', '肌荒れ', '洗顔', 'ベース', NULL, 'あり', 'あり', '', 0, 0),
(24, 'きたじま', '東京都', '2020-07-01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '28', 'O', '女', 'しわ', '化粧水', 'クッションファンデ', '化粧水', 'あり', 'あり', '', 0, 0),
(25, 'aaa', '山口県', '2020-07-14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '19880525', '25', 'AB', '女', '肌荒れ', '乳液', '固形ファンデ', '乳液', 'あり', 'あり', '', 0, 0),
(26, 'ゆみえん', '東京都', '2020-07-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '19880526', '35', 'B', '女', '肌荒れ,たるみ', '乳液', '固形ファンデ', '乳液,パックなど', 'あり', 'あり', '', 0, 0),
(27, 'aaa', '山口', '2020-07-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '1987.4.21', '35', 'AB', '女', '肌荒れ,たるみ,毛穴の開き', '洗顔,美容液', 'リキッドファンデ,パウダー', '洗顔,美容液', 'あり', 'あり', '', 0, 0),
(28, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', 0, 0),
(29, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', 0, 0),
(30, 'ゆみえん', '福岡市', '2020-07-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '09011112222', '19880525', '33', 'B', '男', '肌荒れ,にきび,たるみ,アトピー', '洗顔,化粧水', 'パウダー', '洗顔,化粧水', 'ない', 'ない', '', 0, 0),
(31, 'あいうえお', '東京都', '2020-07-02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '090‐3333‐4444', '5.23', '30', 'AB', '女', '肌荒れ,たるみ,毛穴の開き', '洗顔,化粧水,美容液', 'ベース,クッションファンデ,パウダー', '化粧水', 'あり', 'あり', '', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(2, 11, 33, '2020-07-11 15:17:57'),
(4, 11, 36, '2020-07-11 16:01:56'),
(5, 11, 37, '2020-07-11 16:01:57'),
(6, 11, 38, '2020-07-11 16:01:58'),
(7, 11, 39, '2020-07-11 16:01:58'),
(8, 11, 41, '2020-07-11 16:01:59'),
(9, 11, 42, '2020-07-11 16:02:00'),
(10, 11, 43, '2020-07-11 16:02:00'),
(14, 11, 29, '2020-07-11 16:32:07'),
(15, 11, 30, '2020-07-11 16:32:08'),
(19, 11, 28, '2020-07-11 16:33:06'),
(21, 11, 27, '2020-07-11 16:33:42'),
(23, 1, 30, '2020-07-11 16:35:58'),
(24, 1, 34, '2020-07-11 16:36:16'),
(25, 11, 45, '2020-07-11 16:37:12');

-- --------------------------------------------------------

--
-- テーブルの構造 `news_table`
--

CREATE TABLE `news_table` (
  `id` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `category` varchar(128) NOT NULL,
  `url` varchar(256) NOT NULL,
  `username` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `news_table`
--

INSERT INTO `news_table` (`id`, `title`, `category`, `url`, `username`, `comment`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'たいとる', 'かてごり', 'ゆーあーるえる', 'ゆーざーねーむ', 'こめんとください', '2020-07-15 00:36:50', '2020-07-15 00:36:50', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `staff_table`
--

CREATE TABLE `staff_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` varchar(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `staff_table`
--

INSERT INTO `staff_table` (`id`, `name`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'YUMIE', 'YUMIE', '0', 0, '2020-07-08 01:15:56', '2020-07-08 01:15:56'),
(2, 'ゆみえ', '1234', '1', 0, '2020-07-09 01:24:49', '2020-07-09 01:24:49'),
(3, 'aaa', 'YUMIE', '0', 0, '2020-07-09 01:40:52', '2020-07-09 01:40:52'),
(4, 'bbb', '123', '0', 0, '2020-07-09 01:41:42', '2020-07-09 01:41:42'),
(5, 'ccc', '9876', '0', 0, '2020-07-09 19:54:59', '2020-07-09 19:54:59'),
(6, 'ggg', '1234', '0', 0, '2020-07-09 20:19:10', '2020-07-09 20:19:10'),
(7, 'iiii', '1234', '0', 0, '2020-07-09 20:51:46', '2020-07-09 20:51:46'),
(8, 'ゆみえ', 'のびた', '1', 0, '2020-07-09 21:28:30', '2020-07-09 21:28:30'),
(9, 'こんにちわ', 'エステティシャン', '0', 0, '2020-07-09 21:33:15', '2020-07-09 21:33:15'),
(10, 'こんにちわ', 'エステ', '0', 0, '2020-07-09 21:34:56', '2020-07-09 21:34:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(27, 'ニンジンをかう', '2020-06-26', '2020-06-27 16:43:08', '2020-07-07 00:21:08'),
(28, '豆乳を2本', '2020-06-28', '2020-06-27 16:43:22', '2020-06-27 16:43:22'),
(29, '誕生日プレゼントを買う', '2020-06-27', '2020-06-27 16:43:48', '2020-06-27 16:43:48'),
(30, 'ヨガの問い合わせ', '2020-06-29', '2020-06-27 16:44:01', '2020-06-27 16:44:01'),
(32, 'aaa', '2020-06-28', '2020-06-28 13:35:21', '2020-06-28 13:35:21'),
(33, 'aiueo', '2020-06-28', '2020-06-28 13:36:24', '2020-06-28 13:36:24'),
(34, '動作チェック', '2020-06-28', '2020-07-01 19:53:05', '2020-07-01 19:53:05'),
(35, 'aiueo', '2020-07-02', '2020-07-02 00:27:31', '2020-07-02 00:27:31'),
(36, 'あいうえお', '2020-07-04', '2020-07-04 14:41:10', '2020-07-04 14:41:10'),
(37, 'aiueo', '2020-07-04', '2020-07-04 17:21:19', '2020-07-04 17:21:19'),
(38, 'aiueo', '2020-07-07', '2020-07-07 00:20:44', '2020-07-07 00:20:44'),
(39, 'あいうえお', '2020-07-07', '2020-07-07 00:23:01', '2020-07-07 00:23:01'),
(40, 'yyy', '2020-07-07', '2020-07-07 01:22:45', '2020-07-07 01:22:45'),
(41, 'aaa', '2020-07-09', '2020-07-09 00:05:51', '2020-07-09 00:05:51'),
(42, 'aaa', '2020-07-09', '2020-07-09 00:06:18', '2020-07-09 00:06:18'),
(43, 'あいうえお', '2020-07-09', '2020-07-09 00:10:16', '2020-07-09 00:10:16'),
(44, 'aiueo', '2020-07-11', '2020-07-11 14:59:25', '2020-07-11 14:59:25'),
(45, 'たこやきを買う', '2020-07-11', '2020-07-11 16:36:57', '2020-07-11 16:36:57');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '北島由美恵', 'aiueo', 0, 0, '2020-07-02 21:59:15', '2020-07-02 21:59:15'),
(3, 'KITAJIMA', 'qwert', 0, 0, '2020-07-02 22:07:58', '2020-07-02 22:07:58'),
(4, 'yumie.k', 'poiuy', 0, 0, '2020-07-02 22:08:59', '2020-07-02 22:08:59'),
(5, 'ゆみえん', '988765', 0, 0, '2020-07-02 22:09:47', '2020-07-02 22:09:47'),
(7, 'YU', '987554', 0, 0, '2020-07-02 22:26:27', '2020-07-02 22:26:27'),
(8, 'KITAYU', 'nyuih', 0, 0, '2020-07-02 22:27:39', '2020-07-02 22:27:39'),
(9, 'KONI', 'sdfgh', 0, 0, '2020-07-02 22:28:43', '2020-07-02 22:28:43'),
(10, 'EIMYU', 'skolgf', 0, 0, '2020-07-02 22:29:39', '2020-07-02 22:29:39'),
(11, 'testuser', '123456', 0, 0, '2020-07-04 15:49:19', '2020-07-04 15:49:19'),
(12, 'ppppp', 'y9u7m2i2', 0, 0, '2020-07-04 17:11:57', '2020-07-04 17:11:57'),
(13, 'ゆみえきたじま', '98765', 0, 0, '2020-07-04 17:14:26', '2020-07-04 17:14:26'),
(14, 'こんにちわ', '00000', 0, 0, '2020-07-07 00:14:15', '2020-07-07 00:14:15'),
(15, 'hello', 'world', 0, 0, '2020-07-07 00:49:58', '2020-07-07 00:49:58'),
(16, 'どらえもん', 'のびた', 0, 0, '2020-07-07 23:38:33', '2020-07-07 23:38:33'),
(17, '', '', 0, 0, '2020-07-07 23:59:01', '2020-07-07 23:59:01'),
(18, 'どらえもん', '9999', 0, 0, '2020-07-09 21:39:07', '2020-07-09 21:39:07'),
(19, 'どらえもん', '080808', 0, 0, '2020-07-09 21:39:25', '2020-07-09 21:39:25'),
(20, '北島由美恵', 'YUMIE', 0, 0, '2020-07-09 21:40:04', '2020-07-09 21:40:04'),
(21, '北島由美恵', '1234', 0, 0, '2020-07-11 13:23:46', '2020-07-11 13:23:46');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `customer_table`
--
ALTER TABLE `customer_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `news_table`
--
ALTER TABLE `news_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `staff_table`
--
ALTER TABLE `staff_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `customer_table`
--
ALTER TABLE `customer_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- テーブルのAUTO_INCREMENT `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- テーブルのAUTO_INCREMENT `news_table`
--
ALTER TABLE `news_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `staff_table`
--
ALTER TABLE `staff_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- テーブルのAUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
