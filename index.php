<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listeStage();
        break;
        
        case "consultConvSignees":
            require("controller/stageController.php");
            consultConvSignees();
        break;
    }
} else {
    //page d'accueil
    // 
}
