<!-- titre de la page (balise title) -->
<?php $title = "Consultation des entreprises par technologie"?>

<?php ob_start() ?>
<h2>Consultation des entreprises par technologie</h2>
<!-- code html de la page-->
<?php foreach($lesEntreprisesTechnologie AS $uneEntreprise){
    echo "Adresse de l'entreprise : <br/>";
    echo $uneEntreprise->rue;
    echo '<br/>';
    echo $uneEntreprise->codepostal;
    echo ', ';
    echo $uneEntreprise->ville;
    echo '<br/>';
    echo $uneEntreprise->entreprise;  
    echo'<br/> technologie utilisé : ';
    echo $uneEntreprise->techno;
}?>


<!-- affichage de la page -->
<?php $content = ob_get_clean();?>
<?php require("view/template.php")?>