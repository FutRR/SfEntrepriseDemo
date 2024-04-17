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

-- Listage des données de la table sfentreprisedemo.employe : ~5 rows (environ)
REPLACE INTO `employe` (`id`, `entreprise_id`, `nom`, `prenom`, `date_naissance`, `date_embauche`, `ville`) VALUES
	(1, 1, 'SMAIL', 'Stéphane', '1982-09-15 10:12:14', '2020-09-15 10:48:19', NULL),
	(2, 1, 'MATHIEU', 'Quentin', '1996-09-15 10:48:45', '2021-09-15 10:48:50', NULL),
	(3, 1, 'MURMANN', 'Mickael', '1987-09-15 10:49:13', '2010-09-15 10:49:19', NULL),
	(4, 2, 'ANDRES', 'Mathilde', '1997-09-15 10:49:40', '2015-09-15 10:49:44', NULL),
	(5, 5, 'Akkari', 'Zizou', '1994-09-08 00:00:00', '2023-09-14 00:00:00', NULL),
	(6, 8, 'Bugs', 'Bunny', '1995-12-31 00:00:00', '2010-04-17 00:00:00', 'Strasbourg');

-- Listage des données de la table sfentreprisedemo.entreprise : ~9 rows (environ)
REPLACE INTO `entreprise` (`id`, `raison_sociale`, `date_creation`, `adresse`, `cp`, `ville`) VALUES
	(1, 'ELAN FORMATION', '2024-04-15 16:43:48', '14 rue du rhöne', '67100', 'Strasbourg'),
	(2, 'Audio Creation', '2024-04-15 16:44:19', '1 rue de l\'ecole', '68480', 'Liebsdorf'),
	(3, 'KFC', '2011-09-15 00:00:00', '22 rue poulet frites', '67200', 'Strasbourg'),
	(4, 'Chronopost', '2011-09-15 14:59:57', '110 route des romains', '67200', 'Strasbourg'),
	(5, 'Laposte', '2023-09-01 00:00:00', '10 route du Rhin', '67000', 'Strasbourg'),
	(6, 'Au coeur du chanvre', '2020-10-14 00:00:00', '246 av. de colmar', '67100', 'Strasbourg'),
	(7, 'test', '2009-05-21 00:00:00', '1 rue du test', '68200', 'Mulhouse'),
	(8, 'Master Kebab', '1998-01-25 00:00:00', '2 rue du crack', '75020', 'Paris'),
	(9, 'Elan', '2004-01-01 00:00:00', '202 av de Colmar', '67200', 'STRASBOURG'),
	(10, 'Test test', '2024-01-01 00:00:00', 'aaa', '67000', 'STRASBOURG'),
	(11, 'bidule', '2024-01-01 00:00:00', 'aaa', '67000', 'STRASBOURG'),
	(12, 'bidule 2', '2024-01-02 00:00:00', 'aaa', '67000', 'STRASBOURG'),
	(13, 'bidule 4', '2024-01-01 00:00:00', 'aaa', '67000', 'STRASBOURG');

-- Listage des données de la table sfentreprisedemo.messenger_messages : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
