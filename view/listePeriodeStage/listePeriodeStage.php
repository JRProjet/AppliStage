
<!-- titre de la page (balise title) -->
<link rel="stylesheet" href="public/css/style.css">
<?php $title = "Période de stage"?>
<h1>Période de Stage</h1>
<?php ob_start() ?>
<?php
//<!-- code html de la page-->

    //traitement
    echo'<table>
    <tr>
        <th>Sections</th>
        <th>Annee BTS</th>
        <th>Periode</th>
        <th>Annee</th>
    <tr>'; 
    
foreach($lesPeriodesStages AS $unePeriodeStage){
//traitement 
    echo "<tr><td>$unePeriodeStage->libelle</td><td>$unePeriodeStage->annee</td><td>$unePeriodeStage->date_debut au $unePeriodeStage->date_debut</td>
    <td>$unePeriodeStage->debut_annee/$unePeriodeStage->fin_annee</td></tr>"; 
}
echo '</table>';
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>