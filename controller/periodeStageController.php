<?php
require_once('model/PeriodeStageManager.php');

function listesPeriodeStage(){
    $periodeStageManage = new PeriodeStageManager();
    $lesPeriodesStages = $periodeStageManage->getLesPeriodesStages();
    require("view/listePeriodeStage/listePeriodeStage.php");
}
