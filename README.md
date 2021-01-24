# NEARBY-EVENTS

Nearby-Events est une application web permettant la publication d’événements culturels, sociales ou sportifs dans un département donné.

Il possède trois actions principales sous forme de rôles : 

- Un rôle administrateur permet de :   
    * Accepter, rejeter ou supprimer un événement ajouté par un contributeur.   
    * Gérer les comptes d'utilisateurs
    
- Un rôle contributeur permet :  
    * D'ajouter ou supprimer un événement
    
- Un rôle visiteur permet de :  
    * S'inscrire ou désinscrire   
    * Participer à un ou plusieurs événements  
    * Effectuer des recherches d'événements par thème ( sans authentification )

# Job
   * un job mailer est implementé dans ce projet, il consiste à envoyer un mail automatique à l'utilisateur après qu'un admin à accepter ou rejeter son événement(user).
# Pour exécuter le projet sur votre machine
Après avoir cloner le projet sur votre machine, déplacez vous sur la racine du projet dans votre terminal  ensuite faites : 
   * rails db:migrate : pour la migration de la BDD  
   * rails db:seed :  pour la génération de jeu des données   
   * rails server : pour lancer le serveur 
Vous pouvez ensuite aller sur le lien http://localhost:3000 pour visiter le site, vous pouvez vous baser sur le jeu des données fournies pour vous connecter en tant qu'admin ou simple utilisateur. 
Vous pouvez aussi créer votre propre compte pour faire votre test.
