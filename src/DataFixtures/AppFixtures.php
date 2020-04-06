<?php


namespace App\DataFixtures;

use Faker;
use DateTime;
use App\Entity\Tag;
use App\Entity\Role;
use App\Entity\Size;
use App\Entity\Type;
use App\Entity\User;
use App\Entity\Animal;
use App\Entity\Region;
use App\Entity\Shelter;
use App\Entity\Species;
use App\Entity\Category;
use App\Entity\Department;
use App\Repository\AnimalRepository;
use Doctrine\Bundle\FixturesBundle\Fixture;
use App\DataFixtures\Provider\ORefugeProvider;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    private $passwordEncoder;
    
    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
         $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {
        // On instancie Faker
        $faker = Faker\Factory::create('fr_FR');
        
        // Nos providers "Faker"
        $faker->addProvider(new ORefugeProvider($faker));
        
        $sizesList = []; 
        // les tailles (3 pour le MVP)
        for ($i = 0; $i < 3; $i++) {
            $size = new Size();
            $size->setName($faker->unique()->sizeName());
            $size->setCreatedAt(new \DateTime());
            $size->setStatus(1);   
            
            $sizesList[] = $size;

            $manager->persist($size);
            }

        // les tags
            $tagsList = []; 

        // les tags (4 pour le MVP)
        for ($i = 0; $i < 4; $i++) {
            $tag = new Tag();
            $tag->setName($faker->unique()->tagName());
            $tag->setCreatedAt(new \DateTime());
            $tag->setStatus(1); 
            
            $tagsList[] = $tag;

            $manager->persist($tag);
            }
      
        // les catégories (4 pour le MVP)

        $categoriesList = []; 

        for ($i = 0; $i < 4; $i++) {
            $category = new Category();
            $category->setName($faker->unique()->categoryName());
            $category->setCreatedAt(new \DateTime());
            $category->setStatus(1);
            
            $categoriesList[] = $category;

            $manager->persist($category);
            }

        // les régions (13)
        
        $regionsList = [];

            for ($i = 0; $i < 13; $i++) {
            $region = new Region();
            $region->setName($faker->unique()->regionName()); 
           
            $regionsList[] = $region; 

            $manager->persist($region);
            }

        // les départements

        $departmentsList = []; 

        // create 102 départements
        for ($i = 0; $i < 102; $i++) {
            $department = new Department();
            $department->setName($faker->unique()->departementName());
           
             // Association avec la région
            // On cherche un index au hasard entre 0 et la fin du tableau des régions
            $randomRegionIndex = mt_rand(0, count($regionsList) - 1);
            // Associons ce genre au film
            $department->setRegion($regionsList[$randomRegionIndex]);

            $departmentsList[] = $department; 

            $manager->persist($department);
        }

        // les rôles 
        // je stocke cette donnée dans un tableau car elle me servira pour définir la clé étrangère dans mon entité AppUser 
        $rolesList = []; 
        
        // creation des rôles (2 pour le MVP)
        for ($i = 0; $i < 2; $i++) {
        $role = new Role();
        $role->setName($faker->unique()->roleName());
        $role->setRoleString($faker->unique()->roleStringName());
        $role->setCreatedAt(new \DateTime());
        $role->setStatus(1);

        $rolesList[] = $role; 
        
        $manager->persist($role);
        }   
  
        // les refuges
        $sheltersList = [];
        // create 25 refuges
        for ($i = 0; $i < 25; $i++) {
            $shelter = new Shelter();
            $shelter->setName(ORefugeProvider::shelterName());
            $shelter->setDescription($faker->sentence);
            $shelter->setPhoneNumber(ORefugeProvider::phonenumberName());
            $shelter->setMobilePhone(ORefugeProvider::mobileName());
            $shelter->setStreetName($faker->streetName);
            $shelter->setStreetNumber($faker->numberBetween($min = 1, $max = 2000));
            $shelter->setZipcode($faker->randomNumber($nbDigits = 5));
            $shelter->setCity($faker->city);
            $shelter->setCountry('France');
            $shelter->setEmail($faker->companyEmail);
            $shelter->setFirstName($faker->firstName);
            $shelter->setLastName($faker->lastName);
            $shelter->setLinkWebsite($faker->url);
            $shelter->setHours($faker->sentence);
            $shelter->setPicture1(ORefugeProvider::imageName());
            $shelter->setAdoptionConditions($faker->text($maxNbChars = 200));
            $shelter->setSiretNumber(ORefugeProvider::siretName());
            $shelter->setCreatedAt(new \DateTime());    
            $shelter->setStatus(mt_rand(0,1));        
            // $shelter->setStatus(true);

        // Association avec la département
        // On cherche un index au hasard entre 0 et la fin du tableau des départements
        $randomDepartmentIndex = mt_rand(0, count($departmentsList) - 1);
        // Associons ce genre au film
        $shelter->setDepartment($departmentsList[$randomDepartmentIndex]);

        $sheltersList[] = $shelter;

        $manager->persist($shelter);
        }

        // les users : refuges

        // create 25 utilisateurs
        for ($i = 0; $i < 25; $i++) {
            $user = new User();            
            $user->setEmail($faker->email);
            $user->setUsername($faker->userName);
            $user->setPassword($faker->password);
            $user->setTerms(1);
            // $appUser->setSiretNumber($faker->randomNumber($nbDigits = 8));
            $user->setCreatedAt(new \DateTime());
            $user->setStatus(1);

        // Association avec le role
            $user->setRole($rolesList[0]);

        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
            $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
            $user->setShelter($sheltersList[$randomRefugeIndex]);

            $manager->persist($user);
        }

        // Les user de TEST
        // create 5 users for testing with front

        for ($i = 0; $i < 5; $i++) {
        $userTest = new User();
        $userTest->setUsername('User'.$i);
        $userTest->setEmail('user'.$i.'@user'.$i.'.com');
        $userTest->setPassword($this->passwordEncoder->encodePassword($userTest, 'toto'));
        $userTest->setRole($rolesList[1]);
        $userTest->setTerms(1);        
        $userTest->setCreatedAt(new \DateTime());
        $userTest->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
        $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
        $userTest->setShelter($sheltersList[$randomRefugeIndex]);
            
        $manager->persist($userTest);
        }

        // Les user ADMIN
        
        $userAdmin1 = new User();
        $userAdmin1->setUsername('Lucie');
        $userAdmin1->setEmail('lucie@lucie.com');
        $userAdmin1->setPassword($this->passwordEncoder->encodePassword($userAdmin1, 'lucie'));
        $userAdmin1->setRole($rolesList[1]);
        $userAdmin1->setTerms(1);        
        $userAdmin1->setCreatedAt(new \DateTime());
        $userAdmin1->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
        $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
        $userAdmin1->setShelter($sheltersList[$randomRefugeIndex]);
            
        $manager->persist($userAdmin1);

        $userAdmin2 = new User();
        $userAdmin2->setUsername('Julie');
        $userAdmin2->setEmail('julie@julie.com');
        $userAdmin2->setPassword($this->passwordEncoder->encodePassword($userAdmin2, 'julie'));
        $userAdmin2->setRole($rolesList[1]);
        $userAdmin2->setTerms(1);
        $userAdmin2->setCreatedAt(new \DateTime());
        $userAdmin2->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
        //$randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
        //$userAdmin2->setShelter($sheltersList[$randomRefugeIndex]);
        $manager->persist($userAdmin2);

        $userAdmin3 = new User();
        $userAdmin3->setUsername('Jérémie');
        $userAdmin3->setEmail('jeremie@jeremie.com');
        $userAdmin3->setPassword($this->passwordEncoder->encodePassword($userAdmin3, 'jeremie'));
        $userAdmin3->setRole($rolesList[1]);
        $userAdmin3->setTerms(1);       
        $userAdmin3->setCreatedAt(new \DateTime());
        $userAdmin3->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
       // $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
       // $userAdmin3->setShelter($sheltersList[$randomRefugeIndex]);

        $manager->persist($userAdmin3);

        $userAdmin4 = new User();
        $userAdmin4->setUsername('Nadège');
        $userAdmin4->setEmail('nadege@nadege.com');
        $userAdmin4->setPassword($this->passwordEncoder->encodePassword($userAdmin1, 'nadege'));
        $userAdmin4->setRole($rolesList[1]);
        $userAdmin4->setTerms(1);       
        $userAdmin4->setCreatedAt(new \DateTime());
        $userAdmin4->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
       // $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
        //$userAdmin4->setShelter($sheltersList[$randomRefugeIndex]);

        $manager->persist($userAdmin4);

        $userAdmin5 = new User();
        $userAdmin5->setUsername('Caro');
        $userAdmin5->setEmail('caro@caro.com');
        $userAdmin5->setPassword($this->passwordEncoder->encodePassword($userAdmin1, 'caro'));
        $userAdmin5->setRole($rolesList[1]);
        $userAdmin5->setTerms(1);        
        $userAdmin5->setCreatedAt(new \DateTime());
        $userAdmin5->setStatus(1);
        // Association avec le refuge
        // On cherche un index au hasard entre 0 et la fin du tableau des refuge
       // $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
        // Associons ce role à l'utilisateur
        //$userAdmin5->setShelter($sheltersList[$randomRefugeIndex]);

        $manager->persist($userAdmin5);

        // les types

        $typesList = []; 
        // create 30 types
        for ($i = 0; $i < 30; $i++) {
            $type = new Type();
            $type->setName($faker->unique()->typeName());
            $type->setCreatedAt(new \DateTime());
            $type->setStatus(1);
        // Association avec la taille
        // On cherche un index au hasard entre 0 et la fin du tableau des tailles
            $randomSizeIndex = mt_rand(0, count($sizesList) - 1);
            // Associons ce genre au film
            $type->setSize($sizesList[$randomSizeIndex]);

        // Association avec la catégorie, de 1 à 2
                        
        for ($count = 1; $count <= mt_rand(1, 2); $count++) {
            // Allons chercher un index au hasard entre 0 et la fin du tableau
            $randomCategoriesIndex = mt_rand(0, count($categoriesList) - 1);
            // Associons ce genre au film
            $type->addCategory($categoriesList[$randomCategoriesIndex]);
        }

            $typesList[] = $type;

            $manager->persist($type);
        }

        // les espèces
        $speciesList = []; 

        // les espèces (11 pour le MVP)
        for ($i = 0; $i < 11; $i++) {
            $species = new Species();
            $species->setName($faker->unique()->speciesName());
            $species->setCreatedAt(new \DateTime());
            $species->setStatus(1); 
            
            // Association avec le type (race)
            // On cherche un index au hasard entre 0 et la fin du tableau des types
            $randomTypeIndex = mt_rand(0, count($typesList) - 1);
            // Associons ce genre au film
            $species->setType($typesList[$randomTypeIndex]);

            $speciesList[] = $species;

            $manager->persist($species);
            }
        
            // les animaux
            
            // create 150 animals
            for ($i = 0; $i < 150; $i++) {
                $animal = new Animal();
                $animal->setName(ORefugeProvider::animalsName());
                $animal->setDescription($faker->sentence);              
                $animal->setBirthdate(new \DateTime(($faker->date($format = 'd-m-Y', $max = 'now')))); 
                $animal->setArrivaldate(new \DateTime(($faker->date($format = 'd-m-Y', $max = 'now'))));
                $animal->setGender(ORefugeProvider::genderName());
                $animal->setDogFriendly(mt_rand(0,1));
                $animal->setCatFriendly(mt_rand(0,1));
                $animal->setChildFriendly(mt_rand(0,1));
                $animal->setAdditionalInformation($faker->text($maxNbChars = 500));
               // $animal->setPicture1(ORefugeProvider::imageName());
                $animal->setCreatedAt(new \DateTime());    
                $animal->setStatus(1);        
                
            // Association avec le refuge
            // On cherche un index au hasard entre 0 et la fin du tableau des refuges
            $randomRefugeIndex = mt_rand(0, count($sheltersList) - 1);
            // Associons ce role à l'utilisateur
            $animal->setShelter($sheltersList[$randomRefugeIndex]);
          
            // Association avec l'espèce
            // On cherche un index au hasard entre 0 et la fin du tableau des espèces
            $randomSpeciesIndex = mt_rand(0, count($speciesList) - 1);
            // Associons ce role à l'utilisateur
            $animal->setSpecies($speciesList[$randomSpeciesIndex]);
            if( $animal->getSpecies()->getName()== "Chien")
            {
              $animal->setPicture1(ORefugeProvider::imageNameDog());
            }
            elseif ( $animal->getSpecies()->getName()== "Chat")
            {
              $animal->setPicture1(ORefugeProvider::imageNameCat());
            }
            elseif ( $animal->getSpecies()->getName()== "Oiseau")
            {
              $animal->setPicture1(ORefugeProvider::imageNameBirds());
            }
            elseif ( $animal->getSpecies()->getName()== "Cheval")
            {
              $animal->setPicture1(ORefugeProvider::imageNameHorses());
            }
            elseif ( $animal->getSpecies()->getName()== "Animaux de la ferme")
            {
              $animal->setPicture1(ORefugeProvider::imageNameGoat());
            }
            elseif ( $animal->getSpecies()->getName()== "Tortue")
            {
              $animal->setPicture1(ORefugeProvider::imageNameTurtle());
            }
            elseif ( $animal->getSpecies()->getName()== "Lapin")
            {
              $animal->setPicture1(ORefugeProvider::imageNameRabbit());
            }
            elseif ( $animal->getSpecies()->getName()== "Poisson")
            {
              $animal->setPicture1(ORefugeProvider::imageNameFish());
            }
            else
            {
              $animal->setPicture1(ORefugeProvider::imageName());
            }

            // Association avec le tag, de 1 à 2
                        
            for ($count = 1; $count <= mt_rand(1, 2); $count++) {
                // Allons chercher un index au hasard entre 0 et la fin du tableau
                $randomTagsIndex = mt_rand(0, count($tagsList) - 1);
                // Associons ce genre au film
                $animal->addTag($tagsList[$randomTagsIndex]);
            }

            $manager->persist($animal);
            }

        $manager->flush();

       

    }

}

