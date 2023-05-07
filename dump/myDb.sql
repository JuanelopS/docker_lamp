-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-05-2023 a las 16:30:07
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
  `id_rol` tinyint NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `email`, `password`, `name`, `surname`, `register_date`, `id_rol`) VALUES
(1, 'admin@admin.com', 'admin', 'Admin', 'Admin', '2018-04-22 17:06:53', 1),
(2, 'adan67@example.org', 'f262ac3ef11a62a5a6a0fd0a6702e621af72f2fd', 'Mary', 'Steuber', '1974-10-12 15:02:07', 2),
(3, 'adonis.wintheiser@example.com', 'f41d2f59013fc9123876032af5331da42c3fb6e3', 'Abelardo', 'Kuhlman', '2013-03-15 05:30:12', 2),
(4, 'aida56@example.org', 'ed4d441eb50af784b49aafd8ccb0e20ef48e776d', 'Nicholas', 'Mills', '1972-10-15 09:41:03', 2),
(5, 'alfredo.kulas@example.net', 'eec74e769e0121cc9d0f23f1dfc31b23bcb32a5c', 'Rosalia', 'Ziemann', '2007-10-23 08:46:21', 2),
(6, 'alphonso.paucek@example.org', '9574701a34a6734f8e61af1a48c4bdbdbe987263', 'Lila', 'Connelly', '1976-09-09 15:52:50', 2),
(7, 'alyson.boehm@example.org', '7f7d7edbaabe06f89ef3491201ff0e7b020bace1', 'Lupe', 'Powlowski', '1996-08-09 01:15:27', 2),
(8, 'aniya.lueilwitz@example.org', '38ba072d50fe629a62b419d78b2935d0104bd13a', 'Sibyl', 'Hahn', '1991-05-16 05:57:34', 2),
(9, 'arjun.daugherty@example.org', 'bb0cbe4ef72625197e599aa785571b0f630ccb57', 'Brandyn', 'Jenkins', '2020-08-11 09:11:49', 2),
(10, 'armani.cummerata@example.net', 'a10ff95d45b04f58879dc77140d260206f1d1937', 'Lina', 'Cummings', '1998-01-31 01:14:35', 2),
(11, 'arnaldo84@example.com', 'fc754516e0cf1d0db641d9029dece98e40f99fbf', 'Bradford', 'Cummerata', '2013-05-12 03:47:43', 2),
(12, 'augusta.beahan@example.net', '62a6fdda596c94d53f9645f684ba082a716f6c00', 'Phoebe', 'Jakubowski', '1984-10-22 22:32:52', 2),
(13, 'bauch.jonas@example.com', 'e9ddb63f4944163fb39d731f48ed36e20c3ccf65', 'Jessy', 'Gerhold', '1981-07-23 07:54:32', 2),
(14, 'beier.cecil@example.com', 'c1dd3db47f3b86c9190e435284dd2e1a3ea785cd', 'Jadon', 'Sanford', '2003-10-20 02:50:10', 2),
(15, 'berta.hirthe@example.com', '91667d1347f508730c8245a02ee5d77ed789316c', 'Tianna', 'Dietrich', '2002-03-08 07:13:49', 2),
(16, 'berta.kuvalis@example.org', '32b0977ee0137a35372348679d77d5a7f9883a03', 'Lexi', 'Lakin', '1983-01-02 07:05:15', 2),
(17, 'bfritsch@example.org', '8e9c7dba4d226356f860f0d194242915897183bb', 'Colton', 'Hane', '1984-07-18 10:00:57', 2),
(18, 'bpollich@example.org', '2571396177a5b6dd8d59e6070c3f7c8c9c97ef5b', 'Joy', 'Ankunding', '2012-04-15 23:39:47', 2),
(19, 'cassandre03@example.net', '0a7456f1adb1d9ad34d77fea5ab9badc0c2c1622', 'Marcelino', 'Stokes', '1986-07-16 04:43:35', 2),
(20, 'chaim89@example.net', '7a57264f62d604242a162e145d056da4c8cc9a56', 'Ryan', 'Bahringer', '1973-10-29 11:49:02', 2),
(21, 'cmayert@example.net', 'e23a4f7450d818aba5f92afa031287c407926699', 'Alf', 'Steuber', '2017-04-06 22:21:00', 2),
(22, 'collier.ibrahim@example.net', 'ca1e38113a7e795e36ccaaea27d658d8dd9c749b', 'Miguel', 'Fisher', '1973-05-07 00:13:28', 2),
(23, 'coty.mosciski@example.net', 'ab8f43c936d6f743f8818d1aca5bab6b4111bc2f', 'Urban', 'Collier', '2008-04-01 09:50:31', 2),
(24, 'dare.eulalia@example.com', '67fcdfcc0db96585502295f7ad86bae58f0d287a', 'Bethel', 'Bernhard', '2004-09-06 21:42:22', 2),
(25, 'darren.rau@example.com', 'c3e9dd0932f3e4ffd9a345e9683f9d8141c326b7', 'Devon', 'Lang', '1991-11-25 03:29:52', 2),
(26, 'delphia.kshlerin@example.net', '270cd7e57e825cc8e522dfccb75efbfec5c4aba8', 'Laurel', 'Glover', '2006-02-02 14:33:50', 2),
(27, 'destiney.konopelski@example.com', '89b43372934af8e4c5b95aca9ab87ee593a2c532', 'Summer', 'Shanahan', '2002-02-14 23:27:28', 2),
(28, 'dickinson.vella@example.net', 'ad9fb1bdaabbc1c1a31faa5331ca92cd57e55e1e', 'Gunnar', 'Sporer', '2013-04-07 18:39:58', 2),
(29, 'elwin.breitenberg@example.net', '5f4c9a7c1e8781ec1cfbf7ed98561bb90126b047', 'Marlin', 'Hilll', '2002-10-23 16:11:55', 2),
(30, 'elwyn51@example.org', '9eb5dbdb4c53a06ccda63003082d8432846e8e87', 'Durward', 'Bashirian', '1974-05-22 11:50:06', 2),
(31, 'emma.toy@example.net', '207d097cdda10ffea1929d758910ba2293053fee', 'Carmen', 'Harvey', '1986-08-28 06:57:09', 2),
(32, 'giovani.hilll@example.net', 'd3cf9316d850e4c823f1dbd9380e4094caf8223c', 'Bettye', 'Tromp', '1985-02-15 14:10:08', 2),
(33, 'grayce.upton@example.org', 'd880414dcc2fdf5a7211206f2d3c62e9b883915d', 'Kristin', 'Heathcote', '1986-03-19 22:17:45', 2),
(34, 'grimes.sydney@example.org', '3af64a626ffe8a083cfa0819c98b8da4d45cb3be', 'Brandt', 'Lubowitz', '2019-01-31 06:31:18', 2),
(35, 'hermann.jesus@example.net', 'c968bd8665f136cc5eff746d49e7bf24699d7d6b', 'Davon', 'Beier', '1983-08-17 16:38:26', 2),
(36, 'hettinger.dina@example.com', '8d8bec220fed2aee50b969e33d7cbf2434fdd999', 'Neoma', 'Littel', '1982-02-03 10:51:17', 2),
(37, 'hobart.vandervort@example.net', '564dc0a7197c617d867728af696833a0d093ac30', 'Macey', 'Lynch', '1980-03-30 01:27:32', 2),
(38, 'hskiles@example.com', '88d12f48abb70bacee2017159fe40c438441b900', 'Carolyn', 'Crona', '1971-06-24 02:22:16', 2),
(39, 'hudson.delia@example.org', 'f5d0931b843c1867862d7e6373717e086a72f872', 'Theresia', 'D\'Amore', '1978-03-31 09:30:19', 2),
(40, 'hvolkman@example.com', 'e0cbf08430d3943d6f692c85666b6920b20350f5', 'Halie', 'Schinner', '2007-08-07 00:56:17', 2),
(41, 'imcglynn@example.com', '7b1bed922e535fbf448be704be7eab22dd159514', 'Lula', 'Bergnaum', '2015-05-01 20:58:18', 2),
(42, 'iorn@example.org', '05e9aecdbdeeef65d81372ce9f10fd734afac713', 'Simone', 'Hilpert', '1973-08-21 05:58:44', 2),
(43, 'jana.bartoletti@example.net', 'd06b5f00d6328ed3a38098ad2d78ca9a4a5b9e6b', 'Jessie', 'Mills', '2013-06-17 14:50:23', 2),
(44, 'jaskolski.eloy@example.org', '0ca4bf44a8bd210fee2168e45defde11299097f8', 'Elisabeth', 'Gulgowski', '2009-07-09 03:04:35', 2),
(45, 'jbins@example.net', '2ebf755522dfb541745f5658890acfca3f74c819', 'Naomi', 'Volkman', '2022-10-21 02:14:01', 2),
(46, 'jenkins.samir@example.com', 'e1b3f656cf33db852c7af4f5ec7771e5e02286f3', 'Jannie', 'Bayer', '1985-11-27 14:18:33', 2),
(47, 'jevon.balistreri@example.net', 'fa9c311c34a511e5dfd015525d73463559514c4d', 'Mohammed', 'Crist', '1992-04-03 18:29:53', 2),
(48, 'juana.stoltenberg@example.org', '5a6bb9b91e464283abf39a2cae2f503dbe3644fb', 'Makayla', 'Cole', '1998-09-16 04:42:09', 2),
(49, 'keara.rath@example.com', '4178c148447fb0eb5131167957f0c2b41c60502c', 'Andres', 'Keeling', '1971-04-19 07:44:16', 2),
(50, 'keara92@example.com', '3ee816a5d3ac2ea103f1e4feec8057ca3d772e92', 'Federico', 'Kozey', '1992-03-01 23:38:09', 2),
(51, 'kkeeling@example.org', '21822feee81087cf4449058df7aaea0735ccf74a', 'Korey', 'D\'Amore', '2014-01-09 16:23:38', 2),
(52, 'kunde.dedric@example.org', '2037af6b3896d9b1bb83a53138dbb3c8672a1635', 'Catalina', 'Willms', '1970-07-07 07:42:05', 2),
(53, 'kylee77@example.org', '20b8206e16ab4596ba682673f831b2ed60d7e5f0', 'Gaston', 'Weissnat', '1991-12-05 04:39:24', 2),
(54, 'lind.evelyn@example.org', '27914af49521baccf4c4d60fb76436fe461bd5ec', 'Duncan', 'McGlynn', '1996-06-06 15:04:08', 2),
(55, 'linnie.kohler@example.net', '9fff10f364e10ac42f9abc9e3a283a344337cb9d', 'Moses', 'Donnelly', '2019-11-14 10:16:11', 2),
(56, 'lluettgen@example.com', '89db10e50e4758080cf56f95c7817c74c17e88e7', 'Annetta', 'Johns', '1977-04-06 05:30:23', 2),
(57, 'loren35@example.org', '91e8dd5d3dfe53a9a237f9ca6a8b727550a5122e', 'Lea', 'Miller', '2021-08-25 15:36:26', 2),
(58, 'mac.rosenbaum@example.com', '98b724d620f34316459558afde47dfd903135d32', 'Leif', 'Johnston', '1989-02-06 07:26:07', 2),
(59, 'maryam18@example.org', '95e46ba163426eaa82750879d6b2e137c3b17643', 'Reyes', 'Ledner', '2004-12-20 11:30:41', 2),
(60, 'maynard67@example.com', '9880ff5eb19fa755b636bb7ffd9815931ec3c23a', 'Chaz', 'Turner', '1971-08-18 03:59:36', 2),
(61, 'mclaughlin.edgar@example.org', '850fe72193bd8b0897c9d21998c05c690515ae85', 'Eden', 'Oberbrunner', '1981-12-25 06:55:41', 2),
(62, 'medhurst.fannie@example.net', 'd3493fd4d1a2c826f18a4874a8648b4f5d919d3f', 'Orpha', 'Hansen', '1977-09-04 09:52:41', 2),
(63, 'miguel.lehner@example.net', '0d3b6063101de411117b3271e64376b3079355fb', 'Reginald', 'Gutmann', '1992-05-26 05:12:58', 2),
(64, 'mills.jamir@example.com', '5975788eca576cc729efb8558c6bc20270eb4aab', 'Pamela', 'Krajcik', '2020-08-21 17:31:28', 2),
(65, 'mohammad.gerlach@example.org', 'fcb08315b1557f424faa7fe2712377576a91fd47', 'Uriah', 'Goyette', '2002-09-22 15:33:12', 2),
(66, 'mohr.casey@example.net', '649ad7fca0aa20fc4b991811f8e956d973c67e9e', 'Braden', 'Smith', '2009-01-08 15:03:03', 2),
(67, 'o\'kon.marco@example.com', 'b13686bbcb5d16ef6d75fcabc2b37dbf27278505', 'Aliyah', 'Gerhold', '2000-02-29 21:34:53', 2),
(68, 'okuneva.lauretta@example.net', '2db7832acee913942897f735a00a4df31b05afef', 'Delphine', 'Windler', '1979-11-24 05:47:49', 2),
(69, 'ortiz.clark@example.net', '3aaf9d21a9004887f251971390ee514c2dd4a0b2', 'Jaron', 'Marvin', '2014-03-25 14:49:56', 2),
(70, 'pherman@example.net', '49f6d0a37f70a9fbdf6f19bedd5997e6004121a7', 'Axel', 'Ferry', '1984-08-07 16:14:27', 2),
(71, 'rdeckow@example.com', '0f84042ea5a9097bcbe71381781adeded4e9ebca', 'Maci', 'Mueller', '1993-06-02 03:47:19', 2),
(72, 'renner.agustin@example.org', 'e55e58a9fd459355385f99913e509f42b56e2ae5', 'Nestor', 'Kuhlman', '2019-02-14 10:43:33', 2),
(73, 'ron86@example.net', '35625314b6f1a9bfd1c4df7699d01970f230a76c', 'Cordell', 'Feil', '2010-03-18 05:35:57', 2),
(74, 'rowland.armstrong@example.org', 'f3045d6147a4c0f24d135ced526e82e325481d00', 'Cesar', 'Jones', '1984-12-02 17:10:37', 2),
(75, 'schmeler.okey@example.com', '83fe8cd83968654c844638e3cd408aecb39a92e5', 'Arvid', 'Keeling', '1988-05-05 19:09:45', 2),
(76, 'schultz.arlie@example.net', 'a31de052236990694b0d2c8db0ea6c25b8eee382', 'Elouise', 'McClure', '1976-11-11 01:07:27', 2),
(77, 'schultz.jazmyne@example.com', 'b85da7ff538a8244ddf8c9a34dea3d93f1283e11', 'Verner', 'Rosenbaum', '2021-06-19 11:16:36', 2),
(78, 'skiles.emanuel@example.net', '62bf21e4f701e63d4c48c42915bf4fd6c5dc6bff', 'Arnulfo', 'Witting', '1998-08-25 17:23:22', 2),
(79, 'slebsack@example.net', '5a59f754bf92e07f31b24404317d14ee5b8ff2b7', 'Ena', 'Mueller', '2013-12-10 04:54:39', 2),
(80, 'sonny00@example.org', 'd1ca1d78c203b288be96542095382259f3aee6be', 'Jaiden', 'Mitchell', '1977-07-27 20:50:38', 2),
(81, 'srolfson@example.net', '6712600fe51c3c29a6faf695bd925e9ebe36c83d', 'Shayna', 'Carter', '2009-05-05 02:09:22', 2),
(82, 'stanford.swift@example.org', '2f07e57cf4ea45a59c2ba4260f4b87afa42251d9', 'Gennaro', 'Okuneva', '1992-01-02 11:25:59', 2),
(83, 'stanton.brekke@example.net', 'd3945c129b7ad6bb04273da3764e1d628c8a26d6', 'Hal', 'Donnelly', '1972-07-06 15:03:04', 2),
(84, 'stiedemann.edgar@example.org', '97b29274142d85f1e805478258f12c019fc9c5f9', 'Marian', 'Kirlin', '1992-08-05 02:19:18', 2),
(85, 'stracke.freda@example.org', 'a76387aeed584f1f4b6204d73b503519513d4617', 'Gertrude', 'Hilpert', '2022-06-10 10:40:28', 2),
(86, 'tprice@example.org', 'aa4088d800b9f5f3a424ad272d501c8c2ea10e0c', 'Wallace', 'Schmeler', '1990-07-01 22:40:13', 2),
(87, 'tremblay.bailey@example.com', 'c5aa90decef1c048f5adea56434ead1cf2bcf828', 'Corbin', 'Lakin', '2001-10-13 20:55:52', 2),
(88, 'tremblay.elisabeth@example.org', 'd762ba20e31b6f861cf1a719e76d85362b698059', 'Baby', 'Dickinson', '2006-01-25 05:18:47', 2),
(89, 'ukirlin@example.net', '62714d4d8e44a3b15dde1f3b10e8ec2b26059f2b', 'Celestino', 'Schiller', '1982-06-07 18:28:13', 2),
(90, 'upfeffer@example.org', 'd43cad485e07e4ec72c2379230d8732a291b553d', 'Lou', 'Kilback', '2005-01-22 17:13:32', 2),
(91, 'vdouglas@example.net', '6b5e2f64302381c8fc54ad92df87a36125a0ba41', 'Mozell', 'Ruecker', '2000-03-29 18:06:31', 2),
(92, 'victor65@example.org', '99b59585b98db9533b50bd1efe116a55f404d64f', 'Cynthia', 'Nicolas', '1971-05-04 23:33:55', 2),
(93, 'vmohr@example.net', '3c5bfa684a187a4e433e352a6e0cf98f07c5c681', 'Cedrick', 'Stiedemann', '2013-01-07 16:33:47', 2),
(94, 'webster55@example.net', '88ba8de00f7817bd2de1e78d0c72463b1af145e3', 'Randy', 'Blanda', '1978-07-31 20:16:58', 2),
(95, 'wehner.freddy@example.org', '6179190d8dfc33b6caef6179b5079d2af90841a2', 'Dayana', 'Fisher', '1988-08-05 14:26:02', 2),
(96, 'wilkinson.alfredo@example.org', 'b79350af371cb7393b3d3d4c11f08bbfd5743503', 'Jerel', 'Ryan', '2011-11-04 22:53:22', 2),
(97, 'williamson.dell@example.org', '9c0ee8c2f4476efc657156d3754770d917fb490d', 'Harold', 'Trantow', '1982-08-09 00:14:28', 2),
(98, 'xbruen@example.org', '1bbc594f4ea99af1318636d31a3815670dbde42f', 'Hilton', 'Gerlach', '2011-05-11 06:01:36', 2),
(99, 'xhowell@example.org', '58f80031f7b101ace1c7e7a900c9642204c2a9fc', 'Marlee', 'Heidenreich', '1987-03-05 17:30:57', 2),
(100, 'zulauf.antwon@example.com', '643b0278b795252ea191271f0da8848f09f13c9c', 'John', 'Hettinger', '1975-12-26 12:42:58', 2);

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
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
