<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    public function __construct(
        private UserPasswordHasherInterface $hasher,
        private string $adminEmail

    ){

    }
    public function load(ObjectManager $manager): void
    {
        $regularUser = new User();
        $regularUser
        ->setEmail('marco@gmail.com')
        ->setPassword($this->hasher->hashPassword($regularUser, 'mdp369'));

        $manager->persist($regularUser);

        $adminUser = new User();
        $adminUser
        ->setEmail($this->adminEmail)
        ->setRoles(['ROLE_ADMIN'])
        ->setPassword($this->hasher->hashPassword($adminUser, 'mdp369'));

        $manager->persist($adminUser);

  $manager->flush();
    }
}
