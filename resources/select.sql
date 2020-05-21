-- select produit quantite par point de vente
select 
    produit.nom_produit, stock.id_point_de_vente, stock.quantite, stock.unite 
from produit 
right join stock 
on produit.id_produit = stock.id_produit ;


--- list stock par point de vente
SELECT
    produit.nom_produit,
    stock.quantite,
    stock.unite,
    point_de_vente.nom_point_de_vente
FROM produit
JOIN stock
    ON produit.id_produit = stock.id_point_de_vente
JOIN point_de_vente
    ON stock.id_point_de_vente = point_de_vente.id_point_de_vente

--- list commande par client + montant

SELECT
    client.nom,
    client.prenom,
    commande.id_commande,
    facture.montant_TTC
FROM client
JOIN commande
    ON client.id_commande = commande.id_commande
JOIN facture
    ON commande.numero_facture = facture.numero_facture;

--- list commande pour un client + montant

SELECT
    client.nom,
    client.prenom,
    commande.id_commande,
    facture.montant_TTC
FROM client
JOIN commande
    ON client.id_commande = commande.id_commande
JOIN facture
    ON commande.numero_facture = facture.numero_facture

WHERE
    client.nom like '%barat%';

--- count des commandes par status
select status, count(*) from commande group by status;


--- list commande pour un point de vente

SELECT
    client.nom,
    client.prenom,
    commande.id_commande,
    point_de_vente.nom_point_de_vente
FROM client
JOIN commande
    ON commande.id_client = client.id_client
JOIN point_de_vente
    ON point_de_vente.id_point_de_vente = commande.id_point_de_vente
where point_de_vente.nom_point_de_vente = 'montreuil';

--- liste facture pour un point de vente
SELECT
    facture.numero_facture,
    point_de_vente.nom_point_de_vente,
    facture.montant_TTC
FROM facture
JOIN point_de_vente
    ON point_de_vente.id_point_de_vente = facture.id_point_de_vente
where point_de_vente.nom_point_de_vente = 'paris9';