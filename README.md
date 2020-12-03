# Projet 03 - Créez votre environnement de travail local - Dockerfile

## Prérequis

Avant d'utiliser les fichiers présents sur ce repository, merci de suivre les étapes du repository [Vagrant](https://github.com/Ricky1981/OpenClassRooms_Projet3_Vagrant)

En effet, ce repository est la deuxième partie du Projet et les instructions données dans la suite de ce document ne se feront qu'à travers la machine virtuelle "vagrant" via SSH.
De même, étant donné que cette machine virtuelle nous permet de repartir de zéro, et afin de simplifier la documentation, toutes les étapes se feront dans le HOME de vagrant.

## Utilisation du Dockerfile

Une fois connecté sur la machine virtuelle "vagrant" en SSH, veuillez lancer les actions suivantes :

1. Vérifier que nous nous situons bien dans le HOME de l'utilisateur vagrant : `cd ~`
2. Récupérer la dernière version du repository en lançant la commande suivante : `git clone --depth 1 https://github.com/Ricky1981/OpenClassRooms_Projet3_Docker.git`
3. Construire le conteneur à partir du DockerFile : `docker build -t image_perso OpenClassRooms_Projet3_Docker/`
4. Lancer le conteneur : `docker run -d -p 8080:80 --name Projet03 image_perso`
5. Vérifier que le conteneur est bien actif : `docker ps`  
6. Revenir sur sa machine local et tester l'URL suivante : http://192.168.33.10:8080 
7. Si vous souhaitez arreter le conteneur : `docker stop Projet03`
