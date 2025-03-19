create database ConstructionXpert ;
Use ConstructionXpert;
CREATE TABLE  projets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description varchar (100),
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    budget DECIMAL(15, 2) NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE table taches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    projet_id INT NOT NULL,
    description varchar (100) ,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (projet_id) REFERENCES projets(id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS ressources (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    quantite INT NOT NULL,
    fournisseur VARCHAR(100) NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE tache_ressource (
    tache_id INT NOT NULL,
    ressource_id INT NOT NULL,
    quantite INT NOT NULL,
    date_association TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (tache_id, ressource_id),
    FOREIGN KEY (tache_id) REFERENCES taches(id) ON DELETE CASCADE,
    FOREIGN KEY (ressource_id) REFERENCES ressources(id) ON DELETE CASCADE
);


INSERT INTO projets (nom, description, date_debut, date_fin,budget)
VALUES ('testproject', 'sssssssssss', '2025-03-01', '2025-12-31', '500000.00');

