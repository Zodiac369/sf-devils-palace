<?php

namespace App\Controller\Admin;

use App\Entity\Country;
use App\Entity\Director;
use App\Entity\HorrorMovies;
use App\Entity\MoviesHorrorGenre;
use App\Repository\HorrorMoviesRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    public function __construct(
        private AdminUrlGenerator $adminUrlGenerator,
        private EntityManagerInterface $em
    ){

    }
    
    #[Route('/admin', name: 'admin')]
    public function dashboard(HorrorMoviesRepository $moviesRepository): Response
    {
          
        $totalMovies = $this->em->getRepository(HorrorMovies::class)
        ->createQueryBuilder('m')
        ->select('count(m.id)')
        ->getQuery()
        ->getSingleScalarResult();

        $genreDistribution = $this->em->getRepository(HorrorMovies::class)
        ->createQueryBuilder('m')
        ->select('g.name as genre, count(m.id) as count')
        ->leftJoin('m.genres', 'g')
        ->groupBy('g.name')
        ->getQuery()
        ->getResult();

        return $this->render('admin/home.html.twig', [
        'totalMovies' => $totalMovies,
        'genreDistribution' => $genreDistribution,
        ]);

    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Devils Palace');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Movies', 'fas fa-list', HorrorMovies::class);
        yield MenuItem::linkToCrud('Directors', 'fas fa-list', Director::class);
        yield MenuItem::linkToCrud('Countries', 'fas fa-list', Country::class);
        yield MenuItem::linkToCrud('Genres', 'fas fa-list', MoviesHorrorGenre::class);

    }
}
