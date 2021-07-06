<?php
$title = "Consultation des professeurs";
ob_start();
require_once('model/ProfesseurManager.php');
?>
<section class="contact">
    <h2>Consultation des professeurs</h2>
    <div class="sec">

        <table>
            <tr>
                <th scope="col">Nom </th>
                <th scope="col">prénom</th>
            </tr>
            <?php
            foreach ($lesProfs as $enreg) {

                echo "<tr>
                        <td>$enreg->nom</td>
                        <td>$enreg->nom_prenom</td>
                    </tr>";
            } ?>
        </table>
    </div>
</section>

<?php $content = ob_get_clean();  ?>
<?php require("view/template.php") ?>