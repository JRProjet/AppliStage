<?php

if(isset($_GET["action"])){
    switch($_GET["action"]){
        case "listeStage":
            require("controller/visiteStageController.php");
            listStage();
        break;
        case "ajoutFonctionnaliteForm" :
            require("controller/fonctionnaliteController.php");
            ajoutFonctionnaliteForm();
        break;
        case "ajoutFonctionnaliteTrait" :
            require("controller/fonctionnaliteController.php");
            
            ajoutFonctionnaliteTrait($_POST['nomFonction'], $_POST['nomScript']);
        break;
    }
} else{
    
}
