<!-- titre de la page (balise title) -->
<?php $title = "Ajout d'une demande de remboursement" ?>
<?php ob_start() ?>
<!-- code html de la page-->
<h1 class="text-center">Ajout d'une demande de remboursement</h1>
<form action="index.php?action=ajoutDemRembTrait" method='post'>
    <div class="row mb-3">
        <label for="montant" class="col-lg-4 col-form-label">Montant du remboursement</label>
        <div class="col-sm-12">
            <input type="text" class="form-control" name="montant" value="<?php if (isset($_POST['montant']) == true) echo $_POST['montant']; ?>" id="montant">
        </div>
    </div>
    <div class="row mb-3">
        <label for="comment" class="col-lg-4 col-form-label">Commentaire</label>
        <div class="col-sm-12">
            <input type="text" class="form-control" name="commentaire" id="comment">
        </div>
    </div>
    <div class="row mb-3">
        <label for="typeFrais" class="col-lg-4 col-form-label">Type de frais</label>
        <div class="col-sm-12">
            <!-- liste déroulante -->
            <select class="form-select form-select-md" name="typeFrais">
                <?php foreach ($lesTypesFrais as $unType) {
                    if (isset($_POST['typeFrais']) == true && $_POST['typeFrais'] == $unType)
                        echo ("<option selected value=$unType->id>$unType->libelle</option>");
                    else
                        echo ("<option value=$unType->id>$unType->libelle</option>");
                } ?>
            </select>
        </div>
    </div>


    <div class="p-3 mb-4">
        <div class="text-center">
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </div>
    </div>
</form>
<?php
if (isset($msg)) echo $msg;
?>
<!-- affichage de la page -->
<?php $content = ob_get_clean(); ?>
<?php require("view/template.php") ?>