<!-- titre de la page (balise title) -->
<?php $title = "Liste des conventions non signées"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php
    //traitement
    if($lesConvsNonSignees->rowCount () == 0){
        echo ("Aucune horaire_ouverture n'a été enregistrée");
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
        foreach($lesConvsNonSignees as $ConvsNonSignees){
            echo "<strong><tr><td>$ConvsNonSignees->nom $ConvsNonSignees->prenom</td><td>$ConvsNonSignees->entreprise_nom</td></tr>";
        }
    }
?>
</table>
}?>



<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>