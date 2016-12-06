<?php

namespace ContactBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use ContactBundle\Entity\Contact;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class HomeController extends Controller
{
    /**
     * @Route("/", name="index")
     */
    public function indexAction()
    {
        $contactsChat = $this->getDoctrine()
            ->getRepository('ContactBundle:Contact')
            ->findBy(array('typeAnimal' => 'chat'));

        $contactsChien = $this->getDoctrine()
            ->getRepository('ContactBundle:Contact')
            ->findBy(array('typeAnimal' => 'chien'));

        $contactsAutre = $this->getDoctrine()
            ->getRepository('ContactBundle:Contact')
            ->findBy(array('typeAnimal' => 'autre'));

        $allChiens = count($contactsChien);
        $allChats = count($contactsChat);
        $allAutres = count($contactsAutre);

        $currentUser = $this->getUser();

        return $this->render('ContactBundle:Home:index.html.twig',array(
            'allChiens' => $allChiens,
            'allChats' => $allChats,
            'allAutres' => $allAutres
        ));
    }

    /**
     * @Route("/typeAnimal/{nomCat}", name="categorie")
     */
    public function catAnimaux($nomCat)
    {
        if($nomCat == 'chat'){
            $contacts = $this->getDoctrine()
                ->getRepository('ContactBundle:Contact')
                ->findBy(array('typeAnimal' => $nomCat));
        }else if($nomCat == 'chien'){
            $contacts = $this->getDoctrine()
                ->getRepository('ContactBundle:Contact')
                ->findBy(array('typeAnimal' => $nomCat));
        }else if($nomCat == 'autre'){
            $contacts = $this->getDoctrine()
                ->getRepository('ContactBundle:Contact')
                ->findBy(array('typeAnimal' => $nomCat));
        }
        return $this->render('ContactBundle:Categories:categorie.html.twig', array('animal' => $nomCat, 'contacts' => $contacts));
    }


    /**
     * @Route("/register/confirmed", name="redirectAfterLogin")
     */
    public function confirmedAction()
    {
        return $this->redirectToRoute('index');
    }
}
