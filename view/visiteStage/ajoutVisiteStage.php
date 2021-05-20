<!-- titre de la page (balise title) -->
<?php $title = "Ajout d'une visite de stage" ?>

<?php ob_start() ?>

<!-- code html de la page-->


<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>