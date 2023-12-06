<?php

namespace App\Entity;

use App\Repository\HorrorMoviesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
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

    #[ORM\ManyToOne(inversedBy: 'horrorMovies')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Director $director = null;

    #[ORM\ManyToMany(targetEntity: MoviesHorrorGenre::class, inversedBy: 'horrorMovies')]
    private Collection $genres;

    #[ORM\ManyToOne(inversedBy: 'horrorMovies')]
    private ?Country $country = null;

    public function __construct()
    {
        $this->genres = new ArrayCollection();
    }

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

    public function getDirector(): ?Director
    {
        return $this->director;
    }

    public function setDirector(?Director $director): static
    {
        $this->director = $director;

        return $this;
    }

    /**
     * @return Collection<int, MoviesHorrorGenre>
     */
    public function getGenres(): Collection
    {
        return $this->genres;
    }

    public function addGenre(MoviesHorrorGenre $genre): static
    {
        if (!$this->genres->contains($genre)) {
            $this->genres->add($genre);
        }

        return $this;
    }

    public function removeGenre(MoviesHorrorGenre $genre): static
    {
        $this->genres->removeElement($genre);

        return $this;
    }

    public function getCountry(): ?Country
    {
        return $this->country;
    }

    public function setCountry(?Country $country): static
    {
        $this->country = $country;

        return $this;
    }

}
