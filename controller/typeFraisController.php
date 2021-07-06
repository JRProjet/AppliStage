<?php
require_once('model/TypeFraisManager.php');

function listeTypeFrais()
{
    $typeFraisManage = new TypeFraisManager();
    $lesTypesFrais = $typeFraisManage->getLesTypesFrais();
    //require("view/visiteStage/listeVisteStage.php");
}
