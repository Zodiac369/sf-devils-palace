<?php

namespace App\EventSubscriber;

use App\Event\NewsletterSubscribedEvent;
use App\Mail\NewsletterSubscribedConfirmation;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class NewsletterEmailSubscriber implements EventSubscriberInterface
{
    public function __construct(
        private NewsletterSubscribedConfirmation $emailNotification,
    ) {
    }

    public function sendConfirmationEmail(NewsletterSubscribedEvent $event): void
    {
        $email = $event->getEmail();
        $this->emailNotification->confirmSubscription($email);
    }

    public static function getSubscribedEvents(): array
    {
        return [
            NewsletterSubscribedEvent::NAME => [
                ['sendConfirmationEmail'],
            ],
        ];
    }

}