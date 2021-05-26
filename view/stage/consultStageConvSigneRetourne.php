
<!-- titre de la page (balise title) -->
<?php $title = "Conventions signées et retournées à l'entreprise"?>

<?php ob_start() ?>
<h1>Convention</h1>
    <p>Liste des conventions signées et retournées à l'entreprise</p>
    <table>
        <tr><th>Eleve</th>
        <th>Section</th>
        <th>Entreprise</th></tr> 
    </table>
<!-- code html de la page-->

<?php 
    var_dump ($lesStages);
    foreach($lesStages AS $unStage){
    echo "<tr><td>$unStage->nom $unStage->prenom</td></tr>";  
    //traitement
}?>
    //foreach ($lesStages as $iuneConv) {
        //traitement
        // echo "<tr><td>$uneConventionSigneRetourne->nom $uneConventionSigneRetourne->prenom</td></tr>";                 
    //}
?>

<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>