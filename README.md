# Bot Telegram de Transcription et Traduction YouTube

Ce bot Telegram permet de transcrire l'audio de vidéos YouTube et de traduire la transcription en Français, Arabe ou Anglais.

## Fonctionnalités

*   Accepte un lien YouTube.
*   Extrait et transcrit l'audio de la vidéo YouTube.
*   Propose à l'utilisateur de choisir la langue de traduction (FR, AR, EN).
*   Traduit la transcription dans la langue choisie.
*   Renvoie le texte traduit à l'utilisateur.
*   Commande `/start` avec un message d'accueil.

## Déploiement sur Railway

Suivez ces étapes pour déployer le bot sur Railway.

### Prérequis

*   Un compte Railway ([https://railway.app/](https://railway.app/))
*   Un token de bot Telegram (obtenu via BotFather)
*   Une clé API OpenAI (si vous utilisez l'API OpenAI pour la transcription/traduction)

### Étapes de déploiement

1.  **Créez un nouveau projet sur Railway** :
    *   Connectez-vous à votre compte Railway.
    *   Cliquez sur `New Project`.
    *   Choisissez `Deploy from GitHub Repo` si votre code est sur GitHub, ou `Deploy from a private Git repository`.
    *   Si vous n'utilisez pas Git, vous pouvez créer un service vide et uploader les fichiers manuellement.

2.  **Configurez les variables d'environnement** :
    *   Dans les paramètres de votre projet Railway, allez dans la section `Variables`.
    *   Ajoutez les variables suivantes :
        *   `TELEGRAM_BOT_TOKEN` : Votre token de bot Telegram (ex: `8409551009:AAFW87z5b_2HJ_Bwi6-DjkLRb1ybjpL-ztY`)
        *   `OPENAI_API_KEY` : Votre clé API OpenAI (si vous utilisez l'API OpenAI pour la transcription/traduction)

3.  **Déploiement** :
    *   Railway détectera automatiquement le `Dockerfile` et le `Procfile`.
    *   Le service devrait commencer à se construire et à se déployer.
    *   Assurez-vous que le build se termine avec succès.

4.  **Vérifiez les logs** :
    *   Dans la section `Logs` de votre service Railway, vous devriez voir les logs de démarrage du bot, confirmant qu'il est en cours d'exécution.

### Utilisation du Bot

Une fois le bot déployé et en ligne :

1.  Ouvrez Telegram et recherchez votre bot.
2.  Démarrez une conversation avec la commande `/start`.
3.  Envoyez un lien YouTube à votre bot.
4.  Choisissez la langue de traduction parmi les options proposées.
5.  Le bot vous renverra la transcription et la traduction.

## Fichiers inclus

*   `youtube_translator_bot.py`: Le code source du bot Telegram.
*   `requirements.txt`: Liste des dépendances Python.
*   `Procfile`: Commande de démarrage pour Railway.
*   `Dockerfile`: Instructions pour construire l'image Docker du bot.
*   `README.md`: Ce fichier avec les instructions de déploiement.
