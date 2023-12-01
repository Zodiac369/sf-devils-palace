<?php

namespace App\Repository;

use App\Entity\MoviesHorrorGenre;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<MoviesHorrorGenre>
 *
 * @method MoviesHorrorGenre|null find($id, $lockMode = null, $lockVersion = null)
 * @method MoviesHorrorGenre|null findOneBy(array $criteria, array $orderBy = null)
 * @method MoviesHorrorGenre[]    findAll()
 * @method MoviesHorrorGenre[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MoviesHorrorGenreRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MoviesHorrorGenre::class);
    }

//    /**
//     * @return MoviesHorrorGenre[] Returns an array of MoviesHorrorGenre objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('m.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?MoviesHorrorGenre
//    {
//        return $this->createQueryBuilder('m')
//            ->andWhere('m.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
