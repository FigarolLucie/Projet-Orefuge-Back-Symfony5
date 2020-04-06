<?php

namespace App\Controller\Admin;

use App\Entity\Tag;
use App\Entity\Size;
use App\Entity\Type;
use App\Form\TagType;
use App\Form\SizeType;
use App\Form\TypeType;
use App\Entity\Species;
use App\Entity\Category;
use App\Form\SpeciesType;
use App\Form\CategoryType;
use App\Repository\TagRepository;
use App\Repository\SizeRepository;
use App\Repository\TypeRepository;
use App\Repository\SpeciesRepository;
use App\Repository\CategoryRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminMainController extends AbstractController
{
  /**
   * @Route("/admin/characteristics", name="admin_list_characteristic")
   */
  public function allCharacteristic(TagRepository $tagRepository, SpeciesRepository $speciesRepository, TypeRepository $typeRepository, CategoryRepository $categoryRepository, SizeRepository $sizeRepository)
  {
    $listTag = $tagRepository->findAll();
    $listSpecies = $speciesRepository->findAll();
    $listTypes = $typeRepository->findAll();
    $listCategories = $categoryRepository->findAll();
    $listSize = $sizeRepository->findAll();

    return $this->render('admin/characteristic/list_characteristic.html.twig', [
      'listTag' => $listTag,
      'listSpecies' => $listSpecies,
      'listTypes' => $listTypes,
      'listCategories' => $listCategories,
      'listSize' => $listSize,
    ]);
  }

  /**
   * Change the status of an species
   * @Route("admin/species/{id<\d+>}/status", name="admin_edit_species_status", methods={"GET"})
   */
  public function changeStatusShelter($id, SpeciesRepository $speciesRepository)
  {

    $species = $speciesRepository->find($id);
    $status = $species->getStatus();
    //dump($status);
    if ($status === true) {
      $species->setStatus(false);
    } else {
      $species->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($species);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin_list_characteristic');
  }
  /**
   * Change the status of a tag
   * @Route("admin/tags/{id<\d+>}/status", name="admin_edit_tags_status", methods={"GET"})
   */
  public function changeStatusTags($id, TagRepository $tagsRepository)
  {

    $tags = $tagsRepository->find($id);
    $status = $tags->getStatus();
    //dump($status);
    if ($status === true) {
      $tags->setStatus(false);
    } else {
      $tags->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($tags);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin_list_characteristic');
  }
  /**
   * Change the status of a type
   * @Route("admin/types/{id<\d+>}/status", name="admin_edit_types_status", methods={"GET"})
   */
  public function changeStatusTypes($id, TypeRepository $typeRepository)
  {

    $type = $typeRepository->find($id);
    $status = $type->getStatus();
    //dump($status);
    if ($status === true) {
      $type->setStatus(false);
    } else {
      $type->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($type);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin_list_characteristic');
  }
  /**
  * Change the status of a category
   * @Route("admin/categories/{id<\d+>}/status", name="admin_edit_categories_status", methods={"GET"})
   */
  public function changeStatusCategories($id, CategoryRepository $categoryRepository)
  {

    $categorie = $categoryRepository->find($id);
    $status = $categorie->getStatus();
    //dump($status);
    if ($status === true) {
      $categorie->setStatus(false);
    } else {
      $categorie->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($categorie);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin_list_characteristic');
  }

  /**
  * Change the status of a size
   * @Route("admin/sizes/{id<\d+>}/status", name="admin_edit_sizes_status", methods={"GET"})
   */
  public function changeStatusSizes($id, SizeRepository $sizeRepository)
  {

    $size = $sizeRepository->find($id);
    $status = $size->getStatus();
    //dump($status);
    if ($status === true) {
      $size->setStatus(false);
    } else {
      $size->setStatus(true);
    }
    $em = $this->getDoctrine()->getManager();
    $em->persist($size);
    $em->flush();
    //dd($shelter->getStatus());

    return $this->redirectToRoute('admin_list_characteristic');
  }

  /**
  * Add a species
   * @Route("admin/species/add", name="admin_add_species", methods={"POST","GET"})
   */
  public function addSpecies(SpeciesRepository $speciesRepository, Request $request)
  {

    $species = new Species;
    $form = $this->createForm(SpeciesType::class, $species);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $species->setStatus(1);
        $species->setCreatedAt(new \DateTime());
        $species->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($species);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/add_species.html.twig', [
      'shelter' => $species,
      'form' => $form->createView()

    ]);
  }
  /**
  * Edit a species
   * @Route("admin/species/{id<\d+>}/edit", name="admin_edit_species", methods={"POST","GET"})
   */
  public function editSpecies($id,SpeciesRepository $speciesRepository, Request $request)
  {

    $species = $speciesRepository->find($id);
    $form = $this->createForm(SpeciesType::class, $species);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $species->setCreatedAt(new \DateTime());
        $species->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($species);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/edit_species.html.twig', [
      'shelter' => $species,
      'form' => $form->createView()

    ]);
  }

  /**
  * Add a tag
   * @Route("admin/tags/add", name="admin_add_tags", methods={"POST","GET"})
   */
  public function addTag(TagRepository $tagRepository, Request $request)
  {

    $tag = new Tag;
    $form = $this->createForm(TagType::class, $tag);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $tag->setStatus(1);
        $tag->setCreatedAt(new \DateTime());
        $tag->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($tag);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/add_tag.html.twig', [
      'shelter' => $tag,
      'form' => $form->createView()

    ]);
  }
  /**
  * Edit a tag
   * @Route("admin/tag/{id<\d+>}/edit", name="admin_edit_tag", methods={"POST","GET"})
   */
  public function editTag($id,TagRepository $tagRepository, Request $request)
  {

    $tag = $tagRepository->find($id);
    $form = $this->createForm(TagType::class, $tag);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $tag->setCreatedAt(new \DateTime());
        $tag->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($tag);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/edit_tag.html.twig', [
      'shelter' => $tag,
      'form' => $form->createView()

    ]);
  }
   /**
  * Add a type
   * @Route("admin/types/add", name="admin_add_type", methods={"POST","GET"})
   */
  public function addTypes(TypeRepository $typeRepository, Request $request)
  {

    $type = new Type;
    $form = $this->createForm(TypeType::class, $type);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $type->setStatus(1);
        $type->setCreatedAt(new \DateTime());
        $type->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($type);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/add_type.html.twig', [
      'shelter' => $type,
      'form' => $form->createView()

    ]);
  }

  /**
  * Edit a type
   * @Route("admin/types/{id<\d+>}/edit", name="admin_edit_type", methods={"POST","GET"})
   */
  public function editType($id,TypeRepository $typeRepository, Request $request)
  {

    $type = $typeRepository->find($id);
    $form = $this->createForm(TypeType::class, $type);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $type->setCreatedAt(new \DateTime());
        $type->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($type);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/edit_type.html.twig', [
      'shelter' => $type,
      'form' => $form->createView()

    ]);
  }

   /**
  * Add a category
   * @Route("admin/category/add", name="admin_add_category", methods={"POST","GET"})
   */
  public function addCategory(CategoryRepository $categoryRepository, Request $request)
  {

    $category = new Category;
    $form = $this->createForm(CategoryType::class, $category);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $category->setStatus(1);
        $category->setCreatedAt(new \DateTime());
        $category->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($category);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/add_category.html.twig', [
      'shelter' => $category,
      'form' => $form->createView()

    ]);
  }

  /**
  * Edit a category
   * @Route("admin/category/{id<\d+>}/edit", name="admin_edit_category", methods={"POST","GET"})
   */
  public function editCatgeory($id,CategoryRepository $categoryRepository, Request $request)
  {

    $category = $categoryRepository->find($id);
    $form = $this->createForm(CategoryType::class, $category);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $category->setCreatedAt(new \DateTime());
        $category->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($category);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/edit_category.html.twig', [
      'shelter' => $category,
      'form' => $form->createView()

    ]);
  }
  /**
  * Add a size
   * @Route("admin/size/add", name="admin_add_size", methods={"POST","GET"})
   */
  public function addSize(SizeRepository $sizeRepository, Request $request)
  {

    $size = new Size;
    $form = $this->createForm(SizeType::class, $size);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
      $size->setStatus(1);
        $size->setCreatedAt(new \DateTime());
        $size->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($size);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/add_size.html.twig', [
      'shelter' => $size,
      'form' => $form->createView()

    ]);
  }

  /**
  * Edit a size
   * @Route("admin/size/{id<\d+>}/edit", name="admin_edit_size", methods={"POST","GET"})
   */
  public function editSize($id,SizeRepository $sizeRepository, Request $request)
  {

    $size = $sizeRepository->find($id);
    $form = $this->createForm(SizeType::class, $size);
    $form->handleRequest($request);
    
    

    if ($form->isSubmitted() ) {
        $size->setCreatedAt(new \DateTime());
        $size->setUpdatedAt(new \DateTime());
        
        $em = $this->getDoctrine()->getManager();
        $em->persist($size);
        $em->flush();
        

        return $this->redirectToRoute('admin_list_characteristic');
    }


    return $this->render('admin/characteristic/edit_size.html.twig', [
      'shelter' => $size,
      'form' => $form->createView()

    ]);
  }
}
