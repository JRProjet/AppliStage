<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
            break;
        case 'ajoutDroitForm':
            # code...
            break;
        case 'ajoutDroitTrait':
            # code...
            break;
    }
} else{
    //page d'accueil
    //
}