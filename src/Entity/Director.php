<?php

namespace App\Entity;

use App\Repository\DirectorRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: DirectorRepository::class)]
class Director
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $profile_pic = null;

    #[ORM\OneToMany(mappedBy: 'director', targetEntity: HorrorMovies::class)]
    private Collection $horrorMovies;

    public function __construct()
    {
        $this->horrorMovies = new ArrayCollection();
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

    public function getProfilePic(): ?string
    {
        return $this->profile_pic;
    }

    public function setProfilePic(?string $profile_pic): static
    {
        $this->profile_pic = $profile_pic;

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
            $horrorMovie->setDirector($this);
        }

        return $this;
    }

    public function removeHorrorMovie(HorrorMovies $horrorMovie): static
    {
        if ($this->horrorMovies->removeElement($horrorMovie)) {
            // set the owning side to null (unless already changed)
            if ($horrorMovie->getDirector() === $this) {
                $horrorMovie->setDirector(null);
            }
        }

        return $this;
    }
}
