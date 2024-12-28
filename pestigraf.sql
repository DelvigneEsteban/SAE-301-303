-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 27 déc. 2024 à 19:03
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pestigraf`
--

-- --------------------------------------------------------

--
-- Structure de la table `abri`
--

CREATE TABLE `abri` (
  `type_abri` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `abri`
--

INSERT INTO `abri` (`type_abri`, `repetitions`) VALUES
('Sous abris', 116),
('Plein champ', 92),
('Serres verre', 62),
('Hors sol serre verre (chauffées)', 20),
('Extérieur hors sol', 4),
('Hors sol en plein air', 5),
('Multichapelle froid', 4),
('En pots sous abris puis plein air', 6),
('Hors sol sous abri', 10),
('Hors sol sous serre chauffées', 3),
('Hors sol sous abri plastique', 7);

-- --------------------------------------------------------

--
-- Structure de la table `cibleprincipal`
--

CREATE TABLE `cibleprincipal` (
  `nom` varchar(255) NOT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cibleprincipal`
--

INSERT INTO `cibleprincipal` (`nom`, `repetitions`) VALUES
('Acariens', 32),
('Adventices', 1),
('Aleurodes', 48),
('Altises', 3),
('Big vein', 1),
('Botrytis cinerea', 21),
('Campagnols', 1),
('Carpocapse', 16),
('Charançon de la tige', 2),
('Chenilles', 20),
('Cochenilles', 10),
('Corky-root (Pyrenochaeta lycopersici)', 1),
('Défanage', 3),
('Doryphore', 1),
('Empoasca vitis', 1),
('Eudemis', 4),
('Forficules', 10),
('Fusariose', 1),
('Limaces', 20),
('Maladies du pois', 1),
('Maladies telluriques', 5),
('Méligèthes', 5),
('Metcalfa pruinosa', 1),
('Mildiou', 14),
('Mineuses', 16),
('Moniliose', 1),
('Mouches', 16),
('Noctuelles', 10),
('Oïdium', 63),
('Phytophthora', 3),
('Piétin échaudage', 1),
('Psylles', 6),
('Pucerons', 128),
('Punaises phyotphages', 1),
('Pyrale', 6),
('Pythium', 4),
('Ralstonia solanacearum', 2),
('Rhizoctonia', 4),
('Rouille blanche', 1),
('Sclérotinia', 33),
('Tavelure', 2),
('Thrips', 24),
('Tordeuses', 12);

-- --------------------------------------------------------

--
-- Structure de la table `cultures`
--

CREATE TABLE `cultures` (
  `culture` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cultures`
--

INSERT INTO `cultures` (`culture`, `repetitions`) VALUES
('Laitue', 40),
('Tomate', 36),
('Toutes cultures leg', 8),
('Cultures d\'été', 7),
('Cultures hiver', 1),
('Melon', 11),
('Pommier', 27),
('Artichaut', 1),
('Brocoli', 1),
('Canne à sucre', 1),
('Abricotier', 12),
('Prunier d\'ente', 2),
('Prunier', 4),
('Vigne', 29),
('Kiwi Hayward', 3),
('Clémentine', 3),
('Carotte', 5),
('Haricot', 1),
('Chou-fleur', 3),
('Blé', 5),
('Pomme de terre', 7),
('Fraise', 41),
('Concombre', 13),
('Artichaut, scarole', 2),
('Pêcher/nectarine', 8),
('Colza', 14),
('Tournesol', 1),
('Betterave sucrière', 3),
('Oignon', 1),
('Radis', 8),
('Salade', 6),
('Légumes feuilles, courgette', 3),
('Aubergine, radis, épinard, navet', 4),
('Gerbera', 12),
('Fleurs coupées : renoncules, anémones, pavot, lisianthus, limonium', 10),
('Fleurs coupées : campanule, célosie, chrysanthème, giroflée, lisianthus, muflier, tournesol', 8),
('Choisya ternata (oranger du Mexique)', 6),
('Elaeagnus', 5),
('Viburnum tinus (Laurier tin)', 4),
('Photinia', 6),
('Pélargonium', 6),
('Poinsettia', 5),
('Hibiscus rosa chinensis', 7),
('Chrysanthème', 7),
('Gerbera en pots', 5),
('Maïs', 7),
('Colza, soja', 2),
('Pois chiche', 1);

-- --------------------------------------------------------

--
-- Structure de la table `famillemethode`
--

CREATE TABLE `famillemethode` (
  `famille` varchar(50) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `famillemethode`
--

INSERT INTO `famillemethode` (`famille`, `repetitions`) VALUES
('Micro-organismes', 146),
('Substances naturelles', 137),
('Macro-organismes', 84),
('Médiateurs chimiques', 31),
('Plantes de service', 35),
('Autres méthodes', 20);

-- --------------------------------------------------------

--
-- Structure de la table `groupecible`
--

CREATE TABLE `groupecible` (
  `groupe` varchar(255) DEFAULT NULL,
  `occurrences` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `groupecible`
--

INSERT INTO `groupecible` (`groupe`, `occurrences`) VALUES
('Ascomycètes', 140),
('Lépidoptères', 93),
('Hémiptères', 70),
('Pucerons', 82),
('Mollusques', 20),
('Oomycètes', 18),
('Acariens', 23),
('Thrips', 20),
('Nématodes', 14),
('Dermaptères', 10),
('Diptères', 18),
('Vertébrés', 1),
('Végétaux', 3),
('Deutéromycète', 1),
('Coloéptères', 11),
('Basidiomycètes', 5),
('Maladies telluriques', 5),
('Maladies aériennes', 1),
('Champignons', 1),
('Bactériose', 2);

-- --------------------------------------------------------

--
-- Structure de la table `methode`
--

CREATE TABLE `methode` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode`
--

INSERT INTO `methode` (`id`, `nom`, `repetitions`) VALUES
(1, 'Bacillus subtilis', 14),
(2, 'Bacillus thuringiensis', 19),
(3, 'Lecanicillium muscarium', 5),
(4, 'Phosphate ferrique', 12),
(5, 'Savon', 6),
(6, 'Encarsia formosa', 6),
(7, 'Eretmocerus erimicus', 3),
(8, 'Trichogrammes', 5),
(9, 'Macrolophus pygmaeus', 15),
(10, 'Laminarine', 2),
(11, 'Coniothyrium minitans', 7),
(12, 'Hydrogénocarbonate de potassium', 13),
(13, 'Soufre', 17),
(14, 'Stimulateur des défenses', 2),
(15, 'Phéromone lépidoptères', 18),
(16, 'Syrphes', 9),
(17, 'Aphidius colemani', 8),
(18, 'Alysson maritime', 1),
(19, 'Bacillus amyloliquefaciens', 5),
(20, 'Eleusine', 1),
(21, 'Neoseiulus californicus', 5),
(22, 'Phosphonates de potassium', 5),
(23, 'Phytoseiulus persimilis', 8),
(24, 'Trichoderma asperellum', 1),
(25, 'Granulovirus', 7),
(26, 'Huiles diverses', 8),
(27, 'Kaolin', 8),
(28, 'Steinernema carpocapsae', 7),
(29, 'Tagètes et romarin', 7),
(30, 'Canavalia ensiformis (Fabacées)', 4),
(31, 'Glu', 6),
(32, 'Phéromone diptères', 3),
(33, 'Nichoir', 2),
(34, 'Perchoir', 1),
(35, 'Anagrus atomus', 1),
(36, 'Coccinelles, rhizobius lophantae', 1),
(37, 'Encarsia berlesei', 1),
(38, 'Neodryinus typhlocibae', 1),
(39, 'Aphytis melinus', 1),
(40, 'Tagètes', 2),
(41, 'Ail', 2),
(42, 'Trichoderma atroviride', 3),
(43, 'Sorgho anti nématodes', 5),
(44, 'Acide pélargonique', 2),
(45, 'Hyménoptères parasitoïdes', 7),
(46, 'Chrysoperla carnea', 10),
(47, 'Neoseiulus cucumeris', 7),
(48, 'Amblyseius swirskii', 8),
(49, 'Chitosan et pectine', 4),
(50, 'Feltiella acarisuga', 2),
(51, 'Huile essentielle d\'agrumes', 5),
(52, 'Oligota spp.', 1),
(53, 'Orius laevigatus', 1),
(54, 'Orius spp.', 1),
(55, 'Stethorus spp.', 1),
(56, 'Aphidoletes aphidimyza', 3),
(57, 'Eretmocerus mundus', 3),
(58, 'Acibenzolar-s-methyl', 1),
(59, 'Potentilles', 1),
(60, 'Colza précoce en mélange', 3),
(61, 'Moutarde en interculture courte', 1),
(62, 'Légumineuses associées au colza', 5),
(63, 'Extraits hydroalcooliques de plantes + argile + soufre + lithothamme', 2),
(64, 'Lipopeptides', 2),
(65, 'Trichoderma harzianum', 4),
(66, 'Aphidius ervi', 1),
(67, 'Macrocheles robustus', 1),
(68, 'Pythium oligandrum', 1),
(69, 'Anthocoris nemoralis', 2),
(70, 'Tamarixia upis', 2),
(71, 'Coccinelles', 2),
(72, 'Micro-organismes pour biotisation des substrats', 4),
(73, 'Nématodes (contre sciarides)', 1),
(74, 'Aubergines', 1),
(75, 'Euseius gallicus', 1),
(76, 'Crotalaire', 1),
(77, 'Spinosad appat', 2),
(78, 'Bandes de navettes', 1);

-- --------------------------------------------------------

--
-- Structure de la table `modeaction`
--

CREATE TABLE `modeaction` (
  `id` int(11) NOT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `modeaction`
--

INSERT INTO `modeaction` (`id`, `mode`, `repetitions`) VALUES
(1, 'Antagonisme et stimulateur de défense des plantes', 19),
(2, 'Ingestion', 41),
(3, 'Parasitisme', 17),
(4, 'Asphyxies', 22),
(5, 'Parasitoïdes', 37),
(6, 'Parasites des oeufs de pyrale', 2),
(7, 'Prédateurs', 29),
(8, 'Stimulateur des défenses des plantes', 13),
(9, 'Antagonisme et Stimulateur de défense des plantes contre sclérotinose', 7),
(10, 'Parasites des sclérotes', 9),
(11, 'Fongicide de contact multi-sites', 45),
(12, 'Détection/piégeages de masse', 12),
(13, 'Plantes attractives', 7),
(14, 'Plantes relais', 1),
(15, 'Acariens prédateurs', 22),
(16, 'Effet barrières', 14),
(17, 'Confusion sexuelle', 12),
(18, 'Fongicides sytémique vis-à-vis des oomycètes', 2),
(19, 'Biofumigation', 8),
(20, 'Piégeage massif par phéromone', 2),
(21, 'Effet physiologique', 1),
(22, 'Effet aération', 5),
(23, 'Plantes répulsives', 10),
(24, 'Fumigation', 7),
(25, 'Répulsif', 3),
(26, 'Herbicides', 3),
(27, 'Effet attractif', 3),
(28, 'Evitement', 4),
(29, 'Plantes pièges', 2),
(30, 'Prédateurs et parasitoïdes', 1),
(31, 'Parasite de oomycètes', 1),
(32, 'Déssechement de la cuticule des insectes déshydratation des structures externes du champignon (mycélium spores)', 3),
(33, 'Abris pour faune auxiliaire', 2);

-- --------------------------------------------------------

--
-- Structure de la table `nomprojet`
--

CREATE TABLE `nomprojet` (
  `nom_projet` varchar(255) DEFAULT NULL,
  `repetition` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `nomprojet`
--

INSERT INTO `nomprojet` (`nom_projet`, `repetition`) VALUES
('4SYSLEG', 40),
('BioREco', 18),
('BREIZLEG', 2),
('CanécoH', 1),
('CAP ReD', 22),
('EcoViti Val de Loire-Centre', 8),
('Cors\'Expé', 7),
('DEPHY Carotte', 7),
('DEPHY EXP NPDC', 6),
('DEPHY Fraise', 33),
('DEPHY Serre', 42),
('ECOLEG', 2),
('EcoPêche', 14),
('EcoViti Alsace', 27),
('EcoViti Arc Méditerranéen', 7),
('EcoViti Aquitaine', 6),
('EXPE Ecophyto Lorrain', 5),
('EXPE Ecophyto Pomme', 1),
('EXPE systèmes GC Berry', 4),
('GEDUBAT', 35),
('HORTIFLOR', 22),
('HORTIPEPI', 17),
('HORTIPOT', 25),
('INNOViPEST', 5),
('Otelho', 17),
('PHYTO-SOL', 9),
('Rés0Pest', 5),
('RESCAM', 14),
('Reseau PI', 1),
('SGC Bretagne', 1),
('System-Eco-Puissance4', 4);

-- --------------------------------------------------------

--
-- Structure de la table `partietraite`
--

CREATE TABLE `partietraite` (
  `partie` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `partietraite`
--

INSERT INTO `partietraite` (`partie`, `repetitions`) VALUES
('Aérienne', 238),
('Sol', 58);

-- --------------------------------------------------------

--
-- Structure de la table `périodeexp`
--

CREATE TABLE `périodeexp` (
  `periode` varchar(20) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `périodeexp`
--

INSERT INTO `périodeexp` (`periode`, `repetitions`) VALUES
('2013-2018', 72),
('2005-2015', 36),
('2012-2013', 4),
('2013-2017', 42),
('2014-2017', 13),
('2014-2019', 2),
('2014-2018', 25),
('2015-2018', 3),
('2012-2016', 6),
('2012-2017', 48),
('2012-2018', 18),
('2012-2019', 1),
('2016-2017', 3),
('2016-2019', 1),
('2016-2018', 11),
('2016-2020', 1),
('2013-2024', 1),
('2013-2022', 1),
('2013-2023', 2),
('2010-2018', 1),
('2011-2017', 3),
('2011-2018', 2);

-- --------------------------------------------------------

--
-- Structure de la table `satisfaction`
--

CREATE TABLE `satisfaction` (
  `id` int(11) NOT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `satisfaction`
--

INSERT INTO `satisfaction` (`id`, `commentaire`, `repetitions`) VALUES
(1, 'Bon', 168),
(2, 'Mitigé', 37),
(3, 'Aucun avis émis', 49),
(4, 'Insatisfaisant', 16);

-- --------------------------------------------------------

--
-- Structure de la table `siteexperimentation`
--

CREATE TABLE `siteexperimentation` (
  `nom` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `siteexperimentation`
--

INSERT INTO `siteexperimentation` (`nom`, `repetitions`) VALUES
('Domaine Expérimental Alénya-Roussillon', 50),
('INRAE Gotheron', 20),
('SECL-Terre d\'essais', 1),
('Saint Marie', 1),
('Sica CENTREX', 5),
('CTIFL de Balandran', 7),
('INRA/BIP', 2),
('AREFE', 3),
('SERFEL', 4),
('INRA de Gotheron', 2),
('Lycée Amboise', 2),
('AREFLEC San Giuliano', 3),
('Lycée agricole de Borgo', 3),
('INVENIO Commensacq', 2),
('SILEBAN Créances', 2),
('SILEBAN Montfarville', 2),
('Pôle légumes', 5),
('Tour en sologne', 3),
('INVENIO Douville', 14),
('INVENIO Ste Livrade sur Lot', 4),
('Producteur - APREL - VERQUIERES', 9),
('Producteur - SAVEOL - PLOUGUERNEAU', 12),
('APREL - Saint Rémy de provence', 13),
('ARELPAL Site B - Pont Saint martin', 13),
('Producteur LCA/CVETMO - Saint Denis en Val', 5),
('SAVEOL Site A - GUIPAVAS', 7),
('SAVEOL Site B - GUIPAVAS', 7),
('Sica CENTREX - Torreilles', 2),
('SEFRA', 4),
('INRA - Domaine Saint Paul', 7),
('INRA Ribeauvillé', 10),
('Domaine le Colombier', 2),
('Lycée agricole de Rivesaltes', 4),
('Station de Tresserre', 1),
('Château Grand Baril', 2),
('SERFEL (SudExpé)', 1),
('INRA - La Grande Ferrade', 1),
('Château les Vergnes', 1),
('Lycée agricole de Rivesaltes', 4),
('Domaine du Chapitre', 1),
('Haroué', 5),
('CEFE', 1),
('EPL D\'ARRAS', 3),
('Ferme du Chaumoy LE SUBDRAY', 4),
('CTIFL Carquefou', 10),
('INRA Alenya', 6),
('GRAB Marguerites', 4),
('INVENIO - Lycée agricole Ste Livrade', 4),
('CTIFL Balandran - Bellegarde', 1),
('SCRADH - Hyeres', 7),
('CREAT - La Gaude', 10),
('Caté - St Pol de Léon', 8),
('Arexhor Seine-Manche', 5),
('GIE Fleurs et Plantes du Sud-Ouest', 6),
('CDHR - Centre Val de Loire', 4),
('CATE', 7),
('Arexhor Grand Est', 7),
('Arexhor Pays de Loire', 3),
('Stepp Bretagne', 7),
('CA 58', 1),
('CA 17', 2),
('CA 53', 2),
('Station SCRADH', 12),
('Doignies', 2),
('Villedieu-sur-Indre', 4),
('Murs', 3),
('Le Rheu', 2),
('ARMEFLHOR', 4),
('EPLEFPA Saint-Paul', 7),
('Saint Joseph', 5),
('Rouffach', 1),
('Bretenière', 1),
('Lusignan', 1),
('Mauguio', 1),
('Estrées-Mons', 1),
('Thiverval-Grignon', 1),
('Crécom', 1),
('Toulouse-Lamothe', 2),
('Dijon-Epoisses', 2);

-- --------------------------------------------------------

--
-- Structure de la table `sousfamille`
--

CREATE TABLE `sousfamille` (
  `sousfamille` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sousfamille`
--

INSERT INTO `sousfamille` (`sousfamille`, `repetitions`) VALUES
('Préparation bactérienne', 66),
('Préparation fongique', 34),
('Origine minérale', 52),
('Origine végétale', 25),
('Insectes parasitoïdes', 36),
('Insectes prédateurs', 26),
('Stimulateur des défenses', 4),
('Phéromones', 22),
('Plantes attractives', 12),
('Acariens prédateurs', 12),
('Plantes nématicides', 7),
('Préparation virale', 6),
('Plantes répulsives', 6),
('Barrières', 6),
('Plantes pièges', 5),
('Refuge perchoir', 3),
('Plantes de biofumigation', 5),
('Plantes associées', 7),
('Origine végétale et animale', 2),
('Origine bactérienne', 3),
('Effeuillages', 4);

-- --------------------------------------------------------

--
-- Structure de la table `stadeappli`
--

CREATE TABLE `stadeappli` (
  `id` int(11) NOT NULL,
  `donnees` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stadeappli`
--

INSERT INTO `stadeappli` (`id`, `donnees`, `repetitions`) VALUES
(1, 'Lâchers de Macrolophus', 8),
(2, 'Application répétée', 8),
(3, 'Lâchers de 125 ind/m²', 4),
(4, 'Lâchers ponctuels', 4),
(5, 'Apports réguliers', 5),
(6, 'Soufre pour oïdium', 2),
(7, 'Traitement préventif', 6),
(8, 'Lâchers en préventif', 4),
(9, 'Observation régulière', 4),
(10, 'Infestation naturelle', 3),
(11, 'Traitement avec engrais foliaires', 2),
(12, 'Lâchers en juin', 2),
(13, 'Lâchers en début de saison', 2),
(14, 'Traitement avec phéromones', 2),
(15, 'Élevage en sachets', 2),
(16, 'Apports sous forme de granulés', 2),
(17, 'Traitement curatif sur foyers', 2),
(18, 'Lâchers de 17 ind/m²', 2);

-- --------------------------------------------------------

--
-- Structure de la table `typetraite`
--

CREATE TABLE `typetraite` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `repetitions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `typetraite`
--

INSERT INTO `typetraite` (`id`, `type`, `repetitions`) VALUES
(1, 'Fongicides', 305),
(2, 'Insecticides', 611),
(3, 'Molluscicides', 23),
(4, 'Favorise les auxilaires', 10),
(5, 'Acaricides', 42),
(6, 'Nématicides', 13),
(7, 'Herbicides', 7),
(8, 'Bactéricides', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cibleprincipal`
--
ALTER TABLE `cibleprincipal`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `methode`
--
ALTER TABLE `methode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `modeaction`
--
ALTER TABLE `modeaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mode` (`mode`);

--
-- Index pour la table `satisfaction`
--
ALTER TABLE `satisfaction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stadeappli`
--
ALTER TABLE `stadeappli`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typetraite`
--
ALTER TABLE `typetraite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `methode`
--
ALTER TABLE `methode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT pour la table `modeaction`
--
ALTER TABLE `modeaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `satisfaction`
--
ALTER TABLE `satisfaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `stadeappli`
--
ALTER TABLE `stadeappli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `typetraite`
--
ALTER TABLE `typetraite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
