<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;

        case "ConvsNonSignees":
            require("controller/stageController.php");
            listConvsNonSignees();
        break;
    }
} else{
    //page d'accueil
    // 
}