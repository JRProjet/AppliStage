<?php
require_once('model/UtilisateurManager.php');

function connexionTrait()
{
    $utilManager = new UtilisateurManager();
    $infoUtilisateur = $utilManager->connexionUtilisateur($_POST);
    if ($infoUtilisateur == false) {
        $msg = "compte et/ou identifiant incorrect(s)";
        require("view/utilisateur/connexion.php");
    } else {
        if (password_verify($_POST['motdepasse'], $infoUtilisateur->mot_de_passe)) {
            // enregistrement existe (l'identifiant et le mot de passe sont valides)
            // on enregistre dans une variable de session le nom et le prénom de l'employé
            // à améliorer 
            //header('Location:panel_admin.php');
            session_start();
            $_SESSION['nom_prenom'] = $infoUtilisateur->nom . " " . $infoUtilisateur->prenom;
            $_SESSION['profil'] = $infoUtilisateur->id_profil;
            $_SESSION['id'] = $infoUtilisateur->id;
            $lesOptions = $utilManager->fonctUtilisateur($infoUtilisateur->id_profil);
            creerOptionsMenus($infoUtilisateur->id_profil, $lesOptions);
            require("view/accueil/accueil.php");
        } else {
            $msg = "identifiant ou mot de passe incorrect";
            require("view/utilisateur/connexion.php");
        }
    }
}
function creerOptionsMenus($profil, $lesOpts)
{
    //<ul class='dropdown-menu dropdown-menu-dark' aria-labelledby='navbarDarkDropdownMenuLink'>
    //<li><a class='dropdown-item' href='#'>Action</a></li>
    //<li><a class='dropdown-item' href='#'>Another action</a></li>
    //<li><a class='dropdown-item' href='#'>Something else here</a></li>
    //</ul>
    $contenuHTML = "";
    $contenuHTML = $contenuHTML . "<div class='collapse navbar-collapse' id='navbarNavDarkDropdown'>
          <ul class='navbar-nav'>
            <li class='nav-item'>
              <a class='nav-link active' aria-current='page' href='index.php'>Accueil</a>
            </li>";
    foreach ($lesOpts as $uneOpt) {
        $contenuHTML = $contenuHTML .
            "<li class='nav-item'>" .   // li à sortir si on veut que les options soient centrées à gauche dans le menu
            "<a class='nav-link active' href='index.php?action=" . $uneOpt->lien_menu . "'>"
            . $uneOpt->libelle_menu . "</a>"
            . "</li>";
    }
    $contenuHTML = $contenuHTML . "</ul></div>";
    $nomFichier = "nav" . $profil;
    $fic = fopen('view/' . $nomFichier . '.html', 'w');
    fwrite($fic, $contenuHTML);
    fclose($fic);
}
function connexionForm()
{
    require("view/utilisateur/connexion.php");
}
