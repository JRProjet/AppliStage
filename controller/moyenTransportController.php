<?php
require_once('model/MoyenTransportModel.php');

function ajoutMoyenTransportTrait(){
    $unMoyenTransport = new MoyenTransportModel();
    if(isset ($_POST["transport"])){
        $unMoyenTransport ->ajoutMoyenTransport($_POST);
        header ("Location: https://AppliStage/index/...");

    }
    header ("Location: http://AppliStage/index.php?action=ajoutmoyentransportform");
}

function ajoutMoyenTransportForm(){
    require("view/moyenTransport/ajoutMoyenTransportForm.php");

}