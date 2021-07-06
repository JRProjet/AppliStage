<?php

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case "verifUtilisateurTrait":
            // le formulaire de connexion a été soumis. Vérification des informations saisies
            require("controller/utilisateurController.php");
            connexionTrait($_POST);
            break;
        case "accueil":
            // choix de l'option accueil dans le menu 
            require_once("controller/utilisateurController.php");
            connexionForm();
            break;
        case "ajoutDemRembForm":
            // demande du formulaire de saisie d'une demande de remboursement
            require("controller/demandeRemboursementController.php");
            ajoutDemandeRemboursementForm();
            break;
        case "ajoutDemRembTrait":
            // le formulaire de saisie d'une demande de remboursement a été soumis.
            // Vérification et traitement des informations saisies
            require("controller/demandeRemboursementController.php");
            ajoutDemandeRemboursementTrait();
            break;
        case "consultRembourDelegue":
            // affichage des demandes de remboursements saisies par le délegué
            require("controller/demandeRemboursementController.php");
            consultDemandeRemboursementDelegue();
            break;
        default:
            // action contient une valeur non connue : on affiche le formulaire de connexion
            require_once("controller/utilisateurController.php");
            connexionForm();
            break;
    }
} else {
    // action n'est pas fourni : on affiche le formulaire de connexion
    require_once("controller/utilisateurController.php");
    connexionForm();
}
