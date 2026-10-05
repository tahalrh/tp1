#!/bin/sh

# Configuration de l'identité du robot
git config --global user.name "Docker AutoSync"
git config --global user.email "bot@docker.local"

# Ajout du token à l'URL pour l'authentification
git remote set-url origin https://${GITHUB_TOKEN}@github.com/tahalrh/tp1.git

while true; do
  git add .
  # Vérifie s'il y a des changements avant de commit
  if ! git diff-index --quiet HEAD; then
    git commit -m "Mise à jour automatique via Docker"
    git push origin main
    echo "Modifications envoyées avec succès !"
  else
    echo "Aucun changement détecté."
  fi
  
  # Pause avant la prochaine vérification (3600s = 1 heure)
  sleep 3600
done