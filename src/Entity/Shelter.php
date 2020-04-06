<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\Collection;
use Symfony\Component\HttpFoundation\File\File;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;
use ApiPlatform\Core\Annotation\ApiResource;


/**
 * @ORM\Entity(repositoryClass="App\Repository\ShelterRepository")
 * @UniqueEntity("siretNumber")
 * @ApiResource(
 *     denormalizationContext={"groups"={"writeAnimal","writeShelter", "writeUser"}})
 * 
 */
class Shelter
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups({"listAnimals", "oneAnimal","listShelters", "oneShelter", "oneUser"})
     * @Groups({"writeAnimal","writeShelter", "writeUser"})
     *  
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=150)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listAnimals", "oneAnimal","listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */     
    private $name;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     * @Assert\Type("string")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $phoneNumber;

    /**
     * @ORM\Column(type="string", length=20)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $mobilePhone;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $streetName;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Type("integer")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $streetNumber;

    /**
     * @ORM\Column(type="string", length=10)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $zipcode;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $city;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $country;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\Email(
     *     message = "The email '{{ value }}' is not a valid email."
     * )
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=50)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $firstname;

    /**
     * @ORM\Column(type="string", length=70)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $lastname;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     * @Assert\Type("string")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $link_FB;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     * @Assert\Type("string")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $link_instagram;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     * @Assert\Type("string")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $link_cagnotte;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     * @Assert\Type("string")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $link_website;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $hours;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $picture1;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $picture2;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $picture3;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $picture4;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $adoptionConditions;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $createdAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $updatedAt;

    /**
     * @ORM\Column(type="boolean")
     * @Assert\Type("bool")
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $status;

    /**
     * @ORM\Column(type="string", length=20)
     * @Assert\Type("string")
     * @Assert\NotBlank
     * @Groups({"listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $siretNumber;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\Animal", mappedBy="shelter", orphanRemoval=true)
     * @Groups("oneShelter")
     * 
     */
    private $animals;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\User", mappedBy="shelter", orphanRemoval=true)
     *  
     */
    private $users;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Department", inversedBy="shelters")
     * @ORM\JoinColumn(nullable=false)
     * @Assert\NotBlank     
     * @Groups({"listAnimals", "oneAnimal","listShelters", "oneShelter"})
     * @Groups("writeShelter")
     */
    private $department;

    public function __construct()
    {
        $this->status = false;
        $this->animals = new ArrayCollection();
        $this->users = new ArrayCollection();
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

   
    public function getStreetName(): ?string
    {
        return $this->streetName;
    }

    public function setStreetName(string $streetName): self
    {
        $this->streetName = $streetName;

        return $this;
    }

    public function getStreetNumber(): ?int
    {
        return $this->streetNumber;
    }

    public function setStreetNumber(int $streetNumber): self
    {
        $this->streetNumber = $streetNumber;

        return $this;
    }

  

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    public function setFirstname(string $firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getLinkFB(): ?string
    {
        return $this->link_FB;
    }

    public function setLinkFB(string $link_FB): self
    {
        $this->link_FB = $link_FB;

        return $this;
    }

    public function getLinkInstagram(): ?string
    {
        return $this->link_instagram;
    }

    public function setLinkInstagram(?string $link_instagram): self
    {
        $this->link_instagram = $link_instagram;

        return $this;
    }

    public function getLinkCagnotte(): ?string
    {
        return $this->link_cagnotte;
    }

    public function setLinkCagnotte(?string $link_cagnotte): self
    {
        $this->link_cagnotte = $link_cagnotte;

        return $this;
    }

    public function getLinkWebsite(): ?string
    {
        return $this->link_website;
    }

    public function setLinkWebsite(?string $link_website): self
    {
        $this->link_website = $link_website;

        return $this;
    }

    public function getHours(): ?string
    {
        return $this->hours;
    }

    public function setHours(string $hours): self
    {
        $this->hours = $hours;

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

    public function getAdoptionConditions(): ?string
    {
        return $this->adoptionConditions;
    }

    public function setAdoptionConditions(string $adoptionConditions): self
    {
        $this->adoptionConditions = $adoptionConditions;

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
            $animal->setShelter($this);
        }

        return $this;
    }

    public function removeAnimal(Animal $animal): self
    {
        if ($this->animals->contains($animal)) {
            $this->animals->removeElement($animal);
            // set the owning side to null (unless already changed)
            if ($animal->getShelter() === $this) {
                $animal->setShelter(null);
            }
        }

        return $this;
    }


    public function getPhoneNumber(): ?string
    {
        return $this->phoneNumber;
    }

    public function setPhoneNumber(?string $phoneNumber): self
    {
        $this->phoneNumber = $phoneNumber;

        return $this;
    }

    public function getMobilePhone(): ?string
    {
        return $this->mobilePhone;
    }

    public function setMobilePhone(string $mobilePhone): self
    {
        $this->mobilePhone = $mobilePhone;

        return $this;
    }

    public function getZipcode(): ?string
    {
        return $this->zipcode;
    }

    public function setZipcode(string $zipcode): self
    {
        $this->zipcode = $zipcode;

        return $this;
    }

    public function getDepartment(): ?Department
    {
        return $this->department;
    }

    public function setDepartment(?Department $department): self
    {
        $this->department = $department;

        return $this;
    }

    /**
     * @return Collection|User[]
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): self
    {
        if (!$this->users->contains($user)) {
            $this->users[] = $user;
            $user->setShelter($this);
        }

        return $this;
    }

    public function removeUser(User $user): self
    {
        if ($this->users->contains($user)) {
            $this->users->removeElement($user);
            // set the owning side to null (unless already changed)
            if ($user->getShelter() === $this) {
                $user->setShelter(null);
            }
        }

        return $this;
    }
    
    public function getSiretNumber(): ?string
    {
        return $this->siretNumber;
    }

    public function setSiretNumber(string $siretNumber): self
    {
        $this->siretNumber = $siretNumber;

        return $this;
    }

}
