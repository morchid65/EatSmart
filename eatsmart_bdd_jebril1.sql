-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 sep. 2025 à 23:46
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eatsmart_bdd_jebril1`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id_articles` varchar(50) NOT NULL,
  `DescriptionArticles` text,
  `nomArticles` varchar(50) NOT NULL,
  `prixArticle` decimal(19,4) DEFAULT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_articles`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_articles`, `DescriptionArticles`, `nomArticles`, `prixArticle`, `id_categorie`) VALUES
('A001', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 'Anchois 23cm', '7.9000', 1),
('A002', 'sauce tomate premium, origan, huile d\'olive extra vierge, anchois, olive', 'Anchois 33cm', '11.9000', 1),
('A003', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 'Emmental 23cm', '7.9000', 1),
('A004', 'sauce tomate premium, origan, huile d\'olive extra vierge, emmental, basilic, olive', 'Emmental 33cm', '11.9000', 1),
('A005', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 'Margherita 23cm', '7.9000', 1),
('A006', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella', 'Margherita 33cm', '11.9000', 1),
('A007', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', '3 fromages 23cm', '8.4000', 1),
('A008', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre', '3 fromages 33cm', '12.9000', 1),
('A009', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', '4 fromages 23cm', '8.9000', 1),
('A010', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, emmental, chevre, roquefort', '4 fromages 33cm', '13.9000', 1),
('A011', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 'Royale 23cm', '8.9000', 2),
('A012', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon label rouge, champignon brun, olive', 'Royale 33cm', '13.9000', 2),
('A013', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 'Vegetarienne 23cm', '8.9000', 2),
('A014', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, roquette, oignon rouge, poivron, champignon brun, olive', 'Vegetarienne 33cm', '13.9000', 2),
('A015', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 'Provencale 23cm', '8.9000', 2),
('A016', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, filets de poulet rôti, oignon rouge, poivron, olive', 'Provencale 33cm', '13.9000', 2),
('A017', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 'Espagnol 23cm', '8.9000', 2),
('A018', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, chorizo de León, poivron, olive', 'Espagnol 33cm', '13.9000', 2),
('A019', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 'Italienne 23cm', '10.4000', 2),
('A020', 'sauce tomate premium, origan, huile d\'olive extra vierge, mozzarella, jambon cru IGP, roquette, parmigiano reggiano, olive', 'Italienne 33cm', '16.9000', 2),
('A021', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 'Armenienne 23cm', '8.9000', 3),
('A022', 'sauce crème fraîche premium, mozzarella, viande hachée 100% pur bœuf, oignon rouge, olive', 'Armenienne 33cm', '13.9000', 3),
('A023', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 'White royale 23cm', '8.9000', 3),
('A024', 'sauce crème fraîche premium, mozzarella, jambon label rouge, champignon brun, olive', 'White royale 33cm', '13.9000', 3),
('A025', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 'Chevre miel 23cm', '8.9000', 3),
('A026', 'sauce crème fraîche premium, mozzarella, chevre, miel, olive', 'Chevre miel 33cm', '13.9000', 3),
('D001', 'boudoirs imbibés ou non de café, mascarpone, œufs, sucre, arôme vanille, cacao en poudre', 'Tiramisu', '3.9000', 4),
('D002', 'nutella, avec une glace noix de coco râpé ou chocolat, supplément fruits frais possible', 'Gourmande', '6.9000', 4),
('B001', 'eaux cristalline, san pellegrino, badoit', 'Eaux', '1.9000', 5),
('B002', 'coca original, zero, cherry', 'Soda 33cl', '1.9000', 5),
('B003', 'coca, icetea, orangina, sprite, oasis', 'Soda 1L+', '3.0000', 5),
('B004', 'desperados, heineken', 'Biere', '3.5000', 5),
('B005', 'rouge, rose', 'Vin AOP 25cl', '4.9000', 5),
('B006', 'rouge, rose', 'Vin AOP 50cl', '7.5000', 5);

-- --------------------------------------------------------

--
-- Structure de la table `assoc_article_commandes`
--

DROP TABLE IF EXISTS `assoc_article_commandes`;
CREATE TABLE IF NOT EXISTS `assoc_article_commandes` (
  `id_articles` varchar(50) NOT NULL,
  `id_commandes` int(11) NOT NULL,
  `quantite_article` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_articles`,`id_commandes`),
  KEY `id_commandes` (`id_commandes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assoc_article_commandes`
--

INSERT INTO `assoc_article_commandes` (`id_articles`, `id_commandes`, `quantite_article`) VALUES
('1', 1, '1.00'),
('1', 2, '1.00'),
('3', 2, '1.00'),
('5', 2, '1.00'),
('1', 3, '3.00'),
('1', 4, '2.00'),
('3', 4, '1.00'),
('5', 4, '2.00'),
('7', 5, '1.00'),
('33', 5, '1.00'),
('27', 5, '1.00');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`) VALUES
(1, 'classic'),
(2, 'tradition'),
(3, 'creme'),
(4, 'dessert maison'),
(5, 'boisson');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `id_commandes` int(11) NOT NULL AUTO_INCREMENT,
  `prixTotal` double DEFAULT NULL,
  `dateCommandes` datetime DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_commandes`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id_commandes`, `prixTotal`, `dateCommandes`, `etat`) VALUES
(1, 7.9, '2024-10-25 00:00:00', 'en cours'),
(2, 23.2, '2024-10-25 00:00:00', 'en cours'),
(3, 23.7, '2024-10-25 00:00:00', 'en cours'),
(4, 34.2, '2024-10-25 00:00:00', 'en cours'),
(5, 17.7, '2024-10-25 00:00:00', 'en cours');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
