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
<div>
    <h3>Informations sur le stage</h3>
    <div>
        <label for="etudiant">Nom de l'étudiant : </label>
        <select list="etudiantList" name="etudiant" required>
        <datalist id="etudiantList">
            <option value="0">Test</option>
        </datalist>
    </div>
    <div>
        <label for="professeur">Nom du professeur : </label>
        <select list="professeurList" name="professeur" required>
        <datalist id="professeurList">
            <option value="0">Test</option>
        </datalist>
    </div>
</div>
<div>
    <h3>Informations sur le transport</h3>
    <div>
        <label for="transport">Moyen de transport : </label>
        <input list="transportList" name="transport">
        <datalist id="transportList">
            <option value="0">Test</option>
        </datalist>
    </div>
    <div>
        <label for="heureDepart">Heure de départ : </label>
        <input name="heureDepart" type="time">
    </div>
    <div>
        <label for="heureRetour">Heure de retour : </label>
        <input name="heureRetour" type="time">
    </div>
</div>
</form>

<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>