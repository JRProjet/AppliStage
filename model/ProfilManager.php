<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class Profil extends Manager
{
    //fonction sur la table fonctionnalite uniquement (select, insert...)
    public function GetProfil()
    {
        $db = $this->dbConnect();
        $consultProfil = $db->query("select id, libelle from profil;");

        if ($consultProfil->rowCount() == 0) {
            echo "Aucune valeur n'a été enregistré";
        } else {

            return $consultProfil;
        }
    }
}
