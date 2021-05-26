<!-- titre de la page (balise title) -->
<?php $title = "Période de stage"?>

<?php ob_start() ?>
<?php
//<!-- code html de la page-->

    //traitement
    echo'<table>
    <tr>
        <th>Sections</th>
    <tr>'; 
var_dump($lesSections);
foreach($lesSections AS $uneSection){
//traitement
    echo "<tr><td>$uneSection->libelle</td></tr>"; 
}
echo '</table>';
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>