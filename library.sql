-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2021 at 07:05 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `arend`
--

CREATE TABLE `arend` (
  `ArendId` int(30) UNSIGNED NOT NULL,
  `BookId` int(30) UNSIGNED NOT NULL,
  `DateGive` date NOT NULL,
  `DateGiveAway` date NOT NULL,
  `Reader_ticket` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `arend`
--

INSERT INTO `arend` (`ArendId`, `BookId`, `DateGive`, `DateGiveAway`, `Reader_ticket`) VALUES
(1, 5, '2021-03-20', '2021-04-20', 1234),
(2, 6, '2021-03-12', '2021-04-12', 5678),
(3, 10, '2021-01-07', '2021-02-07', 9934);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AuthorId` int(30) UNSIGNED NOT NULL,
  `AuthorName` varchar(100) NOT NULL,
  `popularity` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AuthorId`, `AuthorName`, `popularity`) VALUES
(1, 'Достоевский Федор Михайлович', 3),
(2, 'Булгаков Михаил Афанасьевич', 1),
(3, 'Михаил Юрьевич Лермонтов', 8),
(4, 'Лев Николаевич Толстой', 9);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookId` int(30) UNSIGNED NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `WritingYear` int(100) UNSIGNED NOT NULL,
  `AuthorId` int(30) UNSIGNED NOT NULL,
  `Quantity` int(30) UNSIGNED NOT NULL,
  `OblojkaId` int(30) UNSIGNED NOT NULL,
  `IzdatelstvoId` int(30) UNSIGNED NOT NULL,
  `IzdatelstvoYear` int(30) UNSIGNED NOT NULL,
  `Reader_ticket` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `BookName`, `WritingYear`, `AuthorId`, `Quantity`, `OblojkaId`, `IzdatelstvoId`, `IzdatelstvoYear`, `Reader_ticket`) VALUES
(1, 'Преступление и наказание', 1866, 1, 21, 2, 3, 2008, 7788),
(2, 'Мастер и Маргарита', 1966, 2, 49, 1, 4, 2012, 1234),
(3, 'Герой нашего времени', 1840, 3, 14, 3, 1, 2018, 5678),
(4, 'Идиот', 1869, 1, 34, 1, 1, 1994, 9934),
(5, 'Братья Карамазовы', 1880, 1, 54, 3, 2, 1988, 4123),
(6, 'Собачье сердце', 1968, 2, 73, 3, 1, 2020, 1843),
(7, 'Белая гвардия', 1923, 2, 12, 2, 3, 1995, 1011),
(8, 'База данных', 1838, 3, 7, 3, 3, 2006, 1234),
(9, 'Смерть поэта', 1837, 3, 3, 1, 2, 2009, 7788),
(10, 'Анна Каренина', 1877, 4, 1, 2, 4, 2010, 5678);

-- --------------------------------------------------------

--
-- Table structure for table `izdatelstvo`
--

CREATE TABLE `izdatelstvo` (
  `IzdatelstvoId` int(30) UNSIGNED NOT NULL,
  `IzdatelstvoName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `izdatelstvo`
--

INSERT INTO `izdatelstvo` (`IzdatelstvoId`, `IzdatelstvoName`) VALUES
(1, 'Армада'),
(2, 'Аспект'),
(3, 'Феникс'),
(4, 'Эксмо');

-- --------------------------------------------------------

--
-- Table structure for table `oblojka`
--

CREATE TABLE `oblojka` (
  `OblojkaId` int(30) UNSIGNED NOT NULL,
  `TypeOblojka` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oblojka`
--

INSERT INTO `oblojka` (`OblojkaId`, `TypeOblojka`) VALUES
(1, 'Мягкая обложка'),
(2, 'Твердый переплет, суперобложка'),
(3, 'Твердый переплет');

-- --------------------------------------------------------

--
-- Table structure for table `readers`
--

CREATE TABLE `readers` (
  `Reader_ticket` int(10) UNSIGNED NOT NULL,
  `FIO` longtext NOT NULL,
  `Adress` longtext NOT NULL,
  `Number_Phone` bigint(11) UNSIGNED NOT NULL,
  `debt` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `readers`
--

INSERT INTO `readers` (`Reader_ticket`, `FIO`, `Adress`, `Number_Phone`, `debt`) VALUES
(1011, 'Шлеменко Виктор Петрович', 'Улица  Гафури', 89399397782, 7),
(1234, 'Кочарян Грант Арсенович', 'Улица Файзи', 89600447782, 0),
(1843, 'Александров Александр Александрович', 'Улица  Новая', 89340397782, 19),
(4123, 'Иванов Иван Иванович', 'Улица Космонавтов', 89603347782, 1),
(5678, 'Петров Петр Петрович', 'Улица Баумана', 89600397782, 5),
(7788, 'Фомичев Егор Егорович', 'Улица витязей', 89340397709, 12),
(9934, 'Николаенко Николай Николаевич', 'Улица Декабристов', 89340557709, 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arend`
--
ALTER TABLE `arend`
  ADD PRIMARY KEY (`ArendId`),
  ADD KEY `Reader_ticket` (`Reader_ticket`),
  ADD KEY `BookId` (`BookId`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorId`),
  ADD UNIQUE KEY `AuthorId` (`AuthorId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`),
  ADD KEY `AuthorId` (`AuthorId`),
  ADD KEY `OblojkaId` (`OblojkaId`),
  ADD KEY `IzdatelstvoId` (`IzdatelstvoId`),
  ADD KEY `IzdatelstvoId_2` (`IzdatelstvoId`),
  ADD KEY `Reader_ticket` (`Reader_ticket`);

--
-- Indexes for table `izdatelstvo`
--
ALTER TABLE `izdatelstvo`
  ADD PRIMARY KEY (`IzdatelstvoId`);

--
-- Indexes for table `oblojka`
--
ALTER TABLE `oblojka`
  ADD PRIMARY KEY (`OblojkaId`);

--
-- Indexes for table `readers`
--
ALTER TABLE `readers`
  ADD PRIMARY KEY (`Reader_ticket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arend`
--
ALTER TABLE `arend`
  ADD CONSTRAINT `arend_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`),
  ADD CONSTRAINT `arend_ibfk_2` FOREIGN KEY (`Reader_ticket`) REFERENCES `readers` (`Reader_ticket`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `author` (`AuthorId`),
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`OblojkaId`) REFERENCES `oblojka` (`OblojkaId`),
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`IzdatelstvoId`) REFERENCES `izdatelstvo` (`IzdatelstvoId`),
  ADD CONSTRAINT `book_ibfk_5` FOREIGN KEY (`Reader_ticket`) REFERENCES `readers` (`Reader_ticket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
