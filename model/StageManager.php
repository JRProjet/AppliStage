<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConvsNonSigneesManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesConvsNonSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT stage.id as nom, prenom, entreprise_nom FROM stage JOIN etat ON id_etat = etat.id WHERE etat.libelle = 'non-signées'");
    }
}