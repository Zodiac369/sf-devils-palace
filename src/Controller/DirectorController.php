<?php

namespace App\Controller;

use App\Entity\Director;
use App\Repository\DirectorRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DirectorController extends AbstractController
{
    #[Route('/directors', name: 'all_directors')]
    public function index(DirectorRepository $directorRepository): Response
    {
        $directors = $directorRepository->findAll();

        return $this->render('director/allDirectors.html.twig', [
            'directors' => $directors,
        ]);
    }

    #[Route('/director/{id<\d+>}', name: 'director_item' )]
    public function item(Director $director): Response
    {

        return $this->render('director/item.html.twig', [
            'director' => $director,
        ]);
    }
}
