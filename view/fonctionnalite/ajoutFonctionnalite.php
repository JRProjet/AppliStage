<!DOCTYPE html>
<html lang="fr-FR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajout d'une fon</title>
</head>

<body>
    <?php
    include $_SERVER['DOCUMENT_ROOT'] . "/page/modele/modele_ajout_fonctionnalite.php";
    ?>


    <div id="container">
        <form action="ajout_fonctionnalite.php" method="post">
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
            <?php if (isset($_POST['envoyer']) == true) {
                echo $msg;
            }
            ?>
        </form>
    </div>
</body>

</html>