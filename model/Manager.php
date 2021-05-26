<?php
abstract class Manager
{
	protected function dbConnect()
	{
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		require_once $_SERVER['DOCUMENT_ROOT'] . '../config/database.php';
		try {
			$dsn = "mysql:host=" . $configDatabaseDev['host'] . ";port=" . $configDatabaseDev['port'] . ";dbname=" . $configDatabaseDev['dbname'] . ";charset=" . $configDatabase['charset'];
			$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
			$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
			// Activation des erreurs PDO
			$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $db;
		} catch (PDOEXCEPTION $err) {
			die("BDAcc erreur de connexion à la base de données.<br>Erreur :" . $err->getMessage());
		}
	}
}
