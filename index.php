<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;

        case "listesSection":
            require("controller/sectionController.php");
            listesSection();
        break;
    }
} else{
    //page d'accueil
    // 
}