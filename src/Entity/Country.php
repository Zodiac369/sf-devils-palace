<?php

namespace App\Entity;

use App\Repository\CountryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CountryRepository::class)]
class Country
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\OneToMany(mappedBy: 'country', targetEntity: HorrorMovies::class)]
    private Collection $horrorMovies;

    public function __construct()
    {
        $this->horrorMovies = new ArrayCollection();
    }
    
    public function __toString(): string
    {
        return $this->name;
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

    /**
     * @return Collection<int, HorrorMovies>
     */
    public function getHorrorMovies(): Collection
    {
        return $this->horrorMovies;
    }

    public function addHorrorMovie(HorrorMovies $horrorMovie): static
    {
        if (!$this->horrorMovies->contains($horrorMovie)) {
            $this->horrorMovies->add($horrorMovie);
            $horrorMovie->setCountry($this);
        }

        return $this;
    }

    public function removeHorrorMovie(HorrorMovies $horrorMovie): static
    {
        if ($this->horrorMovies->removeElement($horrorMovie)) {
            // set the owning side to null (unless already changed)
            if ($horrorMovie->getCountry() === $this) {
                $horrorMovie->setCountry(null);
            }
        }

        return $this;
    }
}
