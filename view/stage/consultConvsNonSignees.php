<!-- titre de la page (balise title) -->
<?php $title = "Liste des conventions non signées"?>
<link rel="stylesheet" href="public/css/style.css">

<?php ob_start() ?>
<!-- code html de la page-->
<h1>Conventions de stages non signées</h1>
<?php 
    echo '<table>
    <h2>Liste conventions non-signées</h2>
    <tr>
        <th>Elève</th>
        <th>Section</th>
        <th>Prof</th>
        <th>Tuteur</th>
        <th>Entreprise</th>
        <th>Ville Stage</th>
        <th>Signée Convention</th>
    </tr>';

foreach($lesConvsNonSignees as $convsNonSignees){
    //traitement
        //on lit le tableau retourné et pour chaque enregistrement, on affiche le nom et la description
    echo "<strong><tr><td>$convsNonSignees->nom $convsNonSignees->prenom</td>
    <td>$convsNonSignees->nomSection</td>
    <td>$convsNonSignees->nomProf $convsNonSignees->prenomProf</td>
    <td>$convsNonSignees->nomTuteur $convsNonSignees->prenomTuteur</td>
    <td>$convsNonSignees->nomEntreprise</td>
    <td>$convsNonSignees->nomVille</td></tr>";
}
echo '</table>';
?>

<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require $_SERVER['DOCUMENT_ROOT'].'/view/template.php'?>