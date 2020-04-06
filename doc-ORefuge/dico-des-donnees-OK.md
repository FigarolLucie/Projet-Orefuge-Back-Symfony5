# Dictionnaire de données

## Refuges (`shelter`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du refuge|
| name | VARCHAR(150) | NOT NULL |Le nom de du refuge|
| description|TEXT|NOT NULL| Description du refuge|
| phone_number|INT|NOT NULL, UNIQUE|Numéro de téléphone de l'association|
| mobile_phone|INT|NOT NULL, UNIQUE|Numéro de portable de l'association|
| street_name|TEXT|NOT NULL| Nom de la voie où est situé le refuge|
| street_number| INT| NOT NULL, UNSIGNED | numéro de la voie où est situé le refuge|
| zipcode | INT| NOT NULL, UNSIGNED | code postal du refuge|
| city| TEXT| NOT NULL | ville où est situé le refuge|
| country| TEXT| NOT NULL | pays où est situé le refuge|
| email|VARCHAR(50)|NOT NULL, UNIQUE| Adresse mail pour joindre le refuge|
| firstname|VARCHAR(50)|NULL|Prénom de la personne responsable du refuge|
| lastname|VARCHAR(50) |NOT NULL|Nom de la personne responsable du refuge |
| link_FB|VARCHAR(150)| NULL|Lien de la page Facebook du refuge|
| link_instagram|VARCHAR(150)| NULL|Lien de la page web du refuge|
| link_cagnotte|VARCHAR(150)| NULL|Lien de la page cagnotte du refuge|
| link_website|VARCHAR(150)| NULL|Lien de la page web du refuge|
| hours|VARCHAR(100)|NOT NULL|Horaires d'ouverture du refuge |
| picture1|TEXT|NOT NULL|Photo du refuge|
| picture2|TEXT|-|Photo du refuge|
| picture3|TEXT|-|Photo du refuge|
| picture4|TEXT|-|Photo du refuge|
| adoption_condition|TEXT|NOT NULL| Condition d'adoption du refuge|
| created_at|TIMESTAMP|NOT NULL DEFAULT CURRENT_TIMESTAMP|La date de création du refuge
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour du refuge|
| status| BOOL| NOT NULL | status de l'animal|
| region| entity| - | fait référence à l'entité region|


## Animaux (`animal`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant de la liste|
| name | VARCHAR(150) | NOT NULL |Le nom de l'animal|
| description|TEXT|NOT NULL| Description de l'animal|
| birthdate | DATE | NOT NULL | Date de naissance de l'animal|
| arrival_date | DATE | NOT NULL | Date d'arrivée dans le refuge|
| gender|VARCHAR(10)|NOT NULL|Sexe de l'animal|
| dog_friendly | VARCHAR(255) | - | Cohabitation possible avec les chiens ?|
| cat_friendly | VARCHAR(255) | - | Cohabitation possible avec les chats ?|
| child_friendly | VARCHAR(255) | - | Cohabitation possible avec les enfants?|
| additional_information | TEXT| - | Toute information complémentaire intéressante|
| picture1|TEXT|NOT NULL|Photo du refuge|
| picture2|TEXT| - |Photo du refuge|
| picture3|TEXT| - |Photo du refuge|
| picture4|TEXT| - |Photo du refuge|
| picture5|TEXT| - |Photo du refuge|
|created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de la fiche de l'animal|
|updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour de la fiche de l'animal|
|status| INT(1)| NOT NULL | status du refuge (0,1 ou 2) car (mort ou transféré ou famille d'accueil)|
| shelter| entity| - | fait référence à l'entité refuge |
| species| entity| - | fait référence à l'entité espèce |


## Espèces (`species`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du type d'animal|
| name | VARCHAR(25)|NOT NULL| nom du type d'animal|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de l'espèce|
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour de l'espèce |
| status| BOOL| NOT NULL | status de l'espèce|
| type| entity| - | fait référence à l'entité type |


## Types (`type`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du type de l'animal|
| name | VARCHAR(50)|NOT NULL| nom du type de l'animal|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création du type|
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour du type |
| status| BOOL| NOT NULL | status du type|
| size| entity| - | fait référence à l'entité size |


## Tailles (`size`)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant de la taille|
| name | VARCHAR(25)|NOT NULL| nom de la taille|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de la taille|
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour de la taille |
| status| BOOL| NOT NULL | status de la taille|


## Catégories (`category`)
|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant de la taille|
| name | VARCHAR(25)|NOT NULL| nom de la catégorie|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de la catégorie|
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour de la catégorie |
| status| BOOL| NOT NULL | status de la catégorie|


## Tags (`tag`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du tag|
| name | VARCHAR(25)|NOT NULL| nom du tag|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création du tag|
| updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour du tag |
| status| BOOL| NOT NULL | status du tag|


## Utilisateurs (`app_user`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant de l'utilisateur|
| username | VARCHAR(150) | NOT NULL |Le username de l'utilisateur|
| email | VARCHAR(150) | NOT NULL |L'adresse mail de l'utilisateur|
| password |VARCHAR(80)|NOT NULL|Mot de passe hashé de l'utilisateur|
|terms|BOOL|NOT NULL| Acceptation ou non des CGV|
| siret_number | INT | NOT NULL, UNSIGNED |Numéro siret pour pouvoir identifier un refuge et vérifier que l'inscription concerne bien un refuge et non un visiteur "lambda"|
|created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de l'utilisateur|
|updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour de  l'utilisateur|
| status| BOOL| NOT NULL | status de l'utilisateur|
| shelter| entity| - | fait référence à l'entité refuge |
| role| entity| - | fait référence à l'entité role |


## Rôles (`role`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du rôle|
| name | VARCHAR(15)|NOT NULL| libellé du rôle|
| role_string | VARCHAR(30)|NOT NULL| libellé du rôle pour les voters symfony|
| created_at|TIMESTAMP|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création du role | updated_at|TIMESTAMP|NULL|La date de la dernière mise à jour du role
| status| BOOL| NOT NULL | status du role |


## Régions (`region`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant de la région|
| name | VARCHAR(150) | NOT NULL |Le nom de la région |


## Départements (`department`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant du département|
| name | VARCHAR(150) | NOT NULL |Le nom du département |
| region | entity | - | fait référence à l'entité region |
