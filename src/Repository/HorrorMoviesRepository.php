<?php

namespace App\Repository;

use App\Entity\HorrorMovies;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<HorrorMovies>
 *
 * @method HorrorMovies|null find($id, $lockMode = null, $lockVersion = null)
 * @method HorrorMovies|null findOneBy(array $criteria, array $orderBy = null)
 * @method HorrorMovies[]    findAll()
 * @method HorrorMovies[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HorrorMoviesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HorrorMovies::class);
    }

//    /**
//     * @return HorrorMovies[] Returns an array of HorrorMovies objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('h.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?HorrorMovies
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
