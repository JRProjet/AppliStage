<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;

        case "listesPeriodeStage":
            require("controller/periodeStageController.php");
            listesPeriodeStage();
        break;
    }
} else{
    //page d'accueil
    // 
}