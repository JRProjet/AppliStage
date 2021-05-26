
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
<?php foreach($lesStages AS $uneConventionSigneRetourne){
    //traitement
    echo "<tr><td>$uneConventionSigneRetourne->nom $uneConventionSigneRetourne->prenom</td></tr>";                 
    }
?>

<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>