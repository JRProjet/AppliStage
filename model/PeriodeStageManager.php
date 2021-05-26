<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class PeriodeStageManager extends Manager{
    //fonction sur la table section uniquement (select, insert...)
    public function getLesPeriodesStages(){
        $db = $this->dbConnect();
        return $db->query("SELECT DISTINCT libelle,annee,date_debut,date_fin,debut_annee,fin_annee FROM periode_stage
        JOIN section ON id_section = section.id
        JOIN annee_scolaire ON id_annee_scolaire = annee_scolaire.id
        ;");
    }
}

