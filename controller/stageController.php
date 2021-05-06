<?php
require_once('model/ConvsNonSigneesManager.php');

function listConvsNonSignees(){
    $convsNonSigneesManage = new ConvsNonSigneesManager();
    $lesConvsNonSignees = $convsNonSigneesManage->getLesConvsNonSignees();
    require("view/stage/listeConvNonSignees.php");
}