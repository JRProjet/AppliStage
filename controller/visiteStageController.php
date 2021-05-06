<?php
require_once('model/VisteStageManager.php');

function listeStage(){
    $visiteManage = new VisiteStageManager();
    $visitesStages = $visiteManage->getVisiteStage();
    require("view/visiteStage/listeVisteStage.php");
}
