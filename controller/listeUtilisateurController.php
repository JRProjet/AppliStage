<?php
require_once('model/ListeUtilisateurManager.php');

function listeUtilisateur(){
    $utilisateurManager = new ListeUtilisateurManager();
    $lesUtilisateurs = $utilisateurManager->getLesUtilisateurs();
    require("view/utilisateur/listeUtilisateur.php");
}
