<?php
require_once('model/visiteStageModel.php');
require_once('model/etudiantModel.php');
require_once('model/professeurModel.php');
require_once('model/transportModel.php');

function listeStage($idProfesseur){
    setlocale (LC_TIME, 'fr_FR.utf8','fra'); 
    $visiteModel = new visiteStageModel();
    $lesVisitesStages = $visiteModel->GetLesVisitesStagesProfesseur($idProfesseur);
    require("view/visiteStage/listeVisteStage.php");
}

function afficherFormulaireAjout($idProfesseur){
    $lesDonnees = null;
    require("view/visiteStage/ajoutVisiteStage.php");
}

function formulaireAjoutTraitement($idProfesseur){
    $patternHeure = '/^[0-9]{2}\.[0-9]{2}\.[0-9]{2}$/';
    $patternDate = "/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/";
    $lesDonnees = recuperationDonnnees();
    $messageErreur = "";
    
    $temp = $lesDonnees["date"];
    if($temp == null || preg_match($patternDate, $temp) == 0 || strtotime($temp) < strtotime("now")){
        $messageErreur .= "<br>La date de visite n'est pas valide";
    }
    $temp = $lesDonnees["heureDebut"];
    if($temp != null && preg_match($patternHeure, $temp) == 0){
        $messageErreur .= "<br>L'heure de visite n'est pas valide";
    }

    $temp = $lesDonnees["heureFin"];
    if($temp != null && preg_match($patternHeure, $temp) == 0){
        $messageErreur .= "<br>L'heure de fin n'est pas valide";
    }

    //etudiant
    $temp = $lesDonnees["etudiant"];
    if($temp != null){
        $etudiantModel = new etudiantModel();
        if($etudiantModel->EtudiantExist($temp) == false){
            $messageErreur .= "<br>L'étudiant est introuvable";
        }
    }
    
    //professeur
    $temp = $lesDonnees["professeur"];
    if($temp != null){
        $professeurModel = new professeurModel();
        if($professeurModel->ProfesseurExist($temp) == false){
            $messageErreur .= "<br>L'étudiant est introuvable";
        }
    }

    //transport
    $temp = $lesDonnees["transport"];
    if($temp != null){
        $transportModel = new transportModel();
        if($transportModel->TransportExist($temp) == false){
            $messageErreur .= "<br>L'étudiant est introuvable";
        }
    }

    $temp = $lesDonnees["heureDepart"];
    if($temp != null && preg_match($patternHeure, $temp) == false){
        $messageErreur .= "<br>L'heure de départ n'est pas valide";
    }

    $temp = $lesDonnees["heureRetour"];
    if($temp != null && preg_match($patternHeure, $temp) == false){
        $messageErreur .= "<br>L'heure de retour n'est pas valide";
    }

    if($messageErreur != ""){
        $lesDonnees["message"] = $messageErreur;
        require("view/visiteStage/ajoutVisiteStage.php");
    }
    else{
        echo "ajout";
    }
}

function recuperationDonnnees(){
    $lesDonnees = array("date" => null, "heureDebut" => null, "heureFin"=> null, "etudiant"=> null, "professeur"=> null, "transport"=> null, "heureDepart"=> null, "heureRetour"=> null, "message" => null);
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
        if(isset($_POST["message"])){
            $lesDonnees["message"] = $_POST["message"];
        }
    }
    return $lesDonnees;
}