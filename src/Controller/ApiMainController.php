<?php

namespace App\Controller;

use App\Entity\Tag;
use App\Entity\Size;
use App\Entity\Type;
use App\Entity\Species;
use App\Entity\Category;
use App\Repository\TagRepository;
use App\Repository\SizeRepository;
use App\Repository\TypeRepository;
use App\Repository\UserRepository;
use App\Repository\RegionRepository;
use App\Repository\SpeciesRepository;
use App\Repository\CategoryRepository;
use App\Repository\DepartmentRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ApiMainController extends AbstractController
{

   // |----------------------  ROUTES EN GET ----------------------------|


  /**
   * GET all sizes
   * 
   * @Route("/api/sizes", name="api_list_sizes", methods={"GET"})
   */
  public function listAllSizes(SizeRepository $sizeRepository)
  {
    $listSizes = $sizeRepository->findBy(["status" => 1]);

    if ($listSizes === null) {
      return new JsonResponse(['error' => 'Size not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listSizes, Response::HTTP_OK, [], ['groups' => 'listSizes']);
  }

  /**
   * GET all types
   * 
   * @Route("/api/types", name="api_list_types", methods={"GET"})
   */
  public function listAllTypes(TypeRepository $typeRepository)
  {
    $listTypes = $typeRepository->findBy(["status" => 1]);

    if ($listTypes === null) {
      return new JsonResponse(['error' => 'Size not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listTypes, Response::HTTP_OK, [], ['groups' => 'listTypes']);
  }
   /**
   * GET all tags
   * 
   * @Route("/api/tags", name="api_list_tags", methods={"GET"})
   */
  public function listAllTags(TagRepository $tagsRepository)
  {
    $listTags = $tagsRepository->findBy(["status" => 1]);

    if ($listTags === null) {
      return new JsonResponse(['error' => 'Tags not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listTags, Response::HTTP_OK, [], ['groups' => 'listTags']);
  }
  /**
   * GET all species
   * 
   * @Route("/api/species", name="api_list_species", methods={"GET"})
   */
  public function listAllSpecies(SpeciesRepository $speciesRepository)
  {
    $listSpecies = $speciesRepository->findBy(["status" => 1]);

    if ($listSpecies === null) {
      return new JsonResponse(['error' => 'Species not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listSpecies, Response::HTTP_OK, [], ['groups' => 'listSpecies']);
  }
  /**
   * GET all categories
   * 
   * @Route("/api/categories", name="api_list_categories", methods={"GET"})
   */
  public function listAllCategories(CategoryRepository $categorieRepository)
  {
    $listCategories = $categorieRepository->findBy(["status" => 1]);

    if ($listCategories === null) {
      return new JsonResponse(['error' => 'Categories not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listCategories, Response::HTTP_OK, [], ['groups' => 'listCategories']);
  }
  /**
   * GET all departments
   * 
   * @Route("/api/departments", name="api_list_departments", methods={"GET"})
   */
  public function listAllDepartments(DepartmentRepository $departmentsRepository)
  {
    $listDepartments = $departmentsRepository->findAll();

    if ($departmentsRepository === null) {
      return new JsonResponse(['error' => 'Departments not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listDepartments, Response::HTTP_OK, [], ['groups' => 'listDepartments']);
  }
  /**
   * GET all regions
   * 
   * @Route("/api/regions", name="api_list_regions", methods={"GET"})
   */
  public function listAllRegion(RegionRepository $regionRepository)
  {
    $listRegions = $regionRepository->findAll();

    if ($listRegions === null) {
      return new JsonResponse(['error' => 'Regions not found.'], 404);
    }

    // On envoie les données de la taille souhaité en JSON
    return $this->json($listRegions, Response::HTTP_OK, [], ['groups' => 'listRegions']);
  }


   // |----------------------  ROUTES EN POST ----------------------------|


  /**
   *  Ajout d'un type en BDD
   * 
   * @Route("/api/PostTypes", name="api_list_POST_types", methods={"POST"})
   */
  public function postType(Request $request, SerializerInterface $serializer, ValidatorInterface $validator)
  {
    $JSONType = $request->getContent();

    $type = $serializer->deserialize($JSONType, Type::class, 'json');

    // Validation de l'entité ?
    $errors = $validator->validate($type);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }
      // On renvoie les erreurs via $this->json() directement
      // car $jsonErrors = tableau PHP
      // on y ajoute un statut HTTP 422
      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }
        
    $em = $this->getDoctrine()->getManager();
    $em->persist($type);
    $em->flush();
    return $this->redirectToRoute('api_list_types', [], Response::HTTP_CREATED);
  }

  /**
   * POST for sizes
   * 
   * @Route("/api/PostSizes", name="api_list_POST_sizes", methods={"POST"})
   */
  public function postSizes(Request $request, SerializerInterface $serializer, ValidatorInterface $validator)
  {
    $JSONSize = $request->getContent();

    $size = $serializer->deserialize($JSONSize, Size::class, 'json');

    // Validation de l'entité ?
    $errors = $validator->validate($size);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }
      // On renvoie les erreurs via $this->json() directement
      // car $jsonErrors = tableau PHP
      // on y ajoute un statut HTTP 422
      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($size);
    $em->flush();
    return $this->redirectToRoute('api_list_sizes', [], Response::HTTP_CREATED);
  }

  /**
   * POST for species
   * 
   * @Route("/api/PostSpecies", name="api_list_POST_species", methods={"POST"})
   */
  public function postSpecies(Request $request, SerializerInterface $serializer, ValidatorInterface $validator)
  {
    $JSONSpecies = $request->getContent();

    $species = $serializer->deserialize($JSONSpecies, Species::class, 'json');

    // Validation de l'entité ?
    $errors = $validator->validate($species);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }
      // On renvoie les erreurs via $this->json() directement
      // car $jsonErrors = tableau PHP
      // on y ajoute un statut HTTP 422
      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($species);
    $em->flush();
    return $this->redirectToRoute('api_list_species', [], Response::HTTP_CREATED);
  }

  /**
   * POST for categories
   * 
   * @Route("/api/PostCategories", name="api_list_POST_categories", methods={"POST"})
   */
  public function postCategories(Request $request, SerializerInterface $serializer, ValidatorInterface $validator)
  {
    $JSONCategory = $request->getContent();

    $category = $serializer->deserialize($JSONCategory, Category::class, 'json');

    // Validation de l'entité ?
    $errors = $validator->validate($category);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }
      // On renvoie les erreurs via $this->json() directement
      // car $jsonErrors = tableau PHP
      // on y ajoute un statut HTTP 422
      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($category);
    $em->flush();
    return $this->redirectToRoute('api_list_categories', [], Response::HTTP_CREATED);
  }
  
  /**
   * POST for tags
   * 
   * @Route("/api/PostTags", name="api_list_POST_tag", methods={"POST"})
   */
  public function postTags(Request $request, SerializerInterface $serializer, ValidatorInterface $validator)
  {
    $JSONTag = $request->getContent();

    $tag = $serializer->deserialize($JSONTag, Tag::class, 'json');

    // Validation de l'entité ?
    $errors = $validator->validate($tag);

    if (count($errors) !== 0) {
      $jsonErrors = [];

      foreach ($errors as $error) {
        $jsonErrors[] = [
          'field' => $error->getPropertyPath(),
          'message' => $error->getMessage(),
        ];
      }
      // On renvoie les erreurs via $this->json() directement
      // car $jsonErrors = tableau PHP
      // on y ajoute un statut HTTP 422
      return $this->json($jsonErrors, Response::HTTP_UNPROCESSABLE_ENTITY);
    }

    $em = $this->getDoctrine()->getManager();
    $em->persist($tag);
    $em->flush();
    return $this->redirectToRoute('api_list_tags', [], Response::HTTP_CREATED);
  }

}
