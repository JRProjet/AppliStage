<?php
abstract class Manager{
    protected function dbConnect()
    {
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		
		$_SERVER['DOCUMENT_ROOT']. '/config/database.php';
		$configDatabase = [
			'dbname'  => 'stsjr1615583_2d6rmi',
			'user'    => 'stsjr1615583',
			'pwd'     => '7r7pq3fn5y',
			'host'    => '91.216.107.183',
			'port'    => '3307',
			'charset' => 'UTF8',
		];
		
		$configDatabaseDev = [
			'dbname'  => 'stsjr1615583_2d6rmi',
			'user'    => 'stsjr1615583',
			'pwd'     => '7r7pq3fn5y',
			'host'    => 'localhost',
			'port'    => '3306',
			'charset' => 'UTF8',
		];
		var_dump($configDatabaseDev);
		
		$dsn = "mysql:host=".$configDatabaseDev['host'].";port=".$configDatabaseDev['port'].";dbname=".$configDatabaseDev['dbname'].";charset=".$configDatabaseDev['charset'];
		$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
        return $db;
    }
}