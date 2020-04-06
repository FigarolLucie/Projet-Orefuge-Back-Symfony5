<?php

namespace App\Repository;

use App\Entity\Shelter;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Shelter|null find($id, $lockMode = null, $lockVersion = null)
 * @method Shelter|null findOneBy(array $criteria, array $orderBy = null)
 * @method Shelter[]    findAll()
 * @method Shelter[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ShelterRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Shelter::class);
    }

    // Find one shelter by id and with a status = 1
    public function findOneShelterByStatusAndId($id)
    {
    // Corresponding DQL request
        $query = $this->getEntityManager()
            ->createQuery(
            'SELECT shelter FROM App\Entity\Shelter AS shelter 
            WHERE shelter.id =:id
            AND shelter.status = 1 '
            )->setParameter('id',$id);
            
        return $query->getResult();
    }
}
