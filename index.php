<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "consultEntreprise":
            require("controller/consultEntrepriseTechnologieController.php");
            consultEntreprise();
        break;
    }
} else{
    //page d'accueil
    // 
}