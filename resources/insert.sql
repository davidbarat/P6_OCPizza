insert into produit
    (nom_produit)
values
    ('merguez');

insert into produit
    (nom_produit)
values
    ('oignons');

insert into produit
    (nom_produit)
values
    ('creme fraiche');

insert into produit
    (nom_produit)
values
    ('sauce tomate');

insert into produit
    (nom_produit)
values
    ('lardons');

insert into produit
    (nom_produit)
values
    ('oeuf');

insert into produit
    (nom_produit)
values
    ('olives noires');

insert into produit
    (nom_produit)
values
    ('ananas');

insert into produit
    (nom_produit)
values
    ('anchois');

insert into produit
    (nom_produit)
values
    ('roquefort');

insert into produit
    (nom_produit)
values
    ('emmental');

insert into produit
    (nom_produit)
values
    ('chevre');
--

insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('orientale', 'merguez oeuf poivron', 12.30);


insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('reine', 'champignons olives', 12);

insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('marguarita', 'sauce tomate fromage', 10.50);

insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('hawai', 'ananas piment', 12.50);

insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('calzone', 'chausson', 14.00);

insert into pizza
    (nom_pizza, description, prix_unite)
values
    ('4 fromages', 'tout fromage', 13.00);

-- point de vente

insert into point_de_vente
    (nom_point_de_vente)
values
    ('montreuil');


insert into point_de_vente
    (nom_point_de_vente)
values
    ('paris9');

insert into point_de_vente
    (nom_point_de_vente)
values
    ('la defense');

insert into point_de_vente
    (nom_point_de_vente)
values
    ('rueil');

-- profil_utilisateur
insert into profil_utilisateur
    (theme, admin)
values
    ('client', FALSE);

insert into profil_utilisateur
    (theme, admin)
values
    ('admin', TRUE);

insert into profil_utilisateur
    (theme, admin)
values
    ('livreur', FALSE);

insert into profil_utilisateur
    (theme, admin)
values
    ('pizzaoilo', FALSE);

insert into profil_utilisateur
    (theme, admin)
values
    ('manager', TRUE);


-- composition

insert into composition
    (id_pizza, id_produit, quantite, unite)
values
    (1, 1, 100, 'gramme');

insert into composition
    (id_pizza, id_produit, quantite, unite)
values
    (1, 6, 150, 'un');

insert into composition
    (id_pizza, id_produit, quantite, unite)
values
    (1, 2, 50, 'gramme');

insert into composition
    (id_pizza, id_produit, quantite, unite)
values
    (1, 4, 300, 'gramme');

insert into composition
    (id_pizza, id_produit, quantite, unite)
values
    (1, 7, 100, 'gramme');

-- TVA
insert into tva
    (date_TVA, typeTVA)
values
    (20140101, 20);

insert into tva
    (date_TVA, typeTVA)
values
    (20000101, 19.6);

insert into tva
    (date_TVA, typeTVA)
values
    (19950101, 5.5);

-- facture

insert into facture
    (numero_facture, id_TVA, id_point_de_vente, date_facture, montant_HT, montant_TTC, avoir)
values
    (0001, 1, 1, '20200514', 10, 12, NULL);

insert into facture
    (numero_facture, id_TVA, id_point_de_vente, date_facture, montant_HT, montant_TTC, avoir)
values
    (0002, 1, 2, '20200515', 20, 24, NULL);

insert into facture
    (numero_facture, id_TVA, id_point_de_vente, date_facture, montant_HT, montant_TTC, avoir)
values
    (0003, 1, 2, '20200517', 30, 36, NULL);

insert into facture
    (numero_facture, id_TVA, id_point_de_vente, date_facture, montant_HT, montant_TTC, avoir)
values
    (0004, 1, 3, '20200517', 20.83, 25, NULL);

insert into facture
    (numero_facture, id_TVA, id_point_de_vente, date_facture, montant_HT, montant_TTC, avoir)
values
    (0005, 1, 3, '20200520', 20, 24, NULL);

-- client
insert into client
    (nom, prenom, login, password)
values
    ('barat', 'david', 'dav', SHA1('supermotdepasse'));

insert into client
    (nom, prenom, login, password)
values
    ('barat', 'kevin', 'kev', SHA1('superkev'));

insert into client
    (nom, prenom, login, password)
values
    ('chirac', 'jack', 'jack75', SHA1('supermenteur'));

-- commande
insert into commande
    (numero_facture, id_point_de_vente, id_client, date_commande, status, type_commande, type_paiement)
values
    (0001, 1, 1, '20200514', 'en cours', 'sur place', 'internet');

insert into commande
    (numero_facture, id_point_de_vente, id_client, date_commande, status, type_commande, type_paiement)
values
    (0002, 2, 2, '20200515', 'terminee', 'a emporter', 'internet');


insert into commande
    (numero_facture, id_point_de_vente, id_client, date_commande, status, type_commande, type_paiement)
values
    (0003, 2, 3, '20200517', 'terminee', 'sur place', 'internet');

insert into commande
    (numero_facture, id_point_de_vente, id_client, date_commande, status, type_commande, type_paiement)
values
    (0004, 3, 1, '20200517', 'terminee', 'a emporter', 'internet');

insert into commande
    (numero_facture, id_point_de_vente, id_client, date_commande, status, type_commande, type_paiement)
values
    (0005, 3, 2, '20200520', 'annulee', 'a emporter', 'internet');



-- adresse
insert into adresse
    (id_client, id_point_de_vente, numero_rue, rue, ville, cp)
values
    (0001, NULL, 20, 'rue de la paix', 'Paris','75002');

insert into adresse
    (id_client, id_point_de_vente, numero_rue, rue, ville, cp)
values
    (0002, NULL, 15, 'rue de rivoli', 'Paris','75006');

insert into adresse
    (id_client, id_point_de_vente, numero_rue, rue, ville, cp)
values
    (0003, NULL, 1, 'code', 'Courbevoie','92000');

-- telephone
insert into telephone
    (id_client, id_point_de_vente, numero_telephone)
values
    (0001, NULL, 0176247654);

insert into telephone
    (id_client, id_point_de_vente, numero_telephone)
values
    (0002, NULL, 0176579851);

-- salarie
insert into salarie
    (id_point_de_vente, id_profil, nom, prenom, login, password)
values
    (1, 1, 'durand', 'pierre', 'pierrot', SHA1('pierre3'));

insert into salarie
    (id_point_de_vente, id_profil, nom, prenom, login, password)
values
    (1, 4, 'jean', 'pierre', 'keekoo', SHA1('keekoo03'));

insert into salarie
    (id_point_de_vente, id_profil, nom, prenom, login, password)
values
    (2, 2, 'jo', 'valerie', 'valoche', SHA1('valoche0303'));

insert into salarie
    (id_point_de_vente, id_profil, nom, prenom, login, password)
values
    (3, 3, 'mr', 'pizzaman', 'stingray', SHA1('lapuissance!'));

insert into salarie
    (id_point_de_vente, id_profil, nom, prenom, login, password)
values
    (4, 5, 'mr', 'gestion', 'fender', SHA1('comptaman1'));


-- stock

insert into stock
    (id_produit, id_point_de_vente, quantite, unite)
values
    (1, 1, 25, 'kg');

insert into stock
    (id_produit, id_point_de_vente, quantite, unite)
values
    (2, 2, 25, 'kg');

insert into stock
    (id_produit, id_point_de_vente, quantite, unite)
values
    (9, 1, 10, 'kg');

insert into stock
    (id_produit, id_point_de_vente, quantite, unite)
values
    (10, 2, 2, 'kg');


-- panier

insert into panier
    (id_commande, id_pizza, quantite)
values
    (1, 1, 2);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (1, 2, 1);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (2, 2, 2);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (3, 2, 3);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (4, 2, 1);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (4, 6, 1);

insert into panier
    (id_commande, id_pizza, quantite)
values
    (5, 2, 2);