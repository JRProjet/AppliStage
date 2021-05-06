<?php
require_once('model/VisteStageManager.php');

function listStage(){
    $visiteManage = new VisiteStageManager();
    $visitesSatges = $visiteManage->getVisiteStage();
    require("view/visiteStage/listeVisteStage.php");
}

