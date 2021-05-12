<?php
require_once('model/DroitProfilManager.php');

function ajoutDroit() {
    $droitManager = new DroitProfilManager();
    $droitProfil = $droitManager->getDroitProfil();
    require("view/droitProfil/ajoutDroitProfilForm.php");
}