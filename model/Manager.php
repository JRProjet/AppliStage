<?php
abstract class Manager{
    protected function dbConnect()
    {
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		require_once '../config/database.php';
		$dsn = "mysql:host=".$configDatabase['host'].";port=".$configDatabase['port'].";dbname=".$configDatabase['dbname'].";charset=".$configDatabase['charset'];
		$db = new PDO($dsn, $configDatabase['user'], $configDatabase['pwd']);
        return $db;
    }
}