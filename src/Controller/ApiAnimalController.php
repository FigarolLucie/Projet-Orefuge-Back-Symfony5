<?php

namespace App\Controller;

use App\Entity\Animal;
use App\Entity\Shelter;
use App\Repository\AnimalRepository;
use App\Repository\ShelterRepository;
use App\Repository\SpeciesRepository;
use App\Repository\TagRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;

class ApiAnimalController extends AbstractController
{

  // |----------------------  ROUTES EN GET ----------------------------|

  /**
   * GET all animals
   * 
   * @Route("/api/animals", name="api_list_animals", methods={"GET"})
   */
  public function listAllAnimals(AnimalRepository $animalRepository)
  {
    $listAnimals = $animalRepository->findBy(["status" => 1]);

    if ($listAnimals === null || $listAnimals === []) {
      return new JsonResponse(['error' => 'Animals not found.'], 404);
    }

    return $this->json($listAnimals, Response::HTTP_OK, [], ['groups' => 'listAnimals']);
  }

  /**
   * GET the animal with given id
   * 
   * @Route("/api/animals/{id<\d+>}", name="api_the_animal", methods={"GET"})
   */
  public function getTheAnimal($id, AnimalRepository $animalRepository)
  {
    
    $animal = $animalRepository->findOneAnimalByStatusAndId($id);

    if ($animal === null || $animal === []) {
      return new JsonResponse(['error' => 'Animal not found.'], 404);
    }

    return $this->json($animal, Response::HTTP_OK, [], ['groups' => 'oneAnimal']);
  }

  /**
   * GET adopted animals
   * 
   * @Route("/api/animals/adopted", name="api_list_adopted_animals", methods={"GET"})
   */
  public function listAdoptedAnimals(AnimalRepository $animalRepository)
  {
    // Récupération des animaux via AnimalRepository
    $listAdoptedAnimals = $animalRepository->findBy(["status" => 0], null, 15, 0);

    // $listAdoptedAnimals = $animalRepository->findBy(
    //     array('status' => 0),           // Sta
    //     array('date' => 'desc'),        // Tri
    //     5,                              // Limite
    //     0                               // Offset
    //   );

    // other possibility:
    // $listAdoptedAnimals = $animalRepository->findByStatus(0);

    if ($listAdoptedAnimals === null) {
      return new JsonResponse(['error' => 'Adopted Animals not found.'], 404);
    }

    // On envoie les données de l'animal souhaité en JSON
    return $this->json($listAdoptedAnimals, Response::HTTP_OK, [], ['groups' => 'listAnimals']);
  }

  /**
   * GET emergency animals
   * 
   * @Route("/api/animals/emergency", name="api_list_emergency_animals", methods={"GET"})
   */
  public function listEmergencyAnimals(AnimalRepository $animalRepository)
  {
    $listEmergencyAnimals = $animalRepository->findAllAnimalsByEmergencyTag();

    if ($listEmergencyAnimals === null) {
      return new JsonResponse(['error' => 'Adopted Animals not found.'], 404);
    }

    // On envoie les données de l'animal souhaité en JSON
    return $this->json($listEmergencyAnimals, Response::HTTP_OK, [], ['groups' => 'listAnimals']);
  }

  // |----------------------  ROUTES EN POST ----------------------------|

  /**
   * Ajout d'un animal,rattaché à un refuge en BDD
   *   
   * @Route("/api/shelters/{id<\d+>}/animals/add", name="api_add_animal", methods={"POST"})
   * 
   */
  public function addAnimal(Request $request,  SpeciesRepository $speciesRepository, ShelterRepository $shelterRepository, $id, TagRepository $tagRepository)
  {
    $shelter = $shelterRepository->find($id);

    if ($shelter === null) {
        return new JsonResponse(['error' => 'Shelter not found.'], 404);
    }

    $species = $speciesRepository->find($request->get('species'));
    $tag = $tagRepository->find($request->get('tag'));

    $animal = new Animal();

    $animal->setName($request->get('name'));
    $animal->setDescription($request->get('description'));
    $animal->setBirthdate(new \DateTime($request->get('birthdate')));
    $animal->setArrivalDate(new \DateTime($request->get('arrival_date')));
    $animal->setGender($request->get('gender'));
    $animal->setDogFriendly($request->get('dog_friendly'));
    $animal->setCatFriendly($request->get('cat_friendly'));
    $animal->setChildFriendly($request->get('child_friendly'));
    $animal->setAdditionalInformation($request->get('additionnal_information'));
    $animal->setCreatedAt(new \DateTime());
    $animal->setUpdatedAt(new \DateTime());
    $animal->setStatus(1);
    $animal->setShelter($shelter);
    $animal->setSpecies($species);
    $animal->addTag($tag);
    $image = $request->files->get('picture1');
    if ($image !== null) {
      $animal->setPicture1("public/uploads/images/animals/" . $request->files->get('picture1')->getFileName() . '.' . $image->guessExtension());
      $nameImage = $request->files->get('picture1')->getFileName();
      $image->move(
        $this->getParameter('animals_images_directory'),
        $nameImage . '.' . $image->guessExtension()
      );
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();

    // message flash aléatoire
    $this->addFlash('success', 'Animal ajouté avec images');

    return new JsonResponse(['success' => 'Animal added with picture with success.'], 200);

  }

  /**
   * edit d'un animal,rattaché à un refuge en BDD
   *   
   * @Route("/api/shelters/{id<\d+>}/animals/{animal_id<\d+>}/edit", name="api_edit_animal", methods={"POST"})
   * 
   */
  public function editAnimal(Request $request,  SpeciesRepository $speciesRepository, ShelterRepository $shelterRepository, $id, TagRepository $tagRepository, $animal_id, AnimalRepository $animalRepository)
  {
    $shelter = $shelterRepository->find($id);

    if ($shelter === null) {
        return new JsonResponse(['error' => 'Shelter not found.'], 404);
    }
    
    $species = $speciesRepository->find($request->get('species'));
    $tag = $tagRepository->find($request->get('tag'));

    $animal = $animalRepository->find($animal_id);

    $animal->setName($request->get('name'));
    $animal->setDescription($request->get('description'));
    $animal->setBirthdate(new \DateTime($request->get('birthdate')));
    $animal->setArrivalDate(new \DateTime($request->get('arrival_date')));
    $animal->setGender($request->get('gender'));
    $animal->setDogFriendly($request->get('dog_friendly'));
    $animal->setCatFriendly($request->get('cat_friendly'));
    $animal->setChildFriendly($request->get('child_friendly'));
    $animal->setAdditionalInformation($request->get('additionnal_information'));
    //$animal->setCreatedAt(new \DateTime());
    $animal->setUpdatedAt(new \DateTime());
    $animal->setStatus(1);
    $animal->setShelter($shelter);
    $animal->setSpecies($species);
    $animal->addTag($tag);
    $image = $request->files->get('picture1');
    if ($image !== null) {
      $animal->setPicture1("public/uploads/images/animals/" . $request->files->get('picture1')->getFileName() . '.' . $image->guessExtension());
      $nameImage = $request->files->get('picture1')->getFileName();
      $image->move(
        $this->getParameter('animals_images_directory'),
        $nameImage . '.' . $image->guessExtension()
      );
    }

    $em = $this->getDoctrine()->getManager();
    //$em->persist($animal);
    $em->flush();

    // message flash aléatoire
    $this->addFlash('success', 'Animal ajouté avec images');

    return new JsonResponse(['success' => 'Animal edit with picture with success.'], 200);

  }

  /**
   * Suppression en BDD d'un animal,rattaché à un refuge = passage de son status à 0 car adopté
   *   
   * @Route("/api/shelters/{shelter_id<\d+>}/animals/{animal_id<\d+>}/delete", name="api_delete_animal", methods={"POST"})
   * 
   */
  public function deleteAnimalFollowingAdoption(Request $request, SerializerInterface $serializer, ValidatorInterface $validator, Shelter $shelter = null, Animal $animal = null)
  {

    // Si on souhaite renvoyer notre propre 404 (et non l'automatique renvoyée par le ParamConverter)
    // Le paramConverter agit avant l'appel de la méthode 
    // On met donc une valeur par défaut de null à $animal et $shelter

    // vérifier que l'id du shelter existe bien en BDD       
    if ($shelter === null) {
      return new JsonResponse(['error' => 'Shelter not found.'], 404);
    }

    // vérifier que l'id de l'animal existe bien en BDD 
    if ($animal === null) {
      return new JsonResponse(['error' => 'Animal not found.'], 404);
    }

    $JSONAnimal = $request->getContent();

    $animal = $serializer->deserialize($JSONAnimal, Animal::class, 'json');

    // on passe le status de l'animal à 0 car il est adopté
    $animal->setStatus(0);

    // Validation de l'entité ?
    $errors = $validator->validate($animal);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }

      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();
    return $this->redirectToRoute('api_list_animals', [], Response::HTTP_CREATED);
  }

  /**
   * Suppression en BDD d'un animal,rattaché à un refuge = passage de son status à 2 car il n'est plus à l'adoption
   *    
   * @Route("/api/shelters/{shelter_id<\d+>}/animals/{animal_id<\d+>}/other-delete", name="api_other_delete_animal", methods={"POST"})
   * 
   */
  public function deleteAnimalFollowingOther(Request $request, SerializerInterface $serializer, ValidatorInterface $validator, Shelter $shelter, Animal $animal)
  {
    // vérifier que l'id du shelter existe bien en BDD       
    if ($shelter === null) {
      return new JsonResponse(['error' => 'Shelter not found.'], 404);
    }

    // vérifier que l'id de l'animal existe bien en BDD 
    if ($animal === null) {
      return new JsonResponse(['error' => 'Animal not found.'], 404);
    }

    $JSONAnimal = $request->getContent();

    $animal = $serializer->deserialize($JSONAnimal, Animal::class, 'json');

    // on passe le status de l'animal à 2 car il n'est pas adopté (status 0) et n'est plus à l'adoption (status 1)
    $animal->setStatus(2);

    // Validation de l'entité ?
    $errors = $validator->validate($animal);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }

      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();
    return $this->redirectToRoute('api_list_animals', [], Response::HTTP_CREATED);
  }
}
