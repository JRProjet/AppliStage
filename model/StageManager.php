<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConvsNonSigneesManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesConvsNonSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT id_etudiant, id_entreprise FROM stage JOIN etat ON etat.id = stage.id_etat WHERE etat.libelle = 'non-signées'");
    }
}