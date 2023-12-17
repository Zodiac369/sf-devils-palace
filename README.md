# Projet Symfony - Devil's Palace / Aydogan Emre
## Entités et Controllers
- Création des Entités via le maker en ajoutant les relations adaptés. 
- Crétation des Controllers via le maker.
#### MoviesController.php 
- Première méthode définit sur la Route **/all-movies**, permettant de récupérer tous les films en utilisant **HorrorMoviesRepository** avec l'injection de dépendance via l'autowiring de Symfony.<br>Renverra le template de ce dernier, **allHorrorMovies.html.twig** méthode findAll() du Repo appel la BDD, me retournat un tableau contenant mes films.<br>
- Deuxième méthode **item** définit sur la Route **/movies/id** elle prend en paramètre un id. Injecte automatiquement un objet HorrorMovies correspondant à l'identifiant donné dans l'URL (l'identifiant {id} dans la route /movies/{id}) puis renvois sur le Template **item.html.twig**.
### DirectorController.php
- Première méthode permettant de récupérer tous les ralisateurs, dans l'ensemble c'est la meme chose que pour les films. 
- Deuxième méthode similaire aux films, sauf que je récupère tous les films associés à un réalisateur, <code>$movies = $director->getHorrorMovies()</code> à partir de la méthode getHorrorMovies de l'objet **$director**, puis renvois une réponse au template **director/item.html.twig**.
### IndexController.php
- Controller Index qui gère ma page d'accueil 'homepage'.
- **public function newsletterSubscribe()** : Cette méthode agi sur le traitement de la demande d'abonnement à la newsletter, typehinté EntityManager $em pour intéragir à la BDD dans Doctrine, l'EventDispatcherInterface cette méthode agira pour déclencher des événements dans Symfony. 
- Créer un nouvel objet newsletterEmail pour stocker l'adresse email, <code> $newsletterForm = $this->createForm(NewsletteSubscriptionType::class, $newsletterEmail);</code> : Crée un formulaire en utilisant la classe NewsletteSubscriptionType pour saisir l'adresse email.
- Sauvegarde l'adresse email dans la base de données via <code> $em->persist($newsletterEmail) et $em->flush().</code>
- Déclenche un événement NewsletterSubscribedEvent avec l'adresse email puis affiche un message de confirmation et réinitialise le formulaire.
### Event\NewsletterSubscribedEvent.php
Ce fichier représente l'événement déclenché lorsqu'une personne s'abonne à la newsletter.
la Constance contient le nom de l'event.
Le constructeur prend  l'objet NewsletterEmail lors de son instanciation.
Méthode getEmail() : Cette méthode permet de récupérer l'objet NewsletterEmail associé à l'événement.
## EventSubscriber
#### NewsletterEmailDoctrineSubscriber.php
Ce fichier implémente EventSubscriberInterface pour réagir aux événements Doctrine, tels que prePersist (avant la persistance en base de données).
prePersist() : Cette fonction est appelée avant la persistance en base de données, elle vérifie si l'entité est une instance de NewsletterEmail et met à jour certains champs comme subscribed et subscriptionDate.
#### NewsletterEmailSubscriber.php
- Ce fichier réagit à l'événement NewsletterSubscribedEvent déclenché lorsqu'une personne s'abonne à la newsletter.
sendConfirmationEmail() : Cette méthode est appelée lorsqu'un événement de type NewsletterSubscribedEvent est déclenché, elle récupère l'email associé à l'événement et utilise NewsletterSubscribedConfirmation pour envoyer un email de confirmation.
Lorsque quelqu'un s'abonne à la newsletter dans le contrôleur Index, cela déclenche un événement NewsletterSubscribedEvent, l'envoi de confirmation via Mailtrap.
#### Mail\NewsletterSubscribedConfirmation.php
- Méthode du __constructor(), private MailerInterface mailer : dans le constructeur on indique à Symfony d'injecter automatiquement une instance du composant Symfony Mailer\MailerInterface, dès qu'une instance de NewsletterSubscribedConfirmation est créée, ainsi que 'private string $adminEmail' définit dans les paramètres du fichier services.yaml.
- Méthode confirmSubscription() 
public function confirmSubscription(NewsletterEmail $newsletterEmail): void : méthode publique qui prend comme paramètre un objet de type NewsletterEmail représentant l'email de l'abonné à la newsletter.
- On crée un nouvel objet Email.
On configure cet email :
On le définit comme étant envoyé depuis l'adresse de l'administrateur ($this->adminEmail).
Destiné à l'adresse email de l'utilisateur qui s'est abonné à la newsletter ($newsletterEmail->getEmail()).
On définit le sujet de l'email et le corps du message.
### SecurityController.php
- On remercie encore le maker de Symfony, qui grace à ça, m'a créer mon entité, via le make:user. 
Ainsi qu'une authentifaction via le make:auth, celà m'a généré mon dossier Security ainsi que le controller.
## Security\Authenticator.php
Méthode permettant d'authentifier un user, elle récupère les données du form de connexion, email et mdp.
En suite elle créer un Passeport en utilisant les infos de l'utilisateur, ainsi que le badge CSRF et le badge RememberMe que j'ai rajouté pour tester la fonctionnalité.
Merci Symfony.
## DataFixtures\AppFixtures.php
J'ai créer deux utilsateurs afin de tester tout ça, un Admin et un User banal grace au fixtures, 
Méthode du __contructor()
private UserPasswordHasherInterface $hasher : dépendance injectée dans le constructeur. Instance de UserPasswordHasherInterface, qui est utilisée pour hasher les mots de passe des utilisateurs.

private string $adminEmail : Injection de dépendance, pemettant d'utiliser l'adresse administrateur de l'applcation comme précedemment.

La méthode load ObjectManager $manager, est exécuté lors du chargement des fixtures, intéragit avec la BDD via Doctrine.
Donc ette classe AppFixtures est utilisé pour générer de données, elle utilise UserPasswordHasherInterface pour sécuriser les mots de passe avant de les enregistrer dans la base de données, puis persiste ces données en utilisant Doctrine pour les fixtures.
## make:register
le Maker m'a générer un tas de choses, seule petite option ajouté, j'ai dis 'yes' lorsque Symfony m'a proposé d'intégrer une vérification d'email, dont j'ai configuré avec Mailtrap pour la suite, ainsi qu'un événement pour le hashPassword lors de l'inscription en BDD, dont un effet de bord avec l'envoi d'un email de confirmation de cr&ation de compte dans l'EventSubscriber, \UserRegisteredSubscriber.php

J'ai gardé la meme logique de la Newsletter.
Je n'ai juste pas modifié le register.html.twig, je n'ai pas voulu m'attarder sur le style du form.

## EasyAdmin
Très bel outil de gestion du CRUD, j'ai intégrer ceci en suivant le cours et un petit peu de documentation, j'ai gardé les choses simples, et ça marche très bien.
Accessible uniqument en tant qu'admin, acces_control changé dans le security.yaml bien entendu.

# FIN

Merci pour tout Lucas, Symfony est un vrai coup de coeur pour moi, je pense que je continuerais a passer du temps sur ce Framework qui pour moi est complet, je dois juste passer sous Linux un jour 😭, j'ai passé 2 super mois, tu es très bon dans ce que tu fais, très pédagogue, ne change rien.
Mon README est bancal, j'ai cette impression, j'ai peur d'avoir oublié des choses, je l'ai écris en 2jours, j'ai été idiot de ne pas l'avoir fait au fur et à mesure, Symfony est tellement agréable d'utilisation que tout va très vite, je pense que j'aurais pu faire bien + pour ce projet, j'ai voulu garder les choses propres et garder une directive simple. 
<code>Si tu peux, check l'uri director/21 😉.</code>

# MERCI. 







