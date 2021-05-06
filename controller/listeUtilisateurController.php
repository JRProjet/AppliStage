<?php
require_once('model/VisteStageManager.php');

function listeUtilisateur(){
    $utilisateurManager = new ListeUtilisateurManager();
    $listeUtilisateur = $utilisateurManager->getListeUtilisateur();
    require("view/visiteStage/listeUtilisateur.php");
}
