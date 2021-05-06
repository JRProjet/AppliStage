<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class AjoutUtilisateurManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getAjoutUtilisateur(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM utilisateur WHERE ...");
    }
}