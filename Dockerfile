# 1. Définir l'image de base (environnement)
# Exemples : ubuntu:22.04, python:3.9, node:18-alpine, nginx:latest
FROM python:3.9

# 2. Créer et définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers de votre PC (dossier actuel) vers le conteneur (/app)
COPY . /app

# 4. Exécuter des commandes pour installer des dépendances (si nécessaire)
RUN pip install -r requirements.txt

# 5. Définir la commande par défaut au lancement du conteneur
CMD ["python", "main.py"]