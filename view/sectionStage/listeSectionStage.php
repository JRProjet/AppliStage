<!-- titre de la page (balise title) -->
<?php $title = "Période de stage"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php foreach($LesSections AS $uneSection){
    //traitement
    echo'<table>
    <tr>
        <th>Sections</th>
    <tr>
';  
foreach($LesSections AS $uneSection){
//traitement
echo "<tr><td>$enreg->libelle</td></tr>"; 
}
echo '</table>';
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>