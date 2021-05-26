<!-- titre de la page (balise title) -->
<?php $title = "Liste Conventions Signées"?>

<?php ob_start() ?>
<h1>Titre de la page</h1>
<!-- code html de la page-->

<?php echo "<table>";
echo ("<tr><th>Identité du stagiaire</th><th>Contenu du stage</th><th>Adresse</th><th>Identité du tuteur</th></tr>");
foreach($lesStages AS $uneConvSignees){
        echo "<tr><td>$uneConvSignees->nom $uneConvSignees->prenom</td><td>$uneConvSignees->contenu</td><td>$uneConvSignees->rue_lieu_stage, $uneConvSignees->codePostalEntreprise $uneConvSignees->nomVilleEntreprise</td><td>$uneConvSignees->nomTuteur $uneConvSignees->prenomTuteur</td></tr>";
    }
    echo "</table>";
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>