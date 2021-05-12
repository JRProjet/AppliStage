<!-- titre de la page (balise title) -->
<?php $title = "Liste des conventions non signées"?>

<?php ob_start() ?>
<!-- code html de la page-->
<h1>Les Conventions de stages qui ne sont pas signées</h1>
<?php foreach($lesConvsNonSignees as $ConvsNonSignees){
    //traitement
    if($lesConvsNonSignees->rowCount () == 0){
        echo ("Aucune Conventions non signées n'a été enregistrée");
    }else{
        //on lit le tableau retourné et pour chaque enregistrement, on affiche le nom et la description
        echo '<table>
        <tr>
            <th>
                élèves
            </th>
            <th>
                entreprise
            </th>
            <th>
                Signées Conventions
            </th>
        </tr>';
            echo "<strong><tr><td>$ConvsNonSignees->nom</td><td>$ConvsNonSignees->prenom</td><td>$ConvsNonSignees->entreprise_nom</td></tr>";
    }
}
?>
</table>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>