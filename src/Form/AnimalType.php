<?php

namespace App\Form;

use App\Entity\Tag;
use App\Entity\Animal;
use App\Entity\Shelter;
use App\Entity\Species;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class AnimalType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name',TextType::class, [
              'label' => 'Nom de l\'animal'
          ] )
            ->add('description',TextareaType::class, [
              'label' => 'Description de l\'animal'
          ])
            ->add('birthdate',DateType::class, [
              'label' => 'Date de naissance l\'animal'
          ])
            ->add('arrivalDate',DateType::class, [
              'label' => 'Date d\'arrivée de l\'animal au refuge'
          ])
            ->add('gender',TextType::class, [
              'label' => 'Genre'
          ] )
            ->add('dogFriendly',CheckboxType::class, [
              'label' => 'S\'entends bien avec les chiens'])
            ->add('catFriendly',CheckboxType::class, [
              'label' => 'S\'entends bien avec les chats'])
            ->add('childFriendly',CheckboxType::class, [
              'label' => 'S\'entends bien avec les enfants'])
            ->add('additionalInformation',TextareaType::class, [
              'label' => 'Informations complémentaires'])
            ->add('picture1')
            //->add('picture2')
            //->add('picture3')
            //->add('picture4')
            //->add('picture5')
            //->add('createdAt')
            //->add('updatedAt')
            //->add('status')
            ->add('shelter',EntityType::class, [
              'class' => Shelter::class,
              'choice_label' => 'name',
              'label' => 'Refuge associé à accueillant l\'animal'])
             ->add('species',EntityType::class,  [
              // pour indiquer l'entité cible
              'class' => Species::class,
              // et la propriété qui sera affichée
              'choice_label' => 'name',
              'label' => 'Espèce'
          ])
          ->add('tags')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Animal::class,
        ]);
    }
}
