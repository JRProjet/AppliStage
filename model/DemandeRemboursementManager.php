<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class DemandeRemboursementManager extends Manager
{
    public function ajoutDemandeRemboursement()
    {
        $db = $this->dbConnect();
        try {
            session_start();
            $id = $_SESSION['id'];
            // on prépare la requête select
            $req = $db->prepare("insert into demande_remboursement 
            values (0,:par_date_saisie,:par_montant,:par_commentaire,:par_id_type_frais,:par_id_delegue)");
            // on affecte une valeur au paramètre déclaré dans la requête 
            // récupération de la date du jour 
            $req->bindValue(':par_date_saisie', date('Y-m-d H:i:s'), PDO::PARAM_STR);
            $req->bindValue(':par_montant', $_POST['montant'], PDO::PARAM_STR);
            $req->bindValue(':par_commentaire', $_POST['commentaire'], PDO::PARAM_STR);
            $req->bindValue(':par_id_type_frais', $_POST['typeFrais'], PDO::PARAM_INT);
            $req->bindValue(':par_id_delegue', $id, PDO::PARAM_INT);
            // on demande l'exécution de la requête 
            $ret = $req->execute();
        } catch (PDOException $e) {
            $ret = false;
        }
        return $ret;
    }
    public function getDemandesRemboursement($id = null)
    {
        $db = $this->dbConnect();
        $req = $db->prepare("select date_saisie, libelle,montant, commentaire from demande_remboursement 
        join type_frais on type_frais.id = id_type_frais where id_delegue = :par_id_delegue");
        // on affecte une valeur au paramètre déclaré dans la requête 
        $req->bindValue(':par_id_delegue', $id, PDO::PARAM_INT);
        // on demande l'exécution de la requête 
        $req->execute();
        return $req->fetchAll();
    }
}
