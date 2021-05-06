<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listeStage();
        break;
        case "listeConvSignees":
            require("controller/stageController.php");
            getLesConvSignees();
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