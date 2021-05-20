<?php
require_once('model/visiteStageModel.php');

function listeStage($idProfesseur){
    setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
    $visiteManage = new visiteStageModel();
    $lesVisitesStages = $visiteManage->GetLesVisitesStagesProfesseur($idProfesseur);
    require("view/visiteStage/listeVisteStage.php");
}

function afficherFormulaireAjout($idProfesseur){
    $lesDonnees = array("date" => null, "heureDebut" => null, "heureFin"=> null, "etudiant"=> null, "professeur"=> null, "transport"=> null, "heureDepart"=> null, "heureRetour"=> null);
    if(count($_POST) > 0){
        if(isset($_POST["date"])){
            $lesDonnees["date"] = $_POST["date"];
        }
        if(isset($_POST["heureDebut"])){
            $lesDonnees["heureDebut"] = $_POST["heureDebut"];
        }
        if(isset($_POST["heureFin"])){
            $lesDonnees["heureFin"] = $_POST["heureFin"];
        }
        if(isset($_POST["etudiant"])){
            $lesDonnees["etudiant"] = $_POST["etudiant"];
        }
        if(isset($_POST["professeur"])){
            $lesDonnees["professeur"] = $_POST["professeur"];
        }
        if(isset($_POST["transport"])){
            $lesDonnees["transport"] = $_POST["transport"];
        }
        if(isset($_POST["heureDepart"])){
            $lesDonnees["heureDepart"] = $_POST["heureDepart"];
        }
        if(isset($_POST["heureRetour"])){
            $lesDonnees["heureRetour"] = $_POST["heureRetour"];
        }
    }


    require("view/visiteStage/ajoutVisiteStage.php");
}