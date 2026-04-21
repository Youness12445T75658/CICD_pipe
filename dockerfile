# ÉTAPE 1 : Build
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
# Le "|| true" permet de ne pas planter si le dossier est vide
RUN npm install || true
COPY . .

# ÉTAPE 2 : Runtime
FROM node:20-alpine
WORKDIR /app

# On copie TOUT ce qui a été préparé dans l'étape build
# C'est beaucoup plus sûr que de copier dossier par dossier
COPY --from=build /app .

# Sécurité
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



