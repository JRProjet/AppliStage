<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class StageManager extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function getStage(){
        $db = $this->dbConnect();
        return $db->query("SELECT ... FROM stage WHERE ...");
    }
    public function getLesConvSignees(){
        $db = $this->dbConnect();
        return $db->query("SELECT UCASE(UE.nom) AS nom, UE.prenom AS prenom, UCASE(UP.nom) AS nomProf, UP.prenom AS prenomProf, section.libelle AS nomSection, section.categorie AS categSection, section.annee AS anneeSection, contenu, entreprise.nom AS nomEntreprise, rue_lieu_stage, UCASE(tuteur.nom) AS nomTuteur, tuteur.prenom AS prenomTuteur, tuteur.telephone AS telTuteur, tuteur.mel AS mailTuteur, ville.code_postal AS codePostalEntreprise, ville.nom AS nomVilleEntreprise FROM stage
        JOIN etat ON etat.id = stage.id_etat 
        JOIN utilisateur UE ON UE.id = stage.id_etudiant
        JOIN utilisateur UP ON UP.id = stage.id_prof_resp_suivi
        JOIN section on UE.id_section = section.id
        JOIN tuteur ON tuteur.id = stage.id_tuteur
        JOIN entreprise ON entreprise.id = stage.id_entreprise
        JOIN ville on ville.numero_insee = entreprise.id_numero_insee
        WHERE etat.libelle = 'Signée'");
    }
}