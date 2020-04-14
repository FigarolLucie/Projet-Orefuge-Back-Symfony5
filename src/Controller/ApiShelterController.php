<?php

namespace App\Controller;

use App\Entity\Shelter;
use App\Repository\UserRepository;
use App\Repository\AnimalRepository;
use App\Repository\ShelterRepository;
use App\Repository\DepartmentRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Mapping\Loader\FilesLoader;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ApiShelterController extends AbstractController
{

  // |----------------------  ROUTES EN GET ----------------------------|

  /**
   * GET all shelters
   * 
   * @Route("/api/shelters", name="api_list_shelters", methods={"GET"})
   */
  public function listAllShelters(ShelterRepository $shelterRepository)
  {
    $listShelters = $shelterRepository->findBy(["status" => 1]);

    if ($listShelters === null) {
      return new JsonResponse(['error' => 'Shelter list not found.'], 404);
    }

    return $this->json($listShelters, Response::HTTP_OK, [], ['groups' => 'listShelters']);
  }

  /**
   * GET one shelter
   * 
   * @Route("/api/shelters/{id<\d+>}", name="api_one_shelter", methods={"GET"})
   */
  public function oneShelterl($id, ShelterRepository $shelterRepository)
  {
    $shelter = $shelterRepository->findOneShelterByStatusAndId($id);

    if ($shelter === null || $shelter === []) {
      return new JsonResponse(['error' => 'Shelter not found.'], 404);
    }

    return $this->json($shelter, Response::HTTP_OK, [], ['groups' => 'oneShelter']);
  }

  /**
   * List of adopted animals in a shelter with given id (status 0)
   * 
   * @Route("/api/shelters/{id<\d+>}/animals/adopted", name="api_list_animal_adopted_shelter", methods={"GET"})
   */
  public function listAllAnimalsAdpotedByShelter($id, AnimalRepository $animalRepository)
  {
    $listAdoptedAnimalsByShelter = $animalRepository->findAllAnimalsAdoptedByOneShelter($id);

    if ($listAdoptedAnimalsByShelter === null) {
      return new JsonResponse(['error' => 'Animals not found.'], 404);
    }

    return $this->json($listAdoptedAnimalsByShelter, Response::HTTP_OK, [], ['groups' => 'listAnimals']);
  }

  /**
   * List of animals to adoption in a shelter with given id
   * 
   * @Route("/api/shelters/{id<\d+>}/animals", name="api_list_animal_toadopt_shelter", methods={"GET"})
   */
  public function listAllAnimalsToAdpotByShelter($id, AnimalRepository $animalRepository)
  {
    $listAdoptedAnimalsByShelter = $animalRepository->findAllAnimalsToAdoptByOneShelter($id);

    if ($listAdoptedAnimalsByShelter === null || $listAdoptedAnimalsByShelter === []) {
      return new JsonResponse(['error' => 'Animals not found.'], 404);
    }

    return $this->json($listAdoptedAnimalsByShelter, Response::HTTP_OK, [], ['groups' => 'listAnimals']);
  }

  /**
   * Get last registered shelters
   * 
   * @Route("/api/shelters/last-registered", name="api_list_last_registered_shelters", methods={"GET"})
   */
  public function listLastShelters(ShelterRepository $shelterRepository)
  {
    
    $listLastShelters = $shelterRepository->findBy(["status" => 1], ['createdAt' => 'desc'], 15, 0);

    // Exemple d'une autre manière de faire : 
    // $listAdoptedAnimals = $animalRepository->findBy(
    //     array('status' => 0),           // Status
    //     array('date' => 'desc'),        // Tri
    //     5,                              // Limite
    //     0                               // Offset
    //   );

    if ($listLastShelters === null) {
      return new JsonResponse(['error' => 'Last registered shelters not found.'], 404);
    }

    // On envoie les données de l'animal souhaité en JSON
    return $this->json($listLastShelters, Response::HTTP_OK, [], ['groups' => 'listShelters']);
  }

  // |----------------------  ROUTES EN POST ----------------------------|


  /**
   * 
   * Add a shelter with image shelter
   * 
   * @Route("/api/shelters/{user_id}/add", name="api_add_shelter", methods={"POST"})
   */

  public function addShelterWithImage(Request $request, $user_id, ValidatorInterface $validatore, DepartmentRepository $departmentRepository, UserRepository $userRepository)
  {
    $shelter = new Shelter();
    $department = $departmentRepository->find($request->get('department'));

    $errors = [];

    if ($shelter === null ) {
      $errors[] = 'Shelter not found.';
    }
    if (count($errors) > 0) {
      return new JsonResponse(['error' => $errors], 404);
    }
     // atribution of a shelter_id to a user
    $user = $userRepository->find($user_id);
    $user->setShelter($shelter);


    $shelter->setName($request->get('name'));
    $shelter->setDescription($request->get('description'));
    $shelter->setSiretNumber($request->get('siretNumber'));
    $shelter->setPhoneNumber($request->get('phone_number'));
    $shelter->setMobilePhone($request->get('mobile_phone'));
    $shelter->setStreetName($request->get('street_name'));
    $shelter->setStreetNumber($request->get('street_number'));
    $shelter->setZipcode($request->get('zipcode'));
    $shelter->setCity($request->get('city'));
    $shelter->setCountry($request->get('country'));
    $shelter->setEmail($request->get('email'));
    $shelter->setFirstname($request->get('firstname'));
    $shelter->setLastname($request->get('lastname'));
    $shelter->setLinkFB($request->get('link_FB'));
    $shelter->setLinkInstagram($request->get('link_instagram'));
    $shelter->setLinkCagnotte($request->get('link_cagnotte'));
    $shelter->setLinkWebsite($request->get('link_website'));
    $shelter->setHours($request->get('hours'));
    $shelter->setAdoptionConditions($request->get('adoption_conditions'));
    $shelter->setCreatedAt(new \DateTime());
    $shelter->setUpdatedAt(new \DateTime());
    $shelter->setStatus(0);
    $shelter->setDepartment($department);

    //treatment for an  image
    $image = $request->files->get('picture1');
    if ($image !== null) {
      $shelter->setPicture1("public/uploads/images/shelters/" . $request->files->get('picture1')->getFileName() . '.' . $image->guessExtension());
      $nameImage = $request->files->get('picture1')->getFileName();
      $image->move(
        $this->getParameter('shelters_images_directory'),
        $nameImage . '.' . $image->guessExtension()
      );
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($shelter);
    $em->persist($user);
    $em->flush();
    
    $this->addFlash('success', 'shelter ajouté avec images');
    return new JsonResponse(['success' => 'Shelter added with picture with success.'], 200);
  }

  /**
   * 
   * Edit a shelter with image shelter
   * 
   * @Route("/api/shelters/{id}/edit", name="api_edit_shelter", methods={"POST"})
   */

  public function editShelterWhithImage(Request $request,  ValidatorInterface $validatore, DepartmentRepository $departmentRepository, $id, ShelterRepository $shelterRepository)
  {

  
    $shelter = $shelterRepository->find($id);
    $department = $departmentRepository->find($request->get('department'));

    $errors = [];

    if ($shelter === null ) {
      $errors[] = 'Shelter not found.';
    }
    if ($department === null ) {
      $errors[] = 'Department not found.';
    }
   

    if (count($errors) > 0) {
      return new JsonResponse(['error' => $errors], 404);
    }
    $shelter->setName($request->get('name'));
    $shelter->setDescription($request->get('description'));
    $shelter->setSiretNumber($request->get('siretNumber'));
    $shelter->setPhoneNumber($request->get('phone_number'));
    $shelter->setMobilePhone($request->get('mobile_phone'));
    $shelter->setStreetName($request->get('street_name'));
    $shelter->setStreetNumber($request->get('street_number'));
    $shelter->setZipcode($request->get('zipcode'));
    $shelter->setCity($request->get('city'));
    $shelter->setCountry($request->get('country'));
    $shelter->setEmail($request->get('email'));
    $shelter->setFirstname($request->get('firstname'));
    $shelter->setLastname($request->get('lastname'));
    $shelter->setLinkFB($request->get('link_FB'));
    $shelter->setLinkInstagram($request->get('link_instagram'));
    $shelter->setLinkCagnotte($request->get('link_cagnotte'));
    $shelter->setLinkWebsite($request->get('link_website'));
    $shelter->setHours($request->get('hours'));
    $shelter->setAdoptionConditions($request->get('adoption_conditions'));
    $shelter->setUpdatedAt(new \DateTime());
    $shelter->setDepartment($department);


    //treatment for an  image
    $image = $request->files->get('picture1');
    if ($image !== null) {
      $shelter->setPicture1("public/uploads/images/shelters/" . $request->files->get('picture1')->getFileName() . '.' . $image->guessExtension());
      $nameImage = $request->files->get('picture1')->getFileName();
      $image->move(
        $this->getParameter('shelters_images_directory'),
        $nameImage . '.' . $image->guessExtension()
      );
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($shelter);
    $em->flush();

    // message flash aléatoire
    $this->addFlash('success', 'shelter ajouté avec images');

    return new JsonResponse(['success' => 'Shelter added with picture with success.'], 200);
  }
}
