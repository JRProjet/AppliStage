<?php

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
            break;
        case "ajoutFonctionnaliteForm":
            require("controller/fonctionnaliteController.php");
            AjoutFonctionnaliteForm();
            break;
        case "ajoutFonctionnaliteTrait":

            AjoutFonctionnaliteTrait($_POST['nomFonction'], $_POST['nomScript']);
            break;
        case "consultFonctionnalite":
            require("controller/fonctionnaliteController.php");
            ConsultFonctionnalite();
            break;
        default:
    }
} else {
    //sdkjdksjd
}
