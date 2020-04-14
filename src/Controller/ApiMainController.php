<?php

namespace App\Controller;

use App\Repository\TagRepository;
use App\Repository\SizeRepository;
use App\Repository\TypeRepository;
use App\Repository\RegionRepository;
use App\Repository\SpeciesRepository;
use App\Repository\CategoryRepository;
use App\Repository\DepartmentRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
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

    if ($listSizes === null ) {
      return new JsonResponse(['error' => 'Sizes list not found.'], 404);
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

    return $this->json($listRegions, Response::HTTP_OK, [], ['groups' => 'listRegions']);
  }

}
