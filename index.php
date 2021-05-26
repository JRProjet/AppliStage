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
        case 'ajoutDroitProfilForm':
            require("controller/DroitProfilController.php");

            ajoutDroitForm();
            break;
        case 'ajoutDroitProfilTrait':
            require("controller/DroitProfilController.php");    
            ajoutDroitTrait($_POST['id_fonctionnalite']);
            break;
        
        }
    } else {

    //page d'accueil
    //
}