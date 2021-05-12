<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "ajoutmoyentransport":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransport();
        break;
        case "ajoutmoyentransportform":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransportForm();
        break;
    }
} else{
    //page d'accueil
    // 
}