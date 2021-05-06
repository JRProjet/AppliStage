<?php
require_once('model/AjoutUtilisateurManager.php');

function AjoutUtilisateur(){
    $visiteManage = new VisiteStageManager();
    $visitesSatges = $visiteManage->getVisiteStage();
    
    require("view/visiteStage/AjoutUtilisateur.php");
}