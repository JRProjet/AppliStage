<?php 
$title = "Ajout d'une fonctionnalite";
ob_start();
require_once('model/FonctionnaliteManager.php');  
include $_SERVER['DOCUMENT_ROOT'] . "/include/connexion_bd.php";
try {
    $lesEnregs = $bdd->query("select id, libelle, nom_script from fonctionnalite;");
} catch (PDOException $e) {
    die("Err BDselect : erreur de lecture table horaire_ouverture dans index.php<br>Message d'erreur :" . $e->getMessage());
}
if ($lesEnregs->rowCount() == 0) {
    echo ("Aucune valeur n'a été enregistré");
} else {
    ?>
    <section class="contact">
		<h2>Consultation des fonctionnalité</h2>
		<div class="sec">
		
		<table>
			<tr>
				<th scope="col">Nom de la fonction</th>
				<th scope="col">Script de la fonction</th>	
            </tr>  
			<?php
                foreach ($lesEnregs as $enreg) {
                    echo "<tr>
                        <td>$enreg->libelle</td>
                        <td>$enreg->nom_script</td>
                    </tr>";
                }		
                
            ?>
		</table>
		</div>
	</section>
<?php } ?>
<?php $content = ob_get_clean();  ?>
<?php require("view/template.php")?>
