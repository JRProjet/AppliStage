<?php
require_once('model/DemandeRemboursementManager.php');
require_once('model/TypeFraisManager.php');
function ajoutDemandeRemboursementForm()
{
    $unTypeFraisManager = new TypeFraisManager();
    $lesTypesFrais = $unTypeFraisManager->getLesTypesFrais();
    require("view/demandeRemboursement/ajoutDemande.php");
}
function ajoutDemandeRemboursementTrait()
{
    $unDemandeManager = new DemandeRemboursementManager();
    $ret = $unDemandeManager->ajoutDemandeRemboursement();
    if ($ret == false) {
        $msg = "ajout impossible";
        $unTypeFraisManager = new TypeFraisManager();
        $lesTypesFrais = $unTypeFraisManager->getLesTypesFrais();
        require("view/demandeRemboursement/ajoutDemande.php");
    } else {
        $_POST = array();
        $unTypeFraisManager = new TypeFraisManager();
        $lesTypesFrais = $unTypeFraisManager->getLesTypesFrais();
        require("view/demandeRemboursement/ajoutDemande.php");
    }
}
function consultDemandeRemboursementDelegue()
{
    session_start();
    $idDelegue = $_SESSION['id'];
    $unDemandeManager = new DemandeRemboursementManager();
    $lesDemandes = $unDemandeManager->getDemandesRemboursement($idDelegue);
    require("view/demandeRemboursement/consultDemandeDelegue.php");
}
