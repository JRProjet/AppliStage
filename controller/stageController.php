<?php
require_once('model/StageManager.php');

function listeStage(){
    $stageManage = new StageManager();
    $Stages = $stageManage->getStage();
    require("view/Stage/listeStage.php");
}
function listeConvSigneesRetournees(){
    $stageManage = new StageManager();
    $lesStages = $stageManage->getLesConvRetournees();
    require("view/Stage/listeConvSigneesRetournees.php");
}