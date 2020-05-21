CREATE TABLE `client` (
  `id_client` int(10) PRIMARY KEY AUTO_INCREMENT,
  `nom` varchar(25),
  `prenom` varchar(24),
  `login` varchar(25),
  `password` char(40)
);

CREATE TABLE `pizza` (
  `id_pizza` int(2) PRIMARY KEY AUTO_INCREMENT,
  `nom_pizza` varchar(20),
  `description` varchar(20),
  `prix_unite` float(2)
);

CREATE TABLE `produit` (
  `id_produit` int(2) PRIMARY KEY AUTO_INCREMENT,
  `nom_produit` varchar(20)
);

CREATE TABLE `facture` (
  `numero_facture` int(10) PRIMARY KEY,
  `id_TVA` int(1),
  `id_point_de_vente` int(2),
  `date_facture` date,
  `montant_HT` float(4,2),
  `montant_TTC` float(4,2),
  `avoir` float(4,2)
);

CREATE TABLE `TVA` (
  `id_TVA` int(1) PRIMARY KEY AUTO_INCREMENT,
  `date_TVA` date,
  `typeTVA` float(4,2)
);

CREATE TABLE `panier` (
  `id_commande` int(10),
  `id_pizza` int(2),
  `quantite` int(3)
);

CREATE TABLE `profil_utilisateur` (
  `id_profil` int(1) PRIMARY KEY AUTO_INCREMENT,
  `theme` varchar(10),
  `admin` boolean
);

CREATE TABLE `point_de_vente` (
  `id_point_de_vente` int(2) PRIMARY KEY AUTO_INCREMENT,
  `nom_point_de_vente` varchar(25)
);

CREATE TABLE `adresse` (
  `id_adresse` int(10) PRIMARY KEY AUTO_INCREMENT,
  `id_client` int(10),
  `id_point_de_vente` int(2),
  `numero_rue` int(4),
  `rue` varchar(25),
  `ville` varchar(25),
  `cp` int(5)
);

CREATE TABLE `telephone` (
  `id_telephone` int(10) PRIMARY KEY AUTO_INCREMENT,
  `id_client` int(10),
  `id_point_de_vente` int(2),
  `numero_telephone` int(10)
);

CREATE TABLE `composition` (
  `id_pizza` int(2),
  `id_produit` int(2),
  `quantite` int(3),
  `unite` varchar(10)
);

CREATE TABLE `stock` (
  `id_produit` int(2),
  `id_point_de_vente` int(2),
  `quantite` int(3),
  `unite` varchar(10)
);

CREATE TABLE `salarie` (
  `id_salarie` int(2) PRIMARY KEY AUTO_INCREMENT,
  `id_point_de_vente` int(2),
  `id_profil` int(2),
  `nom` varchar(25),
  `prenom` varchar(25),
  `login` varchar(25),
  `password` char(40)
);

CREATE TABLE `commande` (
  `id_commande` int(10) UNIQUE PRIMARY KEY AUTO_INCREMENT,
  `numero_facture` int(5),
  `id_point_de_vente` int(2),
  `id_client` int(10),
  `date_commande` date,
  `status` varchar(10),
  `type_commande` varchar(10),
  `type_paiement` varchar(10)
);

ALTER TABLE `commande` ADD FOREIGN KEY (`numero_facture`) REFERENCES `facture` (`numero_facture`);

ALTER TABLE `facture` ADD FOREIGN KEY (`id_TVA`) REFERENCES `TVA` (`id_TVA`);

ALTER TABLE `panier` ADD FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`);

ALTER TABLE `panier` ADD FOREIGN KEY (`id_pizza`) REFERENCES `pizza` (`id_pizza`);

ALTER TABLE `adresse` ADD FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

ALTER TABLE `adresse` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `telephone` ADD FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

ALTER TABLE `commande` ADD FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

ALTER TABLE `telephone` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `composition` ADD FOREIGN KEY (`id_pizza`) REFERENCES `pizza` (`id_pizza`);

ALTER TABLE `composition` ADD FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

ALTER TABLE `stock` ADD FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

ALTER TABLE `stock` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `salarie` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `facture` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `commande` ADD FOREIGN KEY (`id_point_de_vente`) REFERENCES `point_de_vente` (`id_point_de_vente`);

ALTER TABLE `salarie` ADD FOREIGN KEY (`id_profil`) REFERENCES `profil_utilisateur` (`id_profil`);
