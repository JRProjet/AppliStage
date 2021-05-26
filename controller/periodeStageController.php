<?php
require_once('model/PeriodeStageManager.php');

function listesSections(){
    $sectionManage = new SectionStageManager();
    $lesSections = $sectionManage->getLesSections();
    require("view/listePeriodeStage/listeSectionStage.php");
}