<?php
$title = "Consultation des demandes de remboursement du délégué";
ob_start();
?>
<h2 class="text-center">Consultation des fonctionnalités</h2>
<table class="table">
    <thead>
        <tr>
            <th scope="col">date de saisie</th>
            <th scope="col">type de frais</th>
            <th scope="col">montant</th>
            <th scope="col">commentaire</th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($lesDemandes as $enreg) {
            echo "<tr>
                            <td>$enreg->date_saisie</td>
                            <td>$enreg->libelle</td>
                            <td>$enreg->montant</td>
                            <td>$enreg->commentaire</td>
                        </tr>";
        } ?>
    </tbody>
</table>
<?php $content = ob_get_clean();  ?>
<?php require("view/template.php") ?>