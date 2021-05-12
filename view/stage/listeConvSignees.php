<!-- titre de la page (balise title) -->
<?php $title = "Liste Conventions Signées"?>

<?php ob_start() ?>
<h1>Titre de la page</h1>
echo "<table>";
echo ("<tr><th>Jour</th><th>Contenu</th><th>Adresse</th><th>Avis</th></tr>");
<!-- code html de la page-->
<?php foreach($lesStages AS $uneConvSignees){
        echo "<tr><td><strong>$uneConvSignees->jour</strong></td><td>$uneConvSignees->matindebut</td><td>$uneConvSignees->matinfin</td>";
    }
    echo "</table>";
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>