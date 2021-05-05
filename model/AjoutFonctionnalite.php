<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class Fonctionnalite extends Manager{
    //fonction sur la table fonctionnalite uniquement (select, insert...)
    public function ajoutFonctionnalite(){
        $db = $this->dbConnect();
        if (isset($_POST['envoyer']) == true) {
            $msg = "";
            if (isset($_POST['nomFonction']) == false || trim($_POST['nomFonction']) == "") {
                $msg = $msg . "Le nom de la fonction est obligatoire </br>";
            }
            if (isset($_POST['nomScript']) == false || trim($_POST['nomScript']) == "") {
                $msg = $msg . "Le nom du script est obligatoire </br>";
            }
            try {
                
                $req = $db->prepare("insert into fonctionnalite values (0, :par_nomFonction, :par_nomScript);");
        
        
                $req->bindValue(':par_nomFonction', $_POST['nomFonction'], PDO::PARAM_STR);
                $req->bindValue(':par_nomScript', $_POST['nomScript'], PDO::PARAM_STR);
                $req->execute();
        
        
                if ($req->rowCount() == 0) {
                    echo ("Erreur grave : le profil n’a pas été enregistré.");
                } else {
                    echo '<script language=javascript>
                                    alert(\' Félicitations ! : La fonctionnalité a été enregistrée\');
                                </script> ';
                }
            } catch (PDOException $e) {
                die("BDIns01: erreur lors de l’ajout dans la table profil – script ajout_fonctionnalite.php
                            <br>Erreur :" . $e->getMessage());
            }
        }
        



    }
}