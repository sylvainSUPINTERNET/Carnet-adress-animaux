-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Décembre 2016 à 16:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `carnetadressanimaux`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteWeb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `typeAnimal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `adresse`, `phoneNumber`, `siteWeb`, `typeAnimal`) VALUES
(6, 'sylvain.joly@orange.fr', '3 allée des Platanes', '202020200202', 'www.lol.com', 'chien'),
(7, 'sylvain.y@orange.fr', '3 allée des P', '39393939', 'www.lol2.com', 'chien'),
(9, 'sylvain.y@orange.fr', 'test 3 test bis', '13231313', 'www.mdr.com', 'chien'),
(11, 'admin@admin.admin.fr', 'aze 3bis rue', '188181818181', 'www.socket.io', 'chat');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'admin@gmail.com', 1, NULL, '$2y$13$JbwpLwELH9vQJWQFn8nyQ.VdANwvrBfpfcvGIOMiIiz25BKTMc0g.', '2016-12-06 14:33:56', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}'),
(2, 'user', 'user', 'user@gmail.fr', 'user@gmail.fr', 1, NULL, '$2y$13$RM6DAeNk3ZHPzOvbM9gASOoUN12uNNhamy2x6/lf2qZzmJb7cfJTK', '2016-12-06 13:49:57', NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}'),
(3, 'sylvain', 'sylvain', 'aae@orange.fr', 'aae@orange.fr', 1, NULL, '$2y$13$Qt5KQZTjVU.3OAttjAU11ewleH7yNxIdL08Gik1qoF5e8kFtge5t2', '2016-12-06 11:57:36', NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}'),
(4, 'user1', 'user1', 'user1@orange.fr', 'user1@orange.fr', 1, NULL, '$2y$13$mFw2jVqyD/LnhBmIOoPWPe3gsyyB4oXV0IKXHdXI0Jbq963Czz0V.', '2016-12-06 12:28:28', NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}'),
(5, 'test1', 'test1', 'Sylaeazea@ora.fr', 'sylaeazea@ora.fr', 1, NULL, '$2y$13$cwfKiGSmgNMUZJ51TYXDL.jcQBJpZ.YRm2tLeQOT3ESAKpFdSeZ7m', '2016-12-06 12:33:47', NULL, NULL, 'a:1:{i:0;s:9:"ROLE_USER";}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
