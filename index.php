<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "listeStage":
            require("controller/ajoutTransport.php");
            listStage();
        break;
    }
} else{
    //page d'accueil
    // 
}