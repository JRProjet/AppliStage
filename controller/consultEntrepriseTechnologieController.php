<?php
require_once('model/consultEntrepriseTechnologieManager.php');

function lesEtreprisesTechnologie(){
    $consultEntrepriseTechnologieManager = new lesConsultationsEntreprisesTechnologieManager();
    $lesConsultationsEntreprisesTechnologieManager = $consultEntrepriseTechnologieManager->getlesEntreprisesTechnologie();
    require("view/consultEntrepriseTechnologie/lesConsultationsEntreprisesTechnologie.php");
}