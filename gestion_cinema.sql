CREATE DATABASE IF NOT EXISTS gestion_cinema CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE gestion_cinema;

CREATE USER 'Michal'@'localhost' IDENTIFIED BY '$2y$10$ATpNhugl69dcEPcGR9lQquw4DFUlQK6VAkE9ySRG0MKaw6VDt9412';
CREATE USER 'Roxanna'@'localhost' IDENTIFIED BY '$2y$10$HTImsSLiBr9sA.ZcUOooNu3FhGkvWKjnql8GdZE1x4cuTgfHgPIbe';
CREATE USER 'Gael'@'localhost' IDENTIFIED BY '$2y$10$dBmLTgEV94tuzNH8ko7uhOvaKNnNHuz9Sjzmndl.XeoXKkAl2jkT.';
CREATE USER 'Cleopatra'@'localhost' IDENTIFIED BY '$2y$10$zwlXIFtMBxVNRQnuOTy9TeTtjC1JXq448856MAAqsAyA78oJFmguy';
CREATE USER 'Weider'@'localhost' IDENTIFIED BY '$2y$10$PbGg2/ZLK9NozXeZIKtDzeocY0fsN//3F9/FKzH8RCfHQucbM6KAm';

GRANT ALL PRIVILEGES ON cinema TO 'Michal'@'localhost';
GRANT ALL PRIVILEGES ON gestion_cinema.*  TO 'Roxanna'@'localhost';
GRANT ALL PRIVILEGES ON gestion_cinema.* TO 'Gael'@'localhost';
GRANT ALL PRIVILEGES ON cinema TO 'Cleopatra'@'localhost';
GRANT ALL PRIVILEGES ON cinema TO 'Weider'@'localhost';


CREATE TABLE IF NOT EXISTS `film` (
    `id_film` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `titre` VARCHAR (50) NOT NULL,
    `descr` TEXT NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    film (titre, descr)
values
    (
        'Terraferma',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

insert into
    film (titre, descr)
values
    (
        'Welcome to the Sticks',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

insert into
    film (titre, descr)
values
    (
        'Wyoming Renegades',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

insert into
    film (titre, descr)
values
    (
        'Harvard Beats Yale 29-29',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

insert into
    film (titre, descr)
values
    (
        'Crazy Mama',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

insert into
    film (titre, descr)
values
    (
        'Personal Velocity',
        'Lorem ipsum dolor sit amet. Cum repellendus eaque et harum doloremque est magnam ullam est omnis incidunt et facere voluptatem et laborum pariatur ut voluptates mollitia. In nemo magnam et officia perferendis nam molestias beatae ut velit sequi qui sint odio. Et nobis Quis aut velit molestias et consequatur nesciunt? Ea dignissimos voluptas ea ullam dolor eos nobis porro eum numquam magni.'
    );

CREATE TABLE IF NOT EXISTS `paiement` (
    `id_paiement` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `mode` VARCHAR (50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    paiement (mode)
values
    ('En ligne');

insert into
    paiement (mode)
values
    ('Sur place');

CREATE TABLE IF NOT EXISTS `tarif` (
    `id_tarif` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `nom` VARCHAR (50) NOT NULL,
    `prix` DECIMAL (5, 2) NOT NULL,
    `descr` TEXT NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    tarif(nom, prix, descr)
values
    (
        'Plein Tarif',
        9.20,
        'Prix plein tarif, tout public'
    );

insert into
    tarif(nom, prix, descr)
values
    (
        'Etudiant',
        7.60,
        'Prix étudiant, sur présentation de la carte étudiante'
    );

insert into
    tarif(nom, prix, descr)
values
    (
        'Moins de 14 ans',
        5.90,
        'Prix moins de 14 ans, justificatif obligatoire'
    );

CREATE TABLE IF NOT EXISTS `spectateur` (
    `id_spectateur` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `date_de_naissance` DATE NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    spectateur (date_de_naissance)
values
    ('1990-01-01');

insert into
    spectateur (date_de_naissance)
values
    ('1999-09-10');

insert into
    spectateur (date_de_naissance)
values
    ('1990-01-02');

insert into
    spectateur (date_de_naissance)
values
    ('1990-07-30');

insert into
    spectateur (date_de_naissance)
values
    ('1990-05-07');

insert into
    spectateur (date_de_naissance)
values
    ('1990-11-22');

CREATE TABLE IF NOT EXISTS `administrateur` (
    `id_admin` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `pseudo` VARCHAR (50) NOT NULL,
    `email` VARCHAR (50) NOT NULL,
    `mot_de_passe` VARCHAR (50) NOT NULL,
    `super_admin` BOOLEAN NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    administrateur (pseudo, email, mot_de_passe, super_admin)
values
    (
        'Michal',
        'mkaiser0@dyndns.org',
        '$2y$10$ATpNhugl69dcEPcGR9lQquw4DFUlQK6VAkE9ySRG0MKaw6VDt9412',
        false
    );

insert into
    administrateur (pseudo, email, mot_de_passe, super_admin)
values
    (
        'Roxanna',
        'rniland1@multiply.com',
        '$2y$10$HTImsSLiBr9sA.ZcUOooNu3FhGkvWKjnql8GdZE1x4cuTgfHgPIbe',
        true
    );

insert into
    administrateur (pseudo, email, mot_de_passe, super_admin)
values
    (
        'Gael',
        'gducaen2@phpbb.com',
        '$2y$10$dBmLTgEV94tuzNH8ko7uhOvaKNnNHuz9Sjzmndl.XeoXKkAl2jkT.',
        true
    );

insert into
    administrateur (pseudo, email, mot_de_passe, super_admin)
values
    (
        'Cleopatra',
        'cdwerryhouse3@bizjournals.com',
        '$2y$10$zwlXIFtMBxVNRQnuOTy9TeTtjC1JXq448856MAAqsAyA78oJFmguy',
        false
    );

insert into
    administrateur (pseudo, email, mot_de_passe, super_admin)
values
    (
        'Weider',
        'wherity4@elegantthemes.com',
        '$2y$10$PbGg2/ZLK9NozXeZIKtDzeocY0fsN//3F9/FKzH8RCfHQucbM6KAm',
        false
    );

CREATE TABLE IF NOT EXISTS `cinema` (
    `id_cinema` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `nom` VARCHAR (50) NOT NULL,
    `adresse` VARCHAR (50) NOT NULL,
    `id_admin` INTEGER NOT NULL,
    FOREIGN KEY (id_admin) REFERENCES `administrateur` (`id_admin`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    cinema (nom, adresse, id_admin)
values
    (
        'Cinéma Le Grand Rex',
        '1 Rue du Cinéma, 75001 Paris',
        1
    );

insert into
    cinema (nom, adresse, id_admin)
values
    ('Mega CGR', 'Zone Nord, 72000 Le Mans', 4);

insert into
    cinema (nom, adresse, id_admin)
values
    (
        'Cinéville',
        'Rue Marie De Kerstrat, 29000 Quimper',
        5
    );

CREATE TABLE IF NOT EXISTS `salle` (
    `id_salle` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `nom` VARCHAR (50) NOT NULL,
    `nb_places` INTEGER NOT NULL,
    `id_cinema` INTEGER NOT NULL,
    FOREIGN KEY (`id_cinema`) REFERENCES `cinema` (`id_cinema`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 1', 100, 1);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 2', 90, 1);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 3', 120, 1);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 4', 50, 1);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 5', 150, 1);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 1', 100, 2);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 2', 90, 2);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 3', 120, 2);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 4', 80, 2);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 1', 110, 3);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 2', 100, 3);

insert into
    salle (nom, nb_places, id_cinema)
values
    ('Salle 3', 150, 3);

CREATE TABLE IF NOT EXISTS `seance` (
    `id_seance` INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `date` DATE NOT NULL,
    `id_paiement` INTEGER NOT NULL,
    FOREIGN KEY (`id_paiement`) REFERENCES `paiement` (`id_paiement`),
    `id_film` INTEGER NOT NULL,
    FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
    `id_salle` INTEGER NOT NULL,
    FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`),
    `id_tarif` INTEGER NOT NULL,
    FOREIGN KEY (`id_tarif`) REFERENCES `tarif` (`id_tarif`),
    `id_spectateur` INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (`id_spectateur`) REFERENCES `spectateur` (`id_spectateur`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-16', 1, 1, 1, 1, 1);

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-14', 2, 2, 2, 2, 2);

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-15', 1, 3, 3, 3, 3);

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-15', 2, 4, 4, 1, 4);

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-16', 1, 5, 5, 2, 5);

insert into
    seance (
        date,
        id_paiement,
        id_film,
        id_salle,
        id_tarif,
        id_spectateur
    )
values
    ('2020-12-15', 1, 6, 6, 3, 6);