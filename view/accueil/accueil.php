<!-- titre de la page (balise title) -->
<?php $title = "Accueil" ?>
<?php ob_start() ?>
<!-- code html de la page-->
<h1> Bienvenue sur votre espace de travail</h1>
<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>