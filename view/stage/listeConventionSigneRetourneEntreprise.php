<!-- titre de la page (balise title) -->
<?php $title = "Convention"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php foreach($stage AS $uneViste){
    //traitement
    
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>