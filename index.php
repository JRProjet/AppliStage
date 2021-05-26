<?php
<<<<<<< HEAD

=======
require_once("controller/fonctionnaliteController.php");
>>>>>>> consultFonctionnalite
if (isset($_GET["action"])) {
    switch ($_GET["action"]) {
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
            break;
<<<<<<< HEAD
        default;
    }
} else {
    //page d'accueil
    // 
=======
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
>>>>>>> consultFonctionnalite
}
