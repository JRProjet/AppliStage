<?php $title = "Ajout droit profil"?>
<?php ob_start(); ?>

<form action="index.php?action=ajoutDroitTrait.php" method="POST">
    <label for="profils">profils</label> 
    <select name="profils" id="profils">
        <option value="choix1">Etudiant</option>
        <option value="choix2">Professeur</option>
    </select>
    <br>
    <label for="droits">droits</label> 
    <select name="droits[]" id="droits" multiple>
        <option value="choix1">Ajout</option>
        <option value="choix2">Modifier</option>
        <option value="choix3">Supprimer</option>
    </select>
    <br>
    <input type="submit" name="Envoyer" value="Envoyer" /> 
</form>

<?php $content = ob_get_clean(); ?>
<?php require("view/template.php"); ?>