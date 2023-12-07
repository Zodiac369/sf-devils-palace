<?php

namespace App\Controller;

use App\Entity\HorrorMovies;
use App\Repository\HorrorMoviesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class MoviesController extends AbstractController
{
    #[Route('/all-movies', name: 'all_movies')]
    public function index(HorrorMoviesRepository $horrorMoviesRepository): Response
    {
        $horrorMovies = $horrorMoviesRepository->findAll();

        return $this->render('movies/allHorrorMovies.html.twig', [
            'horrorMovies' => $horrorMovies,
        ]);
    }

    #[Route('/movies/{id<\d+>}', name: 'movie_item')]
    public function item(HorrorMovies $horrorMovie): Response
    {
        return $this->render('movies/item.html.twig', [
            'horrorMovie' => $horrorMovie,
        ]);
    }
}
