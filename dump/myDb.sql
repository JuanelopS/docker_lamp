-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-05-2023 a las 16:06:27
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbname`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id_item` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `stock` int NOT NULL,
  `price` float NOT NULL,
  `id_class` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items_class`
--

CREATE TABLE `items_class` (
  `id_class` int NOT NULL,
  `name` varchar(100) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id_order` int NOT NULL,
  `id_user` int NOT NULL,
  `paid` float NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_details`
--

CREATE TABLE `orders_details` (
  `id_item` int NOT NULL,
  `item_amount` int NOT NULL,
  `id_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` tinyint NOT NULL,
  `name` varchar(15) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `surname` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_rol` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_class` (`id_class`);

--
-- Indices de la tabla `items_class`
--
ALTER TABLE `items_class`
  ADD PRIMARY KEY (`id_class`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD KEY `id_order` (`id_order`) USING BTREE,
  ADD KEY `id_item` (`id_item`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id_item` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `items_class`
--
ALTER TABLE `items_class`
  MODIFY `id_class` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`id_class`) REFERENCES `items_class` (`id_class`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `orders_details` (`id_order`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id_item`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
