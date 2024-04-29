-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 29 2024 г., 14:30
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mychat_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` varchar(60) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `files` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `received` int(11) NOT NULL DEFAULT 0,
  `deleted_sender` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_receiver` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `msgid`, `sender`, `receiver`, `message`, `files`, `date`, `seen`, `received`, `deleted_sender`, `deleted_receiver`) VALUES
(1, 'LczrXdeexFT73YptSfIoLjDUyfHMR8Ml7KX17I', 5383826290671890, 1148711, 'привет', NULL, '2024-04-29 14:28:42', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `userid`, `username`, `email`, `gender`, `password`, `date`, `image`) VALUES
(1, 239152703, 'Eathorne', 'eathorne@yahoo.com', 'Male', 'password', '2020-12-25 15:31:32', 'uploads/afro-beautiful-black-women-fashion-Favim.com-3980589.jpg'),
(2, 89701890839882223, 'Mary', 'mary@yahoo.com', 'Female', 'password', '2020-12-25 15:31:49', NULL),
(3, 1148711, 'John', 'john@yahoo.com', 'Male', 'password', '2020-12-25 15:32:10', 'uploads/handsome-adult-black-man-successful-business-african-person-117063782.jpg'),
(4, 5383826290671890, 'alex ', 'al_x3@mail.ru', 'Male', 'Smoke12345', '2024-04-27 14:37:56', 'uploads/IMG_2629.JPG'),
(5, 917431, 'maks', 'al_2x3@mail.ru', 'Male', 'Smoke12345', '2024-04-27 15:31:50', 'uploads/IMG_4207.JPG');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `date` (`date`),
  ADD KEY `deleted_sender` (`deleted_sender`),
  ADD KEY `deleted_receiver` (`deleted_receiver`),
  ADD KEY `seen` (`seen`),
  ADD KEY `msgid` (`msgid`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `gender` (`gender`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
