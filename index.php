<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;

        case "consultConvsNonSignees":
            require("controller/stageController.php");
            consultConvsNonSignees();
        break;
    }
} else{
    //page d'accueil
    // 
}