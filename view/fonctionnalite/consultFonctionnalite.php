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
            </tr>
            <?php
            foreach ($consultFonction as $enreg) {

                echo "<tr>
                        <td>$enreg->libelle</td>
                        <td>$enreg->nom_script</td>
                    </tr>";
            } ?>
        </table>
    </div>
</section>

<?php $content = ob_get_clean();  ?>
<?php require("view/template.php") ?>