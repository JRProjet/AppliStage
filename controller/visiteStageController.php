<?php
require_once('model/visiteStageModel.php');

function listeStage($idProfesseur){
    setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
    $visiteManage = new visiteStageModel();
    $lesVisitesStages = $visiteManage->GetLesVisitesStagesProfesseur($idProfesseur);
    require("view/visiteStage/listeVisteStage.php");
}

function afficherFormulaireAjout($idProfesseur){
    
}