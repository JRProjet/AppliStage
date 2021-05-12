<!-- titre de la page (balise title) -->
<?php $title = "Message d'ajout"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php
    echo $nbEnreg
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>