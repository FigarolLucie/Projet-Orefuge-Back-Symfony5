<?php

namespace App\Form;

use App\Entity\Shelter;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class ShelterType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
           ->add('name',TextType::class, [
            'label' => 'Nom du refuge'
        ] ) 
            ->add('description',TextType::class, [
              'label' => 'Description'
          ])
            ->add('phone_number',TextType::class, [
              'label' => 'Téléphone Fixe'
          ])
            ->add('mobile_phone',TextType::class, [
              'label' => 'Téléphone mobile'
          ])
            ->add('street_name',TextType::class, [
              'label' => 'Nom de la rue'
          ])
            ->add('street_number',TextType::class, [
              'label' => 'Numéro de la rue'
          ])
            ->add('zipcode',TextType::class, [
              'label' => 'Code Postale'
          ])
            ->add('city',TextType::class, [
              'label' => 'Ville'
          ])
            ->add('country',TextType::class, [
              'label' => 'Pays'
          ])
            ->add('email',TextType::class, [
              'label' => 'Email'
          ])
            ->add('firstname',TextType::class, [
              'label' => 'Prénom'
          ])
            ->add('lastname',TextType::class, [
              'label' => 'Nom '
          ])
            ->add('link_FB',TextType::class, [
              'label' => 'Lien Facebook '
          ])
            ->add('link_instagram',TextType::class, [
              'label' => 'Lien Instagram'
          ])
            ->add('link_cagnotte',TextType::class, [
              'label' => 'Lien cagnotte en ligne'
          ])
            ->add('link_website',TextType::class, [
              'label' => 'Lien du site internet'
          ])
            ->add('hours',TextType::class, [
              'label' => 'Heures d\'ouverture'
          ])
            ->add('picture1',TextType::class, [
              'label' => 'Lien de l\'image'
          ])
            ->add('adoption_conditions',TextType::class, [
              'label' => 'Conditions d\'adoption'
          ])
            ->add('siretNumber',TextType::class, [
              'label' => 'N° SIRET'
          ])
            ->add('department');
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Shelter::class,
            
        ]);
    }
}
