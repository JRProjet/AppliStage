<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class UtilisateurManager extends Manager
{
    //fonction sur la table fonctionnalite uniquement (select, insert...)
    public function connexionUtilisateur($donnees)
    {
        $db = $this->dbConnect();

        $msg = "";
        if (isset($donnees['pseudo']) == false || trim($donnees['pseudo']) == "") {
            $msg = $msg . "Le pseudo est obligatoire </br>";
        }
        if (isset($donnees['motdepasse']) == false || trim($donnees['motdepasse']) == "") {
            $msg = $msg . "Le mot de passe est obligatoire </br>";
        }
        if ($msg == "") {
            try {

                // on prépare la requête select
                $req = $db->prepare("SELECT id,nom, prenom,mot_de_passe,id_profil 
                FROM utilisateur 
                WHERE pseudo = :par_pseudo");
                // on affecte une valeur au paramètre déclaré dans la requête 
                $req->bindValue(':par_pseudo', $donnees['pseudo'], PDO::PARAM_STR);
                // on demande l'exécution de la requête 
                $req->execute();
                // on récupere la valeur retournée par la requête 
                $enreg = $req->fetch();
            } catch (PDOException $e) {
                die("BDselConnex: erreur vérification connexion 
                                <br>Erreur :" . $e->getMessage());
            }
            return $enreg;
        } else {
            return false;
        }
    }
    public function fonctUtilisateur($profil)
    {
        $db = $this->dbConnect();
        try {

            // on prépare la requête select
            $req = $db->prepare("select libelle_menu, lien_menu
            from fonctionnalite f
            join profil_fonct pf on pf.id_fonct = f.id
            join profil p on pf.id_profil =  p.id 
            where p.id =:par_profil");
            // on affecte une valeur au paramètre déclaré dans la requête 
            $req->bindValue(':par_profil', $profil, PDO::PARAM_INT);
            // on demande l'exécution de la requête 
            $req->execute();
            // on récupere la valeur retournée par la requête 
            $lesFonct = $req->fetchAll();
        } catch (PDOException $e) {
            die("BDselprofil: erreur accès profil 
                            <br>Erreur :" . $e->getMessage());
        }
        return $lesFonct;
    }
}
