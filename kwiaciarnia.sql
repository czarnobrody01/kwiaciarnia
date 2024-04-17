-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 09:59 PM
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
(1, 'Polska', 'Dąbrowa Górnicza', 'Łazy Błędowskie', '29');

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
(1, 20, NULL);

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
(1, 'Tulipan Czerwony', 'fajny kwiatuszek czerwony ładny');

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
(2, 2, 'fajny kwiatek czerwony polecam');

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
(1, 'Jakub', 'Suski', 'haslozgaslo'),
(2, 'Tomasz', 'Walczuch', 'haslo123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(30) NOT NULL,
  `id_kwiatek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_adres` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_kwiatek`, `id_user`, `id_adres`) VALUES
(2, 1, 2, 1);

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
  MODIFY `id_adres` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kwiatekcena`
--
ALTER TABLE `kwiatekcena`
  MODIFY `id_kwiatek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kwiatekopis`
--
ALTER TABLE `kwiatekopis`
  MODIFY `id_kwiatek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id_opinia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
