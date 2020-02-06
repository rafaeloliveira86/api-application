-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.1.38-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para api_application
CREATE DATABASE IF NOT EXISTS `api_application` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `api_application`;

-- Copiando estrutura para tabela api_application.api_keys
DROP TABLE IF EXISTS `api_keys`;
CREATE TABLE IF NOT EXISTS `api_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela api_application.api_keys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` (`id`, `api_key`, `controller`, `date_created`, `date_modified`) VALUES
	(1, '1234567', 'user_api', '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;

-- Copiando estrutura para tabela api_application.api_limit
DROP TABLE IF EXISTS `api_limit`;
CREATE TABLE IF NOT EXISTS `api_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `uri` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `method` varchar(200) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `time` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela api_application.api_limit: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `api_limit` DISABLE KEYS */;
INSERT INTO `api_limit` (`id`, `user_id`, `uri`, `class`, `method`, `ip_address`, `time`) VALUES
	(1, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004399'),
	(2, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004444'),
	(3, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004445'),
	(4, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004447'),
	(5, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004448'),
	(6, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004495'),
	(7, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004496'),
	(8, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004498'),
	(9, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004499'),
	(10, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004501'),
	(11, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004609'),
	(12, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004611'),
	(13, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004714'),
	(14, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004715'),
	(15, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004716'),
	(16, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004717'),
	(17, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004718'),
	(18, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004719'),
	(19, NULL, 'api/v1/limit', 'user_api', 'api_limit', '::1', '1581004720');
/*!40000 ALTER TABLE `api_limit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
