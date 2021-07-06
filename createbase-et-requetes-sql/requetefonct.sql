select libelle_menu, lien_menu
from fonctionnalite f
join profil_fonct pf on pf.id_fonct = f.id
join profil p on pf.id_profil =  p.id 
join utilisateur u on u.id_profil = p.id
where u.id =2