<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class MoyenTransportManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function ajoutMoyenTransport(){
        $db = $this->dbConnect();
        //return
         //$db->query("SELECT ... FROM viste_stage WHERE ...");
         // Faire un insert plus retourner le nombre d'enregistrements ajouté
    }
}