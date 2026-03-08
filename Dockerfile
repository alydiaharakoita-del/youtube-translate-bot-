FROM python:3.11-slim

# Installation de ffmpeg et des dépendances système
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers de dépendances
COPY requirements.txt .

# Installation des dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code source
COPY . .

# Commande de lancement
CMD ["python", "youtube_translator_bot.py"]
