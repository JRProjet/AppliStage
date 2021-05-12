<?php
require_once('model/ListeUtilisateurManager.php');

function listeUtilisateur(){
    $utilisateurManager = new ListeUtilisateurManager();
    $listeUtilisateur = $utilisateurManager->getListeUtilisateur();
    require("view/utilisateur/listeUtilisateur.php");
}
