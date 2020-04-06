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
 * @ORM\Entity(repositoryClass="App\Repository\TypeRepository")
 * @UniqueEntity("name")
 * @ApiResource(
 *     denormalizationContext={"groups"={"writeType","writeSpecies"}})
 */
class Type
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("listTypes")
     * @Groups({"writeType", "writeSpecies"})
     * @Groups({"oneAnimal"})
     * 
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups("listTypes")
     * @Groups({"writeType"})
     * @Groups({"oneAnimal"})
     */
    private $name;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     * @Groups({"writeType"})
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime",nullable=true)
     * @Groups({"writeType"})
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="boolean")
     * @Assert\Type("bool")
     * @Assert\NotBlank
     * @Groups({"writeType"})
     */
    private $status;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Species", mappedBy="type", orphanRemoval=true)
     *  
     */
    private $species;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Size", inversedBy="types")
     * @ORM\JoinColumn(nullable=false)
     * @Assert\NotBlank
     * @Groups({"writeType"})
     * @Groups({"oneAnimal"})
     * 
     */
    private $size;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Category", inversedBy="types")
     * @Assert\NotBlank
     * @Groups({"writeType"})
     * 
     */
    private $categories;

    public function __construct()
    {
        $this->species = new ArrayCollection();
        $this->categories = new ArrayCollection();
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

    public function setUpdatedAt(\DateTimeInterface $updatedAt): self
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
     * @return Collection|Species[]
     */
    public function getSpecies(): Collection
    {
        return $this->species;
    }

    public function addSpecies(Species $species): self
    {
        if (!$this->species->contains($species)) {
            $this->species[] = $species;
            $species->setType($this);
        }

        return $this;
    }

    public function removeSpecies(Species $species): self
    {
        if ($this->species->contains($species)) {
            $this->species->removeElement($species);
            // set the owning side to null (unless already changed)
            if ($species->getType() === $this) {
                $species->setType(null);
            }
        }

        return $this;
    }

    public function getSize(): ?Size
    {
        return $this->size;
    }

    public function setSize(?Size $size): self
    {
        $this->size = $size;

        return $this;
    }

    /**
     * @return Collection|Category[]
     */
    public function getCategories(): Collection
    {
        return $this->categories;
    }

    public function addCategory(Category $category): self
    {
        if (!$this->categories->contains($category)) {
            $this->categories[] = $category;
        }

        return $this;
    }

    public function removeCategory(Category $category): self
    {
        if ($this->categories->contains($category)) {
            $this->categories->removeElement($category);
        }

        return $this;
    }
}
