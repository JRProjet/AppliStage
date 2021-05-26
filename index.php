<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
<<<<<<< HEAD
        break;
        case "ajoutmoyentransportTrait":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransport();
        break;
        case "ajoutmoyentransportform":
            require("controller/moyenTransportController.php");
            ajoutMoyenTransportForm();
        break;
=======
            break;
        default;
>>>>>>> master
    }
} else {
    //page d'accueil
    // 
}
