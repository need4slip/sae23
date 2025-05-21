
# 🧠 Portfolio Dynamique avec Flask

## 🎯 Objectif du Projet

Ce projet vise à transformer un portfolio statique réalisé lors d'une précédente SAE en une application web dynamique à l'aide du framework **Flask**. L'application permet de gérer et visualiser les compétences acquises par l’étudiant, en interaction avec une base de données relationnelle.

---

## ⚙️ Fonctionnalités Principales

- 📄 **Page profil** : affichage des informations de l'étudiant, configurables via un fichier externe.
- 📊 **Page récapitulative** : vue globale des compétences acquises.
- ✅ **Formulaire dynamique** : permet de valider une compétence avec l’un des niveaux suivants :
  - Non acquis
  - En cours d'acquisition
  - Presque acquis
  - Acquis
  - Expert

---

## 🗃️ Base de Données

Le projet repose sur une base de données relationnelle (MySQL ou PostgreSQL) contenant :

- Les **semestres**
- Les **blocs de compétences** liés à chaque semestre
- Les **compétences** (apprentissages critiques) liées à chaque bloc
- Le **niveau d’acquisition** de chaque compétence

Chaque entité contient un nom, un code, et une relation vers son entité parente.

---

## 🧱 Stack Technique

- **Python 3** & **Flask**
- **MySQL** ou **PostgreSQL**
- **Jinja2** pour le templating
- **Docker** & **docker-compose** pour l’hébergement
- **HTML/CSS**, éventuellement Bootstrap ou Tailwind pour le front-end

---

## 📦 Conteneurisation avec Docker

L’application est déployée via `docker-compose` :

- 🔧 Un conteneur Flask (serveur HTTP)
- 🗃️ Un conteneur base de données (MySQL ou PostgreSQL)

---

## 📆 Planning Prévisionnel

### 🧭 Séance 1 : Démarrage du Projet
- Installation de Flask et Docker
- Analyse de l’existant (portfolio statique)
- Réorganisation du code avec les templates Flask

### 🛠️ Séance 2 : Base de Données et Modèles
- Conception du schéma relationnel
- Intégration avec SQLAlchemy ou autre ORM
- Création des modèles

### 🔐 Séance 3 : Authentification et Formulaire
- Mise en place d’un espace protégé
- Création du formulaire d’ajout de compétences
- Validation des données

### 🖥️ Séance 4 : Interface de Gestion
- Affichage dynamique des compétences
- Suppression de compétences
- Finalisation du Dockerfile et de `docker-compose.yml`

### 🧪 Séance 5 : Préparation à l’Évaluation
- Démo du site, revue du code, test complet
- Répétition de la présentation orale

---

## 📝 Barème d’Évaluation

| Critère | Points |
|--------|--------|
| **Structure & Organisation** | 20 |
| **Base de Données & Intégration** | 20 |
| **Fonctionnalités** | 30 |
| **Hébergement Docker** | 10 |
| **Sécurité** | 10 |
| **Présentation & Démo** | 10 |
| **Total** | **100** |

---

## 🧑‍💻 Auteur

Projet réalisé par Benjamin Petillon et Gabin Suel, R&T 1 Groupe A2
