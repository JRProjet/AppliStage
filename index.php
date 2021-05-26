<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "consultStageConvSigneRetourne":
            require("controller/stageController.php");
            consultStageConvSigneRetourne();
        break;
    }
} else{
    //page d'accueil
    // 
}