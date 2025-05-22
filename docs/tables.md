## Structure de la base de données MySQL

---

### semestres

| Champ    | Type        | Clé       | Description                  |
|----------|-------------|-----------|------------------------------|
| id       | INT         | PK        | Identifiant                  |
| code     | VARCHAR(50) |           | Code du semestre             |
| nom      | VARCHAR(100)|           | Nom complet du semestre      |

### blocs

| Champ       | Type        | Clé       | Description                                  |
|-------------|-------------|-----------|----------------------------------------------|
| id          | INT         | PK        | Identifiant                                  |
| code        | VARCHAR(50) |           | Code du bloc de compétences                  |
| nom         | VARCHAR(100)|           | Nom du bloc de compétences                   |
| semestre_id | INT         | FK        | Référence vers `semestres(id)`               |

### competences

| Champ     | Type        | Clé       | Description                                  |
|-----------|-------------|-----------|----------------------------------------------|
| id        | INT         | PK        | Identifiant                                  |
| code      | VARCHAR(50) |           | Code de la compétence                        |
| nom       | VARCHAR(100)|           | Nom de la compétence                         |
| bloc_id   | INT         | FK        | Référence vers `blocs_competences(id)`       |

### competences_niveaux

| Champ         | Type        | Clé       | Description                                |
|---------------|-------------|-----------|--------------------------------------------|
| id            | INT         | PK        | Identifiant                                |
| competence_id | INT         | FK        | Référence vers `competences(id)`           |

---

### Relation entre les tables

- semestres ──▶ blocs
- blocs ──▶ competences
- competences ──▶ niveau
