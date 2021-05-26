<!-- titre de la page (balise title) -->
<?php $title = "Liste des conventions non signées"?>

<?php ob_start() ?>
<!-- code html de la page-->
<h1>Les Conventions de stages qui ne sont pas signées</h1>
<?php foreach($lesConvsNonSignees as $convsNonSignees){
    //traitement
    if($lesConvsNonSignees->rowCount () == 0){
        echo ("Aucune Conventions non signées n'a été enregistrée");
    }else{
        //on lit le tableau retourné et pour chaque enregistrement, on affiche le nom et la description
        echo '<table>
        <tr>
            <th>
                Elèves
            </th>
            <th>
                Entreprise
            </th>
        </tr>';
            echo "<strong><tr><td>$convsNonSignees->nom</td><td>$convsNonSignees->prenom</td></tr>";
    }
}
?>
</table>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require $_SERVER['DOCUMENT_ROOT'].'/view/template.php'?>