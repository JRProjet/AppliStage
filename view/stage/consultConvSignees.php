<!-- titre de la page (balise title) -->
<?php $title = "Liste Conventions Signées"?>

<?php ob_start() ?>
<h1>Titre de la page</h1>
<!-- code html de la page-->

<?php echo "<table>";
echo ("<tr><th>Contenu</th><th>Adresse</th><th>Avis</th></tr>");
foreach($lesStages AS $uneConvSignees){
        echo "<tr><td><strong>$uneConvSignees->contenu</strong></td><td>$uneConvSignees->rue_lieu_stage</td><td>$uneConvSignees->avis</td>";
    }
    echo "</table>";
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>