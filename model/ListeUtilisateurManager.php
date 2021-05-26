<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ListeUtilisateurManager extends Manager{
    //fonction sur la table utilisateur uniquement (select, insert...).
    public function getLesUtilisateurs(){
        $db = $this->dbConnect();
        $lesUtilisateurs = $db->query("SELECT nom, prenom, telephone, mel FROM utilisateur");
        if ($lesUtilisateurs->rowCount() == 0) {
            echo("Aucune données entré.");
        }
        return $lesUtilisateurs;
    }
}