
<!-- titre de la page (balise title) -->
<?php $title = "Liste viste de stage"?>

<?php ob_start() ?>
<h1>Convention</h1>
    <table>
        <tr><th>Eleve</th>
        <th>Section</th>
        <th>Entreprise</th></tr> 
    </table>
<!-- code html de la page-->
<?php foreach($lesStages AS $uneConventionSigneRetourne){
    //traitement
    echo "<tr><td>$enreg->jour</td><td>$enreg->matin</td><td>$enreg->apres_midi</td></tr>";                 
    }
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>