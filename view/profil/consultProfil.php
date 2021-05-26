<?php
$title = "Consultation des profils";
ob_start();
require_once('model/ProfilManager.php');
?>
<section class="contact">
    <h2>Consultation des Profils</h2>
    <div class="sec">

        <table>
            <tr>
                <th scope="col">Nom du profil</th>

            </tr>
            <?php

            foreach ($GetProfil as $enreg) {

                echo "<tr>
                        <td>$enreg->libelle</td>
                        
                    </tr>";
            } ?>
        </table>
    </div>
</section>

<?php $content = ob_get_clean();  ?>
<?php require("view/template.php") ?>