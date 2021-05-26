<!-- titre de la page (balise title) -->
<?php $title = "Consultation des entreprises par technologie"?>

<?php ob_start() ?>
<h2>Consultation des entreprises par technologie</h2>
<!-- code html de la page-->
<?php foreach($lesEntreprisesTechnologie AS $uneEntreprise){
    echo $uneEntreprise->nom ;
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>