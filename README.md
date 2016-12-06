# Carnet de contact d'adresse d'animaux

_*Symfony 3.1 / FOSUserBundle 2.0 (master)  /  mySql  /  Doctrine*_


**Topic**

    L'objectif est de simuler un petit carnet d'adresses d'animaux en ligne sous symfony.
    (Inscription/Connexion/Déconnexion) de l'utilisateur par login/mot de passe (FOSUserbundle).
    (Ajouter/Lister/Supprimer) les contacts de son carnet d'adresses en fonction du type d'animal.
    (Afficher/Modifier) leurs informations (e-mail / adresse / téléphone / site web)

#Quick start

**Run composer.json**

Enter that command (at the root directory of the project)

        composer install 
        
**Install data base**

Import the database : carnetadressanimal.sql


Then open the file and change database_name by the name of the imported database 

(Change password and username if it's necessary)
        
**Run server (localhost)**

        php bin/console server:run 
        
       (localhost:8000)
       
#Access (localhost:8000)

**Navigation as basic user**


    route : /login 
    
    username : user
    
    password : user
    
    allowed : Write / See contacts


**Navigation as admin**


    route : /login 
    
    username : admin
    
    password : admin
    
    allowed : Write / Delete / Edit / See (more details) contacts
