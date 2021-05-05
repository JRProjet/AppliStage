<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        case "gestionConventionStage":
            require("controller/gestionConventionStage.php");
            listStage();
        break;
    }
} else{
    //page d'accueil
    // 
}