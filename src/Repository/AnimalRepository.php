<?php

namespace App\Repository;

use App\Entity\Animal;
use App\Entity\Tag;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Animal|null find($id, $lockMode = null, $lockVersion = null)
 * @method Animal|null findOneBy(array $criteria, array $orderBy = null)
 * @method Animal[]    findAll()
 * @method Animal[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AnimalRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Animal::class);
    }
    

    // Find the animal with given id and with a status = 1
    public function findOneAnimalByStatusAndId($id)
     {
        
         $query = $this->getEntityManager()
             ->createQuery(
             'SELECT animal FROM App\Entity\Animal AS animal 
             WHERE animal.id =:id
             AND animal.status = 1 '
             )->setParameter('id',$id);
             
         return $query->getResult();
     }

    public function findAllAnimalsByEmergencyTag()
    {
        // SQL request
        // SELECT * FROM `animal_tag`, `animal`, `tag` 
        // WHERE `animal_tag`.`animal_id` = `animal`.`id` 
        // AND `animal_tag`.`tag_id` = `tag`.`id`
        // AND `tag`.`name` = "Urgent"

        // Corresponding DQL request
        $query = $this->getEntityManager()
            ->createQuery(
            "SELECT animal FROM App\Entity\Animal AS animal 
            JOIN animal.tags AS tag
            WHERE tag.name = 'Urgent'
            AND animal.status = 1"
            );
            
        return $query->getResult();
    }

    // Animal adopted for a shelter id
    public function findAllAnimalsAdoptedByOneShelter($id)
    {
      
        // Corresponding DQL request
        $query = $this->getEntityManager()
            ->createQuery(
            'SELECT animal FROM App\Entity\Animal AS animal 
            JOIN animal.shelter AS shelter
            WHERE shelter.id =:id
            AND animal.status = 0 '
            )->setParameter('id',$id);
            
        return $query->getResult();
    }

     // Animal to adopt for a shelter id
     public function findAllAnimalsToAdoptByOneShelter($id)
     {
       
         // Corresponding DQL request
         $query = $this->getEntityManager()
             ->createQuery(
             'SELECT animal FROM App\Entity\Animal AS animal 
             JOIN animal.shelter AS shelter
             WHERE shelter.id =:id
             AND animal.status = 1 '
             )->setParameter('id',$id);
             
         return $query->getResult();
     }

     // Animals for a shelter (back-office)
     public function findAllAnimalsForAShelter($id_shelter)
     {
       
         // Corresponding DQL request
         $query = $this->getEntityManager()
             ->createQuery(
             'SELECT animal FROM App\Entity\Animal AS animal 
             JOIN animal.shelter AS shelter
             WHERE shelter.id =:id'
             )->setParameter('id',$id_shelter);
             
         return $query->getResult();
     }


    // /**
    //  * @return Animal[] Returns an array of Animal objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Animal
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
