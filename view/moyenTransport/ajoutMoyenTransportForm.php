<!-- titre de la page (balise title) -->
<?php $title = "Formulaire d'ajout"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php
<form action="action.php" method="post">
<p>Le nouveau moyen de trasport : <transport="moyen de transport" /></p>
</form>
<input type ='submit' name='valider' id='valider' value='Envoyer'/>
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>