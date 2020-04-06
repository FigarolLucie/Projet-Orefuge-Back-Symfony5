<?php

namespace App\Controller\Admin;

use App\Entity\Animal;
use App\Form\AnimalType;
use App\Repository\AnimalRepository;
use App\Repository\ShelterRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminAnimalController extends AbstractController
{
  /**
   * List of all animals for a shelter
   * @Route("admin/shelters/{id<\d+>}/animal", name="admin_shelter_animals", methods={"GET"})
   */
  public function animalsByShelter($id, AnimalRepository $animalRepository, ShelterRepository $shelterRepository)
  {
    $shelterInformations = $shelterRepository->find($id);
    $animals = $animalRepository->findAllAnimalsForAShelter($id);
    $countAnimals = count($animals);
    //dd($animals);
    return $this->render('admin/animal/animalByShelter.html.twig', [
      'animals' => $animals,
      'shelterInformations' => $shelterInformations,
      'countAnimals' => $countAnimals,
       ]);
  }

  /**
   * See animal's details
   * @Route("admin/{id_animal}/animal", name="admin_animals", methods={"GET"})
   */
  public function animalsDetails($id_animal, AnimalRepository $animalRepository)
  {
   
    $animal = $animalRepository->find($id_animal);
   
    //dd($animals);
    return $this->render('admin/animal/animalDetail.html.twig', [
      'animal' => $animal,
       ]);
  }

   /**
   * Liste des animaux Caro
   * @Route("admin/animals", name="admin_list_animals", methods={"GET"})
   */
  public function animalsList( AnimalRepository $animalRepository)
  {
   
    $animals = $animalRepository->findAll();
   
    //dd($animals);
    return $this->render('admin/animal/listAnimal.html.twig', [
      'animals' => $animals,
       ]);
  }


  /**
   * Edit an animal
   * @Route("admin/animal/{id}/edit", name="admin_animals_edit", methods={"GET","POST"})
   */
  public function animalsEdit(Animal $animal, AnimalRepository $animalRepository, Request $request)
  {
    $form = $this->createForm(AnimalType::class, $animal);
    //$animal = $animalRepository->find($animal);

    $form->handleRequest($request);
    if ($form->isSubmitted() && $form->isValid()) {
      $this->getDoctrine()->getManager()->flush();

      return $this->redirectToRoute('admin');
  }
   
    return $this->render('admin/animal/editFormAnimal.html.twig', [
      'oneAnimal' => $animal,
      'form' => $form->createView()

    ]);
  }

  /**
   * Add an animal
   * @Route("admin/animal/add", name="admin_animals_add", methods={"GET","POST"})
   */
  public function animalsAdd( AnimalRepository $animalRepository, Request $request)
  {
    $animal = new Animal();
    $form = $this->createForm(AnimalType::class, $animal);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $animal->setStatus(1);
        $animal->setCreatedAt(new \DateTime());
        $animal->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($animal);
        $em->flush();
        

        return $this->redirectToRoute('admin');
    }


    return $this->render('admin/animal/formAddAnimal.html.twig', [
      'animal' => $animal,
      'form' => $form->createView()

    ]);
  }

   /**
   * Edit a animal Caro
   * @Route("admin/animal/{id}/edit/caro", name="admin_animals_edit_caro", methods={"GET","POST"})
   */
  public function animalsEditCaro(Animal $animal, AnimalRepository $animalRepository, Request $request)
  {
    $form = $this->createForm(AnimalType::class, $animal);
    //$animal = $animalRepository->find($animal);

    $form->handleRequest($request);
    if ($form->isSubmitted() && $form->isValid()) {
      $this->getDoctrine()->getManager()->flush();

      return $this->redirectToRoute('admin_list_animals');
  }
   
    return $this->render('admin/animal/formListAnimal.html.twig', [
      'oneAnimal' => $animal,
      'form' => $form->createView()

    ]);
  }

  /**
   * @Route("admin/shelter/animal/{id<\d+>}", name="admin_animals_status", methods={"GET"})
   */
  public function changeAnimalStatus($id, AnimalRepository $animalRepository)
  {
    $animal = $animalRepository->find($id);
    $status = $animal->getStatus();
    $shelter = $animal->getShelter();
    $id_shelter = $shelter->getId();

    if($status == 1)
    {
      $animal->setStatus(0);
    }
    elseif($status == 0 || $status == 3 ) 
    {
      $animal->setStatus(1);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();
    
    //dd($animals);
    return $this->redirectToRoute('admin_shelter_animals', ['id'=>$id_shelter]);
  }

  /**
   * @Route("admin/shelter/animal/{id<\d+>}/statusAdopted", name="admin_animals_status_adopted", methods={"GET"})
   */
  public function changeAnimalStatusAdopted($id, AnimalRepository $animalRepository)
  {
    $animal = $animalRepository->find($id);
    $shelter = $animal->getShelter();
    $id_shelter = $shelter->getId();

   
    $animal->setStatus(2);
    

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();
    
    //dd($animals);
    return $this->redirectToRoute('admin_shelter_animals', ['id'=>$id_shelter]);
  }

  /**
   * Put an animal to adoption
   * @Route("admin/shelter/animal/{id<\d+>}/statusToAdopt", name="admin_animals_status_adopt", methods={"GET"})
   */
  public function changeAnimalStatusToAdopt($id, AnimalRepository $animalRepository)
  {
    $animal = $animalRepository->find($id);
    $shelter = $animal->getShelter();
    $id_shelter = $shelter->getId();

   
    $animal->setStatus(1);
    

    $em = $this->getDoctrine()->getManager();
    $em->persist($animal);
    $em->flush();
    
    //dd($animals);
    return $this->redirectToRoute('admin_shelter_animals', ['id'=>$id_shelter]);
  }
}
