<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "ajoutmoyentransportTrait":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransportTrait();
        break;
        case "ajoutmoyentransportform":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransportForm();
        break;
        default:break;
    }
} else {
    //page d'accueil
    // 
}
