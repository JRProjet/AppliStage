<!-- titre de la page (balise title) -->
<?php $title = "Liste utilisateurs"?>

<?php ob_start(); ?>

<!-- code html de la page-->
<?php foreach($listeUtilisateur AS $unUtilisateur){
    // TODO -> Tableau
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php");?>