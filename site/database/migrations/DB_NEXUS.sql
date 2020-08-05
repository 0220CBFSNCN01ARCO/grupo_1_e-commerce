-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2020 a las 01:00:39
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
  `totalPrice` int(11) NOT NULL,
  `cantItems` int(11) NOT NULL,
  `idUsers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  ` name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, ` name`) VALUES
(1, 'motherboard'),
(2, 'procesador'),
(3, 'memoria'),
(4, 'placa'),
(5, 'disco'),
(6, 'fuente'),
(7, 'cooler'),
(8, 'gabinete'),
(9, 'SO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img` varchar(450) NOT NULL,
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `listPrice`, `stock`, `img`, `idCategory`) VALUES
(1, 'Viva', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', 4421, 7421, 0, 'product_1.jpg', 3),
(2, 'Matsoft', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a', 3132, 6132, 0, 'product_2.jpg', 7),
(3, 'Flexidy', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 885, 3885, 0, 'product_3.jpg', 9),
(4, 'Tres-Zap', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', 1370, 4370, 0, 'product_4.jpg', 4),
(5, 'Regrant', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', 1404, 4404, 0, 'product_5.jpg', 3),
(6, 'Treeflex', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', 4421, 7421, 0, 'product_6.jpg', 7),
(7, 'Namfix', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 2694, 5694, 0, 'product_7.jpg', 7),
(8, 'Zamit', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl', 1828, 4828, 0, 'product_8.jpg', 3),
(9, 'Stronghold', 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', 4922, 7922, 0, 'product_9.jpg', 6),
(10, 'Lotstring', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 4838, 7838, 0, 'product_10.jpg', 3),
(11, 'Lotstring', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 4934, 7934, 0, 'product_11.jpg', 8),
(12, 'Solarbreeze', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 4503, 7503, 0, 'product_12.jpg', 6),
(13, 'Alpha', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', 3695, 6695, 0, 'product_13.jpg', 8),
(14, 'Tin', 'aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas', 4883, 7883, 0, 'product_14.jpg', 8),
(15, 'Prodder', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 2945, 5945, 0, 'product_15.jpg', 2),
(16, 'Otcom', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 1791, 4791, 0, 'product_16.jpg', 9),
(17, 'Y-Solowarm', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio', 1349, 4349, 0, 'product_17.jpg', 8),
(18, 'Daltfresh', 'quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 1300, 4300, 0, 'product_18.jpg', 7),
(19, 'Flowdesk', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 4559, 7559, 0, 'product_19.jpg', 4),
(20, 'Stringtough', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 4346, 7346, 0, 'product_20.jpg', 9),
(21, 'Latlux', 'aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu', 3139, 6139, 0, 'product_21.jpg', 6),
(22, 'Opela', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', 2986, 5986, 0, 'product_22.jpg', 2),
(23, 'Toughjoyfax', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', 2036, 5036, 0, 'product_23.jpg', 2),
(24, 'Andalax', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', 732, 3732, 0, 'product_24.jpg', 9),
(25, 'Bytecard', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', 4006, 7006, 0, 'product_25.jpg', 9),
(26, 'Stronghold', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 1242, 4242, 0, 'product_26.jpg', 2),
(27, 'Mat Lam Tam', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 4897, 7897, 0, 'product_27.jpg', 5),
(28, 'Voltsillam', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', 1974, 4974, 0, 'product_28.jpg', 4),
(29, 'Stringtough', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', 4706, 7706, 0, 'product_29.jpg', 4),
(30, 'Zoolab', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', 2559, 5559, 0, 'product_30.jpg', 4),
(31, 'Alphazap', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', 2757, 5757, 0, 'product_31.jpg', 2),
(32, 'Daltfresh', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 1426, 4426, 0, 'product_32.jpg', 5),
(33, 'Job', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', 4868, 7868, 0, 'product_33.jpg', 3),
(34, 'Fix San', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', 2937, 5937, 0, 'product_34.jpg', 4),
(35, 'Andalax', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', 3762, 6762, 0, 'product_35.jpg', 6),
(36, 'Stim', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', 1769, 4769, 0, 'product_36.jpg', 3),
(37, 'Tresom', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', 3175, 6175, 0, 'product_37.jpg', 5),
(38, 'Zamit', 'non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 1459, 4459, 0, 'product_38.jpg', 4),
(39, 'Stronghold', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 3841, 6841, 0, 'product_39.jpg', 4),
(40, 'Matsoft', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 4452, 7452, 0, 'product_40.jpg', 2),
(41, 'Fix San', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis', 1674, 4674, 0, 'product_41.jpg', 9),
(42, 'Mat Lam Tam', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 2115, 5115, 0, 'product_42.jpg', 6),
(43, 'Kanlam', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 3178, 6178, 0, 'product_43.jpg', 7),
(44, 'Opela', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', 2358, 5358, 0, 'product_44.jpg', 5),
(45, 'Bigtax', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet', 787, 3787, 0, 'product_45.jpg', 4),
(46, 'Bitchip', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 2326, 5326, 0, 'product_46.jpg', 4),
(47, 'Sonsing', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', 2571, 5571, 0, 'product_47.jpg', 6),
(48, 'Holdlamis', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', 1230, 4230, 0, 'product_48.jpg', 9),
(49, 'Prodder', 'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 1287, 4287, 0, 'product_49.jpg', 9),
(50, 'Duobam', 'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', 4513, 7513, 0, 'product_50.jpg', 8);

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
-- Estructura de tabla para la tabla `usercategory`
--

CREATE TABLE `usercategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usercategory`
--

INSERT INTO `usercategory` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Admin');

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
  `avatar` varchar(450) DEFAULT NULL,
  `iduserCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `avatar`, `iduserCategory`) VALUES
(1, 'Raddy', 'Orvis', 'rorvis0@seesaa.net', '0mz6U5SQGa', 'user_1.jpg', 1),
(2, 'Miller', 'Djurdjevic', 'mdjurdjevic1@gov.uk', 'c3x4zwVQ9', 'user_2.jpg', 1),
(3, 'Martie', 'Titchen', 'mtitchen2@bizjournals.com', 'NGdJcpqtjL', 'user_3.jpg', 1),
(4, 'Kari', 'Summerfield', 'ksummerfield3@elpais.com', 'Gfa5JV', 'user_4.jpg', 1),
(5, 'Darius', 'Azema', 'dazema4@webnode.com', 'rAiCYPt', 'user_5.jpg', 1),
(6, 'Josefa', 'Szach', 'jszach5@scribd.com', 'TsTZrG', 'user_6.jpg', 1),
(7, 'Ag', 'Le Fevre', 'alefevre6@dedecms.com', 'vhhP8NMO', 'user_7.jpg', 1),
(8, 'Anatollo', 'Clitherow', 'aclitherow7@kickstarter.com', 'fbPiETnZtr8', 'user_8.jpg', 1),
(9, 'Alasdair', 'Greson', 'agreson8@ca.gov', '2p2NPaVDUv', 'user_9.jpg', 1),
(10, 'Netty', 'Meere', 'nmeere9@nbcnews.com', 'qS9018LF25', 'user_10.jpg', 1),
(11, 'Lesley', 'Crowcum', 'lcrowcuma@ezinearticles.com', 'tnAmLg', 'user_11.jpg', 1),
(12, 'Sharyl', 'Oldcroft', 'soldcroftb@gravatar.com', 'PnMxekg', 'user_12.jpg', 1),
(13, 'Christine', 'Sedgefield', 'csedgefieldc@fastcompany.com', 'dPDLvmAdCb', 'user_13.jpg', 1),
(14, 'Cindee', 'Cossam', 'ccossamd@vimeo.com', 'Sl8Urk9So3', 'user_14.jpg', 1),
(15, 'Hedy', 'McVicar', 'hmcvicare@vistaprint.com', 'QeVMp06Mo4', 'user_15.jpg', 1),
(16, 'Feliza', 'Messenger', 'fmessengerf@patch.com', 'iFAKO4D', 'user_16.jpg', 1),
(17, 'Merci', 'Billinge', 'mbillingeg@mlb.com', 'XA2bh69E17u', 'user_17.jpg', 1),
(18, 'Christa', 'Lindsey', 'clindseyh@marketwatch.com', 'CVGN6S5', 'user_18.jpg', 1),
(19, 'Karil', 'Emmer', 'kemmeri@smh.com.au', 'PKKmg8zJs', 'user_19.jpg', 1),
(20, 'Sheila-kathryn', 'Matysiak', 'smatysiakj@wufoo.com', 'uY2jRPw', 'user_20.jpg', 1),
(23, 'Gaston', 'Requena', 'gaston@admin.com', '$2b$10$o0SXnNeVNax4cpYCPxemVuPcYnFNbkSYd7KJl1', 'avatar-1596664422139.png', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_carts_users1_idx` (`idUsers`);

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
-- Indices de la tabla `usercategory`
--
ALTER TABLE `usercategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_userCategory1_idx` (`iduserCategory`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usercategory`
--
ALTER TABLE `usercategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_carts_users1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_userCategory1` FOREIGN KEY (`iduserCategory`) REFERENCES `usercategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
