<?php
function listeDroit() {
    $droitManager = new DroitProfilManager();
    $droitProfil = $droitManager->getDroitProfil();
    require("view/droitProfil/listeDroitProfil.php")
}