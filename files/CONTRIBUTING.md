# Guide de contribution

Ce document définit les règles à suivre pour tout contributeurs.

## 1. Setup initial
Juste après avoir cloné le repo :
```bash
./scripts/add-git-hooks
```
Ça installe les hooks partagés (`commit-msg`, `pre-commit`) dans `.git/hooks/`.

## 2. Commits

Un commit = une idée. Et souvent commit, pas un seul gros.

Convention : `<type><(precision)>:< message de commit>` OU  `<type>:< message de commit>`

- `<type>` :
```
feat: Pour ajouter une fonctionnalité
fix: Pour corriger une fonctionnalité
docs: Pour ajouter ou completer de la documentation
style: Pour mettre au coding style
test: Pour ajouter des tests
refactor: Pour refaire/simplifier des fonctionnalités
ci: Pour modifier la ci
```
- `<precision>` : Où ce situe le changement fichier fonction en un seul mot. 
Elle n'est pas obligatoire et se situe dans des parenthèses.

#### Exemples:
```bash
## Ce qui fonctionne
feat: ajout de fonction HelloWorld
fix(login): erreur lors du login resolu

## Ce qui ne marche pas
Feat: ajout fonction                # Majuscule
fix{probleme}: probleme regler      # Autre que des parentheses pour la precision
feat nouvelle fonction              # Sans les ":"
style:mis au coding style           # Pas d'espace apres le ":"
```

## 3. Branches

Pour créé une branches:
```bash
./scripts/new-branch type description-courte-en-kebab-case
```

Exemple:
```bash
./scripts/new-branch feat parsing-config-file
```

Format : `<type>/<description-courte-en-kebab-case>`

Mêmes types que pour les commits : `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `ci`.

Exemples :
- `feat/parsing-config-file`
- `fix/segfault-liste-vide`
- `docs/readme-installation`

Règles :
- kebab-case uniquement : minuscules, tirets, pas d'espaces ni d'accents.
- Descrire rapidement (3-5 mots max).
- Une tache par branche si une branche doit traiter plusieurs sujets faut la subdiviser.
- `main` : toujours stable, jamais de commit direct dessus.

## 4. Pull Requests
En ouvrir une a chaque Pull d'une branche.

## 5. Avant de push
Faire des tests.

Le hook `commit-msg` vérifie automatiquement le format de ton message de commit.

Le hook `pre-commit` bloque les fichiers `.env` et les secrets détectés dans le diff.

## 6. Code review
Quand tu review une PR :
- Test en local si possible.
- Commentaire précis si probleme avec copie du message d'erreur et lignes ou fichiers.

## 7. Environnement Docker
Pour travailler/tester dans l'environnement officiel Epitech :
```bash
docker compose run --rm env
```
Ça ouvre un shell dans le container epitest, projet monté sur `/mnt/delivery`.

D'autres services pourront s'ajouter dans `docker-compose.yml` plus tard (ex: `tests`, `style`), chacun utilisable avec `docker compose run --rm <nom_du_service>`.

## 8. Communication
Discord dans le canal spécifique.
