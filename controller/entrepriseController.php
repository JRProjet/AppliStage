<?php
require_once('model/EntrepriseManager.php');

function listEntreprise(){
    $entrepriseManage = new EntrepriseManager();
    $entreprise = $entrepriseManage->getEntreprise();
    require("view/entreprise/ajoutEntreprise.php");
}