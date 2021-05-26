<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class MoyenTransportModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function ajoutMoyenTransport($moyen){
        $db = $this->dbConnect();
        $valeur = $moyen['transport'];
        return $db->query("INSERT INTO moyen_transport VALUES (0,'$valeur')");
         // Faire un insert plus retourner le nombre d'enregistrements ajouté
    }
}