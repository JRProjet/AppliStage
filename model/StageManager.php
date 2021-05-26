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
        return $db->query("SELECT utilisateur.nom AS nom, utilisateur.prenom AS prenom, section.libelle AS nomSection, entreprise.nom AS nomEntreprise FROM stage 
        JOIN etat on etat.id = stage.id_etat 
        JOIN utilisateur ON utilisateur.id = stage.id_etudiant
        JOIN section ON id_section = section.id
        JOIN entreprise ON entreprise.id = id_entreprise
        WHERE etat.libelle = 'Renvoyée' ");
    }

}