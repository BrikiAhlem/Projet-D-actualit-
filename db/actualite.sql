-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 13 déc. 2023 à 19:36
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `news`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `date_publication` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `titre`, `description`, `date_publication`) VALUES
(27, 'yezi khw stop', 'na faddit', '2023-12-09 22:32:17'),
(28, 'Palestin', 'الحرب بين إسرائيل وحماس: بنيامين نتنياهو يؤكد أن إسرائيل ستواصل \"حربها العادلة للقضاء على حماس\"، وقائد الجيش الإسرائيلي يريد \"زيادة الضغط\" على غزة', '2023-12-09 22:50:53'),
(29, 'palestin', 'Guerre Israël-Hamas : Benyamin Nétanyahou assure qu’Israël va poursuivre sa « juste guerre pour éliminer le Hamas », le chef de l’armée israélienne veut « accentuer la pression » sur Gaza…', '2023-12-09 22:53:08'),
(31, 'news', 'Guerre Israël-Hamas : Benyamin Nétanyahou assure qu’Israël va poursuivre sa « juste guerre pour éliminer le Hamas », le chef de l’armée israélienne veut « accentuer la pression » sur Gaza…', '2023-12-09 22:57:24'),
(53, 'صحة', 'دراسات جديدة حول آثار كوفيد-19 على الصحة النفسية للأشخاص المتعافين.\r\n', '2023-12-10 01:08:20'),
(54, 'اقتصاد', 'تصاعد أسعار الطاقة: تأثيرها على المستهلكين والأسواق المالية.\r\n', '2023-12-10 01:08:55'),
(55, 'Politique', 'Élection présidentielle en France : Résultats du premier tour et perspectives pour le second tour.\r\n', '2023-12-10 01:09:20'),
(56, 'Conflit Israélo-Palestinien :', '* Évolution des tensions et des incidents récents.\r\nNégociations de paix et initiatives diplomatiques.\r\n* Évolution des tensions et des incidents récents', '2023-12-10 01:14:13'),
(57, 'الوضع الإنساني', '* ظروف الحياة في الأراضي الفلسطينية المحت\r\n*المساعدات الإنسانية والاحتياجات العاجلة والجهود الدولية.\r\nلة.\r\n', '2023-12-10 01:15:24'),


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
