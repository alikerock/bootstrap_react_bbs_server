-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 24-11-07 01:24
-- 서버 버전: 10.4.32-MariaDB
-- PHP 버전: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `react_bbs`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `BOARD_ID` int(11) NOT NULL,
  `BOARD_TITLE` varchar(30) NOT NULL,
  `BOARD_CONTENT` varchar(500) NOT NULL,
  `IMAGE_PATH` varchar(100) DEFAULT NULL,
  `REGISTER_ID` varchar(20) NOT NULL,
  `REGISTER_DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`BOARD_ID`, `BOARD_TITLE`, `BOARD_CONTENT`, `IMAGE_PATH`, `REGISTER_ID`, `REGISTER_DATE`) VALUES
(1, '제목1 - 수정4', '내용1- 수정4', NULL, 'admin', '2024-11-04 12:15:21'),
(5, '제목2- 수정2', '내용2 - 수정2', NULL, 'admin', '2024-11-05 12:38:10'),
(9, '이미지 테스트1', '이미지 테스트1', 'uploads\\image-1730878887906-921191073', 'admin', '2024-11-06 16:41:27'),
(10, '이미지 테스트2', '이미지 테스트2', 'uploads\\1730879421971-2scheduler.png', 'admin', '2024-11-06 16:50:21');

-- --------------------------------------------------------

--
-- 테이블 구조 `requested`
--

CREATE TABLE `requested` (
  `rowno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 테이블의 덤프 데이터 `requested`
--

INSERT INTO `requested` (`rowno`) VALUES
(1),
(1),
(1),
(1),
(1),
(1);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`BOARD_ID`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `BOARD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
