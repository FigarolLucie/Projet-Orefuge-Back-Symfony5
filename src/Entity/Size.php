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
 * @ORM\Entity(repositoryClass="App\Repository\SizeRepository")
 * @UniqueEntity("name")
 * @ApiResource(
 *     denormalizationContext={"groups"={"writeSize","writeType"}})
 * 
 */
class Size
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups("listSizes")
     * @Groups({"writeSize", "writeType"})
     * @Groups({"oneAnimal"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=25)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups("listSizes")
     * @Groups({"writeSize"})
     * @Groups({"oneAnimal"})
     */
    private $name;

    /**
     * @ORM\Column(type="datetime")     
     * @Assert\NotBlank
     * @Groups({"writeSize"})
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     * @Groups({"writeSize"})
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="boolean")
     * @Assert\Type("bool")
     * @Assert\NotBlank
     * @Groups({"writeSize"})
     */
    private $status;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Type", mappedBy="size", orphanRemoval=true)
     * 
     */
    private $types;

    public function __construct()
    {
        $this->types = new ArrayCollection();
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
     * @return Collection|Type[]
     */
    public function getTypes(): Collection
    {
        return $this->types;
    }

    public function addType(Type $type): self
    {
        if (!$this->types->contains($type)) {
            $this->types[] = $type;
            $type->setSize($this);
        }

        return $this;
    }

    public function removeType(Type $type): self
    {
        if ($this->types->contains($type)) {
            $this->types->removeElement($type);
            // set the owning side to null (unless already changed)
            if ($type->getSize() === $this) {
                $type->setSize(null);
            }
        }

        return $this;
    }
}
