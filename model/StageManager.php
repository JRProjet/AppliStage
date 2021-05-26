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
        return $db->query("SELECT utilisateur.nom AS nom, utilisateur.prenom AS prenom FROM stage 
        JOIN etat on etat.id = stage.id_etat 
        JOIN utilisateur ON utilisateur.id = stage.id_etudiant
        WHERE etat.libelle = 'Renvoyée' ");
    }

}