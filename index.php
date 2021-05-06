<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "listeConvSignees":
            require("controller/satgeController.php");
            listStage();
        break;
        case "ajoutEntreprise":
            require("controller/entrepriseController.php");
            listStage();
        break;
    }
} else{
    //page d'accueil
    // 
}