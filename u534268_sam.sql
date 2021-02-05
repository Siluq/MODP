-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 12 nov 2020 om 10:22
-- Serverversie: 5.5.14
-- PHP-versie: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u534268_sam`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) UNSIGNED NOT NULL,
  `naam` varchar(255) CHARACTER SET utf8 NOT NULL,
  `beschrijving` text CHARACTER SET utf8 NOT NULL,
  `foto` varchar(255) NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categorie`
--

INSERT INTO `categorie` (`id`, `naam`, `beschrijving`, `foto`, `toegevoegd_op`, `gewijzigd_op`) VALUES
(1, 'Tapijt', 'Tapijt geeft je dat echte ‘thuis’ gevoel. Tapijt is zacht aan de voeten en zorgt voor een warme, natuurlijke uitstraling. Je hebt de keuze uit heel veel kleuren, dessins en texturen. Met prachtige merken als Desso, Bonaparte, Parade en ons eigen merk is er altijd wel tapijt dat bij jouw stijl en huis past.', 'tapijt.jpg', '2020-11-09 09:37:43', '2020-11-09 08:37:43'),
(2, 'PVC', 'PVC vloeren zijn net zo mooi als echt hout of steen, net zo gemakkelijk te leggen als laminaat en net zo duurzaam als het sterkste vinyl. Naast dat PVC vloeren geschikt zijn voor vloerverwarming, zijn PVC vloeren ook nog eens heel stil én waterbestendig. Met ons uitgebreide aanbod vind je altijd een PVC vloer die bij je past!', 'pvc.jpg', '2020-11-09 09:38:45', '2020-11-09 08:38:45'),
(3, 'Tapijttegels', 'Tapijttegels zijn zacht aan de voeten en geven een ruimte een sfeervolle, warme uitstraling. Het leggen van tapijt kaan een flinke klus zijn. De tapijttegel biedt daarvoor een praktische oplossing. Deze losse, vierkante tegels van tapijt leg je met hetzelfde gemak als laminaat. De tegelvorm maakt dat je de vloer snel legt. En flexibel bent in hoe en waar je de vloer legt. Win-win!', 'tapijttegels', '2020-11-09 09:40:16', '2020-11-09 08:40:16'),
(4, 'Laminaat', 'Creëer eenvoudig een natuurlijke sfeer in huis met een laminaat vloer met houtmotief of steenmotief. Je hebt de keuze uit een ruim assortiment. Zo zijn er laminaatvloeren met houtmotief en een voelbare houtstructuur, maar ook dessins met zeer glad leisteen. Deze laminaatvloeren zijn nauwelijks van echt hout of steen te onderscheiden.', 'laminaat.jpg', '2020-11-09 09:40:49', '2020-11-09 08:40:49'),
(5, 'Parket', 'Lamelparket van Carpetright is een samengestelde vloer die bestaat uit twee verschillende lagen, een top en een onderlaag. De bovenste laag is massief hout van een aantal millimeter dik, de onderste laag bestaat uit multiplex. De lamelparket vloeren zijn niet te onderscheiden van volledig houten vloeren echter heeft de (lamel)parket vloer van Carpetright een aantal bijkomende voordelen.', 'parket.jpg', '2020-11-09 09:41:24', '2020-11-09 08:41:24'),
(6, 'Vinyl', 'Met de kleuren en dessins van een vinylvloer kun je alle kanten op. Er is ontzettend veel keuze. Nostalgische tegeltjes, een industriële betonlook of een traditionele visgraat, het is er! Vinyl is onderhoudsvriendelijk en kan gemakkelijk met water worden gereinigd. Dat maakt een vinyl vloer ideaal voor bijvoorbeeld in de keuken!', 'vinyl.jpg', '2020-11-09 09:43:27', '2020-11-09 08:43:27'),
(7, 'Deurmatten', 'Deurmatten zijn handige accessoires voor zowel binnen als buiten uw huis en zijn cruciaal bij het behouden van de kwaliteit van uw vloer. De grootste schade aan uw nieuwe vloer ontstaat door zand, viezigheid en water. Ruim 70% hiervan kan buiten worden gehouden door een deurmat. Carpetright heeft een ruim assortiment deurmatten in verschillende vormen, kleuren en maten. Daarnaast is het ook mogelijk een deurmat op maat te laten maken tot een breedte van twee meter.', 'deurmatten.jpg', '2020-11-09 09:44:34', '2020-11-09 08:44:34'),
(8, 'Kunstgras', 'Droom jij ook van zo\'n prachtig groen gazon, maar ben je geen tuinier type? Kies dan voor kunstgras! Je hebt kunstgras in verschillende soorten en prijsklassen. Van kunstgras dat geschikt is voor een balkon of terras, tot kunstgras dat getest is volgens FIFA-normeringen en ideaal is om een potje op te voetballen. Vind het kunstgras dat past bij jouw tuin of balkon én jouw budget.', 'kunstgras.jpg', '2020-11-09 09:45:22', '2020-11-09 08:45:22'),
(9, 'Gietvloeren', 'Creëer een industriële look in huis door middel van een gietvloer. de beschermende bovenlaag zorgt dat er een vloeistofdicht oppervlak ontstaat. Hierdoor is de vloer goed bestand tegen slijtage en makkelijk schoon te houden. Een gietvloer kan niet verwijderd worden van de ondergrond, daar tegenover staat dat er makkelijk een andere vloer overheen gelegd kan worden.', 'gietvloeren.jpg', '2020-11-09 09:46:54', '2020-11-09 08:46:54');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `naam` varchar(32) NOT NULL,
  `beschrijving` text NOT NULL,
  `prijs` decimal(10,2) NOT NULL,
  `dikte` decimal(10,2) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `sub_categorie_id` int(11) NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `naam`, `beschrijving`, `prijs`, `dikte`, `categorie_id`, `sub_categorie_id`, `toegevoegd_op`, `gewijzigd_op`) VALUES
(1, 'Mazu', 'Van visnet tot superzacht tapijt: Mazu is onderdeel van de Sedna tapijten. Het tapijt is gemaakt van ECONYL-garen. Deze garen zijn gemaakt van gerecycled afval zoals oude visnetten die uit de oceaan zijn gehaald. Door te kiezen voor Mazu tapijt, haal je niet alleen prachtig kwalitatief tapijt in huis, maar draag je ook bij aan een schonere oceaan. Het duurzame Mazu tapijt heeft een poolhoogte van 9 mm en is verkrijgbaar in diverse kleuren. Mazu is een vol en elegant Saxony tapijt. Het tapijt is ideaal voor de woonkamer, eetkamer, slaapkamer of de hal. Mazu is geschikt voor vloerverwarming en is verkrijgbaar op zowel 400 als 500 cm breed. Op het Mazu tapijt heb je 5 jaar garantie.\r\n', '40.96', '16.00', 1, 1, '2020-11-12 08:30:45', '2020-11-12 07:30:45'),
(2, 'Kai', 'Van visnet tot zacht tapijt: Kai is onderdeel van de Sedna tapijten. Het tapijt is gemaakt van ECONYL-garen. Deze garen zijn gemaakt van gerecycled afval zoals oude visnetten die uit de oceaan zijn gehaald. Door te kiezen voor Kai, haal je niet alleen een prachtig, kwalitatief tapijt in huis, maar draag je ook bij aan een schonere oceaan. Het duurzame Kai tapijt heeft een poolhoogte van 9,5 mm en is verkrijgbaar in diverse kleuren. Kai is een Twist tapijt en is ideaal voor drukke huishoudens. Het tapijt is slijtvast en gemakkelijk te onderhouden is. Het tapijt is ideaal voor de woonkamer, eetkamer, slaapkamer of de hal. Kai tapijt kan gebruikt worden met vloerverwarming en is verkrijgbaar op 400 en 500 cm breed. Op het Kai tapijt heb je 5 jaar garantie.', '24.56', '12.00', 1, 1, '2020-11-12 08:32:39', '2020-11-12 07:32:39'),
(3, 'Varuna', 'Van visnet tot super zacht tapijt: Varuna is onderdeel van de Sedna tapijten van AW. Het tapijt is gemaakt van ECONYL-garen. Deze garen zijn gemaakt van gerecycled afval zoals oude visnetten die uit de oceaan zijn gehaald. Door te kiezen voor Varuna tapijt, haal je niet alleen prachtig kwalitatief tapijt in huis, maar draag je ook bij aan een schonere oceaan. Het duurzame Varuna tapijt heeft een poolhoogte van 9 mm en is verkrijgbaar in diverse kleuren. Varuna is een onderhoudsvriendelijk Twist tapijt. Het tapijt is ideaal voor de woonkamer, eetkamer, slaapkamer of de hal. Varuna is geschikt voor vloerverwarming en is verkrijgbaar op zowel 400 als 500 cm breed. Op het Varuna tapijt heb je 5 jaar garantie.', '36.86', '11.50', 1, 1, '2020-11-12 08:34:04', '2020-11-12 07:34:04'),
(4, 'Aleria', 'Er zal in de nabije toekomst extra informatie te vinden zijn omtrent dit product. Uiteraard staan onze adviseurs in de winkel voor u klaar om u alles over dit product te vertellen, kijk hier voor uw dichtstbijzijnde Carpetright winkel.', '35.25', '17.00', 1, 2, '2020-11-12 08:35:21', '2020-11-12 07:35:21'),
(5, 'Canari', 'Er zal in de nabije toekomst extra informatie te vinden zijn omtrent dit product. Uiteraard staan onze adviseurs in de winkel voor u klaar om u alles over dit product te vertellen, kijk hier voor uw dichtstbijzijnde Carpetright winkel.', '31.15', '16.00', 1, 2, '2020-11-12 08:35:58', '2020-11-12 07:35:58'),
(6, 'Jasmijn', 'Perfect voor eetkamer, Perfect voor slaapkamer, Perfect voor woonkamer', '16.39', '10.00', 1, 3, '2020-11-12 08:37:15', '2020-11-12 07:37:15'),
(7, 'Carousel Twist Co', 'Deze tapijt reeks is ultiem functioneel en zeer bestand tegen vlekken. Dit geweldige tapijt is verkrijgbaar in diverse kleuren. Het tapijt zou bijvoorbeeld perfect passen in uw woonkamer of slaapkamer en een geweldig effect geven aan de invulling van deze ruimtes. Dit hoogpolige twist tapijt geeft een warm gevoel in elke kamer. Of u nu kiest voor een neutrale kleur of juist een gedurfde kleur!', '16.39', '12.00', 1, 3, '2020-11-12 08:37:54', '2020-11-12 07:37:54'),
(8, 'Supernature Visgraat', 'Wil je je huis een natuurlijke uitstraling geven? Dan is de Supernature Visgraat pvc-collectie misschien wel iets voor jou. Met deze vloeren haal je het buiten gevoel naar binnen. De Supernature Visgraat PVC vloer is een praktische en duurzame PVC vloer met een houtreliëf dat niet van echt te onderscheiden is. Het visgraatpatroon kan de ruimte groter doen lijken. Dit komt doordat de schuine lijnen je ogen naar de verste hoek van de ruimte leiden. De Supernature Visgraat PVC vloer is geschikt voor intensief gebruik, is geluiddempend en gemakkelijk te onderhouden. Ook is de vloer geschikt voor vloerverwarming. Je hebt maar liefst 10 jaar garantie op de vloer.', '41.81', '2.50', 2, 0, '2020-11-12 08:39:08', '2020-11-12 07:39:08'),
(9, 'Dryback Prestg', 'Er zal in de nabije toekomst extra informatie te vinden zijn omtrent dit product. Uiteraard staan onze adviseurs in de winkel voor u klaar om u alles over dit product te vertellen, kijk hier voor uw dichtstbijzijnde Carpetright winkel.', '31.76', '3.00', 2, 0, '2020-11-12 08:39:56', '2020-11-12 07:39:56'),
(10, 'Xpressions Pm', 'Perfect voor eetkamer, Perfect voor kantoren, Perfect voor keuken, Perfect voor slaapkamer, Perfect voor woonkamer', '16.39', '8.00', 4, 0, '2020-11-12 08:41:21', '2020-11-12 07:41:21'),
(11, 'Lungo Pm', 'Perfect voor eetkamer, Perfect voor keuken, Perfect voor slaapkamer, Perfect voor woonkamer', '21.31', '8.00', 4, 0, '2020-11-12 08:42:15', '2020-11-12 07:42:15'),
(12, 'Extreme', 'Er zal in de nabije toekomst extra informatie te vinden zijn omtrent dit product. Uiteraard staan onze adviseurs in de winkel voor u klaar om u alles over dit product te vertellen, kijk hier voor uw dichtstbijzijnde Carpetright winkel.', '31.15', '2.50', 6, 0, '2020-11-12 08:43:23', '2020-11-12 07:43:23'),
(13, 'Castle Oak', 'Krijg het gevoel van echte eiken planken met het vinyl Castle Oak. Zo heeft u de schoonheid van een eiken vloer van muur tot muur, zonder de hoge kosten. Deze vinylvloer voelt comfortabel aan uw voeten en is verkrijgbaar in een scala van natuurlijke kleuren. Het vinyl Castle Oak is een goede keuze voor een prachtige woon- of slaapkamer. Met de Castle Oak heeft u de uitstraling van een echte eiken vloer met de onderhoudsvriendelijkheid van een vinylvloer. De vloer is eenvoudig te leggen en schoon te maken en daarom erg geschikt voor drukkere huishoudens. Wilt u het eiken effect van dit vinyl liever eerst thuis bekijken? Dan kunt u altijd online een vloerstaal bestellen.', '12.29', '2.60', 6, 0, '2020-11-12 08:44:15', '2020-11-12 07:44:15'),
(14, 'Trendy Vinyl', 'De Trendy vinylvloeren hebben een verrassend textiel design en zijn helemaal van deze tijd! De vinylvloer kan gebruikt worden voor de woonkamer, eetkamer, keuken en zelfs de badkamer. De vinylvloer heeft een beschermende en onderhoudsvriendelijke 0,35 mm antislip toplaag. Dit maakt het vinyl geschikt voor zwaar huishoudelijk gebruik. Daarnaast is het vinyl eenvoudig schoon te maken. Trendy vinyl is verkrijgbaar op 400 cm breed. Op Trendy vinyl heb je maar liefst 15 jaar garantie.', '12.29', '2.40', 6, 0, '2020-11-12 08:44:58', '2020-11-12 07:44:58');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sub_categorie`
--

CREATE TABLE `sub_categorie` (
  `id` int(11) UNSIGNED NOT NULL,
  `naam` varchar(255) CHARACTER SET utf8 NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `sub_categorie`
--

INSERT INTO `sub_categorie` (`id`, `naam`, `toegevoegd_op`, `gewijzigd_op`) VALUES
(1, 'Polyamide', '2020-11-09 09:52:26', '2020-11-09 08:52:26'),
(2, 'Polyester', '2020-11-09 09:53:26', '2020-11-09 08:53:26'),
(3, 'Polypropyleen', '2020-11-09 09:54:36', '2020-11-09 08:54:36'),
(4, 'Rijk aan wol', '2020-11-09 09:54:59', '2020-11-09 08:54:59'),
(5, 'Sisal', '2020-11-09 09:55:12', '2020-11-09 08:55:12'),
(6, 'Solution Dyed Olefin', '2020-11-09 09:55:47', '2020-11-09 08:55:47'),
(7, 'Synthetisch', '2020-11-09 09:56:04', '2020-11-09 08:56:04'),
(8, 'Triexta', '2020-11-09 09:56:18', '2020-11-09 08:56:18');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sub_categorie`
--
ALTER TABLE `sub_categorie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `sub_categorie`
--
ALTER TABLE `sub_categorie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
