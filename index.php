<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case 'AjoutUtilisateur'
            require("controller/AjoutUtilisateur.php");
            ajoutUtilisateur($_POST);
        break;
        
    }
} else{
    //page d'accueil
    // 
}