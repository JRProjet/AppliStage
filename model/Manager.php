<?php
abstract class Manager
{
	protected function dbConnect()
	{
		try{
		// le fichier de configuration pour les accès à la bdd doit être inclus dans la fonction 
		// sans quoi la variable $configDatabase ne sera pas accessible dans cette dernière 
		// en raison de sa portée (voir cours vidéo sur la portée des variables)
<<<<<<< HEAD
		require_once 'C:/wamp64\www/AppliStage/config/database.php';
		$dsn = "mysql:host=".$configDatabaseDev['host'].";port=".$configDatabaseDev['port'].";dbname=".$configDatabaseDev['dbname'].";charset=".$configDatabaseDev['charset'];
=======
		require_once $_SERVER["DOCUMENT_ROOT"] . '/config/database.php';
		$dsn = "mysql:host=" . $configDatabaseDev['host'] . ";port=" . $configDatabaseDev['port'] . ";dbname=" . $configDatabaseDev['dbname'] . ";charset=" . $configDatabaseDev['charset'];
>>>>>>> e1cdd88623c6db5e450e3c698e0b05ae8491948b
		$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
		$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
		// Activation des erreurs PDO
		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
<<<<<<< HEAD
        return $db;
    }
}
=======
		}
		catch(Exception $err){
			print_r($err);
		}
		return $db;
	}
}
>>>>>>> e1cdd88623c6db5e450e3c698e0b05ae8491948b
