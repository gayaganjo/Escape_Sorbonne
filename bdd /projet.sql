-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 27 avr. 2020 à 13:47
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `omk_dwm`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `text` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(5, 'items', 1, 1, 'Q2: date de fondation', 'Q2: date de fondation\nNous avons maintenant le nom d’un des fondateurs, il nous reste plus qu’à trouver la date de fondation de la Sorbonne. \nSur la plaque de la cour d’honneur il est indiqué que la chapelle a été édifiée en 1326, mais Robert de Sorbon est décédé en 1274. Notre mission ne va pas être simple car des erreurs se sont disséminés au fil du temps.\nR1: 1253\nR2: 1263\nR3: 1326\nR4: 1347\nLa Sorbonne tire son origine du collège créé en 1253 par Robert de Sorbon, chapelain et confesseur du roi saint Louis qui en confirma la fondation en 1257. Nous pouvons donc récupérer les plans à partir de 1253. '),
(6, 'items', 1, 1, 'Q1:  la sorbonne', 'Q1:  la sorbonne\n Pour commencer, nous devons savoir jusqu’où remonter. Je propose de revenir en 2020 et de chercher sa date de fondation. Pour cela nous devons retrouver le nom d’un de ses fondateurs.\nSon fondateur venait d’une commune française, située dans le département des Ardennes. \nSon nom se trouve au milieu de la cour d’honneur.\nÀ sa création, la Sorbonne était l’un des collèges du Moyen Âge de l’université de Paris dont le fondateur s’appelait Robert de Sorbon et était le confesseur du roi Louis Philippe. \nR1: Robert de Sorbon\nR2 : Philippe de Sorbon\nR3: Louis le Sorbonnais\nR4: Louis de Sorbonne'),
(7, 'items', 1, 1, 'R(1) : Philippe de Sorbon', 'R(1) : Philippe de Sorbon '),
(8, 'items', 1, 1, 'R(1): Robert de Sorbon', 'R(1): Robert de Sorbon '),
(9, 'items', 1, 1, 'R(1): Louis le Sorbonnais', 'R(1): Louis le Sorbonnais '),
(10, 'items', 1, 1, 'R(1): Louis de Sorbonne', 'R(1): Louis de Sorbonne '),
(12, 'items', 1, 1, 'R(2): 1253', 'R(2): 1253'),
(13, 'items', 1, 1, 'R(2): 1263', 'R(2): 1263'),
(14, 'items', 1, 1, 'R(2): 1326', 'R(2): 1326'),
(15, 'items', 1, 1, 'Q3: la chapelle', 'Q3: la chapelle\nLa Sorbonne date donc du Moyen-Âge et nous pouvons supposer qu’elle ne ressemblait pas à celle de 2020 à laquelle nous sommes revenus. D’ailleurs, les tracés en double pointillé blanc situé au centre de la Cour d’Honneur correspondent à la chapelle primitive, mais si nous savions quand a-t-elle été détruite, nous pourrions sûrement daté une autre période de construction et retrouver les plans. \nC’est un célèbre cardinal qui fit la commande d’un nouvel édifice \nRIV: 1635\nRI: 1430\nRII: 1522\nRIII: 1622\nEn 1635, le cardinal de Richelieu, alors proviseur du collège de Sorbonne, commande à l’architecte Jacques Lemercier un nouvel édifice aux exigences et au goût de l’époque dont il ne reste aujourd’hui que la Chapelle. '),
(16, 'items', 1, 1, 'R(3): 1430', 'R(3): 1430\n'),
(17, 'items', 1, 1, 'R(3): 1522', 'R(3): 1522'),
(18, 'items', 1, 1, 'Q4: Le tombeau', 'Q4: Le tombeau\nLe 5 décembre 1793, des révolutionnaires saccagèrent un tombeau qui se trouvait dans la nouvelle chapelle, l\'exhumèrent et décapitèrent son cadavre… à qui appartenait-il ?\nRendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.\nIl s’agit d’un des proviseurs de la Sorbonne.\nR(b): Cardinal de Richelieu\nR(d): Victor Hugo\nR(c): Napoléon Bonaparte\nR(a): Robert de Sorbon\nC’est dans le chœur que se trouve le tombeau du fameux Armand Jean du Plessis, cardinal-duc de RICHELIEU (1585-1642). A la mort du cardinal, la duchesse d’Aiguillon, sa nièce et héritière, prit en charge ses dernières volontés. Elle commanda un tombeau monumental à Girardon, qui ne fut achevé qu’en 1694, le corps de Richelieu étant déposé dans une crypte sous le cénotaphe.'),
(19, 'items', 1, 1, 'R(4): Cardinal de Richelieu', 'R(4): Cardinal de Richelieu '),
(20, 'items', 1, 1, 'R(4): Robert de Sorbon', 'R(4): Robert de Sorbon'),
(21, 'items', 1, 1, 'Anis', 'Joueur A\njoueur\nAnis '),
(22, 'items', 1, 1, 'Samszo', 'Joueur S\njoueur\nSamszo'),
(23, 'items', 1, 1, 'Gaya', 'Joueur G\nJoueur \nGaya'),
(24, 'items', 1, 1, 'R(2): 1347', 'R(2): 1347'),
(25, 'items', 1, 1, 'R(3): 1622', 'R(3): 1622'),
(26, 'items', 1, 1, 'R(3): 1635', 'R(3): 1635'),
(27, 'items', 1, 1, 'R(4): Napoléon Bonaparte', 'R(4): Napoléon Bonaparte'),
(28, 'items', 1, 1, 'R(4): Victor Hugo', 'R(4): Victor Hugo'),
(29, 'items', 1, 1, 'Q5: système d’enseignement', 'Q5: système d’enseignement \nAu XIXe siècle c’est le temps des grands travaux sous la Troisième République en Sorbonne. Qui réorganisa l’ensemble du système d’enseignement supérieur français, baptisé Université impériale ? \nIl s’agit d’un empereur. \nÇa commença en 1806. \nÀ partir de 1806, Napoléon réorganisa l’ensemble du système d’enseignement supérieur français, baptisé Université impériale, et créa à Paris cinq facultés dont le but était de former les enseignants des établissements secondaires et des séminaires : les facultés des sciences, des lettres, de théologie, de droit et de médecine. La Sorbonne devint alors le siège des trois premières, ainsi que du rectorat de l’Académie de Paris auquel était attachée la fonction, spécifique à Paris, de Grand Maître de l’Université. Au départ, ces trois facultés s’installèrent au collège du Plessis. Ce n’est qu’en 1821 qu’elles rejoignirent l’ancienne Sorbonne abandonnée trente ans plus tôt. \nR:Napoléon Bonaparte\nR: Octave Gréard\nR: Jules Ferry\nR: Louis Pasteur'),
(30, 'items', 1, 1, 'R(5):Napoléon Bonaparte', 'R(5):Napoléon Bonaparte'),
(31, 'items', 1, 1, 'R(5): Jules Ferry', 'R(5): Jules Ferry'),
(32, 'items', 1, 1, 'R(5): Louis Pasteur', 'R(5): Louis Pasteur'),
(33, 'items', 1, 1, 'R(5): Octave Gréard', 'R(5): Octave Gréard'),
(34, 'items', 1, 1, 'Q6: 6)	La reconstruction des bâtiments', 'Q6: 6)	La reconstruction des bâtiments  \nLa reconstruction des bâtiments du XVIIe siècle, trop exigus et incommodes, fut finalement réalisée sous l’impulsion de ? \nIl s’agit d’un ministre de l’Instruction publique.\nLa reconstruction des bâtiments du XVIIe siècle, trop exigus et incommodes, fut finalement réalisée sous l’impulsion de Jules Ferry, ministre de l’Instruction publique. Le chantier fut confié à l’architecte Henri-Paul Nénot et la première pierre du nouvel édifice fut posée en 1885. Outre la construction d’un Palais académique où siégeait l’administration rectorale, les anciens bâtiments du XVIIe siècle laissèrent place à la Cour d’honneur, la Chapelle en restant le seul élément conservé. On construisit également une vaste bibliothèque de 300 places qui comptait plus de 600 000 volumes en 1913. \nR////: Jules Ferry\nR///: Octave Gréard\nR//: Victor Hugo\nR/: Louis Pasteur'),
(35, 'items', 1, 1, 'R(6): Louis Pasteur', 'R(6): Louis Pasteur'),
(36, 'items', 1, 1, 'R(6): Victor Hugo', 'R(6): Victor Hugo'),
(37, 'items', 1, 1, 'R(6): Octave Gréard', 'R(6): Octave Gréard'),
(38, 'items', 1, 1, 'R(6): Jules Ferry', 'R(6): Jules Ferry'),
(39, 'items', 1, 1, 'Q7: L\'enseignante à la Sorbonne.', 'Q7: L\'enseignante à la Sorbonne. \nEn 1906 une femme devient la première femme enseignante à la Sorbonne. De qui s’agit-il ?\nRendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.\nC’est une scientifique .\nLe 5 novembre 1906, la leçon de la physicienne française d\'origine polonaise, Marie Curie, née Maria Sklodowska, est l\'événement. Journalistes, femmes du monde et professeurs prennent place à côté des étudiants pour assister à ce premier cours. Elle débute en expliquant la radioactivité et les travaux de Becquerel. Des thèmes sur lesquels elle a beaucoup travaillé avec mari. \nR(7): Marie Curie\nR(7) : Jacqueline de Romilly\nR(7) : Simone de Beauvoir\nR(7) : Simone Weil'),
(40, 'items', 1, 1, 'R(7) : Simone de Beauvoir', 'R(7) : Simone de Beauvoir'),
(41, 'items', 1, 1, 'R(7) : Simone Weil', 'R(7) : Simone Weil '),
(42, 'items', 1, 1, 'R(7) : Jacqueline de Romilly', 'R(7) : Jacqueline de Romilly'),
(43, 'items', 1, 1, 'R(7): Marie Curie', 'R(7): Marie Curie'),
(44, 'items', 1, 1, 'Q8: 13 universités .', 'Q8: 13 universités .\nEn quelle année l’Université de Paris éclate-t-elle en 13 universités Parisiennes ?\nC’est dû à un mouvement contestataire. \nles événements de mai 1968 ne commencèrent pas en Sorbonne, mais dans l’une des nouvelles facultés qui venaient d’être construites précisément pour faire face au boom des études supérieures : la faculté de Nanterre. Lorsque la contestation gagna le Quartier latin, la Sorbonne fut occupée à son tour plusieurs fois au cours du mois de mai et devint rapidement un symbole international de la contestation étudiante, jusqu’à son évacuation définitive entre les 14 et 16 juin. \n\nLe processus de réforme qui se mit en place au lendemain du mouvement entraîna l’éclatement de l’Université de Paris en neuf – puis plus tard treize – universités. Sous l’impulsion du ministre de l’Education nationale, Edgar Faure, la loi d’orientation de l’enseignement supérieur du 12 novembre 1968 accordait aux nouvelles universités une autonomie limitée : les nouveaux établissements seraient désormais dirigés par un président, professeur élu par un conseil d’administration. \n\nR(8) : 1968\nR(8) :  1945\nR(8) : 1939\nR(8) : 1918'),
(45, 'items', 1, 1, 'R(8) : 1918', 'R(8) : 1918'),
(46, 'items', 1, 1, 'R(8) : 1939', 'R(8) : 1939'),
(47, 'items', 1, 1, 'R(8) :  1945', 'R(8) :  1945'),
(48, 'items', 1, 1, 'R(8) : 1968', 'R(8) : 1968'),
(49, 'items', 1, 1, 'Q9: la sorbonne est.', 'Q9: la sorbonne est. \nEn 2020, la Sorbonne est ?\nC’est le siège du rectorat de l’académie Paris et de la Chancellerie des Universités de Paris.\nLa Sorbonne est un bâtiment du Quartier latin dans le 5e arrondissement, c\'est une propriété de la ville de Paris. \nR(9) : Un bâtiment\nR(9): Une faculté\nR(9) :  Une université\nR(9): Un collège'),
(50, 'items', 1, 1, 'R(9) :  Une université', 'R(9) :  Une université'),
(51, 'items', 1, 1, 'R(9) : Un bâtiment', 'R(9) : Un bâtiment'),
(52, 'items', 1, 1, 'R(9): Une faculté', 'R(9): Une faculté'),
(53, 'items', 1, 1, 'R(9): Un collège', 'R(9): Un collège');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(5),
(6),
(7),
(8),
(9),
(10),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('EasyInstall', 1, '3.2.5'),
('IiifServer', 1, '3.5.16');

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('VYXGbefDXpB0EBqXrqmUaMlZ2rEeqYXc', 2, '2020-02-21 12:47:08', 1);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(186, 1, 7, 'escapesorbonneHasIndice', 'indice', NULL),
(187, NULL, 7, 'escapesorbonneClasse', 'Classe', NULL),
(188, NULL, 7, 'escapesorbonnejoueur', 'joueur', NULL),
(189, NULL, 7, 'escapesorbonneHasClasse', 'Classe', NULL),
(190, NULL, 7, 'escapesorbonneHasJoueur', 'joueur', NULL),
(191, NULL, 7, 'escapesorbonneJoueur', 'joueur', NULL),
(192, NULL, 7, 'escapesorbonneMode', 'Mode', NULL),
(193, NULL, 7, 'escapesorbonneHasoPremierindice', 'Premier indice', NULL),
(194, NULL, 7, 'escapesorbonneHasooDeuxièmeindice', 'Deuxième indice', NULL),
(195, NULL, 7, 'escapesorbonneHasPremierindice', 'Premier indice', NULL),
(196, NULL, 7, 'escapesorbonneHasDeuxièmeindice', 'Deuxième indice', NULL),
(197, NULL, 7, 'escapesorbonneRésultat', 'Résultat', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(5, 1, 108, 2, NULL, 'Q2: date de fondation', 1, '2020-02-07 15:24:11', '2020-04-26 11:45:38', 'Omeka\\Entity\\Item'),
(6, 1, 108, 2, NULL, 'Q1:  la sorbonne', 1, '2020-02-07 15:25:15', '2020-04-26 11:52:51', 'Omeka\\Entity\\Item'),
(7, 1, 109, 3, NULL, 'R(1) : Philippe de Sorbon', 1, '2020-02-07 15:26:51', '2020-04-26 11:53:15', 'Omeka\\Entity\\Item'),
(8, 1, 109, 3, NULL, 'R(1): Robert de Sorbon', 1, '2020-02-07 15:28:21', '2020-04-26 11:53:31', 'Omeka\\Entity\\Item'),
(9, 1, 109, 3, NULL, 'R(1): Louis le Sorbonnais', 1, '2020-02-20 21:10:38', '2020-04-26 11:53:52', 'Omeka\\Entity\\Item'),
(10, 1, 109, 3, NULL, 'R(1): Louis de Sorbonne', 1, '2020-02-20 21:45:22', '2020-04-26 11:54:26', 'Omeka\\Entity\\Item'),
(12, 1, 109, 3, NULL, 'R(2): 1253', 1, '2020-02-20 21:53:56', '2020-04-26 11:55:28', 'Omeka\\Entity\\Item'),
(13, 1, 109, 3, NULL, 'R(2): 1263', 1, '2020-02-20 21:54:40', '2020-04-26 11:55:45', 'Omeka\\Entity\\Item'),
(14, 1, 109, 3, NULL, 'R(2): 1326', 1, '2020-02-20 21:56:01', '2020-04-26 11:55:59', 'Omeka\\Entity\\Item'),
(15, 1, 108, 2, NULL, 'Q3: la chapelle', 1, '2020-04-07 14:23:36', '2020-04-26 11:45:59', 'Omeka\\Entity\\Item'),
(16, 1, 109, 3, NULL, 'R(3): 1430', 1, '2020-04-07 14:42:22', '2020-04-26 11:56:49', 'Omeka\\Entity\\Item'),
(17, 1, 109, 3, NULL, 'R(3): 1522', 1, '2020-04-07 15:50:30', '2020-04-26 11:57:05', 'Omeka\\Entity\\Item'),
(18, 1, 108, 2, NULL, 'Q4: Le tombeau', 1, '2020-04-07 16:01:04', '2020-04-26 11:46:15', 'Omeka\\Entity\\Item'),
(19, 1, 109, 3, NULL, 'R(4): Cardinal de Richelieu', 1, '2020-04-07 16:03:45', '2020-04-26 11:58:31', 'Omeka\\Entity\\Item'),
(20, 1, 109, 3, NULL, 'R(4): Robert de Sorbon', 1, '2020-04-07 16:04:19', '2020-04-26 11:58:43', 'Omeka\\Entity\\Item'),
(21, 1, 107, 4, NULL, 'Anis', 1, '2020-04-09 10:55:24', '2020-04-10 13:10:28', 'Omeka\\Entity\\Item'),
(22, 1, 107, 4, NULL, 'Samszo', 1, '2020-04-09 10:56:40', '2020-04-10 13:10:15', 'Omeka\\Entity\\Item'),
(23, 1, 107, 4, NULL, 'Gaya', 1, '2020-04-09 10:57:08', '2020-04-10 13:09:56', 'Omeka\\Entity\\Item'),
(24, 1, 109, 3, NULL, 'R(2): 1347', 1, '2020-04-23 12:12:45', '2020-04-26 11:56:16', 'Omeka\\Entity\\Item'),
(25, 1, 109, 3, NULL, 'R(3): 1622', 1, '2020-04-23 12:24:56', '2020-04-26 11:57:40', 'Omeka\\Entity\\Item'),
(26, 1, 109, 3, NULL, 'R(3): 1635', 1, '2020-04-23 12:25:38', '2020-04-26 11:57:55', 'Omeka\\Entity\\Item'),
(27, 1, 109, 3, NULL, 'R(4): Napoléon Bonaparte', 1, '2020-04-23 12:38:39', '2020-04-26 11:58:58', 'Omeka\\Entity\\Item'),
(28, 1, 109, 3, NULL, 'R(4): Victor Hugo', 1, '2020-04-23 12:39:22', '2020-04-26 11:59:09', 'Omeka\\Entity\\Item'),
(29, 1, 108, 2, NULL, 'Q5: système d’enseignement', 1, '2020-04-23 12:45:10', '2020-04-26 11:46:32', 'Omeka\\Entity\\Item'),
(30, 1, 109, 3, NULL, 'R(5):Napoléon Bonaparte', 1, '2020-04-23 12:48:15', '2020-04-26 11:51:00', 'Omeka\\Entity\\Item'),
(31, 1, 109, 3, NULL, 'R(5): Jules Ferry', 1, '2020-04-23 12:48:48', '2020-04-26 11:51:13', 'Omeka\\Entity\\Item'),
(32, 1, 109, 3, NULL, 'R(5): Louis Pasteur', 1, '2020-04-23 12:49:29', '2020-04-26 11:51:32', 'Omeka\\Entity\\Item'),
(33, 1, 109, 3, NULL, 'R(5): Octave Gréard', 1, '2020-04-23 12:50:07', '2020-04-26 11:51:49', 'Omeka\\Entity\\Item'),
(34, 1, 108, 2, NULL, 'Q6: 6)	La reconstruction des bâtiments', 1, '2020-04-23 12:55:09', '2020-04-26 11:46:48', 'Omeka\\Entity\\Item'),
(35, 1, 109, 3, NULL, 'R(6): Louis Pasteur', 1, '2020-04-23 12:56:17', '2020-04-26 11:49:43', 'Omeka\\Entity\\Item'),
(36, 1, 109, 3, NULL, 'R(6): Victor Hugo', 1, '2020-04-23 12:56:51', '2020-04-26 11:50:01', 'Omeka\\Entity\\Item'),
(37, 1, 109, 3, NULL, 'R(6): Octave Gréard', 1, '2020-04-23 12:57:22', '2020-04-26 11:50:17', 'Omeka\\Entity\\Item'),
(38, 1, 109, 3, NULL, 'R(6): Jules Ferry', 1, '2020-04-23 12:57:54', '2020-04-26 11:50:33', 'Omeka\\Entity\\Item'),
(39, 1, 108, 2, NULL, 'Q7: L\'enseignante à la Sorbonne.', 1, '2020-04-23 22:05:58', '2020-04-26 11:47:03', 'Omeka\\Entity\\Item'),
(40, 1, 109, 3, NULL, 'R(7) : Simone de Beauvoir', 1, '2020-04-23 22:14:36', '2020-04-23 22:14:36', 'Omeka\\Entity\\Item'),
(41, 1, 109, 3, NULL, 'R(7) : Simone Weil', 1, '2020-04-23 22:15:48', '2020-04-23 22:15:48', 'Omeka\\Entity\\Item'),
(42, 1, 109, 3, NULL, 'R(7) : Jacqueline de Romilly', 1, '2020-04-23 22:16:28', '2020-04-23 22:16:28', 'Omeka\\Entity\\Item'),
(43, 1, 109, 3, NULL, 'R(7): Marie Curie', 1, '2020-04-23 22:17:31', '2020-04-23 22:18:26', 'Omeka\\Entity\\Item'),
(44, 1, 108, 2, NULL, 'Q8: 13 universités .', 1, '2020-04-23 22:35:03', '2020-04-26 11:47:18', 'Omeka\\Entity\\Item'),
(45, 1, 109, 3, NULL, 'R(8) : 1918', 1, '2020-04-23 22:41:29', '2020-04-23 22:41:29', 'Omeka\\Entity\\Item'),
(46, 1, 109, 3, NULL, 'R(8) : 1939', 1, '2020-04-23 22:42:41', '2020-04-23 22:42:41', 'Omeka\\Entity\\Item'),
(47, 1, 109, 3, NULL, 'R(8) :  1945', 1, '2020-04-23 22:43:21', '2020-04-23 22:43:21', 'Omeka\\Entity\\Item'),
(48, 1, 109, 3, NULL, 'R(8) : 1968', 1, '2020-04-23 22:44:38', '2020-04-23 22:44:38', 'Omeka\\Entity\\Item'),
(49, 1, 108, 2, NULL, 'Q9: la sorbonne est.', 1, '2020-04-23 22:53:55', '2020-04-26 11:48:25', 'Omeka\\Entity\\Item'),
(50, 1, 109, 3, NULL, 'R(9) :  Une université', 1, '2020-04-23 22:57:29', '2020-04-23 22:57:29', 'Omeka\\Entity\\Item'),
(51, 1, 109, 3, NULL, 'R(9) : Un bâtiment', 1, '2020-04-23 22:58:10', '2020-04-23 22:58:10', 'Omeka\\Entity\\Item'),
(52, 1, 109, 3, NULL, 'R(9): Une faculté', 1, '2020-04-23 22:58:46', '2020-04-23 22:58:46', 'Omeka\\Entity\\Item'),
(53, 1, 109, 3, NULL, 'R(9): Un collège', 1, '2020-04-23 22:59:24', '2020-04-23 22:59:24', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'Theme', 'theme', 'Metadata describing the information captured in a dataset.'),
(107, NULL, 7, 'escapesorbonneJoueur', 'joueur', NULL),
(108, NULL, 7, 'escapesorbonneQuestion', 'Question', NULL),
(109, NULL, 7, 'escapesorbonneRéponse', 'Réponse', NULL),
(110, NULL, 7, 'escapesorbonneMode', 'Mode', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, NULL, NULL, NULL, 'question'),
(3, 1, NULL, NULL, NULL, 'réponse'),
(4, 1, NULL, NULL, NULL, 'joueur');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(33, 2, 1, NULL, NULL, 2, NULL, 0, 0),
(34, 2, 4, NULL, NULL, 3, NULL, 0, 0),
(35, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(36, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(37, 2, 154, NULL, NULL, 6, NULL, 0, 0),
(38, 2, 187, NULL, NULL, 1, NULL, 0, 0),
(39, 4, 188, NULL, NULL, 2, NULL, 0, 0),
(40, 4, 1, NULL, NULL, 3, NULL, 0, 0),
(42, 4, 187, NULL, NULL, 1, 'literal', 0, 0),
(44, 2, 193, NULL, NULL, 4, NULL, 0, 0),
(45, 2, 194, NULL, NULL, 5, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('808b8jtci937e3p14u20fei82k', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373939323033392e3737333335393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22396439716c7272386f716936386163706d3569637367346b6d6a223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353334333b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353334393b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353631313b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223035353765336165643332636566303235353764323833363630356539356362223b733a33323a223830646365643734386638663735653562376564313630616238336435653761223b7d733a343a2268617368223b733a36353a2238306463656437343866386637356535623765643136306162383364356537612d3035353765336165643332636566303235353764323833363630356539356362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226635343637323036336435363530373962663837356466313864303233376361223b733a33323a226137353461333466633533363635306231353535633139326164663433393836223b733a33323a223961396638396361666363366264633163323832353935383462663337633862223b733a33323a226138643663363861383061346531306138383665366439383364376261363432223b7d733a343a2268617368223b733a36353a2261386436633638613830613465313061383836653664393833643762613634322d3961396638396361666363366264633163323832353935383462663337633862223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226166303835303762356364633134613164613561366161633962663732613961223b733a33323a223166653037346461383834366264663639653564666332383835666265626630223b733a33323a223930373036633733353665373434643264323531663236626132626435383437223b733a33323a226237656162393932616133633862356362313533623339396231386637396338223b733a33323a223730343961386631653261386432663663633064663335643234626336326339223b733a33323a226265323839633139343638613332343239633531316333643534363833663836223b7d733a343a2268617368223b733a36353a2262653238396331393436386133323432396335313163336435343638336638362d3730343961386631653261386432663663633064663335643234626336326339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587992039),
('8ll3ulljmvpr4jgg1nt9off0tg', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373638323837382e33343436373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22386c6c33756c6c6a6d767072346a6767316e74396f6666307467223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373638363437383b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223337333363613035396436663561316438363565373961396163366562353131223b733a33323a226563383236396330613432376236613931636165323335383731656632636266223b7d733a343a2268617368223b733a36353a2265633832363963306134323762366139316361653233353837316566326362662d3337333363613035396436663561316438363565373961396163366562353131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587682878),
('canmm2b3i2dmvrns0ue7r1rhkn', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373133323038362e3731343932353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22337374716a63326969343171697638376a697334696a32306431223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373132393337313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353638363b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373133353539313b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223736343032646334306362366164336166623434623166316634613538383664223b733a33323a223539666137326132353130303735333530656463646236373133343430343866223b7d733a343a2268617368223b733a36353a2235396661373261323531303037353335306564636462363731333434303438662d3736343032646334306362366164336166623434623166316634613538383664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a223164626563613664366538333963376461303564346639313361386534373164223b733a33323a223134333264643137353734373937386334636635303430383830623861643432223b733a33323a223766623761633539313433633233363738643237363138633463646564646666223b733a33323a223630323836353736386164313662393861653534386231643035353963383439223b733a33323a226365383734373032343335623938313538323636363432306136356232356266223b733a33323a223439383536616236366134613261326431353038376332313966626232316137223b733a33323a223230663562316563363363636265393361653535303634333538376366303464223b733a33323a223035303937306635323736646462363830313132306537643239376435373130223b733a33323a226630333135366130646138373131623832366363306165386466623133353738223b733a33323a226665333066303361363063353837303461303965663634396263376361653364223b7d733a343a2268617368223b733a36353a2266653330663033613630633538373034613039656636343962633763616533642d6630333135366130646138373131623832366363306165386466623133353738223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223065396133646435616464623362613039323437366534626237306537663130223b733a33323a223064323031396130646561643537383262613733613563393031393362643532223b7d733a343a2268617368223b733a36353a2230643230313961306465616435373832626137336135633930313933626435322d3065396133646435616464623362613039323437366534626237306537663130223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587132086),
('csjq1u9qdv4f99mmllgsslci83', 0x5f5f5a467c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373939323035382e3931353131383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226a33706c6f3437766c716967386936626536386d613473696261223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353633393b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226535393761386664326661633364346239373434636439666665366266343362223b733a33323a226631616135313332646262633861633838643137626337626361386430303838223b7d733a343a2268617368223b733a36353a2266316161353133326462626338616338386431376263376263613864303038382d6535393761386664326661633364346239373434636439666665366266343362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1587992058),
('d8gkmmc3lldg4atu6b5slgbd0h', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373939333338312e3933343739393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22336e70386d6838316d316e646b307662636b6261617236653068223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353635393b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353835343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373939353738393b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226264373137653239326633393562663763623866303730613666313732613239223b733a33323a223661646132346631653064386261643133623466643561346330356265396466223b7d733a343a2268617368223b733a36353a2236616461323466316530643862616431336234666435613463303562653964662d6264373137653239326633393562663763623866303730613666313732613239223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226564363865373233623533613333373361373161383932363462333033353461223b733a33323a226366396231643364636337306631363965356536666264386564356464393330223b733a33323a226166333837313465366362383364336232643832653565633363623534626131223b733a33323a223336323966613261373933326638363136663830383163656264386635623162223b733a33323a223034316262613437643165333539633539626665313335306563326466323039223b733a33323a223766623738613331373235386361636631653437653538366235333439386662223b733a33323a223133643264623566353530316365623466376137323661316561653732313533223b733a33323a223632646130373730386234633533633664353731373736383030303965366131223b733a33323a226633386632356161336635386661393634356238663833616639336339643231223b733a33323a226439396235323736616566323035666138633162366135626339313030343862223b733a33323a223866383064633339613839346238313131666630633836383963663339326464223b733a33323a223533643266393031616432623734306334653961346565353734303839646331223b7d733a343a2268617368223b733a36353a2235336432663930316164326237343063346539613465653537343038396463312d3866383064633339613839346238313131666630633836383963663339326464223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a226164613362613532373865633330383937336531373639316432393564356462223b733a33323a223337646536396636336332623661393037393831303532383264333763363637223b733a33323a223962363831633934636436333364323461636361363733636634343339353135223b733a33323a226364336563643632303162323465386336316532303861376438643838626639223b733a33323a226636393232396633353438623832396539663335393961323532393931663064223b733a33323a223838373539363664333731343138393938616465623065363237353430653062223b733a33323a223431326534393463653538616362316661323336376135323737363631373839223b733a33323a223038333934313437663563663063316136333234323463326563316433363862223b733a33323a226233653630386135316664613033313962373332363563316333323663353566223b733a33323a223430636631663630333236383439626261613036646633326235363836653865223b733a33323a223633393131303430323431663763653565393430663764393362383662303036223b733a33323a226136306537303663323333353035313263383230393766373435656563643133223b733a33323a223163333437306265653564366163306336636433356165633934333363366562223b733a33323a226636363563666461303161346133336435653337386565393531366439343731223b733a33323a223061343532356238613165316465393335323037323332363933346665613762223b733a33323a226338306162613830643731343738393335333531376432656164333536373033223b733a33323a223365656635353663313137616462356635313735363538616562656133316365223b733a33323a223664353965383137386164336431353639343633373264303463346462393833223b733a33323a226339313636616364356236643562366233643434336535386132333961646363223b733a33323a223138653938613336356363393734663830303531623630363366373932363039223b7d733a343a2268617368223b733a36353a2231386539386133363563633937346638303035316236303633663739323630392d6339313636616364356236643562366233643434336535386132333961646363223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587993381);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('dmtc1eo652qian4oev4onvurti', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373638323837382e3231393338393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e68616f346c6b74307368726d333269656b6766653269336739223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373638303433353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373638363434353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373638363337333b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226136626430336338303037343065616661303739353635643430633964646636223b733a33323a223238333365326531303831666233386561653863363636363464386136343164223b7d733a343a2268617368223b733a36353a2232383333653265313038316662333865616538633636363634643861363431642d6136626430336338303037343065616661303739353635643430633964646636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3237313a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31323633333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3135343a7b733a33323a226561333231353664356636663434353930306136613039356631653439623536223b733a33323a226531643433613637323933343133323538623139323633346662613535313935223b733a33323a223334646637353033636332646234353535656131303439313938343232346135223b733a33323a223034303439356565323366646539393530643437313564383464626335366365223b733a33323a223235646135306565643266336135373062666466393763393166666536313736223b733a33323a223035346230643766306361316338636135333936386531393530643035636633223b733a33323a223731323338363362626139333232636530616466353734633538376366653435223b733a33323a226232346662333265663035613865306164653933366535313133383436356539223b733a33323a226330393534643530353964623533376162623437383932323836363764643962223b733a33323a223130636631323561613034353935663763623362363865363366613130643063223b733a33323a223862663139313130616464613435333562343633353837623763633863363432223b733a33323a226137613339373339616538396266333065633434343939316335663965316466223b733a33323a223636323133303632306466333036616639343466623662613061363134366232223b733a33323a223435653030616233653435353661653930393165366263383335383139643338223b733a33323a223934356666323233386636326633326361613435613931383962303161666232223b733a33323a226165316134653635323130336666636264346637616364396166636538643963223b733a33323a223739393163346530663232616462306538336434323834643363333535613331223b733a33323a226465616338663661356566396265653835613238353036376334643866336330223b733a33323a226338633265313239353766663662373837336637633461643866646133656433223b733a33323a223139323432383333653065333138666231383362633039383037353161623839223b733a33323a223466653861316237616362363834633638396264373636333366353966366664223b733a33323a223934343765653936616432373832313734376639396532343564343530613138223b733a33323a223239346138636533643131663462353266336138396237313533353433303939223b733a33323a226664663131396265373438633965346566646539353661353564393866363036223b733a33323a226565613339646364366166343730636661316562376263306636363632643664223b733a33323a223262356231343236316630313666666437313534303964386630336439666635223b733a33323a223064386166656462613639633165373336656532613964306361646634663234223b733a33323a223936363931353932356339366466613362343535326537366336643364376530223b733a33323a223265613237336339356233313737656635663031313536663634356262613435223b733a33323a223835303831383631323739343764623864356530386136623665626631666639223b733a33323a223132336239306534333633656333383862663963306437396232393464643665223b733a33323a226366666532656236303466646432616662393134373035656334336130323166223b733a33323a223936336534636562363861313737393537313033633239383636316362316432223b733a33323a226639323264386662636633346139656635616332366461613330333831643433223b733a33323a226464653531623035353362636161623336353231636262316336346636343234223b733a33323a226665616336633064356531333036643437623037633161643333353761666164223b733a33323a223036363362326134396236653339346534393639313837326133353438303162223b733a33323a223738623933353634666562343561663766656663656261306261303735646539223b733a33323a223164306563323131356664653964633832623731653638646136333166366630223b733a33323a223834626564356563666463636432313366326132623239323230306134333665223b733a33323a223666623963653233656532623431663262316134613264346539336263613839223b733a33323a226365653031623137313832336138396336363131323531303738333661616337223b733a33323a223439323131363965646433373466613338626465623562643936656537383061223b733a33323a223330303161633063646134626163356365373132376639633832306530353330223b733a33323a226530663533323662623234353366363733376561353061396532633865613164223b733a33323a223939613732613531663633313933333765303934306233656530343130393435223b733a33323a223931313338396331336232623066323735373937316339363732393835663362223b733a33323a226164323534353236653766393134633464633937653166366433313063666531223b733a33323a223366343361313838393266383533356530663237356434613763306435656138223b733a33323a226263386538343763353561636662346561376561656232613461656135303165223b733a33323a226566663439346266303365366439383063336461666366373764623462396537223b733a33323a223163326330336538373764306536393235396331663364373465373132346365223b733a33323a226339623230303036383262633835666265356436333764643733383337633533223b733a33323a226461396535326131393534383661343532656661306234613136636563396461223b733a33323a226365663633373232663230303438646239643030636639643564623339303432223b733a33323a223162333562363532623962323366373161633239353962376465653264366662223b733a33323a223638376130363537353462613533653264323163343335383061336333383130223b733a33323a223533646361363135626633353336653437326531343238626564313263366238223b733a33323a223865343231383335623633343330373734376636343463386132303530386233223b733a33323a223533313665623735376265343338643636343339386430303932306230643937223b733a33323a226663366237353962656461386635393739653932353762626438386238663237223b733a33323a226463303033626130653333343534363837346631663730396362653934303064223b733a33323a223430616463303564366533333130343937666261303232383164623037623962223b733a33323a223931636562666461346537326637393034303837316332343030653432633663223b733a33323a223932393737626565363763353561623862363366666461363263346362383864223b733a33323a223265323637633631333836653031393562353633333635383734356362303430223b733a33323a223934663339373062313033306661396331663933626265373064313365323538223b733a33323a223065613465653637333138343163663065303365383339333663303961366138223b733a33323a223835613935313263303130643765643037663863316362636433636166353635223b733a33323a223339366533626330313863313564343461646535356631373332383462376662223b733a33323a226438353832633033666439363734353166626433643338363465353264353230223b733a33323a223964386564373563623336353339386638663864326361343633613435333334223b733a33323a223634326532646630393830303265636439613063303130396533616165313562223b733a33323a223337333261366464663737633535343663666463356233653964623637636365223b733a33323a223263366534393438336362663537613465643635626234373232333361326464223b733a33323a223431396266643436643361363635333939396132663632343665353439623634223b733a33323a226230643735633430393330326235623763313632383465623963326366303365223b733a33323a226266643662393530313535356636613366366161333935636139643437643263223b733a33323a223436366633346130386663303031383235666435626432366663663163343465223b733a33323a223663313765616339623836386166306431323631313331616162666431353631223b733a33323a223030636364336336616239343835346535633066613630653666653364633466223b733a33323a226634363337313364663962623133626331643530396234353232323237313365223b733a33323a223961643138666666653630383236383564346439393137663831343836643032223b733a33323a223637616233363863313539396632356365313439626238356565373037313136223b733a33323a226466626537666264396439666531636566353532303462636431666565636236223b733a33323a223966326332646136356237363834363632616365346263383739306631626364223b733a33323a226230623034326663666338333935356564383339613333386539613638393361223b733a33323a226633386630326364663265386362363032616466653936386663653033343636223b733a33323a223764656266393637333937383966376465653265646166626463636232666337223b733a33323a226133366239376265356464626361613931313538613165353334393734306237223b733a33323a223037303666633761616564623832656164353861663536653538666538393439223b733a33323a223764656533373866633363363431626664646139326263383138306365333664223b733a33323a226538313737343262333637383838343535306439383133386532326335396238223b733a33323a226235303862636536326437653439626366383233363534646465646531663463223b733a33323a226436343330363963623461303738666166316433303763363033656263333133223b733a33323a223165633335353437613935306335353866336239316261373761306361353336223b733a33323a226537363661356236313831323831646664623337383130303033386435616633223b733a33323a223737343335373862393632383565636330393135393536623535656666323234223b733a33323a226461636133613139663337656238306239356564386436646632323337646138223b733a33323a226563313139323633326264383262613637313638633263393365613830633763223b733a33323a226439663539336134626632336662386432333966663161666434346233633335223b733a33323a223534303735663630303636383537333133363134373333633363643035626337223b733a33323a226133663932666638633738646237393633633539313165396461346234623739223b733a33323a223336346533386535386663376263306635326136326335373166336161613531223b733a33323a223933333463613964316236663866363364643136383639356464616161313465223b733a33323a223039663337633662326132303264393130636462316634326633623861376666223b733a33323a223666663662396432373936646630353962616238393765656464323866653038223b733a33323a223538653265386436643437313563333435633631643031343235343432333862223b733a33323a226535383864323738643263386537363639346430633730386661353533326332223b733a33323a223462386536623661643639646363353164353232623639366232333734356534223b733a33323a223436646564633133376665323166643165373238353164343465626432386437223b733a33323a223032616635303135346461363162663437316666616531663631383638643364223b733a33323a223839636565646530666365643135653536343635323738353335356564613261223b733a33323a226662643365313162333363656635316432323661633236333361643536336663223b733a33323a223138376232613664393530323330663130626136316463333161303163326662223b733a33323a223362363033373539356166333931643564616339353636383939383961633461223b733a33323a223134663263646366623030663437303631653534646631313134396337316231223b733a33323a226665663131363637643030373634623632346430383737303133383864356364223b733a33323a223936343539323462303733613764376362643166306262366533306635396632223b733a33323a223835636161306431323030656337336332316335313136316531623533666561223b733a33323a223365303438323535663664323131393838663736373265643634346462643531223b733a33323a226337353539306633323438663835663238666162623362333766633636306132223b733a33323a223663316134363964373865376531613330663533376165326234303535313630223b733a33323a226431666132393263373535363835663235383534393533653366343739373231223b733a33323a226137633464386139393133636137336233613065656261336463373136373332223b733a33323a223833623862343838643737363731366464383032613139633264643835383865223b733a33323a223435316630343064653037366166343663666435353431353135643338373937223b733a33323a226134303631353864383165396339363161306666366464336163346465643866223b733a33323a226464323464623537663835353531633263383764363561383666326138656534223b733a33323a226432653666316564666432396664356234333262653065646239663231376631223b733a33323a226131633337353134303134326333313635353132316133353535333934336566223b733a33323a226438343237313662653838666532613832363331356165396666363330313930223b733a33323a223830316531633161336437303532663533343961303663336232383964303361223b733a33323a223866376339343635663063303534643066333438633630373764353166326237223b733a33323a223439373337666530626363393834336362663838366435376237316363363730223b733a33323a223263396431343635316539383035316631356339333433313932313534316364223b733a33323a223335323162646465636235386236376437613137363366316464363339363933223b733a33323a223630316363653032376663353666643136343635333931663736636231396530223b733a33323a226462663431653961323734623764386532663834376335643861633361653536223b733a33323a223939333638646239666432336262316432636164613239656538656539653335223b733a33323a226633386236613035613162353437376639393133393734353363306437373735223b733a33323a223937333163396431643162613564383366326566326337613835613062643063223b733a33323a226464313231313332653436653064643339396166373433626261383038623537223b733a33323a223539313639656230616538343132346536326262653136643666356334656462223b733a33323a223631373065386235303330333331356334643862333363353838343531643466223b733a33323a226265323062313866363438653832613464396137656539636334353764363761223b733a33323a223434383435373163316130323533393664643935343639316339633432313030223b733a33323a226438313466303435316163313630633434626531653833643162306631643362223b733a33323a223636656537633962323564356161386661316130663765396334613335623362223b733a33323a226434626434656464643436643030346431326437623965356638656236336234223b733a33323a226264623437353262626238636566666438646564356633333935336638623737223b733a33323a223533353262656261343936326566343538646565376137383162356366313733223b733a33323a223861356130613933386365336538383934316530363239323638643330666538223b733a33323a223437313461636531346331316166353632396332376634366235653930653633223b733a33323a223261663730356264653065383333303330653335393438313932656138363932223b733a33323a223665643835313763663134383439383466323866393061366337366339376530223b733a33323a223630623264353636393335356637643035376664343138383634633862306464223b733a33323a223064306164663237626231396133386432663638313938346264313232313232223b733a33323a226332393630623736336335626534643332633635363039653662363139396233223b733a33323a223830303533383362326461666433626166323033383636643935656261353837223b733a33323a223133616234396535353830303863343731613133383230323735616262633831223b733a33323a223938363733666336333434666337356136666238316636313134376231643331223b733a33323a223063326461656166303262623132666530653862393466343862393031663534223b733a33323a226236633331376433616164643039383464333165626562346136346265386333223b733a33323a223936393261396566393663353565626233613039343433326539643037636333223b733a33323a223239346164333036653134316130373138303638376434613936336261653663223b733a33323a223132373332323731336131633861633638336130646539346335643338663766223b733a33323a226334336232353038336538383966323432396239653134376136366561666335223b733a33323a226636313166396430343034633536643139386130326166666537343139613032223b733a33323a223364313033303038653737616632343866313830616233336236383535613466223b733a33323a223763623932383863643035333461333361356163353637653136646138373733223b733a33323a223361613237373161323162646636336364346237313835633061616362623433223b733a33323a226664653562323331633662396132343138343137373738376338613636373937223b733a33323a226239613138303461313365323631653033363362326233396433343666383136223b733a33323a223766373836303330636534373031666532616439613666346264636563633535223b733a33323a226561643563346162373339646438333134666165636461326361323739373831223b733a33323a223037303965343263646539613132333531633334303437383037656330386266223b733a33323a226666336461633436356566666131383038326365336131353263333431643736223b733a33323a223762643138326265653963396137363537616163386562633936383930393364223b733a33323a226365613761623438323839353437386463353239646133643639393861383465223b733a33323a223663626436353031646634373537343232366137303566353361366334643832223b733a33323a223764376138376136363035343938396163383139333965383166613262313163223b733a33323a223933653164373830363531336430353361303162333863313565343163373036223b733a33323a223533313463353739653437656139623336363335343237626563383039626561223b733a33323a223030643564326431343238396663363230343965353834346230663639653665223b733a33323a226335303434333330616534303032666233646261653662353330623462393666223b733a33323a223864653434303039663065613437343130623936666331366537636135346436223b733a33323a226562323162616435623765336138363462393162346163636566623162613062223b733a33323a226463343363313535666231343637343132643132393236343739343066323262223b733a33323a226533323635616233313962383063623634336530373564313864356139346130223b733a33323a226264373365353234313031353838306434626164613262656636626562613462223b733a33323a223337653135653965623461393263376133636265363235376334626534323438223b733a33323a223935333466646463343463333166666261333663373565313963616139333264223b733a33323a223065373331383165626130653032333637383733303136316536623535353035223b733a33323a223031636437316535356430383134323937346333333839386263363361306239223b733a33323a226135303438396333303039643466346365343634306431623564376330313464223b733a33323a223565613636346134376332613531336336333832356130373865626666313637223b733a33323a223137616632323561313632383833303333663334376663376132323436363135223b733a33323a223837386136616666363064316666366233343330643737343934613162343839223b733a33323a223030643465363633396433346430383336333338326166376662666361333138223b733a33323a223566643666363863626338666338363633376661313136663663383532313438223b733a33323a223163383466303462353265626236616335363937363163376431343739303132223b733a33323a223963396363376665343331623037303937623638306332373632656630616239223b733a33323a226332313331356336373734656333343836323936346439383432613763333561223b733a33323a223033306463616364666531333030373763623439613330393738386333613130223b733a33323a223430343164343664656636326238636330646366616339376138616563616238223b733a33323a223564366565336162626235356334346333316564643835393138346663343039223b733a33323a223837333137373738323531653466613839613935326662623037303264346335223b733a33323a223034383264653666393335323139393264326635643161653135396366376331223b733a33323a223931623066343461643531326139666136373035333664346364386135363439223b733a33323a223263653862663362306439633636633532623365323333643732303831313234223b733a33323a223665633365636236323961353963626534626361663265653766333834643535223b733a33323a223139613330623438653338623432366132663061363033303232303137346166223b733a33323a226234373239623133656330323238383565333364323265623764366465326566223b733a33323a223737333538326161626532313564626161336337326630643664633863316330223b733a33323a223163343065623836386131646561666637373238333830306466646163623864223b733a33323a223466336461356462376334666236333530636332643537383633326230333265223b733a33323a223732633566303932383535333038386264653533353232353639316233643061223b733a33323a226537616262323236333463383030353366346461353931386134393130333535223b733a33323a226237363566303465646163636538373863373735663563633534313532666636223b733a33323a223437336235623831363638653938373765303336336135353138383564323831223b733a33323a223234666336326533363035383331376630333730363665613638316165303765223b733a33323a226665653566393534653230656361333039393031656136346135653334343732223b733a33323a223564353761626337656230363036383462323666336439636237323161313139223b733a33323a223264646462396563633164646262613834636666653037336230306165653736223b733a33323a223038316638333135316438616534353561613130633663656631643339366333223b733a33323a223061323039356338623338663664343561363234386465623866396463313439223b733a33323a226631303731653933343534396664303836613161626638616333353633653464223b733a33323a226462646437303839323161373231303835663363613232323034353334336131223b733a33323a226564626430336238376132353862626434353632623165323531663238383834223b733a33323a226563303861323131393033316636323263376464313534333662353437663135223b733a33323a223365333039383138396439616538643735333862666432353163376661616535223b733a33323a226434316637613039366335653939373734363365363437393635396262306431223b733a33323a223936363833383630323831323664636139383330636238333263653739386438223b733a33323a223839623131343366306432343763393530393335393336356635383833383661223b733a33323a223066633164326137653137306338376335343762663133333939363732656634223b733a33323a223335306638666365356637303532323831663266343038356132616237306134223b733a33323a226565333934326337373737353731323037366437633434396563386234386461223b733a33323a223838616431336539363730346336643134326462333132356633363138643637223b733a33323a226633613537393338663032306332613438303831636438336333353361373063223b733a33323a223964613063643665336363613963323034376461303137316261386437303064223b733a33323a223266646437333833376365353266613662373237323531336437313666643135223b733a33323a223831343832366165653930356163636635643363646165663033323166336565223b733a33323a223739346430616630393234373263336361666165363038616632363734656133223b733a33323a226636633039663032363630313830653332363330366339333131623035383537223b733a33323a223535353165363432313333313062663864343135336264313461666531636239223b733a33323a223138623034663362333636343935376361353339613762663837626634656366223b733a33323a226631313163613264386636386131373137393265633239646662306537333938223b733a33323a223866383461346463366639623961616661626361313664303131326332383163223b733a33323a226633363730663636373636383733666361613035636139643932366338333163223b733a33323a223261623539643163643132363839323835373337616565663735393632643033223b733a33323a223565393263353664353532316266663631376232663739643762616362313761223b733a33323a226339356464336666386464303634313964363835363837383964626534393838223b733a33323a223732633634623166366565346233386262616631346232393037636439373234223b733a33323a226563666638323931326633313731353665393362333834313430326333393438223b733a33323a223933623437636132623966633337373066393263626636323232336264323332223b733a33323a223233663565316132643163396263353264323939356135306236343433616134223b733a33323a226435623535353363653237373439656630386261616361343136373334373464223b733a33323a223238613166643235396538613761376333663361663264333335373430643436223b733a33323a223264633938616638666636316536663764306161643131346462653061616631223b733a33323a223533613938366563336465623261396561663337396633303462653962373336223b733a33323a223362333364623135396639336534616437333865373566386662316164323736223b733a33323a226334666361376465343037343139303462623839393434616432336161346662223b733a33323a223732393263373931623639333732636566376463333130666530333664666331223b733a33323a226366313335313064663135323534666530376432333835363864653430656466223b733a33323a223733303239336533343333333663616339346135326337323336663462336137223b733a33323a223630623266396661633964633732643732333138313631653138323837633838223b733a33323a223937323163626335383330376337383737333232373361353064623463386435223b733a33323a223363323833326362396631623061343038383037313566393932353430346330223b733a33323a226438323232363365316336316637353866633164623536386334386434663737223b733a33323a223862313838343565636434663065393231373865633166396637343839656432223b733a33323a223561326335663732633465613336353835626537333837316438356465376634223b733a33323a226261616661373166653731623039376462643563653065386232653666316536223b733a33323a226230306532663363313366343932366332333638613366653165653435653266223b733a33323a226164656136656233666364616164303633636433663261623436613035333434223b733a33323a223132663932613833393064653861353730663361623462366532613335623465223b733a33323a226165633062633463666266386333633332363835393466626331393865313365223b733a33323a226535356132396561336262346539383164666230336162656636326566383966223b733a33323a226264353033383330333135653039376365623034393065366231373131386465223b733a33323a223931393137363733343532386336393735306536333462316261396235306465223b733a33323a226334316462363661643933363238646332646663323638353663306262656633223b733a33323a226233346436653230663239353932343630393163363263323234353762346163223b733a33323a226663663536643862306535666538666336356166353333303537393732646533223b733a33323a223334636535316333653563346366663731323466613662323437313638646464223b733a33323a223731373734386465636139343437393431346230643266613136636238383832223b733a33323a226538333831386463343763613435373565653563316633303133646665623834223b733a33323a226534353862306130373364306264613563363938356334383131373337386161223b733a33323a226362613863366562396131653034383239393862643663386531633837396161223b733a33323a223437646233363266376263306134653661336530643530633666316239616236223b733a33323a223061646635653061643936313336663539363365313339666264653938336361223b733a33323a223465616362626135646563306632376162626561343439633563653135613064223b733a33323a223231353631396333366464336336656339666432636666323035313930376663223b733a33323a223264626663356235623330313431656638633138663538666365653832626532223b733a33323a223330336533313732306362393663636164613838323563396566666661343637223b733a33323a226565316634366138363461613930643231396665353333653236326133653165223b733a33323a226536353962303838623361326636643631643435376332303237303432636363223b733a33323a223831663964613165316534663332656463393164353265613361396235363937223b733a33323a223532353835343532613130303233336235323030376436663561353538386139223b733a33323a223165333061396336626337633832636433316163623136363266393461633938223b733a33323a223132303930326466616439323462363566363633316663623535333136626261223b733a33323a223765623037346639326232326565356635633762633964636666396330393131223b733a33323a223939626232333465313862376536353066333066316237303030343535353135223b733a33323a223934353031306635306162336665366639303065656237373062636630643536223b733a33323a223862333333333832666431623263666336383361313037666132373865363330223b733a33323a223362633039363561346437636662373239663437393535353562393164636261223b733a33323a223630653638303334656231336537663038316164343966383837383961303535223b733a33323a223733653233376532366634343164643264653832346663646235373161646132223b733a33323a223131346239623565636235336665376339386538323530373366356239356363223b7d733a343a2268617368223b733a36353a2231313462396235656362353366653763393865383235303733663562393563632d3733653233376532366634343164643264653832346663646235373161646132223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a343331323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35303a7b733a33323a223261626563653233396137633235393965333833633162356138623663636464223b733a33323a223037333237343638656130326234326339323465386533653836373566316364223b733a33323a223037336332653737663639366533643635383038623565653739306338373837223b733a33323a223839623831383034376461633135376239633766303937346235613032393733223b733a33323a223739333930613933613834356537393837333362303063643132356435663164223b733a33323a223564313431326138396438373636393661613731633363393139343933656261223b733a33323a226137653334356164613636633936336232633638643663353837306635386531223b733a33323a223234396462646531356330393337646331396134353061356438386635346635223b733a33323a223535373034663461326266383332633137633237613761326161373661653036223b733a33323a226163653632373066313563376334633731303963353364346435333932333434223b733a33323a223838373132643530326261383437333434653734373134333432616264316362223b733a33323a223330373262396239643834373836356435306539653936383333323432363337223b733a33323a223930376265343365656262623932646535393334323236343233626562343134223b733a33323a223932346335363465616666336533336163333066393530633564343132346536223b733a33323a223935363036333961313661363165663536363463643133633633633836663131223b733a33323a223033656266366235616165363366363834333736623230333730376161343362223b733a33323a223434613035383862646161356331343238356333366134646162626361313038223b733a33323a226232313334666166646565396261343764653864373037313539663961623436223b733a33323a223732326365316363646265613763373038383439613930373435626661336661223b733a33323a226437653233336536623861643737366530643261333334383265353263363439223b733a33323a223538653065643462383232353162343130353561666363343039343332346232223b733a33323a223536366463356130633131373534666433363130636566653363663637663066223b733a33323a223535666661383739346532313836363965326336316166636665663763376165223b733a33323a223433313939303732303833363535626431323635343439623634373862356533223b733a33323a223437313062656637623135333035373039363932316436383261346333626237223b733a33323a223864333533326235373236623461323633366535363537663464356666666337223b733a33323a226465333833363934326530616230353166663639613936643336366232356238223b733a33323a226163643062386431313631336565353534663061663365393666343065333931223b733a33323a223637396333626364346433656134323166323263343236656638383239303531223b733a33323a226364653161653738656238646536636630343261363833666566353032326461223b733a33323a223436646261633934316362316533396430666664353039373762393535353537223b733a33323a223932386363363339633866626330313366353232326565613130613030636366223b733a33323a223738353561313036333766373737363131376630303036383833633563373539223b733a33323a226232363662373136646339343730323866643533353338653936306337386166223b733a33323a226565346632393135346236326133313734363263653561366339323132613034223b733a33323a226235393665663835646336363733666135313263383564333766386466306139223b733a33323a223336303461393337396465613462356530323865363861626464323961383530223b733a33323a226662663061343263313435613533663830386161613261373538653233323938223b733a33323a223066363833373137636333353930353664383963306432306138333862356261223b733a33323a226565376636313936333963346633613236623761326332633339653232656131223b733a33323a226635636636313566366134366537343165393338346565616232653738376332223b733a33323a226635636533633438363034303230313163323238396539316633353938613962223b733a33323a223234626566316232343766366363626138313636333930623266653064663133223b733a33323a226630343031363932373139656439326138373663333463336534313261646135223b733a33323a226466643965643736363665336465613063643934613834396431396539303132223b733a33323a223235613162613562356236613965303634656330343936656339343833323662223b733a33323a223439616464383133616331376534306431643535623135366333633865303263223b733a33323a223833313639333261353964626435363634663561386531323465313931656139223b733a33323a226130613661383266383231356464636163363566313432373164336435366135223b733a33323a226637366463353738616438323962396662353433313439393831356238323733223b733a33323a226137313166653163313833353337306136623638663035376339653636323339223b733a33323a223837633366656363633861303166376535353037393131633339356337316631223b733a33323a223439383965613134376533343231626535633766666162636465663032346530223b733a33323a223931313632346535616665353330656361643065383933396266663333636564223b733a33323a223964336131303032376136663733393664333438663533343638353138396636223b733a33323a223336396231656164313833636263663066663865313961386363393537363063223b733a33323a226361313234373066373330633730653634356164656565653637633134383435223b733a33323a226330626235616136326466326662323535656331663237633863633437313738223b733a33323a223363613136383936623064396166356564396638303865626233666365613464223b733a33323a223564353733623661626135306638383161616337663962313938366235323832223b733a33323a226637616663616232316136643361333832386664626632343963666639316563223b733a33323a223937376162636463633238383537366562636263313337663932343764386330223b733a33323a226464626163326531393461646435376164303531313165623861393365343864223b733a33323a223164636463626334663831306237366537313864653434386630396232313164223b733a33323a223063396534303062663639343633363630323030393834306531626136393332223b733a33323a223362346333313531323439623037396561393236336366633264303735376564223b733a33323a223762633065656262633436386230363465633365303339356262353261626331223b733a33323a223837373831633831613431616261363065326534363431663431303232396666223b733a33323a223537303832666335663265636338626233393033616564373431623539386362223b733a33323a226134343435393364333238366564633633396633643662366432666134633331223b733a33323a223738663262616566393432366235613363623833653738336531616237666566223b733a33323a226261383031326633373731613561636262373232653933323730363737626164223b733a33323a223238633962643664623331373130666361376531623236663632373166326563223b733a33323a223532323330383661363536646431356639366164616365653136376433393165223b733a33323a226231643737313861666535616634343339613438393338653865616461396135223b733a33323a226235666466313561363632353732656164616165353963646565316664336535223b733a33323a226631323836303365653435616432643264666261663934663532303964326235223b733a33323a223130356266303539643339346561363361303535356262623434626631313063223b733a33323a226463306130343234326666373934313763393762336634646637386131343264223b733a33323a223735633439653038393364616366343363336235623331646562396533633039223b733a33323a223837613666356566623138343832373133653431656365383835306336646239223b733a33323a223033363638373435323434313934613666663162343964396439383366343530223b733a33323a226162316138663031656165333637343834623962393463303930333665306666223b733a33323a226361636530373162336530343934306636623734333365366134353266366637223b733a33323a223062383632666266633337366232613930346634623737303334313036656431223b733a33323a223536336335303038653730663364363934633938393430333635376437373866223b733a33323a223237633335363133633263326466643861333762636136646162323261306262223b733a33323a226138343832303535346335643137396563393535393835623064633633376562223b733a33323a223132636439643461323366353637356136303036363166383665356234306666223b733a33323a226465396563303637366434303361376166663839303436653763336335393735223b733a33323a223831356133663934336535353134613364326131623532633562376461356135223b733a33323a223330343630643334656236303232376130613333383062346264613036393238223b733a33323a226335376231383666396566386632373165306366663139653734653666306233223b733a33323a223966393862316539386130316138336462663235363935656665356561306564223b733a33323a226538326232653735393036353437303965636365356465326433303234353364223b733a33323a223365613530323866376633623231663632613736313135306234623362313533223b733a33323a223834623836653934626239386437653537393062316262646334393862616464223b733a33323a223731326236663135623261303663633364666433323536393664346662323061223b733a33323a226531373762326264343161666661646439623563323039633632643366613733223b733a33323a223763313265636264336366313134383164656466376234316162333534396339223b7d733a343a2268617368223b733a36353a2237633132656362643363663131343831646564663762343161623335343963392d6531373762326264343161666661646439623563323039633632643366613733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587682878),
('e1bui21cbl66amke4ldu4cd6gp', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373835303133372e3439393635373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a223969666b306430313562656a733873356b3931346f76716b3068223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373835333437303b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373835333733373b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226531386431366264323038613865656238613237333835373765346563646230223b733a33323a226134353039376461636566636336323763633131653264663232636634353438223b7d733a343a2268617368223b733a36353a2261343530393764616365666363363237636331316532646632326366343534382d6531386431366264323038613865656238613237333835373765346563646230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223535363665383365313663636438373831333664396166353531383065633039223b733a33323a226633363032656239316361346661623537636231613436656534626261656534223b733a33323a223937313032393664666137643538663962666134346462366530303631343132223b733a33323a223331633834363232366635643265633862363033363733613935386538386539223b733a33323a223734326630666462323831646534663331636364623130623064353935636135223b733a33323a223965336631663862613934613464363461346333353666653939313165323131223b733a33323a223365653031393137653832636433366334623462396336383932323666346234223b733a33323a223133363331316162346162653530613562323536373965366532376637326437223b733a33323a223131396639356132386233373862353737386438336161613965653663633930223b733a33323a223761393033366536376163333636346536313334376635643664646136343737223b733a33323a223661336166393933366637356435326134313530636161653634323730633066223b733a33323a223964303937636263373766623638346630346261343665343333336366663230223b7d733a343a2268617368223b733a36353a2239643039376362633737666236383466303462613436653433333363666632302d3661336166393933366637356435326134313530636161653634323730633066223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587850137),
('ihe32vr1p4ravpk8k1go4617di', 0x5f5f5a467c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373939353131352e3330353135323b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226963346d71316c696a763975726e666339666266623175347238223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939363938323b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373939383731353b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223034383663663536393761643833323534323530306534363463363831313337223b733a33323a226537656338383831383363383333313361656137653963666535623935326532223b7d733a343a2268617368223b733a36353a2265376563383838313833633833333133616561376539636665356239353265322d3034383663663536393761643833323534323530306534363463363831313337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3935313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a383a7b733a33323a223936363366336239626235363466666633396335393462383636313862386532223b733a33323a223865366662386266666537643434356636303866656233363165383862613531223b733a33323a223332666332323130646535366432333065393537333230343237656336383366223b733a33323a226566383634623436366532343065666635643662376531343039336663346363223b733a33323a226132653533336537653663303631363935636337343962386335333365343662223b733a33323a223661613037353032333637643134346632316262666536393765376130353238223b733a33323a226234663030313230363630656164633035346133343738356361633133336265223b733a33323a223665373835396238396434393335376538363232393231653537336531656261223b733a33323a223433303536626638633964363331353037323136393234663264376665623065223b733a33323a223038356536656663313061316332623936313935663631323437613266663133223b733a33323a226232316665353066656533666162613636323437323166373238626361306461223b733a33323a223762306464383836636139303034326137633836363931663035343766626133223b733a33323a226231626437343132393565613666623134613239373464323333346530363937223b733a33323a223537386431376663393865623231316663306563646366343338383934653965223b733a33323a223366386663616130383561633132323564363738363831333166623830313031223b733a33323a223831373631623234323962313833633533316433666532396431663933363931223b7d733a343a2268617368223b733a36353a2238313736316232343239623138336335333164336665323964316639333639312d3366386663616130383561633132323564363738363831333166623830313031223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587995115);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('jeulgaj1a8l2fbs8h4qo5tlu2g', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373634363931372e3237383739373b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f3836626b3762336230336576336f353334306e396731616331223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373633373637343b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373635303531373b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373634353539363b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373634353631353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373635303239313b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373634343136353b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223730333666633134663461656366396161346330356366393031336137333238223b733a33323a223065333135343165343162646365333266316131656363386439326237373731223b7d733a343a2268617368223b733a36353a2230653331353431653431626463653332663161316563633864393262373737312d3730333666633134663461656366396161346330356366393031336137333238223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31363739333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3230363a7b733a33323a223466313965333833613061353166663638663534623239613238653832636561223b733a33323a223732373038396630656339303933326461613664353537326331623062613565223b733a33323a223432666131666632623635646134666333633339653164353938383634326539223b733a33323a223137326131663163353265346461653531383331343730656236363631306135223b733a33323a223238393262366663663062393765656433383562353064656161366462376430223b733a33323a223062663065646135326339323937323931616633643566653237313735363739223b733a33323a226430343930623661623865303330663236393934643463333231613935626133223b733a33323a223931346261643538316334643336616437663162336439663636313561346638223b733a33323a226332353630326234363937326465393363363962656336313761396330623436223b733a33323a223665323663613931326638313736313934373734363962616363383337646330223b733a33323a223035666435323363363036616238353137393435363037303463373137653832223b733a33323a223031333336383635363865303161373337616237663039306233333734353036223b733a33323a223662396566326366303631383339623536396338666634393631613834653363223b733a33323a226132323835303663623532376531643362613234633166326531336134633437223b733a33323a223237336237316337666561396166626161643738396234663735386566613362223b733a33323a226461636163326237353364623263333866386435636533333437373835396236223b733a33323a226136333034356138313263333538373962383066306461383234316239643161223b733a33323a223565346237303638353435373866333139396637393739623539643232366134223b733a33323a226230323562303338333031393339626534626161636361633763306437373364223b733a33323a223037613836633436613766643761623138346637376439343361303434316665223b733a33323a226264663036313434383638373430363739386131626630666435336462323434223b733a33323a223230636463663034366133356164636139626462303637333730636331323962223b733a33323a223834333665646139636235373337343762373739366137653330313535393762223b733a33323a223335353739333932303238373166343239373232303064363837636135323665223b733a33323a226539386534383165336365346566383366373731646233613166356634333337223b733a33323a226538663465613132356433346662646166653764323236346433643132393161223b733a33323a226563393038613939386161346433643839653139313165653934643264653365223b733a33323a223862643938306464623866323466343234303962303033353435613830623264223b733a33323a223631666662336562623937616162376434393938633737373435623832636462223b733a33323a226462386164626139353365656438623933323836636566623063343166616439223b733a33323a226136646338383638663465653162663531336563656533383537643938373130223b733a33323a226630353262623238336338313834356333343031613861636636666535623031223b733a33323a226137646636313332623462386337363033383435396636366566346566313734223b733a33323a223261336336616164323963353764336464666136663033333965613130396339223b733a33323a223831613365353666383361393037653064633262633030396139623630666461223b733a33323a223434356138653639356263616366306565643039363830646233353632643063223b733a33323a223232666266343137643562653866613930623537303336356465396630643037223b733a33323a223338636635343138643433653133323837306632326463613931393437303366223b733a33323a223365363230306638333831633633313962613563363731356266303362356362223b733a33323a223337623836663237383061333537663730303435636332336636393438646330223b733a33323a223032373739373135336363326164363232363830383336643836613661316339223b733a33323a223430316634623566623133633337383761323763313739386662623331363238223b733a33323a226136326464363834623239313838376132656436323936653137356537333838223b733a33323a223365353062653639636162393066393066373862313330646236303063663461223b733a33323a223663633364323235306365623231313861373738346337653431383361353530223b733a33323a223636333565336534336166663733353130636637343834303563303164626365223b733a33323a226439373332633330326233316561353031396339386465636536343134336437223b733a33323a223164363933323433306232383636643164336263636164656232666436393161223b733a33323a226636616166663063613066353036636363326534353430366566653630616230223b733a33323a223736626461363863326266656334653264646463353662636139353538356336223b733a33323a223461626365653562393934303833626631313533363539306335643831643466223b733a33323a223033373232643335386134663337326237613438383564633163323265346233223b733a33323a223466383663383863643566346438643065376261633931653935656530643365223b733a33323a223761623564376239616265373234613065306233303234633637393835373963223b733a33323a226466643639353335316531373931363262626166626437353534616432383666223b733a33323a226637613438616465386162313233306637666130373237623132613138646435223b733a33323a226633373536613931326664613639666631653566356363376533656638343465223b733a33323a223838313563363564316533373661643463326434626138303664323065633134223b733a33323a226265386530353732343761643535366336346565336532386564633636633932223b733a33323a223663636133316261656433306334353039663436343265323134333437633830223b733a33323a223162386264303162643161653666626335356236366430366237653630326162223b733a33323a226264363631636566376434353963663730353962666562386366343532656237223b733a33323a223232396335636638396431633432386435363637343161333365316165623939223b733a33323a226230313633336637633832623762613937353632313830656464346630333662223b733a33323a223436653631356135623736306361633636613664333930393630626630303737223b733a33323a223933356165313838393132613862336636396331633664346532316635313532223b733a33323a223561323233393564323735613361353963333532623264643134633730353234223b733a33323a223630316530306662656639303834333932303265303365636131326137356565223b733a33323a226237376562353066343362396263613065356539643664383234303466306431223b733a33323a223030643865623536613333623639313435663361323632306135666630623931223b733a33323a223039383463633534383930376331646366303633643639376462376162646162223b733a33323a226533386331323233303534373136633639336230376466303861663439363561223b733a33323a223236306331316263333237336162356531616539623533663435363361313066223b733a33323a226637303464356262663535343939353365363932623239626237393636666134223b733a33323a223262633931396332613434333035303864633961343930353633646563336463223b733a33323a226662363663623736346334323165663737323062333062666463623461646465223b733a33323a223364396435353434396437323861316335663638343734353135313838333734223b733a33323a226536396433333235336537326364613137373731353137373430656239376531223b733a33323a226666656531343763306661633930363633666164386565383032376461353764223b733a33323a223431663666393562653634363662333139613736636537336264373331353961223b733a33323a226564633831306235626333333464386135346438316663363663336535383863223b733a33323a223134646435356635613631303365376139303161643431376561353666333036223b733a33323a226466356334333233373438353932666137666536333533383231333734663730223b733a33323a226432346135643431653032663034333962306630353265643966653334313338223b733a33323a226333663432616338303931383431623434303063613066356462366365636139223b733a33323a226633323139376665306365653039363736313238666137663731333637323164223b733a33323a223066613766623334336262646539616263333565383631613862623137623662223b733a33323a226133393435386634336466343738383131653063393031316565656232343162223b733a33323a223633303832313338303730643063353764353230393762643762333439656366223b733a33323a223839643961633163353836336263343438646334386331376138376563303335223b733a33323a223032343435643438346264633531643234323135393038663635363065663034223b733a33323a223439366463393935663831353939333239393439393566313266343164326538223b733a33323a223434383433636366616465363266383138613931633236396664643966633866223b733a33323a226163613532646434653432313161376165373362376437363330373039613662223b733a33323a226535616262383731393533636336663538323335363339666563656530636132223b733a33323a223537343535376438666564333063373936313735326437336138373133356237223b733a33323a226661646337383132346231353436616636653165386532643564333435613234223b733a33323a223334363064326432313933353236373961376639636265333635613830393332223b733a33323a223139303764376661613937386137643031643134346431313234663165653131223b733a33323a226534623465346166616133306562303164613061363931306131653537376336223b733a33323a226365316131346432323361356630383661306666303361363335353666343636223b733a33323a223130633739636339313939363866323061343666343064653632363633393036223b733a33323a226432616432323837393661313334313162303837386166626662633162646538223b733a33323a223230303934333739666130383765393433386333643532646234363261343633223b733a33323a223039653564633465343131303134366239353865303364303639313862643063223b733a33323a226434373635306339346538646530366364303532636439646435653132333430223b733a33323a226362616161366665343434633833616266353163613936633032666437633264223b733a33323a223833393436326233393538653162383566373731613237383562633736396366223b733a33323a223566376338353263633662646263643436343831626339323833383639353531223b733a33323a226563626438323732326332303936363062343436616138363830386536366363223b733a33323a226534343831373937386231653334393738366331316664306430623039613130223b733a33323a223964623566326339336464376237333363376235653739316432386338316633223b733a33323a226638656538313633386162616361363432666665636133306465613236636230223b733a33323a223863663833646533353963376366393238643932343732353964376564376138223b733a33323a226439643630653330626530383239623165616431303266653165376230666434223b733a33323a226638363133353037363333373862613832616632306362343762663334323732223b733a33323a226636343432356135333336613634386366396164396363346433336362653764223b733a33323a226562633662396636663736646161393531643434636230653535303464353964223b733a33323a223439666239373136663464646632393735303666373936383333313631323932223b733a33323a223062643234323466646239363030393533656334373864643734666564326536223b733a33323a226638643063663362626330386134646261363337316561393934313539373437223b733a33323a226162366361363232366235666465616434373530373062643062363339653662223b733a33323a226533613336376463383138383438653534336331353430653162386336383765223b733a33323a223762626462356237323465616461616562393437626135333031316337366637223b733a33323a223866616230343838626330336262306663393835623236666563356437366532223b733a33323a223762636437333836323636353932643030353865323036303835643233373732223b733a33323a226365663532643736356364313437386138663131316432303666643765623839223b733a33323a226637653837663130396333666234663133326236353937313364303535626265223b733a33323a226630326634376264316664343735323866356532336532313864323432663134223b733a33323a226635363430353964613530626230636462303065313830363366323334303431223b733a33323a223761313232323332376231643562306464616634393534393463636466633765223b733a33323a223161303037653133393964303535616137383437336630386335396461363331223b733a33323a226436376638636165386232356163303666343033653763393731353532333462223b733a33323a223964313233626465366665336634643936346661303339366531656566333461223b733a33323a223130383363396639376434323533346131643366383339396338333766373130223b733a33323a223339363262353630353235366532353034323062336638313262343430343966223b733a33323a226638303635396334343632623532343562666539326163623330646462626432223b733a33323a223164353235396531336233613731313663313165663238393037646236363637223b733a33323a223139336165643862393539306134646434616630373936323838643934623834223b733a33323a226134636464386337396235393930663239376566646362656663313336393237223b733a33323a226366306465333635313930326464376462366634323439333964666230396430223b733a33323a226163393331353361623836346132326638616132636537313936353334633332223b733a33323a223635663938336639323830323962636662346237653034656134643937336236223b733a33323a226665623732646161383330303531636265353634656334653364346135633265223b733a33323a226362663437623161353261636665613337626335666336616561623966363732223b733a33323a226537326432636336663963306136303061366437663063386262393364386536223b733a33323a223666373264396233646137633733633936356434303539316638333663346439223b733a33323a223831636533346261386133623563646264396632323334316230613231633630223b733a33323a223166383961623364633438613737623831393134613433643365313733623664223b733a33323a223561376331346433316130393966636663613538393061343633303839336236223b733a33323a223466613362623164643235306632326361366265336130383231336633343039223b733a33323a226638363164646430323930396337303137663964663362616533376134383436223b733a33323a223034613238653363393537343261613861336366663864313366626463663361223b733a33323a223962663436346662623234643638636463373266366435666230636465376662223b733a33323a226339643165333061373036623664616263336337666131386537613662653965223b733a33323a223036326537363666623334616634643836383964383037373735396134333332223b733a33323a223461356339323134373732386633326434656435396162333036656266386132223b733a33323a223639666139323032343832373566383331383761353765613534303663303065223b733a33323a223762366662396566333034633233643536373662343131613330303431383736223b733a33323a223736393262333464306633343963353738363135633264646362636439316231223b733a33323a226239663061646164356661646133626661353836333935646137613134616534223b733a33323a226262636434653565316539313133613535656130353162383838366563363463223b733a33323a223731333862353736396235333561313034326234316234613163346664323132223b733a33323a223261376534663938656364333837373264306233663633336663616461646361223b733a33323a226463373332303766353766386537316663383766383734666666343634386234223b733a33323a223737363262336663643461303937336532346364376134316266393135653562223b733a33323a223865373232353566393863353134653865363366363233323462353466663936223b733a33323a223765343837353137336433333866363665393932346439646633613839363635223b733a33323a226139323335666632623034346263323736393237316139383037616134323065223b733a33323a223465363362333964646432646261663437383138396434306366383933396638223b733a33323a223535383761613937613231393431383962623531346362346538613533373362223b733a33323a223330356231633461663839636465373436323563343464366535326432303238223b733a33323a223266626433313663636136633531363030336161373262643466353033653364223b733a33323a223235373836363537326661636537396439326430343866646338363262643438223b733a33323a223731643162346330633233323330333466343539363764356334346466666338223b733a33323a226231326637386162373138613938646561623830373661386530616332656634223b733a33323a223631326438623333393937643466633130316633303735613764383030636238223b733a33323a223463623335376366303361633031616336366538623737666563346566303838223b733a33323a226632373861303861666138646134646333323838663039303666356639376235223b733a33323a223862643936396538663037363262663039343734376662326130363861313336223b733a33323a226439303938626634613163393639303038383362623735366636666664643264223b733a33323a223061663563353834373136623664663339306335313766393038626636383335223b733a33323a223164353032646364313438666337613361623164613663383361333235633961223b733a33323a226430376334303861653265383962643633373730303038633362633333346266223b733a33323a223437353337393731363137643535383964643563393030656430316130656135223b733a33323a226162636262636338363831333163386632393330393365323862643732613933223b733a33323a223339373863306439336433353339643732353634376533613236346433333364223b733a33323a226561376430303164386236373438333932633138303034373432636265346436223b733a33323a226631313133333830346566363531623465653335333935653834353066306366223b733a33323a226630633339393534373239303661653637356532383130383261653965616630223b733a33323a226532326138353231353037336637383834633564656139663231333136613663223b733a33323a223032366166336666363230343939613563663666346366336336653963666437223b733a33323a223235393165303434653466313032313932653933633466326335346264343164223b733a33323a226231643763386636643731306534663536643530623065363835663331333763223b733a33323a223239303439336237386136363062653138633137313866383334343063306437223b733a33323a226131623033626364663563393464626136346633323861616263396666623433223b733a33323a223037356132633933633236323630626133393733643435366438393035303865223b733a33323a223734363339663562326561373638313566653634613164343130323363613264223b733a33323a226134303038656638356331653835396566313864386433663839376534396636223b733a33323a223836653131306237353764393766363763613666303261383634636235653134223b733a33323a226136626164636236353138313961313735343238623233666466643661333133223b733a33323a223934393862323563643330373337363339613839303765356337636233613531223b733a33323a226661346130616135306438313366383664646462363837623063306330383266223b733a33323a226562363839633133353534383833623065373232653830323661643533666139223b733a33323a223734316464666131363166396663373966353862643263616566363364306630223b733a33323a223733363133663830323938613736383639643263656138303232336664386231223b733a33323a226662306164333962356230643435633637653162663733386435643234323232223b733a33323a226564646332353666326534613665656262333762333266666539323365396338223b733a33323a223861376465336239666638643633363434353961313433303930373032613861223b733a33323a223335643466343636643531373232643733386137633265393538353638333835223b733a33323a223463393034656630323232383439616163353066343262633334616164643133223b733a33323a223931396230666130386639393539353936316337613264326466633064346261223b733a33323a223930316634363730623034363565363334373031396263393066623830396439223b733a33323a226439316666643235306161623761363030613965376333383765336338333435223b733a33323a223962313236626232656561633062363865316332313132383463633166663133223b733a33323a223338666365316139616636393866353736383736383933626537653839666338223b733a33323a226433396339666465383664663430353436653732633966306163616265366165223b733a33323a226361656131353734633438316637626334653162623364363738383164623830223b733a33323a223832373436646139383636313165636662353565393162613532376335613337223b733a33323a223766653561623261383864306639653631643463656535303133636231616162223b733a33323a223166326264353761326364383563356364333433643361306464613233623430223b733a33323a223332313032313634636561646234333730663461303938343265396232303637223b733a33323a226464646464663462353431386466636562666533393432303739333039376135223b733a33323a223865306637646463386239336261336338376431313863336432386138636533223b733a33323a226165356432373862346464653830663431666534633262633862366534373465223b733a33323a223330373462636130656466383236613834343663663832633664396139656132223b733a33323a223632306261393265393163373165366363303662346538363363326131356435223b733a33323a223039343239363739373134303739623666333935313865303239393462653534223b733a33323a223164653361323335303661646139303439303162363339383733313566646130223b733a33323a223830326433323465613162643165313837616539653566316534643139363263223b733a33323a223230373738373166383264303938363331343233333034373465346366346530223b733a33323a226135303233643634343231333030373061613032313664656536636532316439223b733a33323a223236356439386365666464663331323564663434643038656138666263316562223b733a33323a223039373331333261643266393038333266316364616539303436303136326231223b733a33323a226436326663666634303535373663653938616662363161636162396461316635223b733a33323a223733656139376265383035306664396538313337643935666232393439336230223b733a33323a226563626334633161613932633463383562653663616135303231373537383636223b733a33323a223666656634633465353233353338336337613832346165303333626237363065223b733a33323a223334346262323138643235643630353361633462383566383238396263343732223b733a33323a223433653634373264623734623931306539333965396361333038383931386664223b733a33323a223430323662323737663032396132396237616664613036613331313235333830223b733a33323a223735393337663635643863306530303738373632306263663863313532326631223b733a33323a223461656233626634626366353237376338626261363531313164326333393433223b733a33323a223466316437373733633663343539306430383935323463616362366230386130223b733a33323a223630323430363161653334633236396132383162393164316238653335313139223b733a33323a223836386237383235326462336535656336653865363234636538366439616365223b733a33323a226161376466336334663832616361386434666137353531383165663537623130223b733a33323a223962633332376433313930323164386135303339313931323132303239323236223b733a33323a223739366130316633656661613839653833626165303737323031393230616537223b733a33323a223863323962653764663835633133306135623966653866363031376330363064223b733a33323a226133376161386438333433666333653731353730326538373636653037303134223b733a33323a226435623131613964396236373736373039363161663263633032626437343738223b733a33323a226266373032633035646133336432313764336234613235653933333134353063223b733a33323a223365663763633237636364613563373362343539333261366436303330663432223b733a33323a226534313234313764323038643934363335343132326235393937316564343864223b733a33323a223238356637356434363361373265656433363066633139636637363365646339223b733a33323a223131633430363739656432623337623438316530633866363863373164613430223b733a33323a223337613061633637333930656662383630653165343135653962353833313966223b733a33323a223431643832653562306565613763633164643130636133346362336339616339223b733a33323a226135616636666239336663323363643439316532383136643331393335656533223b733a33323a223830636539366336633239373133636135666461643163303162373637336436223b733a33323a223565386638616139393135643030613738386330303532336264343961663337223b733a33323a223734633835363462653364333365613037323939346435343064383231336537223b733a33323a223465326539656332383233373363613164376134646364643761333062396332223b733a33323a223362343136383134386531373733316530353664666334333531396536363533223b733a33323a226135666266353839613665616637396561643966383862333065323634323737223b733a33323a223032383530386366383863383339656336386533613530666131633434623331223b733a33323a223061626332373537303833376138613837356639386665383434306662653662223b733a33323a226532656263386262343139366266346331613264383063663165633238653962223b733a33323a223866613433623266343039643262323836363234646566333238333735363530223b733a33323a223738613261663664646164623433393665626361613234626638616364396361223b733a33323a226533653166653632303632306637386430656437656162643030653935653362223b733a33323a223834333066303131616232313439353166373837323231643663623632396666223b733a33323a223534313661346433353461336261313964366335333639643639613035663765223b733a33323a223630303834623566343666633966376630303262646136346334656533333234223b733a33323a226430633339666466316435633364356363373130363435366337316635326561223b733a33323a226165336238643763366661353263623734306664383339666465353837653262223b733a33323a226539363564386533616536663332376234656431343738363763353863396433223b733a33323a223362613731653062346164386139346661623138613737333261396231343835223b733a33323a223831666436663765383362373465633134663435346332616238326634353561223b733a33323a226637663463376366353262613039316163356430623136373961623361383231223b733a33323a223730326165316633363639346335313833663038366131656162393533356664223b733a33323a226633636461663336656462356262663966353663336130656236626431326664223b733a33323a223164633830366636326462653836316335366537636165303766383430303832223b733a33323a226532343666626562623863383536373630363036343639336661613933636336223b733a33323a226537303139643439663530623061383630383431306364363034626264613534223b733a33323a223735393136316235373965616132626635633636623962393465353763633765223b733a33323a223137333866666165613364376335643666386434623835623438613135326166223b733a33323a226461376663356439663265343838343639373436636364366236383264393161223b733a33323a223635623961636536633931623731616232373164613030316566343361333335223b733a33323a226538653763383133376637633734356663386362663837353866646363623462223b733a33323a223162343062393032363936663866626637613636663835343130626335666230223b733a33323a223937366230316230623365613661643266346632313865633438363166333664223b733a33323a226365336433333034646133343966373334376262633964343464396237323230223b733a33323a223037306334646334386264663531393466363634306162623866643661316233223b733a33323a223561306237353736383732373937393839343534356461363231333230363636223b733a33323a223665306366393030323230613839616338653931373562636137633932366366223b733a33323a223531313462373335633532656233643063653833353135303461326633396336223b733a33323a223834366164366535343030323435643135633737653965313239366566623131223b733a33323a223462623830393937333334356437343439313366353836366431646436323966223b733a33323a226238326135363266656335653037373635356465366135393335363138393538223b733a33323a223835343538393538306438663637626366643530386133323331343462373935223b733a33323a223833313931613030323464623765316337633161323766633264313830333838223b733a33323a223738386434363363616134363831613262313961366335303864666130386137223b733a33323a223730353531336163376362646338343731323730366532393133393632363739223b733a33323a226439656161653331646465323336623732303636653262373135613130626231223b733a33323a223334646666636339333533343461333766626332616139343665616463626636223b733a33323a223338656166303533636638353964306634303434626337323963656361336165223b733a33323a223437343264623730333433313839616231616637376466383930636565363664223b733a33323a223466366434623861633563633735396333353237363163393734656563623339223b733a33323a223930333933343164656236656437663964636361386465333262333561396562223b733a33323a223761623439393562366465376339626661643966386366376432653465353734223b733a33323a226139323238633534373134313534633162656466613733643764663732326364223b733a33323a223234313862336539636662636330666666363538356364323262353665643532223b733a33323a223765343265653332333062643130336162306136623230393630313931356132223b733a33323a226539616361346366623161373161313866333865633365356536386134353061223b733a33323a226666313631353361306263643132303838303138356264363764613131386466223b733a33323a223962616534366338363364346437313566393565626131363135326465366364223b733a33323a226333343131306136353233646537363336626337666635306530313361326237223b733a33323a223737616634316530366137386138616136396336363538626365663935336131223b733a33323a223533316131666166646637333662323035323533663632643964363732383162223b733a33323a223737363461646538313364626636663432356231313034306537666334316537223b733a33323a223332643365383935663962623266353766396638666339633232653637393432223b733a33323a223739653264373433383639653531326430643165316262636332633434636563223b733a33323a223935346561306361643837393434613032396166636163323735366335383233223b733a33323a223135366563323165643839373566376333633233633239393138396361356164223b733a33323a223665373034626635613134396531326538313239313762653865633562373031223b733a33323a226235626131373434613339303434623365333239626262633133346564623634223b733a33323a226234363264373564336432373439393962633538613532643865653065313033223b733a33323a223265653264383830663433666364633561313362623165653032653538373631223b733a33323a223830303336383733363035353830666466346336633562393336333363346532223b733a33323a223435326361633265393737663331383237376531326338633737343035313033223b733a33323a223736376437396435303431396333343337333562643339306538636265323233223b733a33323a223930313339626331653861353766366633386133363339623530636637663330223b733a33323a226333663731336462386261626436623533616363376335336166386539646162223b733a33323a226366333565633465393661336539343634656433386664396633613833626430223b733a33323a223566306261333162656465633430623639303638393331613832666237643161223b733a33323a223364333863343166343662626437326365623563656261656532383336636538223b733a33323a223066363538623333396131633864666663326631373436643932656535343634223b733a33323a226634393730306464393862343863343530336437356264333735623662626530223b733a33323a223031663165393036386236623338376266323166333364303066383637386638223b733a33323a226639646535303730643633316533633734336630333031386634646565303662223b733a33323a226233666233363135303562623032343065316536366164306461656365313865223b733a33323a226432663332393434636534306433353636663936353833313666363433643035223b733a33323a223731396332353566636234386336393361343630373037323964623038363965223b733a33323a223261383539336238396237393430386634383962326164326564666236396363223b733a33323a226565636136383961613437356564316532353330376330613837643064616533223b733a33323a223133656235393136386264633861633836343538616663653236363139373531223b733a33323a223137306363643134313363626434336661343530646137626632646163663331223b733a33323a223030333931323130363464363164636365373433336565666131346364636533223b733a33323a223438383135646533633563363161663363396530663961313761336362373262223b733a33323a226132663962616431346533623265396333653831326337396565646333646135223b733a33323a223762646662346161313066636161323932386539646232616533663862393432223b733a33323a226263343962336166306631333433353263643761383862303030323134653539223b733a33323a223034313933653532393836363362623161333064663938373333626164616234223b733a33323a226361393662343437313061653661666331336539636665356163326638393233223b733a33323a223232636334666130366666386661303036373163376461326430633461356566223b733a33323a223763363337666430313833363532343566323563623165393366363566343938223b733a33323a223861353461386332623232313664343737656566353036663263623139316237223b733a33323a223562316238653361613165386432663666353661656234663739616238313861223b733a33323a226232306562666537636161613562373631306466636638346335616635366138223b733a33323a226238323639663564366366353966356164373538633962343932666335656530223b733a33323a226266656333313365313465613139323136303066666130316430353436373438223b733a33323a223266376236346633343966366666326264323836623538336433353639623663223b733a33323a223333323433376562616565373030333635623830373330336434613266636561223b733a33323a226633623132356138636162393135323238626437616661646137616335376131223b733a33323a223261633162616533396438373637356262626563336236323237623337303863223b733a33323a223539626231613430363139393561336563363161306163656632613463363234223b733a33323a226336323938313136363332613766623437393565393865646635303565383533223b733a33323a226363303332343362353836386335636231656665396631323763333465353066223b733a33323a226431373863383332306334623333323365383735616665326466396437623731223b733a33323a226338626163616534363864323232396139346333633766393666666239646661223b733a33323a226438313661316164333733633436313862346565336231626266306435633364223b733a33323a223334643630383733343132623764343361363830313066633335303633356138223b733a33323a223337323233393736356536393861633062633264656331613462323432393636223b733a33323a226430306630343666363835666365326435396436653535613163613566353339223b733a33323a226663376534393934316261303935336231373636333334356131303264353263223b733a33323a226135323532663235313864393731346130626634663939393336376336333638223b733a33323a226138663363613239343739316132343033666633666664366433643038323362223b733a33323a223237383230383933386630633333613639323165363339373866373339386139223b733a33323a223432306165333061623062313037656166346364316664393764623836653030223b733a33323a226639623935333662313734383163326430343463653830366431316533316239223b733a33323a223561363431643238346339643336313137613763613264313166663963646335223b733a33323a226331653261393365303838353065313063326463383431623961383864366665223b733a33323a223536623533396234343261636463376636626436353835393436646362643235223b733a33323a223364666430626366653534646466656332306165323861303339316639326163223b733a33323a223261333831653165653836303465656330343330336234626234326634613863223b733a33323a226265323838363064663362353661356531643134306433633936633261656462223b733a33323a226662643665366131326234393063333539303730613062313966393237666133223b733a33323a226564356437333235333462366234656137643636616231353763653730386134223b733a33323a223034623832323333306163653731613036393466326132353964366339373166223b733a33323a223561643962366638343062343461666564626334303037393539386432316331223b733a33323a223034353465623537313761333166396335316639313665646339626334326662223b733a33323a223361656665313364656336313234393435396261393163646232653633656232223b733a33323a223165303266363062343935313361333532653739663635383861613630626338223b733a33323a223861376134313531333936333738316538613339313063613135623835656165223b733a33323a226435633262646466323136623031646266346261336132613933616636656536223b733a33323a223737353831633437303032313362376136366431633833383361303537356639223b733a33323a223533376562613433643332636233366434633265623361663462613430396539223b733a33323a223232333239366563346166396264636262396664613230646662626634323565223b733a33323a223135346661633834393032623338613965633763663734376666353262323932223b733a33323a223262333965313066373536363665363366376437633237616633316561653932223b733a33323a223835656163373163646639346265313431663662616439356334316131633738223b733a33323a223534623239313330383035643639386465663366336535636265323630323433223b733a33323a226666366164383138326531343637306535656238316565616166373530616238223b733a33323a226633616337633961326337663462376233333038383464346166386262376336223b733a33323a223162383731353861313135326135646234396535366131326165616536376265223b733a33323a223032353531626661386365343836626436623637326161343236666666313861223b733a33323a223437383361666536303934376536643538643239643062326362366661663362223b733a33323a223365353632326163376639653432633238306139363864613831356162333764223b733a33323a223634633339643138353864323365386234663866616564383264343166663463223b733a33323a223230633338636335656462363939356536616638616633656137313463313334223b7d733a343a2268617368223b733a36353a2232306333386363356564623639393565366166386166336561373134633133342d3634633339643138353864323365386234663866616564383264343166663463223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a226433613636366139306165636561393637366466396661656565356136656334223b733a33323a223634306232646134326564373332323465626135303135656461623766393561223b733a33323a226139383631313530383034333133346264656633383030386231373033343430223b733a33323a223134343165396165303066366562613031316236386638316238616462393064223b733a33323a223739376664616166303937633062653839336365333161616332363832303566223b733a33323a223337646164613630306365323732316165326337626336326261626665633738223b733a33323a226165326361326538666564626531383531396462656266383662353765313030223b733a33323a223966633538396131313639306236656535346532636332393939613566353033223b733a33323a226531343761666365306361636238633630376466326432386133303032356432223b733a33323a226665383936663736663738626366653637356361336431353462333231303438223b733a33323a226264393465633161656136323535353138333430363839306535326261313130223b733a33323a226438393835386534303264663832326137323034303366626132386534616437223b7d733a343a2268617368223b733a36353a2264383938353865343032646638323261373230343033666261323865346164372d6264393465633161656136323535353138333430363839306535326261313130223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223031363966333437383038616365373566373264623431333735306435366464223b733a33323a226136613338373535336139353833363035636666323435376234646162343463223b733a33323a223066653461323034376664356563303239363831353066376138326334346139223b733a33323a226161666539653032326334366161626631353564663964666235663965326639223b733a33323a223533323639313864646666323232306362633134323037626232373433623764223b733a33323a226433633434316662323331386532663738636537373862303235663865363834223b733a33323a226665663330613863383239316530643762383838346264333739393366633133223b733a33323a223836653832373030616532343134613165386335636235663436393736363630223b733a33323a226532356637336538623035336334343036373638333330373831383664306461223b733a33323a223263396562656235386136366634323335663435373535323534383831393734223b733a33323a223463643233346661633934313634646365346131363431613539323963373064223b733a33323a223931356636613865653961623161353231303736613766323937346435613630223b7d733a343a2268617368223b733a36353a2239313566366138656539616231613532313037366137663239373464356136302d3463643233346661633934313634646365346131363431613539323963373064223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a343633323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35343a7b733a33323a223938623737393564306534393334623230613534623566616438373732386361223b733a33323a226137643131303638623430336535663533383164396333383732376432353139223b733a33323a223131316339666439363536656231363265326463313739303934343765623432223b733a33323a223866333034633330616261373135383237326562613336613736373562653063223b733a33323a223065363033313937626336383465343535366431653837623633643537333139223b733a33323a226665633531646433666430376437656139343164333930653636396262333337223b733a33323a223338393737653932366362333562363736613261623665653064623834633938223b733a33323a223764333663656232373962633030363534613432306161356638626633386661223b733a33323a226463323964663530613934323336346663626364666234353431376166323431223b733a33323a226139356131376630653265666637373538643731383535373332626639343233223b733a33323a226561343537383835653761313532353033396166393534313338633534353031223b733a33323a226335386263373331363839373061383131393330663733373262323563663831223b733a33323a226535343839323530326634656263626530653463383466393166663734383539223b733a33323a223261313732333761663063333932653364346463393461663361346662633531223b733a33323a223137306662653839373465333032663537373464663637653564343236626434223b733a33323a226230663963663935306534303062383833633338386333613061333635336334223b733a33323a223363636136396662303139636363636164656436306535616666643661356361223b733a33323a226433323331363734313861346262646165373037303864363037333238353330223b733a33323a226233643934323536353562383536336361633866333038323436613263623831223b733a33323a223265316136633633383764356435653830323638326232313964313661353732223b733a33323a223865643462616436646661633466636639626463353739366266633031636631223b733a33323a223737373062373366626363653735636561613039333730333833373636336136223b733a33323a223736333533303036653438643430343666343764333961623631316535633732223b733a33323a223563323463353633393863623434336661636233663761393736363338313530223b733a33323a223161363838363331363835653162323262316165376335366433366436336335223b733a33323a223338396132383133356137386332373632353663383761616262313063653838223b733a33323a223463333863663039376135623662343266346263613338346162343231356266223b733a33323a226138623436633031366534383362333233646636666433333037663539383964223b733a33323a226631373834356232663263326664333738396133393766613635363866353965223b733a33323a226235363436396432326663363265333333373034373664666166666365333764223b733a33323a223564393939616432343138623530366439336262323739313666306362323861223b733a33323a223463383738356530643937343235663931643039353936663939663035373662223b733a33323a223766303365643931353134326363633261343936343736616366366538623339223b733a33323a226239613632643133326331353561313665646333613033633366366661643734223b733a33323a223365656430366338623538353561346165633366623737633733343435656565223b733a33323a226638643336633361313065626430633065336464383531646161646534626631223b733a33323a223764333631343566646634306162333039653463336231393065313264643235223b733a33323a223834386135313937653566383937626564316632323733393732313762623663223b733a33323a223231316363333964383637356337333334653538626438306132323638316566223b733a33323a223135616265366435646533323935323238633134326437303062646339666661223b733a33323a226635643136666333626436336635366139353731386132663439626337353037223b733a33323a223537373837356230316639363331616431313332663831303735366237373737223b733a33323a226265336564396639336164656433643537376663653833306233313065653134223b733a33323a223338616237313734643266326464316437336361623639633564633661323338223b733a33323a226436386465366136353130326664653638353465623261343766646261663861223b733a33323a223436386332366661346531663836366661306138393465656563636631336634223b733a33323a223563663662376564346236303932643634316133326361623633656532656264223b733a33323a223434613233626239386439633063333031653939663063626262613834633336223b733a33323a226462666266636233643638653664353931373061663737303765393638343166223b733a33323a223737353632373036336266313633643862306166333761656264386561376562223b733a33323a223139313365313461346235643832376331356330386261636531363133313433223b733a33323a223338656163303435633530363232356665613765313162386163653433613764223b733a33323a226366626163313464383362636361353031636462386565353738383065383565223b733a33323a223236633838383563383334353336323438336266386161663564613066613566223b733a33323a223262396132333561343366633032643834623238336161353837646239366338223b733a33323a223061613331343065353430356366633466666138663035343733626333616261223b733a33323a226464333363613131623534313431613834646562316133333935343837373461223b733a33323a226636613435316230623135323736373137313738666236373135643734333165223b733a33323a223939306535386239323335396437396438613330613761646532643464383731223b733a33323a226431653465306434353731616633663239613634646162666336663364363738223b733a33323a226331383936613636663366653038386338396365663732376463636432626362223b733a33323a223336653862343961393837316436303466366338613563646131666232363862223b733a33323a226638303965323030383535616631383031363064356132386131366139323865223b733a33323a223363666466636636353934333038306335633664393536653231646132653061223b733a33323a223938386132353430353963653230356261666135393164633361616336626535223b733a33323a226536353464623535303330346463643837383236306635346637653465383232223b733a33323a223239653565393866373164303734613161313465303438653161326662366339223b733a33323a223531663036623133396231336133626537666664393335636265353634363065223b733a33323a226562616531373231653161323632336237303438356337633831353462646462223b733a33323a223761626566326231626133653663316565633039373465623365663532336433223b733a33323a226236666162666336633163313465623831633962373039373966656134313831223b733a33323a223436613230333265633934383163383838306432373666656334393638613665223b733a33323a226331613933656134633831656566316530373637643137386465323161346161223b733a33323a223264343133643831386139326264613464643866333235373435383037356436223b733a33323a223665383531373933383462333536306532656161313433366362666532653737223b733a33323a226438623631643335633735643166396166643236356463353864326161393564223b733a33323a223032616239363338663839616536643563326664633338616361363964396663223b733a33323a226566333564383261656535346661346365626630663765653732316430636530223b733a33323a226266646331323234623439343165376231376332623461343930306539663066223b733a33323a223764623237363433313939643461393737613362633062613564366633303063223b733a33323a223563646666613836643766333234366661333237373037353935663866313335223b733a33323a226265643134393134306464303537626462653632636662636566376561336130223b733a33323a226337313834656232333962373065646132343632643834343565306238303230223b733a33323a223234346532616161313139663662333666613538373939346539303534646661223b733a33323a223333303431633263613766323364663137353665643232363561393463633163223b733a33323a226231393061383031373761656334663061633837653935363436656338393330223b733a33323a226136356665616638303438656232306164613737613238656338653466343164223b733a33323a223137346462383239353763613137323830326130623438333134313964336165223b733a33323a223936646139316561313261653639393238646666323564636163653739393865223b733a33323a223333646133363730313430643436353962383431396362383635363433346538223b733a33323a223530376439393164386335653662326465613237303061303762366363303936223b733a33323a223937356364303661346432363966363330386335336434663566653131313165223b733a33323a223039656538313935316134653036333465646438303863316661313732383030223b733a33323a223635353764343833663064353764653132616366313337306335663134343436223b733a33323a226333346562363036363261626439643361383031343865376638383164353931223b733a33323a226338636563356632633462306464373030646434306332303935636235633639223b733a33323a223361393337313334343865666532346634626430666165316537643535343966223b733a33323a223863383261393133616265303234646665396337346162356230353635616364223b733a33323a223536616534363736386533626463353766646436343433616530336264653531223b733a33323a223336303031303630306539333266336535363538396130636362643431353531223b733a33323a226431346265313631306638613563373463633563623666373564636137633735223b733a33323a226236323165383339303665646563623761633466343330616161356662313230223b733a33323a226338383865643636626361643164383434313865616663383531326134623133223b733a33323a226631656531343461653635653432663662323564643231616663393463613166223b733a33323a223166666130336135376639386666326264636263316538653337356361383362223b733a33323a223263636634373936646564643235346339646630336261393561313766343636223b733a33323a223334386338386433386266373031353537306633313635386635346362343336223b733a33323a223635323332623630636361326238316536623538333730623030626431383761223b7d733a343a2268617368223b733a36353a2236353233326236306363613262383165366235383337306230306264313837612d3334386338386433386266373031353537306633313635386635346362343336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223030363665646132346664663935333766623336383861306134393665346336223b733a33323a226138656331373566366532366534346262313330623336373362386565373030223b733a33323a223437626562666531653063323531383836653662333035626361376235656332223b733a33323a223864343662633938633230373735653162306366613339333065306564633535223b733a33323a223032656339313833346434393933343961343532366239623838663938303566223b733a33323a223236353435353238316166313539396465636339636431313739383538383861223b7d733a343a2268617368223b733a36353a2232363534353532383161663135393964656363396364313137393835383838612d3032656339313833346434393933343961343532366239623838663938303566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587646917);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('k9gma3pms2n71sd2f4sgoif764', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373831353839352e3030393539383b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a2239686c69766337396f37397676766d3671376b38347037633037223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373831343635373b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373831393439353b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373831373238303b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226232316438343232383466653233616434356232363131356630333132323935223b733a33323a223662313035346231313930373936623065356332383130666465653430663132223b7d733a343a2268617368223b733a36353a2236623130353462313139303739366230653563323831306664656534306631322d6232316438343232383466653233616434356232363131356630333132323935223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a223633636165353661373435666239396534373965633561323037616265643635223b733a33323a226532306330666238353232393832363230613333316533663937346161316538223b733a33323a223139303335613963333538623762323831646661393566333035303465393762223b733a33323a226235313932613639613037366630613531306436646266653036366430323835223b733a33323a223837663265353432396436306563653635613664623164646366366537396664223b733a33323a223563636531623433336239376465393664666464323734306530383638363237223b733a33323a223262633666646236313261633236313136373738383633346165656466663361223b733a33323a223362396565366532353039393339346366653466636233353139343764663661223b733a33323a223830663331616532346536623564643562356663633262623038333535646538223b733a33323a226563663339333138353835346231363634663139663364373363666431346532223b733a33323a223466333436373238633662306239636239326464613261373264366637653061223b733a33323a226638663962366564643635386561626231656235643264396337643731653862223b733a33323a223831333530653031323666613230666334646530363563626462656466646361223b733a33323a226331363636393161353132356332373732666361366462393930366566343231223b733a33323a223232353934313861623735363437373535306334623235356334623734393039223b733a33323a223536643466643032343435393964643864316234633339356637653762636461223b733a33323a226561346365376631353331373134313664643836656334313531636338653262223b733a33323a226131396165663539663138623732646133326537643432343261626338383134223b733a33323a226430396238386539306461613630353966663764363330333863313832356535223b733a33323a226634656163343437383562336564353834376230373466343433383863346134223b733a33323a223835393138373061663364656631623863376330633538323330303066633861223b733a33323a223235333236343765343262653837373336663565353166333764326334636239223b733a33323a226535666138663436303236333766363364356261373634656665343862383431223b733a33323a223034626634373735633638653438616533326264653535643963373061623963223b733a33323a226162303236356662366334376530616635316561323537316437393161613735223b733a33323a223064356462376130363532626236323836373839616333383163323136303630223b733a33323a223066343037363034306661303464353162653764363331646462666362613230223b733a33323a226637336538363431623065366332653639623134353736316539653633323661223b733a33323a226631343535316135396436613361613436616264306136363232636235396531223b733a33323a226631303765633737643939653633343963393063303766333530313164313162223b733a33323a226666323965656439336163393538346462623432316337383466353661373233223b733a33323a223339336363356532666661656436373266363063613164363737383339666164223b733a33323a226463323836386366616332376434363863366437633665633765633439623461223b733a33323a226638373631623336666230306531626230336338393535646236666531343338223b733a33323a223636313639666335373339306364666235653137616564356538636563656637223b733a33323a226136653738656431366635623562316339333431313533613138356564353162223b733a33323a223936353333326235613732356261663664646535613433363664353137653531223b733a33323a223866306434653736633763396135656363653138386363623935373365326435223b733a33323a226462333435376666333866343930346164623466333166343338376664306231223b733a33323a226165373161353266653434326665643633656438316233366431343131643235223b733a33323a223064643232383932646332623936336666336339353432646231383339613366223b733a33323a226633313938333134386530323765343961616234353465323638386461636334223b733a33323a223738303537656436626462333662626434363265616532333431663837626639223b733a33323a223439393530366163323733303565663333623264643163383938393738333539223b7d733a343a2268617368223b733a36353a2234393935303661633237333035656633336232646431633839383937383335392d3738303537656436626462333662626434363265616532333431663837626639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223361306331383763643764626663656461363536343665363937646536653937223b733a33323a223737356362353561333538356138396162343164653761333639643732376237223b733a33323a226535376438346330373065633330653863643134313663636431393631666136223b733a33323a223438346163643435336466373463663862386232383433306234613362396538223b7d733a343a2268617368223b733a36353a2234383461636434353364663734636638623862323834333062346133623965382d6535376438346330373065633330653863643134313663636431393631666136223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587815895);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('n5ehqjt50rnhg6mf9cv0mp621j', 0x5f5f5a467c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538373930323839302e3235393536313b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a226832397568306e6d3074336a3830736e33316930336d6f6a6b63223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373930343730353b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373930363439303b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373930363437313b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538373930353935313b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373930363336393b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538373930363338353b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f6f6d656b612f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223832353363343035623966346562626431323062363766346135623931333037223b733a33323a223763663663396338336631653763326466626361323236653633323333636431223b7d733a343a2268617368223b733a36353a2237636636633963383366316537633264666263613232366536333233336364312d3832353363343035623966346562626431323062363766346135623931333037223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a31363037333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3139373a7b733a33323a223264616538313432313062646164643632646537323166383430303463303239223b733a33323a223634366232623864316265633164333731396537373837393937333764353366223b733a33323a223736353063383339383039333965366530633764643465623135313965303365223b733a33323a226431343837643938626338346130653530646161316465646537393830656262223b733a33323a223333336433336364653033343932636134383334336231356331353039613062223b733a33323a226539333633333836623731303164313539343532666133376534353065336564223b733a33323a226130303762643963626366316435636239396139363637313266613461303432223b733a33323a223364653136386331636563356561633832643630336239333233363861383935223b733a33323a223961663066386532333538353337346266613934396430393361646632316230223b733a33323a226564313139366338346337373365316131396662333232623439636231613733223b733a33323a226631346438616561396366363866623139353834303532316334333365663038223b733a33323a223834306531663636656432346264363064646633393334376635373061363163223b733a33323a223439353038393363373462613938653964376161633531353666383739656431223b733a33323a223966386337386166653365363135396565373363613439666338363231333037223b733a33323a226264623163656162363736386630306133666537323466633838366135306237223b733a33323a226536373964326330323465313339623830363061643931393034633033626364223b733a33323a226338653335396638636230396266396238376339366561623739373463386166223b733a33323a223364666339623562623564666332383463303565303464653737376566353430223b733a33323a226663336662616539393138343366333565376433313536656235343236316238223b733a33323a226363373735653362663161366138333062353064363239366366646364373133223b733a33323a223637313238353761663030663539616332346364373136386631313063383362223b733a33323a223066633631613034393665346261623737613635633163373739376631373033223b733a33323a223561646337613132623331623434643362386631643635613833393263383763223b733a33323a226661346236383536356261353537653564623730623763643061656231323166223b733a33323a226535326265346336616331616133383463323666636332353737303562353130223b733a33323a226664316136656463636338333966323761623165313032623533376437333834223b733a33323a223962623034663134313434393961386666303464353736326134613536643336223b733a33323a223938343430666165336334613930616666626636393563306264613439313033223b733a33323a226634643039326139313036626465373462393239383334396336656638386432223b733a33323a226137383866643337393266303861636435316465653066663661333065353032223b733a33323a223731616362643234343235356565383233633932653461336261313436346265223b733a33323a223266333765383830626232306135646637656135343934663135633935613466223b733a33323a226662313866313066333238346162316261376666396435313337343063343335223b733a33323a223037633861306264613262623634303937383064303230373437303930663732223b733a33323a223231333937313938303636343734326664373066323738306432336534666665223b733a33323a226265663939643362623135626264356239306634626339396333366561316237223b733a33323a226435313737336436646337623464393066643263323762373864653063353833223b733a33323a223663383139303865303938366539663435356131613533306631393738356636223b733a33323a226135636138623735643163363938383932363239623230313063393836636664223b733a33323a223363376638623037373365393362376461656432333266333963626661656265223b733a33323a223131633834386365333630616461656636656638313163653335346532336130223b733a33323a223264373935383132646233353938633732373437663764643965656537643830223b733a33323a223533653132363331393537656430653430363764393137633736303734323665223b733a33323a223062656339663962316536396539323231643863653735346433613538393438223b733a33323a223834393430336534623965306337383035313339353139656639626366333735223b733a33323a223632613739303039326339363261336530613361633466343431303533363662223b733a33323a226539633834636233333564353432346330376366316565633661366233623230223b733a33323a226430363032636238616366653164383634326634663931386633303535613631223b733a33323a223837373037643835333663646634383435306135303563346534376139353738223b733a33323a223735353262386637353034343138306363383337613638643965343437653663223b733a33323a226630363264316166396234306662373561613063636135616531653136623466223b733a33323a223063313739366561363437353865646130643733643034343335656463313834223b733a33323a223165303365373638623866306339343933656533303735353935346166333032223b733a33323a223432653062363366326366663335343131353062373133313762623130636130223b733a33323a223032303334616433663238636331613561633232326133396630353230393561223b733a33323a223939336534323835323434663530626465346138363937613836663035623964223b733a33323a223135613538326361633165313735383365353730643737373765646334333563223b733a33323a226238333232313231326433316239356166393966663538666639363666376639223b733a33323a223864333631633664623535393464616463643065653565636131633934653637223b733a33323a223065616162383064656561353564373831653061393939383136366138313932223b733a33323a223239366536353134643166636265613132343866336330643536643539343463223b733a33323a223935376336353563303831346138613332353764303966653663373664333637223b733a33323a223739336537653931373466303633363235623635616436306634663130396661223b733a33323a223263393938626333326634363762636537666639333863326334636663313933223b733a33323a226633343863373061353232636133383034656438613436343938353064663065223b733a33323a223437393832663439666434643635616430303131646663373661313665356162223b733a33323a223237666265306233616261373639663265336265646332366534343663643833223b733a33323a223237326538383062663738356434396165363961613932353531636364373266223b733a33323a223136393032353661366562393566373866353737333466653434383962633333223b733a33323a223938373833323466646261323739363638623433363337393264636363376565223b733a33323a226531393436366462336432663362653134316537336430383531643963643639223b733a33323a226536613737383665613664386161373133306331333639653730336436653831223b733a33323a223261613262363034383831326364373130343331333031653737343033636232223b733a33323a223365613230616137396235636432393436656233346365653235646464663866223b733a33323a226661343936656365323865323665303939333030366664306261633336303837223b733a33323a223231643039303564393464393637346633336262666632366561643936626230223b733a33323a226438656566633533623865323764323564336132373134663932346133666237223b733a33323a226630303262656130646464383237333964393436616530396336363562313763223b733a33323a226430653637363663366531386664383735376565616231666634623136633362223b733a33323a223162663065356165396234383463336638653265336133313263633334383463223b733a33323a226261393363323265383238353635386431353436656333643639396639643062223b733a33323a226664646636323566393539353063393333663439353164393265633437613337223b733a33323a226465653731623031316265333535363661663839323639656562313335653332223b733a33323a223139643537343930663163333463333264613235376333303634376664353838223b733a33323a223039643364346236623933303035623136376264366333616366653765656235223b733a33323a226531366161313637336137616266333437323965373336323335623635316362223b733a33323a226163376231643362646436613735653234643363373063623032613433353032223b733a33323a226236363935343232343863303430653930383336373336636235376561343962223b733a33323a223061323231343163363730663061336437623536643238363064396631633430223b733a33323a223538333163633561373234383239366134326265396662333935323566616164223b733a33323a223834303534363165633531306434666661393239613839613834313665323537223b733a33323a226261353636663866643137313638376338393338666437373339366262343039223b733a33323a223232356538383836313733343166663630346132363333656237346364343163223b733a33323a223435653431663564333339396534343739356233636136323936663234343665223b733a33323a223135306334613036613933633631653130313830366632336662386637666234223b733a33323a223565333035636363316334393466333363393039386163346563383665386237223b733a33323a223436353032626133663066663139326630616530343133383831383634633339223b733a33323a223932646337623532353164376663343366306138303732623934383832333337223b733a33323a223465376261366365356532656534333130643430303364613464616539613336223b733a33323a223462366433666635656363383865316138396638633330363266326134376637223b733a33323a223866663834373738313438313365353030653364643936316665313137663733223b733a33323a226436356230393031376665666464393865636532303430323531303632373066223b733a33323a226230373930343064386330333038363533666338643730626364313135326233223b733a33323a223736663232623834303836353363366234613331303831373530616465333337223b733a33323a223638653036356131383630376638393761326665363636633335393563386363223b733a33323a226230343965346433313334373534383939383134333465613534393239353966223b733a33323a223133316564383439626134326333313636363862663238343838616430376330223b733a33323a226330386666643036346337613130613336386434623030393464633031616531223b733a33323a226663396163663461663835316633343237623731303164353937343364633565223b733a33323a226533663266353663383635383365353762393765643837376436313439303434223b733a33323a226333636439346237653936383562353338323036346430343362646162336434223b733a33323a223662316232666534656336326661323039646132626663393464386362343865223b733a33323a223831303031363562353837366433383461623365666261333437663665363163223b733a33323a223133303464393631653762613536316364613637366663373265613638613432223b733a33323a223934376230616436356563636332616665383362343433303362373031373134223b733a33323a226465303662356162303535363766633937356138323234356163376534666661223b733a33323a226532393563653635643233393039306432653735353333613261636338313864223b733a33323a226530306232313539653464343063306364636438633735613033363036326631223b733a33323a223232363131373539323839333733333834623637323061343262313965626434223b733a33323a223031653562346136326334613030616364326261356130383231316535326237223b733a33323a223464623164616232346436626233376265336437386365383262623733303333223b733a33323a223235323931646630353561646432366531316562313061643835636636363938223b733a33323a223463343031396663366566346532613163373939633331356161353837396666223b733a33323a223264626665643363663565613562633739316162663261613264376638336339223b733a33323a223734306639366165663263346564646434633538613132613431653531323134223b733a33323a223764613130626561326163306563626232383931373838303462633063663865223b733a33323a223532353337323731373966373036393736323262363766366565653866396334223b733a33323a223438393835353632373638313737316230393830343830636463653338616338223b733a33323a226666663731366136386161326634336337663531306339343362383239393434223b733a33323a223139373664623165333864636161363963333836623337316239306431643865223b733a33323a226337663139316637323564643736316638663864613661356163333462613732223b733a33323a226535326633386664336461353963316536643837646539316131376562346263223b733a33323a223264316237623331336533393961353239616263323038623366626537363135223b733a33323a226536643665316264613166383333623732666337323562356364376337373137223b733a33323a223030326364316535663864613632626365373437363530643833383736373563223b733a33323a223939303466343761636339346438323239646136383837303865333161643131223b733a33323a223962386534333939353836316164653165373166393266656364373234343936223b733a33323a226563366665366262653336336461653838636334613634663335656562383536223b733a33323a226230613036663431626464646136636236613536363139643064323664663437223b733a33323a226331386234653366643933313734623439646536613535386136643961626363223b733a33323a223332653730356234396131316634303463316465383930636363383466646266223b733a33323a226639313462383134306365346361366132356232613733323332623939316532223b733a33323a223732636438353066666636643863653762373338613431306137613263373633223b733a33323a223464643831393338396338646234303837376234613164623137656235383231223b733a33323a223330356233653562383930623336353363336165623938316536356463323163223b733a33323a223534383232356161663363353739613065323037393431303438643737656161223b733a33323a223137323633353938373739336430643963643063626464663031613338613238223b733a33323a226165656236616364323466336462656434626662393937623737356532303635223b733a33323a223665373035363532643931366436613062363335633663383231663966363661223b733a33323a223138623434623764316639613462653765323731373063623966386430383765223b733a33323a223437333039623936613861323933353838396235626130303639326330356566223b733a33323a226634633332626131666165636434323238306332643331623466626132323732223b733a33323a226639333032626264363435373630376562376633626637633963383034393832223b733a33323a223337326138646264373633653533653261646261613736373230303932323238223b733a33323a226561393863643835646162616362326634613038363164663566326239326165223b733a33323a226634663563306639343335366333613336313064613637613563633466393162223b733a33323a223634663933653562336365396566383532383334323834613837313130623530223b733a33323a223034663533333465313966383638343234663438373439613332343039343233223b733a33323a226438666237323530343637396236386563356132376361316337643637353333223b733a33323a223165333032363735383039646634333932366664656465306266346538376464223b733a33323a223463656662306163353237646464646366363532663862376230643433383834223b733a33323a226531626365643465323364633163623066626338343766373732356162376530223b733a33323a223835333166313431666132323261396166333165653839623461383038613165223b733a33323a223265323461633234313239356562363265363565303538333439336662646534223b733a33323a223539646632346637333432396362663861353436383565373438643933393933223b733a33323a223466623563636633363930303738323764393834396336333032373462303166223b733a33323a223965663730316235356361356663636662653464316665313137303736353435223b733a33323a223163313730633435356535333461356432366237626137666133653565613830223b733a33323a223961333862306638343138363363646635393764346166316435646665343038223b733a33323a223663656266333234376663613662656639633833643763326131623863623936223b733a33323a226132386636653165663362636161633563323239336231313861333566336262223b733a33323a226363303463626339356161636437396662626632396266653762616162323234223b733a33323a223334326665353433636262343565356566363666636234336464653436323165223b733a33323a223765663139353437356434663137373563396239383561653665616165663032223b733a33323a226263643136346633303463633265303466623765616133343163623036333335223b733a33323a226230343361646663336362393561396562373031663836323461396330643133223b733a33323a226630393032316363656630323734646365396536393464356465636265666537223b733a33323a226238613739396565333564373031616335363861366632383065383638356232223b733a33323a226464613837303433316362376536303735653330373539343736623939616134223b733a33323a226236326539653062356365613230633663373935636331623566633863396631223b733a33323a226535313763616435613135303961303865316534316366343331373936396661223b733a33323a223835353734646537636364636633656166376663313139306265366437316133223b733a33323a223636613036636436386236326339633130373863343864653864313962303866223b733a33323a223365346336613536623436313662313437333935326234373763616433316435223b733a33323a223761336436303366323038363831623437353937663265623738383630613435223b733a33323a223036316365373564313661666332653863623362343963356363316166633230223b733a33323a226533343133356464653835633335376463393230643430396362376463613536223b733a33323a223332353362303433316136363731623964653337663465326638306237626330223b733a33323a226461613132363166353535636438336431633762653539343637653332663237223b733a33323a226632343263653638326638373134636263393531376636633039643065653637223b733a33323a226263623462393666353662393465393263313732613039633362633937633364223b733a33323a223134376163616438353362343532656633653463656263383766643661303438223b733a33323a223661373236356365653739303234303635343063353730613333396164373538223b733a33323a223330316662636263396232636231653534396235623161346434616137653831223b733a33323a226131326532303662663638343537306461656332363166633062323836353063223b733a33323a226336383439333261383032653935326231346630303434633564633838306164223b733a33323a226239623266363531333364376132313835666262353937646661393364656162223b733a33323a226132376538653961366636383964353064306561653732346539303362303434223b733a33323a223833656337373739376539616239336131366636666435363065656439303963223b733a33323a223734383138383531353438663938303065396237663930306437333338333066223b733a33323a223535306136393231353362383733646661323632353432663436306138656464223b733a33323a226463316635306639373665336164626263373963656237353136646533363734223b733a33323a223034613432373563376166353430623239333837316135653634306531656163223b733a33323a223138363436386532653865623763646264643737663837346539666632396338223b733a33323a226534353861646631666463366436633364386237373335666166623961333134223b733a33323a223736316433643339646635373737646430346431306532616631346533653830223b733a33323a223832643638303461353236356137306432383734366565303961663730616437223b733a33323a223265306664616331333530306662323236333666386664393665393634633434223b733a33323a226461633634373864643439323862396632323937656666636434366334376430223b733a33323a223137613464666332616239646333336436366465333763333934666632363435223b733a33323a223563643630663362363032343763613661663539373264623062643632656233223b733a33323a226536383834353164333839656335363464643437616538373132643735373666223b733a33323a226365656236306565653330346536316136383338363434376265366631653535223b733a33323a223032356438376335313936353765343330376535353261303439313430373132223b733a33323a226533333133663137343539613165366335323665316465316461353461326665223b733a33323a223836646464346637646536623839376661383137343936346365623639306537223b733a33323a223635656437623566663534633133623032666366343231326263356134333466223b733a33323a223064633731333763653165643033363238623138396438646636653236316637223b733a33323a223863646433303639626638383038336633323161383162643963323161623939223b733a33323a223362653936333464313338643363336363643766343034646138633063373064223b733a33323a223962316539396134636437666235373062623832353465653537346664343638223b733a33323a223163396438663237343332393436663835353839393564616236363861393734223b733a33323a223363363265393135636339346431346431363235373865346162623565346563223b733a33323a223337336265363066396635353536376238363964343638373939323462366461223b733a33323a223833393538366238656636343434626566326236313433316239353233336232223b733a33323a223536646165323566653265303134373336363039336335613631646236326533223b733a33323a223763396433343863333534623866396361383661333737386334653062346431223b733a33323a223533333262353666363237366231326661643162636638636338613761643932223b733a33323a223932633037326461316632653735626238343465333833633966626436366163223b733a33323a223661383765353863623631666235343634386130653962313337646538353961223b733a33323a223264386331346230646564643866616231626631653032313664643335353766223b733a33323a223133386134343763376264366137363236643839626433363563336630393037223b733a33323a223363666135633636633764373661356231643064633237646237353762343561223b733a33323a223732376365613765633130643330626438346361656339366335326430346266223b733a33323a223961666633393036373938353332336638626531656531343263643538613838223b733a33323a226536613865653631313536376165303039306466623961323663303636346434223b733a33323a223461313365356131373662346664333835323166626661356235666639653834223b733a33323a223762386336313263666232376566653635623134376366316333636236366661223b733a33323a223166366635626265356133336563313666323063623934336566333736376634223b733a33323a223638393332646439303431643463303661313938613830623730363236363433223b733a33323a223331613432653866353964623337333635633434303665653166343933633164223b733a33323a223864633131656334333330656162316533613963626232383437306431363435223b733a33323a223334373134313263326335386633343937636437646561616335636466646135223b733a33323a223032313365306230303630306234613135633234383534356335383337323037223b733a33323a223035333734346131346533313837316539666136666164306332363966353963223b733a33323a226636623032303866396362326530636435363632303935383764343762636135223b733a33323a223039623539386263643536336664393662333131346264323763613865393535223b733a33323a223637323936626238666339653461336461323666636137623332633861303334223b733a33323a223538633533653662353030653539316431626666646663613934393933633866223b733a33323a223666343737353234643366663061306136316138663165323062376230356230223b733a33323a223862643039393237633862363564333038353936386432666436666538333133223b733a33323a226639663562393435343532306239646263663234366532653432323662636337223b733a33323a223031393566636638653866306165646364393735613237326464303833386362223b733a33323a226262356238373131343138643534643461343539613334383062333337303331223b733a33323a223833316233653762396136626265303066383366636232373437633430316163223b733a33323a223238656662663639633361656134343161666538343962333637643361366362223b733a33323a223363396431386361303862343436636436373730643136393930376462333432223b733a33323a226466383931353234313639636566636239663361373633383164616164353262223b733a33323a223634666366376533303663653833663762303231633535626265353063386637223b733a33323a223132386438343463373564336436346236303134316433646136633734336130223b733a33323a226631326535373132356163633261623461653236303139333131363064386265223b733a33323a226438663939626464306562363538653735666430373736643564613662313339223b733a33323a226330643938396334303366613535343835336331326238613237323338623065223b733a33323a223763366131363630356439373565353966306461393538313337623162396664223b733a33323a223236633062323038316430626361363162303663343732336664333337373564223b733a33323a223434626164393032636436393033316333636161656137336261363830613234223b733a33323a226234313437333762353863646633616639663662616434393236343936333265223b733a33323a226339633632373533303866353130363835343766646231393930656361366231223b733a33323a226533633935613765353665376366363635393561313462316138316562636434223b733a33323a223330646233663839333237396166313733663038643737633662336466316535223b733a33323a223365653864633064646134363334373333333164653031376134663533356634223b733a33323a223739376138336331383530353333346635613532613134366136393662663139223b733a33323a223261333666353838393635386238613030353439643934653963363535663663223b733a33323a223136646466613733623161313063633139303435623365646330363635373637223b733a33323a223234353333393630333631336634393961323765613061393535396566336633223b733a33323a223762653765306632383339626563656132336430633038356636613834316236223b733a33323a223864343966393464613231346662343766643639373837303166313766363138223b733a33323a223733376465653033643264623837366563363863633139636464633065653763223b733a33323a223136396336363461363336373535656638383334383439616436346239616532223b733a33323a223031313839323463333731636235336637366330633264396261636137623834223b733a33323a223530333836393235383266353039363838663838346634643161623836393865223b733a33323a223137366664363035393062396432313963613734633861633631616562343534223b733a33323a223831653038306238316634333361346566356261316331383935326439326537223b733a33323a223362363032656137636337366336323334623261356538353564333164666237223b733a33323a223366333737633666313238393561616431656237393837323239326430363737223b733a33323a223439653137383632336561656232373633333665363937633064326233623864223b733a33323a223138343962626635346666353865613132393137363061623135656137373161223b733a33323a223635356239363766383165613134663437373935336664616631623637313931223b733a33323a223262613366636239633033366436653464643336323432376330613464333066223b733a33323a223532363263366564633433633164303634636638656331656330356632633265223b733a33323a223861353965373365313136356537666438636163333863613934366635313133223b733a33323a223165663465623966656661616539393536623330343435316462353531646166223b733a33323a223431613737396334633763643035613332376161333264663136373530383965223b733a33323a223430383366353166383235393132336562303731636531633731633362333730223b733a33323a226338323463396331393532393031626263363761666362616335623332643939223b733a33323a223739346265353835373961356464633362646237363830363165383430613434223b733a33323a223765343733363866316330316637316531663666346631636564396464303831223b733a33323a223562343466653435313633316333643361623032376132313462343334373862223b733a33323a226531303163393065663463636163303766613365333335336133313935393934223b733a33323a226536316262383666303838646430393264643230343433373232663730353666223b733a33323a223637373863373339656462613837646237353665373130643733366263383938223b733a33323a226465626465643637383936386563356334356533386263316434636337303830223b733a33323a223961393465393039616538626130373762646435353563393836646533623038223b733a33323a226432333662393630313434343634363761323562346533633736353235643134223b733a33323a226433366134636662326238333962326463376534313064633637626135336337223b733a33323a226265616332643439393236653934343036343165663436363136633938653938223b733a33323a223737643631633134653835303463646230663038313330316663323038666333223b733a33323a223336313035333634383765626336383636623136653438356639643636656363223b733a33323a223733313961333662653132623564613130356534346135613262303961326565223b733a33323a223433646534623638343339626430623736663831383830386237333266666362223b733a33323a226130383732363938656163633065303463316562366530343338636266303230223b733a33323a223632663131643064303765636261396362333035633465353931323461386432223b733a33323a223530376438366538306235333132383664633063356337333331633365663239223b733a33323a223331393730666337343638363561613336323866616561343735393139396438223b733a33323a223637373732626632366235306637353735663434383239313535653864653433223b733a33323a223963323339373066326237373039326633333837386531613464663535393464223b733a33323a226531396430356534323738643764373536313937613363346363376537663663223b733a33323a223839356566343932303537306432626335643730353831363466333231393066223b733a33323a226261343866346439316164313037313238643034633532643130346132373533223b733a33323a226634393137643234363265326230623839663138376535663632666230376435223b733a33323a223763313632626330353833336365646133366239336232616466303061323336223b733a33323a223235613661326437623061363361326338316133366533663937626537306562223b733a33323a223937663534626163393635343035383235653962343162396431343332323461223b733a33323a223633383139663639393331623866343133653934643835333934326534656466223b733a33323a226632613462316635306234323163353564343531336637646363646134323536223b733a33323a226634643635616539393834613632323562653431393730353337333365306263223b733a33323a223764313936313265633765333563343538356664393333643362333636623335223b733a33323a226630303035396362376532303639633932656638633038343337633132346531223b733a33323a223233386661326534643737303532383435653933363939643837616638326436223b733a33323a226239313134343262363939366437366264396662393665663332323533363430223b733a33323a223765633334303537653033363666663661366632383164663462343365366136223b733a33323a226465356462323261666133393233356137373934633738326432646265383432223b733a33323a223032326236333537633635303230396235643234386139316139666133366462223b733a33323a223739333136336466366537613262356635356635623961663261613162613633223b733a33323a226361346639616439643166373963666562353636376166373335376565313331223b733a33323a223538616435346431396231616131373162336166336131663931626631643537223b733a33323a223532366439383362343138316235613035306537636536666438303934366634223b733a33323a223166373232356237366365306134376265343838366233326235316562336237223b733a33323a226636666139633062323135373263336133383963633431373231663663366539223b733a33323a223135633363326438306264306164306630336562666464383434323632356535223b733a33323a223866623965333464303465666634306566626663656634313866316132303862223b733a33323a226362393839653464386530326433616435373932383263363031373162383136223b733a33323a226434343730346161303766653738653832323936616363343264613534353437223b733a33323a223334386238383061343966303636393166313765636139663833316230653262223b733a33323a223833663739666566326461623765636663643238343232393665383235333439223b733a33323a226662333666326435636537333339313234336162373130313861326463653135223b733a33323a223064303964383236383162343161366464303332353161393338306439386461223b733a33323a226461363133653962396533636334643135346330643565366533616235663961223b733a33323a226536396237366439656263626635613762656163366534663439313232636461223b733a33323a223131383833616233346263633564306666643064313130373666363536353364223b733a33323a223734633866653533653634663466363738653239653832346538643337373334223b733a33323a223966653238346534613039343833346264656530363130643933646464643035223b733a33323a223261393635333838383564396362306531356634613230633130373937306261223b733a33323a223431366436303164653733663839326461313337626334666636623261366131223b733a33323a226330616438666237643061623135653766343334616137306339323331353066223b733a33323a223533306237656665363439616535326430323437393264636539666234663139223b733a33323a223133653066313230393432623831386637636430343063386636306635616635223b733a33323a223439306335386330623965353733366263393237613439323330393336396665223b733a33323a223964353166356430366636323063386233373630316537613537393666633839223b733a33323a226433326465653362383464353563353637353864336265373231666432386432223b733a33323a226639303836323033343266336634343638613136363763363338323862366539223b733a33323a223539313936356261303461616462396638643435643164393335386235366632223b733a33323a226164656136643133336237666439633931643036343234643238386237303162223b733a33323a223434376431663331386530346235613333646363313930643136303631393332223b733a33323a226633623438666137333236623231323335613362343530326136313431346336223b733a33323a223439373739616664323739306434653032393336613866376138353634653430223b733a33323a223230633362323534336463613566323661333461376330656161316234633536223b733a33323a223837383861666132333132353535376464353037383361656534653533646262223b733a33323a223263636366366365613036656536303031643661663130323232633031653734223b733a33323a223064383136316631323634666261306564653739306435623965326532316135223b733a33323a226134626238373330386338386565313139323731356436316437633237653635223b733a33323a223364666235303732663134613738623139393235393338386631323432373766223b733a33323a226365313537333764303037396166386565633638643166313430313730303262223b733a33323a226236613832353362653766303332623563613032373963326434656134633064223b733a33323a223838313563303064313164643564306566353531353833303238373838333163223b733a33323a223937633935626431613830353835386631393038303734633534346135393631223b733a33323a226364393161323635663530333839646466303935363638303634633537653836223b733a33323a223330306137663462643038636464663239343639386435643633303066666339223b733a33323a223466666335353866333561363962383231383036366164383239613630306433223b733a33323a223864666365396532626663663438346135633235373536633730636439653366223b733a33323a223163653665343835343665366662653365646164383039313837373536643666223b733a33323a226338366134633166646137636432343638383932346533663465353235373735223b733a33323a223136316564633730643436336635656339636561383334633461383266383762223b733a33323a223139636431633766656530656330613538316230656562663265343865653666223b733a33323a223963386163316632353731653633343732333933383038336463383866623534223b733a33323a223030383233366563396363633866633932363461653030313663356539353333223b733a33323a226466653833343764396566393836336438633263613636663362633766663637223b733a33323a223565343438656338333635653934333931303736373462383737363463623235223b733a33323a226265343938663535666264313237623462383238333131623964333861396335223b733a33323a223332653832396432366465633337313466623538396538333962313630653736223b733a33323a223330636330346236343632623034666635653063633436313862343532666537223b733a33323a226162653439623832353031633330343832346563616663343266653862643132223b733a33323a226633303065343064616438613835343861336235656531643239646366353038223b733a33323a223061613936333533626633666135323865373536626237663665363265383339223b7d733a343a2268617368223b733a36353a2230616139363335336266336661353238653735366262376636653632653833392d6633303065343064616438613835343861336235656531643239646366353038223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226330306163333339353532396361616632366135653337393035643863393035223b733a33323a226461353962636166663139643163653639323036643031336330373339643564223b733a33323a223264306432633163306532343365616438383237306362363837623734356232223b733a33323a223331333539363164663362373033393239343863613564383331306439353534223b7d733a343a2268617368223b733a36353a2233313335393631646633623730333932393438636135643833313064393535342d3264306432633163306532343365616438383237306362363837623734356232223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a353931323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37303a7b733a33323a223030316566353134663639393366633361343861663233363937376635306535223b733a33323a223365623631616564383062616562376136656236383532353239356132653733223b733a33323a223762366636316666663164353332346530616238626464643833313166396437223b733a33323a223765393965316131636666626331336664313731376565393561323834393764223b733a33323a226433653561333834383635363066666233643032363032393538663730376433223b733a33323a223566383636356339396338323161646463323465336431343161663231373039223b733a33323a223239623832306262373737346336356264393935303764616635633165373962223b733a33323a223462663734643731373430363366346631376636323962343431666163303265223b733a33323a226533393830663634343564646239616464633531663766626530333835653532223b733a33323a223837373661613537313235653138346265626266306130643366376332643435223b733a33323a223662363963623035373563623931633666303939363332623638656336646137223b733a33323a223737313839373931346231303332373438316632353965666465646165613065223b733a33323a226331386430653938663938323035386231616463326635376137663166623330223b733a33323a223064306530626262613236386465313736393561333063313661396131353134223b733a33323a223339313866303161343966643639646664623038366161636432393831623939223b733a33323a226462366464346535356365613737346235613164306262653761343931616532223b733a33323a223633623463326266343438323135356630303762616236643061643538653463223b733a33323a226630336362346664326265643165346465306664346566303963653430363061223b733a33323a223237323764613462333465346335623832633538323133636134353665336535223b733a33323a223961646461303238323035653962646465393135616130633461303231373162223b733a33323a226235373634366537383730363634643133373433313032366563653037396335223b733a33323a223639373736643935356530613561633364326232343438313539343733643637223b733a33323a223236616438613637396164386265623137626264393963303131323039303465223b733a33323a223730613439366666316431653462373765323461666664393161343433396239223b733a33323a226237343037656432306233366664626336623839326665656361643934613431223b733a33323a226530666162656361643334663066386530363739303237313261346137326436223b733a33323a226361336636373536363236303635633262343633336339323961356437323561223b733a33323a223463353337663365373932633666643765343035336631666138346465313431223b733a33323a226137653863306532366237663463396663643461343232363231396333386430223b733a33323a223065653534383133363334666163313937333332653935626630393234643535223b733a33323a226261316163646637383139626530353637346164353162393633336134303063223b733a33323a223766646234653335326239393035616635656263343336623932313134666234223b733a33323a226533306265303738353433626363323131613830643233316265346364376432223b733a33323a223739313864626430636365653461646433323361636265343835633032376435223b733a33323a223839626635306463346438336338323866343631343664343434326534303866223b733a33323a226666383432626264623663373866616230363534636136346264643766313039223b733a33323a223262366331386337653761306332303733633330306537333834396535643063223b733a33323a223738353330386237343166353437323664353232306430656537356461306239223b733a33323a223833386233373931623164316530353365363931383937343130663939316663223b733a33323a226361663161353361353738346133333531336132323336646164356638356230223b733a33323a223962663931633533353833303962323235643838353831656266366231363030223b733a33323a223536623166623063613365656633643538306162393738343636623536666233223b733a33323a223266383035333133373762653563343332353535303864636432663034313561223b733a33323a223030383266643939353439346463613530653738366634663262396334336465223b733a33323a226166353234303131323062653739373636366665373037303265626631303966223b733a33323a223631366264623034633164313730353436313461363034343634666465643337223b733a33323a226434313438333963316431623734373362383935633430303231643061646431223b733a33323a226438353037656463343761306435316565636334643163336333336431643830223b733a33323a226163323836393936643638656439356361373061656638636663326631363739223b733a33323a223635383934373134376237306662613339323465626334633434316130663939223b733a33323a223138616666353732623366306636393063306537316634396232393830663762223b733a33323a223631626565363832396634346330613435333730613338356533646338396634223b733a33323a226237333131383936643539303466393930383564613733656233356166376665223b733a33323a223066326339323431316536393336623264613464323138613235616534383336223b733a33323a223065313137396539363666303435663639656562326431626539366638656461223b733a33323a223062393035643133363036613938636463646562336134386238633766373532223b733a33323a223533643662333030663265353565643166376465633335323366363866363237223b733a33323a223731626231323762333764646331383164356539636566366339653836663234223b733a33323a223738386462313864313133396564396436376365356461633265616365653361223b733a33323a223231386539316163306464656134376631383764376232666663623033343462223b733a33323a226237333363363934306665616565303732303533363765653264346564656630223b733a33323a223939306236316663373033343332363566393633613139343138383564336565223b733a33323a226265323862316230376337383232396365343539396563343931356435653635223b733a33323a223261633366313032346565643139316337343134323935343432616433616437223b733a33323a223635333466653932356663333035363731373661633035343666383065656538223b733a33323a223864633331303239316337633863373162326461666231303635313136633235223b733a33323a223139386236356339666163373161326161356464636264346338656262666532223b733a33323a223733653331636365333835383361653562326637636537343138333231643934223b733a33323a223038653034353461353035613230323463396230643133366133393534316631223b733a33323a223438636637656466346439343962616261636634653234336466313732643062223b733a33323a226363616533643766373838643739316561393132626238363961663139656630223b733a33323a226633666533363239646665313063386335643533343737356235393938616464223b733a33323a226464363431633461323339336136623936623564393733333132373438346235223b733a33323a223166646635366231633137613966303636373262383732353031643233663733223b733a33323a223562373032613164316338386533663233613665383238393463373962663135223b733a33323a223938373266613532376130396334366631386632316636323066386232323237223b733a33323a226132383237353332353738646639666636316436616566336236346164636633223b733a33323a226233643861353031343230383763376530653566616634313934356334356438223b733a33323a223236343730383535663063393835323434623666623363616430343336313366223b733a33323a223261303736363532313338386364366562636639316162656638303861633763223b733a33323a226136343736396130316532393339303530323062633132666436626464663439223b733a33323a223538313036303763646336633364373038383136663430313339393337643432223b733a33323a223338643738623961626439343166396332613563333030636337333130316332223b733a33323a223934653264643632666235366336336534336535313631383037383236313334223b733a33323a226339383763353739626436653334366533333833653339386238616337626264223b733a33323a226439646537623731366462636337643165653061616261633030616266626161223b733a33323a223630613234653262653863623133373663353130353764613034396131326161223b733a33323a223534303962643832383664353139613132396665356433393037623262353935223b733a33323a226535353363326263366236653864313664383863663035336562653862313231223b733a33323a223236393761623263363465613762363339333639636562336337313139393735223b733a33323a223961333162376337373161346230343332343065653465663566666230393366223b733a33323a226337363065353731306463653532313063616136383138356333366363383063223b733a33323a223434626333656662376532653038363664303363636538343262373965373866223b733a33323a226635333031363337393463363164616237316463313038646432643365663061223b733a33323a223930376335633661633930353238333566623931363931383939643935353938223b733a33323a223935663830616232643361623666323330656364376635323664383462623237223b733a33323a226263323233323735373561343761613938626434303064316634393734663434223b733a33323a223238316562363532323635373232346264326566393130303139663763663164223b733a33323a226136343161353735323266633061393338616331383062663035313464313238223b733a33323a223837376536333531666339613361313365336336643035363534303236376336223b733a33323a226563623931323337346130303833656364643035396430373732386365396239223b733a33323a223361616564613630373632316639616230303765636666363831633538323033223b733a33323a226537383735306139366561346437313065393232363036346265303061353531223b733a33323a226633666533623139323966376235336366376130393961306332303838376164223b733a33323a226139646466313238633265616439623932366364653662333736376361646333223b733a33323a226638313064653362616530666166656638313737316533346562353365393037223b733a33323a226239643932343337323564616631363031333138373664393236363636313063223b733a33323a223964666333663865646463613135646661623830356538666333393065376536223b733a33323a223864656439653832326264336539336266386161313962666435386330393338223b733a33323a223262663265623164303666303930633238383665323065663162653839363765223b733a33323a223937373165633934666334616161303936393430373430386536356262346334223b733a33323a223635383731353065376430306334386233653466306363616138613237623037223b733a33323a226661663836616162666433323566343934363665636561663532353266646437223b733a33323a226432323931653638363430323830613833613030353539646133383864643437223b733a33323a223934623439376565666664633362376433396231393762363836376562663064223b733a33323a226138323939653534336562356165326330613034346234373063383465653562223b733a33323a223638333466333536313031336531323465353431386165373839303732383966223b733a33323a223833313330303032643564666563333435663434666464303930333266366564223b733a33323a223433663561306366646135346664386262656635613036303532336562666538223b733a33323a226239326562613334643535393338333636366138306231333736386161643737223b733a33323a226331666333333361333639666630383362306565323734613566353861646633223b733a33323a223463316262333863326661396634656563316137653639333135363639623033223b733a33323a226164646563666534626638343532363466623237616463323363613132396434223b733a33323a226563633364373534323065383631336539636132386165343962356130386434223b733a33323a226562303835326361366665353831383437383163323137313239313132623238223b733a33323a226164393435613730636132393532363566323566313063316230353036373032223b733a33323a223561626263373239653761363830666431343032633936326563623035313337223b733a33323a226337323230376163336462326265343831306562376532663733383936396665223b733a33323a223764666330333230663564313864333733393930656431646439343831323231223b733a33323a223330613732623433346530353237643233643434653635323939356235333331223b733a33323a223532636662663165363037386438303764386566623830306139646330333036223b733a33323a223838646135353061656664333162616664333334636164306431386539326331223b733a33323a223165313362366432356566346634663061663034323534663538363637363937223b733a33323a223265393361313563353233303637616363613363663832656362663930303162223b733a33323a226234363637323435623035316435656265636237366566613366306536383436223b733a33323a226462386664373534346166306663343135633639363132636461343264383766223b733a33323a223332376634313831613831313635653630643538643033333734636163633665223b733a33323a226638353663393830326335376334653236303763383333303164376532373130223b733a33323a226662356330333436636263613530376436643762333063386261343864323236223b733a33323a223766656631303034623839383962636232356561393563616337653836333434223b7d733a343a2268617368223b733a36353a2237666566313030346238393839626362323565613935636163376538363334342d6662356330333436636263613530376436643762333063386261343864323236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223737343630356335303064396466656364366436313631323435343134643833223b733a33323a223161643830356236366163353730346436346638633332303234613061653235223b7d733a343a2268617368223b733a36353a2231616438303562363661633537303464363466386333323032346130616532352d3737343630356335303064396466656364366436313631323435343134643833223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226432616265646239303462343730646335626661626432373433326561653137223b733a33323a226138656162363262356663633939626661326165313736623634333761353936223b7d733a343a2268617368223b733a36353a2261386561623632623566636339396266613261653137366236343337613539362d6432616265646239303462343730646335626661626432373433326561653137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1587902890);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"anis.bela1997@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('iiifserver_image_creator', '\"GD\"'),
('iiifserver_image_max_size', '\"10000000\"'),
('iiifserver_image_tile_dir', '\"tile\"'),
('iiifserver_image_tile_type', '\"deepzoom\"'),
('iiifserver_manifest_attribution_default', '\"Provided by Example Organization\"'),
('iiifserver_manifest_attribution_property', '\"\"'),
('iiifserver_manifest_description_property', '\"dcterms:bibliographicCitation\"'),
('iiifserver_manifest_force_url_from', '\"\"'),
('iiifserver_manifest_force_url_to', '\"\"'),
('iiifserver_manifest_html_descriptive', '\"1\"'),
('iiifserver_manifest_license_default', '\"http:\\/\\/www.example.org\\/license.html\"'),
('iiifserver_manifest_license_property', '\"dcterms:license\"'),
('iiifserver_manifest_logo_default', '\"\"'),
('iiifserver_manifest_service_iiifsearch', '\"\"'),
('installation_title', '\"DWM\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
('version', '\"2.1.0\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`) VALUES
(1, NULL, 1, 'escape-sorbonne', 'default', 'escape sorbonne', NULL, '[{\"type\":\"browse\",\"data\":{\"label\":\"Parcourir\",\"query\":\"\"},\"links\":[]}]', '{\"o:summary\":\"\",\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\"}', '2020-02-07 15:50:45', '2020-02-07 15:50:51', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Bienvenue', '2020-02-07 15:50:45', '2020-02-07 15:50:45');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Bienvenue sur votre nouveau site. Ceci est une page d\\u2019exemple.\"}', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'anis.bela1997@gmail.com', 'anis belabed', '2020-02-07 14:05:22', '2020-04-02 17:13:17', '$2y$10$jfInhn8vT4.OCfzlGcn9p.LCQUkBh595ht1PguuPzf5Ysm1bCcx6W', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'samuel', '2020-02-21 12:47:08', '2020-04-27 12:56:13', '$2y$10$8bUN7pWiBDLqgdbDxjODOuth.RshvgRC9ubl2wdCtUjAmptB6I32e', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"fr\"'),
('locale', 2, '\"fr\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `uri` longtext COLLATE utf8mb4_unicode_ci,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(9, 5, 1, NULL, 'literal', '', 'Q2: date de fondation', NULL, 1),
(10, 5, 4, NULL, 'literal', '', 'Nous avons maintenant le nom d’un des fondateurs, il nous reste plus qu’à trouver la date de fondation de la Sorbonne. ', NULL, 1),
(11, 6, 1, NULL, 'literal', '', 'Q1:  la sorbonne', NULL, 1),
(12, 6, 4, NULL, 'literal', '', ' Pour commencer, nous devons savoir jusqu’où remonter. Je propose de revenir en 2020 et de chercher sa date de fondation. Pour cela nous devons retrouver le nom d’un de ses fondateurs.', NULL, 1),
(13, 7, 1, NULL, 'literal', '', 'R(1) : Philippe de Sorbon ', NULL, 1),
(15, 8, 1, NULL, 'literal', '', 'R(1): Robert de Sorbon ', NULL, 1),
(17, 9, 1, NULL, 'literal', '', 'R(1): Louis le Sorbonnais ', NULL, 1),
(19, 6, 193, NULL, 'literal', '', 'Son fondateur venait d’une commune française, située dans le département des Ardennes. ', NULL, 1),
(20, 6, 194, NULL, 'literal', '', 'Son nom se trouve au milieu de la cour d’honneur.', NULL, 1),
(21, 6, 197, NULL, 'literal', '', 'À sa création, la Sorbonne était l’un des collèges du Moyen Âge de l’université de Paris dont le fondateur s’appelait Robert de Sorbon et était le confesseur du roi Louis Philippe. ', NULL, 1),
(22, 10, 1, NULL, 'literal', '', 'R(1): Louis de Sorbonne ', NULL, 1),
(24, 6, 35, 8, 'resource', NULL, NULL, NULL, 1),
(27, 12, 1, NULL, 'literal', '', 'R(2): 1253', NULL, 1),
(29, 13, 1, NULL, 'literal', '', 'R(2): 1263', NULL, 1),
(31, 14, 1, NULL, 'literal', '', 'R(2): 1326', NULL, 1),
(33, 5, 193, NULL, 'literal', '', 'Sur la plaque de la cour d’honneur il est indiqué que la chapelle a été édifiée en 1326, mais Robert de Sorbon est décédé en 1274. Notre mission ne va pas être simple car des erreurs se sont disséminés au fil du temps.', NULL, 1),
(34, 5, 35, 12, 'resource', NULL, NULL, NULL, 1),
(35, 5, 31, 13, 'resource', NULL, NULL, NULL, 1),
(36, 5, 31, 14, 'resource', NULL, NULL, NULL, 1),
(37, 15, 1, NULL, 'literal', '', 'Q3: la chapelle', NULL, 1),
(38, 16, 1, NULL, 'literal', '', 'R(3): 1430\n', NULL, 1),
(41, 17, 1, NULL, 'literal', '', 'R(3): 1522', NULL, 1),
(43, 15, 4, NULL, 'literal', '', 'La Sorbonne date donc du Moyen-Âge et nous pouvons supposer qu’elle ne ressemblait pas à celle de 2020 à laquelle nous sommes revenus. D’ailleurs, les tracés en double pointillé blanc situé au centre de la Cour d’Honneur correspondent à la chapelle primitive, mais si nous savions quand a-t-elle été détruite, nous pourrions sûrement daté une autre période de construction et retrouver les plans. ', NULL, 1),
(44, 15, 193, NULL, 'literal', '', 'C’est un célèbre cardinal qui fit la commande d’un nouvel édifice ', NULL, 1),
(45, 18, 1, NULL, 'literal', '', 'Q4: Le tombeau', NULL, 1),
(46, 18, 4, NULL, 'literal', '', 'Le 5 décembre 1793, des révolutionnaires saccagèrent un tombeau qui se trouvait dans la nouvelle chapelle, l\'exhumèrent et décapitèrent son cadavre… à qui appartenait-il ?', NULL, 1),
(47, 19, 1, NULL, 'literal', '', 'R(4): Cardinal de Richelieu ', NULL, 1),
(49, 20, 1, NULL, 'literal', '', 'R(4): Robert de Sorbon', NULL, 1),
(51, 18, 193, NULL, 'literal', '', 'Rendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.', NULL, 1),
(52, 18, 194, NULL, 'literal', '', 'Il s’agit d’un des proviseurs de la Sorbonne.', NULL, 1),
(53, 18, 35, 19, 'resource', NULL, NULL, NULL, 1),
(54, 15, 35, 26, 'resource', NULL, NULL, NULL, 1),
(57, 21, 187, NULL, 'literal', '', 'Joueur A', NULL, 1),
(58, 21, 188, NULL, 'literal', '', 'joueur', NULL, 1),
(59, 22, 187, NULL, 'literal', '', 'Joueur S', NULL, 1),
(60, 22, 188, NULL, 'literal', '', 'joueur', NULL, 1),
(61, 23, 187, NULL, 'literal', '', 'Joueur G', NULL, 1),
(62, 23, 188, NULL, 'literal', '', 'Joueur ', NULL, 1),
(63, 23, 1, NULL, 'literal', '', 'Gaya', NULL, 1),
(64, 22, 1, NULL, 'literal', '', 'Samszo', NULL, 1),
(65, 21, 1, NULL, 'literal', '', 'Anis ', NULL, 1),
(70, 5, 31, 24, 'resource', NULL, NULL, NULL, 1),
(71, 5, 197, NULL, 'literal', '', 'La Sorbonne tire son origine du collège créé en 1253 par Robert de Sorbon, chapelain et confesseur du roi saint Louis qui en confirma la fondation en 1257. Nous pouvons donc récupérer les plans à partir de 1253. ', NULL, 1),
(73, 24, 1, NULL, 'literal', '', 'R(2): 1347', NULL, 1),
(75, 15, 31, 16, 'resource', NULL, NULL, NULL, 1),
(76, 15, 31, 17, 'resource', NULL, NULL, NULL, 1),
(77, 15, 31, 25, 'resource', NULL, NULL, NULL, 1),
(78, 25, 1, NULL, 'literal', '', 'R(3): 1622', NULL, 1),
(79, 26, 1, NULL, 'literal', '', 'R(3): 1635', NULL, 1),
(80, 15, 197, NULL, 'literal', '', 'En 1635, le cardinal de Richelieu, alors proviseur du collège de Sorbonne, commande à l’architecte Jacques Lemercier un nouvel édifice aux exigences et au goût de l’époque dont il ne reste aujourd’hui que la Chapelle. ', NULL, 1),
(82, 18, 31, 28, 'resource', NULL, NULL, NULL, 1),
(83, 18, 31, 27, 'resource', NULL, NULL, NULL, 1),
(84, 27, 1, NULL, 'literal', '', 'R(4): Napoléon Bonaparte', NULL, 1),
(85, 28, 1, NULL, 'literal', '', 'R(4): Victor Hugo', NULL, 1),
(86, 18, 31, 20, 'resource', NULL, NULL, NULL, 1),
(87, 18, 197, NULL, 'literal', '', 'C’est dans le chœur que se trouve le tombeau du fameux Armand Jean du Plessis, cardinal-duc de RICHELIEU (1585-1642). A la mort du cardinal, la duchesse d’Aiguillon, sa nièce et héritière, prit en charge ses dernières volontés. Elle commanda un tombeau monumental à Girardon, qui ne fut achevé qu’en 1694, le corps de Richelieu étant déposé dans une crypte sous le cénotaphe.', NULL, 1),
(88, 29, 1, NULL, 'literal', '', 'Q5: système d’enseignement ', NULL, 1),
(89, 29, 4, NULL, 'literal', '', 'Au XIXe siècle c’est le temps des grands travaux sous la Troisième République en Sorbonne. Qui réorganisa l’ensemble du système d’enseignement supérieur français, baptisé Université impériale ? ', NULL, 1),
(90, 29, 193, NULL, 'literal', '', 'Il s’agit d’un empereur. ', NULL, 1),
(91, 29, 194, NULL, 'literal', '', 'Ça commença en 1806. ', NULL, 1),
(92, 29, 197, NULL, 'literal', '', 'À partir de 1806, Napoléon réorganisa l’ensemble du système d’enseignement supérieur français, baptisé Université impériale, et créa à Paris cinq facultés dont le but était de former les enseignants des établissements secondaires et des séminaires : les facultés des sciences, des lettres, de théologie, de droit et de médecine. La Sorbonne devint alors le siège des trois premières, ainsi que du rectorat de l’Académie de Paris auquel était attachée la fonction, spécifique à Paris, de Grand Maître de l’Université. Au départ, ces trois facultés s’installèrent au collège du Plessis. Ce n’est qu’en 1821 qu’elles rejoignirent l’ancienne Sorbonne abandonnée trente ans plus tôt. ', NULL, 1),
(93, 29, 35, 30, 'resource', NULL, NULL, NULL, 1),
(94, 30, 1, NULL, 'literal', '', 'R(5):Napoléon Bonaparte', NULL, 1),
(95, 31, 1, NULL, 'literal', '', 'R(5): Jules Ferry', NULL, 1),
(96, 32, 1, NULL, 'literal', '', 'R(5): Louis Pasteur', NULL, 1),
(97, 33, 1, NULL, 'literal', '', 'R(5): Octave Gréard', NULL, 1),
(98, 29, 31, 33, 'resource', NULL, NULL, NULL, 1),
(99, 29, 31, 31, 'resource', NULL, NULL, NULL, 1),
(100, 29, 31, 32, 'resource', NULL, NULL, NULL, 1),
(102, 34, 1, NULL, 'literal', '', 'Q6: 6)	La reconstruction des bâtiments  ', NULL, 1),
(103, 34, 4, NULL, 'literal', '', 'La reconstruction des bâtiments du XVIIe siècle, trop exigus et incommodes, fut finalement réalisée sous l’impulsion de ? ', NULL, 1),
(104, 34, 193, NULL, 'literal', '', 'Il s’agit d’un ministre de l’Instruction publique.', NULL, 1),
(105, 34, 197, NULL, 'literal', '', 'La reconstruction des bâtiments du XVIIe siècle, trop exigus et incommodes, fut finalement réalisée sous l’impulsion de Jules Ferry, ministre de l’Instruction publique. Le chantier fut confié à l’architecte Henri-Paul Nénot et la première pierre du nouvel édifice fut posée en 1885. Outre la construction d’un Palais académique où siégeait l’administration rectorale, les anciens bâtiments du XVIIe siècle laissèrent place à la Cour d’honneur, la Chapelle en restant le seul élément conservé. On construisit également une vaste bibliothèque de 300 places qui comptait plus de 600 000 volumes en 1913. ', NULL, 1),
(106, 34, 35, 38, 'resource', NULL, NULL, NULL, 1),
(107, 34, 31, 37, 'resource', NULL, NULL, NULL, 1),
(108, 35, 1, NULL, 'literal', '', 'R(6): Louis Pasteur', NULL, 1),
(109, 36, 1, NULL, 'literal', '', 'R(6): Victor Hugo', NULL, 1),
(110, 37, 1, NULL, 'literal', '', 'R(6): Octave Gréard', NULL, 1),
(111, 38, 1, NULL, 'literal', '', 'R(6): Jules Ferry', NULL, 1),
(112, 34, 31, 36, 'resource', NULL, NULL, NULL, 1),
(113, 34, 31, 35, 'resource', NULL, NULL, NULL, 1),
(116, 6, 31, 7, 'resource', NULL, NULL, NULL, 1),
(117, 6, 31, 9, 'resource', NULL, NULL, NULL, 1),
(118, 6, 31, 10, 'resource', NULL, NULL, NULL, 1),
(121, 39, 1, NULL, 'literal', '', 'Q7: L\'enseignante à la Sorbonne. ', NULL, 1),
(122, 39, 4, NULL, 'literal', '', 'En 1906 une femme devient la première femme enseignante à la Sorbonne. De qui s’agit-il ?', NULL, 1),
(123, 39, 193, NULL, 'literal', '', 'Rendons-nous dans le Hall des Amphithéâtres, l’un d’eux porte son nom.', NULL, 1),
(124, 39, 194, NULL, 'literal', '', 'C’est une scientifique .', NULL, 1),
(125, 39, 197, NULL, 'literal', '', 'Le 5 novembre 1906, la leçon de la physicienne française d\'origine polonaise, Marie Curie, née Maria Sklodowska, est l\'événement. Journalistes, femmes du monde et professeurs prennent place à côté des étudiants pour assister à ce premier cours. Elle débute en expliquant la radioactivité et les travaux de Becquerel. Des thèmes sur lesquels elle a beaucoup travaillé avec mari. ', NULL, 1),
(126, 39, 35, 43, 'resource', NULL, NULL, NULL, 1),
(127, 40, 1, NULL, 'literal', '', 'R(7) : Simone de Beauvoir', NULL, 1),
(128, 41, 1, NULL, 'literal', '', 'R(7) : Simone Weil ', NULL, 1),
(129, 42, 1, NULL, 'literal', '', 'R(7) : Jacqueline de Romilly', NULL, 1),
(130, 43, 1, NULL, 'literal', '', 'R(7): Marie Curie', NULL, 1),
(131, 39, 31, 42, 'resource', NULL, NULL, NULL, 1),
(132, 39, 31, 40, 'resource', NULL, NULL, NULL, 1),
(133, 39, 31, 41, 'resource', NULL, NULL, NULL, 1),
(135, 44, 1, NULL, 'literal', '', 'Q8: 13 universités .', NULL, 1),
(136, 44, 4, NULL, 'literal', '', 'En quelle année l’Université de Paris éclate-t-elle en 13 universités Parisiennes ?', NULL, 1),
(137, 44, 193, NULL, 'literal', '', 'C’est dû à un mouvement contestataire. ', NULL, 1),
(138, 44, 197, NULL, 'literal', '', 'les événements de mai 1968 ne commencèrent pas en Sorbonne, mais dans l’une des nouvelles facultés qui venaient d’être construites précisément pour faire face au boom des études supérieures : la faculté de Nanterre. Lorsque la contestation gagna le Quartier latin, la Sorbonne fut occupée à son tour plusieurs fois au cours du mois de mai et devint rapidement un symbole international de la contestation étudiante, jusqu’à son évacuation définitive entre les 14 et 16 juin. \n\nLe processus de réforme qui se mit en place au lendemain du mouvement entraîna l’éclatement de l’Université de Paris en neuf – puis plus tard treize – universités. Sous l’impulsion du ministre de l’Education nationale, Edgar Faure, la loi d’orientation de l’enseignement supérieur du 12 novembre 1968 accordait aux nouvelles universités une autonomie limitée : les nouveaux établissements seraient désormais dirigés par un président, professeur élu par un conseil d’administration. \n', NULL, 1),
(139, 44, 35, 48, 'resource', NULL, NULL, NULL, 1),
(140, 45, 1, NULL, 'literal', '', 'R(8) : 1918', NULL, 1),
(141, 46, 1, NULL, 'literal', '', 'R(8) : 1939', NULL, 1),
(142, 47, 1, NULL, 'literal', '', 'R(8) :  1945', NULL, 1),
(143, 48, 1, NULL, 'literal', '', 'R(8) : 1968', NULL, 1),
(144, 44, 31, 47, 'resource', NULL, NULL, NULL, 1),
(145, 44, 31, 46, 'resource', NULL, NULL, NULL, 1),
(146, 44, 31, 45, 'resource', NULL, NULL, NULL, 1),
(148, 49, 1, NULL, 'literal', '', 'Q9: la sorbonne est. ', NULL, 1),
(149, 49, 4, NULL, 'literal', '', 'En 2020, la Sorbonne est ?', NULL, 1),
(150, 49, 193, NULL, 'literal', '', 'C’est le siège du rectorat de l’académie Paris et de la Chancellerie des Universités de Paris.', NULL, 1),
(151, 49, 197, NULL, 'literal', '', 'La Sorbonne est un bâtiment du Quartier latin dans le 5e arrondissement, c\'est une propriété de la ville de Paris. ', NULL, 1),
(152, 49, 35, 51, 'resource', NULL, NULL, NULL, 1),
(153, 50, 1, NULL, 'literal', '', 'R(9) :  Une université', NULL, 1),
(154, 51, 1, NULL, 'literal', '', 'R(9) : Un bâtiment', NULL, 1),
(155, 52, 1, NULL, 'literal', '', 'R(9): Une faculté', NULL, 1),
(156, 53, 1, NULL, 'literal', '', 'R(9): Un collège', NULL, 1),
(157, 49, 31, 52, 'resource', NULL, NULL, NULL, 1),
(158, 49, 31, 50, 'resource', NULL, NULL, NULL, 1),
(159, 49, 31, 53, 'resource', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://ontology.cybershare.utep.edu/ELSEWeb/elseweb-data.owl#Theme', 'thème ', 'thème ', ''),
(7, 1, 'https://Escape_Sorbonne.fr/onto/escapesorbonne', 'escapesorbonne', 'escapesorbonne', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
