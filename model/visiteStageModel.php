<?php
//class dont on a besoin (classe manager.php obligatoire)
require_once("Manager.php");

class visiteStageModel extends Manager{
    //fonction sur la table viste stage uniquement (select, insert...)
    public function GetLesVisitesStagesProfesseur($idProfesseur){
        $db = $this->dbConnect();
        return $db->query("
        SELECT vs.date_visite, vs.heure_debut_visite AS heure_visite, s.rue_lieu_stage AS rue_stage, v.nom AS ville_stage, v.code_postal AS code_postal_stage, t.nom AS nom_tuteur, t.prenom AS prenom_tuteur, t.telephone AS telephone_tuteur, t.mel AS mel_tuteur, e.nom AS nom_entreprise, u.nom AS nom_etudiant, u.prenom AS prenom_etudiant, u.telephone AS telephone_etudiant, u.mel AS mel_etudiant
        FROM visite_stage AS vs
        JOIN stage AS s ON vs.id_stage = s.id
        JOIN ville AS v ON s.id_numero_insee = v.numero_insee
        JOIN tuteur AS t ON s.id_tuteur = t.id
        JOIN entreprise AS e ON s.id_entreprise = e.id
        JOIN etudiant ON s.id_etudiant = etudiant.id
        JOIN utlisateur AS u ON etudiant.id = u.id
        WHERE vs.id_prof_visite = $idProfesseur
        ");
    }
}