<!-- titre de la page (balise title) -->
<?php $title = "Ajout d'une visite de stage" ?>

<?php ob_start() ?>

<!-- code html de la page-->
<h2>Ajout d'une visite de stage</h2>
<form action="http://applistage/index.php?action=ajoutVisiteStageTrait" method="post">
<div>
    <h3>Date et heure de la visite</h3>
    <div>
        <label for="date">Date : </label>
        <input name="date" type="date" required>
    </div>
    <div>
        <label for="heureDebut">Heure début de la visite : </label>
        <input name="heureDebut" type="time">
    </div>
    <div>
        <label for="heureFin">Heure fin de la visite : </label>
        <input name="heureFin" type="time">
    </div>
</div>
</form>



</form>

<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>