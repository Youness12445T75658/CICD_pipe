# ÉTAPE 1 : Build
FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# ÉTAPE 2 : Runtime (Image finale)
FROM node:20-alpine
WORKDIR /app
# On ne copie que les fichiers nécessaires de l'étape de build
COPY --from=build /app/package*.json ./
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/src ./src 

HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost:3000/ || exit 1

USER node
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



