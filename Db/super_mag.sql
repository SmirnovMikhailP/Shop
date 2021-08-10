-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 10 2021 г., 14:18
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `super_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(1, 'Рубашки', 1, 1),
(2, 'Платья', 5, 1),
(3, 'Футболки', 3, 1),
(4, 'Майки', 4, 1),
(5, 'Сумки', 2, 1),
(6, 'Чемоданы', 6, 1),
(7, 'Брюки', 7, 1),
(8, 'Пиджаки', 8, 1),
(9, 'Галстуки', 9, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `code` int NOT NULL,
  `price` float NOT NULL,
  `availability` int NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_new` int NOT NULL DEFAULT '0',
  `is_recommended` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Polo', 1, 1, 777, 25, 'Easy Polo Black Edition', '', 'Easy Polo Black Edition', 0, 1, 1),
(2, 'A-A Awesome Apparel by Ksenia Avakyan', 1, 1, 725, 1, 'A-A Awesome Apparel by Ksenia Avakyan', 'A-A Awesome Apparel by Ksenia Avakyan', 'A-A Awesome Apparel by Ksenia Avakyan', 0, 0, 1),
(3, 'AM One', 1, 1, 1526, 1, 'AM One', 'AM One', 'AM One', 1, 1, 1),
(4, 'Liberty in Sky', 1, 1, 645, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 1, 1, 1),
(5, 'Olesa Chugunova', 2, 1, 2034, 1, 'Olesa Chugunova', 'Olesa Chugunova', 'Olesa Chugunova', 0, 0, 1),
(6, 'Liberty in Sky', 1, 1, 585, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1),
(7, 'Liberty in Sky', 1, 1, 485, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 1, 1, 1),
(8, 'Liberty in Sky', 1, 1, 256, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 1, 1, 1),
(9, 'Liberty in Sky', 1, 1, 739, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1),
(10, 'Liberty in Sky', 1, 1, 865, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 1, 1, 1),
(11, 'Liberty in Sky', 1, 1, 752, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1),
(12, 'Liberty in Sky', 1, 1, 742, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1),
(13, 'Liberty in Sky', 1, 1, 452, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 1, 1, 1),
(14, 'Liberty in Sky', 1, 1, 893, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1),
(15, 'Liberty in Sky', 1, 1, 383, 1, 'Liberty in Sky', 'Liberty in Sky', 'Liberty in Sky', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Михаил Смирнов', 'wp_dev_admin@mail.ru', '123456'),
(2, 'Александр', 'alex@mail.com', '111111');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
