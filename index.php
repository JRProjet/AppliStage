<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        
        case "listeConventionSigneRetourneEntreprise":
            require("controller/listeConventionSigneRetourneEntrepriseController.php");
            listeConventionSigneRetourneEntreprise();
        break;
    }
} else{
    //page d'accueil
    // 
}