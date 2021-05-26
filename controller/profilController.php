<?php
require_once('model/ProfilManager.php');

function GetLesProfils()
{
    $GetProfil = new Profil();
    $GetProfil = $GetProfil->GetProfil();
    require("view/profil/consultProfil.php");
}
