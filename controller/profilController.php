<?php
require_once('model/ProfilManager.php');

function GetLesProfils()
{
    $GetProfil = new ProfilManager();
    $GetProfil = $GetProfil->GetProfil();
    require("view/profil/consultProfil.php");
}
function AddProfilForm()
{
    require("view/profil/ajoutProfilView.php");
}
function AddProfilTrait()
{
    $ajoutProfil = new ProfilManager();
    $ajoutProfil = $ajoutProfil->AddProfil($_POST['libelle']);
    require("view/profil/ajoutProfilView.php");
}
