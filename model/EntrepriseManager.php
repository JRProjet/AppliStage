<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class EntrepriseManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getEntreprise(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM entreprise WHERE ...");
    }
}