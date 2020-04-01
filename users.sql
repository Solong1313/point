-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 01 2020 г., 19:49
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` int(30) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`id`, `name`, `date`, `text`) VALUES
(1, 'Alex', 2147483647, '11'),
(2, 'John', 2147483647, '12'),
(5, 'name', 0, 'ws'),
(70, '', 1584547172, ''),
(71, 'куа', 1584548194, 'а'),
(72, 'прарпа', 1584548241, 'прара'),
(73, 'i', 1584548408, 'i'),
(74, 'i', 1584548418, 'i'),
(75, 'qwe', 1584548645, 'qew'),
(76, 'ывп', 1584548829, 'ыпва'),
(77, 'cv', 1584549375, 'vf'),
(78, 'sda', 1584550663, 'sda'),
(79, 'vkarmanedvaTT', 1584812517, 'g'),
(80, 'вап', 1584823763, 'впа');

-- --------------------------------------------------------

--
-- Структура таблицы `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Mail_Address` varchar(255) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `register`
--

INSERT INTO `register` (`id`, `Name`, `Mail_Address`, `Password`) VALUES
(1, 'qwe', 'qweqwe@gmail.com', 123),
(27, 'vkarmanedvaTT', 'linkorn@gmail.com', 123),
(47, 'qweqw', 'linkorn@gmail.com', 123),
(48, 'sdfsd', 'linkorn@gmail.com', 321);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
