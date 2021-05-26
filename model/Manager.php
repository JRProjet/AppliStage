<?php
abstract class Manager
{
	protected function dbConnect()
	{	
		//configDatabaseDev
		require_once $_SERVER["DOCUMENT_ROOT"] . '/config/database.php';
		$dsn = "mysql:host=" . $configDatabaseDev['host'] . ";port=" . $configDatabaseDev['port'] . ";dbname=" . $configDatabaseDev['dbname'] . ";charset=" . $configDatabaseDev['charset'];
		$db = new PDO($dsn, $configDatabaseDev['user'], $configDatabaseDev['pwd']);
		$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
		// Activation des erreurs PDO
		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		}
		catch(Exception $err){
			print_r($err);
		}
		return $db;
	}
}
