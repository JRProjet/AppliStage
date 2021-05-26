<?php
require_once('model/MoyenTransport.php');

function ajoutMoyenTransportTrait(){
    $unMoyenTransport = new MoyenTransport();
    $nbEnreg = $unMoyenTransport->ajoutMoyenTransport();
    require("view/moyenTransport/ajoutMoyenTransportMes.php");
}

function ajoutMoyenTransportForm(){
    require("view/moyenTransport/ajoutMoyenTransportForm.php");

}