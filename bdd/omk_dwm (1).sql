-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  ven. 21 fév. 2020 à 12:55
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
(5, 'items', 1, 1, 'Question 2', 'gaya\ngayarainbow@gmail.com \nQuestion 2\nQui est le fondateur de la Sorbonne ? \nréponse II\nréponse III\nréponse IV\nréponse I'),
(6, 'items', 1, 1, 'Question 1', 'anis\nanis.bela1997@gmail.com\nQuestion 1\nQuelle est la date de fondation de la Sorbonne ? \nRéponse 2\nréponse 3\nréponse 4\nRéponse 1'),
(7, 'items', 1, 1, 'Réponse 2', 'Réponse 2\n1250'),
(8, 'items', 1, 1, 'Réponse 1', 'Réponse 1\n 1257'),
(9, 'items', 1, 1, 'réponse 3', 'réponse 3\n1290'),
(10, 'items', 1, 1, 'réponse 4', 'réponse 4 \n1233'),
(11, 'items', 1, 1, 'réponse I', 'réponse I\nRobert de Sorbon'),
(12, 'items', 1, 1, 'réponse II', 'réponse II\nRichelieu'),
(13, 'items', 1, 1, 'réponse III', 'réponse III\nLouis XIV'),
(14, 'items', 1, 1, 'réponse IV', 'réponse IV\nPhilippe VI');

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
(11),
(12),
(13),
(14);

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
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.');

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
(5, 1, NULL, 2, NULL, 'Question 2', 1, '2020-02-07 15:24:11', '2020-02-20 22:27:08', 'Omeka\\Entity\\Item'),
(6, 1, NULL, 2, NULL, 'Question 1', 1, '2020-02-07 15:25:15', '2020-02-20 22:29:28', 'Omeka\\Entity\\Item'),
(7, 1, NULL, 3, NULL, 'Réponse 2', 1, '2020-02-07 15:26:51', '2020-02-20 21:09:20', 'Omeka\\Entity\\Item'),
(8, 1, NULL, 3, NULL, 'Réponse 1', 1, '2020-02-07 15:28:21', '2020-02-20 21:00:08', 'Omeka\\Entity\\Item'),
(9, 1, NULL, 3, NULL, 'réponse 3', 1, '2020-02-20 21:10:38', '2020-02-20 21:10:38', 'Omeka\\Entity\\Item'),
(10, 1, NULL, 3, NULL, 'réponse 4', 1, '2020-02-20 21:45:22', '2020-02-20 21:45:22', 'Omeka\\Entity\\Item'),
(11, 1, NULL, 3, NULL, 'réponse I', 1, '2020-02-20 21:51:26', '2020-02-20 21:51:26', 'Omeka\\Entity\\Item'),
(12, 1, NULL, 3, NULL, 'réponse II', 1, '2020-02-20 21:53:56', '2020-02-20 21:53:56', 'Omeka\\Entity\\Item'),
(13, 1, NULL, 3, NULL, 'réponse III', 1, '2020-02-20 21:54:40', '2020-02-20 21:54:40', 'Omeka\\Entity\\Item'),
(14, 1, NULL, 3, NULL, 'réponse IV', 1, '2020-02-20 21:56:01', '2020-02-20 21:56:01', 'Omeka\\Entity\\Item');

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
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.');

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
(4, 1, NULL, NULL, NULL, 'users');

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
(27, 4, 98, NULL, NULL, 1, NULL, 0, 0),
(28, 4, 123, NULL, NULL, 2, NULL, 0, 0),
(29, 2, 10, NULL, NULL, 1, NULL, 0, 0),
(30, 2, 123, NULL, NULL, 2, NULL, 0, 0),
(31, 3, 10, NULL, NULL, 1, NULL, 0, 0),
(32, 3, 123, NULL, NULL, 2, NULL, 0, 0);

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
('13po4jka4sdlv6hahpm61a6s9r', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538323238393432322e3330353231353b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22703138686b7673656233346e387530766b643369766662756268223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323239323530313b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323239333032323b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538323239323839383b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f657344574d2f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226364353931393263623533646137653635396239343332376235363763313236223b733a33323a223733636466626338643935303431386661646435313431623535666637613936223b7d733a343a2268617368223b733a36353a2237336364666263386439353034313866616464353134316235356666376139362d6364353931393263623533646137653635396239343332376235363763313236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223539663137323335623166623639613465363662343561666435373535363335223b733a33323a223336616636636132616630616436613133343838333261623133613263386532223b733a33323a223939636639393535663732646165633533323863643132356538306639313033223b733a33323a223934313934313537646664316465313637303736636434346261656461663564223b733a33323a226231623437656334343938623761653361616266333237663337393839663262223b733a33323a223231356136646136643734363738343638366264663039646233386466336363223b733a33323a223636386666313062643430383335343662383563626339313133313331633338223b733a33323a226233366561373463396261626362626237393530653366633763653836363036223b7d733a343a2268617368223b733a36353a2262333665613734633962616263626262373935306533666337636538363630362d3636386666313062643430383335343662383563626339313133313331633338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226236616466353838366664393538316562363039393061333432393963383639223b733a33323a223563353164613531666266373464383261613561316363633865656266326162223b733a33323a226133633733643733636239366661323564313961633135356336396261343264223b733a33323a226130343734343032336162626662646138336364373363383766626435313862223b733a33323a223334383965663764633036306136636436376166303961323339623530303438223b733a33323a226532383566663566666364636537623461613261363130333962623837303934223b733a33323a226635633861663035313565656333393231383032373266646536376634663433223b733a33323a226534623535623563656136393839643066376266323562343139396636306230223b7d733a343a2268617368223b733a36353a2265346235356235636561363938396430663762663235623431393966363062302d6635633861663035313565656333393231383032373266646536376634663433223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1582289422),
('ar20rr22r97rb6uceql0l5mhkq', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538313039303735382e3437363737393b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22767333626c6636316e676c346d33667033386a75337372313275223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538313038373932323b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538313039323236343b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538313039343335363b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538313039343332373b7d733a33343a225a656e645f56616c696461746f725f437372665f73616c745f666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538313039343335383b7d7d5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223035386538636164356665616137343130396234346363346134653731303537223b733a33323a226230663461613261363863626536316561373931306632386563346437653535223b7d733a343a2268617368223b733a36353a2262306634616132613638636265363165613739313066323865633464376535352d3035386538636164356665616137343130396234346363346134653731303537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3739313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a363a7b733a33323a223631323765313739636637323330306161393336366165623731303935366630223b733a33323a223634643662623133396635366362613363323730626534643062313236373034223b733a33323a226565626331366664656533626335363530303733353238653133353866623766223b733a33323a223539643931613832336665363466363031626433303037346165326463303735223b733a33323a223764326434353031333930663631346135366538653732356164366331333937223b733a33323a223039316161633636653330353936663733626662393962656633356639346531223b733a33323a223564323335303864323432386235373938376433363930666433643762623264223b733a33323a223830396633626431633061636333333463636664396438383166393932626563223b733a33323a226635373334373862333238363738626336653364333264616566653534613631223b733a33323a226163373639616165366533623335616433356234303939373064333838343561223b733a33323a223138343061643266636537363732363533386439616663666630386632386235223b733a33323a223961386230656434386432376631313932623736383865326530313062353661223b7d733a343a2268617368223b733a36353a2239613862306564343864323766313139326237363838653265303130623536612d3138343061643266636537363732363533386439616663666630386632386235223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323339323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32363a7b733a33323a226263646530663338333963353462333339333535636136613438383063336138223b733a33323a223562353638623234393332333039333362396437353639306262646537633430223b733a33323a223039666434363863303038653537653065303235626133353737333939373333223b733a33323a226362653439366431646231326638386134653331386634376433363465663432223b733a33323a226662373330656262663164313130663964636633383663333565376237643364223b733a33323a223765646339393362663564663434613666303430303234386363313330666237223b733a33323a223965656333663139363435643162646264343331623839613032653635336531223b733a33323a226263393665323665346338376135346461353532336362336137383333643462223b733a33323a223662656534343663616131393763313161386266663633333632346630643836223b733a33323a226231306131376539643737326236303034643231306461343866653666333561223b733a33323a226562653139343538323633336566393566613437303739633230343364323235223b733a33323a226435646264613234323464386263656235383534656131626135396230613038223b733a33323a226333633136303161306464643363636432366166336234373832663464626434223b733a33323a223039303637633234346432393932613035326163643765353931356534653736223b733a33323a223663613830313235313337363165346638646535386661396264346533353333223b733a33323a223463353961616436316163666533646561343532613037643539616333346331223b733a33323a223734383566393938643836626430323466303739666165636236353665653562223b733a33323a223738336538303731353732346135376633333164346637336566336339613131223b733a33323a223230376161393231373131386335653062326432623438353762663635306663223b733a33323a223031666335653665623439343666643935623731383261613639613863353934223b733a33323a226433613434303836303465323639663763303732613664366231353131643265223b733a33323a226432663139323835626636393637373732393764646237613930313339656462223b733a33323a223566303866343232643233356338613131643836386537613636303765353134223b733a33323a223233623932656465626338333538663265373461626562633638623165323364223b733a33323a226264626265353332306236663635376665633461333861353332333632396133223b733a33323a223434663230613835336337346161326564303238613939393866353532646436223b733a33323a223734346530373063383335303439616334666438373865303531303866346530223b733a33323a226463373566613664663063333034303362373338333066393964616662363863223b733a33323a226165616564313434303665356636356435383638373834613165323436383536223b733a33323a226134303531666335363437386132656630646639323839333262356562333636223b733a33323a226566383130613566303431313332343632346665633837383364376362623338223b733a33323a223330383363343432656533373865623030613635663664363265323139306562223b733a33323a226665623666636661343136306235353834336533333531646636396335666264223b733a33323a223734323064636232373039316639633034363930356565393035323734363362223b733a33323a223463643836306431353732306537616462653933326633373362653566656136223b733a33323a223065636632346263653365343436383037626364656338633864353833663065223b733a33323a223565363565613537356363336631616132303064363666616665333062373264223b733a33323a226533613166633366663636393832663131353639393865646136646531623764223b733a33323a226639326164323434643263376466373863323531393439393563666265633364223b733a33323a223834646335373233323066336231623364633066646339333062396165386338223b733a33323a223130363661623136373931663261643334633235383139356266396630623165223b733a33323a226436303164396130386235363264613263653731633963336539613063346536223b733a33323a223434353738613039363833643363393963306535313035303338393432393331223b733a33323a223961313933633336633062666336396635623539346538376334326630663365223b733a33323a226230343130303166346266323666316565303130613466383531633930363438223b733a33323a223339353739626662383736333533623035633466646338306439623465343035223b733a33323a223838356666643436303939646562336633373532343638633934323663656333223b733a33323a223731373964333631323564376236646564636163666330373162333062366635223b733a33323a223666353931336164303439346235643263666135363831613630373637653566223b733a33323a223130343666653166346166326561303636633832316430346132656135633566223b733a33323a226162613331316631326138356234333835663161333265616663653266363062223b733a33323a223964613439386366323737393832366536336361343564303964396635363765223b7d733a343a2268617368223b733a36353a2239646134393863663237373938323665363363613435643039643966353637652d6162613331316631326138356234333835663161333265616663653266363062223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a363437323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a37373a7b733a33323a223532666136363937326432363862653064373431393032663861623162623163223b733a33323a223834356238343638663436653439306137623465313131313831373537303731223b733a33323a223663343665363434386232623166396633366364646238323734623561633566223b733a33323a223630383332336336363339376639306138356333656631336364326566666132223b733a33323a223661386432386461383961346362353837343166383538303630333536633964223b733a33323a223635313535356565643162646334643362646664336236353564386564386462223b733a33323a223066333631363634373631653535366132326333373233316262356233656463223b733a33323a223039366635363235373133633532396336323462623862333965653332393233223b733a33323a226361353062373436306232313132333866373766383531663139366531613061223b733a33323a226633313663336339623835346138313336326565356566323536663430646239223b733a33323a226164366464623338633866333833636236663166373034353365303537626163223b733a33323a223739323635333534326136653237616261646234383064353537623866353836223b733a33323a223866636266383939386638353734313662393764626631663932613833313135223b733a33323a226235616666663961363666633933623831633439613539383237363238636262223b733a33323a223064613431343461313164623131383563633537363266363463353861336361223b733a33323a223039323361376334353831633761623139633938353963653132306631373435223b733a33323a223835656634353839656132346131316330653036326330353336663030663436223b733a33323a223139323737323266353734313765643765373561303834323837626531313436223b733a33323a226566393239346534653434356138326638363234386665356463376163613838223b733a33323a223731653265363933666462616230363834386435353535363166376264343539223b733a33323a226237386261643861633432643162353535303439383861643036343934343137223b733a33323a223231386334306433616138336134623437306438613235343233666239646463223b733a33323a226664323731343362613161373366663763633436323032643431303339636436223b733a33323a223534653166333131346136303232306164633863633836663566653538623738223b733a33323a223730383164326537396166626132383664356331306435343466343536633831223b733a33323a226262656266323536396262336138653936363830616336393037633435366630223b733a33323a226330343466323638336466613137363530336537346531653363363564336530223b733a33323a223330623464613232613630613833393832356264623131656531313262363363223b733a33323a226566663539323961646637333239626338313939646165636663333162316463223b733a33323a223134646431656134633937346564336432313333366431663135646231383230223b733a33323a223766376236643466643739333035623764333365643335346561643430316361223b733a33323a223166623135353631343834363736623037323761636135386432363534376230223b733a33323a223162646633376663666164383237643966336262303739373965626465613431223b733a33323a223838336564656435663364323537326436326565653665333462343466666536223b733a33323a223762333363376461353132303333393034373266643331616632373339313735223b733a33323a226236393266313065303933336433333338363536643432343639626230396534223b733a33323a223564383934353435393135636630373139313937613762343462623138643232223b733a33323a223931656363663166623266363436306362626465643435363338386232633862223b733a33323a223865613834643634346662393435653138653266363439653537346233663932223b733a33323a223930613331663266663933373835316236303761623764663130633664386636223b733a33323a226434393433393637346438346633353261646137333966666435353236666430223b733a33323a223339653431333434656232633863313337663464346230306633353530633336223b733a33323a223539343166646561366230313634316366343362336634303735363633303664223b733a33323a226261666635633333356532666134663037333065653133366138646661656438223b733a33323a223232363031353863646333356236343634623032623864393465633066323065223b733a33323a226636666139316362336234363166363731363732366239376562653639343137223b733a33323a223266346533306164643832373239646434313464636536386464333363393130223b733a33323a223237393538376532366635656434613533393534326131613933653834393565223b733a33323a223630663830336137633333303830336262366532373333313466663636383336223b733a33323a226664323962333139326636383637376535613266373566313763613164333939223b733a33323a223236303637373166663739363832366537356161313930353936383135666236223b733a33323a226361386665366664643330316135623164323538643431326361626234366466223b733a33323a223138313735373137396131313436633563393837636664313261643038376665223b733a33323a223962306337643931303437363662393638313931666163346264333265326337223b733a33323a223338626264663761343566303765626530353962656333656664616166363063223b733a33323a226430643262306235363462653765636138626664633038366662336564383130223b733a33323a223632613531336639363866313035663232326531616233326466653932396435223b733a33323a226335666137313030323739373537613839633665653031346431633963386330223b733a33323a226464656162356164373962633634303437343864333465633432663463666262223b733a33323a226366656635383435623239323764623639333830373565323639613665343835223b733a33323a223164663335636337373735643137643337613831616330613861613063326266223b733a33323a223131363636386237353362303330343963613834306437646439373162623836223b733a33323a226165333864306435663335643464313964656338316665306434353061316136223b733a33323a223761323836336166646364303033316434326234656464303532313234633964223b733a33323a226133643165316163363133333732356234373436643666656333326230313266223b733a33323a223932366533336333663362643332616135656138363236336536313866383562223b733a33323a223532663437396466323934343737333232386235623237376637363166646634223b733a33323a223566623865343430306130323364396336303862323266316161336339646262223b733a33323a223432653533633538623132313738313861383363663361383835353035636666223b733a33323a226539393132326365646566363236616366613134353237353731636230613765223b733a33323a223232323865353964376133303330356264623535636462303365356163386433223b733a33323a226565643633353034323361326464633466383939663431633137346464356533223b733a33323a226336323632353037373435396330643663643463316535346265326539313062223b733a33323a226464343930613533303138393337306137306235326361623861333332666566223b733a33323a226235303261633735306438383464373263626563613162306166363863373663223b733a33323a223465303832633434396436623862353431616266636439383332343163356235223b733a33323a223239313234303539663131646238343630653236653161343935396435646566223b733a33323a226139653566643966323136306138373737653366626362656331613232383939223b733a33323a223063643866666361616234363261363031656137616539366630303431613964223b733a33323a226135376432663939383064613962663237656166313763643531623964666333223b733a33323a226631396564303835393065353739653834373437386434363937373463336430223b733a33323a223266376138343766346361373035303837326263623238373135323663623233223b733a33323a226337383432353435376665633661366162346437643538623466353766653366223b733a33323a226336353564373835643661623832373731376162333632376332363662616230223b733a33323a223235333461396431666639366262653138396563336262316133643030663438223b733a33323a226138373466356636366439316364326632656364343763393762656533346538223b733a33323a226539653664636233353961393464623036383331626665633662376366303962223b733a33323a223761616663626665623361663638653538353331653539396434396538613665223b733a33323a223731626232356262366134393161363838333836363462316566333934316236223b733a33323a223363323433373135633361326338353064383438663933383366373837303839223b733a33323a226238343965363733396339323930333561653061333335316663393439383537223b733a33323a223130646531306239626630303632303430343934336538616331626463633736223b733a33323a223830636566326163326433343439636239303134333062656134323032343533223b733a33323a223165616237323433333938623931306566643261663430623833363762363931223b733a33323a226139636630346235386461343137396434363534653233376633346430613465223b733a33323a226432613333643564346530613366653131366132613336396632656665666264223b733a33323a226266656239303562353430326566386438336135303631396132623361306132223b733a33323a223539346231393065323665653039303339313833653136306662623537333338223b733a33323a226235313031323362313363663935613038346331326363363864663639643137223b733a33323a223234313033653961623833636462636665303232643962313561663963346133223b733a33323a223033333239373666393339666434633662626431636630626630613236656562223b733a33323a226462613361323565376662303461396434623737613065303164643334323462223b733a33323a223435646431626266306337316465326565313161613364326166323535393833223b733a33323a223739393238636537383036383533633838303566663263373365663263343938223b733a33323a226664383565666162383739396630626636323031663465656237373138636233223b733a33323a223662333561316662613864633262623064626166353837636566316639306638223b733a33323a223931356161663938353339343230376162313335656163306264636537326262223b733a33323a223264323039366137353965613237633039613835613038633733386335333864223b733a33323a223164336336336563363164626464663166303464326137663737383463623036223b733a33323a223565376333363932383530656463383430316437313162323234386335376433223b733a33323a223433313536653830336132393664663766656534643564353364613535663838223b733a33323a223636313264366466633135353231646530613532646265393530656337616366223b733a33323a223330653365393735616638313165613463616238666136353034356263303564223b733a33323a223933396133643030396531376533623033633631363532623566663134386566223b733a33323a223237623461376338303334386261613064613566396536336564643861383764223b733a33323a226366353033303262376163643837336266326662623062623861323137356434223b733a33323a223366643833316165663733346631386661613934653562343135623261663438223b733a33323a223035656331653263313337313036373534636637333131396464666237373639223b733a33323a223665626137376333313637616533613063366330656564386137633832663562223b733a33323a223139316336373665333564656163656164653835393164333839303635643162223b733a33323a223262306536613332663237366335643833616534626235636538343966316431223b733a33323a223666393139353963623762653839396132663038656438333562626636626431223b733a33323a223165353434663133353837386132376565643334656566336139383437373131223b733a33323a226564393965383861343034323233396664393363656631353831613264396163223b733a33323a223965666332343834303136666363336635343861303536653062623434306566223b733a33323a223338323937363338363062356530306261633666363765303435323338323331223b733a33323a223262363865313737346132636266636665373135363930313235316138316563223b733a33323a223766313331653963346264356464333539613761353134333236366564623666223b733a33323a223133366134363536353432326463366432343539613565653530313033656562223b733a33323a223365303561346439313263306534643861626162323836316532393933343463223b733a33323a223937363833396234383631396632303265316562663030336262393461313534223b733a33323a226439316661393330626231363736383431393330373539643633373037323232223b733a33323a223435323932663330303636366362633932633433326464353130363832626436223b733a33323a223862386631373135633733653762313534323161323139323434383630636239223b733a33323a223330383632623362626632623936363139653432386566386365373134393362223b733a33323a223732363532343331643736666630386634356131663761303837353761643238223b733a33323a223435323138623231623533346239396137323830336439383332326361306437223b733a33323a223264363764653162313062373236663931316131303636323137396330333263223b733a33323a226238333364333162346331393534643963396265373139616135653337333332223b733a33323a223735613361396363643937353239356233396161383566386238343533383362223b733a33323a223462306132326636313664346538623238623638623161323532653438306561223b733a33323a223064663261353230666238353936373937376662623533306663363831346239223b733a33323a223831313664623934663236346166653464353361663937626663636133353633223b733a33323a226238633936396164616531666261343661353737303261363965363464653165223b733a33323a226662373630373538666431656161373463633034396631633663636630376561223b733a33323a226639353965646334653163633466353364356333353133346439343366363737223b733a33323a226565363736656538626161343237306334363435326363396232366265626530223b733a33323a223463633436373664643965333964326532303163356234386466666364626430223b733a33323a226531353963623666323762343131633366393530396662333862306631373864223b733a33323a226639666366656236373565663435396535626534633334653262336264383933223b733a33323a223532656636336263313338376564333633363835613932626531356561303132223b733a33323a223862613938343130353034656339373334393138386536363036396464623435223b733a33323a223166643964636338616637356539643735313062613433643762373535366634223b733a33323a226562333661313062666364663061663466636337343332353463653436383737223b7d733a343a2268617368223b733a36353a2265623336613130626663646630616634666363373433323534636534363837372d3166643964636338616637356539643735313062613433643762373535366634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223861656231656338666261366635346238373865323138656364633835386564223b733a33323a223431653932633135613864386666363932343230373634626662643138663936223b733a33323a223635356462623761343137646231616366396363323236373661383865306364223b733a33323a223236353231356531333731373738373934633535633133333438303266636263223b733a33323a223166363932356563613031633961313532343337643535333066343235363931223b733a33323a223934323239653033346565393461303236313461393039363734656366386636223b733a33323a223733383861623133386131633730313632376534313036393430633338373835223b733a33323a223766333431316163363534626530663933656164313339616365666232616437223b733a33323a226464366634393530353139336336656566336664646432636361356465343031223b733a33323a223161333035373961633633323661323265313965663031626564323238343433223b733a33323a223837363363316363653636633466663936313061623439363038303161393862223b733a33323a226131303733623964653162346139363563303366663465616230383361653637223b733a33323a223137623730313637346639323435363962646231316131626336343261393530223b733a33323a223531373662636436633438346331366365323362356237643063346631323238223b7d733a343a2268617368223b733a36353a2235313736626364366334383463313663653233623562376430633466313232382d3137623730313637346639323435363962646231316131626336343261393530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1581090758),
('btrm16e06ial4asvjdpb28nm45', 0x5f5f5a467c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538323230363530362e3135313530343b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22686e376e33617134346932677430616f6e6d377369756f717433223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323230363638393b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323231303130363b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323231303130363b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f657344574d2f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226136636132306239613532353333316263323866653335623839663438383532223b733a33323a223738366134383162623637326636393563366565653037303564326139643232223b7d733a343a2268617368223b733a36353a2237383661343831626236373266363935633665656530373035643261396432322d6136636132306239613532353333316263323866653335623839663438383532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a226366366134666166326239623730346465343464386466643865363934623732223b733a33323a226436643137383434613739393466323930373662316665343933313565353266223b733a33323a226465396637346432313966643665643764326537363833623330643232363535223b733a33323a223336346466376637326336383334363565356261376338363032623363313431223b733a33323a226665633230653037396637663634633365333930616430653463666262393338223b733a33323a226537633939333865626237663161383336383538383135306134626466616632223b733a33323a223836656637653036303864366338383263326436393831323264663434383262223b733a33323a226636343732373833386363376638643434623661376337373932643537336166223b733a33323a226561646132646635653836333037646536363134356435633064306239383330223b733a33323a226436396338643932343739313761363066633034333066396666353934356133223b733a33323a223962626465623135336232313935366663633161366135396632393265623461223b733a33323a223564303638643234333365626266356465643236333130613561363337623039223b733a33323a226437653065326334623236366137353135313932316464633839316538393232223b733a33323a226665613930373036386138663661613538343265393432653739653061323766223b733a33323a226438333765316138646237393532393162326332636362393531303338653033223b733a33323a223439393134646533623464666264636433353037393964316533306261653336223b733a33323a226161333664333437666137333663373837313332333532316632653935383165223b733a33323a226466363565396538373361653965613136316262643235383631343536636530223b733a33323a223934363261373066663131333631313332316362303161373633653836393634223b733a33323a223938643561326633616536316639386436363566656566633165326135656132223b7d733a343a2268617368223b733a36353a2239386435613266336165363166393864363635666565666331653261356561322d3934363261373066663131333631313332316362303161373633653836393634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a313033313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a393a7b733a33323a226635386638323137646534333530656431666633656561643637343936376663223b733a33323a223636316131613462666263343564393435373138306536366135396335383139223b733a33323a223235303630643666656131666563303939653466623061383335643435376135223b733a33323a223430623230393036643532633534363931616138373233343431313136336233223b733a33323a223537363461306163636262383266623332663832323636373834366531323362223b733a33323a223564396235653533323366656232316630653333363135643561653031316537223b733a33323a226434316438633531663465656562646431353138666639386334326532373735223b733a33323a223533343733323664303465613933333534333339313466643464376265623566223b733a33323a223664396234353138616264376561383666616564366131393837306638383637223b733a33323a223131383133353439313763356634323862366162353766393830633038616562223b733a33323a226135653935393264386563663437393432323561656366333836376230313738223b733a33323a223239643630383138633764333233353364356262333062313762363735373865223b733a33323a223564366464616164613864373933353062396635643562326365363030356266223b733a33323a223135386430313131623638656239666136613462333864663462343630626233223b733a33323a226333643135643230316333313036666538383762626434356437646530323333223b733a33323a223262626462346661346138653637316632636235333162383331396537373363223b733a33323a223866383162613635386262383537663062336130623530393062353138333564223b733a33323a226663326134333433653438616631353634643931393136323431666438663936223b7d733a343a2268617368223b733a36353a2266633261343334336534386166313536346439313931363234316664386639362d3866383162613635386262383537663062336130623530393062353138333564223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1582206506);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('qd382ihusrks615naa2v902t5l', 0x5f5f5a467c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313538323233393230342e3432333833363b733a363a225f56414c4944223b613a313a7b733a32353a225a656e645c53657373696f6e5c56616c696461746f725c4964223b733a32363a22336a7572636c31356c65336b3773726f67323838766339336b33223b7d733a33393a225a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323233343830373b7d733a35303a225a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323233393639363b7d733a34313a225a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323234313337383b7d733a32393a225a656e645f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313538323234313334393b7d733a34343a225a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313538323234323830343b7d7d72656469726563745f75726c7c733a33373a22687474703a2f2f6c6f63616c686f73743a383838382f657344574d2f6f6d6b2f61646d696e223b5a656e645f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226365353365636538373437383532616239636666333934643736633532393138223b733a33323a223837653930666431393532363433373337353031363734323062353064393731223b7d733a343a2268617368223b733a36353a2238376539306664313935323634333733373530313637343230623530643937312d6365353365636538373437383532616239636666333934643736633532393138223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f417574687c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223931373366376562376235343763633862643965376333393937626433663432223b733a33323a223839363236353461343337616638313664646634616330386338323339613733223b7d733a343a2268617368223b733a36353a2238393632363534613433376166383136646466346163303863383233396137332d3931373366376562376235343763633862643965376333393937626433663432223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a393939333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3132313a7b733a33323a226631633835383066333266356137303466623166373261383065316238633730223b733a33323a226266326138613533353333616436636337643961376466646666616364336566223b733a33323a223636663131643662666639333033393830323931373737363535613462653365223b733a33323a226362343335636333636130343066666166393833333661376531353164643239223b733a33323a223038376438633036336530636164333939666136396562623534633733363465223b733a33323a223663386536383731336335633335653036653462333231643363363065633234223b733a33323a223737363461613637356135653838363464303562393038613531626334663131223b733a33323a223561326465363065656439663534323461303338333161663933616266666334223b733a33323a226635653439393731313664313337373431303339616262356633653130333339223b733a33323a226138653364386662636239366539326462323162393566643131306433363432223b733a33323a223631343036306161386635353833353335383966373739353734303561323633223b733a33323a226132663936303635663236636333363839656639613866623532373331356362223b733a33323a226539363361396337626366643262356662323337666663643230383661656335223b733a33323a226338353164383564303535383733643437333934353831336362643361363532223b733a33323a226665656135393930393432353030343630383566656333346537653538363563223b733a33323a226332653962333137303666613165616338356536646530326232653538323339223b733a33323a223134323865326339363564383434626336626461313464643061633737353230223b733a33323a223065336235366132326431356636303930386163353638336536613438643333223b733a33323a226464653433653435346434623134326436376537306261643435393033623631223b733a33323a223266303665306365643733313935363631313364386639346565633664303564223b733a33323a223163656331363432373638303437323933386335306338626563373861663736223b733a33323a223064653831613234353531363565343631623563333962313561303861313066223b733a33323a223438303434373462613830373061376366393935383336623132643333653832223b733a33323a226138356135663834376630616530616261393134643031653763353735363164223b733a33323a226339613330383966306236316233633433333934623632306465386331373830223b733a33323a226339636438616333333838376134373534333464633231663564623935386263223b733a33323a223233333133663138363935306231353761326432343933313266363039373561223b733a33323a223139303866653537393961613465636334323036383762613965396333363865223b733a33323a226131376535393633336338633135373963353565306238323165636335613937223b733a33323a226530623533303237623837393738643830353032613131373864653834616465223b733a33323a223533656532363835333835376362366330323039653832386361303139303832223b733a33323a223235303230393430613061313862663466633434356638353864333864383833223b733a33323a226233393561383830333434666662326439616336663331663565373138353132223b733a33323a223035393139303938356130636333636634653432383231353062643565363464223b733a33323a223533626530393231366462373334373834666132666132363165363565333730223b733a33323a226237343666356432306538643736313331333634343539343463393631316534223b733a33323a223537343962643733623932333632393033633137623235386234613132653230223b733a33323a223264653834326436633261396539303265343639306461303663343061386134223b733a33323a223932653632373730306566636130376462336233653839316632333038353861223b733a33323a223430326563376631623164653732613239616364383335313061386138306662223b733a33323a223039633661363030333836363435323563633061343734666234383465386564223b733a33323a226530633063303462653262323666656331353233373564373139336638643039223b733a33323a226531343731373738626363663838353165396533616464393539333533346462223b733a33323a223963656435336136613965643733343936373233313166633861343037313431223b733a33323a223737356166376234363061363663643764303437336230646639623136323439223b733a33323a226337386433616438343035656537336634633433646665353264316530363666223b733a33323a223162303665393164313864373031396663356637316331616239323332313637223b733a33323a223535373263303630396637363234336165343133656632616532343162353937223b733a33323a226634303462383032636366653630313838613239313738666461373962393138223b733a33323a223463626131626537613436363461626531363531613730623532373630383235223b733a33323a223663393236386231343762373963353031356239633438633862623464343930223b733a33323a223563393761383863353339323536393466646263646238633937323238633434223b733a33323a223339613539393730316138396332613137666362383237643063333139626563223b733a33323a223831643731666162643732666536373232643632396635393164666439383830223b733a33323a223063356666653163303230356564383633303737336330383435396464646631223b733a33323a223237373533386262346130333961323938636434663364613666653631643239223b733a33323a223432633438643966633030373233613062653139616165646664633261333332223b733a33323a223733326361616130653531383533646136303032633332623336373836333530223b733a33323a226236386336346662326335616537393333336633376165386536303864306133223b733a33323a226236643139343132336162346432333466366466386363643461303466366233223b733a33323a226130343630316562646138326535613934343930666361366339643363633463223b733a33323a223264316430626464393461646237653263343663356336363863303964666630223b733a33323a223330373137613134306162363931663037616166623639353632393333373933223b733a33323a223739356563396562626332373531343836383339396638613364343366623437223b733a33323a226663313739643631626339653531333336626465333933353966376138336638223b733a33323a226662633264623964373738303164313763636261636663663234393563663732223b733a33323a226632376338336261663033653536626431623833303334663064303832323131223b733a33323a223936626562343638323065316537393332633230363966376233373663353435223b733a33323a223066343231323137353236623134636631656231623930636639626435323233223b733a33323a223366326233633861386666636564623863363333353230333461356238373838223b733a33323a223066343238373437386362346237363566656539376562626334343230313566223b733a33323a223437666435366262373634373530376561646435616365663939353531346430223b733a33323a226434383437326564353931346139643432653766323231663538323065663738223b733a33323a223533616562623366373564613761643264343262646634333835393864633436223b733a33323a226531316137333961373361363763613037656536316463316436313063643163223b733a33323a223233373166393238343466393762663430656336373031663534353839666563223b733a33323a226530376537636334373761656630376366343030336430346536356431343838223b733a33323a223737356166613432643431333763666639636662633136343761343361636463223b733a33323a223737383032363263646531303636666436376532323965373862633338343161223b733a33323a223139313738383732646333633937393161396262663333646234656664333232223b733a33323a226263663664666635363731613235303634313566636639343466633335333638223b733a33323a226238316463313930393463663863346366373539386531356330633334333766223b733a33323a223435343066656233376632646265323436656461613931663832333331643637223b733a33323a223537323436636633363937376161623838656532366630343536636435643033223b733a33323a226437306438333832643664656234613536383938356165623534303665383939223b733a33323a226565623138623837366334313738336334336432623062326138663537636261223b733a33323a223039383638363162343966643966653232373862383762383765653835326236223b733a33323a223232393839353435393034626265636437623837613530636531623335643534223b733a33323a223339623835343532383436623865346265656261393735633161383239343263223b733a33323a226264363034316438626531396438373662303566663264663136313433383565223b733a33323a223336336566343138623261316165646337316463663739363364366265393363223b733a33323a223565343038653634343834386163303435303261616232373532646230343336223b733a33323a223634353133323033343937353738616536303764393064306133366335396130223b733a33323a223136383264616632343833373537653434376639326430366562353730656365223b733a33323a223638316637313438656265623235313133636133343531656533366232333133223b733a33323a223161356366393165613666613031633762323531396566323032386632623965223b733a33323a226431373036383164663835636434366532376465373466343135353564383336223b733a33323a223038363062616230326139653765633634376431613730653332653764333837223b733a33323a223938393039326433373335343038323430323133313665393137383534326638223b733a33323a223263656338613436643930393933383733356461353762656534393336326465223b733a33323a223335333235653731633764373136393363646339343061306261633833373638223b733a33323a223633623434653333373636343931376561386631323032623735653362623536223b733a33323a226333646136663136393861366365656566386565326564353833643631316136223b733a33323a223739613931393238383338303762326635656537643464373066313533383734223b733a33323a223731646331363862313434666536653162663162653537393738303135323630223b733a33323a223533353961346432643064613761336637366632613933373366353138323732223b733a33323a223739323536613161643736393631616533656462376461633433383734353065223b733a33323a226330356636376530303465663365356133613961376136656166336337373261223b733a33323a226234383563643430663430313232323063633134656232373561623765343132223b733a33323a226566653164613431613134623536306566336362373665623531383564626464223b733a33323a223730336637613237363033333639386239313566636631343234376565656535223b733a33323a223233363065303263326635373964663437343564343537633635326330323066223b733a33323a223735306637653634393661323765393333613463333463346266346234333334223b733a33323a223037323732616139356537306335613734333137373031656538366463626532223b733a33323a223039623731386138613763653930343736373631363737363435376438376632223b733a33323a223432326239303039663565653864636238373232613665666633306361393032223b733a33323a223763353431373263336666626637383564373633636362303365383937383561223b733a33323a223737363335646461356663333530616330646535643739616337633131376362223b733a33323a226463313963306631376162653736643930623630633862306231393466353530223b733a33323a226165326265656365623831653766613164393062623030333061393036643365223b733a33323a226132633764663661626131363233616362353335336666313562373131376261223b733a33323a223962656532613561313337353832333632303638653439333231326534386364223b733a33323a223561663338613963376463656233316136356531393239306432613862633138223b733a33323a226565623961303731653834643237346131613537323238656336336161613438223b733a33323a226262343735616261343863356530303533353866636237663132346462333166223b733a33323a226161346164343333313539356331326434313030366661653539363132373834223b733a33323a226131323266383936313032633435633563386331626636393831633533653330223b733a33323a226364323131333837306537633264643133323937303637376263303761326663223b733a33323a223039313439623638323437386166613839636336376637613734363735376535223b733a33323a223139623534323638633336313061376638343733316264303036383165626632223b733a33323a223534303738626163363964343933303262393131626536333739383238633733223b733a33323a226565663630383436326238313532643435633738353937363333653361316338223b733a33323a223561333634333165353734306166656461303432323364626434636566633532223b733a33323a226532663866336261653539333033623665636363633139393434343130393966223b733a33323a223033636133616266393262343235663032653730383866336630316138646563223b733a33323a223639646363653136383235356332643666326566376466353763666461333430223b733a33323a226665346663343438326335636138313238366139326363306466313731616230223b733a33323a223036373630363134316437633737356533653566373064393035616166373337223b733a33323a223132623232613130666362373334303437313464663435623862306138376631223b733a33323a226466313263626562326633636337386236383162383439353330336634303938223b733a33323a223439313431373165313536363139366334326433636139633036636561326132223b733a33323a223538663263663164336665343365366539663535376366653338313565653861223b733a33323a223231393131653732636532663861306238393434333731393339613737616431223b733a33323a226631376234393631643634393361663331623435643839373539623938613837223b733a33323a226336353266386165306637323739636331326637663038633761363835343762223b733a33323a223034646330313065623666306239653830366338336536363637306431613134223b733a33323a223030663539326238386535356662663734613137633465626466373764323532223b733a33323a223237613331623335333337363531636338316166646561393031636539363964223b733a33323a226636633635623434653861306262383966316633646464323362306461363131223b733a33323a226261376334613466363930646331616533316134376161616538616363323865223b733a33323a223435623433616131366232613331313461646330646238343436376361633939223b733a33323a223636636463643437663462666661666664323061636238346131626365303932223b733a33323a223937623531646536363231303262313361356536326132376462376233636163223b733a33323a223138376362393163333236356430663964306466343931306563663030303465223b733a33323a223534376665343738666334613430633635343437316161393132343161333665223b733a33323a226434323035663934356663336531373761306335633263346335356364643334223b733a33323a223031636561623334373238643830343662343233623737333938663632626535223b733a33323a223561663038386462333133393234326166326665636335643330616133616164223b733a33323a223339386632303161646435653362653736666339633965363062383131333031223b733a33323a223734323935666537353237363830646164653333313638636434613163656238223b733a33323a223261336564323830396239313565303263653264303166343131373835306665223b733a33323a223861333835643463656239666566663939333938646339363262666430336432223b733a33323a223762393937653133613835613435313364663135623863643364306535323065223b733a33323a223134313138666231393432643130326333353631393766353861663831616236223b733a33323a223561343962623432636666396432643764626262386362633365343865313733223b733a33323a223033333539353239633831653530356666613836383037626465663166363331223b733a33323a223839613831376466613135613965636530373931636265346231356363323431223b733a33323a223839326635303563386531623133373965303136623632373830376366373463223b733a33323a223365623739616537393739326436383034323464323831653632386337643166223b733a33323a226263353331313333333732373464626166313266656364356337636437643432223b733a33323a226437633632326537623237323565373866383365653363633634356130623736223b733a33323a226534343031346637626530383830393466323034323532616365343837613538223b733a33323a223864613137373433353230396431613364383539363862626133383832633537223b733a33323a223431613066653661646634643965633964383336663765356432643665653665223b733a33323a223439376464643964386536626438323632373232646438613934373532626362223b733a33323a223833656635393537633235373438366165626464656662656133333732616165223b733a33323a223437343761313461313636623565393636306661333265636237303135303833223b733a33323a226663303535306237643334316437353666323164333532333639363063653333223b733a33323a226162663839393866353261613030616239653965353065363734366332613061223b733a33323a226637623539643262323833386139353464643338316632653730303362323162223b733a33323a223937613962663631633432646362383937336535326339633766613334653439223b733a33323a226263343561343432636134653164313033656463383965376664636537336533223b733a33323a226632663965616434373334363633633838633433306437323335363564396430223b733a33323a223562303138336239346333333664313064366630386465643238393539623532223b733a33323a223564363638326261323939633863326365383130306531383135333866626639223b733a33323a223061613338346137373863313734636235353839363734313638383236363338223b733a33323a226432636264363066333932666138653730336433363263633430323830636237223b733a33323a223034653635316335633964306433653639626333633231356432363836353136223b733a33323a223638623862346235363835353862323231303065303831623037643164383966223b733a33323a223066306362306330636339366264323739646563353135383363326464656434223b733a33323a226435353139623663633139363636656531333939393861356235366463663737223b733a33323a223464356233353133663433306361303936316534343963623332343437623737223b733a33323a223063363764343862643563623263663834363737353333656261636462663835223b733a33323a226233396439333333663736303436396132353864353736656438356639616261223b733a33323a223938323830663732363732666162393431313433623764353232616533306461223b733a33323a226333663563653837356336326330616438633834613564373061306466653232223b733a33323a226339653439313366343132636563663539376332383466646461623964323933223b733a33323a223065393531343266346138333064663438343666666234353533333637393565223b733a33323a223634396632326533616164623637616563353937313531303730363736333538223b733a33323a223662326633656662316265653832323363393234653435316636333433616366223b733a33323a223331356461613639393563626165666366333134383633643336636430376663223b733a33323a226566386135376630393262316566393864363364646131636338316431313765223b733a33323a226639326533313264356534373839333430636137376361383262626539613933223b733a33323a223033653135343839313833336139616638623433343663613737303031383339223b733a33323a223735393333646363376431316339366133323734616637396330383261623434223b733a33323a223331366366373462313863646334313838623061383464383136633666333431223b733a33323a223431633465626435646331363236383436613537623034666238303133666439223b733a33323a226238373262653835353537383134316361623638306536613235613566616263223b733a33323a226231616632343936636563303838366135353162316163386161653730623736223b733a33323a226438313235383531393062323138383963343564643736346465396339393762223b733a33323a223438353939316136626339343835343337396333356265356439383536383732223b733a33323a226531306532613531353466636436633865333963313036313130613562346235223b733a33323a226238326638366662343435656261616366356466313235613366353465353331223b733a33323a226437376331666565343261623530363762393239363331333361356461353861223b733a33323a223535376134623964353133383834636130373765613136383037616364653761223b733a33323a223462333635326438663737653930326539656438393030613639626139343532223b733a33323a223334343464303162393365333535653433396239633764353139383135363535223b733a33323a226262376339666630353933646465303237656364306136666533623963373561223b733a33323a226332643261353732633530663565353633373132633930383564653363393933223b733a33323a226139333139633834353335313735353730663632636632656531343236636266223b733a33323a223363393238663339326564646538623866303461303661663335353832346433223b733a33323a226163383232363036356434393032333461643062636165393535643066663135223b733a33323a223834386530303962343361396431373861346331383738626662646337323466223b733a33323a223235343761626263353233396536656463323038336330633336663632333166223b733a33323a223732653466643163396265663034396465396537313635363864343932336363223b733a33323a226631336433653465373861666361376363313736643535363037626232353830223b733a33323a223139633664393737336437383435396664326235323865386534376663343138223b733a33323a226463646561386432366661316266393462303530663561313033633264643462223b733a33323a223832323461663235663531633564663531393936646533653065393866323165223b733a33323a226335376561333138346439666563386661323263613034333637363539363836223b733a33323a226433633434316330663534346231353438643833393633316236343037396135223b733a33323a226235643761626231376633313062353661323064343138663166363833636461223b733a33323a223561646338376266623161346262646639313663656462633231396138336138223b733a33323a226539336334356131636263346634333465626463353037666638646238626164223b733a33323a226536666631396338616634666266326139373532343836666262653162663837223b733a33323a226239653537633264653361356533646437303862316262613739373332333363223b733a33323a226333356236373235326336316261313161663331316263343333333833353833223b733a33323a223364626630386465336232363437393239383832616362386161313834343137223b733a33323a226138383362366432303761396535333265373832633666386462646233383337223b733a33323a223331623161626462366466386137343165303566653337346263633731653236223b733a33323a226133643665653132643435353231613734306564343861396532623231376263223b733a33323a223031356337616463643330616437346433326364646262386261343766326635223b7d733a343a2268617368223b733a36353a2230313563376164636433306164373464333263646462623862613437663266352d6133643665653132643435353231613734306564343861396532623231376263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a333139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33363a7b733a33323a223537643063383435613466323230653261353561653138383930353939343332223b733a33323a223037326165303938643130313735396436666536333931326132346235396361223b733a33323a226565353862633830313236373039376431366633313836363262383261646634223b733a33323a223134303138613436313833363965343331336463353665623030613831373631223b733a33323a226263373862626533353937396262316665336632373366633530653037666436223b733a33323a223231663039326366646634373038613832323937326561346165633431616133223b733a33323a223364646332643536343563663433626139346362616135323933646531656162223b733a33323a223933303061616231333437313563373134353032376566616264616564303566223b733a33323a226336653238363030396532326234626137613736643232306234323135363661223b733a33323a223939633862623831653366666539613035623164326337356438663038613135223b733a33323a223364663863636130366331623565613764316435366362356361333163396537223b733a33323a223465393136643134393165313233383931656337356662333137303763316131223b733a33323a223437633566383361633766653739373163626666383639396631376639323862223b733a33323a223337386465646462326531333062303739643232336537396461333439383761223b733a33323a223861356632616362396564346336626435666335633836396539613938666563223b733a33323a223066336262663036616163613534643337323339663766393937633835326466223b733a33323a223638366138636432336164346535386336323963346130623232396465353339223b733a33323a223936643862333933383861393534633465653262303462346462343530373165223b733a33323a223336303866633837346139396664613063623837636230623531643737663961223b733a33323a223235646366613635393862386461336133626363633837303564633039383933223b733a33323a223664646235356133336563323237643734663738306136306239306335323661223b733a33323a223937343831356439623434303731626437353638646361666434313565306163223b733a33323a223136306532343763656236653338663664376634613964653136306135336236223b733a33323a226431323366656639396135656233323433346635356361623732643436396163223b733a33323a223031623063376466343861356232616566303436383730366266393338353761223b733a33323a223939663236613132303931393234353635373162616331336463356230633962223b733a33323a223866333035373163646637633866323938646563636231343663336365313665223b733a33323a226234663035376464303839373636343035623031656231396164333836383532223b733a33323a223130633438356162363235353463666163386438653061643334646537363239223b733a33323a223432383366646461646638313837626262636564613861336535643466363338223b733a33323a223266643538336466643364383839363964636531653062393966623836356132223b733a33323a226233363837623865356132326630303335636362656261326331313330623063223b733a33323a223433383166666532323832663861313131613166663762303133663861333539223b733a33323a226532343361303066303366636437313537326536356336633464396362346565223b733a33323a223030646637373036393663616336336134336437333861646233303439313430223b733a33323a223264353438613535313338396434396134356263313765333033303065613965223b733a33323a226662373633303261336163373537353964663338663035656362663730356464223b733a33323a223233383238663963636231663339336465343662313865643139633463393666223b733a33323a223336323439303731633966643133613639636634636130636366323636616463223b733a33323a223936386138393865613661303563623837346235623531316634363333616430223b733a33323a226163373239323831666262316432313963613634373834333735396333366333223b733a33323a226338373663313736376363636433623964623764333031666434306133383430223b733a33323a226633626533663265346365353761643230326166346637636239373766396333223b733a33323a223032396137353761653038633539326534643938323661646263346265343564223b733a33323a223639613636323365393731643435363139303139383934356237646662323435223b733a33323a223638343232313862636665373437323361633261616636633336336165666533223b733a33323a226163313062313730333965653832353365373862643965646635346539653537223b733a33323a226134356538343865373064363534343532656638663932333437623965396238223b733a33323a226338393830623063636331336363623238363432353737633938373265373032223b733a33323a226634386461653735653434626439383163306138323939303332326163326639223b733a33323a223135363930303266303763353130386262663535383736623564323263663230223b733a33323a226562353130343539643762643162663530393062666365356339616238353334223b733a33323a226536613034663363646430643134393730626636396364643661366234623461223b733a33323a223735313162363331326137383866636239393166666165306336626131313039223b733a33323a226537666630306561633962316162663466653739613332363030373535333938223b733a33323a226437396635333238636335663861633066623935383166376136613530326135223b733a33323a226235643532666133666635353562633464643261316439643265623939346564223b733a33323a223263666565353837386666313135356138303134656535356533356232323931223b733a33323a223337326138306331366632626461316238643433323066363261643032303233223b733a33323a223761636338623239616462386161663132396166363636633962623262343133223b733a33323a223337373739636530383863343466326630336533636238383932306133303263223b733a33323a226266313932333262633830336661326335376161653434613630656530643131223b733a33323a226230353835326230666565616239383631393236396435633530323635393566223b733a33323a226166303539663362653234353666623439326433666638623233666566636536223b733a33323a226239653861623233306564323761376139623638663237376561393033343236223b733a33323a226166346262383535653361313837386531366265663565393737643231356666223b733a33323a223738313930636434363439663630616365656365633638336664653364363262223b733a33323a226361633737336663653332663666623239653237363132393935643166653165223b733a33323a226630393130643265623333376462393039396461383535393361333739313366223b733a33323a226136376439656666353530663738636631653831626638386333333461636461223b733a33323a226666643061333461643637663437393564343134643861326638643465633234223b733a33323a223339373335613965333165643436626265393436653038383664366265653536223b7d733a343a2268617368223b733a36353a2233393733356139653331656434366262653934366530383836643662656535362d6666643061333461643637663437393564343134643861326638643465633234223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d5a656e645f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32333a225a656e645c5374646c69625c41727261794f626a656374223a323731323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33303a7b733a33323a226239353532663863316661383439333965306137383834613934363835346665223b733a33323a223730633434643137386561323639616261313432336166353838333836363764223b733a33323a223365323763396439653639626532303662616331333638303131346331613733223b733a33323a223731623163623235353432313737336666383966356231643033363765333438223b733a33323a226631656461323934336162386239616261353331363632636231613364316132223b733a33323a223663343761653866623930306532646630303634356665386434346538383466223b733a33323a223339363666653437633465336262303866626630636634366631373866376662223b733a33323a223633643864633334323066386438346235653236623937313039376437306438223b733a33323a226236396263653238366538353065663832623534653531363061303866653838223b733a33323a223964313830396639383535373736666564623238633466393864633439366562223b733a33323a223166303565616137396339623062646238373163613332336230666466623538223b733a33323a223065653761363464633663646437653831613936353232643633363937613864223b733a33323a223061353436353433626338643232343361356236636637666663653036646133223b733a33323a223466343762373334396331366263336430376638343066663565613337383834223b733a33323a223033383765646133663561333665333666666432353238303337346532666638223b733a33323a223032373735666361656561313039353766333932373232626535643637376432223b733a33323a226266623930373330346431346431336463303236386665376331663465653361223b733a33323a226538316630363366373539626334663836383237646633316630636230653762223b733a33323a223430353861626132356635376365393638393331373561613838316361396137223b733a33323a223863383632636462363330373039313832373630363038336365343934346438223b733a33323a226436393836663361616231343832303934353935386336613066643330666437223b733a33323a223463633333633466613337643565313736393138306331336566316565616163223b733a33323a226432346662333065646365333530666137613666623534633939633762663632223b733a33323a226136643437313437346635643834653930323935306139333837623233396164223b733a33323a226261633031333839653536313233386636623039326264343062346439313832223b733a33323a223631393639353863623962623130343966393262343936303863623034366439223b733a33323a226164363162353438646165316137653966626462356237646230636638333236223b733a33323a223161386164383066616534353836656161666339396432636161396638623438223b733a33323a226331303262363133653132333235616631353364313262396664623964616237223b733a33323a223261376630613738363031663231363337346439663061396365333931356365223b733a33323a226430396236376561373035393934376231386537343033656430373139663539223b733a33323a223431323031633564383566336533366164663963643335386130633831663531223b733a33323a223864366162616164373364316137323633656233636532303061306233363465223b733a33323a223966373035323264636563396638616138303462363237623137643261616134223b733a33323a223231336333343837383835633431633166393030636336393634643932323933223b733a33323a223338376363336433366365613965653431663162316235363232613134356436223b733a33323a226361303231356162656230653365376135626132333833663139363063616465223b733a33323a223061666539396237386430653633616163663338323466396636616338373733223b733a33323a223061323661373039376266393836323965306563356130313631636634386264223b733a33323a223636633930626161333762373165383535633331666131636433323538373733223b733a33323a223638316231386533316165306230303537333131376265656465343837333534223b733a33323a223735323939396236353165613939333035353632303638373866316161333862223b733a33323a223034353731643931636563626165633363656231633431353730373936663934223b733a33323a223034623565376434633238656530646532306163366133656330323165383164223b733a33323a223161313838653330316635306130366339363135663765643464353866336437223b733a33323a223533613638373263313137323135303366363633616563663636643539633035223b733a33323a223530373861666666616536363630353735316230626231306634636634356163223b733a33323a226339393362356537333961366362613337653035363261383530363035633566223b733a33323a226463373466366339663061306239313530653339386663653238393835343663223b733a33323a223638653532353365343261353932363039626132303237363130386262363063223b733a33323a223532386430393532626638643935633630623730323438393062316332386139223b733a33323a226363663538396330323430363564646238383863643937366137643866653530223b733a33323a226433613333623465383934373738653931376635353966393763353461376130223b733a33323a226264386338333563346537313735613963326264663566643165653836386234223b733a33323a223465363266666166343036373361393831373130333534323538376137386364223b733a33323a223830653533373135346265343130313465363565643063646461343366396237223b733a33323a226363333937303562316636396539356535373064323331326666356339383661223b733a33323a223638373564613138666436623533376162363062376666653636333235356362223b733a33323a226662396362646432653737313766366537623565616534616238306465313964223b733a33323a226465636164323064653838363937636239656462333535343062643338663666223b7d733a343a2268617368223b733a36353a2264656361643230646538383639376362396564623335353430626433386636662d6662396362646432653737313766366537623565616534616238306465313964223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1582239204);

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
(1, 'anis.bela1997@gmail.com', 'anis belabed', '2020-02-07 14:05:22', '2020-02-07 14:05:22', '$2y$10$IFehq2.twMoWBbsCwVSGSOCMS.yVJc04sqN7KYavVnurrFJsvUZEm', 'global_admin', 1),
(2, 'samszon@gmail.com', 'samuel', '2020-02-21 12:47:08', '2020-02-21 12:48:17', '$2y$10$tCNc9jN7KPJnGqKpzKHu..wn4Lgu/KCikjrhYMZwbHKdSIzl0OOjK', 'global_admin', 1);

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
('default_resource_template', 2, '\"\"'),
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
(9, 5, 10, NULL, 'literal', '', 'gaya', NULL, 1),
(10, 5, 123, NULL, 'literal', '', 'gayarainbow@gmail.com ', NULL, 1),
(11, 6, 10, NULL, 'literal', '', 'anis', NULL, 1),
(12, 6, 123, NULL, 'literal', '', 'anis.bela1997@gmail.com', NULL, 1),
(13, 7, 1, NULL, 'literal', '', 'Réponse 2', NULL, 1),
(14, 7, 4, NULL, 'literal', '', '1250', NULL, 1),
(15, 8, 1, NULL, 'literal', '', 'Réponse 1', NULL, 1),
(16, 8, 4, NULL, 'literal', '', ' 1257', NULL, 1),
(17, 9, 1, NULL, 'literal', '', 'réponse 3', NULL, 1),
(18, 9, 4, NULL, 'literal', '', '1290', NULL, 1),
(19, 6, 1, NULL, 'literal', '', 'Question 1', NULL, 1),
(20, 6, 4, NULL, 'literal', '', 'Quelle est la date de fondation de la Sorbonne ? ', NULL, 1),
(21, 6, 35, 7, 'resource', NULL, NULL, NULL, 1),
(22, 10, 1, NULL, 'literal', '', 'réponse 4 ', NULL, 1),
(23, 10, 4, NULL, 'literal', '', '1233', NULL, 1),
(24, 6, 35, 9, 'resource', NULL, NULL, NULL, 1),
(25, 11, 1, NULL, 'literal', '', 'réponse I', NULL, 1),
(26, 11, 4, NULL, 'literal', '', 'Robert de Sorbon', NULL, 1),
(27, 12, 1, NULL, 'literal', '', 'réponse II', NULL, 1),
(28, 12, 4, NULL, 'literal', '', 'Richelieu', NULL, 1),
(29, 13, 1, NULL, 'literal', '', 'réponse III', NULL, 1),
(30, 13, 4, NULL, 'literal', '', 'Louis XIV', NULL, 1),
(31, 14, 1, NULL, 'literal', '', 'réponse IV', NULL, 1),
(32, 14, 4, NULL, 'literal', '', 'Philippe VI', NULL, 1),
(33, 5, 1, NULL, 'literal', '', 'Question 2', NULL, 1),
(34, 5, 4, NULL, 'literal', '', 'Qui est le fondateur de la Sorbonne ? ', NULL, 1),
(35, 5, 35, 12, 'resource', NULL, NULL, NULL, 1),
(36, 5, 35, 13, 'resource', NULL, NULL, NULL, 1),
(37, 6, 35, 10, 'resource', NULL, NULL, NULL, 1),
(38, 6, 31, 8, 'resource', NULL, NULL, NULL, 1),
(39, 5, 35, 14, 'resource', NULL, NULL, NULL, 1),
(40, 5, 31, 11, 'resource', NULL, NULL, NULL, 1);

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
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
