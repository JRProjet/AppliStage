<?php
abstract class Manager{
    protected function dbConnect()
    {
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		require_once $_SERVER['DOCUMENT_ROOT'] . '/config/database.php';
		// $hote = $configDatabaseDev['host'];
		// $nombdd = $configDatabaseDev['dbname'];
		// $utilisateur = $configDatabaseDev['user'];
		// $mdp = $configDatabaseDev['pwd'];
		try{
			$dsn = "mysql:host=".$configDatabaseDev['host'].";port=".$configDatabaseDev['port'].";dbname=".$configDatabaseDev['dbname'].";charset=".$configDatabase['charset'];
			//$db = new PDO ("mysql:host=$hote;dbname=$nombdd;charset=utf8", $utilisateur, $mdp);
		 	$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
		 	return $db;
		} catch(PDOEXCEPTION $err){
			die("BDAcc erreur de connexion à la base de données.<br>Erreur :" . $err->getMessage());
		}
        
    }
}