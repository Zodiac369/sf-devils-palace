-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 17 déc. 2023 à 16:45
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sym_devils_palace`
--

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'États-Unis'),
(2, 'Suède'),
(3, 'Italie'),
(4, 'Espagne'),
(5, 'Allemagne'),
(6, 'Corée du Sud'),
(7, 'Turquie'),
(8, 'Taïwan');

-- --------------------------------------------------------

--
-- Structure de la table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `director`
--

INSERT INTO `director` (`id`, `name`, `profile_pic`) VALUES
(1, 'William Friedkin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMcatCSSccsciL3tWTyxDAnCI_TQkbF_xW9ZxkG_akRB2kQdNuVK7B0LZfmIahRS2eFU8&usqp=CAU'),
(2, 'Stanley Kubrick', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Kubrick_on_the_set_of_Barry_Lyndon_%281975_publicity_photo%29_crop.jpg/1200px-Kubrick_on_the_set_of_Barry_Lyndon_%281975_publicity_photo%29_crop.jpg'),
(3, 'John Carpenter', 'https://images.mubicdn.net/images/cast_member/22253/cache-213-1427117101/image-w856.jpg?size=800x'),
(4, 'Ari Aster ', 'https://s3.amazonaws.com/criterion-production/explore_images/1157-ead4720f2970b2de89a209431a35580c/jSjUvWMzhbgaAfjzTSvL2MShu6inBn_large.jpg'),
(5, 'Jonathan Demme', 'https://mobile.ledesk.ma/wp-content/uploads/2017/04/demme.jpg'),
(6, 'James Wan', 'https://filmandtv.luminatedata.com/images/honoree/James_Wan.png'),
(7, 'Wes Craven', 'https://papyblues.com/wp-content/uploads/2015/09/Wes-Pic-5_Portrait-at-desk-700x504.jpg'),
(8, 'Daniel Myrick & Eduardo Sánchez', 'https://image.pmgstatic.com/cache/resized/w468/files/images/film/photos/160/087/160087595_6c5a88.jpg'),
(9, 'Roman Polanski ', 'https://cdn.britannica.com/15/126315-050-421F9738/Roman-Polanski-1972.jpg'),
(10, 'Dario Argento ', 'https://i.pinimg.com/originals/4c/03/10/4c031060126696b4c58a8f03abe33690.jpg'),
(11, 'Jaume Balagueró', 'https://imgsrc.cineserie.com/1968/11/422220.jpg?ver=1'),
(12, 'Tobe Hooper', 'https://imgsrc.cineserie.com/1943/01/169215.jpg?ver=1'),
(13, 'Alfred Hitchcock', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Hitchcock%2C_Alfred_02.jpg/260px-Hitchcock%2C_Alfred_02.jpg'),
(14, 'Ridley Scott', 'https://www.wired.com/wp-content/uploads/archive/images/article/magazine/1510/ff_scott_580_f.jpg'),
(15, 'Friedrich Wilhelm Murnau', 'https://upload.wikimedia.org/wikipedia/commons/a/a9/F._W._Murnau_circa_1920-1930.jpg'),
(16, 'Yeon Sang-Ho ', 'https://img8.yna.co.kr/etc/inner/EN/2023/01/18/AEN20230118008100315_01_i_P2.jpg'),
(17, 'Na Hong-jin', 'https://fr.web.img5.acsta.net/c_310_420/medias/nmedia/18/69/67/07/19781100.jpg'),
(18, 'Bong Joon-Ho ', 'https://img.lemde.fr/2019/05/22/0/0/6732/8984/664/0/75/0/9cfbdf3_nF1-ZuLRnU3RL_jj0svgphD6.jpg'),
(19, 'Kim Jee-Woon', 'https://images.mubicdn.net/images/cast_member/4362/cache-1987-1478101707/image-w856.jpg?size=256x'),
(20, 'Jang Cheol-Soo', 'https://i.mydramalist.com/40EYdc.jpg'),
(21, 'Lucas D', 'https://avatars.githubusercontent.com/u/46715342?v=4');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231201202925', '2023-12-01 21:36:13', 129),
('DoctrineMigrations\\Version20231204155639', '2023-12-04 16:57:23', 591),
('DoctrineMigrations\\Version20231210150530', '2023-12-10 16:05:48', 99),
('DoctrineMigrations\\Version20231216222537', '2023-12-16 23:25:57', 101);

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `horror_movies`
--

CREATE TABLE `horror_movies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_release` datetime NOT NULL,
  `synopsis` longtext NOT NULL,
  `averrage_rate` double NOT NULL,
  `cover` varchar(255) NOT NULL,
  `director_id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horror_movies`
--

INSERT INTO `horror_movies` (`id`, `name`, `date_of_release`, `synopsis`, `averrage_rate`, `cover`, `director_id`, `country_id`) VALUES
(1, 'L\'Exorciste', '1973-12-19 00:00:00', '<div>L\'actrice Chris McNeil est inquiète au sujet de sa fille Regan. Après avoir entendu des bruits étranges venant de sa chambre, la petite a changé, proférant de constantes insanités. Une force para-normale l\'habite, qui coûte la vie au metteur en scène de Chris. Désespérée, cette dernière fait appel à deux exorcistes...</div>', 7.3, 'https://media.senscritique.com/media/000012299189/300/l_exorciste.jpg', 1, 1),
(34, 'Shining', '1980-12-05 20:44:00', '<div>Écrivain, Jack Torrance est engagé comme gardien, pendant tout l’hiver, d’un grand hôtel isolé du Colorado, l’Overlook, où il espère surmonter enfin sa panne d’inspiration. Il s’y installe avec sa femme Wendy et son fils Danny, doté d’un don de médium. Tandis que Jack n’avance pas dans son livre et que son fils est de plus en plus hanté par des visions terrifiantes, il découvre les terribles secrets de l’hôtel et bascule peu à peu dans une forme de folie meurtrière où il s’en prend à sa propre famille…&nbsp;</div>', 8.1, 'https://media.senscritique.com/media/000019629004/300/shining.jpg', 2, 1),
(35, 'The Thing', '1982-12-05 20:44:23', 'Au cœur de l’Antarctique, une équipe de chercheurs découvre un corps enfoui sous la neige depuis plus de 100 000 ans. Décongelée, la créature retourne à la vie en prenant la forme de celui qu’elle veut ; dès lors, le soupçon s’installe entre les hommes de l’équipe. Où se cache la créature ? Qui habite-t-elle ? Un véritable combat s’engage.', 8, 'https://media.senscritique.com/media/000012652206/300/the_thing.jpg', 3, 1),
(36, 'Midsommar', '2019-12-05 20:44:23', 'Dani et Christian sont sur le point de se séparer quand la famille de Dani est touchée par une tragédie. Attristé par le deuil de la jeune femme, Christian ne peut se résoudre à la laisser seule et l’emmène avec lui et ses amis à un festival estival qui n’a lieu qu’une fois tous les 90 ans et se déroule dans un village suédois isolé. Mais ce qui commence comme des vacances insouciantes dans un pays où le soleil ne se couche pas va vite prendre une tournure beaucoup plus sinistre et inquiétante.', 7.2, 'https://media.senscritique.com/media/000021623101/300/midsommar.png', 4, 2),
(37, 'Le Silence des agneaux', '1991-12-05 20:44:23', 'Clarice Starling, une jeune agent du FBI, enquête sur Buffalo Bill, un tueur en série connu pour dépecer ses victimes. Pour comprendre la psychologie du meurtrier, elle décide de rencontrer le Dr Hannibal Lecter. Autrefois psychiatre respecté, Lecter est aujourd\'hui interné pour cannibalisme. Psychopathe, redoutablement intelligent et manipulateur, l\'ex-psychiatre dit être capable de fournir des informations concernant Buffalo Bill ainsi que son portrait psychologique. Mais ce dernier, accepte d\'aider la jeune femme qu\'en échange d\'informations sur sa vie privée. Entre eux s\'établit un lien de fascination et de répulsion.  ', 8, 'https://media.senscritique.com/media/000004876963/300/le_silence_des_agneaux.jpg', 5, 1),
(38, 'Saw', '2004-12-05 20:44:23', 'Deux hommes se réveillent enchaînés au mur d\'une salle de bains. Ils ignorent où ils sont et ne se connaissent pas. Ils savent juste que l\'un doit absolument tuer l\'autre, sinon dans moins de huit heures, ils seront exécutés tous les deux. Voici l\'une des situations imaginées par un machiavélique maître criminel qui impose à ses victimes des choix auxquels personne ne souhaite jamais être confronté un jour. Un détective est chargé de l\'enquête.', 6.6, 'https://media.senscritique.com/media/000005201689/300/saw.jpg', 6, 1),
(39, 'Scream', '1996-12-05 20:44:23', 'Terrorisée par un serial killer s\'inspirant des plus grands films d\'horreur pour exécuter ses crimes, une petite ville devient le terrain d\'une vaste enquête où tout le monde est suspect...', 6.8, 'https://media.senscritique.com/media/000008054413/300/scream.jpg', 7, 1),
(40, 'Le Projet Blair Witch', '1999-12-05 20:44:23', 'Un an après les événements, une vidéo mystérieuse est retrouvée. Trois étudiants disparus avaient tenté de tourner un documentaire sur une sorcière.', 6.1, 'https://media.senscritique.com/media/000000162457/300/le_projet_blair_witch.jpg', 8, 1),
(41, 'Rosemary\'s Baby', '1968-12-05 20:44:23', 'Malgré les conseils de leur ami, Guy et sa femme enceinte s\'installent dans un immeuble vétuste, considéré par leur ami comme une demeure maléfique.', 7.6, 'https://media.senscritique.com/media/000019179875/300/rosemary_s_baby.jpg', 9, 1),
(42, 'Suspiria', '1977-12-05 20:44:23', 'Suzy débarque à Fribourg pour suivre des cours dans une académie de danse. L\'atmosphère du lieu, étrange et inquiétante, surprend la jeune fille.', 7.6, 'https://media.senscritique.com/media/000016132004/300/suspiria.jpg', 10, 3),
(43, '[REC]', '2007-12-05 20:44:23', 'Une journaliste et un collègue suivent des pompiers pour une intervention dans un appartement. Mais ce soir, ce n\'est pas un reportage habituel.', 6.5, 'https://media.senscritique.com/media/000004380086/300/rec.jpg', 11, 4),
(44, 'La Nuit des masques', '1978-12-05 20:44:23', 'Une nuit de Halloween, à Haddonfield, une petite ville de l\'Illinois, en 1963. Michael Myers, un garçonnet, assassine sa soeur, Judith, à coups de couteau. Quinze ans plus tard, il s\'évade de l\'hôpital psychiatrique où il était enfermé. Sam Loomis, son médecin, persuadé qu\'il va revenir à Haddonfield et tuer à nouveau, s\'emploie à prévenir la police du danger.', 7.2, 'https://media.senscritique.com/media/000012223433/300/la_nuit_des_masques.jpg', 3, 1),
(45, 'Massacre à la tronçonneuse', '1974-12-05 20:44:23', 'Dans les années 70, jeunes et insouciants, cinq amis sillonnent le Texas en minibus. Ils croisent en chemin la route d\'un auto-stoppeur et décident de le prendre à bord. Mais lorsque les jeunes gens s\'aperçoivent que l\'individu a un comportement inquiétant et menaçant, ils finissent par s\'en débarrasser. Bientôt à court d\'essence, le groupe décide d\'aller visiter une vieille maison abandonnée.', 7.2, 'https://media.senscritique.com/media/000010558772/300/massacre_a_la_tronconneuse.jpg', 12, 1),
(46, 'Psychose', '1960-12-05 20:44:23', 'Phoenix, Arizona. Marion Crane, une employée modèle, vole 40 000 dollars à son patron pour permettre à son amant, Sam Loomis, d\'éponger ses dettes. Elle s\'enfuit en voiture dans l\'intention de le rejoindre chez lui en Californie. Sur la route, une forte pluie l\'oblige à s\'arrêter. Elle descend dans un motel isolé, tenu par le jeune et sympathique gérant, Norman Bates.', 8.3, 'https://media.senscritique.com/media/000015172714/300/psychose.jpg', 13, 1),
(47, 'Alien - Le 8ème Passager', '1979-12-05 20:44:23', 'En 2122, le vaisseau commercial Nostromo et son équipage en hibernation, font route vers la Terre avec une importante cargaison de minerai. Un signal, émanant d’une planète inconnue, les tire de leur sommeil artificiel. Intrigué, l’équipage se rend sur place et découvre les restes d\'un gigantesque vaisseau extraterrestre. Lors de l’exploration de l’épave, l\'officier Kane se fait agresser par une forme de vie inconnue.', 8.1, 'https://media.senscritique.com/media/000006886214/300/alien_le_8eme_passager.jpg', 14, 1),
(48, 'Nosferatu le vampire', '1922-12-05 20:44:23', 'Thomas Hutter, jeune agent immobilier, doit partir pour la Transylvanie afin de vendre une propriété au Comte Orlok amoureux de la femme d\'Hutter.', 7.7, 'https://media.senscritique.com/media/000021041192/300/nosferatu_le_vampire.jpg', 15, 5),
(49, 'Dernier train pour Busan', '2016-12-05 20:44:23', 'Un virus inconnu se répand en Corée du Sud, l\'état d\'urgence est décrété. Les passagers du train KTX se livrent à une lutte sans merci afin de survivre jusqu\'à Busan, l\'unique ville où ils seront en sécurité...', 7.2, 'https://media.senscritique.com/media/000015855491/300/dernier_train_pour_busan.jpg', 16, 6),
(50, 'The Strangers', '2016-07-06 07:16:00', '<div>La vie d’un village de montagne est bouleversée par une série de meurtres, aussi sauvages qu’inexpliqués. L’enquête de police piétine alors qu’une épidémie de fièvre se propage et mène à la folie meurtrière les habitants de la petite communauté. Sans explication rationnelle à ce phénomène, les soupçons se portent sur un vieil étranger qui vit en ermite dans les bois attisant rumeurs et superstitions.</div>', 7.5, 'https://media.senscritique.com/media/000021309821/300/the_strangers.png', 17, 6),
(51, 'Buy Jupiter', '2023-12-14 11:11:00', '<div>Buy Jupiter est un groupe de Metal extrême aux accents progressifs. Inspirés de la nouvelle éponyme d\'Isaac Asimov, nos EP Departure et Crossworlds sont les 2 premiers volets d\'une trilogie relatant l\'épopée d\'un groupe de travailleurs joviens exilés par-délà l\'espace. Nos principales influences musicales sont : Meshuggah, Textures, After the Burial, Veil of Maya, Between the Buried and Me, Opeth...</div>', 10, 'https://m.media-amazon.com/images/I/51Ui1Ujgj-L._UX500_FMwebp_QL85_.jpg', 21, 8),
(52, 'Parasite', '2019-06-05 12:12:00', '<div>Toute la famille de Ki-taek est au chômage, et s’intéresse fortement au train de vie de la richissime famille Park. Un jour, leur fils réussit à se faire recommander pour donner des cours particuliers d’anglais chez les Park. C’est le début d’un engrenage incontrôlable, dont personne ne sortira véritablement indemne…</div>', 8.3, 'https://media.senscritique.com/media/000018573383/300/parasite.jpg', 18, 6),
(53, 'Memories of Murder', '2004-06-23 12:12:00', '<div>En 1986, dans la province de Gyunggi, le corps d\'une jeune femme violée puis assassinée est retrouvé dans la campagne. Deux mois plus tard, d\'autres crimes similaires ont lieu. Dans un pays qui n\'a jamais connu de telles atrocités, la rumeur d\'actes commis par un serial killer grandit de jour en jour. Une unité spéciale de la police est ainsi créée dans la région afin de trouver rapidement le coupable. Elle est placée sous les ordres d\'un policier local et d\'un détective spécialement envoyé de Séoul à sa demande. Devant l\'absence de preuves concrètes, les deux hommes sombrent peu à peu dans le doute...</div>', 8.1, 'https://media.senscritique.com/media/000014820526/300/memories_of_murder.jpg', 18, 6);

-- --------------------------------------------------------

--
-- Structure de la table `horror_movies_movies_horror_genre`
--

CREATE TABLE `horror_movies_movies_horror_genre` (
  `horror_movies_id` int(11) NOT NULL,
  `movies_horror_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horror_movies_movies_horror_genre`
--

INSERT INTO `horror_movies_movies_horror_genre` (`horror_movies_id`, `movies_horror_genre_id`) VALUES
(1, 1),
(1, 2),
(34, 2),
(50, 1),
(50, 2),
(51, 3),
(51, 10),
(52, 2),
(52, 4),
(53, 2),
(53, 4),
(53, 5);

-- --------------------------------------------------------

--
-- Structure de la table `movies_horror_genre`
--

CREATE TABLE `movies_horror_genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movies_horror_genre`
--

INSERT INTO `movies_horror_genre` (`id`, `name`) VALUES
(1, 'Épouvante-Horreur'),
(2, 'Thriller'),
(3, 'Science-fiction'),
(4, 'Drame'),
(5, 'Policier'),
(6, 'Fantastique'),
(7, 'Muet'),
(8, 'Action'),
(10, 'Heavy metal');

-- --------------------------------------------------------

--
-- Structure de la table `newsletter_email`
--

CREATE TABLE `newsletter_email` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscribed` tinyint(1) NOT NULL,
  `subscription_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newsletter_email`
--

INSERT INTO `newsletter_email` (`id`, `email`, `subscribed`, `subscription_date`) VALUES
(1, 'test@gmail.com', 1, '2023-12-10 16:29:25'),
(2, 'test2@gmail.com', 1, '2023-12-10 16:40:26'),
(3, 'test3@gmail.com', 1, '2023-12-10 16:55:11'),
(4, 'test4@gmail.com', 1, '2023-12-11 01:45:39'),
(5, 'test5@gmail.com', 1, '2023-12-11 01:45:50'),
(6, 'test6@gmail.com', 1, '2023-12-11 01:49:17'),
(7, 'test7@gmail.com', 1, '2023-12-11 01:52:09'),
(8, 'test8@gmail.com', 1, '2023-12-11 01:58:17'),
(9, 'test9@gmail.com', 1, '2023-12-11 02:00:14'),
(10, 'test10@gmail.com', 1, '2023-12-11 02:02:41'),
(11, 'test11@gmail.com', 1, '2023-12-11 02:02:57'),
(12, 'test12@gmail.com', 1, '2023-12-11 02:03:21'),
(13, 'test13@gmail.com', 1, '2023-12-11 02:05:48'),
(14, 'test14@gmail.com', 1, '2023-12-11 02:06:16'),
(15, 'test15@gmail.com', 1, '2023-12-11 02:07:39'),
(16, 'test16@gmail.com', 1, '2023-12-11 02:07:56'),
(17, 'test17@gmail.com', 1, '2023-12-11 02:08:08'),
(18, 'test18@gmail.com', 1, '2023-12-11 02:08:42'),
(19, 'test19@gmail.com', 1, '2023-12-11 02:09:14'),
(20, 'test20@gmail.com', 1, '2023-12-11 02:09:55'),
(21, 'test21@gmail.com', 1, '2023-12-11 02:10:46'),
(22, 'test22@gmail.com', 1, '2023-12-11 02:13:37'),
(23, 'test23@gmail.com', 1, '2023-12-11 02:13:58'),
(24, 'test24@gmail.com', 1, '2023-12-11 02:14:11'),
(25, 'test25@gmail.com', 1, '2023-12-11 02:14:22'),
(26, 'test26@gmail.com', 1, '2023-12-11 11:33:16'),
(27, 'test28@gmail.com', 1, '2023-12-11 11:53:14'),
(28, 'test29@gmail.com', 1, '2023-12-11 11:59:27'),
(29, 'yansontkt69190@gmail.com', 1, '2023-12-11 14:06:14'),
(30, 'yansontkt69@gmail.com', 1, '2023-12-11 14:07:38'),
(31, 'test30@gmail.com', 1, '2023-12-17 12:32:50');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(1, 'marco@gmail.com', '[]', '$2y$13$ACBirzoXxzhcXHs49n5Touap91Gf4haIK47U2djNVYEQQJgEvCTdG', 0),
(2, 'admin@devils-palace.info', '[\"ROLE_ADMIN\"]', '$2y$13$kBpMb9WObKOKh82t.DYRpuHfntQDkc5bBNAk6HIgnuc2PetfNvEay', 0),
(3, 'test@gmail.com', '[]', '$2y$13$YldR0JFJEkzVCppbHLM/4u.XJ3ltlMGAi01OzlXzrDrxxRnQrHigW', 0),
(4, 'test2@gmail.com', '[]', '$2y$13$s/McIn6usafgtAQDKtvpZuSVGEd0T.z5aXoIrZq3wH8EVHsYtwA0a', 1),
(5, 'test3@gmail.com', '[]', '$2y$13$LI4AmIqq/Dqjd5ho4NDPIuAN.GJuhZ1Aeqg6uqK29a2YQAOwlsacm', 1),
(6, 'test5@gmail.com', '[]', '$2y$13$GbB7kmchmzT8KbEHEnxFRujOBG4Jdl3ihGmUdvneh4DrdWbKKFEqa', 1),
(7, 'test6@gmail.com', '[]', '$2y$13$XfCEul7nTUDVD/Z./nRVxOW2hwodbjkXdj.y/UE.ssD6Lc.3xLMIG', 0),
(8, 'test7@gmail.com', '[]', '$2y$13$nBhHURUdyabGh71Mg8rkC.54IExGOZGIkj4sEL5dPLq9YOlCaBqWG', 1),
(9, 'test4@gmail.com', '[]', '$2y$13$8H7ViIQXeIKLRr9kpmygDOn2kEjghUmAK4Z7sC/U06LQlCQUcp94a', 1),
(10, 'test8@gmail.com', '[]', '$2y$13$kS6On5H1WGb8A.cHBf5cd.fYpQGooMpLbZS/W.zyJAf9vbi2fkWga', 1),
(11, 'test31@gmail.com', '[]', '$2y$13$hC5yGuynO0I23xPmQWBQrufo6tTIJnwkosmB93hO2v1qEeElNI1EW', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `user_id` int(11) NOT NULL,
  `favorites_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horror_movies`
--
ALTER TABLE `horror_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9A5E0F0A899FB366` (`director_id`),
  ADD KEY `IDX_9A5E0F0AF92F3E70` (`country_id`);

--
-- Index pour la table `horror_movies_movies_horror_genre`
--
ALTER TABLE `horror_movies_movies_horror_genre`
  ADD PRIMARY KEY (`horror_movies_id`,`movies_horror_genre_id`),
  ADD KEY `IDX_8E5BDD5609D2040` (`horror_movies_id`),
  ADD KEY `IDX_8E5BDD54564B5A4` (`movies_horror_genre_id`);

--
-- Index pour la table `movies_horror_genre`
--
ALTER TABLE `movies_horror_genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletter_email`
--
ALTER TABLE `newsletter_email`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`user_id`,`favorites_id`),
  ADD KEY `IDX_E489ED11A76ED395` (`user_id`),
  ADD KEY `IDX_E489ED1184DDC6B4` (`favorites_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `horror_movies`
--
ALTER TABLE `horror_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `movies_horror_genre`
--
ALTER TABLE `movies_horror_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `newsletter_email`
--
ALTER TABLE `newsletter_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `horror_movies`
--
ALTER TABLE `horror_movies`
  ADD CONSTRAINT `FK_9A5E0F0A899FB366` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  ADD CONSTRAINT `FK_9A5E0F0AF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `horror_movies_movies_horror_genre`
--
ALTER TABLE `horror_movies_movies_horror_genre`
  ADD CONSTRAINT `FK_8E5BDD54564B5A4` FOREIGN KEY (`movies_horror_genre_id`) REFERENCES `movies_horror_genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8E5BDD5609D2040` FOREIGN KEY (`horror_movies_id`) REFERENCES `horror_movies` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `FK_E489ED1184DDC6B4` FOREIGN KEY (`favorites_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E489ED11A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
