<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class ConvsNonSigneesManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getLesConvsNonSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT UE.nom AS nom, UE.prenom AS prenom, section.libelle as nomSection,  UP.nom AS nomProf, UP.prenom AS prenomProf, tuteur.nom as nomTuteur, tuteur.prenom as prenomTuteur, entreprise.nom as nomEntreprise, ville.nom as nomVille, etat.libelle as libelleEtat FROM stage 
        JOIN etat ON etat.id = id_etat
        JOIN utilisateur UE ON UE.id = stage.id_etudiant
        JOIN section ON UE.id_section = section.id
        JOIN utilisateur UP ON UP.id = stage.id_prof_resp_suivi
        JOIN tuteur ON tuteur.id = stage.id_tuteur
        JOIN entreprise ON entreprise.id = stage.id_entreprise
        JOIN ville on ville.numero_insee = entreprise.id_numero_insee
        WHERE etat.libelle = 'Non-signées'");
    }
}