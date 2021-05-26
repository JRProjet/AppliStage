<?php
require_once('model/StageManager.php');

function listeStage(){
    $stageManage = new StageManager();
    $Stages = $stageManage->getStage();
    require("view/Stage/listeStage.php");
}
function consultStageConvSigneRetourne(){
    $stageManager = new StageManager();
    $lesStages = $stageManager->getLesStagesConvSigneRetourne();
    require("view/stage/consultStageConvSigneRetourne.php");
}