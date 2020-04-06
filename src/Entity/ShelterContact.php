<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class ShelterContact {

    /**
     * @var string
     * @Assert\NotBlank
     */
    private $firstname;

    /**
     * @var string
     * @Assert\NotBlank
     */
    private $lastname;

    /**
     * @var string
     * @Assert\NotBlank
     * @Assert\Email
     */
    private $email;

    /**
     * @var string
     * @Assert\NotBlank
     * @Assert\Regex(
     *     pattern="/[0-9]{10}/",
     *     message="Please enter a correct phone number"
     * )
     */
    private $phone;
    
    /**
     * @var string
     * @Assert\NotBlank
     */
    private $message;


     /**
     * @var int
     * @Assert\NotBlank
     */
    private $shelterId;

    /**
     * Get the value of firstname
     *
     * @return  string
     */ 
    public function getFirstname()
    {
        return $this->firstname;
    }

    /**
     * Set the value of firstname
     *
     * @param  string  $firstname
     *
     * @return  self
     */ 
    public function setFirstname(string $firstname)
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * Get the value of lastname
     *
     * @return  string
     */ 
    public function getLastname()
    {
        return $this->lastname;
    }

    /**
     * Set the value of lastname
     *
     * @param  string  $lastname
     *
     * @return  self
     */ 
    public function setLastname(string $lastname)
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * Get the value of email
     *
     * @return  string
     */ 
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set the value of email
     *
     * @param  string  $email
     *
     * @return  self
     */ 
    public function setEmail(string $email)
    {
        $this->email = $email;

        return $this;
    }

    
    
    /**
     * Get the value of message
     *
     * @return  string
     */ 
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * Set the value of message
     *
     * @param  string  $message
     *
     * @return  self
     */ 
    public function setMessage(string $message)
    {
        $this->message = $message;

        return $this;
    }
     

    /**
     * Get the value of shelterId
     *
     * @return  int
     */ 
    public function getShelterId()
    {
        return $this->shelterId;
    }

    /**
     * Set the value of shelterId
     *
     * @param  int  $shelterId
     *
     * @return  self
     */ 
    public function setShelterId(int $shelterId)
    {
        $this->shelterId = $shelterId;

        return $this;
    }

    /**
     * Get pattern="/[0-9]{10}/",
     *
     * @return  string
     */ 
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set pattern="/[0-9]{10}/",
     *
     * @param  string  $phone  pattern="/[0-9]{10}/",
     *
     * @return  self
     */ 
    public function setPhone(string $phone)
    {
        $this->phone = $phone;

        return $this;
    }
}
