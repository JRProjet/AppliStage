<!-- titre de la page (balise title) -->
<?php $title = "Ajout d'une fonctionnalite" ?>
<?php ob_start() ?>
<?php require_once('model/FonctionnaliteManager.php');  ?>
<!-- code html de la page-->

<!-- //traitement -->

<div>
    <h1>
        Ajout d'une fonctionnalité
    </h1>
</div>
<div id="container">
    <form action="index.php?action=ajoutFonctionnaliteTrait" method="post">
        <label for="nomFonction">Nom de la fonctionnalité : </label>
        <br>
        <input type="text" name="nomFonction" id="nomFonction" required>
        <br>
        <label for="nomScript">Lien du script : </label>
        <br>
        <input type="text" name="nomScript" id="nomScript" required>
        <br>
        <br>
        <input type="submit" value="Envoyer" name="envoyer">
        <?php
        $msg = "";
        if (isset($_POST['envoyer']) == true) {
            echo $msg;
        }



        ?>
    </form>
</div>


<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>