<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "consultEntreprise":
            require("controller/entrepriseController.php");
            lesEntreprisesTechnologie();
        break;
        case "consultEntrepriseForm":
            require("controller/entrepriseController.php");
            rechercheEntreprisesTechnologie();
        break;
            

    }
} else {
    //page d'accueil
    // 
}
