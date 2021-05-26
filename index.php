<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
<<<<<<< HEAD
            listeStage();
        break;
        case "consultConvSignees":
            require("controller/stageController.php");
            consultConvSignees();
        break;
=======
            listStage();
            break;
        default;
>>>>>>> e1cdd88623c6db5e450e3c698e0b05ae8491948b
    }
} else {
    //page d'accueil
    // 
}
