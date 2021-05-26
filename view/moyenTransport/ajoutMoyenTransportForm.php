<!-- titre de la page (balise title) -->
<?php $title = "Formulaire d'ajout"?>

<?php ob_start() ?>

<!-- code html de la page-->

<form action='index.php?action=ajoutmoyentransportTrait' method='post'>
<p>Le nouveau moyen de transport : <input name='transport' type = 'text' required value = '<?php echo $lib; ?>'></p>
<input type ='submit' name='valider' id='valider' value='Envoyer'/>
</form>
<?php echo $message;?>



<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>