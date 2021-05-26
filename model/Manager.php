<?php
abstract class Manager{
    protected function dbConnect()
    {
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
		require_once $_SERVER['DOCUMENT_ROOT'].'../config/database.php';
		$dsn = "mysql:host=".$configDatabaseDev['host'].";port=".$configDatabaseDev['port'].";dbname=".$configDatabaseDev['dbname'].";charset=".$configDatabase['charset'];
		$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
        return $db;
		 // création d’un objet qui sera utilisé pour travailler avec la base de données 
		 $db=new PDO("mysql:host=$hote;dbname=$nombdd;charset=utf8", $utilisateur, $mdp);
 
		 // mode de fetch  =   FETCH_OBJ (on récupère les données dans des objets)
		 $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
    }
}