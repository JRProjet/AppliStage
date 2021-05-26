<!-- titre de la page (balise title) -->
<?php $title = "Liste des conventions non signées"?>

<?php ob_start() ?>
<!-- code html de la page-->
<h1>Les Conventions de stages qui ne sont pas signées</h1>
<?php 
    echo '<table>
    <tr>
        <th>Elève</th>
        <th>Entreprise</th>
        <th>Etat</th>
    </tr>';

foreach($lesConvsNonSignees as $convsNonSignees){
    //traitement
        //on lit le tableau retourné et pour chaque enregistrement, on affiche le nom et la description
    echo "<strong><tr><td>$convsNonSignees->nom $convsNonSignees->prenom</td>
    <td>$convsNonSignees->nomEntreprise</td>
    <td>$convsNonSignees->libelleEtat</td></tr>";
}
echo '</table>';
?>

<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require $_SERVER['DOCUMENT_ROOT'].'/view/template.php'?>