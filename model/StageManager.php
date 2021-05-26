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
        return $db->query("SELECT utilisateur.nom AS nom, utilisateur.prenom AS prenom, contenu, rue_lieu_stage, 
        tuteur.nom AS nomTuteur, tuteur.prenom AS prenomTuteur, ville.code_postal AS codePostalEntreprise, ville.nom AS nomVilleEntreprise FROM stage 
        JOIN etat ON etat.id = stage.id_etat 
        JOIN utilisateur ON utilisateur.id = stage.id_etudiant
        JOIN tuteur ON tuteur.id = stage.id_tuteur
        JOIN entreprise ON entreprise.id = stage.id_entreprise
        JOIN ville on ville.numero_insee = entreprise.id_numero_insee
        WHERE etat.libelle = 'Signée' AND utilisateur.id_profil = 2");
    }
}