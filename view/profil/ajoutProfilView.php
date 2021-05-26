<!-- titre de la page (balise title) -->
<?php $title = "Ajout d'un profil" ?>
<?php ob_start() ?>
<?php require_once('model/ProfilManager.php');  ?>
<!-- code html de la page-->

<!-- //traitement -->

<div>
    <h1>
        Ajout d'un profil
    </h1>
</div>
<div id="container">
    <form action="index.php?action=ajoutProfilTrait" method="post">
        <label for="nomFonction">Nom du profil : </label>
        <br>
        <input type="text" name="libelle" id="libelle" required>

        <br>
        <input type="submit" value="Envoyer" name="envoyer">
        <br>
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