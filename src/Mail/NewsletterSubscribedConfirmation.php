<?php 

namespace App\Mail;

use App\Entity\NewsletterEmail;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;

class NewsletterSubscribedConfirmation
{
    public function __construct(
        private MailerInterface $mailer,
        private string $adminEmail
    ) {

    }
    
    public function confirmSubscription(NewsletterEmail $newsletterEmail): void
    {
        $email = (new Email())
        ->from($this->adminEmail)        
        ->to($newsletterEmail->getEmail())
        ->subject("Inscription à la Newsletter")
        ->text("Votre email : " . $newsletterEmail->getEmail() . " à bien été enregistré, merci.");

        $this->mailer->send($email);
    } 
}
