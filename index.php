<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;

        case "listeConvsNonSignees":
            require("controller/stageController.php");
            listeConvsNonSignees();
        break;
    }
} else{
    //page d'accueil
    // 
}