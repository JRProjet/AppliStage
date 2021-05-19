<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class visiteStageModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function GetLesVisitesStages(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM viste_stage WHERE ...");
    }
}