#!/usr/bin/env bash
set -e

# Log function
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# Installer Bun
log "Téléchargement et installation de Bun..."
curl -fsSL https://bun.sh/install | bash

# Vérifier que Bun est installé
if ! command -v bun &> /dev/null; then
    log "Erreur : Bun n'a pas pu être installé."
    exit 1
else
    log "Bun installé avec succès."
fi

export PATH="$HOME/.bun/bin:$PATH"

# Afficher la version de Bun
log "Version de Bun :"
bun --version

# Installer les dépendances avec Bun
log "Installation des dépendances avec Bun..."
bun install --frozen-lockfile

# Vérifier si l'installation des dépendances a réussi
if [ $? -ne 0 ]; then
    log "Erreur : L'installation des dépendances avec Bun a échoué."
    exit 1
else
    log "Installation des dépendances réussie."
fi

# Construire les fichiers CSS avec Tailwind
log "Construction des fichiers CSS avec Tailwind..."
bun run build:css

# Vérifier si la construction des fichiers CSS a réussi
if [ $? -ne 0 ]; then
    log "Erreur : La construction des fichiers CSS avec Tailwind a échoué."
    exit 1
else
    log "Construction des fichiers CSS réussie."
fi

log "Le script de build s'est terminé avec succès."
