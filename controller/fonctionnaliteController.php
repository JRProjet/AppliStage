<?php
require_once('model/FonctionnaliteManager.php');

function AjoutFonctionnaliteTrait()
{
    $ajoutFonction = new FonctionnaliteManager();
    $ajoutFonction = $ajoutFonction->AddFonctionnalite($_POST['nomFonction'], $_POST['nomScript']);
    require("view/fonctionnalite/ajoutFonctionnalite.php");
}
function AjoutFonctionnaliteForm()
{
    require_once('view/fonctionnalite/ajoutFonctionnalite.php');
}
function ConsultFonctionnalite()
{
    $consultFonction = new FonctionnaliteManager();
    $consultFonction = $consultFonction->GetLesFonctionnalite();
    require("view/fonctionnalite/consultFonctionnalite.php");
}
function AfficherFonctionnaliteForm()
{
    require_once('view/fonctionnalite/modifFonctionnalite.php');
}
function UpdateFonctionnaliteTrait()
{
    require_once('view/fonctionnalite/modifFonctionnalite.php');
}
