# ÉTAPE 1 : Build
FROM node:20-alpine AS build
WORKDIR /app
# On copie les fichiers de config
COPY package*.json ./
RUN npm install
# On copie tout le reste du code qui est à la racine
COPY . .

# ÉTAPE 2 : Image finale (Runtime)
FROM node:20-alpine
WORKDIR /app

# On récupère les dossiers essentiels du build
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package*.json ./
# On copie tous les fichiers de l'étape build vers ici
COPY --from=build /app ./

# Sécurité : on utilise l'utilisateur 'node' déjà présent dans l'image alpine
USER node

EXPOSE 3000
CMD ["npm", "start"]













# On part d'une image légère de Node.js
#FROM node:20-alpine

# On définit le dossier de travail
#WORKDIR /app

# On copie les fichiers de dépendances
#COPY package*.json ./

# On installe uniquement les dépendances de production
#RUN npm install --only=production

# On copie le reste du code
#COPY . .

# L'application écoute sur le port 3000
#EXPOSE 3000

# Commande pour démarrer l'app
#CMD ["npm", "start"]



