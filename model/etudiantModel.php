<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class etudiantModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function EtudiantExist($idEtudiant){
        $db = $this->dbConnect();
        return $db->query("SELECT 1 FROM etudiant WHERE id = $idEtudiant")->rowCount() == 1;
    }
}