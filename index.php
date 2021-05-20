<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listeStage(2);
            break;
        default;
    }
} else {
    //page d'accueil
    // 
}
