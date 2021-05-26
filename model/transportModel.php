<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class transportModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function TransportExist($idTransport){
        $db = $this->dbConnect();
        return $db->query("SELECT 1 FROM transport WHERE id = $idTransport")->rowCount() == 1;
    }
}