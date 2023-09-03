#!/bin/sh

git fetch origin "$GITHUB_BASE_REF:$GITHUB_BASE_REF"

changed_files=$(git diff --name-only "$GITHUB_BASE_REF" -- 'app/*.py')

printf "\nFiles linted:\n$changed_files\n\n"

echo "$changed_files" | xargs -r pylint --rcfile="$GITHUB_ACTION_PATH/.pylintrc"
