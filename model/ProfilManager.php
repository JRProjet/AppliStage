<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ProfilManager extends Manager
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
    public function AddProfil($libelle)
    {
        $db = $this->dbConnect();

        $msg = "";
        if (isset($libelle) == false || trim($libelle) == "") {
            echo  "Le nom du profil est obligatoire </br>";
        } else {
            try {

                $req = $db->prepare("insert into profil values (0, :par_libelle);");


                $req->bindValue(':par_libelle', $libelle, PDO::PARAM_STR);

                $req->execute();


                if ($req->rowCount() == 0) {
                    echo "Erreur grave : le profil n’a pas été enregistré.";
                } else {
                    echo '<script language=javascript>
                                        alert(\' Félicitations ! : Le profil a été enregistrée\');
                                    </script> ';
                }
            } catch (PDOException $e) {
                die("BDIns01: erreur lors de l’ajout dans la table fonctionnalite – script ajout_fonctionnalite.php
                                <br>Erreur :" . $e->getMessage());
            }
        }
    }
}
