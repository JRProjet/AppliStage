<!-- titre de la page (balise title) -->
<?php $title = "Liste utilisateurs"?>

<?php ob_start(); ?>

<!-- code html de la page-->
<table>
    <th>Nom</th>
	<th>Prénom</th>
	<th>Téléphone</th>
    <?php
	foreach($lesUtilisateurs as $unUtilisateur) {
        echo("<tr><td>$unUtilisateur->nom</td><td>$unUtilisateur->prenom</td><td>$unUtilisateur->telephone</td></tr>");
	}
    ?>
</table>




<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require('C:/wamp64/www/AppliStage/view/template.php'); ?>