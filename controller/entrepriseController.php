<?php
require_once('model/EntrepriseManager.php');

function lesEntreprisesTechnologie(){
    $entrepriseTechnologieManager = new EntrepriseManager();
    $lesEntreprisesTechnologie = $entrepriseTechnologieManager->getlesEntreprisesTechnologie();
    require("view/entreprise/consultEntreprisesTechno.php");
}
function rechercheEntreprisesTechnologie(){
    $rechercheEntrepriseTechnoManager = new RechercheEntrepriseManager();
    $rechercheEntreprisesTechnologie = $rechercheEntrepriseTechnoManager->getrechercheEntreprisesTechnologie();
    require("view/entreprise/consultRechercheEntreprisesTechno.php")
}
