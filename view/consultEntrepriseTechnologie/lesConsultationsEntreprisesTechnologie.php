<!-- titre de la page (balise title) -->
<?php $title = "Consultation des entreprises par technologie"?>

<?php ob_start() ?>

<!-- code html de la page-->
<?php foreach($lesConsultationsEntreprisesTechnologieManager AS $uneConsultationEntrepriseStage){
    //traitement
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>