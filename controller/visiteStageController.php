<?php
require_once('model/visiteStageModel.php');

function listStage(){
    $visiteManage = new visiteStageModel();
    $visitesSatges = $visiteManage->GetLesVisitesStages();
    
    require("view/visiteStage/listeVisteStage.php");
}