-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 02, 2024 at 03:04 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwiaciarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres`
--

CREATE TABLE `adres` (
  `id_adres` int(30) NOT NULL,
  `kraj` varchar(30) NOT NULL,
  `miasto` varchar(100) NOT NULL,
  `ulica` varchar(100) NOT NULL,
  `numer` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `adres`
--

INSERT INTO `adres` (`id_adres`, `kraj`, `miasto`, `ulica`, `numer`) VALUES
(1, 'Polska', 'Warszawa', 'Aleje Jerozolimskie', '123'),
(2, 'Polska', 'Kraków', 'ul. Floriańska', '45'),
(3, 'Polska', 'Gdańsk', 'ul. Długa', '67'),
(4, 'Polska', 'Wrocław', 'Plac Solny', '89'),
(5, 'Polska', 'Poznań', 'ul. Święty Marcin', '101'),
(6, 'Polska', 'Łódź', 'ul. Piotrkowska', '12'),
(7, 'Polska', 'Szczecin', 'ul. Monte Cassino', '34'),
(8, 'Polska', 'Katowice', 'ul. Mariacka', '56'),
(9, 'Polska', 'Gdynia', 'ul. Władysława IV', '78'),
(10, 'Polska', 'Bydgoszcz', 'ul. Gdańska', '90'),
(11, 'Polska', 'Białystok', 'ul. Lipowa', '23'),
(12, 'Polska', 'Lublin', 'ul. Krakowskie Przedmieście', '45'),
(13, 'Polska', 'Sopot', 'ul. Bohaterów Monte Cassino', '67'),
(14, 'Polska', 'Olsztyn', 'ul. Jagiellońska', '89'),
(15, 'Polska', 'Kielce', 'ul. Sienkiewicza', '101'),
(16, 'Polska', 'Rzeszów', 'ul. 3 Maja', '12'),
(17, 'Polska', 'Częstochowa', 'ul. Jasna', '34'),
(18, 'Polska', 'Toruń', 'ul. Kopernika', '56'),
(19, 'Polska', 'Opole', 'ul. Piastowska', '78'),
(20, 'Polska', 'Zielona Góra', 'ul. Wrocławska', '90'),
(21, 'Polska', 'Gliwice', 'ul. Świętej Barbary', '23'),
(22, 'Polska', 'Bielsko-Biała', 'ul. Cieszyńska', '45'),
(23, 'Polska', 'Rybnik', 'ul. Raciborska', '67'),
(24, 'Polska', 'Tychy', 'ul. Mikołowska', '89'),
(25, 'Polska', 'Dąbrowa Górnicza', 'ul. 1 Maja', '101');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwiatekcena`
--

CREATE TABLE `kwiatekcena` (
  `id_kwiatek` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `przecena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `kwiatekcena`
--

INSERT INTO `kwiatekcena` (`id_kwiatek`, `cena`, `przecena`) VALUES
(1, 26, NULL),
(2, 19, NULL),
(3, 30, NULL),
(4, 16, NULL),
(5, 22, NULL),
(6, 28, NULL),
(7, 36, NULL),
(8, 28, NULL),
(9, 20, NULL),
(10, 25, NULL),
(11, 33, NULL),
(12, 21, NULL),
(13, 18, NULL),
(14, 30, NULL),
(15, 26, NULL),
(16, 24, NULL),
(17, 32, NULL),
(18, 21, NULL),
(19, 34, NULL),
(20, 17, NULL),
(21, 34, NULL),
(22, 27, NULL),
(23, 18, NULL),
(24, 29, NULL),
(25, 23, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwiatekopis`
--

CREATE TABLE `kwiatekopis` (
  `id_kwiatek` int(11) NOT NULL,
  `nazwa` text NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `kwiatekopis`
--

INSERT INTO `kwiatekopis` (`id_kwiatek`, `nazwa`, `opis`) VALUES
(1, 'Róża', 'Symbol miłości i romantyzmu, róża występuje w różnych kolorach i odmianach, oferując bogactwo wyboru dla różnych okazji.'),
(2, 'Tulipan', 'Tulipany są znane z elegancji i prostoty, dostępne w różnorodnych kolorach i kształtach, idealne zarówno do bukietów, jak i aranżacji w wazonach.'),
(3, 'Lilak', 'O zapachu lilaka mówi się, że jest jednym z najpiękniejszych na świecie, a jego delikatne kwiaty są symbolem wiosny i odrodzenia.'),
(4, 'Hiacynt', 'Hiacynty emanują intensywnym zapachem i występują w różnorodnych kolorach, dodając świeżości i aromatu do każdego pomieszczenia.'),
(5, 'Stokrotka', 'Stokrotki są symbolem niewinności i prostoty, nadają się idealnie do tworzenia uroczych bukietów lub ozdabiania ogrodów.'),
(6, 'Fiołek', 'Fiołki są znane ze swojego delikatnego zapachu i kolorowych płatków, które dodają uroku zarówno bukietom, jak i wnętrzom.'),
(7, 'Peonie', 'Peonie są uznawane za kwiaty luksusowe z powodu swojej pełności i elegancji, stanowią doskonały wybór na wyjątkowe okazje.'),
(8, 'Hortensja', 'Hortensje charakteryzują się okazałymi kwiatostanami i bogactwem kolorów, które przyciągają uwagę w ogrodach i bukietach.'),
(9, 'Gerbera', 'Gerbery to kwiaty o żywych kolorach i dużej różnorodności, doskonałe jako elementy dekoracyjne w świeżych kompozycjach kwiatowych.'),
(10, 'Narcyz', 'Narcyzy są znakiem nadchodzącej wiosny, ich jaskrawe kwiaty i delikatny zapach sprawiają, że są mile widziane w każdym ogrodzie.'),
(11, 'Chryzantema', 'Chryzantemy występują w wielu odmianach i kolorach, są cenione za swoją trwałość i piękno, idealne zarówno na bukiety, jak i aranżacje nagrobne.'),
(12, 'Kwiat magnolii', 'Magnolie są znane ze swoich dużych, pachnących kwiatów, które są symbolem delikatności i piękna południowych ogrodów.'),
(13, 'Maki', 'Maki są kwiatami o intensywnych kolorach, które symbolizują odwagę i życie, są często wykorzystywane w bukietach i aranżacjach.'),
(14, 'Astry', 'Astry to kwiaty o drobnych kwiatach zebranych w kłosy, występujące w różnych kolorach i nadające się zarówno do ogrodów, jak i bukietów.'),
(15, 'Goździk', 'Goździki to kwiaty o intensywnym zapachu i pięknych płatkach, które są symbolem miłości i lojalności, często wykorzystywane w bukietach i kompozycjach kwiatowych.'),
(16, 'Storczyk', 'Storczyki są kwiatami ekskluzywnymi i eleganckimi, znane z długotrwałego kwitnienia i egzotycznych kształtów, idealne jako prezent na specjalne okazje.'),
(17, 'Wrzos', 'Wrzosy są kwiatami charakterystycznymi dla późnej jesieni i zimy, ich delikatne kwiaty dodają uroku ogrodom i kompozycjom na balkonach.'),
(18, 'Bratki', 'Bratki to kwiaty o jaskrawych kolorach i niskim wzroście, idealne do sadzenia w ogrodach skalnych lub do ozdabiania balkonów.'),
(19, 'Wstążka', 'Wstążki są kwiatami delikatnymi i eleganckimi, często wykorzystywanymi jako dodatki w bukietach ślubnych i kompozycjach kwiatowych.'),
(20, 'Kwiat afrykański', 'Kwiat afrykański, zwany również gazanią, charakteryzuje się jaskrawymi kolorami i wytrzymałością na warunki atmosferyczne, doskonały do sadzenia w ogrodach oraz doniczkach na tarasach.'),
(21, 'Stokrotka afrykańska', 'Stokrotka afrykańska, znana również jako osteospermum, zachwyca intensywnymi barwami i łatwością pielęgnacji, idealna do sadzenia w ogrodach i doniczkach.'),
(22, 'Begonia', 'Begonie to kwiaty o bogatych kolorach i różnych kształtach, cenione za swoją trwałość i efektowny wygląd, doskonałe jako rośliny domowe i ogrodowe.'),
(23, 'Lilia', 'Lilie są eleganckimi kwiatami o wyjątkowym zapachu i delikatnych płatkach, stanowią doskonałą ozdobę ogrodów oraz są popularnym wyborem na ślubne bukiety.'),
(24, 'Goździk chiński', 'Goździk chiński, zwany również Dianthus, to kwiat o intensywnym zapachu i pięknych kwiatach, często wykorzystywany jako ozdoba ogrodów i balkonów.'),
(25, 'Azalia', 'Azalie to kwiaty o intensywnych kwiatach i bujnym wzroście, cenione za swoje piękno i trwałość, doskonałe do sadzenia w ogrodach i doniczkach na tarasach.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `id_opinia` int(11) NOT NULL,
  `id_zamowienie` int(30) NOT NULL,
  `opinia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `opinie`
--

INSERT INTO `opinie` (`id_opinia`, `id_zamowienie`, `opinia`) VALUES
(1, 1, 'Szybka dostawa, kwiaty świeże i piękne.'),
(2, 2, 'Zamówienie dotarło bardzo szybko, kwiaty wyglądają jeszcze lepiej niż na zdjęciu.'),
(3, 3, 'Bardzo polecam! Kwiaty świetnej jakości, pięknie zapakowane.'),
(4, 4, 'Profesjonalna obsługa, kwiaty świeże i pięknie pachnące.'),
(5, 5, 'Super szybka wysyłka, kwiaty dotarły nienaruszone.'),
(6, 6, 'Kwiaty świeże i pięknie prezentujące się w wazonie.'),
(7, 7, 'Zamówienie zrealizowane bardzo sprawnie, kwiaty świeże i zadbane.'),
(8, 8, 'Dostawa bardzo szybka, kwiaty dobrze zabezpieczone.'),
(9, 9, 'Bardzo miła obsługa, kwiaty wysokiej jakości.'),
(10, 10, 'Kwiaty zgodne z opisem, dostawa bez problemów.'),
(11, 11, 'Profesjonalna obsługa klienta, kwiaty świeże i pięknie prezentujące się.'),
(12, 12, 'Szybka dostawa, kwiaty w idealnym stanie.'),
(13, 13, 'Bardzo zadowolony z zakupu, kwiaty piękne i świeże.'),
(14, 14, 'Dostawa punktualna, kwiaty dobrze zabezpieczone.'),
(15, 15, 'Kwiaty zgodne z oczekiwaniami, polecam!'),
(16, 16, 'Obsługa klienta na wysokim poziomie, kwiaty piękne i świeże.'),
(17, 17, 'Szybka dostawa, kwiaty starannie zapakowane.'),
(18, 18, 'Kwiaty piękne, dostawa bezproblemowa.'),
(19, 19, 'Profesjonalna obsługa, kwiaty wysokiej jakości.'),
(20, 20, 'Zakup udany, kwiaty świeże i pięknie pachnące.'),
(21, 21, 'Bardzo szybka dostawa, kwiaty w doskonałym stanie.'),
(22, 22, 'Kwiaty świeże i pięknie wyglądające, polecam!'),
(23, 23, 'Dostawa szybka, kwiaty starannie zapakowane.'),
(24, 24, 'Obsługa klienta bardzo pomocna, kwiaty zgodne z opisem.'),
(25, 25, 'Zamówienie zrealizowane sprawnie, kwiaty świeże i piękne.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `imie`, `nazwisko`, `haslo`) VALUES
(1, 'Jan', 'Kowalski', 'haslo123'),
(2, 'Anna', 'Nowak', 'tajnehaslo'),
(3, 'Piotr', 'Wiśniewski', 'mojehaslo'),
(4, 'Maria', 'Dąbrowska', '123456'),
(5, 'Tomasz', 'Lis', 'tajnehaslo1'),
(6, 'Magdalena', 'Kamińska', 'kwiaty123'),
(7, 'Krzysztof', 'Zając', 'klient123'),
(8, 'Barbara', 'Wójcik', 'tajnehaslo2'),
(9, 'Paweł', 'Kowalczyk', 'pawel123'),
(10, 'Katarzyna', 'Szymańska', 'haslo456'),
(11, 'Andrzej', 'Woźniak', 'abc123'),
(12, 'Ewa', 'Kozłowska', 'qwerty'),
(13, 'Michał', 'Jankowski', 'michal123'),
(14, 'Joanna', 'Wojciechowska', 'haslo789'),
(15, 'Mateusz', 'Kwiatkowski', 'kwiaty456'),
(16, 'Agnieszka', 'Kaczmarek', 'agnieszka123'),
(17, 'Marcin', 'Mazur', 'mazur123'),
(18, 'Monika', 'Adamczyk', 'haslo987'),
(19, 'Jakub', 'Grabowski', 'jakub123'),
(20, 'Natalia', 'Nowakowska', 'natalia123'),
(21, 'Wojciech', 'Pawlak', 'wojtek123'),
(22, 'Karolina', 'Michalska', 'karolina123'),
(23, 'Adam', 'Nowicki', 'haslo000'),
(24, 'Patrycja', 'Witkowska', 'patrycja123'),
(25, 'Rafał', 'Jastrzębski', 'haslorafal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(30) NOT NULL,
  `id_kwiatek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_adres` int(30) NOT NULL,
  `ilosc_kwiatkow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_kwiatek`, `id_user`, `id_adres`, `ilosc_kwiatkow`) VALUES
(1, 19, 15, 19, 10),
(2, 13, 19, 5, 7),
(3, 13, 20, 9, 4),
(4, 16, 2, 12, 2),
(5, 7, 23, 17, 7),
(6, 5, 2, 21, 8),
(7, 13, 4, 7, 10),
(8, 20, 6, 17, 8),
(9, 17, 3, 12, 1),
(10, 20, 22, 23, 10),
(11, 3, 16, 22, 5),
(12, 12, 3, 2, 10),
(13, 19, 18, 10, 8),
(14, 13, 8, 1, 3),
(15, 8, 18, 17, 1),
(16, 13, 7, 18, 9),
(17, 1, 16, 3, 6),
(18, 12, 18, 4, 6),
(19, 7, 20, 2, 9),
(20, 8, 23, 16, 4),
(21, 25, 21, 5, 5),
(22, 13, 8, 1, 3),
(23, 2, 17, 2, 4),
(24, 9, 22, 6, 6),
(25, 7, 14, 25, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`id_adres`);

--
-- Indeksy dla tabeli `kwiatekcena`
--
ALTER TABLE `kwiatekcena`
  ADD PRIMARY KEY (`id_kwiatek`);

--
-- Indeksy dla tabeli `kwiatekopis`
--
ALTER TABLE `kwiatekopis`
  ADD PRIMARY KEY (`id_kwiatek`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`id_opinia`),
  ADD KEY `id_zamowienieopinie` (`id_zamowienie`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_kwiatekzamowienie` (`id_kwiatek`),
  ADD KEY `id_userzamowienie` (`id_user`),
  ADD KEY `id_adreszamowienie` (`id_adres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adres`
--
ALTER TABLE `adres`
  MODIFY `id_adres` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kwiatekcena`
--
ALTER TABLE `kwiatekcena`
  MODIFY `id_kwiatek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kwiatekopis`
--
ALTER TABLE `kwiatekopis`
  MODIFY `id_kwiatek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id_opinia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kwiatekcena`
--
ALTER TABLE `kwiatekcena`
  ADD CONSTRAINT `id_kwiatekjoin` FOREIGN KEY (`id_kwiatek`) REFERENCES `kwiatekopis` (`id_kwiatek`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opinie`
--
ALTER TABLE `opinie`
  ADD CONSTRAINT `id_zamowienieopinie` FOREIGN KEY (`id_zamowienie`) REFERENCES `zamowienia` (`id_zamowienia`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `id_adreszamowienie` FOREIGN KEY (`id_adres`) REFERENCES `adres` (`id_adres`),
  ADD CONSTRAINT `id_kwiatekzamowienie` FOREIGN KEY (`id_kwiatek`) REFERENCES `kwiatekopis` (`id_kwiatek`),
  ADD CONSTRAINT `id_userzamowienie` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
