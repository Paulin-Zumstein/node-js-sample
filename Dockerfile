# Utiliser une image Node.js comme base
FROM node:14

# Créer le répertoire de travail de l'application
WORKDIR /app

# Copier le package.json et le package-lock.json (le cas échéant)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécute
EXPOSE 3000

# Commande pour démarrer l'application
CMD [ "npm", "start" ]
