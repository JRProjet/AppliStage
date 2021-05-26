<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConsultEntrepriseTechnologieManager extends Manager{
    //fonction sur la table entreprise uniquement (select, insert...)
    public function getlesEntreprisesTechnologie(){
        $db = $this->dbConnect();
        return $db->query("SELECT entreprise.nom, rue, ville.nom, ville.code_postal, technologie.libelle from entreprise join ville on id_numero_insee = ville.numero_insee join stage on entreprise.id = id_entreprise join stage_tech on stage.id=id_stage join technologie on id_technologie=technologie.id");
    }
}