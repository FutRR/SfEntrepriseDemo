-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour sfentreprisedemo
CREATE DATABASE IF NOT EXISTS `sfentreprisedemo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sfentreprisedemo`;

-- Listage de la structure de table sfentreprisedemo. categorie
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfentreprisedemo.categorie : ~0 rows (environ)
INSERT IGNORE INTO `categorie` (`id`, `nom_categorie`) VALUES
	(1, 'SAS'),
	(2, 'SARL'),
	(3, 'EI'),
	(4, 'SA');

-- Listage de la structure de table sfentreprisedemo. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table sfentreprisedemo.doctrine_migration_versions : ~1 rows (environ)
INSERT IGNORE INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240418123326', '2024-04-18 12:33:41', 521);

-- Listage de la structure de table sfentreprisedemo. employe
CREATE TABLE IF NOT EXISTS `employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entreprise_id` int NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `date_embauche` datetime NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F804D3B9A4AEAFEA` (`entreprise_id`),
  CONSTRAINT `FK_F804D3B9A4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfentreprisedemo.employe : ~0 rows (environ)
INSERT IGNORE INTO `employe` (`id`, `entreprise_id`, `nom`, `prenom`, `date_naissance`, `date_embauche`, `ville`) VALUES
	(1, 1, 'SMAIL', 'Stéphane', '1982-09-15 10:12:14', '2020-09-15 10:48:19', NULL),
	(2, 1, 'MATHIEU', 'Quentin', '1996-09-15 10:48:45', '2021-09-15 10:48:50', NULL),
	(3, 1, 'MURMANN', 'Mickael', '1987-09-15 10:49:13', '2010-09-15 10:49:19', NULL),
	(4, 2, 'ANDRES', 'Mathilde', '1997-09-15 10:49:40', '2015-09-15 10:49:44', NULL);

-- Listage de la structure de table sfentreprisedemo. entreprise
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categorie_id` int NOT NULL DEFAULT '1',
  `raison_sociale` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D19FA60BCF5E72D` (`categorie_id`),
  CONSTRAINT `FK_D19FA60BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfentreprisedemo.entreprise : ~6 rows (environ)
INSERT IGNORE INTO `entreprise` (`id`, `categorie_id`, `raison_sociale`, `date_creation`, `adresse`, `cp`, `ville`) VALUES
	(1, 1, 'ELAN FORMATION', '2024-04-15 00:00:00', '14 rue du rhône', '67100', 'Strasbourg'),
	(2, 3, 'Audio Creation', '2024-04-15 00:00:00', '1 rue de l\'ecole', '68480', 'Liebsdorf'),
	(3, 1, 'KFC', '2011-09-15 00:00:00', '22 rue poulet braisé', '67200', 'Strasbourg'),
	(6, 1, 'Au coeur du chanvre', '2020-10-14 00:00:00', '246 av. de colmar', '67100', 'Strasbourg'),
	(8, 2, 'Master Kebab', '1998-01-25 00:00:00', '2 rue du crack', '75020', 'Paris'),
	(9, 2, 'Elan', '2004-01-01 00:00:00', '202 av de Colmar', '67200', 'STRASBOURG');

-- Listage de la structure de table sfentreprisedemo. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfentreprisedemo.messenger_messages : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
