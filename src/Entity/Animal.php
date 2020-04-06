<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Symfony\Component\Serializer\Annotation\Groups;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use ApiPlatform\Core\Annotation\ApiResource;

/**
 * @ORM\Entity(repositoryClass="App\Repository\AnimalRepository")
 * @ApiResource(
 *     denormalizationContext={"groups"={"writeAnimal"}})
 */
 
class Animal
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")     
     * @Groups({"listAnimals", "oneAnimal", "oneShelter"})
     * @Groups({"writeAnimal"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=150)
     * @Assert\Type("string")
     * @Assert\NotBlank(
     *   message = "Le nom de l'animal est obligatoire.")
     * @Groups({"listAnimals", "oneAnimal", "oneShelter"})
     * @Groups({"writeAnimal"})
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"})
     * @Assert\NotBlank(
     *   message = "La description de l'animal est obligatoire.")
     */
    private $description;

    /**
     * @ORM\Column(type="datetime")
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"})
     * 
     */
    private $birthdate;

    /**
     * @ORM\Column(type="datetime")
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"})
     * 
     */
    private $arrivalDate;

    /**
     * @ORM\Column(type="string", length=10)
     * @Assert\Type("string")
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"})
     * @Assert\NotBlank(
     *   message = "Le genre de l'animal est obligatoire.")
     * 
     */
    private $gender;

    /**
    * @ORM\Column(type="boolean", nullable=true)
    * @Assert\Type("bool")
    * @Groups({"writeAnimal"})    
    * @Groups({"listAnimals", "oneAnimal"})
    * 
    */
    private $dogFriendly;

    /**
     * @ORM\Column(type="boolean", nullable=true)     
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     * @Assert\Type("bool")
     */
    private $catFriendly;

    /**
     * @ORM\Column(type="boolean", nullable=true)
     * @Assert\Type("bool")
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     * 
     */
    private $childFriendly;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $additionalInformation;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     * 
     */
    private $picture1;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals"})
     * @Groups({"writeAnimal"}) 
     */
    private $picture2;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals"})
     * @Groups({"writeAnimal"}) 
     */
    private $picture3;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals"})
     * @Groups({"writeAnimal"}) 
     */
    private $picture4;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listAnimals"})
     * @Groups({"writeAnimal"}) 
     */
    private $picture5;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Type("integer")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $status;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Shelter", inversedBy="animals")
     * @ORM\JoinColumn(nullable=false)
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $shelter;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Species", inversedBy="animals")
     * @ORM\JoinColumn(nullable=false)
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal","oneShelter"})
     * @Groups({"writeAnimal"})
     *  
     */
    private $species;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Tag", inversedBy="animals")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal"})
     * @Groups({"writeAnimal"}) 
     */
    private $tags;

    public function __construct()
    {
        $this->tags = new ArrayCollection();
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getBirthdate(): ?\DateTimeInterface
    {
        return $this->birthdate;
    }

    public function setBirthdate(\DateTimeInterface $birthdate): self
    {
        $this->birthdate = $birthdate;

        return $this;
    }

    public function getArrivalDate(): ?\DateTimeInterface
    {
        return $this->arrivalDate;
    }

    public function setArrivalDate(\DateTimeInterface $arrivalDate): self
    {
        $this->arrivalDate = $arrivalDate;

        return $this;
    }

    public function getGender(): ?string
    {
        return $this->gender;
    }

    public function setGender(string $gender): self
    {
        $this->gender = $gender;

        return $this;
    }
  
    public function getAdditionalInformation(): ?string
    {
        return $this->additionalInformation;
    }

    public function setAdditionalInformation(?string $additionalInformation): self
    {
        $this->additionalInformation = $additionalInformation;

        return $this;
    }

    public function getPicture1(): ?string
    {
        return $this->picture1;
    }

    public function setPicture1(string $picture1): self
    {
        $this->picture1 = $picture1;

        return $this;
    }

    public function getPicture2(): ?string
    {
        return $this->picture2;
    }

    public function setPicture2(?string $picture2): self
    {
        $this->picture2 = $picture2;

        return $this;
    }

    public function getPicture3(): ?string
    {
        return $this->picture3;
    }

    public function setPicture3(?string $picture3): self
    {
        $this->picture3 = $picture3;

        return $this;
    }

    public function getPicture4(): ?string
    {
        return $this->picture4;
    }

    public function setPicture4(?string $picture4): self
    {
        $this->picture4 = $picture4;

        return $this;
    }

    public function getPicture5(): ?string
    {
        return $this->picture5;
    }

    public function setPicture5(?string $picture5): self
    {
        $this->picture5 = $picture5;

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

    public function getStatus(): ?int
    {
        return $this->status;
    }

    public function setStatus(int $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getShelter(): ?Shelter
    {
        return $this->shelter;
    }

    public function setShelter(?Shelter $shelter): self
    {
        $this->shelter = $shelter;

        return $this;
    }

    public function getSpecies(): ?Species
    {
        return $this->species;
    }

    public function setSpecies(?Species $species): self
    {
        $this->species = $species;

        return $this;
    }

    /**
     * @return Collection|Tag[]
     */
    public function getTags(): Collection
    {
        return $this->tags;
    }

    public function addTag(Tag $tag): self
    {
        if (!$this->tags->contains($tag)) {
            $this->tags[] = $tag;
        }

        return $this;
    }

    public function removeTag(Tag $tag): self
    {
        if ($this->tags->contains($tag)) {
            $this->tags->removeElement($tag);
        }

        return $this;
    }

    public function getDogFriendly(): ?bool
    {
        return $this->dogFriendly;
    }

    public function setDogFriendly(?bool $dogFriendly): self
    {
        $this->dogFriendly = $dogFriendly;

        return $this;
    }

    public function getCatFriendly(): ?bool
    {
        return $this->catFriendly;
    }

    public function setCatFriendly(?bool $catFriendly): self
    {
        $this->catFriendly = $catFriendly;

        return $this;
    }

    public function getChildFriendly(): ?bool
    {
        return $this->childFriendly;
    }

    public function setChildFriendly(?bool $childFriendly): self
    {
        $this->childFriendly = $childFriendly;

        return $this;
    }
}
