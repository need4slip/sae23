## Ajouter des valeurs à la base de données

---

### Ajout dans semestre

```
INSERT INTO semestres (code, nom)

VALUES ('CODE_SEMESTRE', 'NOM_SEMESTRE');
```

### Ajout dans blocs

```
INSERT INTO blocs_competences (code, nom, semestre_id)

VALUES ('CODE_BLOC', 'NOM_BLOC', SEMESTRE_ID);
```

### Ajout dans competences

```
INSERT INTO competences (code, nom, bloc_id)

VALUES ('CODE_COMPETENCE', 'NOM_COMPETENCE', BLOC_ID);
```

### Ajout dans competences_niveaux

les différents niveaux et leurs id disponibles sont :

- id 1 : 'Non acquis'

- id 2 : 'Acquisition en cours'

- id 3 : 'Presque acquis'

- id 4 : 'Acquis'

- id 5 : 'Expert'


```
INSERT INTO competences_niveaux (competence_id, niveau_id)

VALUES (COMPETENCE_ID, NIVEAU_ID);
```
