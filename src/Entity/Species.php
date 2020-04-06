<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\Collection;
use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass="App\Repository\SpeciesRepository")
 * @UniqueEntity("name")
 * @ApiResource(
 *     denormalizationContext={"groups"={"writeSpecies", "writeAnimal"}})
 */
class Species
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups({"listAnimals", "oneAnimal", "oneShelter", "listSpecies"})
     * @Groups({"writeSpecies", "writeAnimal"})
     * 
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=25)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal", "oneShelter", "listSpecies"})
     * @Groups({"writeSpecies"})
     */
    private $name;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     * @Groups({"writeSpecies"})
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     * @Groups({"writeSpecies"})
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="boolean")
     * @Assert\Type("bool")
     * @Assert\NotBlank
     * @Groups({"writeSpecies"})
     */
    private $status;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Animal", mappedBy="species", orphanRemoval=true)
     * 
     */
    private $animals;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Type", inversedBy="species")
     * @ORM\JoinColumn(nullable=false)
     * @Assert\NotBlank
     * @Groups({"writeSpecies"})
     * @Groups({"oneAnimal"})
     */
    private $type;

    public function __construct()
    {
        $this->animals = new ArrayCollection();
    }
    public function __toString()
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

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeInterface
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(?\DateTimeInterface $updatedAt): self
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getStatus(): ?bool
    {
        return $this->status;
    }

    public function setStatus(bool $status): self
    {
        $this->status = $status;

        return $this;
    }

    /**
     * @return Collection|Animal[]
     */
    public function getAnimals(): Collection
    {
        return $this->animals;
    }

    public function addAnimal(Animal $animal): self
    {
        if (!$this->animals->contains($animal)) {
            $this->animals[] = $animal;
            $animal->setSpecies($this);
        }

        return $this;
    }

    public function removeAnimal(Animal $animal): self
    {
        if ($this->animals->contains($animal)) {
            $this->animals->removeElement($animal);
            // set the owning side to null (unless already changed)
            if ($animal->getSpecies() === $this) {
                $animal->setSpecies(null);
            }
        }

        return $this;
    }

    public function getType(): ?Type
    {
        return $this->type;
    }

    public function setType(?Type $type): self
    {
        $this->type = $type;

        return $this;
    }
}
