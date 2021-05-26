<?php
require_once('model/ProfilManager.php');

function GetLesProfils()
{
    $GetProfil = new Profil();
    $GetProfil = $GetProfil->GetProfil();
    require("view/profil/consultProfil.php");
}
function AddProfilForm()
{
    require("view/profil/ajoutProfilView.php");
}
function AddProfilTrait()
{
    $ajoutProfil = new Profil();
    $ajoutProfil = $ajoutProfil->AddProfil($_POST['libelle']);
    require("view/profil/ajoutProfilView.php");
}
