<?php
require_once("Manager.php");
class DroitProfilManager extends Manager {
    public function getDroitProfil() {
        $db = $this->dbConnect();

        try{
            $req = $db->query("INSERT INTO droit_profil VALUES(0, :par_fonctionnalite, :par_profil)");
        
            $req->bindValue(':par_fonctionnalite', $_POST['droits'], PDO::PARAM_INT);
            $req->bindValue(':par_profil', $_POST['profils'], PDO::PARAM_INT);
        
            $req->execute();
        } catch(PDOException $e){
            var_dump($_POST);
            die("BDIns01: erreur lors de l’insert dans la table droit_profil <br>Erreur :" . $e->getMessage());
        }
        
    }
}
