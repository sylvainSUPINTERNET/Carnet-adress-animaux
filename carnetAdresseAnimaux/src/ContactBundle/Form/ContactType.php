<?php

namespace ContactBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class ContactType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('email')->add('adresse')->add('phoneNumber')->add('siteWeb')
            ->add('typeAnimal', ChoiceType::class, array(
                'choices' => array(
                    'Chien' => 'chien',
                    'Chat' => 'chat',
                    'Autre' => 'autre'
                ),
                'required'    => true,
                'placeholder' => 'Choose your animal type',
                'empty_data'  => null));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'ContactBundle\Entity\Contact'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'contactbundle_contact';
    }


}
