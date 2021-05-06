<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "listeConvSigneesRetournees":
            require("controller/stageController.php");
            listeConvSigneesRetournees();
        break;
    }
} else{
    //page d'accueil
    // 
}