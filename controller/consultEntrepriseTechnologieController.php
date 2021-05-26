<?php
require_once('/model/ConsultEntrepriseTechnologieManager.php');

function lesEtreprisesTechnologie(){
    $consultEntrepriseTechnologieManager = new lesConsultationsEntreprisesTechnologieManager();
    $lesConsultationsEntreprisesTechnologieManager = $consultEntrepriseTechnologieManager->getlesEntreprisesTechnologie();
    require("view/consultEntrepriseTechnologie/lesConsultationsEntreprisesTechnologie.php");
}