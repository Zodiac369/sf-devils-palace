<?php

namespace App\Entity;

use App\Repository\HorrorMoviesRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: HorrorMoviesRepository::class)]
class HorrorMovies
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $date_of_release = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $synopsis = null;

    #[ORM\Column]
    private ?float $averrage_rate = null;

    #[ORM\Column(length: 255)]
    private ?string $cover = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getDateOfRelease(): ?\DateTimeInterface
    {
        return $this->date_of_release;
    }

    public function setDateOfRelease(\DateTimeInterface $date_of_release): static
    {
        $this->date_of_release = $date_of_release;

        return $this;
    }

    public function getSynopsis(): ?string
    {
        return $this->synopsis;
    }

    public function setSynopsis(string $synopsis): static
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    public function getAverrageRate(): ?float
    {
        return $this->averrage_rate;
    }

    public function setAverrageRate(float $averrage_rate): static
    {
        $this->averrage_rate = $averrage_rate;

        return $this;
    }

    public function getCover(): ?string
    {
        return $this->cover;
    }

    public function setCover(string $cover): static
    {
        $this->cover = $cover;

        return $this;
    }
}
