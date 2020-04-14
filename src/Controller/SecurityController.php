<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\RoleRepository;
use App\Repository\ShelterRepository;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class SecurityController extends AbstractController
{
  /**
   *? Connects a user.
   * 
   * @return JsonResponse
   * 
   ** @Route("/api/login_check", name="login", methods={"GET", "POST"})
   */
  public function login(Request $request): JsonResponse
  {
    $user = $this->getUser();

    return $this->json([
      'username' => $user->getUsername(),
      //'roles' => $user->getRoles()
    ]);
  }

  /**
   * @Route("/api/logout", name="logout")
   */
  public function logout()
  {
    throw new \Exception('This method can be blank - it will be intercepted by the logout key on your firewall');
  }

}
