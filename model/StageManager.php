<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class StageManager extends Manager{
    //fonction sur la table stage uniquement (select, insert...)
    public function getStage(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM stage WHERE ...");
    }
    public function getLesStagesConvSigneRetourne(){
        $db = $this->dbConnect();
        return $db->query("SELECT * FROM stage join etat on etat.id = stage.id_etat WHERE etat.libelle = 'Renvoyée' ");
    }
}