<?php
require_once('model/SectionManager.php');

function listesSections(){
    $sectionManage = new SectionStageManager();
    $lesSections = $sectionManage->getLesSections();
    require("view/sectionStage/listeSectionStage.php");
}