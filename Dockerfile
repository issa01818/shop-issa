# Utiliser une image officielle Python
FROM python:3.10-slim

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5004
EXPOSE 5004

# Commande pour démarrer l'application
CMD ["python", "app.py"]

