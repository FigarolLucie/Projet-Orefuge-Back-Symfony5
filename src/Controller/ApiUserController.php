<?php

namespace App\Controller;

use App\Entity\User;
use App\Repository\RoleRepository;
use App\Repository\UserRepository;
use App\Repository\ShelterRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class ApiUserController extends AbstractController
{
    
  /**
   * Create a new User
   * 
   * @Route("/api/users", name="api_new_user", methods={"POST"})
   */

  public function newUser(Request $request, SerializerInterface $serializer, \Swift_Mailer $mailer, ValidatorInterface $validator, UserPasswordEncoderInterface $userPasswordEncoder, RoleRepository $roleRepository)
  {
    $user = new User();

    $JSONUser = $request->getContent();
    $user = $serializer->deserialize($JSONUser, User::class, 'json');

    $errors = $validator->validate($user);

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


    // $role = $roleRepository->findBy(["name"=>"Utilisateur"]);

    $user->setUsername($user->getEmail());
    $user->setEmail($user->getEmail());
    $user->setTerms(true);
    $user->setCreatedAt(new \DateTime());
    $user->setUpdatedAt(new \DateTime());
    $user->setRoles([]);

    $passwordHashed = $userPasswordEncoder->encodePassword($user, $user->getPassword());
    $user->setPassword($passwordHashed);

    $em = $this->getDoctrine()->getManager();
    $em->persist($user);
    $em->flush();

    $response = $this->sendRegisterConfirmationEmail($user, $mailer);

    return $response;
  }

  /**
   * Send an confirmation eman when a user has created an account
   * 
   */

  public function sendRegisterConfirmationEmail($user, $mailer)
  {
    $message = (new \Swift_Message('Confirmation de la création de votre compte sur ORefuge'))
      ->setFrom('orefuge2020@gmail.com')
      ->setTo($user->getEmail())
      ->setBody(
        $this->renderView(
          'emails/registration.html.twig',
          ['user' => $user]
        ),
        'text/html'
      );
    $mailer->send($message);

    return new JsonResponse(['success' => 'New Uer added with success.'], 200);
  }

  /**
   * Return to the method who's going to change the status of a user
   * 
   * @Route("/api/confirmed-registration/{user_id}", name="api_validate_new_user", methods={"GET"})
   */

  public function confirmNewUserRegistration($user_id)
  {
    $response = $this->changeStatus($user_id);

    return $response;
  }

  /**
   * Change the status of a User
   * 
   * @Route("/api/confirmed-registration/{user_id}", name="api_change_user_status", methods={"POST"})
   */
  public function changeStatus($user_id)
  {
    $user = $this->getDoctrine()->getRepository(User::class)->find($user_id);
    $user->setStatus(true);

    $em = $this->getDoctrine()->getManager();
    $em->persist($user);
    $em->flush();

    return $this->redirect('http://orefuge.fr');
    // return $this->redirect(('http://www.orefuge.fr/inscritpion-valide/');
  }

  /**
   * GET one User
   * 
   * @Route("/api/users/{id<\d+>}", name="api_one_user", methods={"GET"})
   */
  public function oneUser($id, UserRepository $userRepository)
  {
    // Récupération de le user via UserRepository
    $user = $userRepository->findOneUserByStatusAndId($id);

    if ($user === null || $user === []) {
      return new JsonResponse(['error' => 'User not found.'], 404);
    }

    // On envoie les données de l'animal souhaité en JSON
    return $this->json($user, Response::HTTP_OK, [], ['groups' => 'oneUser']);
  }
  /**
   * GET one User without id
   * 
   * @Route("/api/oneuser", name="api_user_without_id", methods={"GET"})
   */
  public function oneUserWithoutId(UserRepository $userRepository, ShelterRepository $shelterRepository)
  {

    if ($this->getUser()) {
      $user = $this->getUser();
      $shelter = $shelterRepository->find($user->getId());
      $data['user']['id'] = $user->getId();
      $data['user']['username'] = $user->getUsername();
      $data['user']['id_shelter'] = $shelter;
    }

    return new JsonResponse($data, 200);
  }


  /**
   * ATTENTION ! ROUTE EN CARTON, NE PAS UTILISER POUR LE MOMENT - WORK IN PROGRESS CF TODO en bas method Caroline
   * 
   * Update an existing User
   *
   * @Route("/api/update/users/{id<\d+>}", name="api_update_user", methods={"POST"})
   */
  public function updateUser($id, Request $request, ValidatorInterface $validator, SerializerInterface $serializer, UserRepository $userRepository)
  {
    // Va chercher l'enregistrement demandé grace à son id
    $user = $userRepository->findOneUserByStatusAndId($id);
    // dump($user);

    if ($user === null || $user === []) {
      return new JsonResponse(['error' => 'User not found.'], 404);
    }

    $JSONUser = $request->getContent();
    $userWithUpdate = $serializer->deserialize($JSONUser, User::class, 'json');
    // dd($userWithUpdate);
    $errors = $validator->validate($userWithUpdate);

    // si il y a des erreurs, on alerte le front
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

    // sinon, si tout est OK, on peut modifier le User inital avec les nouvelles données du User (celle de $userWithUpdate)
    $user = $userWithUpdate;

    // @todo 
    // encoder password
    // ajouter le updated at

    $manager = $this->getDoctrine()->getManager();
    $manager->flush();

    return new JsonResponse(['success' => 'User updated with success.'], 200);
  }
}
