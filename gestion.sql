-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 24 avr. 2022 à 04:44
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_croatian_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email_address`) VALUES
(2, 'Aimée', 'Hebert', ''),
(3, 'Marielle', 'Ribeiro', ''),
(4, 'Hilaire', 'Savary', ''),
(5, 'ali', 'Armand', ''),
(6, 'Heger', 'Hebert', ''),
(7, 'Mohsen', 'Ribeiro', ''),
(8, 'Naim', 'Savary', ''),
(9, 'Rébecca', 'Armand', ''),
(10, 'Rébecca', 'Armand', 'Saint-Didier-des-Bois'),
(11, 'Amir', 'Hebert', 'amir@yahoo.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
