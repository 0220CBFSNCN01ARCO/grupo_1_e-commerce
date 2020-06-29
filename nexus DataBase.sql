-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2020 a las 09:25:34
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nexus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `cantItems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'monitores'),
(2, 'memorias'),
(3, 'procesadores'),
(4, 'gabinetes'),
(5, 'mouse'),
(6, 'teclados'),
(7, 'motherboard');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img` varchar(450) NOT NULL,
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `img`, `idCategory`) VALUES
(1, 'Lexus', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', 1238, 48, 'product_1.jpg', 2),
(2, 'Cadillac', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 2364, 17, 'product_2.jpg', 3),
(3, 'Nissan', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est', 1211, 35, 'product_3.jpg', 3),
(4, 'Mitsubishi', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', 1741, 6, 'product_4.jpg', 7),
(5, 'Pontiac', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 3982, 39, 'product_5.jpg', 3),
(6, 'Mazda', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', 4705, 4, 'product_6.jpg', 7),
(7, 'Ford', 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede', 1717, 47, 'product_7.jpg', 4),
(8, 'Ford', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', 904, 15, 'product_8.jpg', 3),
(9, 'Toyota', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 610, 17, 'product_9.jpg', 3),
(10, 'GMC', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc', 2974, 13, 'product_10.jpg', 4),
(11, 'Mercedes-Benz', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 4845, 28, 'product_11.jpg', 7),
(12, 'Honda', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', 3455, 5, 'product_12.jpg', 2),
(13, 'Ford', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 4803, 28, 'product_13.jpg', 4),
(14, 'Suzuki', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc', 1209, 29, 'product_14.jpg', 4),
(15, 'Ford', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', 4979, 45, 'product_15.jpg', 4),
(16, 'Ford', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 2805, 11, 'product_16.jpg', 7),
(17, 'Jaguar', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec', 1325, 4, 'product_17.jpg', 5),
(18, 'Nissan', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 2198, 39, 'product_18.jpg', 1),
(19, 'GMC', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 4116, 22, 'product_19.jpg', 7),
(20, 'Oldsmobile', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 3435, 16, 'product_20.jpg', 2),
(21, 'Mazda', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', 4258, 37, 'product_21.jpg', 4),
(22, 'Isuzu', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 1216, 45, 'product_22.jpg', 5),
(23, 'Honda', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 4764, 9, 'product_23.jpg', 7),
(24, 'Mazda', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 574, 47, 'product_24.jpg', 1),
(25, 'Ford', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus', 1532, 13, 'product_25.jpg', 5),
(26, 'Ford', 'aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', 4318, 19, 'product_26.jpg', 7),
(27, 'Ford', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 3620, 35, 'product_27.jpg', 2),
(28, 'Subaru', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', 2966, 40, 'product_28.jpg', 5),
(29, 'Buick', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 3971, 37, 'product_29.jpg', 4),
(30, 'Chevrolet', 'et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 2192, 17, 'product_30.jpg', 3),
(31, 'Toyota', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', 3824, 21, 'product_31.jpg', 1),
(32, 'GMC', 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', 1137, 17, 'product_32.jpg', 4),
(33, 'Honda', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 3397, 34, 'product_33.jpg', 1),
(34, 'Chevrolet', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', 1246, 39, 'product_34.jpg', 7),
(35, 'Ford', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 3185, 44, 'product_35.jpg', 4),
(36, 'Cadillac', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', 3107, 35, 'product_36.jpg', 7),
(37, 'BMW', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel', 2687, 20, 'product_37.jpg', 6),
(38, 'Aston Martin', 'sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', 4182, 47, 'product_38.jpg', 5),
(39, 'Acura', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum', 4820, 37, 'product_39.jpg', 5),
(40, 'Audi', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 1294, 46, 'product_40.jpg', 3),
(41, 'Acura', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 1225, 29, 'product_41.jpg', 7),
(42, 'Porsche', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam', 3522, 38, 'product_42.jpg', 1),
(43, 'Lexus', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', 1450, 22, 'product_43.jpg', 1),
(44, 'Plymouth', 'morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 1754, 17, 'product_44.jpg', 2),
(45, 'Hyundai', 'quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', 2399, 24, 'product_45.jpg', 1),
(46, 'Audi', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', 2950, 16, 'product_46.jpg', 4),
(47, 'Maybach', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', 2004, 45, 'product_47.jpg', 3),
(48, 'Lotus', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 3258, 37, 'product_48.jpg', 7),
(49, 'Ford', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 1580, 47, 'product_49.jpg', 2),
(50, 'BMW', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', 1504, 15, 'product_50.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productscarts`
--

CREATE TABLE `productscarts` (
  `id` int(11) NOT NULL,
  `idProducts` int(11) NOT NULL,
  `idCarts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `avatar`) VALUES
(1, 'Coralie', 'Abraham', 'cabraham0@google.co.uk', '9DZ6RYWca7n7', 'user_1.jpg'),
(2, 'Elisabetta', 'Lathan', 'elathan1@rambler.ru', '620A0xWcoxn', 'user_2.jpg'),
(3, 'Kris', 'Wilkinson', 'kwilkinson2@ucoz.com', '4h0ZUZ3GK', 'user_3.jpg'),
(4, 'Bili', 'Renwick', 'brenwick3@google.cn', 'SaLPDd', 'user_4.jpg'),
(5, 'Tammy', 'Skaif', 'tskaif4@privacy.gov.au', 'tM3epl3', 'user_5.jpg'),
(6, 'Edin', 'Dolphin', 'edolphin5@yellowbook.com', '465j8dHN', 'user_6.jpg'),
(7, 'Hube', 'Nower', 'hnower6@mediafire.com', 'oPm6Pnpovga', 'user_7.jpg'),
(8, 'Adelle', 'Lorente', 'alorente7@so-net.ne.jp', 'o8L7kig42', 'user_8.jpg'),
(9, 'Shaine', 'Mulryan', 'smulryan8@free.fr', '1D53qZktK4ZJ', 'user_9.jpg'),
(10, 'Lodovico', 'Waistall', 'lwaistall9@e-recht24.de', 'ovrw0RcOV0k', 'user_10.jpg'),
(11, 'Malva', 'Kilmurray', 'mkilmurraya@illinois.edu', 'XklArg', 'user_11.jpg'),
(12, 'Berke', 'Denecamp', 'bdenecampb@samsung.com', 'vYT6jbhFR', 'user_12.jpg'),
(13, 'Ann-marie', 'Burniston', 'aburnistonc@cnn.com', 'RJSGsL', 'user_13.jpg'),
(14, 'Jens', 'Luten', 'jlutend@opera.com', '14UBOX56', 'user_14.jpg'),
(15, 'Barth', 'Corkill', 'bcorkille@spiegel.de', 'o8U0hHCbFvLq', 'user_15.jpg'),
(16, 'Pietra', 'Neaverson', 'pneaversonf@time.com', 'PmlhNn', 'user_16.jpg'),
(17, 'Dacie', 'Daniels', 'ddanielsg@pbs.org', 'rbepaY1bImyS', 'user_17.jpg'),
(18, 'Hamlin', 'Laslett', 'hlasletth@youku.com', 'f7Ia4lj', 'user_18.jpg'),
(19, 'Con', 'Moyles', 'cmoylesi@dell.com', '7B1amwkB6iG', 'user_19.jpg'),
(20, 'Judon', 'Dallyn', 'jdallynj@sun.com', 'Gtt7lvwu5Dny', 'user_20.jpg'),
(24, 'Gaston Enrique', '20-95574252-5', 'gaston.requena@gmail.cos', '$2b$10$Wi56I/X/93i7KpOV1i5RB.EfOqQbi8VsylMcaP', 'user-1593395548044.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_has_products_users1_idx` (`idUsers`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_category_idx` (`idCategory`);

--
-- Indices de la tabla `productscarts`
--
ALTER TABLE `productscarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_products_has_carts_carts1_idx` (`idCarts`),
  ADD KEY `fk_products_has_carts_products1_idx` (`idProducts`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_users_has_products_users1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productscarts`
--
ALTER TABLE `productscarts`
  ADD CONSTRAINT `fk_products_has_carts_carts1` FOREIGN KEY (`idCarts`) REFERENCES `carts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_carts_products1` FOREIGN KEY (`idProducts`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
