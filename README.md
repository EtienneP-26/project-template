# **project-template**

> Template pour mes projets personnels et mes projets EPITECH.

## Sommaire

- [Description](#description)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Architecture](#architecture)
- [Équipe](#équipe)

## Description
- **Objectif** : Avoir un repo github propre rapidement.

Le but est d'avoir rapidement un repo pret à être utilisé et avoir une architecture propre au debut de chaque projet.

## Installation
Dans le repository voulu:
```bash
curl -L -o project-template.zip 
unzip project-template.zip
chmod +x create-work-env.sh
```
 
## Utilisation
```bash
./create-work-env.sh
```
Va créer les differents fichiers, ajouter permissions néccessaires et nettoyer ce qu'il n'y a plus besoin.

## Architecture

```
.
├── files/
│   ├── .gitignore
│   ├── README.md
│   ├── CONTRIBUTING.md
│   └── docker-compose.yml
├── hooks/
│   ├── commit-msg
│   └── pre-commit
├── scripts/
│   ├── add-git-hooks
│   └── 
├── workflows/
│   └── ci.yml
│
├── create-work-env.sh    # Script de mise en place du repo
└── README.md
```

Après l'execution du script:
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
│
├── .gitignore                  # Fichiers à ne pas Commit
├── docker-compose.yml          # Environnement de test Docker (Epitech)
├── README.md                   # Description rapide du projet
└── CONTRIBUTING.md             # Guide pour les contributeurs
```

## Équipe
| Nom | Rôle | GitHub |
|---|---|---|
| Etienne | Dévelloppeur | @EtienneP-26 |
