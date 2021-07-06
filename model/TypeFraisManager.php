<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class TypeFraisManager extends Manager
{
    //(requête permettant d'obtenir tous les types de frais
    public function getLesTypesFrais()
    {
        $db = $this->dbConnect();
        return $db->query("SELECT * FROM type_frais order by libelle");
    }
}
