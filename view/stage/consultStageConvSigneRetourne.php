
<!-- titre de la page (balise title) -->
<?php $title = "Conventions signées et retournées à l'entreprise"?>
<link rel="stylesheet" href="public/css/style.css">

<?php ob_start() ?>
<h1>Convention signées et retournées à l'entreprise</h1>
    <p>Liste des conventions signées et retournées à l'entreprise</p>
    

<!-- code html de la page-->

<?php echo '<table>
        <tr>
            <th>Eleve</th>
            <th>Section</th>
            <th>Entreprise</th>
        </tr> ';
    
    foreach($lesStages AS $unStage){
        echo "<tr><td>$unStage->nom $unStage->prenom</td><td>$unStage->nomSection</td><td>$unStage->nomEntreprise</td></tr>";  
    //traitement
    }
    echo '</table>';
?>

        
<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>