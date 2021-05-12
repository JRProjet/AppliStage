<?php
require_once('model/ConvsNonSigneesManager.php');

function listeConvsNonSignees(){
    $convsNonSigneesManage = new ConvsNonSigneesManager();
    $lesConvsNonSignees = $convsNonSigneesManage->getLesConvsNonSignees();
    //VAR_DUMP($lesConvsNonSignees);
    require("view/stage/listeConvsNonSignees.php");
}