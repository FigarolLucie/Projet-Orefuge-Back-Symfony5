
# Routes ApiShelterController

| Etat | URL  | Description de la page | Méthode HTTP | Controller | Méthode | commentaire |Appelée |
|--|--|--|--|--|--|--|--|
|OK| `/api/shelters` | Liste de tous les refuges | GET | ApiShelterController  | listAllShelters | Retourne la liste entière des refuges référencés | Chercher un refuge |
|OK| `/api/shelters/{id}` | Détails d'un refuge | GET | ApiShelterController  | oneShelter | Retourne les détails d'un refuge |Fiche refuge |
|OK| `/api/shelters/last-registed` |  Liste des derniers refuges inscrits | GET | ApiShelterController |listLastShelters  | Liste des derniers refuges inscrits en fonction de la date de création, on limitera à 5 | de la home |
|OK| `/api/animals` | Liste de tous les animaux | GET | ApiAnimalController  | listAllAnimals | Retourne la liste entière des animaux | Chercher un animal |
|OK| `/api/animals/{id}` | Détails d'un animal | GET | ApiAnimalController  | oneAnimal | Retourne les infos liés à un animal |dans la page d'un animal|
|OK| `/api/animals/emergency` |  Liste des derniers animaux en situation d'urgence  | GET | ApiAnimalController |listEmergencyAnimals  | Liste des derniers animaux en situation d'urgence, on limitera à 5 | de la home ( peut être optimiser avec un slug) |
|OK| `/api/animals/adopted` | Liste tous les animaux adoptés | GET | ApiAnimalController  | listAdoptedAnimals | Retourne la liste des animaux ayant le statut `adopte soit 1 (en BDD)`, on limitera à 30 résultats order by ACS |home et Ils ont été adoptés |
|OK| `/api/shelters/{id}/animals` | Liste des animaux à adopter dans le refuge en question | GET | ApiAnimalController  | listAllAnimalByShelter | Retourne la liste entière des animaux à adopter dans un refuge en particulier |Les animaux à l'adoption |
|OK| `/api/shelters/{id}/animals/adopted` | Liste des animaux qui ont été adoptés dans le refuge en question | GET | ApiAnimalController  | listAllAnimalsAdpotedByShelter | Retourne la liste entière des animaux adoptés dans un refuge en paritculier| Les animaux adoptés dans un refuge 
|OK| `/api/shelters/add` | Ajoute un refuge | POST | ApiShelterController  | addShelter | Retourne les détails d'un refuge ainsi que les animaux rélié à ce refuge |Tableau de bord admin |
|| `/api/shelters/{id}/edit` | édition  d'un refuge | POST | ApiShelterController  | editShelter | Mets à jours les informations d'un refuge |
|OK| `/api/shelters/{id}/animals/add` | Ajout d'un animal | POST | ApiAnimalsController  | addAnimal | Ajoute un animal au refuge |
|| `/api/shelters/{id}/animals/{id}/edit` | édition d'un animal | POST | ApiAnimalsController  | editAnimal | Mets à jours les informations de l'animal du refuge|
|OK| `/api/shelters/{id}/animals/{id}/delete` | Suppression d'un animal du refuge | DELETE | ApiShelterController  | deleteAnimalFollowingAdoption | Supprime un animal d'un refuge suite à son adoption (passage du status à 0)|
|OK| `/api/shelters/{id}/animals/{id}/other-delete` | Suppression d'un animal du refuge | DELETE | ApiShelterController  | deleteAnimalFollowingOther | Supprime un animal d'un refuge suite à transfert du refuge ou son decès|
|OK| `/api/tags` | Liste des tags  | GET | ApiMainController  | listAllTags | Recupère les tags |
|OK| `/api/species` | Liste des espèces  | GET | ApiMainController  | listAllSpecies | Recupère les espèces |
|OK| `/api/types` | Liste des types  | GET | ApiMainController  | listAllTypes | Recupère les types |
|OK| `/api/categories` | Liste des espèces  | GET | ApiMainController  | listAllCategories | Recupère les catégories |
|OK| `/api/sizes` | Liste des taille  | GET | ApiMainController  | listAllSizes | Recupère les tailles |
|OK| `/api/departments` | Liste des départements  | GET | ApiMainController  | listAllDepartments | Recupère les départements |
|OK| `/api/regions` | Liste des régions  | GET | ApiMainController  | listAllRegions | Recupère les région |



# Routes back office Admin
| Etat| URL  | Description de la page | Méthode HTTP | Controller | Méthode | commentaire |Appelée |
|--|--|--|--|--|--|--|--|
|OK| `/admin` | Liste de la totalité des refuges| GET | AdminShelterController  | allShelters | Liste les refuges, avec leur status | Liste des refuges
|| `/admin/shelters/{id}/details` | Le détails d'un refuge| GET | AdminShelterController  | detailsShelter | Edition Refuge |Détails refuge|
|en cours| `/admin/shelters/{id}/edit` | Le détails d'un refuge avec MAJ| POST | AdminShelterController  | editShelter |Le détails d'un refuge avec MAJ|Edition refuge|
|OK| `/admin/shelters/{id}/status` | Liste des refuges| GET | AdminShelterController  | statusShelter |permet de changer le statut d'un refuge|Edition refuge|
|OK| `/admin/shelters/{id}/delete` | Liste des refuges| DELETE | AdminShelterController  | deleteShelter |permet de supprimer un refuge|Edition refuge|
|OK| `/admin/tags` | Liste des tags  | GET | AdminMainController  | listAllTags | Recupère les tags |
|OKOK| `/admin/species` | Liste des espèces  | GET | AdminMainController  | listAllSpecies | Recupère les espèces |
|OKOK| `/admin/types` | Liste des types  | GET | AdminMainController  | listAllTypes | Recupère les types |
|OKOK| `/admin/categories` | Liste des espèces  | GET | AdminMainController  | listAllCategories | Recupère les catégories |
|OKOK| `/admin/sizes` | Liste des taille  | GET | AdminMainController  | listAllSizes | Recupère les tailles |
|OKOK| `/admin/departments` | Liste des départements  | GET | AdminMainController  | listAllDepartments | Recupère les départements |
|OK| `/admin/regions` | Liste des régions  | GET | AdminMainController  | listAllRegions | Recupère les région |
|| `/admin/admin` | Liste des users (Admin)  | GET | AdminMainController  | listAllAdmins | Recupère les administrateurs |
|| `/admin/roles` | Liste des rôles (Admin)  | GET | AdminMainController  | listAllRoles | Recupère les roles|
