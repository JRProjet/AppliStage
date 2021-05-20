<!-- titre de la page (balise title) -->
<?php $title = "Liste viste de stage" ?>

<?php ob_start() ?>

<!-- code html de la page-->
<table>
    <thead>
        <tr>
            <th>Etudiant</th>
            <th>Coordonnées de l'étudiant</th>
            <th>Date de la visite</th>
            <th>Tuteur du stage</th>
            <th>Coordonnées du tuteur</th>
            <th>Lieu du stage</th>
            <th>Entreprise</th>
        </tr>
    </thead>
    <tbody>
    <?php foreach($lesVisitesStages as $uneVisite):?>
        <tr>
            <td><?= $uneVisite->nom_etudiant;?> <?= $uneVisite->prenom_etudiant;?></td>
            <td><?= $uneVisite->telephone_etudiant;?><br><?= $uneVisite->mel_etudiant;?></td>
            <td><?= strftime("%A %d %B", strtotime($uneVisite->date_visite));?> à <?php $uneVisite->heure_visite;?></td>
            <td><?= $uneVisite->nom_tuteur;?> <?= $uneVisite->prenom_tuteur;?></td>
            <td><?= $uneVisite->telephone_tuteur;?><br><?= $uneVisite->mel_tuteur;?></td>
            <td><?= $uneVisite->rue_stage;?><br><?= $uneVisite->code_postal_stage;?> <?= $uneVisite->ville_stage;?></td>
            <td>Entreprise</td>
        </tr>
    <?php endforeach ?>

    </tbody>
</table>

<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>