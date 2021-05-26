<?php
require_once('model/MoyenTransportModel.php');

function ajoutMoyenTransportTrait(){
    $unMoyenTransport = new MoyenTransportModel();
    if(isset ($_POST["transport"])){
        $retour = $unMoyenTransport ->ajoutMoyenTransport($_POST);
        if ($retour -> rowCount() == 1) {
        $message = 'Moyen de transport ajouté';
        $lib = '';
        } else {
           $message = "Problème d'ajout !";
           $lib = $_POST['transport'];
        }
        require("view/moyenTransport/ajoutMoyenTransportForm.php");

    }
    //header ("Location: http://AppliStage/index.php?action=ajoutmoyentransportform");
}

function ajoutMoyenTransportForm(){
    $message = '';
    $lib = '';
    require("view/moyenTransport/ajoutMoyenTransportForm.php");

}