<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConvsNonSigneesManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesConvsNonSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT utilisateur.nom as nom, utilisateur.prenom as prenom, Entreprise.nom as nomEntreprise, etat.libelle as libelleEtat FROM stage 
        JOIN etat ON etat.id = id_etat
        JOIN etudiant ON id_etudiant = etudiant.id 
        JOIN utilisateur ON utilisateur.id = etudiant.id 
        JOIN entreprise ON id_entreprise = entreprise.id
        WHERE etat.libelle = 'Non-signées'");
    }
}