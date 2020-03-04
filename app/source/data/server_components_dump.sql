-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 03 2020 г., 16:53
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `server_components`
--

-- --------------------------------------------------------

--
-- Структура таблицы `base`
--

CREATE TABLE `base` (
  `base_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `cpu` varchar(45) NOT NULL,
  `ram` varchar(45) NOT NULL,
  `hdd` varchar(45) NOT NULL,
  `ssd` varchar(45) NOT NULL,
  `options` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `base`
--

INSERT INTO `base` (`base_id`, `name`, `description`, `subcategory`, `cpu`, `ram`, `hdd`, `ssd`, `options`, `price`, `term`, `link`) VALUES
(1, 'ASUS RS100-E9-PI2', '1U, 1xLGA1151, 4xDDR4 ECC, 2x3.5 inch / 4x2.5 inch SATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 250W Bronze, 380mm dpt', 'Стоечные (19 inch) 1 процессорные для процессоров E3', '1151', 'ECC', '3.5/2.5', 'M.2', 'forall', '440.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/RS100-E9-PI2/'),
(2, 'ASUS RS200-E9-PS2-F', '1U, 1xLGA1151, 4xDDR4 ECC, 2x2.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, VGA, 4xGbE, 250W Bronze, Front interfaces, 383mm dpt', 'Стоечные (19 inch) 1-процессорные для процессоров E3', '1151', 'ECC', '2.5', 'M.2/2.5', 'forall', '550.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/RS200-E9-PS2-F/'),
(3, 'ASUS RS200-E9-PS2', '1U, 1xLGA1151, 4xDDR4 ECC, 2x2.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, VGA, 4xGbE, 250W Bronze,383mm dpt', 'Стоечные (19 inch) 1-процессорные для процессоров E4', '1151', 'ECC', '2.5', 'M.2/2.5', 'forall', '550.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/RS200-E9-PS2/'),
(4, 'ASUS RS300-E9-RS4', '1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 2x450W Gold HotSwap', 'Стоечные (19 inch) 1-процессорные для процессоров E3', '1151', 'ECC', '3.5/2.5', 'M.2/2.5', 'forall', '840.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS300-E9-RS4/'),
(5, 'ASUS RS300-E9-PS4', '1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 400W Gold', 'Стоечные (19 inch) 1-процессорные для процессоров E3', '1151', 'ECC', '3.5/2.5', 'M.2/2.5', 'forall', '600.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/RS300-E9-PS4/'),
(6, 'ASUS RS100-E10-PI2', '1U, 1xLGA1151, 4xDDR4 ECC, 2x3.5 inch SATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 250W Bronze, 380mm dpt, Support Xeon E, i3, Pentium, Celeron', 'Стоечные (19 inch) 1-процессорные для процессоров E', '1151', 'ECC', '3.5', 'M.2', 'forall', '490.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS100-E10-PI2/'),
(7, 'ASUS RS300-E10-PS4', '1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 400W Gold, Support Xeon E, i3, Pentium, Celeron', 'Стоечные (19 inch) 1-процессорные для процессоров E', '1151', 'ECC', '3.5/2.5', 'M.2/2.5', 'forall', '653.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/RS300-E10-PS4/'),
(8, 'ASUS RS300-E10-RS4', '1U, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap, 2x2.5 inch SSD, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 2x450W Gold HotSwap, Support Xeon E, i3, Pentium, Celeron', 'Стоечные (19 inch) 1-процессорные для процессоров E', '1151', 'ECC', '3.5/2.5', 'M.2/2.5', 'forall', '895.0', 21, 'https://www.asus.com/Commercial-Servers-Workstations/RS300-E10-RS4/'),
(9, 'ASUS RS400-E8-PS2-F', '1U, 2xLGA2011, 16xDDR4 RDIMM, 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xGbE, iKVM, 500W Platinum, Front interfaces, 383mm dpt!', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '2.5', 'M.2/2.5', 'forall', '715.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS400E8PS2F/'),
(10, 'ASUS RS500-E8-RS4 V2', '1U, 2xLGA2011, 16xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '3.5/2.5', 'M.2', 'forall', '1100.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS500E8RS4-V2/'),
(11, 'ASUS RS500-E8-PS4 V2', '1U, 2xLGA2011, 16xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 600 Gold', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '3.5/2.5', 'M.2', 'forall', '850.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS500E8PS4-V2/overview/'),
(12, 'ASUS RS500-E8-RS8 V2', '1U, 2xLGA2011, 16xDDR4 RDIMM, 8x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '2.5', 'M.2/2.5', 'forall', '1070.0', 7, ''),
(13, 'ASUS RS520-E8-RS12-E V2', '2U, 16xDDR4 RDIMM, 12x3.5 inch + 2x2.5 inch HotSwap, no raid Intel raid only for 2x2.5 inch SSD/HDD, 2xGbE, iKVM, 2x770W Gold HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '1445.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS520E8RS12E-V2/'),
(14, 'ASUS RS520-E8-RS8 V2', '2U, 16xDDR4 RDIMM, 8x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x770W Gold HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '3.5/2.5', 'M.2', 'forall', '1280.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS520E8RS8-V2/'),
(15, 'ASUS RS540-E8-RS36-ECP', '4U, 2xLGA2011, 16xDDR4 RDIMM, 36x3.5 inch + 2x2.5 inch HotSwap, PIKE 3108/240PD/2Gb, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '2275.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS540-E8-RS36-ECP/'),
(16, 'ASUS RS700-E8-RS8 V2', '1U, 2xLGA2011, 24xDDR4 RDIMM, 8x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные', '2011', 'ECC REG', '2.5', 'M.2/2.5', 'forall', '1390.0', 21, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E8-RS8-V2/'),
(17, 'ASUS TS100-E9-PI4', 'Tower, 1xLGA1151, 4xDDR4 ECC, 3x3.5 inch+1x2.5 inchSATA, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 300W Bronze, Support Xeon E3, i3, Pentium, Celeron', 'Башенные/универсальные/графические рабочие станции', '1151', 'ECC', '3.5/2.5/5.25', '2.5', 'forall', '454.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/TS100-E9-PI4/'),
(18, 'ASUS TS100-E10-PI4', 'Tower, 1xLGA1151, 4xDDR4 ECC, 3x3.5 inch+1x2.5 inchSATA, 2xM.2, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 2xGbE, 300W Bronze, Support Xeon E, i3, Pentium, Celeron', 'Башенные/универсальные/графические рабочие станции', '1151', 'ECC', '3.5/2.5/5.25', '2.5', 'forall', '480.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/TS100-E10-PI4/'),
(19, 'ASUS TS300-E9-PS4', 'Tower, 1xLGA1151, 4xDDR4 ECC, 4x3.5 inch HotSwap up to 8, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 500W Bronze, Support Xeon E, i3, Pentium, Celeron', 'Башенные/универсальные/графические рабочие станции', '1151', 'ECC', '3.5/2.5/5.25', 'M.2/2.5', 'forall', '610.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/TS300-E9-PS4/'),
(20, 'ASUS TS300-E10-PS4', 'Tower, 1xLGA1151, 4xDDR4 ECC, 4x3.5 / 2.5 inch HotSwap up to 8, Intel SW Raid 0/1/5/10, DVD-RW, VGA, 4xGbE, 500W Gold, Support Xeon E, i3, Pentium, Celeron', 'Башенные/универсальные/графические рабочие станции', '1151', 'ECC', '3.5/2.5/5.25', 'M.2/2.5', 'forall', '630.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/TS300-E10-PS4/'),
(21, 'ASUS TS500-E8-PS4 V2', 'Tower/5U, 2xLGA2011, 8xDDR4 RDIMM, 4x3.5 inch HotSwap up to 8 optional, Intel SW Raid 0/1/5/10, DVD-RW, 2xGbE, iKVM, 500W Bronze Last buy', 'Башенные/универсальные/графические рабочие станции', '2011', 'ECC REG', '3.5/2.5/5.25', 'M.2/2.5', 'forall', '800.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/TS500-E8-PS4-V2/'),
(22, 'ASUS TS700-E8-RS8 V2', 'Tower/5U, 2xLGA2011, 16xDDR4 RDIMM, 8x3.5 inch + 2x2.5 inch HotSwap, M.2, Intel SW Raid 0/1/5/10, DVD-RW, HDAudio, 2xGbE, iKVM, 2x800W Gold HotSwap', 'Башенные/универсальные/графические рабочие станции', '2011', 'ECC REG', '3.5/2.5/5.25', 'M.2/2.5', 'forall', '1360.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/TS700-E8-RS8-V2/'),
(23, 'ASUS RS520-E9-RS12-E', '2U, 2xLGA3647, 16xDDR4 RDIMM, 12x3.5 inch / 4xNVMe + 2x2.5 inch HotSwap, no raid card Intel raid only for 2x2.5 inch SSD/HDD, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '1680.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS520-E9-RS12-E/'),
(24, 'ASUS RS520-E9-RS8', '2U, 2xLGA3647, 16xDDR4 RDIMM, 8x3.5 inch 4xNVMe + 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '1580.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS520-E9-RS8/'),
(25, 'ASUS RS540-E9-RS36-E', '4U, 2xLGA3647, 16xDDR4 RDIMM, 36x3.5 inch + 2x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '2570.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/RS540-E9-RS36-E/'),
(26, 'ASUS RS700-E9-RS12', '1U, 2xLGA3647, 24xDDR4 RDIMM, 12x2.5 inch, 8x NVMe HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '2.5', 'M.2/2.5', 'forall', '1670.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E9-RS12/'),
(27, 'ASUS RS700-E9-RS4', '1U, 2xLGA3647, 24xDDR4 RDIMM, 4x3.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, DVD-RW, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '1655.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/RS700-E9-RS4/'),
(28, 'ASUS RS720-E9-RS24', '2U, 2xLGA3647, 24xDDR4 RDIMM, 24x2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x1200W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '2.5', 'M.2/2.5', 'forall', '2620.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/RS720-E9-RS24-E/'),
(29, 'ASUS RS720-E9-RS12', '2U, 2xLGA3647, 24xDDR4 RDIMM, 12 x 3.5 inch or 2.5 inch HotSwap, Intel SW Raid 0/1/5/10, 2xM.2, 2xGbE, iKVM, 2x800W Platinum HotSwap', 'Стоечные (19 inch) 2-процессорные Intel Xeon Scalable и поддержкой NVMe', '3647', 'ECC REG', '3.5/2.5', 'M.2/2.5', 'forall', '2050.0', 30, 'https://www.asus.com/Commercial-Servers-Workstations/RS720-E9-RS12-E/');

-- --------------------------------------------------------

--
-- Структура таблицы `cpu`
--

CREATE TABLE `cpu` (
  `cpu_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cpu`
--

INSERT INTO `cpu` (`cpu_id`, `name`, `description`, `subcategory`, `type`, `price`, `term`, `link`) VALUES
(1, 'Xeon E3-1270 v6', '4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 3,80 ГГц', 'Семейство процессоров Intel Xeon E3 v6', '1151', '415.0', 30, 'https://ark.intel.com/content/www/ru/ru/ark/products/97479/intel-xeon-processor-e3-1270-v6-8m-cache-3-80-ghz.html?wapkw=Xeon%20E3-1270v6'),
(2, 'Xeon E3-1240 v6', '4 ядра /8 потоков, 8 МБ кэш-памяти, тактовая частота 3,70 ГГц', 'Семейство процессоров Intel Xeon E3 v6', '1151', '305.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/97469/intel-xeon-processor-e3-1240-v6-8m-cache-3-70-ghz.html'),
(3, 'Xeon E3-1230 v6', '4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 3,50 ГГц', 'Семейство процессоров Intel Xeon E3 v6', '1151', '285.0', 14, 'https://ark.intel.com/content/www/ru/ru/ark/products/97474/intel-xeon-processor-e3-1230-v6-8m-cache-3-50-ghz.html'),
(4, 'Xeon E3-1220 v6', '4 ядра / 4 потока, 8 МБ кэш-памяти, тактовая частота 3,00 ГГц', 'Семейство процессоров Intel Xeon E3 v6', '1151', '235.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/97470/intel-xeon-processor-e3-1220-v6-8m-cache-3-00-ghz.html'),
(5, 'Xeon E-2278G', '8 ядер / 16 потоков, 16 МБ кэш-памяти, тактовая частота 3,40 ГГц', 'Семейство процессоров процессор Intel Xeon E', '1151', '560.0', 31, 'https://ark.intel.com/content/www/ru/ru/ark/products/193745/intel-xeon-e-2278g-processor-16m-cache-3-40-ghz.html'),
(6, 'Xeon E-2274G', '4 ядра / 8 потоков, 8 МБ кэш-памяти, тактовая частота 4,00 ГГц', 'Семейство процессоров процессор Intel Xeon E', '1151', '380.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/191042/intel-xeon-e-2274g-processor-8m-cache-4-00-ghz.html'),
(7, 'Xeon E-2135', '6 ядер / 12 потоков, 12 МБ кэш-памяти, тактовая частота 3,30 ГГц', 'Семейство процессоров процессор Intel Xeon E', '1151', '289.0', 21, ''),
(8, 'Xeon E-2224G', '4 ядра / 4 потока, 8 МБ кэш-памяти, тактовая частота 3,50 ГГц', 'Семейство процессоров процессор Intel Xeon E', '1151', '241.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/191037/intel-xeon-e-2224g-processor-8m-cache-3-50-ghz.html'),
(9, 'Xeon E5-2650 v4', '12 ядер / 24 потока, 30 МБ кэш-памяти, тактовая частота 2,20 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '1200.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/91767/intel-xeon-processor-e5-2650-v4-30m-cache-2-20-ghz.html'),
(10, 'Xeon E5-2643 v4', '6 ядер / 12 потоков, 20 МБ кэш-памяти, тактовая частота 3,40 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '1720.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92989/intel-xeon-processor-e5-2643-v4-20m-cache-3-40-ghz.html'),
(11, 'Xeon E5-2640 v4', '10 ядер / 20 потоков, 25 МБ кэш-памяти, тактовая частота 2,40 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '875.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92984/intel-xeon-processor-e5-2640-v4-25m-cache-2-40-ghz.html'),
(12, 'Xeon E5-2637 v4', '4 ядра / 8 потоков, 15 МБ кэш-памяти, тактовая частота 3,50 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '1150.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92983/intel-xeon-processor-e5-2637-v4-15m-cache-3-50-ghz.html'),
(13, 'Xeon E5-2630 v4', '10 ядер / 20 потоков, 25 МБ кэш-памяти, тактовая частота 2,20 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '685.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/92981/intel-xeon-processor-e5-2630-v4-25m-cache-2-20-ghz.html'),
(14, 'Xeon E5-2623 v4', '4 ядра / 8 потоков, 10 МБ кэш-памяти, тактовая частота 2,60 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '510.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92980/intel-xeon-processor-e5-2623-v4-10m-cache-2-60-ghz.html'),
(15, 'Xeon E5-2620 v4', '8 ядер / 16 потоков, 20 МБ кэш-памяти, тактовая частота 2,10 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '380.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92986/intel-xeon-processor-e5-2620-v4-20m-cache-2-10-ghz.html'),
(16, 'Xeon E5-2609 v4', '8 ядер / 8 потоков, 20 МБ кэш-памяти, тактовая частота 1,70 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '327.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92990/intel-xeon-processor-e5-2609-v4-20m-cache-1-70-ghz.html'),
(17, 'Xeon E5-2603 v4', '6 ядер / 6 потоков, 15 МБ кэш-памяти, тактовая частота 1,70 ГГц', 'Семейство процессоров Intel Xeon E5 v4', '2011', '230.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/92993/intel-xeon-processor-e5-2603-v4-15m-cache-1-70-ghz.html'),
(18, 'Xeon Gold 5122', '4 ядра / 8 потоков, 16,5 МБ кэш-памяти, тактовая частота 3,60 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '1400.0', 30, 'https://ark.intel.com/content/www/ru/ru/ark/products/120475/intel-xeon-gold-5122-processor-16-5m-cache-3-60-ghz.html'),
(19, 'Xeon Gold 5120', '14 ядер / 28 потоков, 19,25 МБ кэш-памяти, тактовая частота 2,20 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '1660.0', 30, 'https://ark.intel.com/content/www/ru/ru/ark/products/120474/intel-xeon-gold-5120-processor-19-25m-cache-2-20-ghz.html'),
(20, 'Xeon Gold 5118', '12 ядер / 24 потока, 16,5 МБ кэш-памяти, тактовая частота 2,30 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '1350.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/120473/intel-xeon-gold-5118-processor-16-5m-cache-2-30-ghz.html'),
(21, 'Xeon Silver 4116', '12 ядер / 24 потока, 16,5 МБ кэш-памяти, тактовая частота 2,10 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '1080.0', 30, 'https://ark.intel.com/content/www/ru/ru/ark/products/120481/intel-xeon-silver-4116-processor-16-5m-cache-2-10-ghz.html'),
(22, 'Xeon Silver 4114', '10 ядер / 20 потоков, 13,75 МБ кэш-памяти, тактовая частота 2,20 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '740.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/123550/intel-xeon-silver-4114-processor-13-75m-cache-2-20-ghz.html'),
(23, 'Xeon Silver 4112', '4 ядра / 8 потоков,8,25 МБ кэш-памяти, тактовая частота 2,60 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '520.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/123551/intel-xeon-silver-4112-processor-8-25m-cache-2-60-ghz.html'),
(24, 'Xeon Silver 4110', '8 ядер / 16 потоков, 11 МБ кэш-памяти, тактовая частота 2,10 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '510.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/123547/intel-xeon-silver-4110-processor-11m-cache-2-10-ghz.html'),
(25, 'Xeon Silver 4108', '8 ядер / 16 потоков, 11 МБ кэш-памяти, тактовая частота 1,80 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '475.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/123544/intel-xeon-silver-4108-processor-11m-cache-1-80-ghz.html'),
(26, 'Xeon Bronze 3106', '8 ядер / 8 потоков, 11 МБ кэш-памяти, тактовая частота 1,70 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '355.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/123540/intel-xeon-bronze-3106-processor-11m-cache-1-70-ghz.html'),
(27, 'Xeon Bronze 3104', '6 ядер / 6 потоков, 8,25 МБ кэш-памяти, тактовая частота 1,70 ГГц', 'Семейство масштабируемых процессоров Intel Xeon', '3647', '245.0', 21, 'https://ark.intel.com/content/www/ru/ru/ark/products/123546/intel-xeon-bronze-3104-processor-8-25m-cache-1-70-ghz.html');

-- --------------------------------------------------------

--
-- Структура таблицы `hdd`
--

CREATE TABLE `hdd` (
  `hdd_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hdd`
--

INSERT INTO `hdd` (`hdd_id`, `name`, `description`, `subcategory`, `type`, `price`, `term`, `link`) VALUES
(1, 'Enterprise HDD 3.5 10TB', '10TB, SATA, 3.5 inch, 7200rpm, 256MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '285.0', 21, ''),
(2, 'Enterprise HDD 3.5 8TB', '8TB, SATA, 3.5 inch, 7200rpm, 256MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '260.0', 21, ''),
(3, 'Enterprise HDD 3.5 6TB', '6TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '180.0', 21, ''),
(4, 'Enterprise HDD 3.5 4TB', '4TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '155.0', 7, ''),
(5, 'Enterprise HDD 3.5 2TB', '2TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '110.0', 7, ''),
(6, 'Enterprise HDD 3.5 1TB', '1TB, SATA, 3.5 inch, 7200rpm, 126MB, Enterprise', 'Серверные HDD SATA LFF 3.5', '3.5', '85.0', 7, ''),
(7, 'Enterprise HDD 2.5 1.2TB', '1.2TB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '205.0', 21, ''),
(8, 'Enterprise HDD 2.5 900GB', '900GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '325.0', 21, ''),
(9, 'Enterprise HDD 2.5 900GB', '900GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '190.0', 21, ''),
(10, 'Enterprise HDD 2.5 600GB', '600GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '240.0', 21, ''),
(11, 'Enterprise HDD 2.5 600GB', '600GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '150.0', 21, ''),
(12, 'Enterprise HDD 2.5 300GB', '300GB, SAS, 2.5 inch, 15000rpm, 12Gb/s, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '185.0', 7, ''),
(13, 'Enterprise HDD 2.5 300GB', '300GB, SAS, 2.5 inch, 10000rpm, 12Gb/s, 128MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 2.5', '2.5', '110.0', 21, ''),
(14, 'Enterprise HDD 3.5 12TB', '12TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 3.5', '3.5', '375.0', 21, ''),
(15, 'Enterprise HDD 3.5 10TB', '10TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 256MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 3.5', '3.5', '305.0', 21, ''),
(16, 'Enterprise HDD 3.5 6TB', '6TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 128MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 3.5', '3.5', '215.0', 21, ''),
(17, 'Enterprise HDD 3.5 4TB', '4TB, SAS, 3.5 inch, 12Gb/s, 7200rpm, 128MB, для работы требуется SAS-контроллер PIKE', 'Серверные HDD SAS 3.5', '3.5', '220.0', 7, ''),
(18, 'Surveillance HDD 3.5 8TB', '8TB, SATA, 3.5 inch, 7200rpm, 128MB', 'HDD для серверов видеонаблюдения SATA 3.5', '3.5', '260.0', 14, ''),
(19, 'Surveillance HDD 3.5 6TB', '6TB, SATA, 3.5 inch, 7200rpm, 128MB', 'HDD для серверов видеонаблюдения SATA 3.5', '3.5', '185.0', 14, ''),
(20, 'Surveillance HDD 3.5 4TB', '4TB, SATA, 3.5 inch, 7200rpm, 64MB', 'HDD для серверов видеонаблюдения SATA 3.5', '3.5', '125.0', 14, ''),
(21, 'Surveillance HDD 3.5 3TB', '3TB, SATA, 3.5 inch, 7200rpm, 64MB', 'HDD для серверов видеонаблюдения SATA 3.5', '3.5', '100.0', 14, ''),
(22, 'Surveillance HDD 3.5 2TB', '2TB, SATA, 3.5 inch, 7200rpm, 64MB', 'HDD для серверов видеонаблюдения SATA 3.5', '3.5', '75.0', 14, '');

-- --------------------------------------------------------

--
-- Структура таблицы `options`
--

CREATE TABLE `options` (
  `options_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `options`
--

INSERT INTO `options` (`options_id`, `name`, `description`, `subcategory`, `type`, `price`, `term`, `link`) VALUES
(1, 'ASUS PIKE II 3108-8I/2G', 'модуль защиты памяти RAID-контроллера', 'RAID контроллеры', 'forall', '410.0', 7, 'https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-16PD-2G/ProductPrint/'),
(2, 'ASUS PIKE II 3108-8i/16PD/2G', 'SAS 12Gb/s RAID 0/1/10/5/6/50/60 /2Gb  16PD', 'RAID контроллеры', 'forall', '380.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-240PD-2G/'),
(3, 'ASUS PIKE II 3108-8I/240PD/2G', 'SAS 12Gb/s RAID 0/1/10/5/6/50/60 /2Gb  240PD', 'RAID контроллеры', 'forall', '420.0', 30, 'https://www.asus.com/ru/Commercial-Servers-Workstations/PIKE-II-3108-8I-240PD-2G/'),
(4, 'ASUS PIKE II 3008-8i', 'SAS 12Gb/s RAID 0/1/1E/10', 'RAID контроллеры', 'forall', '185.0', 7, 'https://www.asus.com/us/Commercial-Servers-Workstations/PIKE_II_30088i/'),
(5, 'ASUS ASMB8-iKVM', 'для серверов серий RS100/RS200/RS300/TS300 серии Е9', 'Модули удаленного доступа', 'forall', '40.0', 7, 'https://www.asus.com/us/Commercial-Servers-Workstations/ASMB8iKVM/'),
(6, 'ASUS ASMB8-iKVM', 'для серверов серий RS100/RS200/RS300/TS300 серии Е10', 'Модули удаленного доступа', 'forall', '40.0', 7, 'https://www.asus.com/us/Commercial-Servers-Workstations/ASMB8iKVM/'),
(7, 'Intel I350-AM2', 'Dual Port Gigabit Server Adapter', 'Сетевые контроллеры', 'forall', '100.0', 14, 'https://ark.intel.com/content/www/ru/ru/ark/products/52968/intel-ethernet-controller-i350-am2.html'),
(8, 'Intel OCP3.0 I350-T4', 'Quad Port Gigabit Server Adapter', 'Сетевые контроллеры', 'forall', '190.0', 14, 'https://ark.intel.com/content/www/ru/ru/ark/products/184824/intel-ethernet-network-adapter-i350-t4-for-ocp-3-0.html'),
(9, 'ASUS MCI-10G/X550-2T', 'Dual Port 10Gbit BASE-T RJ-45', 'Сетевые контроллеры', 'forall', '205.0', 7, 'https://www.asus.com/Commercial-Servers-Workstations/MCI-10G-X550-2T/'),
(10, 'ASUS MCI-10G/82599-2S', 'Dual Port 10Gbit SFP+ LC Fiber Optic LP', 'Сетевые контроллеры', 'forall', '205.0', 7, 'https://www.asus.com/uk/Commercial-Servers-Workstations/MCI-10G-82599-2S/'),
(11, 'Рельсы для установки в стойку', 'для универсальных платформ TS300/TS500/TS700', 'Дополнительные опции', 'forall', '100.0', 30, ''),
(12, 'Корзина для дисков', 'на 4 диска горячей замены для универсальных платформ TS300/TS500', 'Дополнительные опции', 'forall', '100.0', 30, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ram`
--

CREATE TABLE `ram` (
  `ram_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ram`
--

INSERT INTO `ram` (`ram_id`, `name`, `description`, `subcategory`, `type`, `price`, `term`, `link`) VALUES
(1, 'DDR4 ECC 8GB', '8GB, DDR4 UDIMM ECC, 2400Mhz', 'Для серверов с процессорами E3/E', 'ECC', '50.0', 7, ''),
(2, 'DDR4 ECC 16GB', '16GB, DDR4 UDIMM ECC, 2400Mhz', 'Для серверов с процессорами E3/E', 'ECC', '90.0', 7, ''),
(3, 'DDR4 RDIMM 8GB', '8GB, DDR4 RDIMM, 2400Mhz', 'Для серверов с процессорами E5-2600 и Xeon Scalable', 'ECCREG', '60.0', 14, ''),
(4, 'DDR4 RDIMM 16GB', '16GB, DDR4 RDIMM, 2400Mhz', 'Для серверов с процессорами E5-2600 и Xeon Scalable', 'ECCREG', '95.0', 7, ''),
(5, 'DDR4 RDIMM 32GB', '32GB, DDR4 RDIMM, 2400Mhz', 'Для серверов с процессорами E5-2600 и Xeon Scalable', 'ECCREG', '170.0', 7, '');

-- --------------------------------------------------------

--
-- Структура таблицы `ssd`
--

CREATE TABLE `ssd` (
  `ssd_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(256) NOT NULL,
  `subcategory` varchar(256) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` decimal(6,1) NOT NULL,
  `term` int(11) NOT NULL,
  `link` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ssd`
--

INSERT INTO `ssd` (`ssd_id`, `name`, `description`, `subcategory`, `type`, `price`, `term`, `link`) VALUES
(1, 'Intel Optane 900P 280 GB', '280 GB, половинной высоты, PCIe x4, 20 нм, 3D Xpoint', 'Серверные SSD диски', '2.5', '420.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/123628/intel-optane-ssd-900p-series-280gb-1-2-height-pcie-x4-20nm-3d-xpoint.html'),
(2, 'Intel SSD DC S3610 800GB', '800GB, 2.5 inch, SATA, 6Gb/s, 20nm, MLC', 'Серверные SSD диски', '2.5', '580.0', 7, 'https://ark.intel.com/content/www/us/en/ark/products/82936/intel-ssd-dc-s3610-series-800gb-2-5in-sata-6gb-s-20nm-mlc.html'),
(3, 'Intel SSD D3-S4610 480GB', '480GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC', 'Серверные SSD диски', '2.5', '255.0', 14, 'https://ark.intel.com/content/www/ru/ru/ark/products/134919/intel-ssd-d3-s4610-series-480gb-2-5in-sata-6gb-s-3d2-tlc.html'),
(4, 'Intel SSD D3-S4610 240GB', '240GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC', 'Серверные SSD диски', '2.5', '150.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/134923/intel-ssd-d3-s4610-series-240gb-2-5in-sata-6gb-s-3d2-tlc.html'),
(5, 'Intel SSD D3-S4510 480GB', '480GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC', 'Серверные SSD диски', '2.5', '230.0', 7, 'https://ark.intel.com/content/www/ru/ru/ark/products/134920/intel-ssd-d3-s4510-series-480gb-2-5in-sata-6gb-s-3d2-tlc.html'),
(6, 'Intel SSD D3-S4510 240GB', '240GB, 2.5 inch, SATA, 6Gb/s, 3D2, TLC', 'Серверные SSD диски', '2.5', '175.0', 14, 'https://ark.intel.com/content/www/ru/ru/ark/products/134910/intel-ssd-d3-s4510-series-240gb-2-5in-sata-6gb-s-3d2-tlc.html'),
(7, 'Intel SSD DC P3100 256GB', '256GB, M.2 80mm, PCIe, 3.0 x4, 3D1, TLC', 'Серверные SSD диски', 'M.2', '130.0', 7, 'https://ark.intel.com/content/www/us/en/ark/products/97075/intel-ssd-dc-p3100-series-256gb-m-2-80mm-pcie-3-0-x4-3d1-tlc.html'),
(8, 'Intel SSD DC P3100 128GB', '128GB, M.2 80mm, PCIe, 3.0 x4, 3D1, TLC', 'Серверные SSD диски', 'M.2', '90.0', 7, 'https://ark.intel.com/content/www/us/en/ark/products/97071/intel-ssd-dc-p3100-series-128gb-m-2-80mm-pcie-3-0-x4-3d1-tlc.html');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`base_id`);

--
-- Индексы таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`cpu_id`);

--
-- Индексы таблицы `hdd`
--
ALTER TABLE `hdd`
  ADD PRIMARY KEY (`hdd_id`);

--
-- Индексы таблицы `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`options_id`);

--
-- Индексы таблицы `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`ram_id`);

--
-- Индексы таблицы `ssd`
--
ALTER TABLE `ssd`
  ADD PRIMARY KEY (`ssd_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `base`
--
ALTER TABLE `base`
  MODIFY `base_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `cpu`
--
ALTER TABLE `cpu`
  MODIFY `cpu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `hdd`
--
ALTER TABLE `hdd`
  MODIFY `hdd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `options`
--
ALTER TABLE `options`
  MODIFY `options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `ram`
--
ALTER TABLE `ram`
  MODIFY `ram_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `ssd`
--
ALTER TABLE `ssd`
  MODIFY `ssd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
