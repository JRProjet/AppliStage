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
        <input type="hidden" name="etudiant" id="etudiant-hidden">
        <input list="etudiantList" id="etudiant" required>
        <datalist id="etudiantList">
            <option data-value=0>Test</option>
        </datalist>
    </div>
    <div>
        <label for="professeur">Nom du professeur : </label>
        <input type="hidden" name="professeur" id="professeur-hidden">
        <input list="professeurList" id="professeur" required>
        <datalist id="professeurList">
            <option data-value=0>Test</option>
        </datalist>
    </div>
</div>
<div>
    <h3>Informations sur le transport</h3>
    <div>
        <label for="transport">Moyen de transport : </label>
        <input type="hidden" name="transport" id="transport-hidden">
        <input list="transportList" id="transport" required>
        <datalist id="transportList">
            <option data-value=0>Test</option>
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

<script>
document.querySelector('input[list]').addEventListener('input', function(e) {
    var input = e.target,
        list = input.getAttribute('list'),
        options = document.querySelectorAll('#' + list + ' option'),
        hiddenInput = document.getElementById(input.getAttribute('id') + '-hidden'),
        inputValue = input.value;

    hiddenInput.value = inputValue;

    for(var i = 0; i < options.length; i++) {
        var option = options[i];

        if(option.innerText === inputValue) {
            hiddenInput.value = option.getAttribute('data-value');
            break;
        }
    }
});
</script>

<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>