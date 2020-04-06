<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Serializer\Annotation\Groups;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;
use ApiPlatform\Core\Annotation\ApiResource;

/**
 * @ORM\Entity(repositoryClass="App\Repository\DepartmentRepository")
 * @UniqueEntity("name")
 *  @ApiResource(
 *     denormalizationContext={"groups"={"writeShelter"}})
 */
class Department
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups({"listAnimals", "oneAnimal","listShelters", "oneShelter", "listDepartments"})
     * @Groups("writeShelter")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=150)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal","listShelters", "oneShelter", "listDepartments"})
     * 
     */
    private $name;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Shelter", mappedBy="department", orphanRemoval=true)
     * @Assert\NotBlank
     */
    private $shelters;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Region", inversedBy="departments")
     * @Assert\NotBlank
     * @ORM\JoinColumn(nullable=false)
     * @Groups({"listShelters", "oneShelter"})
     */
    private $region;

    public function __construct()
    {
        $this->shelters = new ArrayCollection();
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

    /**
     * @return Collection|Shelter[]
     */
    public function getShelters(): Collection
    {
        return $this->shelters;
    }

    public function addShelter(Shelter $shelter): self
    {
        if (!$this->shelters->contains($shelter)) {
            $this->shelters[] = $shelter;
            $shelter->setDepartment($this);
        }

        return $this;
    }

    public function removeShelter(Shelter $shelter): self
    {
        if ($this->shelters->contains($shelter)) {
            $this->shelters->removeElement($shelter);
            // set the owning side to null (unless already changed)
            if ($shelter->getDepartment() === $this) {
                $shelter->setDepartment(null);
            }
        }

        return $this;
    }

    public function getRegion(): ?Region
    {
        return $this->region;
    }

    public function setRegion(?Region $region): self
    {
        $this->region = $region;

        return $this;
    }

}
