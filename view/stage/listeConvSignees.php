<!-- titre de la page (balise title) -->
<?php $title = "Liste Conventions Signées"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php foreach($lesStages AS $uneConvSignees){
    //traitement
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>