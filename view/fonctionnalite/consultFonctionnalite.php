<?php
$title = "Consultation des fonctionnalités";
ob_start();
require_once('model/FonctionnaliteManager.php');
?>
<section class="contact">
    <h2>Consultation des fonctionnalités</h2>
    <div class="sec">

        <table>
            <tr>
                <th scope="col">Nom de la fonction</th>
                <th scope="col">Script de la fonction</th>
                <th scope="col">Modifier</th>
            </tr>
            <?php
            foreach ($consultFonction as $enreg) {

                echo "<tr>
                        <td>$enreg->libelle</td>
                        <td>$enreg->nom_script</td>
                        <td>     
                            <a href='index.php?action=modifFonctionnaliteForm&id=$enreg->id'>
                                <input type='button' value='Modifier'>
                            </a>
                        </td> 
                    </tr>";
            } ?>
        </table>
    </div>
</section>

<?php $content = ob_get_clean();  ?>
<?php require("view/template.php") ?>