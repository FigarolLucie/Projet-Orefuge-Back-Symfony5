<?php

namespace App\Controller\Admin;

use App\Entity\Shelter;
use App\Form\ShelterType;
use App\Repository\ShelterRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;

class AdminShelterController extends AbstractController
{
  

  /**
   * Home page for Admin, list of shelters
   * @Route("/admin", name="admin")
   */
  public function allShelters(ShelterRepository $shelterRepository)
  {

    $listShelters = $shelterRepository->findAll();
    return $this->render('admin/index.html.twig', [
      'shelters' => $listShelters,
    ]);
  }
  /**
   * Edition of a shelter
   * @Route("admin/shelters/{id<\d+>}/edit", name="admin_edit_shelter", methods={"GET", "POST"})
   */
  public function editShelter(Shelter $shelter, ShelterRepository $shelterRepository, Request $request)
  {

    $form = $this->createForm(ShelterType::class, $shelter);
    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
      $this->getDoctrine()->getManager()->flush();

      return $this->redirectToRoute('admin');
    }


    return $this->render('admin/shelter/edit_shelter.html.twig', [
      'oneShelter' => $shelter,
      'form' => $form->createView()

    ]);
  }

  /**
   * Add an Shelter
   * @Route("admin/shelter/add", name="admin_shelter_add", methods={"GET","POST"})
   */
  public function shelterAdd(ShelterRepository $shelterRepository, Request $request)
  {
    $shelter = new Shelter();
    $form = $this->createForm(ShelterType::class, $shelter);
    $form->handleRequest($request);



    if ($form->isSubmitted()) {
      $shelter->setStatus(0);
      $shelter->setCreatedAt(new \DateTime());
      $shelter->setUpdatedAt(new \DateTime());

      $em = $this->getDoctrine()->getManager();
      $em->persist($shelter);
      $em->flush();


      return $this->redirectToRoute('admin');
    }


    return $this->render('admin/shelter/formAddShelter.html.twig', [
      'shelter' => $shelter,
      'form' => $form->createView()

    ]);
  }

  /**
   * Change the status of a shelter
   * @Route("admin/shelters/{id<\d+>}/status", name="admin_edit_shelter_status", methods={"GET"})
   */
  public function changeStatusShelter($id, ShelterRepository $shelterRepository)
  {

    $shelter = $shelterRepository->find($id);
    $status = $shelter->getStatus();
    //dump($status);
    if ($status === true) {
      $shelter->setStatus(false);
    } else {
      $shelter->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($shelter);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin');
  }

  /**
   * Delete a shelter
   * @Route("/admin/shelters/{id}/delete", name="admin_delete_shelter", methods={"DELETE"})
   */
  public function deleteShelter($id, ShelterRepository $shelterRepository)
  {

    $shelter = $shelterRepository->find($id);
    $em = $this->getDoctrine()->getManager();
    $em->remove($shelter);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin');
  }
}
