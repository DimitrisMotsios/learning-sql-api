-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.18 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.6037
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for diplwmatiki
DROP DATABASE IF EXISTS `diplwmatiki`;
CREATE DATABASE IF NOT EXISTS `diplwmatiki` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diplwmatiki`;

-- Dumping structure for table diplwmatiki.actors
DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `idactor` int(12) NOT NULL,
  `name` varchar(22) COLLATE utf8_bin NOT NULL,
  `surname` varchar(22) COLLATE utf8_bin NOT NULL,
  `address` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idactor`),
  KEY `idactor` (`idactor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.actors: ~0 rows (approximately)
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
REPLACE INTO `actors` (`idactor`, `name`, `surname`, `address`) VALUES
	(1, 'dimitris', 'motsios', 'ad1'),
	(2, 'kostas', 'mixas', 'ad2'),
	(3, 'giannis', 'mixas ', 'ad3'),
	(4, 'ilias', 'pappas', 'ad4'),
	(5, 'panorea', 'pappas', 'ad5'),
	(6, 'ilianna', 'pappas', NULL),
	(7, 'kostas', 'pappas', 'ad6'),
	(8, 'giogos', 'apostolakis', 'as');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.excersice_tables
DROP TABLE IF EXISTS `excersice_tables`;
CREATE TABLE IF NOT EXISTS `excersice_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.excersice_tables: ~7 rows (approximately)
/*!40000 ALTER TABLE `excersice_tables` DISABLE KEYS */;
REPLACE INTO `excersice_tables` (`id`, `table_name`) VALUES
	(116, 'asdsad'),
	(177, 'reporters'),
	(178, 'magazines'),
	(187, 'games'),
	(188, 'gamers'),
	(201, 'actors'),
	(203, 'movies');
/*!40000 ALTER TABLE `excersice_tables` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.fill_fields_questions
DROP TABLE IF EXISTS `fill_fields_questions`;
CREATE TABLE IF NOT EXISTS `fill_fields_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fill_field_question` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hideWord` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.fill_fields_questions: ~31 rows (approximately)
/*!40000 ALTER TABLE `fill_fields_questions` DISABLE KEYS */;
REPLACE INTO `fill_fields_questions` (`id`, `question`, `fill_field_question`, `hideWord`) VALUES
	(1, 'Εισάγετε τη δήλωση που λείπει για να λάβετε όλες τις στήλες από τον πίνακα Customers.', 'SELECT * FROM Customers', 'SELECT,*'),
	(2, 'Γράψτε μια δήλωση που θα επιλέξει τη στήλη City από τον πίνακα Customers.', 'SELECT City FROM Customers', 'SELECT,City,FROM'),
	(15, 'Επιλέξτε όλες τις διαφορετικές τιμές από τη στήλη Country στον πίνακα Customers.', 'SELECT DISTINCT Country FROM Customers;', 'SELECT,DISTINCT'),
	(16, 'Επιλέξτε όλες τις εγγραφές όπου η στήλη City έχει την τιμή \'Berlin\'.', 'SELECT * FROM Customers WHERE City = \'Berlin\'', 'WHERE,City,\'Berlin\''),
	(17, 'Χρησιμοποιήστε τη λέξη-κλειδί NOT για να επιλέξετε όλες τις εγγραφές όπου η στήλη City ΔΕΝ είναι \'Berlin\'.', 'SELECT * FROM Customers WHERE NOT City =  \'Berlin\'', 'WHERE,NOT,City,\'Berlin\''),
	(18, 'Επιλέξτε όλες τις εγγραφές όπου η στήλη CustomerID έχει την τιμή 32.', 'SELECT * FROM Customers WHERE CustomerID = 32', 'WHERE,=,32'),
	(19, 'Επιλέξτε όλες τις εγγραφές από τον πίνακαCustomers, ταξινομήστε το αποτέλεσμα που αντιστρέφεται αλφαβητικά από τη στήλη City.', 'SELECT * FROM Customers ORDER BY City DESC', 'ORDER BY,City,DESC'),
	(20, 'Εισαγάγετε μια νέα εγγραφή στον πίνακα Customers.', 'INSERT INTO Customers (CustomerName ) VALUES (\'Hekkan Burger\')', 'INSERT INTO,(,),VALUES,(,)'),
	(21, 'Επιλέξτε όλες τις εγγραφές από τους Customers όπου η στήλη PostalCode ΔΕΝ είναι κενή', 'SELECT * FROM Customers WHERE PostalCode IS NOT NULL', 'PostalCode,IS,NOT,NULL'),
	(22, 'Ορίστε την τιμή των στηλών City σε \'Oslo\', αλλά μόνο εκείνες όπου η στήλη Countryέχει την τιμή "Norway".', 'UPDATE Customers SET City = \'Oslo\' WHERE Country=\'Norway\';', 'UPDATE,SET,WHERE'),
	(23, 'Διαγράψτε όλες τις εγγραφές από τον πίνακα Customers.', 'DELETE FROM Customers', 'DELETE,FROM'),
	(24, 'Χρησιμοποιήστε μια συνάρτηση SQL για να επιλέξετε την εγγραφή με την υψηλότερη Price της στήλης Products.', 'SELECT MAX(Price) FROM Products;', 'MAX(Price)'),
	(25, 'Χρησιμοποιήστε τη συνάρτηση MIN για να επιλέξετε την εγγραφή με τη μικρότερη Price στη στήλη Products.', 'SELECT MIN(Price) FROM Products;', 'MIN(Price)'),
	(26, 'Χρησιμοποιήστε μια συνάρτηση SQL για να υπολογίσετε το άθροισμα όλων των τιμών της στήλης Price στον πίνακα Products.', 'SELECT SUM(Price) FROM Products;', 'SUM(Price)'),
	(27, 'Επιλέξτε όλες τις εγγραφές όπου η τιμή της στήλης City τελειώνει με το γράμμα "a".', 'SELECT * FROM Customers WHERE City LIKE \'%a\'', 'WHERE,City,LIKE,\'%a\''),
	(28, 'Επιλέξτε όλες τις εγγραφές όπου η τιμή της στήλης City ξεκινά με το γράμμα "a" και τελειώνει με το γράμμα "b".', 'SELECT * FROM Customers WHERE City LIKE \'a%b\'', 'WHERE,City,LIKE ,\'a%b\''),
	(29, 'Επιλέξτε όλες τις εγγραφές όπου το πρώτο γράμμα της πόλης είναι "a" ή "c" ή "s".', 'SELECT * FROM Customers WHERE City LIKE \'[acs]%\'', '[acs]'),
	(30, 'Επιλέξτε όλες τις εγγραφές όπου το πρώτο γράμμα της στήλης City ξεκινά με οτιδήποτε από "a" έως "f".', 'SELECT * FROM Customers WHERE City LIKE \'[a-f]%\'', '[a-f]'),
	(31, 'Χρησιμοποιήστε τον τελεστή IN για να επιλέξετε όλες τις εγγραφές όπου η στήλη Country ΔΕΝ είναι "Norway" και ΔΕΝ "France".', 'SELECT * FROM Customers WHERE Country NOT IN (\'Norway\', \'France\');', 'WHERE,Country,NOT,IN'),
	(32, 'Χρησιμοποιήστε τον τελεστή IN για να επιλέξετε όλες τις εγγραφές όπου η στήλη Country είναι είτε "Norway" είτε "France".', 'SELECT * FROM Customers WHERE Country IN (\'Norway\', \'France\' )', 'WHERE,Country,IN,(\'Norway\',)'),
	(33, 'Χρησιμοποιήστε τον τελεστή BETWEEN για να επιλέξετε όλες τις εγγραφές όπου η τιμή της στήλης Price είναι μεταξύ 10 και 20.', 'SELECT * FROM Products WHERE Price BETWEEN 10 AND 20', 'BETWEEN,10,AND,20'),
	(34, 'Χρησιμοποιήστε τον χειριστή BETWEEN για να επιλέξετε όλες τις εγγραφές όπου η τιμή της στήλης Price ΔΕΝ είναι μεταξύ 10 και 20.', 'SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20', 'NOT,BETWEEN'),
	(35, 'Κατά την εμφάνιση του πίνακα Customers, δημιουργήστε ένα ALIAS της στήλης PostalCode, η στήλη θα πρέπει να ονομάζεται Pno.', 'SELECT CustomerName,Address,PostalCode AS Pno FROM Customers;', 'AS,Pno'),
	(36, 'Εισαγάγετε τα μέρη που λείπουν στον όρο JOIN για να ενωθείτε με τους δύο πίνακες Orders και Customers, χρησιμοποιώντας το πεδίο CustomerID και στους δύο πίνακες ως σχέση μεταξύ των δύο πινάκων.', 'SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID', 'ON,Orders.CustomerID,Customers.CustomerID'),
	(37, 'Επιλέξτε τη σωστή ρήτρα JOIN για να επιλέξετε όλες τις εγγραφές από τους δύο πίνακες όπου υπάρχει αντιστοιχία και στους δύο πίνακες.', 'SELECT * FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;', 'INNER JOIN,Customers'),
	(38, 'Επιλέξτε τη σωστή ρήτρα JOIN για να επιλέξετε όλες τις εγγραφές από τον πίνακα Customers συν όλους τους αγώνες στον πίνακα Orders.', 'SELECT * FROM Orders RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;', 'RIGHT JOIN,Customers'),
	(39, 'Αναφέρετε τον αριθμό των Customers σε κάθε Country.', 'SELECT COUNT (CustomerID),Country FROM Customers GROUP BY Country', 'COUNT,GROUP BY,Country'),
	(40, 'Αναφέρετε πρώτα τον αριθμό των Customers σε κάθε Country, κατά σειρά με τους περισσότερους Customers.', 'SELECT COUNT (CustomerID),Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC', 'COUNT,GROUP BY,Country,COUNT(CustomerID),DESC'),
	(41, 'Κατά την εμφάνιση του πίνακα Customers, δημιουργήστε ένα ALIAS της στήλης PostalCode, η στήλη θα πρέπει να ονομάζεται Pno.', 'SELECT CustomerName,Address,PostalCode AS Pno FROM Customers;', 'AS Pno'),
	(43, 'Εμφάνισε όλα τα δεδομένα του πίνακα Scores', 'SELECT * FROM Scores', 'SELECT,FROM'),
	(44, 'Διαγράψτε από τον πίνακα users όσες εγγραφές έχουν id μεγαλύτερο του 5', 'DELETE FROM users WHERE id>5', 'DELETE,FROM,>');
/*!40000 ALTER TABLE `fill_fields_questions` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.gamers
DROP TABLE IF EXISTS `gamers`;
CREATE TABLE IF NOT EXISTS `gamers` (
  `idgamer` int(12) NOT NULL,
  `name` varchar(22) COLLATE utf8_bin NOT NULL,
  `surname` varchar(22) COLLATE utf8_bin NOT NULL,
  `gameId` int(12) DEFAULT NULL,
  PRIMARY KEY (`idgamer`),
  KEY `gameId` (`gameId`),
  CONSTRAINT `gameId` FOREIGN KEY (`gameId`) REFERENCES `games` (`idgame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.gamers: ~11 rows (approximately)
/*!40000 ALTER TABLE `gamers` DISABLE KEYS */;
REPLACE INTO `gamers` (`idgamer`, `name`, `surname`, `gameId`) VALUES
	(1, 'Dimitris', 'Motsios', 2),
	(2, 'Kostas', 'Mixas', 4),
	(3, 'Kostas', 'Kakkos', 1),
	(4, 'Ilias', 'Katsimixas', 1),
	(5, 'Giorgos', 'Kotsampasis', 2),
	(6, 'Ilianna', 'Gkalana', 2),
	(7, 'Georgia', 'Mpmampou', 5),
	(8, 'Konstantina', 'Poulika', 4),
	(9, 'Panos', 'Panou', NULL),
	(11, 'Kalista', 'Ink', NULL),
	(12, 'Theodora', 'Pappa', 11);
/*!40000 ALTER TABLE `gamers` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.games
DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `idgame` int(12) NOT NULL,
  `title` varchar(22) COLLATE utf8_bin NOT NULL,
  `hoursPlayed` int(22) DEFAULT NULL,
  `multiplayer` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idgame`),
  KEY `idgame` (`idgame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.games: ~11 rows (approximately)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
REPLACE INTO `games` (`idgame`, `title`, `hoursPlayed`, `multiplayer`) VALUES
	(1, 'Battlefield 1', 150, 1),
	(2, 'Lol', 1000, 1),
	(3, 'The Witcher 1', 600, 0),
	(4, 'The Last of Us', 500, 0),
	(5, 'FortNeit', 30, 1),
	(6, 'Fifa 21', 160, 1),
	(7, 'Pro evoloution soccer ', 601, 1),
	(8, 'Sekiro', 5, 0),
	(9, 'Call of duty ', 600, 0),
	(10, 'Far cry', 600, 0),
	(11, 'Mario', 2, 1);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.magazines
DROP TABLE IF EXISTS `magazines`;
CREATE TABLE IF NOT EXISTS `magazines` (
  `idmagazine` int(12) NOT NULL,
  `title` varchar(22) COLLATE utf8_bin NOT NULL,
  `views` int(22) NOT NULL,
  `releasedDate` datetime DEFAULT NULL,
  `reporterId` int(12) DEFAULT NULL,
  PRIMARY KEY (`idmagazine`),
  KEY `reporterId` (`reporterId`),
  CONSTRAINT `reporterId` FOREIGN KEY (`reporterId`) REFERENCES `reporters` (`idreporter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.magazines: ~6 rows (approximately)
/*!40000 ALTER TABLE `magazines` DISABLE KEYS */;
REPLACE INTO `magazines` (`idmagazine`, `title`, `views`, `releasedDate`, `reporterId`) VALUES
	(1, 'Young', 234, '2001-01-02 00:00:00', 3),
	(2, 'Miss you', 111, '1999-01-01 00:00:00', 4),
	(3, 'Alone', 908, '1999-01-01 00:00:00', 3),
	(4, 'Already famous', 545, '2000-03-03 00:00:00', NULL),
	(5, 'Sold your Soul', 123, '1960-01-03 00:00:00', 4),
	(6, 'Miss my City', 887, '2003-03-11 00:00:00', NULL),
	(7, 'My son', 692, '2012-09-12 00:00:00', 3);
/*!40000 ALTER TABLE `magazines` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.movies
DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `idmovie` int(12) NOT NULL,
  `title` varchar(22) COLLATE utf8_bin NOT NULL,
  `released` datetime DEFAULT NULL,
  `actorid` int(12) DEFAULT NULL,
  PRIMARY KEY (`idmovie`),
  KEY `actorid` (`actorid`),
  CONSTRAINT `actorid` FOREIGN KEY (`actorid`) REFERENCES `actors` (`idactor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.movies: ~0 rows (approximately)
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
REPLACE INTO `movies` (`idmovie`, `title`, `released`, `actorid`) VALUES
	(1, 'title1', '2005-01-01 00:00:00', 2),
	(2, 'title2', '1999-01-05 00:00:00', NULL),
	(3, 'title3', '2336-05-12 00:00:00', 2),
	(4, 'title44', '1996-02-03 00:00:00', 5),
	(5, 'title5', '1236-11-11 00:00:00', 6),
	(7, 'title7', '2003-12-22 00:00:00', 3);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.reporters
DROP TABLE IF EXISTS `reporters`;
CREATE TABLE IF NOT EXISTS `reporters` (
  `idreporter` int(12) NOT NULL,
  `name` varchar(22) COLLATE utf8_bin NOT NULL,
  `surname` varchar(22) COLLATE utf8_bin NOT NULL,
  `birthdate` datetime DEFAULT NULL,
  `address` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idreporter`),
  KEY `idreporter` (`idreporter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.reporters: ~14 rows (approximately)
/*!40000 ALTER TABLE `reporters` DISABLE KEYS */;
REPLACE INTO `reporters` (`idreporter`, `name`, `surname`, `birthdate`, `address`) VALUES
	(1, 'dimitris', 'motsios', '1994-11-02 00:00:00', 'antwni samaraki 16'),
	(2, 'iliana', 'pappa', '1992-03-03 00:00:00', 'leukaditika 12'),
	(3, 'panos', 'panou', '2000-01-01 00:00:00', 'iliados 4'),
	(4, 'kostas', 'pappas', '1992-03-03 00:00:00', 'papanastasiou 15'),
	(5, 'kostas', 'ilias', '1965-03-04 00:00:00', 'xatzibreta 43'),
	(6, 'georgia', 'pappa', '1996-06-03 00:00:00', 'pappanastasiou 12'),
	(7, 'ilianna', 'papanelpoulou', '1999-06-04 00:00:00', 'pappantwniadi 32'),
	(8, 'antwnis', 'mixas', '1996-06-02 00:00:00', 'pappalabrena 12'),
	(9, 'antwnia', 'mixa', '1996-06-02 00:00:00', 'pappalabrena 11'),
	(10, 'kostantina', 'pappa', '1996-06-02 00:00:00', 'iliados 65'),
	(11, 'panagiota', 'pappa', '1993-03-03 00:00:00', 'papagou 12'),
	(12, 'kostas', 'antwniadis', '1996-06-01 00:00:00', NULL),
	(13, 'giorgos', 'papasteriadis', '1996-06-01 00:00:00', NULL),
	(14, 'giorgos', 'antwniou', '1996-06-01 00:00:00', NULL),
	(15, 'georgia', 'antwniou', '1996-06-01 00:00:00', 'papaflesa 12');
/*!40000 ALTER TABLE `reporters` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.score_table
DROP TABLE IF EXISTS `score_table`;
CREATE TABLE IF NOT EXISTS `score_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `difficulty` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id_idx` (`student_id`),
  CONSTRAINT `student_id` FOREIGN KEY (`student_id`) REFERENCES `user_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.score_table: ~28 rows (approximately)
/*!40000 ALTER TABLE `score_table` DISABLE KEYS */;
REPLACE INTO `score_table` (`id`, `student_id`, `score`, `time`, `category`, `difficulty`, `created_at`, `updated_at`) VALUES
	(20, 5, 65, '00:01:22', '15 Questions', 'hard', '2020-12-08 17:24:31', '2020-12-08 17:24:31'),
	(21, 16, 40, '00:02:22', '25 Questions', 'hard', '2020-12-08 17:25:03', '2020-12-08 17:25:03'),
	(22, 16, 80, '00:02:22', '15 Questions', 'hard', '2020-12-08 20:31:59', '2020-12-08 20:31:59'),
	(23, 5, 70, '00:04:22', '25 Questions', 'easy', '2020-12-08 20:32:02', '2020-12-08 20:32:02'),
	(24, 16, 25, '00:03:22', '15 Questions', 'easy', '2020-12-09 20:16:36', '2020-12-09 20:16:36'),
	(25, 5, 85, '00:40:22', '25 Questions', 'easy', '2020-12-09 20:16:42', '2020-12-09 20:16:42'),
	(31, 5, 90, '00:01:32', '25 Questions', 'easy', '2020-12-14 19:28:35', '2020-12-14 19:28:35'),
	(50, 5, 15, '00:00:24', '25 Questions', 'hard', '2020-12-17 19:37:27', '2020-12-17 19:37:27'),
	(51, 5, 15, '00:00:18', '25 Questions', 'hard', '2020-12-17 19:39:57', '2020-12-17 19:39:57'),
	(52, 5, 15, '00:00:49', '25 Questions', 'hard', '2020-12-19 14:31:17', '2020-12-19 14:31:17'),
	(53, 5, 20, '00:00:26', '15 Questions', 'hard', '2020-12-19 14:43:32', '2020-12-19 14:43:32'),
	(54, 5, 12, '00:00:24', '25 Questions', 'hard', '2020-12-20 20:40:09', '2020-12-20 20:40:09'),
	(55, 5, 20, '00:00:21', '25 Questions', 'easy', '2020-12-20 20:40:41', '2020-12-20 20:40:41'),
	(56, 5, 40, '00:00:31', '15 Questions', 'easy', '2021-01-05 23:00:05', '2021-01-05 23:00:05'),
	(57, 5, 20, '00:00:25', '25 Questions', 'easy', '2021-01-07 16:48:36', '2021-01-07 16:48:36'),
	(58, 5, 15, '00:00:19', '25 Questions', 'easy', '2021-01-07 16:55:19', '2021-01-07 16:55:19'),
	(59, 5, 20, '00:00:15', '25 Questions', 'easy', '2021-01-07 16:56:07', '2021-01-07 16:56:07'),
	(60, 5, 22, '00:00:19', '25 Questions', 'easy', '2021-01-07 16:57:27', '2021-01-07 16:57:27'),
	(61, 5, 22, '00:00:25', '15 Questions', 'easy', '2021-01-07 16:58:36', '2021-01-07 16:58:36'),
	(69, 5, 0, '00:00:18', '15 Questions', 'easy', '2021-01-09 13:39:06', '2021-01-09 13:39:06'),
	(70, 5, 36, '00:00:19', '25 Questions', 'hard', '2021-01-09 13:41:18', '2021-01-09 13:41:18'),
	(71, 5, 35, '00:00:17', '15 Questions', 'easy', '2021-01-09 13:42:52', '2021-01-09 13:42:52'),
	(72, 5, 35, '00:00:23', '25 Questions', 'hard', '2021-01-11 19:42:05', '2021-01-11 19:42:05'),
	(73, 22, 72, '00:00:20', '15 Questions', 'hard', '2021-01-12 19:07:19', '2021-01-12 19:07:19'),
	(74, 22, 88, '00:00:30', '25 Questions', 'hard', '2021-01-12 19:08:13', '2021-01-12 19:08:13'),
	(75, 23, 82, '00:00:18', '15 Questions', 'hard', '2021-01-12 19:09:48', '2021-01-12 19:09:48'),
	(76, 23, 45, '00:00:26', '25 Questions', 'hard', '2021-01-12 19:10:34', '2021-01-12 19:10:34'),
	(200, 26, 20, '00:00:19', '15 Questions', 'easy', '2021-03-20 01:11:20', '2021-03-20 01:11:20'),
	(201, 26, 20, '00:00:19', '15 Questions', 'easy', '2021-03-20 01:11:50', '2021-03-20 01:11:50'),
	(202, 26, 29, '00:00:17', '15 Questions', 'easy', '2021-03-20 01:12:23', '2021-03-20 01:12:23'),
	(203, 26, 72, '00:00:35', '25 Questions', 'easy', '2021-03-20 01:13:14', '2021-03-20 01:13:14'),
	(204, 5, 5, '00:00:17', '15 Questions', 'easy', '2021-04-10 19:00:15', '2021-04-10 19:00:15'),
	(205, 5, 65, '00:00:31', '15 Questions', 'hard', '2021-04-11 18:35:27', '2021-04-11 18:35:27'),
	(206, 5, 69, '00:00:39', '15 Questions', 'hard', '2021-04-18 13:17:29', '2021-04-18 13:17:29'),
	(207, 5, 0, '00:00:17', '15 Questions', 'hard', '2021-04-25 15:46:17', '2021-04-25 15:46:17'),
	(208, 5, 0, '00:00:04', '15 Questions', 'easy', '2021-04-26 14:37:17', '2021-04-26 14:37:17');
/*!40000 ALTER TABLE `score_table` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.sql_questions
DROP TABLE IF EXISTS `sql_questions`;
CREATE TABLE IF NOT EXISTS `sql_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `a` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `b` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `c` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `d` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `correct_answer` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `score` int(11) NOT NULL,
  `difficulty` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.sql_questions: ~60 rows (approximately)
/*!40000 ALTER TABLE `sql_questions` DISABLE KEYS */;
REPLACE INTO `sql_questions` (`id`, `question`, `a`, `b`, `c`, `d`, `correct_answer`, `score`, `difficulty`) VALUES
	(2, 'Ποια δήλωση SQL χρησιμοποιείται για την εξαγωγή δεδομένων από μια βάση δεδομένων;', 'GET', 'EXTRACT', 'SELECT', 'UPDATE', 'c', 7, 'hard'),
	(3, 'Ποια δήλωση SQL χρησιμοποιείται για την ενημέρωση δεδομένων σε μια βάση δεδομένων; ', 'SAVE    ', 'UPDATE    ', 'SAVE AS', 'SELECT', 'b', 10, 'hard'),
	(4, 'Ποια δήλωση SQL χρησιμοποιείται για τη διαγραφή δεδομένων από μια βάση δεδομένων;', 'DELETE', 'COLAPSE', 'REMOVE', 'REMOVE', 'a', 5, 'easy'),
	(8, 'Ποια δήλωση SQL χρησιμοποιείται για την ενημέρωση δεδομένων σε μια βάση δεδομένων;', 'SAVE AS  ', 'SAVE', 'UPDATE', 'MODIFY', 'c', 5, 'easy'),
	(12, 'Ποια δήλωση SQL χρησιμοποιείται για την εξαγωγή δεδομένων από μια βάση δεδομένων;', 'GET', 'OPEN', 'SELECT    ', 'EXTRACT  ', 'c', 5, 'easy'),
	(13, 'Τι σημαίνει η SQL;', 'Structured Query Language  ', 'Structured Question Language', 'Strong Question Language', 'Strong Question Language', 'a', 5, 'easy'),
	(21, 'Ποια δήλωση SQL χρησιμοποιείται για την εισαγωγή νέων δεδομένων σε μια βάση δεδομένων;', 'INSERT INTO  ', 'ADD RECORD', 'ADD NEW', 'INSERT NEW', 'a', 5, 'easy'),
	(22, 'Με την SQL, πώς επιλέγετε μια στήλη με το όνομα "FirstName" από έναν πίνακα με το όνομα "Persons";', 'SELECT FirstName FROM Persons  ', 'SELECT Persons.FirstName', 'EXTRACT FirstName FROM Persons', 'SELECT *.Persons', 'a', 5, 'easy'),
	(23, 'Με την SQL, πώς επιλέγετε όλες τις εγγραφές από έναν πίνακα με το όνομα Persons όπου η τιμή της στήλης "FirstName" είναι "Peter";', 'SELECT [all] FROM Persons WHERE FirstName LIKE \'Peter\'  ', 'SELECT * FROM Persons WHERE FirstName=\'Peter\'  ', 'SELECT [all] FROM Persons WHERE FirstName=\'Peter\'', 'SELECT * FROM Persons WHERE FirstName<>\'Peter\'', 'b', 5, 'easy'),
	(24, 'Με την SQL, πώς επιλέγετε όλες τις εγγραφές από έναν πίνακα με το όνομα Persons όπου η τιμή της στήλης "FirstName" ξεκινά με "a";', 'SELECT * FROM Persons WHERE FirstName LIKE \'%a\'  ', 'SELECT * FROM Persons WHERE FirstName=\'%a%\'', 'SELECT * FROM Persons WHERE FirstName=\'a\'', 'SELECT * FROM Persons WHERE FirstName LIKE \'a%\'  ', 'd', 5, 'easy'),
	(26, 'Με την SQL, πώς επιλέγετε όλες τις εγγραφές από έναν πίνακα με το όνομα "Persons" όπου το "FirstName" είναι "Peter" και το "LastName" είναι "Jackson";', 'SELECT * FROM Persons WHERE FirstName=\'Peter\' AND LastName=\'Jackson\'  ', 'SELECT * FROM Persons WHERE FirstName<>\'Peter\' AND LastName<>\'Jackson\'', 'SELECT FirstName=\'Peter\', LastName=\'Jackson\' FROM Persons', 'SELECT * FROM Persons WHERE LastName>\'Hansen\' AND LastName<\'Pettersen\'  ', 'a', 5, 'easy'),
	(27, 'Με την SQL, πώς επιλέγετε όλες τις εγγραφές από έναν πίνακα με το όνομα "Persons" όπου το "LastName" βρίσκεται αλφαβητικά μεταξύ (και περιλαμβάνει) "Hansen" και "Pettersen";', 'SELECT * FROM Persons WHERE LastName>\'Hansen\' AND LastName<\'Pettersen\'  ', 'SELECT * FROM Persons WHERE LastName BETWEEN \'Hansen\' AND \'Pettersen\'  ', 'SELECT LastName>\'Hansen\' AND LastName<\'Pettersen\' FROM Persons', 'SELECT FirstName=\'Peter\', LastName=\'Jackson\' FROM Persons', 'b', 5, 'easy'),
	(28, 'Ποια δήλωση SQL χρησιμοποιείται για την επιστροφή μόνο διαφορετικών τιμών;', 'SELECT DIFFERENT  ', 'SELECT UNIQUE', 'SELECT DISTINCT  ', 'SELECT * FROM Persons WHERE LastName BETWEEN \'Hansen\' AND \'Pettersen\'  ', 'c', 5, 'easy'),
	(29, 'Ποια λέξη-κλειδί SQL χρησιμοποιείται για την ταξινόμηση του συνόλου αποτελεσμάτων;', 'SORT  ', 'ORDER BY  ', 'ORDER', 'SORT BY', 'b', 5, 'easy'),
	(30, 'Με την SQL, πώς μπορείτε να επιστρέψετε όλες τις εγγραφές από έναν πίνακα με το όνομα Persons ταξινομημένο κατά φθίνουσα κατά "FirstName";', 'SELECT * FROM Persons SORT \'FirstName\' DESC  ', 'SELECT * FROM Persons SORT BY \'FirstName\' DESC', 'SELECT * FROM Persons ORDER BY FirstName DESC  ', 'SELECT * FROM Persons ORDER FirstName DESC', 'c', 5, 'easy'),
	(31, 'Με την SQL, πώς μπορείτε να εισαγάγετε μια νέα εγγραφή στον πίνακα Persons;', 'INSERT VALUES (\'Jimmy\', \'Jackson\') INTO Persons', 'INSERT (\'Jimmy\', \'Jackson\') INTO Persons', 'INSERT INTO Persons VALUES (\'Jimmy\', \'Jackson\')  ', 'INSERT (\'Olsen\') INTO Persons (LastName)', 'c', 5, 'easy'),
	(32, 'Με την SQL, πώς μπορείτε να εισαγάγετε το "Olsen" ως "LastName" στον πίνακα "Persons";', 'INSERT INTO Persons (LastName) VALUES (\'Olsen\')  ', 'INSERT (\'Olsen\') INTO Persons (LastName)', 'INSERT INTO Persons (\'Olsen\') INTO LastName', 'INSERT (\'Jimmy\', \'Jackson\') INTO Persons', 'a', 5, 'easy'),
	(33, 'Πώς μπορείτε να αλλάξετε το "Hansen" σε "Nilsen" στη στήλη "LastName" στον πίνακα Persons;', 'MODIFY Persons SET LastName=\'Nilsen\' WHERE LastName=\'Hansen\'  ', 'UPDATE Persons SET LastName=\'Nilsen\' WHERE LastName=\'Hansen\'  ', 'MODIFY Persons SET LastName=\'Hansen\' INTO LastName=\'Nilsen', 'UPDATE Persons SET LastName=\'Hansen\' INTO LastName=\'Nilsen\'', 'b', 12, 'hard'),
	(34, 'Με την SQL, πώς μπορείτε να διαγράψετε τις εγγραφές όπου το "FirstName" είναι "Peter" στον πίνακα Persons;', 'DELETE ROW FirstName=\'Peter\' FROM Persons', 'DELETE FirstName=\'Peter\' FROM Persons', 'DELETE FROM Persons WHERE FirstName = \'Peter\'  ', '.', 'c', 11, 'hard'),
	(35, 'Με την SQL, πώς μπορείτε να επιστρέψετε τον αριθμό των εγγραφών στον πίνακα Persons;', 'SELECT NO(*) FROM Persons', 'SELECT COUNT(*) FROM Persons  ', 'SELECT LEN(*) FROM Persons', 'SELECT COLUMNS(*) FROM Persons', 'b', 20, 'hard'),
	(36, 'Ποιος είναι ο πιο κοινός τύπος συμμετοχής;', 'JOINED', 'INSIDE JOIN', 'INNER JOIN  ', 'JOINED TABLE', 'c', 11, 'hard'),
	(37, 'Ποιος χειριστής χρησιμοποιείται για την επιλογή τιμών εντός ενός εύρους;', 'WITHIN', 'BETWEEN    ', 'RANGE', 'JOINED', 'b', 11, 'hard'),
	(39, 'Ο περιορισμός NOT NULL επιβάλλει μια στήλη για να μην δέχεται τιμές NULL.', 'True', 'False', '.', '.', 'a', 11, 'hard'),
	(40, 'Ποιος χειριστής χρησιμοποιείται για την αναζήτηση ενός συγκεκριμένου μοτίβου σε μια στήλη;', 'FROM    ', 'GET', 'LIKE    ', 'RANGE', 'c', 11, 'hard'),
	(42, 'Πώς μπορείτε να προσθέσετε μια σειρά χρησιμοποιώντας SQL σε μια βάση δεδομένων με ποιο από τα παρακάτω;', 'ADD', 'CREATE', 'INSERT', 'MAKE', 'c', 5, 'easy'),
	(43, 'Η εντολή για την κατάργηση σειρών από τον πίνακα "CUSTOMER" είναι:', 'REMOVE FROM CUSTOMER ...', 'DROP FROM CUSTOMER ...', 'DELETE FROM CUSTOMER WHERE ...', 'UPDATE FROM CUSTOMER ...', 'c', 5, 'easy'),
	(44, 'Η ρήτρα SQL WHERE:', 'περιορίζει τα δεδομένα της στήλης που επιστρέφονται.', 'περιορίζει τα δεδομένα γραμμής που επιστρέφονται..', 'Α και Β σωστά', 'Ούτε το Α ούτε το Β σωστά', 'b', 10, 'hard'),
	(45, 'Ποιο από τα παρακάτω είναι ο αρχικός σκοπός του SQL;', 'Για να καθορίσετε τη σύνταξη και τη σημασιολογία της γλώσσας ορισμού δεδομένων SQL', 'Για να καθορίσετε τη σύνταξη και τη σημασιολογία της γλώσσας χειρισμού SQL', 'Για να ορίσετε τις δομές δεδομένων', 'Ολα τα παραπανω.', 'd', 10, 'hard'),
	(46, 'Η wildcard σε μια ρήτρα WHERE είναι χρήσιμη πότε;', 'Απαιτείται ακριβής αντιστοίχιση σε μια δήλωση SELECT.', 'Δεν είναι δυνατή η ακριβής αντιστοίχιση σε μια δήλωση SELECT.', 'Απαιτείται ακριβής αντιστοίχιση σε μια δήλωση CREATE.', 'Δεν είναι δυνατή η ακριβής αντιστοίχιση σε μια δήλωση CREATE.', 'b', 7, 'easy'),
	(47, 'Μια πρόταση από τις παρακάτω είναι σωστή.', 'Ένας εικονικός πίνακας στον οποίο μπορείτε να έχετε πρόσβαση μέσω εντολών SQL', 'Ένας εικονικός πίνακας στον οποίο δεν είναι δυνατή η πρόσβαση μέσω εντολών SQL', 'Ένας βασικός πίνακας στον οποίο μπορείτε να έχετε πρόσβαση μέσω εντολών SQL', 'Ένας βασικός πίνακας στον οποίο δεν είναι δυνατή η πρόσβαση μέσω εντολών SQL', 'a', 5, 'easy'),
	(48, 'Η εντολή για την εξάλειψη ενός πίνακα από μια βάση δεδομένων είναι:', 'REMOVE TABLE CUSTOMER;', 'DROP TABLE CUSTOMER;', 'DELETE TABLE CUSTOMER;', 'UPDATE TABLE CUSTOMER;', 'b', 5, 'easy'),
	(51, 'Ποιο από τα παρακάτω είναι έγκυρο SQL για ευρετήριο;', 'CREATE INDEX ID;', 'CHANGE INDEX ID;', 'ADD INDEX ID;', 'REMOVE INDEX ID;', 'a', 5, 'hard'),
	(52, 'Η λέξη-κλειδί SQL ________ χρησιμοποιείται με wildcards.', 'LIKE only', 'IN only', 'NOT IN only', 'IN and NOT IN', 'a', 5, 'hard'),
	(53, 'Ποιο από τα παρακάτω είναι η σωστή σειρά λέξεων-κλειδιών για δηλώσεις SQL SELECT;', 'SELECT, FROM, WHERE', 'FROM, WHERE, SELECT', 'WHERE, FROM,SELECT', 'SELECT,WHERE,FROM', 'a', 5, 'hard'),
	(54, 'Το αποτέλεσμα μιας δήλωσης SQL SELECT είναι ένας-μία ________.', 'αναφορά', 'φόρμα', 'αρχείο', 'πίνακας', 'd', 5, 'easy'),
	(55, 'Η λέξη-κλειδί SQL  BETWEEN  χρησιμοποιείται:', 'για διαστήματα', 'για να περιορίσετε τις εμφανιζόμενες στήλες.', 'ως wildcard.', 'Κανένα από τα παραπάνω δεν είναι σωστό.', 'a', 7, 'hard'),
	(56, 'Το ________ υιοθετήθηκε ως εθνικό πρότυπο από την ANSI το 1992.', 'Oracle', 'SQL', 'Microsoft Access', 'DBase', 'b', 5, 'easy'),
	(57, 'Ποιο από τα παρακάτω πρέπει να λάβετε υπόψη όταν δημιουργείτε έναν πίνακα σε SQL;', 'Data types', 'Primary keys', 'Default values', 'All of the above.', 'd', 7, 'hard'),
	(58, 'Ποια από τις παρακάτω σειρές ταξινομεί στο SQL;', 'SORT BY', 'ALIGN BY', 'ORDER BY', 'GROUP BY', 'c', 7, 'hard'),
	(59, 'Για να ορίσετε ποιες στήλες πρέπει να εμφανίζονται σε μια δήλωση SQL SELECT:', 'Χρησιμοποιήστε το FROM για να ονομάσετε τους πίνακες (ες) προέλευσης και να απαριθμήσετε τις στήλες που θα εμφανίζονται μετά την επιλογή.', 'χρησιμοποιήστε το USING για να ονομάσετε τους πίνακες (ες) προέλευσης και να αναφέρετε τις στήλες που θα εμφανίζονται μετά την επιλογή.', 'Χρησιμοποιήστε το SELECT για να ονομάσετε τους πίνακες προέλευσης και να αναφέρετε τις στήλες που θα εμφανίζονται μετά τη χρήση.', 'Χρησιμοποιήστε το USING για να ονομάσετε τους πίνακες (ες) προέλευσης και να αναφέρετε τις στήλες που θα εμφανίζονται μετά το WHERE.', 'a', 7, 'hard'),
	(60, 'Το SQL μπορεί να χρησιμοποιηθεί για:', 'δημιουργία μόνο δομές βάσεων δεδομένων.', 'μόνο δεδομένα βάσης δεδομένων ερωτήματος.', 'τροποποίηση δεδομένων βάσης δεδομένων μόνο.', 'Όλα τα παραπάνω μπορούν να γίνουν με SQL.', 'd', 9, 'hard'),
	(61, 'Ποιο από τα παρακάτω είναι μια νομική έκφραση στο SQL;', 'SELECT NULL FROM SALES;', 'SELECT NAME FROM SALES;', 'SELECT * FROM SALES WHEN PRICE = NULL;', 'SELECT # FROM SALES;', 'b', 10, 'hard'),
	(62, 'Το DCL παρέχει εντολές σε λειτουργίες όπως', 'Change thestructureof Tables', 'Insert, Update or Delete Records and Values', 'Authorizing Access and othercontrolover Database', 'None of Above', 'c', 5, 'easy'),
	(63, 'Η συνάρτηση COUNT στο SQL επιστρέφει τον αριθμό ______________', 'Values', 'Distinct values', 'Group By', 'Columns', 'a', 10, 'hard'),
	(64, 'Ποιος τύπος δεδομένων μπορεί να αποθηκεύσει μη δομημένα δεδομένα σε μια στήλη;', 'RAW', 'CHAR', 'NUMERIC', 'VARCHAR', 'a', 15, 'hard'),
	(65, 'Ποια συνάρτηση χρησιμοποιείται για να διαιρέσει μια αριθμητική έκφραση από την άλλη και να πάρει το υπόλοιπο;', 'POWER', 'MOD', 'ROUND', 'REMAINDER', 'b', 9, 'hard'),
	(66, 'Ποια είναι η πλήρης μορφή του DDL;', 'Dynamic Data Language', 'Detailed Data Language', 'Data Definition Language', 'Data Derivation Language', 'c', 8, 'hard'),
	(67, 'Μια γλώσσα βάσης δεδομένων που χρησιμοποιείται για τον ορισμό ολόκληρης της βάσης δεδομένων και του σχήματος ονομάζεται:', 'DCL', 'DML', 'DDL', 'All Of Above', 'c', 6, 'easy'),
	(68, 'Ποια δήλωση στο SQL μας επιτρέπει να αλλάξουμε τον ορισμό ενός πίνακα;', 'ALTER', 'UPDATE', 'CREATE', 'SELECT', 'a', 8, 'hard'),
	(69, 'Το SQL που χρησιμοποιείται από προγράμματα εφαρμογών front-end για να ζητήσει δεδομένα από το DBMS ονομάζεται _______', 'DML', 'DDL', 'VDL', 'SDL', 'a', 10, 'easy'),
	(70, 'Η εντολή που χρησιμοποιείται για τη διαγραφή μιας συγκεκριμένης στήλης σε μια σχέση είναι ____________', 'UPDATE TABLE', 'TRUNCATE COLUMN', 'ALTER , DROP', 'DELETE COLUMN', 'c', 7, 'hard'),
	(71, 'Ποια από τις παρακάτω ενέργειες απαιτεί οι σχέσεις να είναι συμβατές με την ένωση;', 'UNION', 'INTERSECTION', 'DIFFERENCE', 'ALL OF THESE', 'd', 7, 'easy'),
	(72, 'Ποιο από τα παρακάτω είναι χειριστής σύγκρισης στο SQL;', 'Double equal sign ( == )', 'LIKE', 'BETWEEN', 'Single equal sign ( = )', 'a', 12, 'easy'),
	(73, 'Ποιος χειριστής χρησιμοποιείται για να συγκρίνει μια τιμή με μια καθορισμένη λίστα τιμών;', 'BETWEEN', 'ANY', 'IN', 'ALL', 'c', 9, 'easy');
/*!40000 ALTER TABLE `sql_questions` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.sql_random_queries
DROP TABLE IF EXISTS `sql_random_queries`;
CREATE TABLE IF NOT EXISTS `sql_random_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sql_query` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hideWord` varchar(200) COLLATE utf8_bin NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `table_id_idx` (`table_id`),
  CONSTRAINT `table_id` FOREIGN KEY (`table_id`) REFERENCES `excersice_tables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1219 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.sql_random_queries: ~90 rows (approximately)
/*!40000 ALTER TABLE `sql_random_queries` DISABLE KEYS */;
REPLACE INTO `sql_random_queries` (`id`, `sql_query`, `hideWord`, `table_id`) VALUES
	(789, 'SELECT * FROM reporters', '*,reporters', 177),
	(790, 'SELECT idreporter, name FROM reporters', 'idreporter,name', 177),
	(791, 'SELECT DISTINCT surname FROM reporters', 'DISTINCT', 177),
	(792, 'SELECT COUNT(birthdate) FROM reporters', 'COUNT,FROM', 177),
	(793, 'SELECT COUNT(DISTINCT surname) FROM reporters', 'DISTINCT', 177),
	(794, 'SELECT * FROM reporters WHERE idreporter=7', 'WHERE,idreporter', 177),
	(795, 'SELECT * FROM reporters WHERE idreporter IN ("1","4")', 'IN', 177),
	(796, 'SELECT * FROM reporters WHERE idreporter BETWEEN 2 AND 7', 'BETWEEN,AND', 177),
	(797, 'SELECT * FROM reporters ORDER BY birthdate', 'ORDER BY', 177),
	(798, 'SELECT * FROM reporters ORDER BY surname DESC', 'ORDER BY,DESC', 177),
	(799, 'SELECT * FROM reporters ORDER BY surname ASC, birthdate DESC', 'ORDER BY,ASC,DESC', 177),
	(800, 'SELECT * FROM reporters LIMIT 3', 'LIMIT', 177),
	(801, 'SELECT MIN(idreporter) FROM reporters', 'MIN', 177),
	(802, 'SELECT MAX(idreporter) FROM reporters', 'MAX', 177),
	(803, 'SELECT COUNT(name), surname FROM reporters GROUP BY surname', 'COUNT,GROUP BY', 177),
	(804, 'SELECT COUNT(address), idreporter FROM reporters GROUP BY idreporter ORDER BY COUNT(address) DESC', 'ORDER BY,DESC', 177),
	(805, 'SELECT COUNT(surname) FROM reporters GROUP BY birthdate HAVING COUNT(surname) >3', 'GROUP BY,HAVING COUNT', 177),
	(806, 'SELECT SUM(idreporter) FROM reporters', 'SUM', 177),
	(807, 'SELECT AVG(idreporter) FROM reporters', 'AVG', 177),
	(808, 'SELECT * FROM reporters WHERE birthdate IS NULL', 'IS NULL', 177),
	(809, 'SELECT reporters.idreporter, reporters.name, magazines.title, magazines.views FROM reporters, magazines WHERE reporters.idreporter=magazines.reporterId', 'reporters,idreporter,=', 178),
	(810, 'SELECT reporters.idreporter, reporters.name, magazines.title FROM reporters INNER JOIN magazines ON reporters.idreporter=magazines.reporterId', 'INNER,JOIN', 178),
	(811, 'SELECT reporters.name, magazines.reporterId FROM reporters LEFT JOIN magazines ON reporters.idreporter=magazines.reporterId ORDER BY reporters.name', 'LEFT,ORDER BY', 178),
	(812, 'SELECT reporters.idreporter, magazines.title, magazines.views FROM reporters RIGHT JOIN magazines ON reporters.idreporter=magazines.reporterId ORDER BY reporters.idreporter DESC', 'RIGHT,DESC', 178),
	(813, 'SELECT reporters.idreporter, reporters.name, magazines.title FROM reporters INNER JOIN magazines ON reporters.idreporter=magazines.reporterId WHERE reporters.idreporter>3', 'WHERE,>', 178),
	(814, 'SELECT * FROM magazines CROSS JOIN reporters', 'CROSS', 178),
	(815, 'SELECT address FROM reporters UNION SELECT releasedDate FROM magazines', 'UNION', 178),
	(816, 'SELECT birthdate FROM reporters WHERE idreporter = ANY ( SELECT reporterId FROM magazines WHERE reporterId>3 )', 'ANY', 178),
	(817, 'SELECT address FROM reporters WHERE idreporter = ALL ( SELECT reporterId FROM magazines WHERE reporterId=3 )', 'ALL', 178),
	(818, 'SELECT surname FROM reporters WHERE idreporter IN ( SELECT reporterId FROM magazines WHERE reporterId>2 )', 'IN', 178),
	(929, 'SELECT * FROM games', '*,games', 187),
	(930, 'SELECT idgame, title FROM games', 'idgame,title', 187),
	(931, 'SELECT DISTINCT hoursPlayed FROM games', 'DISTINCT', 187),
	(932, 'SELECT COUNT(multiplayer) FROM games', 'COUNT,FROM', 187),
	(933, 'SELECT COUNT(DISTINCT hoursPlayed) FROM games', 'DISTINCT', 187),
	(934, 'SELECT * FROM games WHERE idgame=7', 'WHERE,idgame', 187),
	(935, 'SELECT * FROM games WHERE idgame IN ("1","4")', 'IN', 187),
	(936, 'SELECT * FROM games WHERE idgame BETWEEN 2 AND 7', 'BETWEEN,AND', 187),
	(937, 'SELECT * FROM games ORDER BY multiplayer', 'ORDER BY', 187),
	(938, 'SELECT * FROM games ORDER BY hoursPlayed DESC', 'ORDER BY,DESC', 187),
	(939, 'SELECT * FROM games ORDER BY hoursPlayed ASC, multiplayer DESC', 'ORDER BY,ASC,DESC', 187),
	(940, 'SELECT * FROM games LIMIT 3', 'LIMIT', 187),
	(941, 'SELECT MIN(idgame) FROM games', 'MIN', 187),
	(942, 'SELECT MAX(idgame) FROM games', 'MAX', 187),
	(943, 'SELECT COUNT(hoursPlayed), multiplayer FROM games GROUP BY multiplayer', 'COUNT,GROUP BY', 187),
	(944, 'SELECT COUNT(idgame), title FROM games GROUP BY title ORDER BY COUNT(idgame) DESC', 'ORDER BY,DESC', 187),
	(945, 'SELECT COUNT(hoursPlayed) FROM games GROUP BY multiplayer HAVING COUNT(hoursPlayed) >3', 'GROUP BY,HAVING COUNT', 187),
	(946, 'SELECT SUM(idgame) FROM games', 'SUM', 187),
	(947, 'SELECT AVG(idgame) FROM games', 'AVG', 187),
	(948, 'SELECT * FROM games WHERE multiplayer IS NULL', 'IS NULL', 187),
	(949, 'SELECT games.idgame, games.title, gamers.name, gamers.surname FROM games, gamers WHERE games.idgame=gamers.gameId', 'games,idgame,=', 188),
	(950, 'SELECT games.idgame, games.title, gamers.name FROM games INNER JOIN gamers ON games.idgame=gamers.gameId', 'INNER,JOIN', 188),
	(951, 'SELECT games.title, gamers.gameId FROM games LEFT JOIN gamers ON games.idgame=gamers.gameId ORDER BY games.title', 'LEFT,ORDER BY', 188),
	(952, 'SELECT games.idgame, gamers.name, gamers.surname FROM games RIGHT JOIN gamers ON games.idgame=gamers.gameId ORDER BY games.idgame DESC', 'RIGHT,DESC', 188),
	(953, 'SELECT games.idgame, games.title, gamers.name FROM games INNER JOIN gamers ON games.idgame=gamers.gameId WHERE games.idgame>3', 'WHERE,>', 188),
	(954, 'SELECT * FROM gamers CROSS JOIN games', 'CROSS', 188),
	(955, 'SELECT idgame FROM games UNION SELECT gameId FROM gamers', 'UNION', 188),
	(956, 'SELECT multiplayer FROM games WHERE idgame = ANY ( SELECT gameId FROM gamers WHERE gameId>3 )', 'ANY', 188),
	(957, 'SELECT idgame FROM games WHERE idgame = ALL ( SELECT gameId FROM gamers WHERE gameId=3 )', 'ALL', 188),
	(958, 'SELECT hoursPlayed FROM games WHERE idgame IN ( SELECT gameId FROM gamers WHERE gameId>2 )', 'IN', 188),
	(1179, 'SELECT * FROM actors', '*,actors', 201),
	(1180, 'SELECT idactor, name FROM actors', 'idactor,name', 201),
	(1181, 'SELECT DISTINCT surname FROM actors', 'DISTINCT', 201),
	(1182, 'SELECT COUNT(address) FROM actors', 'COUNT,FROM', 201),
	(1183, 'SELECT COUNT(DISTINCT surname) FROM actors', 'DISTINCT', 201),
	(1184, 'SELECT * FROM actors WHERE idactor=7', 'WHERE,idactor', 201),
	(1185, 'SELECT * FROM actors WHERE idactor IN ("1","4")', 'IN', 201),
	(1186, 'SELECT * FROM actors WHERE idactor BETWEEN 2 AND 7', 'BETWEEN,AND', 201),
	(1187, 'SELECT * FROM actors ORDER BY address', 'ORDER BY', 201),
	(1188, 'SELECT * FROM actors ORDER BY surname DESC', 'ORDER BY,DESC', 201),
	(1189, 'SELECT * FROM actors ORDER BY surname ASC, address DESC', 'ORDER BY,ASC,DESC', 201),
	(1190, 'SELECT * FROM actors LIMIT 3', 'LIMIT', 201),
	(1191, 'SELECT MIN(idactor) FROM actors', 'MIN', 201),
	(1192, 'SELECT MAX(idactor) FROM actors', 'MAX', 201),
	(1193, 'SELECT COUNT(surname), address FROM actors GROUP BY address', 'COUNT,GROUP BY', 201),
	(1194, 'SELECT COUNT(idactor), name FROM actors GROUP BY name ORDER BY COUNT(idactor) DESC', 'ORDER BY,DESC', 201),
	(1195, 'SELECT COUNT(surname) FROM actors GROUP BY address HAVING COUNT(surname) >3', 'GROUP BY,HAVING COUNT', 201),
	(1196, 'SELECT SUM(idactor) FROM actors', 'SUM', 201),
	(1197, 'SELECT AVG(idactor) FROM actors', 'AVG', 201),
	(1198, 'SELECT * FROM actors WHERE address IS NULL', 'IS NULL', 201),
	(1209, 'SELECT actors.idactor, actors.name, movies.title, movies.released FROM actors, movies WHERE actors.idactor=movies.actorid', 'actors,idactor,=', 203),
	(1210, 'SELECT actors.idactor, actors.name, movies.title FROM actors INNER JOIN movies ON actors.idactor=movies.actorid', 'INNER,JOIN', 203),
	(1211, 'SELECT actors.name, movies.actorid FROM actors LEFT JOIN movies ON actors.idactor=movies.actorid ORDER BY actors.name', 'LEFT,ORDER BY', 203),
	(1212, 'SELECT actors.idactor, movies.title, movies.released FROM actors RIGHT JOIN movies ON actors.idactor=movies.actorid ORDER BY actors.idactor DESC', 'RIGHT,DESC', 203),
	(1213, 'SELECT actors.idactor, actors.name, movies.title FROM actors INNER JOIN movies ON actors.idactor=movies.actorid WHERE actors.idactor>3', 'WHERE,>', 203),
	(1214, 'SELECT * FROM movies CROSS JOIN actors', 'CROSS', 203),
	(1215, 'SELECT idactor FROM actors UNION SELECT actorid FROM movies', 'UNION', 203),
	(1216, 'SELECT address FROM actors WHERE idactor = ANY ( SELECT actorid FROM movies WHERE actorid>3 )', 'ANY', 203),
	(1217, 'SELECT idactor FROM actors WHERE idactor = ALL ( SELECT actorid FROM movies WHERE actorid=3 )', 'ALL', 203),
	(1218, 'SELECT surname FROM actors WHERE idactor IN ( SELECT actorid FROM movies WHERE actorid>2 )', 'IN', 203);
/*!40000 ALTER TABLE `sql_random_queries` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.sql_random_queries_true_or_false
DROP TABLE IF EXISTS `sql_random_queries_true_or_false`;
CREATE TABLE IF NOT EXISTS `sql_random_queries_true_or_false` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sql_query_true_or_false` varchar(200) COLLATE utf8_bin NOT NULL,
  `exersice_table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exersice_table_id_idx` (`exersice_table_id`),
  CONSTRAINT `exersice_table_id` FOREIGN KEY (`exersice_table_id`) REFERENCES `excersice_tables` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.sql_random_queries_true_or_false: ~0 rows (approximately)
/*!40000 ALTER TABLE `sql_random_queries_true_or_false` DISABLE KEYS */;
REPLACE INTO `sql_random_queries_true_or_false` (`id`, `sql_query_true_or_false`, `exersice_table_id`) VALUES
	(4, 'fdsdsgdfgsdfg', 188),
	(5, 'select * from gamers', 188),
	(9, 'SELECT * FROM games where idgame =1', 187),
	(10, 'SELECT * FROM games where idgame =2', 187),
	(11, 'SELECT * FROM games where idgame =3', 187),
	(13, 'Select * from games', 187),
	(60, 'SELECT * FROM actors', 201),
	(61, 'SELECT * FROM actors WHERE idactor>1', 201),
	(62, 'SELECT DISTINCT address FROM actors', 201),
	(63, 'SELECT address FROM actors WHERE idactor=2', 201),
	(64, 'SELECT MIN(idactor) FROM actors', 201),
	(65, 'SELECT COUNT(name) FROM actors', 201),
	(66, 'SELECT COUNT(name) FROM actors WHERE idactor BETWEEN 1 AND 5', 201),
	(67, 'SELECT name, surname FROM actors WHERE idactor=6 OR idactor=3', 201),
	(68, 'SELECT * FROM actors ORDER BY idactor ASC', 201),
	(69, 'SELECT * FROM actors ORDER BY idactor DESC', 201),
	(70, 'SELECT * FROM actors ORDER BY address ASC, name DESC', 201),
	(71, 'SELECT * FROM actors GROUP BY surname', 201),
	(72, 'SELECT AVG(idactor) FROM actors WHERE idactor>2', 201),
	(73, 'SELECT SUM(idactor) FROM actors WHERE idactor>2', 201),
	(74, 'SELECT address, idactor FROM actors WHERE NOT idactor>2', 201),
	(75, 'SELECT COUNT(DISTINCT address)  FROM actors', 201),
	(76, 'SELECT address FROM actors WHERE surname LIKE \'a%\'', 201),
	(77, 'SELECT MAX(idactor)  FROM actors WHERE idactor<3', 201),
	(78, 'SELECT surname AS test FROM actors', 201),
	(79, 'SELECT * FROM actors WHERE surname LIKE \'%a%\'', 201),
	(90, 'SELECT actors.name, movies.title, movies.released FROM actors INNER JOIN movies ON actors.idactor=movies.actorid ORDER BY actors.idactor DESC', 203),
	(91, 'SELECT actors.name, movies.title, movies.released FROM actors INNER JOIN movies ON actors.idactor=movies.actorid ORDER BY actors.idactor ASC, actors.address DESC', 203),
	(92, 'SELECT actors.name, movies.title, movies.released FROM actors RIGHT JOIN movies ON actors.idactor=movies.actorid WHERE actors.idactor>3', 203),
	(93, 'SELECT actors.name, movies.title, movies.released FROM actors RIGHT JOIN movies ON actors.idactor=movies.actorid WHERE actors.idactor<5', 203),
	(94, 'SELECT actors.name, movies.title, movies.released FROM actors LEFT JOIN movies ON actors.idactor=movies.actorid WHERE movies.title LIKE \'%3%\'', 203),
	(95, 'SELECT * FROM movies CROSS JOIN actors WHERE movies.actorid>1 AND movies.actorid<7', 203),
	(96, 'SELECT actors.name, movies.title, movies.released FROM actors LEFT JOIN movies ON actors.idactor=movies.actorid', 203),
	(97, 'SELECT name FROM actors WHERE idactor IN ( SELECT actorid FROM movies WHERE actorid<4 )', 203),
	(98, 'SELECT surname, address FROM actors UNION SELECT released, actorid FROM movies', 203),
	(99, 'SELECT actors.surname, actors.address FROM actors RIGHT JOIN movies ON actors.idactor=movies.actorid WHERE NOT movies.actorid=5', 203);
/*!40000 ALTER TABLE `sql_random_queries_true_or_false` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.success_rate
DROP TABLE IF EXISTS `success_rate`;
CREATE TABLE IF NOT EXISTS `success_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_student` int(11) NOT NULL,
  `rate` varchar(100) COLLATE utf8_bin NOT NULL,
  `time` varchar(100) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type_excersice` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_student_idx` (`id_student`),
  CONSTRAINT `id_student` FOREIGN KEY (`id_student`) REFERENCES `user_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.success_rate: ~8 rows (approximately)
/*!40000 ALTER TABLE `success_rate` DISABLE KEYS */;
REPLACE INTO `success_rate` (`id`, `id_student`, `rate`, `time`, `table_name`, `created_at`, `updated_at`, `type_excersice`) VALUES
	(52, 5, 'Σωστές 0 στις 10', '00:00:16', 'books', '2021-04-26 15:39:58', '2021-04-26 15:39:58', 'Συμπλήρωσης-Κενού'),
	(53, 5, 'Σωστές 12 στις 20', '00:03:32', 'games', '2021-04-26 16:00:47', '2021-04-26 16:00:47', 'Σωστό-λάθος'),
	(54, 5, 'Σωστές 12 στις 20', '00:03:45', 'games', '2021-04-26 16:29:17', '2021-04-26 16:29:17', 'Σωστό-λάθος'),
	(55, 5, 'Σωστές 9 στις 20', '00:01:43', 'reporters', '2021-04-26 16:50:58', '2021-04-26 16:50:58', 'Σωστό-λάθος'),
	(56, 5, 'Σωστές 11 στις 20', '00:00:37', 'reporters', '2021-04-26 16:51:40', '2021-04-26 16:51:40', 'Σωστό-λάθος'),
	(57, 5, 'Σωστές 3 στις 10', '00:00:21', 'books', '2021-04-26 16:52:10', '2021-04-26 16:52:10', 'Σωστό-λάθος'),
	(58, 5, 'Σωστές 7 στις 10', '00:01:29', 'books', '2021-04-26 17:47:33', '2021-04-26 17:47:33', 'Συμπλήρωση-κενού'),
	(59, 5, 'Σωστές 17 στις 20', '00:01:11', 'writers', '2021-04-26 18:19:43', '2021-04-26 18:19:43', 'Σωστό-λάθος'),
	(60, 5, 'Σωστές 7 στις 10', '00:02:28', 'books', '2021-04-26 21:46:06', '2021-04-26 21:46:06', 'Σωστό-λάθος'),
	(61, 5, 'Σωστές 2 στις 3', '00:00:17', 'games', '2021-04-27 14:32:36', '2021-04-27 14:32:36', 'Σωστό-λάθος'),
	(62, 5, 'Σωστές 2 στις 4', '00:00:17', 'games', '2021-04-27 14:35:32', '2021-04-27 14:35:32', 'Σωστό-λάθος'),
	(63, 5, 'Σωστές 17 στις 20', '00:01:37', 'actors', '2021-04-27 17:32:57', '2021-04-27 17:32:57', 'Σωστό-λάθος'),
	(64, 5, 'Σωστές 9 στις 10', '00:00:49', 'movies', '2021-04-27 17:34:01', '2021-04-27 17:34:01', 'Σωστό-λάθος');
/*!40000 ALTER TABLE `success_rate` ENABLE KEYS */;

-- Dumping structure for table diplwmatiki.user_table
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE IF NOT EXISTS `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `verification_code` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table diplwmatiki.user_table: ~7 rows (approximately)
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
REPLACE INTO `user_table` (`id`, `first_name`, `last_name`, `sex`, `phone`, `email`, `username`, `password`, `role`, `verification_code`) VALUES
	(3, 'Dimitris', 'Motsios', 'male', '6395612353', 'www.motsios@hotmail.com', 'motsios', '$2a$10$hDreuBZ.eGPy64dTEBMxJeGumGf1FH7zXWehBZCeWOg5/cjJHcxr6', 'teacher', 'dd1c78bf-cd51-4a68-b5db-9877f36eae4c'),
	(4, 'giorgos', 'pappas', 'male', '6935146987', 'giorgos@gmail.com', 'giorgos', '$2a$10$1X8vht1REou23F.xMl51reymvMVky653wd7ElT5q/JEHGRpuZOFxy', 'teacher', NULL),
	(5, 'kostas', 'kakkos', 'male', '6935123697', 'kostas@gmail.com', 'kostas', '$2a$10$mezTsIwg.Md7Guklprtk6uLrxmIQy4iUfsu5LxD15DutxhIM9yldq', 'student', '4c2b079d-42bf-4d14-b541-cfd688f22f5c'),
	(16, 'dionisis', 'papakwstas', 'male', '6936547892', 'dionisis@gmail.com', 'dioni', '$2a$10$AJQJhxAZVVTDbJwU75qGm.BW9LDld1qvaGy/n7dkU9Jw2j9jDSMbq', 'student', NULL),
	(22, 'aleksis', 'koumasis', 'male', '6932156941', 'aleksis@gmail.com', 'aleksis', '$2a$10$4kT52oOxyPwuXXU6LCSMY.OkC8uZOKrZXX2NXIdb7/6/N5GQuO9u.', 'student', NULL),
	(23, 'georgia', 'kali', 'female', '6932569515', 'georgia@gmail.com', 'georgia', '$2a$10$jGKcviqvwK3RqFy/kmUvfe3ofLmHU2HiYQw1G0uWjh.8ItYqZB7G.', 'student', NULL),
	(24, 'Iliana', 'papanikou', 'female', '6945611212', 'iliana@gmail.com', 'iliana', '$2a$10$kaBhe10ytWP.RhUxuYwgbe3x1cSG6/R0TUe.MsoMZf77BPAHwJyyi', 'student', NULL),
	(26, 'George', 'Andreou', 'male', '6354567891', 'giorgos@yahoo.gr', 'giorgos93', '$2a$10$m9YdINIylv4V6Rs0NSim3uJJhgGlPb89rRfbMd9SsRXFZU9T14xKa', 'student', NULL),
	(27, 'Γιώργος', 'Κοτσάμπασης', 'male', '6956212345', 'giorgos@hotmail.com', 'giorgakis', '$2a$10$6UjAGNlAT0l7yyFvMUe5m.cNFjkuiyOySqOX3BYHlR2f8oeGWGiju', 'teacher', NULL),
	(28, 'Ηλιάνα', 'Παππά', 'female', '6354123456', 'iliana94@gmail.com', 'iliana94', '$2a$10$/Bwak6vP6USgEEpWeOMO6OIkcYnL5Za1omurjzU7c.Gmj6/87QPAO', 'student', NULL);
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
