# On part d'une image légère de Node.js
FROM node:20-alpine

# On définit le dossier de travail
WORKDIR /app

# On copie les fichiers de dépendances
COPY package*.json ./

# On installe uniquement les dépendances de production
RUN npm install --only=production

# On copie le reste du code
COPY . .

# L'application écoute sur le port 3000
EXPOSE 3000

# Commande pour démarrer l'app
CMD ["npm", "start"]
