<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class FrontHomeController extends AbstractController
{
  /**
   * Home of the site
   * @Route("/", name="home")
   */
  public function home()
  {
    return $this->render('front/front-home.html.twig', [
    ]);

    /* Old way to access to the back-office*/
    //return $this->redirectToRoute('login_back');
  }
}
