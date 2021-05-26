<?php

require_once("controller/fonctionnaliteController.php");

if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
            break;
        case "ajoutFonctionnaliteForm":

            AjoutFonctionnaliteForm();
            break;
        case "ajoutFonctionnaliteTrait":

            AjoutFonctionnaliteTrait($_POST['nomFonction'], $_POST['nomScript']);
            break;
        case "consultFonctionnalite":

            ConsultFonctionnalite();
            break;
        default:
    }
} else {
    //sdkjdksjd

}
