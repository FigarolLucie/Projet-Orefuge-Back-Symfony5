# Projet-Orefuge-Back-Symfony5
Back et back-office du projet ORefuge : site destiné aux refuges animalier pour mettre en avant les animaux à l'adoption. Et un accès à une interface d'administration pour gérer les refuges en full Symfony 5 avec Twig. 

Équipe front : 
- Julie Ganem
- Nadège Albrespic
- Jérémie Mandin

Équipe back : 
- Caroline Pfohl
- Lucie Figarol 

> ## ORefuge
> - Orefuge c'est un projet réalisé lors de projet de fin de formation avec O'clock. 
> - C'est un projet de ***1 mois*** en mode Agile avec sprints, Scrum master, Product Owner. 
> - C'est 1 semaine de reflexion et conception du cahier des charges et ***3 semaines*** de code, pour finir par une présentation du notre projet. 
>
> ### Spécifités du projet :
> - Front réalisé avec React 
> - Back : réalisation d'une ***API*** pour evoyer les données au front. ***Back-office*** réalisé en full Synfony avec ***Twig et Bootstrap***.
> - Mise en ligne du site sur ***AWS*** sur server dédié.
> - Utilisation d'***Insomnia*** pour tester nos routes.
> - Depuis le début de la formation nous travaillons sur une VM avec Ubuntu dessus.
> - Utilisation des fixtures et de ***Faker***
> 
> ### Bundle utilisés
> - Bundle ***Nelmio Cors*** pour gérer l'accès à l'API. 
> - Bundle ***Lexik JWT Authetifcication*** pour le token sur nos routes protégées.
> - Bundle ***Twig*** dans nos templates côté back-office
> - Bundle ***Swift mailer*** pour l'envoi d'email
> - Bundle ***API Platform*** pour la gestion de clé étrangère.
> 


## Installation du projet 

Une fois le projet cloné en local, il faut ouvrir un terminal à la racine du dossier et  installer les dépendances avec  `composer install`

Si vous souhaitez utiliser Doctrine pour installer la base de données, suivre le procédure ci -dessous, sinon passez diectement au paragraphe d'après.

Installation avec Doctrine: 
- faire un copier coler du fichier `.env` se trouvant à la racine du projet. Le renommer en `.env.local`.
- Compléter la ligne suivante avec vos informations: `DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7`
  - `db_user` : l'utilisateur de votre base de données,
  -  `db_password` : mot de passe de votre utilisateur,
  -  `db_name` : nom de la base que vous souhaitez créer.
-  Ouvrir un terminal à la racine du projet
-  Dans ce même termial
   -  `bin/console doctrine:database:create` : pour créer la base de données
   -  `bin/console doctrine:migration:migrate` : pour installer la structure de la base de données
   -  `bin/console doctrine:fixtures:load` : pour générer de fausses données permettant de rendre plus "vivant" le site. Attention : ces données sont aléatoires, un chien pour être de l'espèce lapin par exemple. 
___
OU 

Pour ne pas passer par Doctrine, vous pouvez directement importer dans votre base de données le fichier `orefuge.sql` se trouvant à la racine du projet. Il vous faudra quand même créer le fichier `.env.local` :
- Compléter la ligne suivante avec vos informations: `DATABASE_URL=mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7`
  - `db_user` : l'utilisateur de votre base de données,
  -  `db_password` : mot de passe de votre utilisateur,
  -  `db_name` : en accord avec le fichier `orefuge.sql`, il faut mettre ici `orefuge`.
