<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConvsNonSigneesManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesConvsNonSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT nom, prenom, nomEntreprise FROM stage 
        JOIN etat ON etat.id = id_etat as libelleEtat
        JOIN etudiant ON id_etudiant = etudiant.id 
        JOIN utilisateur ON utilisateur.id = etudiant.id 
        JOIN ville ON ville.numero_insee = stage.id_numero_insee 
        JOIN entreprise ON ville.numero_insee = entreprise.id_numero_insee AS nomEntreprise
        WHERE etat.libelle = 'non-signées'");
    }
}