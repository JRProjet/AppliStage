<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class SectionStageManager extends Manager{
    //fonction sur la table section uniquement (select, insert...)
    public function getLesSections(){
        $db = $this->dbConnect();
        return $db->query("SELECT libelle FROM section");
    }
}