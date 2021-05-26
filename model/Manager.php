<?php
abstract class Manager{
    protected function dbConnect()
    {
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		require_once '../config/database.php';
		$dsn = "mysql:host=".$configDatabaseDev['host'].";port=".$configDatabaseDev['port'].";dbname=".$configDatabaseDev['dbname'].";charset=".$configDatabaseDev['charset'];
		$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
        return $db;
    }
}
//configDatabaseDev