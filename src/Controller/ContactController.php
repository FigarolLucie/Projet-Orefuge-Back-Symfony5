<?php

namespace App\Controller;

use App\Entity\Contact;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Serializer\SerializerInterface;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactController extends AbstractController
{
    /**
     * Genère un nouveau contact à la soumission du formulaire en front
     * 
     * @Route("/api/contact", name="api_contact", methods={"POST"})
     * 
     */
    public function newContact(Request $request, SerializerInterface $serializer, \Swift_Mailer $mailer, ValidatorInterface $validator)
    {
        $contact = new Contact();

        $JSONContact = $request->getContent();
        $contact = $serializer->deserialize($JSONContact, Contact::class, 'json');
        
        $errors = $validator->validate($contact);

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
        $this->addFlash('message', 'Nouveau contact généré'); 

        //A la création du nouveau contact, on veut envoyer le mail
        // on appelle donc la methode asssociée
        
        $response = $this->sendContactInformationEmail($contact, $mailer);
    
        return $response;
        
    }

    /**
    * Envoie par mail sur notre boite orefuge2020 le contenu du formulaire rempli en front
    * et cc : le visiteur
    */

    public function sendContactInformationEmail($contact, $mailer)
    {     
        $message = (new \Swift_Message('Nouveau message sur ORefuge'))
            ->setFrom($contact->getEmail())
            // ->setTo(['orefuge2020@gmail.com', $contact->getEmail() => 'visiteur'])
            ->setTo(['orefuge2020@gmail.com', $contact->getEmail() => $contact->getFirstname().' ' .$contact->getLastname()])
            ->setReplyTo($contact->getEmail())
            ->setBody(
            $this->renderView(              
                'emails/contact.html.twig',
                ['contact' => $contact]
            ),
            'text/html'
        );
        $mailer->send($message);

        // Message flash 
        $this->addFlash('message', 'Nouveau message transmis à ORefuge2020.'); 

        // $response = $this->sendContactInformationEmail($contact, $mailer);
    
        // return $response;    
        return new JsonResponse(['success' => 'New Contact message send with success to oreguge 2020.'], 200);
         
    }

}