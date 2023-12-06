<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AllHorrorMoviesController extends AbstractController
{
    #[Route('/all/horror/movies', name: 'app_all_horror_movies')]
    public function index(): Response
    {
        return $this->render('all_horror_movies/index.html.twig', [
            'controller_name' => 'AllHorrorMoviesController',
        ]);
    }
}
