<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class VisiteStageManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesVisitesStages(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM viste_stage WHERE ...");
    }
}