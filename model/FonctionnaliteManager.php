<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class FonctionnaliteManager extends Manager
{
    //fonction sur la table fonctionnalite uniquement (select, insert...)
    public function AddFonctionnalite($nomFonction, $nomScript)
    {
        $db = $this->dbConnect();

        $msg = "";
        if (isset($nomFonction) == false || trim($nomFonction) == "") {
            $msg = $msg . "Le nom de la fonction est obligatoire </br>";
        }
        if (isset($nomScript) == false || trim($nomScript) == "") {
            $msg = $msg . "Le nom du script est obligatoire </br>";
        }
        try {

            $req = $db->prepare("insert into fonctionnalite values (0, :par_nomFonction, :par_nomScript);");


            $req->bindValue(':par_nomFonction', $nomFonction, PDO::PARAM_STR);
            $req->bindValue(':par_nomScript', $nomScript, PDO::PARAM_STR);
            $req->execute();


            if ($req->rowCount() == 0) {
                echo "Erreur grave : le profil n’a pas été enregistré.";
            } else {
                echo '<script language=javascript>
                                    alert(\' Félicitations ! : La fonctionnalité a été enregistrée\');
                                </script> ';
            }
        } catch (PDOException $e) {
            die("BDIns01: erreur lors de l’ajout dans la table fonctionnalite – script ajout_fonctionnalite.php
                            <br>Erreur :" . $e->getMessage());
        }
    }
    public function GetLesFonctionnalite()
    {
        $db = $this->dbConnect();
        $consultFonction = $db->query("select id, libelle, nom_script from fonctionnalite;");

        if ($consultFonction->rowCount() == 0) {
            echo "Aucune valeur n'a été enregistré";
        } else {

            return $consultFonction;
        }
    }
}
