# **Project_Name**

> Description rapide de ce que fait le projet et pourquoi ?

## Sommaire

- [Description](#description)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Architecture](#architecture)
- [Tests](#tests)
- [Bonus](#bonus)
- [Équipe](#équipe)

## Description
- **Année EPITECH** : ...
- **Objectif** : ...
- **Contraintes** : Language_imposé, librairies_authorisé_interdites, etc

Explication du projet.

## Installation
```bash
git clone git@github.com:ORG/REPO.git
cd REPO
make # Ou autre
```
 
## Utilisation
```bash
./nom_du_binaire [options] arguments
```

Exemples:
```bash
>>> ./nom_du_binaire [options] arguments
>>> Hello, World!
```
Ou
```bash
>>> ./nom_du_binaire [options] arguments
>>> Hello, World!
```

## Architecture
```
.
├── .git/hooks/                 # (Ces fichiers ne sont pas commits/trackés)
│   ├── commit-msg              # Vérification du nom de commit 
│   └── pre-commit              # Vérification pre-commits (Ce fichier n'est pas commit)
├── .github/workflows/ci.yml    # CI/CD Github
├── src/                        # Code source
├── tests/                      # Tests fonctionnels/unitaires
├── docs/                       # Documentation complémentaire
├── scripts/                    # Scripts
│   └── new-branch              # Script to create new git branches
│
├── .gitignore                  # Fichiers à ne pas Commit
├── docker-compose.yml          # Environnement de test Docker (Epitech)
├── README.md                   # Description rapide du projet
└── CONTRIBUTING.md             # Guide pour les contributeurs
```

## Tests
```bash
make tests_run        # C/C++
pytest --cov=.         # Python
npm test                # JS/TS
```
 
## Bonus
Liste des features bonus implémentées, avec un lien vers le fichier/la fonction concernée.
 
## Équipe
| Nom | Rôle | GitHub |
|---|---|---|
| ... | ... | @... |
