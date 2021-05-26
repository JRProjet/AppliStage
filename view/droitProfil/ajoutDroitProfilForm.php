<?php $title = "Ajout droit profil"?>
<?php ob_start(); ?>
<?php require $_SERVER['DOCUMENT_ROOT'].'/applistage/model/ProfilManager.php'; ?>

<form action="index.php?action=ajoutDroitTrait.php" method="POST">
    <label for="profils">profils</label> 
    <?php
        echo("<select name='profils' id='profils'>");
        foreach ($lesProfils as $unProfil) {
            echo("<option value='$unProfil->id'> $unProfil->libelle</option>");
        }
        echo("</select>");
    ?>
    <br>
    <br>
    <label for="droits">droits</label> 
    <select name="droits[]" id="droits" multiple>
        <option value="choix1">Ajout</option>
        <option value="choix2">Modifier</option>
        <option value="choix3">Supprimer</option>
    </select>
    <br>
    <br>
    <input type="submit" name="Envoyer" value="Envoyer" /> 
</form>


<?php $content = ob_get_clean(); ?>
<?php require('C:/wamp64/www/AppliStage/view/template.php'); ?>

