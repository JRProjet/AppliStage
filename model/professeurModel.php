<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class professeurModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function ProfesseurExist($idProfesseur){
        $db = $this->dbConnect();
        return $db->query("SELECT 1 FROM professeur WHERE id = $idProfesseur")->rowCount() == 1;
    }
}