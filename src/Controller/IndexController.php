<?php

namespace App\Controller;

use App\Entity\NewsletterEmail;
use App\Event\NewsletterSubscribedEvent;
use App\Form\NewsletteSubscriptionType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class IndexController extends AbstractController
{
    #[Route('/', name: 'homepage')]
    public function newsletterSubscribe(
        Request $request,
        EntityManagerInterface $em,
        EventDispatcherInterface $dispatcher
        ): Response {
        $newsletterEmail = new NewsletterEmail();
        $newsletterForm = $this->createForm(NewsletteSubscriptionType::class, $newsletterEmail);
        
        $newsletterForm->handleRequest($request);

        if ($newsletterForm->isSubmitted() && $newsletterForm->isValid()) {
            $em->persist($newsletterEmail);
            $em->flush();

            $event = new NewsletterSubscribedEvent($newsletterEmail);
            $dispatcher->dispatch($event, NewsletterSubscribedEvent::NAME);

            $this->addFlash('success', 'Merci pour votre inscription à la Newsletter !');

            $newsletterEmail = new NewsletterEmail();
            $newsletterForm = $this->createForm(NewsletteSubscriptionType::class, $newsletterEmail);
            
        }

        return $this->render('index/home.html.twig', [
            'newsletterForm' => $newsletterForm
            
        ]);
    }
}

