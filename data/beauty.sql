-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-12 22:25:59
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--

-- --------------------------------------------------------
SET NAMES UTF8;
DROP DATABASE IF EXISTS beauty;
CREATE DATABASE beauty CHARSET=UTF8;
USE beauty;

--
-- 表的结构 `be_product_details`
--

CREATE TABLE `be_product_details` (
  `pid` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_product_details`
--

INSERT INTO `be_product_details` (`pid`, `title`, `content`) VALUES
(1, '玻尿酸', '五官调整,玻尿酸去黑眼圈,玻尿酸填充卧蚕,玻尿酸填充泪沟,玻尿酸隆鼻,玻尿酸丰唇,玻尿酸丰耳垂,玻尿酸垫眉弓'),
(2, '肉毒素', '肉毒素缩鼻头,肉毒素瘦小腿,肉毒素瘦肩肌,肉毒素治疗多汗,肉毒素瘦脸,肉毒素去鱼尾纹,肉毒素去抬头纹,肉毒素去川字纹,肉毒素去法令纹,肉毒素去木偶纹');

-- --------------------------------------------------------

--
-- 表的结构 `be_user`
--

CREATE TABLE `be_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `emial` varchar(64) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_user`
--

INSERT INTO `be_user` (`uid`, `uname`, `upwd`, `emial`, `phone`, `avatar`, `gender`) VALUES
(1, 'dingding', '123456', '123@qq.com', '123555666', 'default.img', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be_product_details`
--
ALTER TABLE `be_product_details`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `be_user`
--
ALTER TABLE `be_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--

--
-- 使用表AUTO_INCREMENT `be_product_details`
--
ALTER TABLE `be_product_details`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `be_user`
--
ALTER TABLE `be_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
