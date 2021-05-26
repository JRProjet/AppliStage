<?php

require_once("controller/fonctionnaliteController.php");
require_once("controller/profilController.php");

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
        case "consultProfil":

            GetLesProfils();
            break;
        case "ajoutProfilForm":

            AddProfilForm();
            break;
        case "ajoutProfilTrait":

            AddProfilTrait($_POST['libelle']);

            break;
        case "modifFonctionnaliteForm":
            AfficherFonctionnaliteForm();
            break;
        case "modifFonctionnaliteTrait":
            AfficherFonctionnaliteForm();
            break;
        default:
    }
} else {
    //sdkjdksjd

}
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>