<?php
require_once $_SERVER['DOCUMENT_ROOT'].'/model/StageManager.php';

function consultConvsNonSignees(){
    $convsNonSigneesManage = new ConvsNonSigneesManager();
    $lesConvsNonSignees = $convsNonSigneesManage->getLesConvsNonSignees();
    VAR_DUMP($lesConvsNonSignees);
    require $_SERVER['DOCUMENT_ROOT'].'/view/stage/consultConvsNonSignees.php';
}