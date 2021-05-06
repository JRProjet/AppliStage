<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ListeUtilisateurManager extends Manager{
    //fonction sur la table utilisateur uniquement (select, insert...)
    public function getListeUtilisateur(){
        $db = $this->dbConnect();
        return $db->query("SELECT nom, prenom FROM utilisateur WHERE ...");
    }
}