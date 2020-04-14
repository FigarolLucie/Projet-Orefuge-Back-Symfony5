<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Entity\ShelterContact;
use App\Repository\ShelterRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ShelterContactController extends AbstractController
{
  /**
   * Return a shelter contact when the form is sumbit in front
   * 
   * @Route("/api/shelter-contact", name="api_shelter_contact", methods={"POST"})
   * 
   */
  public function newShelterContact(Request $request, SerializerInterface $serializer, \Swift_Mailer $mailer, ValidatorInterface $validator, ShelterRepository $shelterRepository)
  {
    $shelterContact = new ShelterContact();

    $JSONShelterContact = $request->getContent();
    $shelterContact = $serializer->deserialize($JSONShelterContact, ShelterContact::class, 'json');

    $errors = $validator->validate($shelterContact);

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

    // Message flash 
    $this->addFlash('message', 'Nouveau contact de refuge généré');

    //A la création du nouveau contact, on veut envoyer le mail
    // on appelle donc la methode asssociée        
    $response = $this->sendShelterContactInformationEmail($shelterContact, $mailer, $shelterRepository);

    return $response;
  }

  /**
   * Send by email the form et copy to visitor
   * 
   */

  public function sendShelterContactInformationEmail($shelterContact, $mailer, $shelterRepository)
  {
    $shelter = $shelterRepository->find($shelterContact->getShelterId());

    $message = (new \Swift_Message('Nouveau message à l\'attention de votre refuge'))
      ->setFrom($shelterContact->getEmail())
      ->setTo([$shelter->getEmail(), $shelterContact->getEmail() => $shelterContact->getFirstname() . ' ' . $shelterContact->getLastname()])
      ->setBody(
        $this->renderView(
          'emails/shelterContact.html.twig',
          ['shelterContact' => $shelterContact]
        ),
        'text/html'
      );
    $mailer->send($message);

    $this->addFlash('message', 'Nouveau message transmis au shelter et au visteur.');

    // return $response;    
    return new JsonResponse(['success' => 'New Contact message send with success to the shelter and the visitor.'], 200);
  }
}
