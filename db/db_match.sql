-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2018 a las 16:12:01
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_match`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank`
--

CREATE TABLE `bank` (
  `idbank` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bank`
--

INSERT INTO `bank` (`idbank`, `name`) VALUES
(1, 'BCP'),
(2, 'BBVA'),
(3, 'INTERBANK'),
(4, 'SCOTIA BANK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `match`
--

CREATE TABLE `match` (
  `idmatch` int(11) NOT NULL,
  `match_name` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `match`
--

INSERT INTO `match` (`idmatch`, `match_name`, `date`) VALUES
(1, 'Peru vs Escocia', '2018-05-16 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `idpayment` varchar(11) NOT NULL,
  `ticket_idticket` int(11) NOT NULL,
  `bank_idbank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `idticket` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dni` varchar(45) DEFAULT NULL,
  `zone` varchar(45) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `correlative` varchar(40) DEFAULT NULL,
  `match_idmatch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`idticket`, `date`, `dni`, `zone`, `price`, `correlative`, `match_idmatch`) VALUES
(9, '2018-05-15 06:31:52', '98977656', 'lima', 3.00, 'sadas', 1),
(10, '2018-05-15 06:37:33', '98977656', 'lima', 3.00, 'sadas', 1),
(11, '2018-05-15 06:40:03', '2323232', 'Occidente', 800.00, 'BCP - 000001 - 15/5/2018', 1),
(12, '2018-05-15 07:00:01', '2323', 'Oriente', 400.00, 'BBA - 000001 - 15/5/2018', 1),
(13, '2018-05-15 07:01:05', '98977656', 'lima', 3.00, 'sadas', 1),
(14, '2018-05-15 07:02:38', '23232', 'Oriente', 400.00, 'BCP - 000001 - 15/5/2018', 1),
(15, '2018-05-15 08:05:29', '323232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(16, '2018-05-15 12:03:24', '23231', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(17, '2018-05-15 12:07:28', '232323', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(18, '2018-05-15 12:29:38', '232', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(19, '2018-05-15 12:30:07', '23232', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(20, '2018-05-15 12:30:33', '23232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(21, '2018-05-15 12:31:33', '23232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(22, '2018-05-15 12:37:22', '23232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(23, '2018-05-15 12:41:35', '23232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(24, '2018-05-15 12:48:06', '23232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(25, '2018-05-15 12:50:19', '321312', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(26, '2018-05-15 12:50:41', '321312', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(27, '2018-05-15 12:52:02', '2323', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(28, '2018-05-15 12:53:11', '2323', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(29, '2018-05-15 12:53:38', '2323', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(30, '2018-05-15 12:54:15', '2323', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(31, '2018-05-15 13:02:02', '2232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(32, '2018-05-15 13:02:57', '2232', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(33, '2018-05-15 13:06:32', '232', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(34, '2018-05-15 13:08:04', '232', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(35, '2018-05-15 13:08:58', '232', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(36, '2018-05-15 13:09:26', '3323', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(37, '2018-05-15 13:09:40', '3323', 'Occidente', 800.00, 'BCP - 000001 - 1552018', 1),
(38, '2018-05-15 13:10:29', '3232', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(39, '2018-05-15 13:10:55', '3232', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(40, '2018-05-15 13:12:21', '3232', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(41, '2018-05-15 13:12:36', '3232', 'Occidente', 400.00, 'BBA - 000001 - 1552018', 1),
(42, '2018-05-15 13:15:10', '3232', 'Norte', 100.00, 'BCP - 000001 - 1552018', 1),
(43, '2018-05-15 13:18:16', '3232', 'Norte', 100.00, 'BCP - 000001 - 1552018', 1),
(44, '2018-05-15 13:47:26', '1212', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(45, '2018-05-15 13:48:31', '1212', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(46, '2018-05-15 13:51:38', '1212', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(47, '2018-05-15 13:52:07', '322', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(48, '2018-05-15 13:54:15', '322', 'Occidente', 400.00, 'BCP - 000001 - 1552018', 1),
(49, '2018-05-15 14:01:07', '3232', 'Sur', 200.00, 'BCP - 000001 - 1552018', 1),
(50, '2018-05-15 14:09:21', '1212', 'Oriente', 200.00, 'BCP - 000001 - 1552018', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`idbank`);

--
-- Indices de la tabla `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`idmatch`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idpayment`),
  ADD KEY `fk_payment_ticket1_idx` (`ticket_idticket`),
  ADD KEY `fk_payment_bank1_idx` (`bank_idbank`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idticket`),
  ADD KEY `fk_ticket_match_idx` (`match_idmatch`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bank`
--
ALTER TABLE `bank`
  MODIFY `idbank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `match`
--
ALTER TABLE `match`
  MODIFY `idmatch` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_bank1` FOREIGN KEY (`bank_idbank`) REFERENCES `bank` (`idbank`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_payment_ticket1` FOREIGN KEY (`ticket_idticket`) REFERENCES `ticket` (`idticket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_match` FOREIGN KEY (`match_idmatch`) REFERENCES `match` (`idmatch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
