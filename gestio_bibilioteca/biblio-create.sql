DROP DATABASE IF EXISTS biblio;
CREATE DATABASE IF NOT EXISTS biblio;

CREATE TABLE Autor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(24),
    cognom VARCHAR(24)
);

CREATE TABLE Llibre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titol VARCHAR(64),
    anyPublicacio DATE,
    autorId INT,
    FOREIGN KEY (autorId) REFERENCES Autor(id)
);

INSERT INTO Autor(nom, cognom) VALUES('Carlos', 'Bonilla');
INSERT INTO Autor(nom, cognom) VALUES('Izan', 'Lozano');

INSERT INTO Llibre(titol, anyPublicacio, autorId) 
VALUES ('Harry Potter', '2012-04-12', 1)
INSERT INTO Llibre(titol, anyPublicacio, autorId) 
VALUES ('Los Pitufos', '2015-09-01', 2)

