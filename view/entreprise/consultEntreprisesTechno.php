<!-- titre de la page (balise title) -->
<?php $title = "Consultation des entreprises par technologie"?>

<?php ob_start() ?>
<h2>Consultation des entreprises par technologie</h2>
<!-- code html de la page-->



<?php 
    echo '<table>
        <tr>
            <th>Entreprise</th>
            <th>Adresse</th>
            <th>Ville</th>
            <th>Technologie</th>
        </tr>
    ';
foreach($lesEntreprisesTechnologie AS $uneEntreprise){  
    echo "<tr><td>$uneEntreprise->entreprise</td><td>$uneEntreprise->rue</td><td>$uneEntreprise->ville($uneEntreprise->codepostal)</td><td>$uneEntreprise->techno</td></tr>";
    }
}
echo "</table>";
?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>