#!/bin/bash

PTF="project-template-main"

mkdir -p .github/workflows/ src/ tests/ docs/ scripts/ .git/hooks/

cp -p $PTF/hooks/commit-msg .git/hooks/commit-msg
cp -p $PTF/hooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit .git/hooks/commit-msg

cp $PTF/workflows/ci.yml .github/workflows/

touch src/main
touch tests/test_file
echo "https://www.markdownlang.com/advanced/best-practices.html" > docs/index.md

TEMPLATE="$PTF/hooks/add-git-hooks.template"
OUTPUT="scripts/add-git-hooks"
mkdir -p scripts
> "$OUTPUT"
while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
        "<commitmsg>") cat "$PTF/hooks/commit-msg" >> "$OUTPUT" ;;
        "<precommit>") cat "$PTF/hooks/pre-commit" >> "$OUTPUT" ;;
        *) echo "$line" >> "$OUTPUT" ;;
    esac
done < "$TEMPLATE"
chmod +x "$OUTPUT"

cp -p $PTF/scripts/* scripts/.
chmod +x scripts/*

cp $PTF/files/.gitignore .gitignore
cp $PTF/files/docker-compose.yml docker-compose.yml
cp $PTF/files/README.md README.md
cp $PTF/files/CONTRIBUTING.md CONTRIBUTING.md

rm -r project-template.zip project-template-main
