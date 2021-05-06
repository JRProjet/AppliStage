<?php
require_once('model/StageManager.php');

function listStage(){
    $stageManage = new StageManager();
    $stage = $StageManage->getStage();
    require("view/stage/listeStage.php");
}

function listConvSignees(){
    $stageManage = new StageManager();
    $lesStages = $StageManage->getLesConvSignees();
    require("view/stage/listeConvSignees.php");
}