<?php
require_once('model/FonctionnaliteManager.php');

function AjoutFonctionnaliteTrait(){
    $ajoutFonction = new Fonctionnalite();
    $ajoutFonction = $ajoutFonction->ajoutFonctionnalite($_POST['nomFonction'], $_POST['nomScript']);
    require("view/fonctionnalite/ajoutFonctionnalite.php");
}
function AjoutFonctionnaliteForm(){
   
    
    require("view/fonctionnalite/ajoutFonctionnalite.php");
}