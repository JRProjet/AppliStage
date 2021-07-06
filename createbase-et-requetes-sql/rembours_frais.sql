-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 23 juin 2021 à 13:52
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rembours_frais`
--

-- --------------------------------------------------------

--
-- Structure de la table `demande_remboursement`
--

DROP TABLE IF EXISTS `demande_remboursement`;
CREATE TABLE IF NOT EXISTS `demande_remboursement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `montant` decimal(10,0) NOT NULL,
  `commentaire` varchar(200) NOT NULL,
  `id_type_frais` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fonctionnalite`
--

DROP TABLE IF EXISTS `fonctionnalite`;
CREATE TABLE IF NOT EXISTS `fonctionnalite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  `libelle_menu` varchar(50) NOT NULL,
  `lien_menu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonctionnalite`
--

INSERT INTO `fonctionnalite` (`id`, `libelle`, `libelle_menu`, `lien_menu`) VALUES
(1, 'Saisie d\'une demande de remboursement de frais', 'Ajout demande remboursement', 'ajoutrembour'),
(2, 'Consultation des demandes de remboursement', 'Voir toutes les demandes', 'consultTousRembour.php');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `libelle`) VALUES
(1, 'Delegué'),
(2, 'Responsable comptabilité');

-- --------------------------------------------------------

--
-- Structure de la table `profil_fonct`
--

DROP TABLE IF EXISTS `profil_fonct`;
CREATE TABLE IF NOT EXISTS `profil_fonct` (
  `id_profil` int(11) NOT NULL,
  `id_fonct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil_fonct`
--

INSERT INTO `profil_fonct` (`id_profil`, `id_fonct`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type_frais`
--

DROP TABLE IF EXISTS `type_frais`;
CREATE TABLE IF NOT EXISTS `type_frais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `prenom` varchar(35) NOT NULL,
  `pseudo` varchar(35) NOT NULL,
  `mot_de_passe` varchar(200) NOT NULL,
  `id_profil` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `pseudo`, `mot_de_passe`, `id_profil`) VALUES
(1, 'Aressi', 'Yvan', 'rbtay562', '$2y$10$D0xfm7DFo1IaM0QRUy4aaegu8EoOIdrcVtmwQP0gjHUIhLPqcErnq', 1),
(2, 'Lisilon', 'Pierre', 'rbtlp788', '$2y$10$UviHJr/38HipyN86Ph8SM.BPhsmTGY4qbHUac35B7c9QqxWWRHtoG', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
