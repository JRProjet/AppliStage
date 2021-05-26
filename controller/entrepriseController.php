<?php
require_once('/model/EntrepriseManager.php');

function lesEntreprisesTechnologie(){
    $entrepriseTechnologieManager = new EntrepriseManager();
    $lesEntreprisesTechnologie = $entrepriseTechnologieManager->getlesEntreprisesTechnologie();
    require("view/entreprise/consultEntreprisesTechno.php");
}