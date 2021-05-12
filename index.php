<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
            break;
        case 'listeUtilisateur':
            require("controller/listeUtilisateurController.php");
            listeUtilisateur();
            break;
        case 'ajoutDroit':
            require("controller/ajoutDroitProfilController.php");
            ajoutDroit();
            break;
    }
} else{
    //page d'accueil
    //
}