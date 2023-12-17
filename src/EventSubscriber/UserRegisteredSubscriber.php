<?php 

namespace App\EventSubscriber;

use App\Event\UserRegisteredEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class UserRegisteredSubscriber implements EventSubscriberInterface
{

    public function sendConfirmationEmail(UserRegisteredEvent $event): void
    {

    }

    public static function getSubscribedEvents(): array
    {
        return [
            UserRegisteredEvent::NAME => 'sendConfirmationEmail',
        ];
    }
}
