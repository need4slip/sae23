CREATE TABLE semestres (
    id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE blocs (
    id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(100) NOT NULL,
    semestre_id INT NOT NULL,
    FOREIGN KEY (semestre_id) REFERENCES semestres(id) ON DELETE CASCADE
);

CREATE TABLE competences (
    id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(255) NOT NULL,
    bloc_id INT NOT NULL,
    FOREIGN KEY (bloc_id) REFERENCES blocs(id) ON DELETE CASCADE
);

CREATE TABLE niveaux (
    id SERIAL PRIMARY KEY,
    niveau VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE competences_niveaux (
    id SERIAL PRIMARY KEY,
    competence_id INT NOT NULL,
    niveau_id INT NOT NULL,
    date_evaluation DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (competence_id) REFERENCES competences(id) ON DELETE CASCADE,
    FOREIGN KEY (niveau_id) REFERENCES niveaux(id)
);

INSERT INTO niveaux (niveau) VALUES
('Non acquis'),
('Acquisition en cours'),
('Presque acquis'),
('Acquis'),
('Expert');
