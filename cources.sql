-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 29 2015 г., 18:39
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cources`
--

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `studentId` int(11) NOT NULL,
  `predmet` varchar(300) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`studentId`, `predmet`, `mark`) VALUES
(1, 'Русский язык', 4),
(1, 'Математика', 5),
(1, 'Информатика', 4),
(2, 'География', 5),
(2, 'Русский язык', 4),
(1, 'Русский язык', 4),
(1, 'Математика', 5),
(1, 'Информатика', 4),
(2, 'География', 5),
(2, 'Русский язык', 4),
(3, 'Русский язык', 3),
(4, 'Русский язык', 5),
(5, 'Русский язык', 4),
(3, 'Математика', 4),
(4, 'Математика', 4),
(5, 'Математика', 4),
(3, 'Информатика', 4),
(4, 'Информатика', 4),
(5, 'Информатика', 5),
(3, 'География', 3),
(4, 'География', 3),
(5, 'География', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `login` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `login`, `email`) VALUES
(1, 'Вася', '123456', ''),
(2, 'Петя', '123456', ''),
(3, 'Таня', 'Tanya', 'tanya@ya.ru'),
(4, 'Aлексей', 'Leha', 'leha@ya.ru'),
(5, 'Надя', 'Nadya', 'nadya@ya.ru');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
