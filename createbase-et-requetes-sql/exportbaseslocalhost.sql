-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 17 juin 2021 à 18:35
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `art`
--
CREATE DATABASE IF NOT EXISTS `art` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `art`;

-- --------------------------------------------------------

--
-- Structure de la table `courant`
--

DROP TABLE IF EXISTS `courant`;
CREATE TABLE IF NOT EXISTS `courant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `courant`
--

INSERT INTO `courant` (`id`, `nom`) VALUES
(1, 'impressionnisme'),
(2, 'fauvisme '),
(3, 'cubisme'),
(4, 'action painting'),
(5, 'figuration libre');

-- --------------------------------------------------------

--
-- Structure de la table `musee`
--

DROP TABLE IF EXISTS `musee`;
CREATE TABLE IF NOT EXISTS `musee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `idPays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `musee`
--

INSERT INTO `musee` (`id`, `nom`, `ville`, `idPays`) VALUES
(1, 'Folkwang', 'Essen', 1),
(2, 'National Gallery of Scotland', 'Edimbourg', 3),
(3, 'Musée d\'Orsay', 'Paris', 2),
(4, 'Musée Marmottan', 'Paris', 2),
(5, 'Musée de l\'Orangerie', 'Paris', 2),
(6, 'Metropolitan Museum of Art', 'New York', 2),
(7, 'Courtauld Institute Galleries', 'Londres', 3),
(8, 'National Gallery', 'Londres', 3),
(9, 'Stadische Kunsthalle', 'Mannheim', 3),
(10, 'Musée national Picasso', 'Paris', 2),
(11, 'Musée de l\'Ermitage', 'Saint-Pétersbourg', 8),
(12, 'Musée national d\'art moderne', 'Paris', 2),
(13, 'Lille Métropole Musée d\'art moderne, d\'art contemporain et d\'art brut', 'Villeneuve-d\'Ascq', 2),
(14, 'Tate Gallery', 'Londres', 3),
(15, 'Stedelijk Museum Gallery', 'Londres', 3),
(16, 'Musée d\'art contemporain', 'Lyon', 2);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) DEFAULT NULL,
  `anneeCreation` int(11) DEFAULT NULL,
  `idPeintre` int(11) DEFAULT NULL,
  `idMusee` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id`, `nom`, `anneeCreation`, `idPeintre`, `idMusee`) VALUES
(1, 'Lise à l\'ombrelle', 1867, 1, 1),
(2, 'Bal au moulin de la galette', 1876, 1, 3),
(3, 'Jeunes filles au piano', 1892, 1, 3),
(4, 'La balançoire', 1876, 1, 3),
(5, 'Claude Monet lisant', 1872, 1, 4),
(6, 'Femme nue dans un paysage', 1883, 1, 5),
(7, 'Jeune baigneuse', 1892, 1, 6),
(8, 'La loge', 1874, 1, 7),
(9, 'Jeune fille lisant', 1876, 1, 3),
(10, 'Régates à Sainte-Adresse', 1867, 2, 6),
(11, 'La rue de la Bavolle à Honfleur', 1864, 2, 9),
(12, 'La pie', 1869, 2, 3),
(13, 'Femmes au jardin', 1867, 2, 3),
(14, 'Gare Saint-Lazare', 1877, 2, 3),
(15, 'Meules de foin à la fin de l\'été, effets du matin', 1890, 2, 3),
(16, 'Vue du Canal Saint-Martin', 1870, 3, 3),
(17, 'Le pont de Moret', 1893, 3, 3),
(18, 'Rives de Marne à Chennevières', 1865, 4, 2),
(19, 'Gelée blanche', 1873, 4, 3),
(20, 'Boulevard Montmartre, effet de nuit ', 1897, 4, 8),
(21, 'Jeune fille à la mandoline', 1910, 7, 6),
(22, 'Les demoiselles d\'Avignon', 1907, 7, 6),
(23, 'Jacqueline', 1954, 7, 10),
(24, 'Homme nu aux bras croisés', 1910, 7, 11),
(25, 'The Moon-Woman Cuts the Circle', 1906, 11, 12),
(26, 'Dryade', 1908, 7, 11),
(27, 'Le Guéridon ou Nature Morte au violon', 1911, 6, 12),
(28, 'Le grand nu', 1908, 6, 12),
(29, 'The Moon-Woman Cuts the Circle', 1906, 11, 12),
(30, 'The Deep', 1953, 11, 12),
(31, 'Number 14', 1951, 11, 14),
(32, 'Summertime: Number 9A', 1948, 11, 14),
(33, 'Reflection of the Big Dipper', 1947, 11, 15),
(34, 'Chat rayé du mec à droite', 2005, 13, 16);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`) VALUES
(1, 'Allemagne'),
(2, 'France'),
(3, 'Royaume-Uni'),
(4, 'Etats-Unis'),
(5, 'Russie'),
(6, 'Pays-Bas'),
(7, 'Espagne'),
(8, 'Russie'),
(9, 'essai'),
(10, 'essai');

-- --------------------------------------------------------

--
-- Structure de la table `peintre`
--

DROP TABLE IF EXISTS `peintre`;
CREATE TABLE IF NOT EXISTS `peintre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(40) DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `anneeNaissance` int(11) DEFAULT NULL,
  `anneeDeces` int(11) DEFAULT NULL,
  `idPaysNation` int(11) DEFAULT NULL,
  `idCourant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `peintre`
--

INSERT INTO `peintre` (`id`, `prenom`, `nom`, `anneeNaissance`, `anneeDeces`, `idPaysNation`, `idCourant`) VALUES
(1, 'Auguste', 'Renoir', 1841, 1919, 1, 1),
(2, 'Claude', 'Monet', 1840, 1926, 1, 1),
(3, 'Alfred', 'Sisley', 1839, 1899, 1, 1),
(4, 'Camille', 'Pissaro', 1830, 1903, 1, 1),
(5, 'Fernand', 'Léger', 1881, 1955, 1, 3),
(6, 'Georges', 'Braque', 1882, 1963, 1, 3),
(7, 'Pablo', 'Picasso', 1881, 1973, 7, 1),
(8, 'André', 'Derain', 1880, 1954, 1, 2),
(9, 'Henri', 'Matisse', 1869, 1954, 1, 2),
(10, 'Maurice', 'de Vlaminck', 1876, 1958, 1, 2),
(11, 'Jackson', 'Pollock', 1912, 1956, 4, 4),
(12, 'Franz', 'Kline', 1910, 1962, 4, 4),
(13, 'Robert', 'Combas', 1957, NULL, 2, 5);
--
-- Base de données :  `aviation`
--
CREATE DATABASE IF NOT EXISTS `aviation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aviation`;

-- --------------------------------------------------------

--
-- Structure de la table `aeroport`
--

DROP TABLE IF EXISTS `aeroport`;
CREATE TABLE IF NOT EXISTS `aeroport` (
  `codeAeroport` varchar(50) NOT NULL,
  `nomAeroport` varchar(50) DEFAULT NULL,
  `villeAeroport` varchar(50) DEFAULT NULL,
  `paysAeroport` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codeAeroport`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aeroport`
--

INSERT INTO `aeroport` (`codeAeroport`, `nomAeroport`, `villeAeroport`, `paysAeroport`) VALUES
('BST', 'Porettas', 'Bastia', 'France'),
('EFD', 'Ellington Field', 'Housto', 'Etats-Unis'),
('LD', 'Heathrow', 'Londres', 'Grande-Bretagne'),
('MCS-DM', 'Domodedovo', 'Moscou', 'Russie'),
('NY-JFK', 'John-F Kennedy', 'New York', 'Etats-Unis'),
('ORLY', 'Orly', 'Paris', 'France'),
('RCDG', 'Charles de Gaulle', 'Paris', 'France'),
('TLS', 'Blagnac', 'Toulouse', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

DROP TABLE IF EXISTS `avion`;
CREATE TABLE IF NOT EXISTS `avion` (
  `numAvion` varchar(50) NOT NULL,
  `typeAvion` varchar(50) DEFAULT NULL,
  `dateMiseServiceAvion` date DEFAULT NULL,
  `nbPlacesAvion` int(11) DEFAULT NULL,
  PRIMARY KEY (`numAvion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`numAvion`, `typeAvion`, `dateMiseServiceAvion`, `nbPlacesAvion`) VALUES
('F-G458F', 'B747', '2010-02-08', 350),
('F-GR456', 'A380', '2010-07-05', 345),
('F-R56T4', 'B747', '2003-06-03', 350),
('F-X25D8F', 'A380', '2010-01-10', 345),
('R-YY45F', 'A320', '2006-10-10', 100),
('US-KKR2', 'A330', '2009-05-08', 340);

-- --------------------------------------------------------

--
-- Structure de la table `compagnie`
--

DROP TABLE IF EXISTS `compagnie`;
CREATE TABLE IF NOT EXISTS `compagnie` (
  `numComp` int(11) NOT NULL,
  `nomComp` varchar(50) DEFAULT NULL,
  `nationaliteComp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`numComp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compagnie`
--

INSERT INTO `compagnie` (`numComp`, `nomComp`, `nationaliteComp`) VALUES
(101, 'AIRFRANCE', 'France'),
(150, 'CORSAIR', 'France'),
(201, 'AMERICAN AIRLINES', 'Etats-Unis'),
(205, 'CONTINENTAL AIRLINES', 'Etats-Unis'),
(300, 'LUFTHANSA', 'Allemagne'),
(600, 'AEROFLOT', 'Russie'),
(610, 'AERORUSSIA', 'Russie'),
(630, 'BRITISH AIRWAYS', 'Grande-Bretagne'),
(500, 'BERLINER', 'Allemagne');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formation` varchar(30) NOT NULL,
  `niveau` varchar(30) NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `prixEnEuros` decimal(7,2) NOT NULL,
  `dateDebut` date NOT NULL,
  `dureeEnJours` int(11) NOT NULL,
  `adresseFormation` varchar(30) DEFAULT NULL,
  `villeFormation` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

DROP TABLE IF EXISTS `pilote`;
CREATE TABLE IF NOT EXISTS `pilote` (
  `numPilote` int(11) NOT NULL,
  `nomPilote` varchar(30) DEFAULT NULL,
  `prenomPilote` varchar(30) DEFAULT NULL,
  `adrPilote` varchar(50) DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL,
  PRIMARY KEY (`numPilote`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pilote`
--

INSERT INTO `pilote` (`numPilote`, `nomPilote`, `prenomPilote`, `adrPilote`, `dateEmbauche`) VALUES
(23541, 'PALAMIN', 'Natacha', 'Manchester', '2004-08-07'),
(25682, 'LEFRANCOIS', 'Jean-Michel', 'Evry', NULL),
(37428, 'DUMONTEL', 'Anatole', 'Lyon', '1984-09-23'),
(44510, 'SMITH', 'Joh', 'New York', '2000-01-01'),
(47654, 'KURAKI', 'Vladimir', 'Moscou', '1991-03-12'),
(55600, 'COVER', 'Harry', 'Houston', '2006-01-15'),
(56441, 'RASPOU', 'Tino', 'Moscou', NULL),
(63280, 'BERRY', 'Georges', 'Houston', '2002-12-14'),
(84830, 'ROGER', 'Patrick', 'Paris', '1989-05-05');
--
-- Base de données :  `bd_controle`
--
CREATE DATABASE IF NOT EXISTS `bd_controle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_controle`;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `idfonction` int(11) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `compte` varchar(30) DEFAULT NULL,
  `mot_de_passe` varchar(80) DEFAULT NULL,
  `code_profil` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idfonction` (`idfonction`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `idfonction`, `telephone`, `compte`, `mot_de_passe`, `code_profil`) VALUES
(1, 'Mjouid', 'Perrine', 1, '+33617736680', NULL, NULL, NULL),
(2, 'Foulinos', 'Romain', 2, '+33665432700', NULL, NULL, NULL),
(3, 'Lebos', 'Agnès', 3, '+33730734545', NULL, NULL, NULL),
(4, 'Pratt', 'Gary', 3, '+33633224521', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Responsable de l\'agence'),
(2, 'Comptable'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `horaire_ouverture`
--

DROP TABLE IF EXISTS `horaire_ouverture`;
CREATE TABLE IF NOT EXISTS `horaire_ouverture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  `horaire_matin` varchar(15) DEFAULT NULL,
  `horaire_aprem` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaire_ouverture`
--

INSERT INTO `horaire_ouverture` (`id`, `jour`, `horaire_matin`, `horaire_aprem`) VALUES
(1, 'Lundi', '10h30 à 12h30', '14h00 à 18h30'),
(2, 'Mardi', '8h30 à 12h30', '14h00 à 18h30'),
(3, 'Mercredi', '10h30 à 12h30', '13h30 à 20h00'),
(4, 'Jeudi', '10h30 à 12h30', '13h30 à 19h00'),
(5, 'Vendredi', '9h00 à 12h30', '13h30 à 20h00'),
(6, 'Samedi', '9h00 à 12h30', '13h30 à 20h00');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `libelle`) VALUES
(1, 'Séjours scandinaves'),
(2, 'Séjours en Asie'),
(3, 'Séjours dans le bassin méditerranéen'),
(4, 'Séjours en Italie');

-- --------------------------------------------------------

--
-- Structure de la table `tour_operateur`
--

DROP TABLE IF EXISTS `tour_operateur`;
CREATE TABLE IF NOT EXISTS `tour_operateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_immat` varchar(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `description` varchar(400) NOT NULL,
  `id_specialite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idspecialite` (`id_specialite`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tour_operateur`
--

INSERT INTO `tour_operateur` (`id`, `num_immat`, `nom`, `description`, `id_specialite`) VALUES
(1, 'M2356437843', 'Benett Voyages', 'Spécialiste des séjours scandinaves (Suède, Finlande, Laponie...), Benett Voyages a pour but de partager sa passion des cultures nordiques. Pour cela, le tour opérateur propose un large choix de circuits, de croisières, de séjours ou encore de week-ends.', 1),
(2, 'M2353447820', 'Climats du Monde', 'Spécialiste de l\'Asie, le voyagiste Climats du Monde offre une large gamme de circuits et de séjours aux meilleurs tarifs, ainsi que de nombreux voyages thématiques (sport, culture, zen). Avec Climats du Monde, la Thaïlande, le Vietnam ou encore le Népal sont à portée de main.', 2),
(3, 'M2311117866', 'Donatello', 'Spécialiste de l\'Italie, le voyagiste Donatello propose un large choix de séjours, de week-ends, de circuits ou de voyages personnalisés vers de nombreuses destinations, à l\'instar de l\'Italie et ses îles la Sicile et la Sardaigne, mais aussi le Portugal, Malte ou encore le Kenya.', 4),
(4, 'M2312232211', 'Visiteurs en Asie', 'Avec des destinations phares comme la Thaïlande, l\'Indonésie ou encore le Vietnam, Visiteurs en Asie permet de voyager vers plus de 30 destinations. Sélectionnés avec soin, les séjours et circuits de Visiteurs en Asie répondent aux attentes des voyageurs.', 2),
(5, 'M2356227844', 'Marmara', 'Spécialiste des voyages dans le bassin méditerranéen, Marmara propose à ses clients une large gamme de circuits, de séjours et de croisières et à la particularité de posséder plusieurs clubs. Parmi ses destinations phares citons la Grèce, la Turquie ou encore l\'Egypte.', 3),
(6, 'M2356000860', 'Italowcost', 'Leader des courts séjours à prix dégriffés vers l\'Italie, et plus précisément vers Venise, Italowcost propose des prestations tout compris vers Venise, Rome et Prague. Italowcost est la marque de référence pour les séjours en logement 3 ou 4 étoiles à bas prix en Italie.', 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idfonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD CONSTRAINT `FK_idspecialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id`);
--
-- Base de données :  `bd_gesagence_sisr`
--
CREATE DATABASE IF NOT EXISTS `bd_gesagence_sisr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_gesagence_sisr`;

-- --------------------------------------------------------

--
-- Structure de la table `demande_info`
--

DROP TABLE IF EXISTS `demande_info`;
CREATE TABLE IF NOT EXISTS `demande_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `mel` varchar(40) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `dateDecouverte` date NOT NULL,
  `rencontre` char(1) NOT NULL,
  `decouverteSite` varchar(30) NOT NULL,
  `loisirs` varchar(50) NOT NULL,
  `besoins` varchar(50) NOT NULL,
  `remarque` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_infov1`
--

DROP TABLE IF EXISTS `demande_infov1`;
CREATE TABLE IF NOT EXISTS `demande_infov1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL,
  `mel` varchar(40) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_infov1`
--

INSERT INTO `demande_infov1` (`id`, `nom`, `mel`, `telephone`) VALUES
(1, 'Agnès Kintzler', 'agnes.kintzler@wanadoo.fr', '617736680');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `idfonction` int(11) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `compte` varchar(30) DEFAULT NULL,
  `mot_de_passe` varchar(80) DEFAULT NULL,
  `code_profil` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idfonction` (`idfonction`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `idfonction`, `telephone`, `compte`, `mot_de_passe`, `code_profil`) VALUES
(1, 'Mjouid', 'Perrine', 1, '+33617736680', 'mjouidp', 'mj2021pe', 'A'),
(2, 'Foulinos', 'Romain', 2, '+33665432700', 'foulinosr', 'fo2021ro', 'E'),
(3, 'Lebos', 'Agnès', 3, '+33730734545', 'lebosa', 'le2021ag', 'E'),
(4, 'Pratt', 'Gary', 3, '+33633224521', 'prattg', 'pr2021ga', 'E');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Responsable de l\'agence'),
(2, 'Comptable'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `horaire_ouverture`
--

DROP TABLE IF EXISTS `horaire_ouverture`;
CREATE TABLE IF NOT EXISTS `horaire_ouverture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  `horaire_matin` varchar(15) DEFAULT NULL,
  `horaire_aprem` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaire_ouverture`
--

INSERT INTO `horaire_ouverture` (`id`, `jour`, `horaire_matin`, `horaire_aprem`) VALUES
(1, 'Lundi', '10h30 à 12h30', '14h00 à 18h30'),
(2, 'Mardi', '8h30 à 12h30', '14h00 à 18h30'),
(3, 'Mercredi', '10h30 à 12h30', '13h30 à 20h00'),
(4, 'Jeudi', '10h30 à 12h30', '13h30 à 19h00'),
(5, 'Vendredi', '9h00 à 12h30', '13h30 à 20h00'),
(6, 'Samedi', '9h00 à 12h30', '13h30 à 20h00');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `libelle`) VALUES
(1, 'Séjours scandinaves'),
(2, 'Séjours en Asie'),
(3, 'Séjours dans le bassin méditerranéen'),
(4, 'Séjours en Italie');

-- --------------------------------------------------------

--
-- Structure de la table `tour_operateur`
--

DROP TABLE IF EXISTS `tour_operateur`;
CREATE TABLE IF NOT EXISTS `tour_operateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_immat` varchar(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `description` varchar(400) NOT NULL,
  `id_specialite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idspecialite` (`id_specialite`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tour_operateur`
--

INSERT INTO `tour_operateur` (`id`, `num_immat`, `nom`, `description`, `id_specialite`) VALUES
(1, 'M2356437843', 'Benett Voyages', 'Spécialiste des séjours scandinaves (Suède, Finlande, Laponie...), Benett Voyages a pour but de partager sa passion des cultures nordiques. Pour cela, le tour opérateur propose un large choix de circuits, de croisières, de séjours ou encore de week-ends.', 1),
(2, 'M2353447820', 'Climats du Monde', 'Spécialiste de l\'Asie, le voyagiste Climats du Monde offre une large gamme de circuits et de séjours aux meilleurs tarifs, ainsi que de nombreux voyages thématiques (sport, culture, zen). Avec Climats du Monde, la Thaïlande, le Vietnam ou encore le Népal sont à portée de main.', 2),
(3, 'M2311117866', 'Donatello', 'Spécialiste de l\'Italie, le voyagiste Donatello propose un large choix de séjours, de week-ends, de circuits ou de voyages personnalisés vers de nombreuses destinations, à l\'instar de l\'Italie et ses îles la Sicile et la Sardaigne, mais aussi le Portugal, Malte ou encore le Kenya.', 4),
(4, 'M2312232211', 'Visiteurs en Asie', 'Avec des destinations phares comme la Thaïlande, l\'Indonésie ou encore le Vietnam, Visiteurs en Asie permet de voyager vers plus de 30 destinations. Sélectionnés avec soin, les séjours et circuits de Visiteurs en Asie répondent aux attentes des voyageurs.', 2),
(5, 'M2356227844', 'Marmara', 'Spécialiste des voyages dans le bassin méditerranéen, Marmara propose à ses clients une large gamme de circuits, de séjours et de croisières et à la particularité de posséder plusieurs clubs. Parmi ses destinations phares citons la Grèce, la Turquie ou encore l\'Egypte.', 3),
(6, 'M2356000860', 'Italowcost', 'Leader des courts séjours à prix dégriffés vers l\'Italie, et plus précisément vers Venise, Italowcost propose des prestations tout compris vers Venise, Rome et Prague. Italowcost est la marque de référence pour les séjours en logement 3 ou 4 étoiles à bas prix en Italie.', 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idfonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD CONSTRAINT `FK_idspecialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id`);
--
-- Base de données :  `bd_gesagence_slam`
--
CREATE DATABASE IF NOT EXISTS `bd_gesagence_slam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_gesagence_slam`;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `idfonction` int(11) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `compte` varchar(30) DEFAULT NULL,
  `mot_de_passe` varchar(80) DEFAULT NULL,
  `code_profil` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idfonction` (`idfonction`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `idfonction`, `telephone`, `compte`, `mot_de_passe`, `code_profil`) VALUES
(1, 'Mjouid', 'Perrine', 1, '+33617736680', NULL, NULL, NULL),
(2, 'Foulinos', 'Romain', 2, '+33665432700', NULL, NULL, NULL),
(3, 'Lebos', 'Agnès', 3, '+33730734545', NULL, NULL, NULL),
(4, 'Pratt', 'Gary', 3, '+33633224521', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Responsable de l\'agence'),
(2, 'Comptable'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `horaire_ouverture`
--

DROP TABLE IF EXISTS `horaire_ouverture`;
CREATE TABLE IF NOT EXISTS `horaire_ouverture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  `horaire_matin` varchar(15) DEFAULT NULL,
  `horaire_aprem` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaire_ouverture`
--

INSERT INTO `horaire_ouverture` (`id`, `jour`, `horaire_matin`, `horaire_aprem`) VALUES
(1, 'Lundi', '10h30 à 12h30', '14h00 à 18h30'),
(2, 'Mardi', '8h30 à 12h30', '14h00 à 18h30'),
(3, 'Mercredi', '10h30 à 12h30', '13h30 à 20h00'),
(4, 'Jeudi', '10h30 à 12h30', '13h30 à 19h00'),
(5, 'Vendredi', '9h00 à 12h30', '13h30 à 20h00'),
(6, 'Samedi', '9h00 à 12h30', '13h30 à 20h00');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `libelle`) VALUES
(1, 'Mozambique'),
(2, 'Cap-vert'),
(3, 'Chine'),
(4, 'Laos');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(200) NOT NULL,
  `durée` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `intitule`, `durée`, `prix`, `id_theme`) VALUES
(1, 'Un trek au Guatemala à la recherche d\'une pyramide maya ', 14, 2000, 1),
(2, 'Balades en chiens de traîneaux au cœur de la Laponie finlandaise. ', 8, 1200, 1),
(3, 'Partagez la vie d\'un berger dans les pyrénées.', 5, 500, 2),
(4, 'Partagez la vie d\'une éleveuse d\'alpagas dans le finistère.', 6, 350, 2),
(5, 'Voyagez avec un chamane au Pérou.', 14, 1700, 3),
(6, 'Deux semaines dans un monastère bouddhiste à Katmandou.', 10, 1200, 3);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `libelle`) VALUES
(1, 'Séjours scandinaves'),
(2, 'Séjours en Asie'),
(3, 'Séjours dans le bassin méditerranéen'),
(4, 'Séjours en Italie');

-- --------------------------------------------------------

--
-- Structure de la table `theme_voyage`
--

DROP TABLE IF EXISTS `theme_voyage`;
CREATE TABLE IF NOT EXISTS `theme_voyage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `theme_voyage`
--

INSERT INTO `theme_voyage` (`id`, `libelle`) VALUES
(1, 'Treks & randonnées '),
(2, 'Avec des animaux'),
(3, 'Insolite');

-- --------------------------------------------------------

--
-- Structure de la table `tour_operateur`
--

DROP TABLE IF EXISTS `tour_operateur`;
CREATE TABLE IF NOT EXISTS `tour_operateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_immat` varchar(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `description` varchar(400) NOT NULL,
  `id_specialite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idspecialite` (`id_specialite`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tour_operateur`
--

INSERT INTO `tour_operateur` (`id`, `num_immat`, `nom`, `description`, `id_specialite`) VALUES
(1, 'M2356437843', 'Benett Voyages', 'Spécialiste des séjours scandinaves (Suède, Finlande, Laponie...), Benett Voyages a pour but de partager sa passion des cultures nordiques. Pour cela, le tour opérateur propose un large choix de circuits, de croisières, de séjours ou encore de week-ends.', 1),
(2, 'M2353447820', 'Climats du Monde', 'Spécialiste de l\'Asie, le voyagiste Climats du Monde offre une large gamme de circuits et de séjours aux meilleurs tarifs, ainsi que de nombreux voyages thématiques (sport, culture, zen). Avec Climats du Monde, la Thaïlande, le Vietnam ou encore le Népal sont à portée de main.', 2),
(3, 'M2311117866', 'Donatello', 'Spécialiste de l\'Italie, le voyagiste Donatello propose un large choix de séjours, de week-ends, de circuits ou de voyages personnalisés vers de nombreuses destinations, à l\'instar de l\'Italie et ses îles la Sicile et la Sardaigne, mais aussi le Portugal, Malte ou encore le Kenya.', 4),
(4, 'M2312232211', 'Visiteurs en Asie', 'Avec des destinations phares comme la Thaïlande, l\'Indonésie ou encore le Vietnam, Visiteurs en Asie permet de voyager vers plus de 30 destinations. Sélectionnés avec soin, les séjours et circuits de Visiteurs en Asie répondent aux attentes des voyageurs.', 2),
(5, 'M2356227844', 'Marmara', 'Spécialiste des voyages dans le bassin méditerranéen, Marmara propose à ses clients une large gamme de circuits, de séjours et de croisières et à la particularité de posséder plusieurs clubs. Parmi ses destinations phares citons la Grèce, la Turquie ou encore l\'Egypte.', 3),
(6, 'M2356000860', 'Italowcost', 'Leader des courts séjours à prix dégriffés vers l\'Italie, et plus précisément vers Venise, Italowcost propose des prestations tout compris vers Venise, Rome et Prague. Italowcost est la marque de référence pour les séjours en logement 3 ou 4 étoiles à bas prix en Italie.', 4);

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
CREATE TABLE IF NOT EXISTS `voyage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `duree` int(11) NOT NULL,
  `id_pays` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pays` (`id_pays`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`id`, `intitule`, `description`, `duree`, `id_pays`) VALUES
(1, 'De la réserve de Niassa aux Quirimbas ', 'Une belle opportunité d’approcher les fauves de l’authentique réserve de Niassa et de se délasser sur les plages de l’archipel des Quirimba, tout en profitant d’hébergements de luxe. ', 14, 1),
(2, 'Cabo Verde, lunaire et volcanique ', 'Découvrez Santiago à l\'ambiance africaine où randonnées et marchés colorés vous attendent.', 20, 2),
(3, 'Fabuleux désert de Gobi ', 'Découvrez les dunes chantantes de Khongorin Els, explorez le canyon de Bayanzag.', 10, 3),
(4, 'Le fabuleux Mékong ', 'Découverte du sud méconnu du Laos (Hinboun, Thakek, Savannakhet) et ses 4000 îles.', 18, 4),
(5, 'Xi\'an son armée de terrre cuite et sa mosquée ', 'Découverte de la plus grande des premières mosquées de la Chine et les huit mille statues de soldats et chevaux en terre cuite, représentant les troupes de Qin Shi Huang, le premier empereur de Chine.', 13, 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idfonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`id_theme`) REFERENCES `theme_voyage` (`id`);

--
-- Contraintes pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD CONSTRAINT `FK_idspecialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id`);

--
-- Contraintes pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id`);
--
-- Base de données :  `biscuit`
--
CREATE DATABASE IF NOT EXISTS `biscuit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biscuit`;

-- --------------------------------------------------------

--
-- Structure de la table `artisan`
--

DROP TABLE IF EXISTS `artisan`;
CREATE TABLE IF NOT EXISTS `artisan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` char(4) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `artisan`
--

INSERT INTO `artisan` (`id`, `civilite`, `nom`, `prenom`, `ville`, `profession`) VALUES
(1, 'M', 'Le Goff', 'Yvon', 'Kerguidy', 'boucher'),
(2, 'M', 'Le Kernec', 'Yan', 'Kuig', 'pâtissier'),
(3, 'Mme', 'Gwendal', 'Anne', 'Kerveur', 'pâtissier'),
(4, 'M', 'Gdweny', 'Pierre', 'Kerveur', 'boucher'),
(5, 'Mme', 'Ugwon', 'Claire', 'Plogoff', 'boucher'),
(6, 'Mme', 'Breizh', 'Marie', 'Plogoff', 'boulanger');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `poids` decimal(7,2) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `promo` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `categorie`, `poids`, `prix`, `stock`, `promo`) VALUES
(1, 'Salicorne  \"lesOuessantines\"', 'conserve', '400.00', '6.50', 200, 'O'),
(2, 'Verrine de mousse au confit de St Jacques', 'conserve', '80.00', '3.30', 100, 'N'),
(3, 'Raviolis de la mer', 'conserve', '400.00', '5.90', 500, 'O'),
(4, 'Petit Pâté Breton aux noix', 'conserve', '150.00', '5.50', 250, 'N'),
(5, 'Verrine de rillette de maquereaux', 'conserve', '80.00', '3.30', 200, 'O'),
(6, 'Verrine de crème de sardines au whisky', 'conserve', '80.00', '3.30', 400, 'O'),
(7, 'Verrine de délice de saumon à l’estragon', 'conserve', '80.00', '3.30', 20, 'N'),
(8, 'Caramels au beurre salé', 'confiserie', '250.00', '6.60', 200, 'N'),
(9, 'Caramels au beurre salé', 'confiserie', '500.00', '12.00', 100, 'N'),
(10, 'Caramels au beurre salé', 'confiserie', '2000.00', '20.00', 50, 'N'),
(11, 'Crêpes nature', 'biscuiterie', '200.00', '5.80', 50, 'N'),
(12, 'Crêpes au Nutella', 'biscuiterie', '280.00', '6.30', 100, 'O'),
(13, 'Sachet de 12 galettes', 'biscuiterie', '250.00', '6.10', 80, 'N'),
(14, 'Sachet de 24 galettes', 'biscuiterie', '500.00', '11.00', 50, 'N');
--
-- Base de données :  `biscuiterie`
--
CREATE DATABASE IF NOT EXISTS `biscuiterie` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biscuiterie`;

-- --------------------------------------------------------

--
-- Structure de la table `artisan`
--

DROP TABLE IF EXISTS `artisan`;
CREATE TABLE IF NOT EXISTS `artisan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` char(4) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_profession` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `artisan`
--

INSERT INTO `artisan` (`id`, `civilite`, `nom`, `prenom`, `ville`, `id_profession`) VALUES
(1, 'M', 'Le Goff', 'Yvon', 'Kerguidy', 1),
(2, 'M', 'Le Kernec', 'Yan', 'Kuig', 3),
(3, 'Mme', 'Gwendal', 'Anne', 'Kerveur', 3),
(4, 'M', 'Gdweny', 'Pierre', 'Kerveur', 1),
(5, 'Mme', 'Ugwon', 'Claire', 'Plogoff', 1),
(6, 'Mme', 'Breizh', 'Marie', 'Plogoff', 2);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_magasin`
--

DROP TABLE IF EXISTS `categorie_magasin`;
CREATE TABLE IF NOT EXISTS `categorie_magasin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_magasin`
--

INSERT INTO `categorie_magasin` (`id`, `libelle`) VALUES
(1, 'boucherie'),
(2, 'pâtisserie et confiserie'),
(3, 'vente de souvenirs'),
(4, 'alimentation spécialisée');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_produit`
--

DROP TABLE IF EXISTS `categorie_produit`;
CREATE TABLE IF NOT EXISTS `categorie_produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_produit`
--

INSERT INTO `categorie_produit` (`id`, `libelle`) VALUES
(1, 'conserve'),
(2, 'confiserie'),
(3, 'biscuiterie'),
(4, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

DROP TABLE IF EXISTS `magasin`;
CREATE TABLE IF NOT EXISTS `magasin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `superficie` decimal(6,2) DEFAULT NULL,
  `id_categorie_magasin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `magasin`
--

INSERT INTO `magasin` (`id`, `nom`, `lieu`, `superficie`, `id_categorie_magasin`) VALUES
(1, 'Larnicol', 'Pointe du Raz', '40.00', 1),
(2, 'Douarnez', 'Locronan', '120.00', 2),
(3, 'Aux délices bretons', 'Quimper', '60.00', 4),
(4, 'Les délices de la mer', 'Quimper', '200.00', 4),
(5, 'Ty Guerne', 'Concarneau', '300.00', 3),
(6, 'Ti ar sonerien', 'Pont-Aven', '100.00', 4);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `poids` decimal(7,2) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `promo` char(1) NOT NULL,
  `id_artisan` int(11) NOT NULL,
  `id_categorie_produit` int(11) NOT NULL,
  `id_magasin_exclusif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `poids`, `prix`, `stock`, `promo`, `id_artisan`, `id_categorie_produit`, `id_magasin_exclusif`) VALUES
(1, 'Salicorne \"lesOuessantines\"', '400.00', '6.50', 200, 'O', 5, 1, NULL),
(2, 'Verrine de mousse au confit de St Jacques', '80.00', '3.30', 100, 'N', 1, 1, 4),
(3, 'Raviolis de la mer', '400.00', '5.90', 500, 'O', 5, 1, 4),
(4, 'Petit Pâté Breton aux noix', '150.00', '5.50', 250, 'N', 4, 1, NULL),
(5, 'Verrine de rillette de maquereaux', '80.00', '3.30', 200, 'O', 1, 1, NULL),
(6, 'Verrine de crème de sardines au whisky', '80.00', '3.30', 400, 'O', 1, 1, 3),
(7, 'Verrine de délice de saumon à l’estragon', '80.00', '3.30', 20, 'N', 1, 1, NULL),
(8, 'Caramels au beurre salé sachet de 250g', '250.00', '6.60', 200, 'N', 3, 2, NULL),
(9, 'Caramels au beurre salé sachet de 750g', '500.00', '12.00', 100, 'N', 3, 2, NULL),
(10, 'Caramels au beurre salé et au basilic (250g)', '2000.00', '20.00', 50, 'N', 3, 2, NULL),
(11, 'Crêpes nature', '200.00', '5.80', 50, 'N', 6, 3, NULL),
(12, 'Crêpes au Nutella', '280.00', '6.30', 100, 'O', 6, 3, NULL),
(13, 'Sachet de 12 galettes', '250.00', '6.10', 80, 'N', 2, 3, NULL),
(14, 'Sachet de 24 galettes', '500.00', '11.00', 50, 'N', 2, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profession`
--

DROP TABLE IF EXISTS `profession`;
CREATE TABLE IF NOT EXISTS `profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profession`
--

INSERT INTO `profession` (`id`, `libelle`) VALUES
(1, 'boucher'),
(2, 'boulanger'),
(3, 'pâtissier');
--
-- Base de données :  `bornes`
--
CREATE DATABASE IF NOT EXISTS `bornes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bornes`;

-- --------------------------------------------------------

--
-- Structure de la table `borne`
--

DROP TABLE IF EXISTS `borne`;
CREATE TABLE IF NOT EXISTS `borne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateMiseEnService` date NOT NULL,
  `numeroSerie` int(11) NOT NULL,
  `idStation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idStation` (`idStation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `borne`
--

INSERT INTO `borne` (`id`, `dateMiseEnService`, `numeroSerie`, `idStation`) VALUES
(1, '2020-01-01', 1111, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pointcharge`
--

DROP TABLE IF EXISTS `pointcharge`;
CREATE TABLE IF NOT EXISTS `pointcharge` (
  `idBorne` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `idTypeCharge` int(11) NOT NULL,
  PRIMARY KEY (`idBorne`,`numero`),
  KEY `idTypeCharge` (`idTypeCharge`),
  KEY `idBorne` (`idBorne`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pointcharge`
--

INSERT INTO `pointcharge` (`idBorne`, `numero`, `idTypeCharge`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `recharge`
--

DROP TABLE IF EXISTS `recharge`;
CREATE TABLE IF NOT EXISTS `recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateHeureDebut` datetime NOT NULL,
  `dateHeureFin` datetime NOT NULL,
  `nbKW` float NOT NULL,
  `montantRegle` float NOT NULL,
  `idPointCharge` int(11) NOT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `idBorne` int(11) NOT NULL,
  `numeroPointCharge` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idBorne` (`idBorne`,`numeroPointCharge`),
  KEY `idUtilisateur` (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `recharge`
--

INSERT INTO `recharge` (`id`, `dateHeureDebut`, `dateHeureFin`, `nbKW`, `montantRegle`, `idPointCharge`, `idUtilisateur`, `idBorne`, `numeroPointCharge`) VALUES
(1, '2021-04-07 04:00:00', '2021-04-07 04:00:00', 100, 52, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`id`, `nom`, `longitude`, `latitude`) VALUES
(1, 'aaaa', 'aaa', 'aa');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id`, `libelle`) VALUES
(1, 'actif'),
(2, 'à supprimer suite à la demande de l\'utilisateur'),
(3, 'à supprimer car inactif depuis 3 ans');

-- --------------------------------------------------------

--
-- Structure de la table `typecharge`
--

DROP TABLE IF EXISTS `typecharge`;
CREATE TABLE IF NOT EXISTS `typecharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `typecharge`
--

INSERT INTO `typecharge` (`id`, `libelle`) VALUES
(1, 'rapide');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `anneeNaissance` int(11) NOT NULL,
  `sexe` char(1) NOT NULL,
  `mel` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `codePostal` varchar(5) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `IdStatut` int(11) NOT NULL,
  `dateInscription` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdStatut` (`IdStatut`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `anneeNaissance`, `sexe`, `mel`, `adresse`, `codePostal`, `ville`, `IdStatut`, `dateInscription`) VALUES
(1, 'Kintzler', 'Etienne', 1991, '', '', '', '', '', 2, '2021-04-24'),
(2, 'Loubgat', 'Aurélie', 1954, '', '', '', '', '', 1, '2021-04-24');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `borne`
--
ALTER TABLE `borne`
  ADD CONSTRAINT `borne_ibfk_1` FOREIGN KEY (`idStation`) REFERENCES `station` (`id`);

--
-- Contraintes pour la table `pointcharge`
--
ALTER TABLE `pointcharge`
  ADD CONSTRAINT `pointcharge_ibfk_1` FOREIGN KEY (`idBorne`) REFERENCES `borne` (`id`),
  ADD CONSTRAINT `pointcharge_ibfk_2` FOREIGN KEY (`idTypeCharge`) REFERENCES `typecharge` (`id`);

--
-- Contraintes pour la table `recharge`
--
ALTER TABLE `recharge`
  ADD CONSTRAINT `recharge_ibfk_1` FOREIGN KEY (`idBorne`,`numeroPointCharge`) REFERENCES `pointcharge` (`idBorne`, `numero`),
  ADD CONSTRAINT `recharge_ibfk_2` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`IdStatut`) REFERENCES `statut` (`id`);
--
-- Base de données :  `capes`
--
CREATE DATABASE IF NOT EXISTS `capes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `capes`;

-- --------------------------------------------------------

--
-- Structure de la table `chargement`
--

DROP TABLE IF EXISTS `chargement`;
CREATE TABLE IF NOT EXISTS `chargement` (
  `date` date NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_r` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chargement`
--

INSERT INTO `chargement` (`date`, `id_u`, `id_r`) VALUES
('1931-06-29', 4, 4),
('2020-05-30', 4, 13),
('2021-04-01', 1, 13),
('2021-01-20', 7, 15);

-- --------------------------------------------------------

--
-- Structure de la table `comptes`
--

DROP TABLE IF EXISTS `comptes`;
CREATE TABLE IF NOT EXISTS `comptes` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comptes`
--

INSERT INTO `comptes` (`id`, `nom`) VALUES
(1, 'Ada Lovelace'),
(4, 'Alan Turin'),
(5, 'Kintzler'),
(6, 'Cartier'),
(7, 'Richard');

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE IF NOT EXISTS `eleves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `classe` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`id`, `nom`, `prenom`, `classe`) VALUES
(1, 'Kintzler', 'Agnès', 'btssio'),
(2, 'Cartier ', 'Mathieu', 'TSTMG');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

DROP TABLE IF EXISTS `emprunts`;
CREATE TABLE IF NOT EXISTS `emprunts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_livres` int(11) NOT NULL,
  `id_eleves` int(11) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_eleves` (`id_eleves`),
  KEY `id_livres` (`id_livres`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `emprunts`
--

INSERT INTO `emprunts` (`id`, `id_livres`, `id_eleves`, `debut`, `fin`) VALUES
(1, 2, 2, '2020-04-01', '2021-03-23'),
(2, 2, 1, '2020-01-02', '2021-03-23');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

DROP TABLE IF EXISTS `livres`;
CREATE TABLE IF NOT EXISTS `livres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(30) NOT NULL,
  `auteur` varchar(30) NOT NULL,
  `ann_publi` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `ann_publi`) VALUES
(1, 'Le gral', 'inconnu', 1983),
(2, '1984', 'O wells', 1975);

-- --------------------------------------------------------

--
-- Structure de la table `ressources`
--

DROP TABLE IF EXISTS `ressources`;
CREATE TABLE IF NOT EXISTS `ressources` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ressources`
--

INSERT INTO `ressources` (`id`, `owner`, `titre`, `type`) VALUES
(4, 1, 'Machine à décalage', 'cours'),
(13, 4, 'Intelligence artificielle', 'td'),
(14, 5, 'SQL', 'cours'),
(15, 6, 'HTML5', 'td');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`id_eleves`) REFERENCES `eleves` (`id`),
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`id_livres`) REFERENCES `livres` (`id`);
--
-- Base de données :  `cinema`
--
CREATE DATABASE IF NOT EXISTS `cinema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cinema`;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `mois` tinyint(4) DEFAULT NULL CHECK (`mois` >= 1 and `mois` <= 12),
  `fonction` varchar(15) DEFAULT 'caissière' CHECK (`fonction` in ('projectionniste','responsable','caissière')),
  `tauxHoraireNor` decimal(5,2) NOT NULL,
  `tauxHoraireDimfer` decimal(5,2) NOT NULL,
  `dateHeureCre` datetime DEFAULT curdate(),
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) NOT NULL,
  `dateSortie` date NOT NULL,
  `nombreEntree` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `dateSortie`, `nombreEntree`) VALUES
(1, 'Les vétos', '2020-01-01', 560),
(2, '1917', '2020-01-15', 153),
(3, 'Le prince oublié', '2020-02-12', 392),
(4, 'La voix du succès', '2020-07-14', NULL),
(5, 'Le retour des vampires 4', '2020-10-31', 300),
(6, 'Le retour des vampires 4', '2020-10-31', 300),
(7, 'Le retour des vampires 4', '2020-10-31', 300),
(8, 'Le retour des vampires 4', '2020-10-31', 300);
--
-- Base de données :  `clientele`
--
CREATE DATABASE IF NOT EXISTS `clientele` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `clientele`;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

DROP TABLE IF EXISTS `demande`;
CREATE TABLE IF NOT EXISTS `demande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `importance` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`id`, `libelle`, `importance`) VALUES
(1, 'Mise à jour de l\'anti-virus', 'Très urgent'),
(2, 'Installation de l\'application gestcom', 'Urgent'),
(3, 'Formation sécurité sur la stratégie des mots de passe', 'Très urgent'),
(4, 'Formation sauvegarde', 'Très urgent'),
(5, 'Changement des imprimantes laser', 'Très urgent'),
(6, 'Mise à jour de l\'anti-virus', 'Très urgent'),
(7, 'Installation de l\'application gestcom', 'Urgent'),
(8, 'Formation sécurité sur la stratégie des mots de passe', 'Très urgent'),
(9, 'Formation sauvegarde', 'Très urgent'),
(10, 'Changement des imprimantes laser', 'Très urgent'),
(11, 'Mise à jour de l\'anti-virus', 'Très urgent'),
(12, 'Installation de l\'application gestcom', 'Urgent'),
(13, 'Formation sécurité sur la stratégie des mots de passe', 'Très urgent'),
(14, 'Formation sauvegarde', 'Très urgent'),
(15, 'Changement des imprimantes laser', 'Très urgent');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `service`, `grade`) VALUES
(1, 'Lousmi', 'pierre', 'comptabilite', 'directeur'),
(2, 'Litul', 'Eléonore', 'Informatique', 'Directeur'),
(3, 'Moulin', 'Paul', 'Comptabilité', 'Employé'),
(4, 'Kouliste', 'Agathe', 'Informatique', 'Agent de maîtrise'),
(5, 'Bismute', 'Jules', 'Commercial', 'Employé'),
(6, 'Grainta', 'Louis', 'Comptabilité', 'Employé'),
(7, 'Carrera', 'Mathilde', 'Informatique', 'Cadre'),
(8, 'Lossera', 'Agnès', 'Informatique', 'Cadre'),
(9, 'Pulcini', 'Aurélie', 'Informatique', 'Agent de maîtrise'),
(10, 'Claudius', 'Etienne', 'Comptabilité', 'Cadre');
--
-- Base de données :  `essai`
--
CREATE DATABASE IF NOT EXISTS `essai` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE `essai`;

-- --------------------------------------------------------

--
-- Structure de la table `bts`
--

DROP TABLE IF EXISTS `bts`;
CREATE TABLE IF NOT EXISTS `bts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bts`
--

INSERT INTO `bts` (`id`, `libelle`) VALUES
(1, 'BTS SIO'),
(2, 'BTS SAM'),
(3, 'BTS CGO');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_convoc`
--

DROP TABLE IF EXISTS `categorie_convoc`;
CREATE TABLE IF NOT EXISTS `categorie_convoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_convoc`
--

INSERT INTO `categorie_convoc` (`id`, `libelle`) VALUES
(1, 'surveillance'),
(2, 'membre du jury'),
(3, 'suppléance');

-- --------------------------------------------------------

--
-- Structure de la table `convocation`
--

DROP TABLE IF EXISTS `convocation`;
CREATE TABLE IF NOT EXISTS `convocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure_deb` time NOT NULL,
  `heure_fin` time NOT NULL,
  `tiers_temps` char(1) NOT NULL DEFAULT 'N',
  `id_epreuve` int(11) NOT NULL,
  `id_professeur` int(11) NOT NULL,
  `id_categorie_convoc` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_epreuve` (`id_epreuve`),
  KEY `id_professeur` (`id_professeur`),
  KEY `id_categorie_convoc` (`id_categorie_convoc`),
  KEY `id_salle` (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `convocation`
--

INSERT INTO `convocation` (`id`, `date`, `heure_deb`, `heure_fin`, `tiers_temps`, `id_epreuve`, `id_professeur`, `id_categorie_convoc`, `id_salle`) VALUES
(1, '2021-05-10', '14:00:00', '18:00:00', 'N', 2, 1, 1, 3),
(2, '2021-05-11', '10:00:00', '12:00:00', 'N', 5, 1, 1, 3),
(3, '2021-05-11', '16:30:00', '18:00:00', 'N', 10, 1, 3, 2),
(4, '2021-05-12', '10:30:00', '12:30:00', 'N', 6, 1, 1, 4),
(5, '2021-05-19', '14:00:00', '18:00:00', 'N', 14, 1, 1, 4),
(6, '2021-05-11', '10:00:00', '12:40:00', 'O', 7, 2, 1, 2),
(7, '2021-05-11', '14:00:00', '18:00:00', 'N', 8, 2, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve`
--

DROP TABLE IF EXISTS `epreuve`;
CREATE TABLE IF NOT EXISTS `epreuve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `duree` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `heure_deb` time NOT NULL,
  `heure_deb_tiers_temps` time NOT NULL,
  `heure_fin` time NOT NULL,
  `heure_fin_tiers_temps` time NOT NULL,
  `commentaires` varchar(100) NOT NULL,
  `id_bts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_niveau` (`id_bts`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `epreuve`
--

INSERT INTO `epreuve` (`id`, `libelle`, `duree`, `date`, `heure_deb`, `heure_deb_tiers_temps`, `heure_fin`, `heure_fin_tiers_temps`, `commentaires`, `id_bts`) VALUES
(1, 'Production et fourniture de services informatiques (E5)', '4h', '2021-05-12', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(2, 'Culture générale et expression ', '4h', '2021-05-11', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(3, 'Expression et communication en langue anglaise', '2h', '2021-05-11', '10:30:00', '00:00:00', '12:30:00', '00:00:00', '2 heures de mise en loge', 1),
(4, 'Analyse économique, managériale et juridique des services informatiques', '4h', '2021-05-19', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(5, 'Mathématiques approfondies (épreuve facultative)', '2h', '2021-05-10', '10:30:00', '00:00:00', '12:30:00', '00:00:00', '2heures de mise en loge', 1),
(6, 'Mathématiques', '2h', '2021-05-10', '14:00:00', '00:00:00', '16:00:00', '00:00:00', '2 heures de mise en loge', 1),
(7, 'Culture générale et expression ', '4h', '2021-05-11', '14:00:00', '14:00:00', '18:00:00', '14:00:00', 'mise en loge ???', 3),
(8, 'Culture économique et managériale', '4h', '2021-05-10', '14:00:00', '14:00:00', '18:00:00', '14:00:00', 'mise en loge ??', 3),
(9, 'Etude de cas (E41)', '4h30', '2021-05-19', '14:00:00', '14:00:00', '18:30:00', '18:30:00', 'mise en loge ???', 3),
(10, 'Mathématiques (candidats individuels)', '2h', '2021-05-11', '10:00:00', '10:00:00', '12:00:00', '12:00:00', 'mise en loge ??', 3),
(11, 'Culture économique, juridique et managériale', '4h', '2021-05-10', '14:00:00', '14:00:00', '18:00:00', '18:00:00', '', 2),
(12, 'Langue vivante étrangère A', '2h', '2021-05-11', '10:00:00', '10:00:00', '12:00:00', '12:00:00', '2h de mise en loge', 2),
(13, 'Culture générale et expression', '4h', '2021-05-11', '14:00:00', '14:00:00', '18:00:00', '18:00:00', 'mise en loge de 2h', 2),
(14, 'Langue vivante étrangère B', '2h', '2021-05-12', '10:30:00', '10:30:00', '12:30:00', '12:30:00', '2h de mise en loge', 2),
(15, 'Collaboration à la gestion des ressources humaines', '4h', '2021-05-19', '14:00:00', '14:00:00', '18:00:00', '18:00:00', '3h de mise en loge', 2);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(10) NOT NULL,
  `nom` varchar(35) NOT NULL,
  `prenom` varchar(35) NOT NULL,
  `mail` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `civilite`, `nom`, `prenom`, `mail`) VALUES
(1, 'Madame', 'Bernede', 'Béatrice', 'agnes.kintzler@wanadoo.fr'),
(2, 'Monsieur', 'Dodemont', 'Jean-Bernard', 'agnes.kintzler@wanadoo.fr'),
(3, 'Madame', 'Cartier', 'Mathilde', 'agnes.kintzler@wanadoo.fr'),
(4, 'Monsieur', 'Cardoni', 'Jean-Marie', 'agnes.kintzler@wanadoo.fr'),
(5, 'Monsieur', 'Grainger', 'Glen', 'agnes.kintzler@wanadoo.fr'),
(6, 'Madame', 'Bladgé', 'Caroline', 'agnes.kintzler@wanadoo.fr'),
(7, 'Monsieur', 'Kuntz', 'François', 'agnes.kintzler@wanadoo.fr'),
(8, 'Monsieur', 'Joliveau', 'Mathieu', 'agnes.kintzler@wanadoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `libelle`, `description`) VALUES
(1, '1', 'Salle des tiers temps'),
(2, '2', 'Salle pour SIO'),
(3, '3', 'Salle pour CGO'),
(4, '4', 'salle pour SAM');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `convocation`
--
ALTER TABLE `convocation`
  ADD CONSTRAINT `convocation_ibfk_1` FOREIGN KEY (`id_epreuve`) REFERENCES `epreuve` (`id`),
  ADD CONSTRAINT `convocation_ibfk_2` FOREIGN KEY (`id_professeur`) REFERENCES `professeur` (`id`),
  ADD CONSTRAINT `convocation_ibfk_3` FOREIGN KEY (`id_categorie_convoc`) REFERENCES `categorie_convoc` (`id`),
  ADD CONSTRAINT `convocation_ibfk_4` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD CONSTRAINT `epreuve_ibfk_1` FOREIGN KEY (`id_bts`) REFERENCES `bts` (`id`);
--
-- Base de données :  `essaicontrole`
--
CREATE DATABASE IF NOT EXISTS `essaicontrole` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `essaicontrole`;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `idfonction` int(11) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `compte` varchar(30) DEFAULT NULL,
  `mot_de_passe` varchar(80) DEFAULT NULL,
  `code_profil` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idfonction` (`idfonction`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `idfonction`, `telephone`, `compte`, `mot_de_passe`, `code_profil`) VALUES
(1, 'Mjouid', 'Perrine', 1, '+33617736680', NULL, NULL, NULL),
(2, 'Foulinos', 'Romain', 2, '+33665432700', NULL, NULL, NULL),
(3, 'Lebos', 'Agnès', 3, '+33730734545', NULL, NULL, NULL),
(4, 'Pratt', 'Gary', 3, '+33633224521', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle`) VALUES
(1, 'Responsable de l\'agence'),
(2, 'Comptable'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Structure de la table `horaire_ouverture`
--

DROP TABLE IF EXISTS `horaire_ouverture`;
CREATE TABLE IF NOT EXISTS `horaire_ouverture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  `horaire_matin` varchar(15) DEFAULT NULL,
  `horaire_aprem` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `horaire_ouverture`
--

INSERT INTO `horaire_ouverture` (`id`, `jour`, `horaire_matin`, `horaire_aprem`) VALUES
(1, 'Lundi', '10h30 à 12h30', '14h00 à 18h30'),
(2, 'Mardi', '8h30 à 12h30', '14h00 à 18h30'),
(3, 'Mercredi', '10h30 à 12h30', '13h30 à 20h00'),
(4, 'Jeudi', '10h30 à 12h30', '13h30 à 19h00'),
(5, 'Vendredi', '9h00 à 12h30', '13h30 à 20h00'),
(6, 'Samedi', '9h00 à 12h30', '13h30 à 20h00');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id`, `libelle`) VALUES
(1, 'Séjours scandinaves'),
(2, 'Séjours en Asie'),
(3, 'Séjours dans le bassin méditerranéen'),
(4, 'Séjours en Italie');

-- --------------------------------------------------------

--
-- Structure de la table `tour_operateur`
--

DROP TABLE IF EXISTS `tour_operateur`;
CREATE TABLE IF NOT EXISTS `tour_operateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_immat` varchar(11) NOT NULL,
  `nom` varchar(75) NOT NULL,
  `description` varchar(400) NOT NULL,
  `id_specialite` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idspecialite` (`id_specialite`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tour_operateur`
--

INSERT INTO `tour_operateur` (`id`, `num_immat`, `nom`, `description`, `id_specialite`) VALUES
(1, 'M2356437843', 'Benett Voyages', 'Spécialiste des séjours scandinaves (Suède, Finlande, Laponie...), Benett Voyages a pour but de partager sa passion des cultures nordiques. Pour cela, le tour opérateur propose un large choix de circuits, de croisières, de séjours ou encore de week-ends.', 1),
(2, 'M2353447820', 'Climats du Monde', 'Spécialiste de l\'Asie, le voyagiste Climats du Monde offre une large gamme de circuits et de séjours aux meilleurs tarifs, ainsi que de nombreux voyages thématiques (sport, culture, zen). Avec Climats du Monde, la Thaïlande, le Vietnam ou encore le Népal sont à portée de main.', 2),
(3, 'M2311117866', 'Donatello', 'Spécialiste de l\'Italie, le voyagiste Donatello propose un large choix de séjours, de week-ends, de circuits ou de voyages personnalisés vers de nombreuses destinations, à l\'instar de l\'Italie et ses îles la Sicile et la Sardaigne, mais aussi le Portugal, Malte ou encore le Kenya.', 4),
(4, 'M2312232211', 'Visiteurs en Asie', 'Avec des destinations phares comme la Thaïlande, l\'Indonésie ou encore le Vietnam, Visiteurs en Asie permet de voyager vers plus de 30 destinations. Sélectionnés avec soin, les séjours et circuits de Visiteurs en Asie répondent aux attentes des voyageurs.', 2),
(5, 'M2356227844', 'Marmara', 'Spécialiste des voyages dans le bassin méditerranéen, Marmara propose à ses clients une large gamme de circuits, de séjours et de croisières et à la particularité de posséder plusieurs clubs. Parmi ses destinations phares citons la Grèce, la Turquie ou encore l\'Egypte.', 3),
(6, 'M2356000860', 'Italowcost', 'Leader des courts séjours à prix dégriffés vers l\'Italie, et plus précisément vers Venise, Italowcost propose des prestations tout compris vers Venise, Rome et Prague. Italowcost est la marque de référence pour les séjours en logement 3 ou 4 étoiles à bas prix en Italie.', 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idfonction`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `tour_operateur`
--
ALTER TABLE `tour_operateur`
  ADD CONSTRAINT `FK_idspecialite` FOREIGN KEY (`id_specialite`) REFERENCES `specialite` (`id`);
--
-- Base de données :  `essaihotel`
--
CREATE DATABASE IF NOT EXISTS `essaihotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `essaihotel`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_equipement`
--

DROP TABLE IF EXISTS `categorie_equipement`;
CREATE TABLE IF NOT EXISTS `categorie_equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  `id_categorie_equipement` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipement_id_categorie_equipement` (`id_categorie_equipement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `nb_chambre` int(11) NOT NULL,
  `prix_min` decimal(6,2) DEFAULT NULL,
  `prix_max` decimal(6,2) DEFAULT NULL,
  `nom_restau` varchar(75) DEFAULT NULL,
  `id_categorie_hotel` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hotel_id_categorie_hotel` (`id_categorie_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `FK_equipement_id_categorie_equipement` FOREIGN KEY (`id_categorie_equipement`) REFERENCES `categorie_equipement` (`id`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_id_categorie_hotel` FOREIGN KEY (`id_categorie_hotel`) REFERENCES `categorie_hotel` (`id`);
--
-- Base de données :  `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `examen`;

-- --------------------------------------------------------

--
-- Structure de la table `bts`
--

DROP TABLE IF EXISTS `bts`;
CREATE TABLE IF NOT EXISTS `bts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bts`
--

INSERT INTO `bts` (`id`, `libelle`) VALUES
(1, 'BTS SIO'),
(2, 'BTS SAM'),
(3, 'BTS CG');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_convoc`
--

DROP TABLE IF EXISTS `categorie_convoc`;
CREATE TABLE IF NOT EXISTS `categorie_convoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_convoc`
--

INSERT INTO `categorie_convoc` (`id`, `libelle`) VALUES
(1, 'surveillance'),
(2, 'membre du jury'),
(3, 'suppléance');

-- --------------------------------------------------------

--
-- Structure de la table `convocation`
--

DROP TABLE IF EXISTS `convocation`;
CREATE TABLE IF NOT EXISTS `convocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure_deb` time NOT NULL,
  `heure_fin` time NOT NULL,
  `tiers_temps` char(1) NOT NULL DEFAULT 'N',
  `id_epreuve` int(11) NOT NULL,
  `id_professeur` int(11) NOT NULL,
  `id_categorie_convoc` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_epreuve` (`id_epreuve`),
  KEY `id_professeur` (`id_professeur`),
  KEY `id_categorie_convoc` (`id_categorie_convoc`),
  KEY `id_salle` (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `convocation`
--

INSERT INTO `convocation` (`id`, `date`, `heure_deb`, `heure_fin`, `tiers_temps`, `id_epreuve`, `id_professeur`, `id_categorie_convoc`, `id_salle`) VALUES
(1, '2021-05-10', '10:30:00', '12:30:00', 'N', 5, 4, 1, 2),
(2, '2021-05-10', '10:30:00', '12:30:00', 'N', 5, 8, 3, 5),
(3, '2021-05-10', '14:00:00', '18:00:00', 'N', 8, 1, 1, 3),
(4, '2021-05-10', '14:00:00', '18:00:00', 'N', 8, 9, 1, 3),
(5, '2021-05-10', '14:00:00', '18:00:00', 'N', 11, 10, 1, 4),
(6, '2021-05-10', '14:00:00', '18:00:00', 'N', 11, 12, 1, 4),
(7, '2021-05-10', '14:00:00', '18:00:00', 'N', 11, 2, 3, 5),
(8, '2021-05-10', '14:00:00', '16:00:00', 'N', 6, 11, 1, 2),
(9, '2021-05-10', '14:00:00', '16:00:00', 'N', 6, 13, 1, 2),
(10, '2021-05-10', '14:00:00', '16:00:00', 'N', 6, 4, 3, 5),
(12, '2021-05-11', '14:00:00', '16:00:00', 'N', 2, 10, 1, 2),
(13, '2021-05-11', '14:00:00', '18:00:00', 'N', 2, 13, 1, 2),
(14, '2021-05-11', '14:00:00', '18:00:00', 'N', 13, 7, 1, 4),
(15, '2021-05-11', '14:00:00', '18:00:00', 'N', 7, 9, 1, 3),
(16, '2021-05-11', '14:00:00', '18:00:00', 'N', 7, 19, 1, 3),
(17, '2021-05-12', '10:30:00', '12:30:00', 'N', 14, 1, 1, 4),
(18, '2021-05-12', '10:30:00', '12:30:00', 'N', 14, 4, 1, 4),
(19, '2021-05-12', '10:30:00', '12:30:00', 'N', 14, 13, 3, 5),
(20, '2021-05-12', '14:00:00', '18:00:00', 'N', 1, 13, 1, 2),
(21, '2021-05-12', '14:00:00', '18:00:00', 'N', 1, 12, 1, 2),
(22, '2021-05-12', '14:00:00', '15:30:00', 'N', 1, 18, 3, 5),
(23, '2021-05-12', '15:30:00', '18:00:00', 'N', 1, 15, 3, 5),
(24, '2021-05-19', '14:00:00', '18:30:00', 'N', 9, 7, 1, 3),
(25, '2021-05-19', '14:00:00', '18:30:00', 'N', 9, 2, 1, 3),
(26, '2021-05-19', '14:00:00', '18:30:00', 'N', 9, 9, 3, 5),
(27, '2021-05-19', '14:00:00', '18:00:00', 'N', 15, 4, 1, 4),
(28, '2021-05-19', '14:00:00', '18:00:00', 'N', 15, 1, 1, 4),
(29, '2021-05-19', '14:00:00', '18:00:00', 'N', 4, 10, 1, 2),
(30, '2021-05-19', '15:30:00', '18:00:00', 'N', 15, 15, 3, 5),
(31, '2021-05-19', '14:00:00', '18:00:00', 'N', 4, 13, 1, 2),
(32, '2021-05-19', '14:00:00', '15:30:00', 'N', 4, 18, 3, 5),
(34, '2021-05-11', '14:00:00', '16:30:00', 'N', 7, 2, 3, 5),
(36, '2021-05-11', '16:00:00', '18:00:00', 'N', 2, 11, 1, 2),
(37, '2021-05-11', '14:00:00', '16:00:00', 'N', 13, 14, 1, 4),
(38, '2021-05-11', '16:00:00', '18:00:00', 'N', 13, 17, 1, 4),
(39, '2021-05-11', '16:30:00', '18:00:00', 'N', 7, 1, 3, 5),
(40, '2021-05-11', '10:00:00', '12:00:00', 'N', 12, 15, 1, 4),
(41, '2021-05-11', '10:00:00', '12:00:00', 'N', 12, 1, 1, 4),
(42, '2021-05-11', '10:30:00', '12:30:00', 'N', 3, 12, 1, 2),
(43, '2021-05-11', '10:30:00', '12:30:00', 'N', 3, 16, 1, 2),
(44, '2021-05-11', '10:00:00', '12:30:00', 'N', 12, 2, 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve`
--

DROP TABLE IF EXISTS `epreuve`;
CREATE TABLE IF NOT EXISTS `epreuve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `duree` decimal(5,1) NOT NULL,
  `date` date NOT NULL,
  `heure_deb` time NOT NULL,
  `heure_deb_tiers_temps` time NOT NULL,
  `heure_fin` time NOT NULL,
  `heure_fin_tiers_temps` time NOT NULL,
  `commentaires` varchar(100) NOT NULL,
  `id_bts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_niveau` (`id_bts`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `epreuve`
--

INSERT INTO `epreuve` (`id`, `libelle`, `duree`, `date`, `heure_deb`, `heure_deb_tiers_temps`, `heure_fin`, `heure_fin_tiers_temps`, `commentaires`, `id_bts`) VALUES
(1, 'Production et fourniture de services informatiques (E5)', '4.0', '2021-05-12', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(2, 'Culture générale et expression', '4.0', '2021-05-11', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(3, 'Expression et communication en langue anglaise', '2.0', '2021-05-11', '10:30:00', '00:00:00', '12:30:00', '00:00:00', '2 heures de mise en loge', 1),
(4, 'Analyse économique, managériale et juridique des services informatiques', '4.0', '2021-05-19', '14:00:00', '00:00:00', '18:00:00', '00:00:00', '2 heures de mise en loge', 1),
(5, 'Mathématiques approfondies (épreuve facultative)', '2.0', '2021-05-10', '10:30:00', '00:00:00', '12:30:00', '00:00:00', '2heures de mise en loge', 1),
(6, 'Mathématiques', '2.0', '2021-05-10', '14:00:00', '00:00:00', '16:00:00', '00:00:00', '2 heures de mise en loge', 1),
(7, 'Culture générale et expression', '4.0', '2021-05-11', '14:00:00', '14:00:00', '18:00:00', '14:00:00', 'mise en loge ???', 3),
(8, 'Culture économique et managériale', '4.0', '2021-05-10', '14:00:00', '14:00:00', '18:00:00', '14:00:00', 'mise en loge ??', 3),
(9, 'Etude de cas (E41)', '4.5', '2021-05-19', '14:00:00', '14:00:00', '18:30:00', '18:30:00', 'mise en loge ???', 3),
(10, 'Mathématiques (candidats individuels)', '2.0', '2021-05-11', '10:00:00', '10:00:00', '12:00:00', '12:00:00', 'mise en loge ??', 3),
(11, 'Culture économique, juridique et managériale', '4.0', '2021-05-10', '14:00:00', '14:00:00', '18:00:00', '18:00:00', '', 2),
(12, 'Langue vivante étrangère A', '2.0', '2021-05-11', '10:00:00', '10:00:00', '12:00:00', '12:00:00', '2h de mise en loge', 2),
(13, 'Culture générale et expression', '4.0', '2021-05-11', '14:00:00', '14:00:00', '18:00:00', '18:00:00', 'mise en loge de 2h', 2),
(14, 'Langue vivante étrangère B', '2.0', '2021-05-12', '10:30:00', '10:30:00', '12:30:00', '12:30:00', '2h de mise en loge', 2),
(15, 'Collaboration à la gestion des ressources humaines', '4.0', '2021-05-19', '14:00:00', '14:00:00', '18:00:00', '18:00:00', '3h de mise en loge', 2);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(10) NOT NULL,
  `nom` varchar(35) NOT NULL,
  `prenom` varchar(35) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `nbHeures2emeAnnee` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `civilite`, `nom`, `prenom`, `mail`, `nbHeures2emeAnnee`) VALUES
(1, 'Madame', 'Bernede', 'Béatrice', 'beatrice.georgelin@ac-amiens.fr', '16:00:00'),
(2, 'Monsieur', 'Dodemont', 'Jean-Bernard', 'jdodemont@ac-amiens.fr', '16:00:00'),
(3, 'Madame', 'Cartier', 'Mathilde', 'agnes.kintzler@wanadoo.fr', '00:00:00'),
(4, 'Monsieur', 'Cardoni', 'Jean-Marie', 'jean-marie.cardoni@ac-amiens.fr', '11:00:00'),
(5, 'Monsieur', 'Grainger', 'Glen', 'glen.grainger@ac-amiens.fr', '00:00:00'),
(6, 'Madame', 'Bladgé', 'Caroline', 'caroline.blatge@ac-amiens.fr', '00:00:00'),
(7, 'Monsieur', 'Kuntz', 'François', 'francois.kuntz@ac-amiens.fr', '06:00:00'),
(8, 'Monsieur', 'Joliveau', 'Matthieu', 'matthieu.joliveau@ac-amiens.fr', '02:00:00'),
(9, 'Madame', 'Jaconelli', 'Virginie', 'virginie.jaconelli@ac-amiens.fr', '08:00:00'),
(10, 'Madame', 'Bourreau', 'Marielle', 'marielle.bourreau@ac-amiens.fr', '09:00:00'),
(11, 'Madame', 'Millet', 'Catherine', 'catherine.millet@ac-amiens.fr', '08:00:00'),
(12, 'Monsieur', 'Flamant', 'Marc', 'marc.flamant@ac-amiens.fr', '09:00:00'),
(13, 'Madame', 'Le Corfec', 'Corinne', 'cpubert@ac-amiens.fr', '16:00:00'),
(14, 'Madame', 'Sultana', 'Florence', 'florence.sultana@ac-amiens.fr', '02:00:00'),
(15, 'Madame', 'Zaiem', 'Amani', 'amani.zaiem@ac-amiens.fr', '06:00:00'),
(16, 'Madame', 'Preschoux', 'Lydie', 'lydie.preschoux@ac-amiens.fr', '02:00:00'),
(17, 'Madame', 'Candes', 'Laeticia', 'laetitia.candes@ac-amiens.fr', '04:00:00'),
(18, 'Monsieur', 'El Farissi', 'Ammar', 'ael-farissi@ac-amiens.fr', '06:00:00'),
(19, 'Madame', 'Dutemple', 'Emmanuelle', 'emmanuele.dutemple@ac-amiens.fr', '04:00:00'),
(20, 'Madame', 'Kintzler', 'Agnès', 'agnes.kintzler@wanadoo.fr', '00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `libelle`, `description`) VALUES
(1, '1', 'Salle tiers temps'),
(2, '6', 'Salle 6 (SIO)'),
(3, '1', 'Salle 1 (CGO)'),
(4, '2', 'Salle 2 SAM'),
(5, '3', 'Salle 3 (secrétariat)');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `convocation`
--
ALTER TABLE `convocation`
  ADD CONSTRAINT `convocation_ibfk_1` FOREIGN KEY (`id_epreuve`) REFERENCES `epreuve` (`id`),
  ADD CONSTRAINT `convocation_ibfk_2` FOREIGN KEY (`id_professeur`) REFERENCES `professeur` (`id`),
  ADD CONSTRAINT `convocation_ibfk_3` FOREIGN KEY (`id_categorie_convoc`) REFERENCES `categorie_convoc` (`id`),
  ADD CONSTRAINT `convocation_ibfk_4` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD CONSTRAINT `epreuve_ibfk_1` FOREIGN KEY (`id_bts`) REFERENCES `bts` (`id`);
--
-- Base de données :  `fornet`
--
CREATE DATABASE IF NOT EXISTS `fornet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fornet`;

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

DROP TABLE IF EXISTS `formateur`;
CREATE TABLE IF NOT EXISTS `formateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `sexe` char(1) NOT NULL,
  `situationFamiliale` varchar(30) NOT NULL,
  `prixALaJournee` decimal(7,2) NOT NULL,
  `dateEmbauche` date NOT NULL,
  `specialite` varchar(30) NOT NULL,
  `diplome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`id`, `nom`, `prenom`, `sexe`, `situationFamiliale`, `prixALaJournee`, `dateEmbauche`, `specialite`, `diplome`) VALUES
(1, 'Joutron', 'Pierre', 'M', 'célibataire', '200.00', '2015-05-01', 'développement', 'Doctorat'),
(2, 'Selloi', 'Paul', 'M', 'marié', '300.00', '2015-08-15', 'développement', 'Doctorat'),
(3, 'Lingor', 'Mathilde', 'F', 'mariée', '500.00', '2018-10-21', 'développement', 'Doctorat'),
(4, 'Kutry', 'Agathe', 'F', 'veuve', '600.00', '2018-12-01', 'administration', 'Master'),
(5, 'Justiniac', 'Marc', 'M', 'divorcé', '500.00', '2019-02-01', 'administration', 'Master'),
(6, 'Poulov', 'Marie', 'F', 'divorcée', '200.00', '2019-04-15', 'administrateur', 'Master'),
(7, 'Lefevre', 'Etienne', 'M', 'divorcé', '700.00', '2020-02-19', 'administration', 'BTS');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formation` varchar(30) NOT NULL,
  `niveau` varchar(30) NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `prixEnEuros` decimal(7,2) NOT NULL,
  `dateDebut` date NOT NULL,
  `dureeEnJours` int(11) NOT NULL,
  `adresseFormation` varchar(30) DEFAULT NULL,
  `villeFormation` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `formation`, `niveau`, `categorie`, `prixEnEuros`, `dateDebut`, `dureeEnJours`, `adresseFormation`, `villeFormation`) VALUES
(1, 'sharepoint', 'débutant', 'développement', '3000.00', '2020-12-03', 4, '70,rue de rivoli', 'Paris 1'),
(2, 'visual studio 2019', 'débutant', 'développement', '2500.00', '2020-11-30', 3, '12,rue de pontieux', 'Paris 8'),
(3, 'sqlserver 2008', 'débutant', 'administration', '4000.00', '2020-12-25', 3, '15,rue blache', 'Paris 10'),
(4, 'windows10', 'débutant', 'administration', '2000.00', '2021-01-12', 5, '12,rue des pots', 'Nantes'),
(5, 'visual studio 2019', 'expérimenté', 'développement', '4500.00', '2021-01-26', 3, '12,rue des anges', 'Lille'),
(6, 'c#', 'expérimenté', 'développement', '2000.00', '2021-01-24', 2, '12,rue du temple', 'Paris 3'),
(7, 'c++.net', 'expérimenté', 'développement', '2200.00', '2021-01-27', 2, '12,rue du temple', 'Paris 3'),
(8, 'c++.net', 'expérimenté', 'développement', '2200.00', '2021-01-12', 3, NULL, 'Paris'),
(9, 'windows10', 'expérimenté', 'administration', '3000.00', '2021-02-03', 6, NULL, 'Paris'),
(10, 'sharepoint', 'expérimenté', 'développement', '3500.00', '2021-02-10', 6, '70,rue de rivoli', 'Paris 1');
--
-- Base de données :  `gestion_autoecole`
--
CREATE DATABASE IF NOT EXISTS `gestion_autoecole` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_autoecole`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `id` int(11) NOT NULL,
  `dateheure` datetime NOT NULL,
  `type cours` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Base de données :  `gestion_biscuiterie`
--
CREATE DATABASE IF NOT EXISTS `gestion_biscuiterie` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_biscuiterie`;

-- --------------------------------------------------------

--
-- Structure de la table `artisan`
--

DROP TABLE IF EXISTS `artisan`;
CREATE TABLE IF NOT EXISTS `artisan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` char(4) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `artisan`
--

INSERT INTO `artisan` (`id`, `civilite`, `nom`, `prenom`, `ville`, `profession`) VALUES
(1, 'M', 'Le Goff', 'Yvon', 'Kerguidy', 'boucher'),
(2, 'M', 'Le Kernec', 'Yan', 'Kuig', 'pâtissier'),
(3, 'Mme', 'Gwendal', 'Anne', 'Kerveur', 'pâtissier'),
(4, 'M', 'Gdweny', 'Pierre', 'Kerveur', 'boucher'),
(5, 'Mme', 'Ugwon', 'Claire', 'Plogoff', 'boucher'),
(6, 'Mme', 'Breizh', 'Marie', 'Plogoff', 'boulanger');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(30) NOT NULL,
  `poids` decimal(7,2) NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `promo` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `categorie`, `poids`, `prix`, `stock`, `promo`) VALUES
(1, 'Salicorne  \"lesOuessantines\"', 'conserve', '400.00', '6.50', 200, 'O'),
(2, 'Verrine de mousse au confit de St Jacques', 'conserve', '80.00', '3.30', 100, 'N'),
(3, 'Raviolis de la mer', 'conserve', '400.00', '5.90', 500, 'O'),
(4, 'Petit Pâté Breton aux noix', 'conserve', '150.00', '5.50', 250, 'N'),
(5, 'Verrine de rillette de maquereaux', 'conserve', '80.00', '3.30', 200, 'O'),
(6, 'Verrine de crème de sardines au whisky', 'conserve', '80.00', '3.30', 400, 'O'),
(7, 'Verrine de délice de saumon à l’estragon', 'conserve', '80.00', '3.30', 20, 'N'),
(8, 'Caramels au beurre salé', 'confiserie', '250.00', '6.60', 200, 'N'),
(9, 'Caramels au beurre salé', 'confiserie', '500.00', '12.00', 100, 'N'),
(10, 'Caramels au beurre salé', 'confiserie', '2000.00', '20.00', 50, 'N'),
(11, 'Crêpes nature', 'biscuiterie', '200.00', '5.80', 50, 'N'),
(12, 'Crêpes au Nutella', 'biscuiterie', '280.00', '6.30', 100, 'O'),
(13, 'Sachet de 12 galettes', 'biscuiterie', '250.00', '6.10', 80, 'N'),
(14, 'Sachet de 24 galettes', 'biscuiterie', '500.00', '11.00', 50, 'N');
--
-- Base de données :  `gestion_garage`
--
CREATE DATABASE IF NOT EXISTS `gestion_garage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_garage`;
--
-- Base de données :  `gestion_hotel`
--
CREATE DATABASE IF NOT EXISTS `gestion_hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_hotel`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_equipement`
--

DROP TABLE IF EXISTS `categorie_equipement`;
CREATE TABLE IF NOT EXISTS `categorie_equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_equipement`
--

INSERT INTO `categorie_equipement` (`id`, `libelle`) VALUES
(1, 'annexe'),
(2, 'bien-être'),
(3, 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('AH', 'Appart-hôtel'),
('EC', 'Economique'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotel`
--

DROP TABLE IF EXISTS `chambre_hotel`;
CREATE TABLE IF NOT EXISTS `chambre_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_categorie_chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_categorie_chambre`),
  KEY `FK_chambre_hotel_id_categorie_chambre` (`id_categorie_chambre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_hotel`
--

INSERT INTO `chambre_hotel` (`id_hotel`, `id_categorie_chambre`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  `id_categorie_equipement` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipement_id_categorie_equipement` (`id_categorie_equipement`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`, `id_categorie_equipement`) VALUES
(1, 'Parking gratuit', 1),
(2, 'SPA', 2),
(3, 'Sauna', 2),
(4, 'Hammam', 2),
(5, 'Piscine extérieure', 3),
(6, 'Piscine intérieure', 3),
(7, 'Salle de Fitness', 3),
(8, 'Salle de massage', 2);

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  `nb_equipement` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`),
  KEY `FK_equip_hotel_id_equip` (`id_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`, `nb_equipement`) VALUES
(1, 1, 0),
(1, 6, 0),
(1, 8, 0),
(2, 1, 0),
(2, 2, 0),
(4, 2, 0),
(4, 4, 0),
(5, 8, 0),
(6, 1, 0),
(6, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `nb_chambre` int(11) NOT NULL,
  `prix_min` decimal(6,2) DEFAULT NULL,
  `prix_max` decimal(6,2) DEFAULT NULL,
  `nom_restau` varchar(75) DEFAULT NULL,
  `id_categorie_hotel` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hotel_id_categorie_hotel` (`id_categorie_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `nom`, `adresse`, `ville`, `nb_chambre`, `prix_min`, `prix_max`, `nom_restau`, `id_categorie_hotel`) VALUES
(1, 'Le Plazza', '10 rue d\'Athènes', 'Paris', 90, '150.00', '1400.00', 'Le petit plazza rouge', 'PL'),
(2, 'Le Riviera', '30 rue de Rivoli', 'Paris', 75, '200.00', '1500.00', 'Chez Vincent', 'LX'),
(3, 'Le petit tranquille', '15 rue de la paix', 'Chantilly', 25, '90.00', '500.00', NULL, 'EC'),
(4, 'Sofitel', '3 boulevard Arthur Nolin', 'Marseille', 80, '60.00', '250.00', 'Les lumières du port', 'LX'),
(5, 'Bellevue sur le vieux port', '20 quai du port', 'Marseille', 28, '95.00', '330.00', NULL, 'EC'),
(6, 'Le goupillon', '100 rue de Rivoli', 'Paris ', 35, '110.00', '1300.00', NULL, 'LX'),
(7, 'Le petit paradis', NULL, 'Paris ', 22, '55.00', '200.00', 'La poule au pot', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre_hotel`
--
ALTER TABLE `chambre_hotel`
  ADD CONSTRAINT `FK_chambre_hotel_id_categorie_chambre` FOREIGN KEY (`id_categorie_chambre`) REFERENCES `categorie_chambre` (`id`),
  ADD CONSTRAINT `FK_chambre_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `FK_equipement_id_categorie_equipement` FOREIGN KEY (`id_categorie_equipement`) REFERENCES `categorie_equipement` (`id`);

--
-- Contraintes pour la table `equip_hotel`
--
ALTER TABLE `equip_hotel`
  ADD CONSTRAINT `FK_equip_hotel_id_equip` FOREIGN KEY (`id_equip`) REFERENCES `equipement` (`id`),
  ADD CONSTRAINT `FK_equip_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_id_categorie_hotel` FOREIGN KEY (`id_categorie_hotel`) REFERENCES `categorie_hotel` (`id`);
--
-- Base de données :  `gestion_hotel_erreur`
--
CREATE DATABASE IF NOT EXISTS `gestion_hotel_erreur` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_hotel_erreur`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('EC', 'Economique'),
('AH', 'Appart-hôtel'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotel`
--

DROP TABLE IF EXISTS `chambre_hotel`;
CREATE TABLE IF NOT EXISTS `chambre_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_categorie_chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_categorie_chambre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_hotel`
--

INSERT INTO `chambre_hotel` (`id_hotel`, `id_categorie_chambre`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`) VALUES
(1, 'Parking gratuit'),
(2, 'SPA'),
(3, 'Sauna'),
(4, 'Hammam'),
(5, 'Piscine extérieure'),
(6, 'Piscine intérieure'),
(7, 'Salle de Fitness'),
(8, 'Salle de massage');

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 1),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(4, 2),
(4, 4),
(5, 8),
(6, 1),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `nb_chambre` int(11) NOT NULL,
  `prix_min` decimal(6,2) DEFAULT NULL,
  `prix_max` decimal(6,2) DEFAULT NULL,
  `nom_restau` varchar(75) DEFAULT NULL,
  `categorie_hotel` varchar(40) DEFAULT NULL,
  `categories_chambre` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `nom`, `adresse`, `ville`, `nb_chambre`, `prix_min`, `prix_max`, `nom_restau`, `categorie_hotel`, `categories_chambre`) VALUES
(1, 'Le Plazza', '10 rue d\'Athènes', 'Paris', 90, '150.00', '1400.00', 'Le petit plazza rouge', 'Palace', 'Chambre double, Chambre familiale, Suite'),
(2, 'Le Riviera', '30 rue de Rivoli', 'Paris', 75, '200.00', '1500.00', 'Chez Vincent', 'Luxe', 'Chambre simple, Chambre double, Chambre familiale'),
(3, 'Le petit tranquille', '15 rue de la paix', 'Chantilly', 25, '90.00', '500.00', NULL, 'Economique', 'Chambre simple, Chambre double'),
(4, 'Sofitel', '3 boulevard Arthur Nolin', 'Marseille', 80, '60.00', '250.00', 'Les lumières du port', 'Luxe', 'Chambre familiale, Suite'),
(5, 'Bellevue sur le vieux port', '20 quai du port', 'Marseille', 28, '95.00', '330.00', NULL, 'Economique', ''),
(6, 'Le goupillon', '100 rue de Rivoli', 'Paris ', 35, '110.00', '1300.00', NULL, 'Luxe', ''),
(7, 'Le petit paradis', NULL, 'Paris ', 22, '55.00', '200.00', 'La poule au pot', NULL, '');
--
-- Base de données :  `gestion_hotel_pour_site`
--
CREATE DATABASE IF NOT EXISTS `gestion_hotel_pour_site` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_hotel_pour_site`;

-- --------------------------------------------------------

--
-- Structure de la table `carac_groupe`
--

DROP TABLE IF EXISTS `carac_groupe`;
CREATE TABLE IF NOT EXISTS `carac_groupe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `complement` varchar(50) DEFAULT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `carac_groupe`
--

INSERT INTO `carac_groupe` (`id`, `description`, `rue`, `complement`, `code_postal`, `ville`) VALUES
(1, '<h1>Qui sommes-nous ?</h1>\r\n				<p>Un groupe hôtelier, créé en 2018, est acteur du paysage hôtelier français.<br>Fier du rachat de 6 hôtels en France en moins de deux ans, notre directeur général, Pierre Sorenson, a annoncé de grandes ambitions de développement d\'ici 2022<p>', '6, rue de Rivoli', NULL, '75001', 'Paris');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_equipement`
--

DROP TABLE IF EXISTS `categorie_equipement`;
CREATE TABLE IF NOT EXISTS `categorie_equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_equipement`
--

INSERT INTO `categorie_equipement` (`id`, `libelle`) VALUES
(1, 'annexe'),
(2, 'bien-être'),
(3, 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('EC', 'Economique'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`) VALUES
(1, 'Parking gratuit'),
(2, 'SPA'),
(3, 'Sauna'),
(4, 'Hammam'),
(5, 'Piscine extérieure'),
(6, 'Piscine intérieure'),
(7, 'Salle de Fitness'),
(8, 'Salle de massage');

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 1),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(4, 2),
(4, 4),
(5, 8),
(6, 1),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `id_categorie_hotel` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Contient les caractéristiques des hôtels';

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `nom`, `adresse`, `ville`, `id_categorie_hotel`) VALUES
(1, 'Le Plazza', '10 rue d\'Athènes', 'Paris 1er', 'PL'),
(2, 'Le Riviera', '30 rue de Rivoli', 'Paris 1er', 'LX'),
(3, 'Le petit tranquille', '15 rue de la paix', 'Chantilly', 'EC'),
(4, 'Sofitel', '3 boulevard Arthur Nolin', '13000 Marseille', 'LX'),
(5, 'Bellevue sur le vieux port', '20 quai du port', 'Marseille', 'EC'),
(6, 'Le goupillon', '100 rue de Rivoli', '75001 Paris ', 'LX'),
(9, 'Le petit paradis', NULL, '75010 Paris ', 'EC'),
(10, 'Le Plazza', '10 rue d\'Athènes', 'Paris 1er', 'PL');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `cuisine` varchar(40) DEFAULT 'chinoise',
  `prix_moyen` decimal(5,2) DEFAULT NULL,
  `nb_couvert` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `nom`, `cuisine`, `prix_moyen`, `nb_couvert`) VALUES
(1, 'Yuk', 'turque', '15.00', 20),
(2, 'Arès', 'grecque', NULL, NULL),
(8, 'Boui', 'japonaise', '30.00', 20),
(9, 'Moa', 'japonaise', '22.00', 15),
(10, 'Nuo Wang', 'chinoise', '10.00', 45);

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

DROP TABLE IF EXISTS `serveur`;
CREATE TABLE IF NOT EXISTS `serveur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `salFixe` decimal(5,2) NOT NULL CHECK (`salFixe` > 500),
  `primeHabit` decimal(5,2) DEFAULT 100.00,
  `age` tinyint(4) DEFAULT NULL CHECK (`age` >= 16 and `age` < 75),
  `etatCivil` varchar(20) DEFAULT NULL CHECK (`etatCivil` in ('marié','célibataire','veuf','divorcé'))
) ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `compte` varchar(25) NOT NULL,
  `mot_de_passe` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `compte`, `mot_de_passe`) VALUES
(0, 'Mjouid', 'Perrine', 'mjouidp', '$2y$10$HlURPglJ51E99F0bm6jkP.bFQ69tTDe4m4hXvz8aqegjIh.dkT0Gi');
--
-- Base de données :  `gestion_hotel_v1`
--
CREATE DATABASE IF NOT EXISTS `gestion_hotel_v1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_hotel_v1`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('AH', 'Appart-hôtel'),
('EC', 'Economique'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotel`
--

DROP TABLE IF EXISTS `chambre_hotel`;
CREATE TABLE IF NOT EXISTS `chambre_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_categorie_chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_categorie_chambre`),
  KEY `FK_chambre_hotel_id_categorie_chambre` (`id_categorie_chambre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_hotel`
--

INSERT INTO `chambre_hotel` (`id_hotel`, `id_categorie_chambre`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`) VALUES
(1, 'Parking gratuit'),
(2, 'SPA'),
(3, 'Sauna'),
(4, 'Hammam'),
(5, 'Piscine extérieure'),
(6, 'Piscine intérieure'),
(7, 'Salle de Fitness'),
(8, 'Salle de massage');

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`),
  KEY `FK_equip_hotel_id_equip` (`id_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 1),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(4, 2),
(4, 4),
(5, 8),
(6, 1),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `nb_chambre` int(11) NOT NULL,
  `prix_min` decimal(6,2) DEFAULT NULL,
  `prix_max` decimal(6,2) DEFAULT NULL,
  `nom_restau` varchar(75) DEFAULT NULL,
  `id_categorie_hotel` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hotel_id_categorie_hotel` (`id_categorie_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `nom`, `adresse`, `ville`, `nb_chambre`, `prix_min`, `prix_max`, `nom_restau`, `id_categorie_hotel`) VALUES
(1, 'Le Plazza', '10 rue d\'Athènes', 'Paris', 90, '150.00', '1400.00', 'Le petit plazza rouge', 'PL'),
(2, 'Le Riviera', '30 rue de Rivoli', 'Paris', 75, '200.00', '1500.00', 'Chez Vincent', 'LX'),
(3, 'Le petit tranquille', '15 rue de la paix', 'Chantilly', 25, '90.00', '500.00', NULL, 'EC'),
(4, 'Sofitel', '3 boulevard Arthur Nolin', 'Marseille', 80, '60.00', '250.00', 'Les lumières du port', 'LX'),
(5, 'Bellevue sur le vieux port', '20 quai du port', 'Marseille', 28, '95.00', '330.00', NULL, 'EC'),
(6, 'Le goupillon', '100 rue de Rivoli', 'Paris ', 35, '110.00', '1300.00', NULL, 'LX'),
(7, 'Le petit paradis', NULL, 'Paris ', 22, '55.00', '200.00', 'La poule au pot', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre_hotel`
--
ALTER TABLE `chambre_hotel`
  ADD CONSTRAINT `FK_chambre_hotel_id_categorie_chambre` FOREIGN KEY (`id_categorie_chambre`) REFERENCES `categorie_chambre` (`id`),
  ADD CONSTRAINT `FK_chambre_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `equip_hotel`
--
ALTER TABLE `equip_hotel`
  ADD CONSTRAINT `FK_equip_hotel_id_equip` FOREIGN KEY (`id_equip`) REFERENCES `equipement` (`id`),
  ADD CONSTRAINT `FK_equip_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_id_categorie_hotel` FOREIGN KEY (`id_categorie_hotel`) REFERENCES `categorie_hotel` (`id`);
--
-- Base de données :  `gestion_sejour`
--
CREATE DATABASE IF NOT EXISTS `gestion_sejour` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_sejour`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_equipement`
--

DROP TABLE IF EXISTS `categorie_equipement`;
CREATE TABLE IF NOT EXISTS `categorie_equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_equipement`
--

INSERT INTO `categorie_equipement` (`id`, `libelle`) VALUES
(1, 'annexe'),
(2, 'bien-être'),
(3, 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('AH', 'Appart-hôtel'),
('EC', 'Economique'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotel`
--

DROP TABLE IF EXISTS `chambre_hotel`;
CREATE TABLE IF NOT EXISTS `chambre_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_categorie_chambre` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_categorie_chambre`),
  KEY `FK_chambre_hotel_id_categorie_chambre` (`id_categorie_chambre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_hotel`
--

INSERT INTO `chambre_hotel` (`id_hotel`, `id_categorie_chambre`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  `id_categorie_equipement` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_equipement_id_categorie_equipement` (`id_categorie_equipement`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`, `id_categorie_equipement`) VALUES
(1, 'Parking gratuit', 1),
(2, 'SPA', 2),
(3, 'Sauna', 2),
(4, 'Hammam', 2),
(5, 'Piscine extérieure', 3),
(6, 'Piscine intérieure', 3),
(7, 'Salle de Fitness', 3),
(8, 'Salle de massage', 2);

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`),
  KEY `FK_equip_hotel_id_equip` (`id_equip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 1),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(4, 2),
(4, 4),
(5, 8),
(6, 1),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(35) NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(75) NOT NULL,
  `nb_chambre` int(11) NOT NULL,
  `prix_min` decimal(6,2) DEFAULT NULL,
  `prix_max` decimal(6,2) DEFAULT NULL,
  `nom_restau` varchar(75) DEFAULT NULL,
  `id_categorie_hotel` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hotel_id_categorie_hotel` (`id_categorie_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `nom`, `adresse`, `ville`, `nb_chambre`, `prix_min`, `prix_max`, `nom_restau`, `id_categorie_hotel`) VALUES
(1, 'Le Plazza', '10 rue d\'Athènes', 'Paris', 90, '150.00', '1400.00', 'Le petit plazza rouge', 'PL'),
(2, 'Le Riviera', '30 rue de Rivoli', 'Paris', 75, '200.00', '1500.00', 'Chez Vincent', 'LX'),
(3, 'Le petit tranquille', '15 rue de la paix', 'Chantilly', 25, '90.00', '500.00', NULL, 'EC'),
(4, 'Sofitel', '3 boulevard Arthur Nolin', 'Marseille', 80, '60.00', '250.00', 'Les lumières du port', 'LX'),
(5, 'Bellevue sur le vieux port', '20 quai du port', 'Marseille', 28, '95.00', '330.00', NULL, 'EC'),
(6, 'Le goupillon', '100 rue de Rivoli', 'Paris ', 35, '110.00', '1300.00', NULL, 'LX'),
(7, 'Le petit paradis', NULL, 'Paris ', 22, '55.00', '200.00', 'La poule au pot', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chambre_hotel`
--
ALTER TABLE `chambre_hotel`
  ADD CONSTRAINT `FK_chambre_hotel_id_categorie_chambre` FOREIGN KEY (`id_categorie_chambre`) REFERENCES `categorie_chambre` (`id`),
  ADD CONSTRAINT `FK_chambre_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `equipement`
--
ALTER TABLE `equipement`
  ADD CONSTRAINT `FK_equipement_id_categorie_equipement` FOREIGN KEY (`id_categorie_equipement`) REFERENCES `categorie_equipement` (`id`);

--
-- Contraintes pour la table `equip_hotel`
--
ALTER TABLE `equip_hotel`
  ADD CONSTRAINT `FK_equip_hotel_id_equip` FOREIGN KEY (`id_equip`) REFERENCES `equipement` (`id`),
  ADD CONSTRAINT `FK_equip_hotel_id_hotel` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_hotel_id_categorie_hotel` FOREIGN KEY (`id_categorie_hotel`) REFERENCES `categorie_hotel` (`id`);
--
-- Base de données :  `gestion_sejour_v0`
--
CREATE DATABASE IF NOT EXISTS `gestion_sejour_v0` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_sejour_v0`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_chambre`
--

DROP TABLE IF EXISTS `categorie_chambre`;
CREATE TABLE IF NOT EXISTS `categorie_chambre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_chambre`
--

INSERT INTO `categorie_chambre` (`id`, `libelle`) VALUES
(1, 'Chambre simple'),
(2, 'Chambre double'),
(3, 'Chambre familiale'),
(4, 'Suite');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_hotel`
--

DROP TABLE IF EXISTS `categorie_hotel`;
CREATE TABLE IF NOT EXISTS `categorie_hotel` (
  `id` char(2) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_hotel`
--

INSERT INTO `categorie_hotel` (`id`, `libelle`) VALUES
('EC', 'Economique'),
('LX', 'Luxe'),
('PL', 'Palace');

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hotel`
--

DROP TABLE IF EXISTS `chambre_hotel`;
CREATE TABLE IF NOT EXISTS `chambre_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chambre_hotel`
--

INSERT INTO `chambre_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`id`, `libelle`) VALUES
(1, 'Parking gratuit'),
(2, 'SPA'),
(3, 'Sauna'),
(4, 'Hammam'),
(5, 'Piscine extérieure'),
(6, 'Piscine intérieure'),
(7, 'Salle de Fitness'),
(8, 'Salle de massage');

-- --------------------------------------------------------

--
-- Structure de la table `equip_hotel`
--

DROP TABLE IF EXISTS `equip_hotel`;
CREATE TABLE IF NOT EXISTS `equip_hotel` (
  `id_hotel` int(11) NOT NULL,
  `id_equip` int(11) NOT NULL,
  PRIMARY KEY (`id_hotel`,`id_equip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equip_hotel`
--

INSERT INTO `equip_hotel` (`id_hotel`, `id_equip`) VALUES
(1, 1),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(4, 2),
(4, 4),
(5, 8),
(6, 1),
(6, 6);
--
-- Base de données :  `hackat`
--
CREATE DATABASE IF NOT EXISTS `hackat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hackat`;

-- --------------------------------------------------------

--
-- Structure de la table `conference`
--

DROP TABLE IF EXISTS `conference`;
CREATE TABLE IF NOT EXISTS `conference` (
  `id` int(11) NOT NULL,
  `theme` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conference`
--

INSERT INTO `conference` (`id`, `theme`) VALUES
(1, 'theme1'),
(2, 'theme2');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

DROP TABLE IF EXISTS `evenement`;
CREATE TABLE IF NOT EXISTS `evenement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomevt` varchar(50) NOT NULL,
  `idAnimateur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `nomevt`, `idAnimateur`) VALUES
(1, 'conf1', 1),
(2, 'conf2', 1),
(3, 'init1', 2),
(4, 'init2', 2);

-- --------------------------------------------------------

--
-- Structure de la table `initiation`
--

DROP TABLE IF EXISTS `initiation`;
CREATE TABLE IF NOT EXISTS `initiation` (
  `id` int(11) NOT NULL,
  `nbplaces` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `initiation`
--

INSERT INTO `initiation` (`id`, `nbplaces`) VALUES
(3, 2),
(4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id`, `nom`) VALUES
(1, '5'),
(2, '5');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `initiation`
--
ALTER TABLE `initiation`
  ADD CONSTRAINT `initiation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `evenement` (`id`);
--
-- Base de données :  `kirassur`
--
CREATE DATABASE IF NOT EXISTS `kirassur` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kirassur`;

-- --------------------------------------------------------

--
-- Structure de la table `assure`
--

DROP TABLE IF EXISTS `assure`;
CREATE TABLE IF NOT EXISTS `assure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(32) NOT NULL,
  `prenom` varchar(32) NOT NULL,
  `dateNaissance` datetime NOT NULL,
  `adresse` varchar(75) NOT NULL,
  `codePostal` char(5) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `tel` char(14) NOT NULL,
  `mel` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assure`
--

INSERT INTO `assure` (`id`, `nom`, `prenom`, `dateNaissance`, `adresse`, `codePostal`, `ville`, `tel`, `mel`) VALUES
(1, 'Loustin', 'Etienne', '1991-10-03 00:00:00', '33, rue Losserand', '75014', 'Paris', '06 15 15 87 03', 'etienne.loustin@gmail.com'),
(2, 'Bildin', 'Agathe', '1989-12-28 00:00:00', '50, rue Blache', '75010', 'Paris', '06 30 20 00 00', 'agathe.bildin@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateSignature` datetime NOT NULL,
  `dateDebut` datetime NOT NULL,
  `dateEcheance` datetime NOT NULL,
  `idTypeContrat` int(11) NOT NULL,
  `idAssure` int(11) NOT NULL,
  `idVehicule` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_contrat_idTypeContrat` (`idTypeContrat`),
  KEY `FK_contrat_idAssure` (`idAssure`),
  KEY `FK_contrat_idVehicule` (`idVehicule`)
) ENGINE=InnoDB AUTO_INCREMENT=258902 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`id`, `dateSignature`, `dateDebut`, `dateEcheance`, `idTypeContrat`, `idAssure`, `idVehicule`) VALUES
(158625, '2019-03-20 00:00:00', '2019-03-24 00:00:00', '2020-03-24 00:00:00', 1, 1, 1),
(256203, '2022-01-12 00:00:00', '2022-01-14 00:00:00', '2023-01-14 00:00:00', 1, 1, 2),
(258901, '2022-03-15 00:00:00', '2022-04-01 00:00:00', '2023-04-01 00:00:00', 2, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `garantie`
--

DROP TABLE IF EXISTS `garantie`;
CREATE TABLE IF NOT EXISTS `garantie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `nbMaxSinistrePeriode` int(11) DEFAULT NULL,
  `nbJoursPeriode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `garantie`
--

INSERT INTO `garantie` (`id`, `libelle`, `nbMaxSinistrePeriode`, `nbJoursPeriode`) VALUES
(1, 'Responsabilité civile', NULL, NULL),
(2, 'Vol', NULL, NULL),
(3, 'Bris de glace', 2, 90),
(4, 'Dégâts matériels', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire`
--

DROP TABLE IF EXISTS `gestionnaire`;
CREATE TABLE IF NOT EXISTS `gestionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `login` varchar(30) NOT NULL,
  `motDePasse` char(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gestionnaire`
--

INSERT INTO `gestionnaire` (`id`, `nom`, `prenom`, `login`, `motDePasse`) VALUES
(1, 'Bourdin', 'Jules', 'bourdinj', 'bour51@uiuiyiuytryt'),
(2, 'Lislou', 'Marie', 'lisloum', 'mlu@02&opouiy');

-- --------------------------------------------------------

--
-- Structure de la table `sinistre`
--

DROP TABLE IF EXISTS `sinistre`;
CREATE TABLE IF NOT EXISTS `sinistre` (
  `idContrat` int(11) NOT NULL,
  `numSinistre` int(11) NOT NULL,
  `description` text NOT NULL,
  `dateSinistre` datetime NOT NULL,
  `dateDeclaration` datetime NOT NULL,
  `dateEnregistrement` datetime NOT NULL,
  `idGestionnaire` int(11) DEFAULT NULL,
  `idGarantie` int(11) DEFAULT NULL,
  `dateReglement` datetime DEFAULT NULL,
  `montantReglement` decimal(10,2) DEFAULT NULL,
  `dateCloture` datetime DEFAULT NULL,
  `aVerifier` char(1) DEFAULT NULL,
  PRIMARY KEY (`idContrat`,`numSinistre`),
  KEY `FK_sinistre_idGestionnaire` (`idGestionnaire`),
  KEY `FK_sinistre_idGarantie` (`idGarantie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sinistre`
--

INSERT INTO `sinistre` (`idContrat`, `numSinistre`, `description`, `dateSinistre`, `dateDeclaration`, `dateEnregistrement`, `idGestionnaire`, `idGarantie`, `dateReglement`, `montantReglement`, `dateCloture`, `aVerifier`) VALUES
(158625, 1, 'collision sortie de parking', '2019-09-03 00:00:00', '2019-09-05 00:00:00', '2019-09-06 00:00:00', 1, 4, '2019-11-10 00:00:00', '8500.00', '2019-11-15 00:00:00', NULL),
(158625, 2, 'oubli de serrer le frein à main', '2020-01-01 00:00:00', '2020-01-02 00:00:00', '2020-01-03 00:00:00', 1, 4, '2020-01-30 00:00:00', '10800.00', '2020-02-06 00:00:00', NULL),
(158625, 3, 'dérapage sur plaque de verglas', '2020-01-11 00:00:00', '2020-01-11 00:00:00', '2020-01-12 00:00:00', 1, 4, '2020-03-01 00:00:00', '20500.00', '2020-03-11 00:00:00', NULL),
(256203, 1, 'bris de pare-brise - vendalisme', '2022-01-10 00:00:00', '2022-01-10 00:00:00', '2022-01-10 00:00:00', 1, 3, NULL, NULL, NULL, NULL),
(256203, 2, 'chute de tuiles : bris de pare-brise', '2022-03-21 00:00:00', '2022-03-22 00:00:00', '2022-03-22 00:00:00', 1, 3, NULL, NULL, NULL, NULL),
(256203, 3, 'projectile jeté : bris de pare-brise', '2022-04-05 00:00:00', '2022-04-05 00:00:00', '2022-04-06 00:00:00', 1, 3, NULL, NULL, NULL, 'O'),
(258901, 1, 'collision avec poids lourd sur autoroute ', '2022-04-05 00:00:00', '2022-04-05 00:00:00', '2022-04-06 00:00:00', 1, 4, NULL, NULL, NULL, NULL),
(258901, 2, 'refus de priorité', '2022-03-05 00:00:00', '2022-03-08 00:00:00', '2022-03-10 00:00:00', 1, 4, NULL, NULL, NULL, NULL);

--
-- Déclencheurs `sinistre`
--
DROP TRIGGER IF EXISTS `controleSinistre`;
DELIMITER $$
CREATE TRIGGER `controleSinistre` BEFORE INSERT ON `sinistre` FOR EACH ROW BEGIN
  DECLARE nbSinMax int;
  DECLARE nbSinDeclare int;
  DECLARE nbJoursPer int;
  DECLARE dateDebPeriode datetime;
  DECLARE assure int;
  DECLARE libelleGarantie varchar(100);
  -- on récupère le libelle correspondant à l'idGarantie du sinistre
  select libelle into libelleGarantie 
   from garantie 
   where id = new.idGarantie;
  -- le trigger ne concerne que des sinistres bris de glace 
  if (libelleGarantie = "Bris de glace") THEN 
		-- on récupère le nombre de sinistres à partir duquel un contrôle sera réalisé
		-- et le nombre de jours de la période de référence 
		  select nbMaxSinistrePeriode, nbJoursPeriode 
			into nbSinMax, nbJoursPer 
		  from garantie 
		  where libelle = "Bris de glace";

		  -- on calcule la date de début de période de contrôle
		  SET dateDebPeriode = adddate(new.dateSinistre, interval nbJoursPer*-1 day);
		  
		-- on récupère le nombre de sinistres bris de glace déclaré pour le contrat
		-- concerné par le sinistre sur la période de référence
		  select count(*) into nbSinDeclare
		  from sinistre
		 join garantie on garantie.id = idGarantie
		 where idContrat =new.idContrat
		 and libelle = "Bris de glace"
		 and dateSinistre >= dateDebPeriode and dateSinistre <= new.dateSinistre ;

		-- si le nombre de sinistres trouvés sur la période est supérieur au nombre maximum 
		-- autotisé, alors le sinistre est mis dans l'état "à vérifier" 
		if (nbSinDeclare >= nbSinMax) THEN 
			SET NEW.aVerifier = 'O';
		End if;
	End if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `typecontrat`
--

DROP TABLE IF EXISTS `typecontrat`;
CREATE TABLE IF NOT EXISTS `typecontrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typecontrat`
--

INSERT INTO `typecontrat` (`id`, `libelle`) VALUES
(1, 'Contrat tous risques'),
(2, 'Contrat tiers'),
(3, 'Contrat tiers étendu');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `immatriculation` varchar(10) NOT NULL,
  `dateMiseEnCirculation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `immatriculation`, `dateMiseEnCirculation`) VALUES
(1, '20JD75', '1999-01-15 00:00:00'),
(2, 'ST-2022-AK', '2015-03-20 00:00:00'),
(3, 'RS-8560-CG', '2020-06-15 00:00:00');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `FK_contrat_idAssure` FOREIGN KEY (`idAssure`) REFERENCES `assure` (`id`),
  ADD CONSTRAINT `FK_contrat_idTypeContrat` FOREIGN KEY (`idTypeContrat`) REFERENCES `typecontrat` (`id`),
  ADD CONSTRAINT `FK_contrat_idVehicule` FOREIGN KEY (`idVehicule`) REFERENCES `vehicule` (`id`);

--
-- Contraintes pour la table `sinistre`
--
ALTER TABLE `sinistre`
  ADD CONSTRAINT `FK_sinistre_idContrat` FOREIGN KEY (`idContrat`) REFERENCES `contrat` (`id`),
  ADD CONSTRAINT `FK_sinistre_idGarantie` FOREIGN KEY (`idGarantie`) REFERENCES `garantie` (`id`),
  ADD CONSTRAINT `FK_sinistre_idGestionnaire` FOREIGN KEY (`idGestionnaire`) REFERENCES `gestionnaire` (`id`);
--
-- Base de données :  `pompier`
--
CREATE DATABASE IF NOT EXISTS `pompier` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pompier`;

-- --------------------------------------------------------

--
-- Structure de la table `categorieintervention`
--

DROP TABLE IF EXISTS `categorieintervention`;
CREATE TABLE IF NOT EXISTS `categorieintervention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `intervention`
--

DROP TABLE IF EXISTS `intervention`;
CREATE TABLE IF NOT EXISTS `intervention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateIntervention` date NOT NULL,
  `idCategorieIntervention` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategorieIntervention` (`idCategorieIntervention`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

DROP TABLE IF EXISTS `pompier`;
CREATE TABLE IF NOT EXISTS `pompier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pompierformation`
--

DROP TABLE IF EXISTS `pompierformation`;
CREATE TABLE IF NOT EXISTS `pompierformation` (
  `idPompier` int(11) NOT NULL,
  `idFormation` int(11) NOT NULL,
  PRIMARY KEY (`idPompier`,`idFormation`),
  KEY `idFormation` (`idFormation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pompierintervention`
--

DROP TABLE IF EXISTS `pompierintervention`;
CREATE TABLE IF NOT EXISTS `pompierintervention` (
  `idPompier` int(11) NOT NULL,
  `idIntervention` int(11) NOT NULL,
  `dureeEnHeures` int(11) NOT NULL,
  PRIMARY KEY (`idPompier`,`idIntervention`),
  KEY `idIntervention` (`idIntervention`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `intervention`
--
ALTER TABLE `intervention`
  ADD CONSTRAINT `intervention_ibfk_1` FOREIGN KEY (`idCategorieIntervention`) REFERENCES `categorieintervention` (`id`);

--
-- Contraintes pour la table `pompierformation`
--
ALTER TABLE `pompierformation`
  ADD CONSTRAINT `pompierformation_ibfk_1` FOREIGN KEY (`idPompier`) REFERENCES `pompier` (`id`),
  ADD CONSTRAINT `pompierformation_ibfk_2` FOREIGN KEY (`idFormation`) REFERENCES `formation` (`id`);

--
-- Contraintes pour la table `pompierintervention`
--
ALTER TABLE `pompierintervention`
  ADD CONSTRAINT `pompierintervention_ibfk_1` FOREIGN KEY (`idIntervention`) REFERENCES `intervention` (`id`),
  ADD CONSTRAINT `pompierintervention_ibfk_2` FOREIGN KEY (`idPompier`) REFERENCES `pompier` (`id`);
--
-- Base de données :  `rembours_frais`
--
CREATE DATABASE IF NOT EXISTS `rembours_frais` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rembours_frais`;

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
  `libelleMenu` varchar(50) NOT NULL,
  `lienMenu` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonctionnalite`
--

INSERT INTO `fonctionnalite` (`id`, `libelle`, `libelleMenu`, `lienMenu`) VALUES
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
  `id_fonc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `profil_fonct`
--

INSERT INTO `profil_fonct` (`id_profil`, `id_fonc`) VALUES
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
--
-- Base de données :  `restau`
--
CREATE DATABASE IF NOT EXISTS `restau` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restau`;

-- --------------------------------------------------------

--
-- Structure de la table `mets`
--

DROP TABLE IF EXISTS `mets`;
CREATE TABLE IF NOT EXISTS `mets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(75) NOT NULL,
  `categorie` varchar(10) NOT NULL CHECK (`categorie` in ('entr??e','plat','dessert')),
  `a_rechauffer` char(1) NOT NULL CHECK (`a_rechauffer` in ('O','N')),
  `type_rechauffage` varchar(20) DEFAULT NULL CHECK (`type_rechauffage` in ('bain-marie','four traditionnel','micro-ondes')),
  `kcalorie` decimal(7,2) DEFAULT NULL,
  `prix` decimal(7,2) NOT NULL,
  `stock` int(11) NOT NULL CHECK (`stock` >= 1 and `stock` <= 100),
  `promo` char(1) DEFAULT 'N' CHECK (`promo` in ('O','N')),
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `mets4`
--

DROP TABLE IF EXISTS `mets4`;
CREATE TABLE IF NOT EXISTS `mets4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(13) NOT NULL CHECK (`categorie` in ('hors d\'oeuvre','plat','dessert')),
  `a_rechauffer` char(1) NOT NULL CHECK (`a_rechauffer` in ('O','N')),
  `mode_rechauffage` varchar(20) DEFAULT NULL CHECK (`mode_rechauffage` in ('bain-marie','four traditionnel','micro-ondes')),
  `calories` int(11) DEFAULT NULL,
  `prix` decimal(7,2) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL CHECK (`quantite_stock` >= 1 and `quantite_stock` <= 100),
  `promo` char(1) DEFAULT ',' CHECK (`promo` in ('O','N')),
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `metsbis`
--

DROP TABLE IF EXISTS `metsbis`;
CREATE TABLE IF NOT EXISTS `metsbis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(13) NOT NULL CHECK (`categorie` in ('hors d\'oeuvre','plat','dessert')),
  `a_rechauffer` char(1) NOT NULL CHECK (`a_rechauffer` in ('O','N')),
  `mode_rechauffage` varchar(20) DEFAULT NULL CHECK (`mode_rechauffage` in ('bain-marie','four traditionnel','micro-ondes')),
  `calories` int(11) DEFAULT NULL,
  `prix` decimal(7,2) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL CHECK (`quantite_stock` >= 1 and `quantite_stock` <= 100),
  `promo` char(1) DEFAULT 'N' CHECK (`promo` in ('O','N')),
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `metster`
--

DROP TABLE IF EXISTS `metster`;
CREATE TABLE IF NOT EXISTS `metster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(13) NOT NULL CHECK (`categorie` in ('hors d\'oeuvre','plat','dessert')),
  `a_rechauffer` char(1) NOT NULL CHECK (`a_rechauffer` in ('O','N')),
  `mode_rechauffage` varchar(20) DEFAULT NULL CHECK (`mode_rechauffage` in ('bain-marie','four traditionnel','micro-ondes')),
  `calories` int(11) DEFAULT NULL,
  `prix` decimal(7,2) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL CHECK (`quantite_stock` >= 1 and `quantite_stock` <= 100),
  `promo` char(1) DEFAULT 'N' CHECK (`promo` in ('O','N')),
  PRIMARY KEY (`id`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

DROP TABLE IF EXISTS `serveur`;
CREATE TABLE IF NOT EXISTS `serveur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `salFixe` decimal(5,2) NOT NULL CHECK (`salFixe` > 500),
  `primeHabit` decimal(5,2) DEFAULT 100.00,
  `age` tinyint(4) DEFAULT NULL CHECK (`age` >= 16 and `age` < 75),
  `etatCivil` varchar(20) DEFAULT NULL CHECK (`etatCivil` in ('mari??','c??libataire','veuf','divorc??')),
  PRIMARY KEY (`id`)
) ;
--
-- Base de données :  `restauration`
--
CREATE DATABASE IF NOT EXISTS `restauration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restauration`;

-- --------------------------------------------------------

--
-- Structure de la table `critiq_gastro`
--

DROP TABLE IF EXISTS `critiq_gastro`;
CREATE TABLE IF NOT EXISTS `critiq_gastro` (
  `id` int(11) NOT NULL,
  `prenom` varchar(75) NOT NULL,
  `nom` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `critiq_gastro`
--

INSERT INTO `critiq_gastro` (`id`, `prenom`, `nom`) VALUES
(1, 'Emmanuel', 'Rubin'),
(2, 'François', 'Simonet'),
(3, 'Marcel', 'Gault'),
(4, 'Jacques', 'Millau');

-- --------------------------------------------------------

--
-- Structure de la table `critiq_restau`
--

DROP TABLE IF EXISTS `critiq_restau`;
CREATE TABLE IF NOT EXISTS `critiq_restau` (
  `id_critique` int(11) NOT NULL,
  `id_restau` int(11) NOT NULL,
  PRIMARY KEY (`id_critique`,`id_restau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `critiq_restau`
--

INSERT INTO `critiq_restau` (`id_critique`, `id_restau`) VALUES
(2, 4),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `mets`
--

DROP TABLE IF EXISTS `mets`;
CREATE TABLE IF NOT EXISTS `mets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `categorie` varchar(13) NOT NULL CHECK (`categorie` in ('hors d\'oeuvre','plat','dessert')),
  `a_rechauffer` char(1) NOT NULL CHECK (`a_rechauffer` in ('O','N')),
  `mode_rechauffage` varchar(20) DEFAULT NULL CHECK (`mode_rechauffage` in ('bain-marie','four traditionnel','micro-ondes')),
  `calories` int(11) DEFAULT NULL,
  `prix` decimal(7,2) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL CHECK (`quantite_stock` >= 1 and `quantite_stock` <= 100),
  `promo` char(1) DEFAULT 'N' CHECK (`promo` in ('O','N')),
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `mets`
--

INSERT INTO `mets` (`id`, `nom`, `categorie`, `a_rechauffer`, `mode_rechauffage`, `calories`, `prix`, `quantite_stock`, `promo`) VALUES
(1, 'Risotto de courgette au chèvre', 'plat', 'O', 'micro-ondes', 240, '11.00', 10, 'N'),
(2, 'Magret de canard aux 2 pommes', 'plat', 'O', 'micro-ondes', 260, '15.00', 30, 'N'),
(3, 'Cassoulet de magrets de canard', 'plat', 'O', 'four traditionnel', 320, '18.00', 15, 'O'),
(4, 'Mi-cuit chocolat aux groseilles', 'dessert', 'N', NULL, 300, '8.00', 50, 'N'),
(5, 'Strudel pomme', 'dessert', 'N', NULL, 290, '12.00', 28, 'N'),
(6, 'Salade de homards', 'hors d\'oeuvre', 'N', NULL, 250, '19.00', 10, 'N'),
(7, 'Soja et légumes', 'hors d\'oeuvre', 'N', NULL, NULL, NULL, NULL, NULL),
(8, 'Oeufs mimosa aux algues', 'hors d\'oeuvre', 'N', NULL, NULL, NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categ` varchar(30) NOT NULL CHECK (`categ` in ('brasserie','bistrot','classique','gastronomique','végétarien')),
  `type_cuisine` varchar(20) NOT NULL CHECK (`type_cuisine` in ('française','italienne','africaine','asiatique')),
  `nom` varchar(30) NOT NULL,
  `adresse_rue` varchar(100) NOT NULL,
  `arrondissement` int(11) NOT NULL,
  `nb_couverts` int(11) DEFAULT NULL,
  `prix_min_menu` decimal(5,2) DEFAULT NULL CHECK (`prix_min_menu` > 5 and `prix_min_menu` < 50),
  `prix_max_menu` decimal(5,2) DEFAULT NULL,
  `nom_chef` varchar(30) DEFAULT NULL,
  `note` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `categ`, `type_cuisine`, `nom`, `adresse_rue`, `arrondissement`, `nb_couverts`, `prix_min_menu`, `prix_max_menu`, `nom_chef`, `note`) VALUES
(1, 'brasserie', 'française', 'Chez Popol', '4 rue Denfert', 14, 40, '40.00', '65.00', 'Loustral', 3),
(2, 'brasserie', 'française', 'Chez Julien', '16 rue du faubourg Saint Denis', 10, 25, '40.00', '55.00', 'Lazsek', 4),
(3, 'brasserie', 'française', 'Le Zeyer', '62 rue d\'Alesia', 14, NULL, '25.00', '45.00', NULL, 4),
(4, 'classique', 'française', 'Le Keller', '35 rue de Berri', 8, NULL, '25.00', '75.00', 'Boucher', 4),
(5, 'classique', 'italienne', 'Fontanarosa', '28 boulevard Garibaldi', 15, NULL, '15.00', '35.00', 'Porcheddu', 4),
(6, 'gastronomique', 'française', 'Chez Lazar', '52 rue Atrouvé', 5, NULL, '15.00', '42.00', 'Avouar', 3),
(7, 'végétarien', 'française', 'Le puits de légumes', '18 rue du Cardinal Lemoine', 5, 25, '11.00', '35.00', 'Poirot', 5),
(8, 'végétarien', 'française', 'Saveurs végét\'halles', '41 rue des bourdonnais', 1, 30, '15.00', '65.00', 'Carot', 3),
(9, 'classique', 'africaine', 'Les Dunes', '17 rue du croissant', 2, 50, '18.00', '48.00', 'Bousefik', 5),
(10, 'classique', 'africaine', 'Le Tizzi', '147 rue du château', 14, 70, '22.00', '150.00', NULL, 5);
--
-- Base de données :  `smoli`
--
CREATE DATABASE IF NOT EXISTS `smoli` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smoli`;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_mission`
--

DROP TABLE IF EXISTS `categorie_mission`;
CREATE TABLE IF NOT EXISTS `categorie_mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie_mission`
--

INSERT INTO `categorie_mission` (`id`, `libelle`) VALUES
(1, 'formation'),
(2, 'support technique'),
(3, 'commercial');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raison_sociale` varchar(35) NOT NULL,
  `id_secteur` int(11) NOT NULL,
  `rue` varchar(50) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `raison_sociale`, `id_secteur`, `rue`, `code_postal`, `ville`) VALUES
(1, 'Leclerc', 2, '8, rue des usages', '60500', 'Chantilly'),
(2, 'LVMH', 4, '335 rue de rivoli', '75001', 'Paris'),
(3, 'Poclain', 1, '15 rue de Fiiedland', '95000', 'St Denis');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(30) NOT NULL,
  `salaire_min` decimal(7,2) NOT NULL,
  `prix_km` decimal(4,2) NOT NULL,
  `prix_nuitee` decimal(5,2) NOT NULL,
  `prix_repas` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id`, `libelle`, `salaire_min`, `prix_km`, `prix_nuitee`, `prix_repas`) VALUES
(1, 'employé', '1500.00', '1.90', '70.00', '25.00'),
(2, 'cadre', '2100.00', '2.20', '90.00', '30.00'),
(3, 'cadre supérieur', '2500.00', '2.30', '99.99', '40.00'),
(4, 'directeur', '4000.00', '2.50', '99.99', '50.00');

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

DROP TABLE IF EXISTS `intervenant`;
CREATE TABLE IF NOT EXISTS `intervenant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(35) NOT NULL,
  `sexe` char(1) NOT NULL,
  `id_grade` int(11) NOT NULL,
  `id_poste` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `intervenant`
--

INSERT INTO `intervenant` (`id`, `nom`, `prenom`, `sexe`, `id_grade`, `id_poste`) VALUES
(1, 'Martinez', 'Aurélie', 'F', 2, 2),
(2, 'Loubgat', 'Julie', 'F', 2, 2),
(3, 'Gilliot', 'Marie', 'F', 2, 3),
(4, 'Mouton', 'Aurélie', 'F', 2, 3),
(5, 'Groutille', 'Pierre', 'M', 1, 5),
(6, 'Voudral', 'Gilles', 'M', 3, 4),
(7, 'Germonprez', 'Louise', 'F', 4, 4),
(8, 'Glenat', 'Jean', 'M', 3, 4),
(9, 'Foulon', 'Agathe', 'F', 4, 3),
(10, 'Kouton', 'Etienne', 'M', 4, 6),
(11, 'Kloug', 'Armand', 'M', 4, 6);

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

DROP TABLE IF EXISTS `mission`;
CREATE TABLE IF NOT EXISTS `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_categorie_mission` int(11) NOT NULL,
  `id_intervenant` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `nb_km_parcourus` int(11) NOT NULL,
  `nb_repas` int(11) NOT NULL,
  `nb_nuits` int(11) NOT NULL,
  `rembourse` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mission`
--

INSERT INTO `mission` (`id`, `libelle`, `date`, `id_categorie_mission`, `id_intervenant`, `id_client`, `nb_km_parcourus`, `nb_repas`, `nb_nuits`, `rembourse`) VALUES
(1, 'Présentation des bases de C#', NULL, 1, 1, 2, 2000, 2, 2, NULL),
(2, NULL, '2021-03-15', 1, 1, 2, 2000, 2, 1, NULL),
(3, 'Utiliser Visual Studio - niveau confirmé', '2021-01-15', 1, 1, 1, 200, 6, 3, NULL),
(4, 'C# avancé', NULL, 1, 1, 2, 2000, 1, 1, NULL),
(5, 'Assistance sur l\'accès aux bases de données', '2020-09-24', 2, 3, 1, 400, 4, 2, 'O'),
(6, 'ADO.Net et C#', NULL, 1, 1, 2, 2400, 2, 1, NULL),
(7, 'Présentation des formations 2021', '2020-12-01', 3, 7, 1, 200, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

DROP TABLE IF EXISTS `poste`;
CREATE TABLE IF NOT EXISTS `poste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `poste`
--

INSERT INTO `poste` (`id`, `libelle`) VALUES
(1, 'développeur'),
(2, 'architecte des systèmes d\'information'),
(3, 'chef de projet'),
(4, 'responsable système'),
(5, 'technicien réseaux'),
(6, 'directeur des systèmes d\'information');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
CREATE TABLE IF NOT EXISTS `secteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `secteur`
--

INSERT INTO `secteur` (`id`, `libelle`) VALUES
(1, 'industriel'),
(2, 'grande distribution'),
(3, 'informatique'),
(4, 'luxe');
--
-- Base de données :  `statistique`
--
CREATE DATABASE IF NOT EXISTS `statistique` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `statistique`;

-- --------------------------------------------------------

--
-- Structure de la table `borne`
--

DROP TABLE IF EXISTS `borne`;
CREATE TABLE IF NOT EXISTS `borne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateMiseEnService` date NOT NULL,
  `numeroSerie` int(11) NOT NULL,
  `idStation` int(11) NOT NULL,
  `nbkwCharge` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idStation` (`idStation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `consotypecharge`
--

DROP TABLE IF EXISTS `consotypecharge`;
CREATE TABLE IF NOT EXISTS `consotypecharge` (
  `idTypeCharge` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `nbKwCharge` float NOT NULL,
  PRIMARY KEY (`idTypeCharge`,`annee`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pointcharge`
--

DROP TABLE IF EXISTS `pointcharge`;
CREATE TABLE IF NOT EXISTS `pointcharge` (
  `idBorne` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `idTypeCharge` int(11) NOT NULL,
  PRIMARY KEY (`idBorne`,`numero`),
  KEY `idTypeCharge` (`idTypeCharge`),
  KEY `idBorne` (`idBorne`,`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typecharge`
--

DROP TABLE IF EXISTS `typecharge`;
CREATE TABLE IF NOT EXISTS `typecharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typeemplacement`
--

DROP TABLE IF EXISTS `typeemplacement`;
CREATE TABLE IF NOT EXISTS `typeemplacement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeemplacement`
--

INSERT INTO `typeemplacement` (`id`, `libelle`) VALUES
(1, 'Centre-ville'),
(2, 'Centre commercial'),
(3, 'Gare'),
(4, 'Aéroport');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `borne`
--
ALTER TABLE `borne`
  ADD CONSTRAINT `borne_ibfk_1` FOREIGN KEY (`idStation`) REFERENCES `station` (`id`);

--
-- Contraintes pour la table `consotypecharge`
--
ALTER TABLE `consotypecharge`
  ADD CONSTRAINT `consotypecharge_ibfk_1` FOREIGN KEY (`idTypeCharge`) REFERENCES `typecharge` (`id`);

--
-- Contraintes pour la table `pointcharge`
--
ALTER TABLE `pointcharge`
  ADD CONSTRAINT `pointcharge_ibfk_1` FOREIGN KEY (`idBorne`) REFERENCES `borne` (`id`),
  ADD CONSTRAINT `pointcharge_ibfk_2` FOREIGN KEY (`idTypeCharge`) REFERENCES `typecharge` (`id`);
--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
