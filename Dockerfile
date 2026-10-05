# 1. Image de base : serveur web Nginx leger sous Alpine Linux
FROM nginx:alpine

# 2. Copier les fichiers du site web (HTML, CSS, JS) dans le repertoire de Nginx
COPY . /usr/share/nginx/html

# 3. Informer Docker que le conteneur ecoute sur le port 80
EXPOSE 80

# 4. Lancer Nginx au premier plan pour maintenir le conteneur actif
CMD ["nginx", "-g", "daemon off;"]