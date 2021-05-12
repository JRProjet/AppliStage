<?php
require_once('model/StageManager.php');

function listStage(){
    $stageManage = new StageManager();
    $stage = $StageManage->getStage();
    require("view/stage/listeStage.php");
}

function consultConvSignees(){
    $stageManage = new StageManager();
    $lesStages = $stageManage->getLesConvSignees();
    require("view/stage/consultConvSignees.php");
}