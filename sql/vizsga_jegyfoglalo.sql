-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2023. Máj 30. 09:35
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsga2023`
--
CREATE DATABASE IF NOT EXISTS `vizsga2023` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `vizsga2023`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `ID` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telefon` varchar(30) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `jelszo` varchar(40) COLLATE utf8_hungarian_ci DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`ID`, `nev`, `email`, `telefon`, `jelszo`) VALUES
(1, 'Teszt Elek', 'teszt1@gmail.com', '06203334455', '2023-05-24 18:28:32'),
(2, 'Példa Béla', 'teszt2@gmail.com', '06304567898', '2023-05-24 18:28:32'),
(11, 'Gipsz Jakab', 'gipsz@jakab.hu', '06203334455', '2023-05-24 18:28:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fellepok`
--

CREATE TABLE `fellepok` (
  `ID` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `mufaj` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `fellepok`
--

INSERT INTO `fellepok` (`ID`, `nev`, `mufaj`, `leiras`) VALUES
(1, 'Janet Jackson', 'R&B, pop, dance, hip hop, funk, rock, new jack swing', 'Janet Damita Jo Jackson (born May 16, 1966) is an American singer, songwriter, actress, and dancer.'),
(2, 'Billy Joel and Stevie Nicks', 'Rock, pop, soft rock, pop rock', 'William Martin Joel (born May 9, 1949) is an American singer, pianist, and songwriter.'),
(3, 'Usher', 'Soul, R&B, pop', 'American singer Usher has released eight studio albums, ten compilation albums, eight extended plays, and 80 singles (including 19 as a featured artist).'),
(4, 'Blink-182', 'Pop-punk, alternative rock, punk rock, skate punk', 'Blink-182 (stylized as blink-182) is an American rock band formed in Poway, California, in 1992.'),
(5, 'SZA', 'R&B', 'Solana Imani Rowe (born November 8, 1989), known professionally as SZA (/?s?z?/ SIZ-?), is an American singer and songwriter.'),
(6, 'Paramore', 'Pop-punk, emo, pop rock, alternative rock, power pop, new wave', 'Paramore is an American rock band from Franklin, Tennessee, formed in 2004.'),
(7, 'Masego', 'Trap-house-jazz, hip hop, R&B', 'Micah Davis (born June 8, 1993), known professionally as Masego (m?-SE-go), is a Jamaican-American musician and singer known for incorporating the saxophone into his music.'),
(8, 'Joni Mitchell', 'Folk, pop, jazz, rock', 'Roberta Joan \"Joni\" Mitchell CC (n�e Anderson; born November 7, 1943) is a Canadian-American musician, producer, and painter.'),
(9, 'Ari Lennox', 'R&B, soul, neo soul', 'Courtney Shanade Salter (born March 26, 1991), known professionally as Ari Lennox, is an American R&B singer from Washington, D.C.'),
(10, 'Taylor Swift', 'Pop, country, folk, rock alternative', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter.'),
(11, 'New Edition, Keith Sweat, and Guy', 'R&B, new jack swing, hip hop, soul, urban', 'Keith Sweat (born July 22, 1961) is an American singer, songwriter, record producer, and an early figure in the new jack swing musical movement. '),
(12, 'Shania Twain', 'Country, pop, country pop', 'Eileen Regina \"Shania\" Twain OC (/a??li?n?...????na??/ eye-LEEN ... sh?-NY-? n�e Edwards; born August 28, 1965) is a Canadian singer-songwriter and actress.'),
(13, 'Anita Baker', 'Soul jazz, quiet storm, smooth jazz, soul, R&B', 'Anita Denise Baker (born January 26, 1958) is an American singer-songwriter.'),
(14, 'Rauw Alejandro', 'Latin R&B, reggaeton, Latin trap', 'Ra�l Alejandro Ocasio Ruiz (born January 10, 1993), known professionally as Rauw Alejandro, is a Puerto Rican singer, songwriter, and actor.'),
(15, 'Jill Scott', 'R&B, soul, neo soul, hip hop, spoken word, jazz', 'Jill Heather Scott (born April 4, 1972) is an American singer, songwriter, model, poet and actress.'),
(16, 'Metallica', 'Heavy metal, thrash metal, speed metal, hard rock', 'Metallica is an American heavy metal band.'),
(17, 'Wizkid', 'Afrobeats, Afrobeat, reggae, dancehall, R&B, hip hop, pop', 'Ayodeji Ibrahim Balogun (born 16 July 1990), known professionally as Wizkid, is a Nigerian singer and songwriter. '),
(18, 'Kenny Chesney', 'Country, country rock, Gulf and Western, neotraditional country', 'Kenneth Arnold Chesney (born March 26, 1968) is an American country music singer, songwriter, and guitarist. '),
(19, 'JID and Smino', 'Hip hop, neo soul, R&B, electro-funk', 'Christopher Smith Jr. (born October 2, 1991), better known by his stage name Smino, is an American rapper and singer. '),
(20, 'The Judds', 'Country', 'The Judds were an American country music duo composed of lead vocalist Wynonna Judd and her mother, Naomi Judd.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jegyek`
--

CREATE TABLE `jegyek` (
  `ID` int(11) NOT NULL,
  `felhasznaloID` int(11) NOT NULL,
  `koncertID` int(11) NOT NULL,
  `jegytipusID` int(11) NOT NULL,
  `db` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jegyek`
--

INSERT INTO `jegyek` (`ID`, `felhasznaloID`, `koncertID`, `jegytipusID`, `db`) VALUES
(1, 1, 1, 2, 5),
(2, 2, 1, 3, 3),
(3, 2, 15, 2, 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jegytipusok`
--

CREATE TABLE `jegytipusok` (
  `ID` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jegytipusok`
--

INSERT INTO `jegytipusok` (`ID`, `nev`, `ar`) VALUES
(1, 'Felnőtt jegy', 2500),
(2, 'Diákjegy', 1500),
(3, 'Nyugdíjas jegy', 1000),
(4, 'VIP jegy', 5000);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `koncertek`
--

CREATE TABLE `koncertek` (
  `ID` int(11) NOT NULL,
  `datum` date NOT NULL,
  `idopont` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `fellepoID` int(11) NOT NULL,
  `max_letszam` int(11) NOT NULL,
  `akt_letszam` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `koncertek`
--

INSERT INTO `koncertek` (`ID`, `datum`, `idopont`, `fellepoID`, `max_letszam`, `akt_letszam`) VALUES
(1, '2024-11-11', '', 4, 1437, 1436),
(2, '2024-03-17', '', 6, 1403, 1379),
(3, '2023-12-25', '', 10, 1438, 1398),
(4, '2024-10-20', '', 2, 1446, 1399),
(5, '2023-09-22', '', 12, 1409, 1374),
(6, '2024-02-09', '', 14, 1421, 1421),
(7, '2023-05-22', '', 10, 1432, 1432),
(8, '2023-12-22', '', 11, 1474, 1440),
(9, '2024-03-09', '', 4, 1444, 1377),
(10, '2023-05-03', '', 1, 1421, 1421),
(11, '2023-10-18', '', 18, 1493, 1485),
(12, '2024-11-05', '', 5, 1403, 1395),
(13, '2023-12-02', '', 9, 1412, 1399),
(14, '2023-07-29', '', 15, 1412, 1363),
(15, '2024-09-07', '', 12, 1445, 1389),
(16, '2024-08-03', '', 10, 1427, 1425),
(17, '2023-11-08', '', 2, 1460, 1377),
(18, '2024-02-01', '', 6, 1425, 1411),
(19, '2023-12-13', '', 10, 1464, 1424),
(20, '2024-07-15', '', 3, 1438, 1365),
(21, '2023-12-01', '', 8, 1499, 1499),
(22, '2024-09-05', '', 15, 1478, 1478),
(23, '2023-06-17', '', 2, 1401, 1350),
(24, '2024-05-14', '', 13, 1467, 1413),
(25, '2024-01-03', '', 10, 1440, 1409),
(26, '2024-10-10', '', 14, 1493, 1467),
(27, '2023-06-10', '', 16, 1459, 1352),
(28, '2023-05-14', '', 14, 1427, 1391),
(29, '2023-11-05', '', 11, 1408, 1404),
(30, '2023-05-14', '', 13, 1435, 1401),
(31, '2024-09-05', '', 3, 1409, 1360),
(32, '2024-08-08', '', 4, 1432, 1369),
(33, '2024-09-08', '', 7, 1409, 1409),
(34, '2024-05-23', '', 9, 1481, 1355),
(35, '2024-01-17', '', 18, 1433, 1376),
(36, '2024-06-22', '', 8, 1500, 1423),
(37, '2023-06-21', '', 12, 1438, 1422),
(38, '2023-08-24', '', 18, 1472, 1429),
(39, '2023-10-06', '', 19, 1417, 1417),
(40, '2024-12-15', '', 5, 1450, 1450),
(41, '2024-12-22', '', 7, 1496, 1496),
(42, '2024-06-17', '', 1, 1411, 1386),
(43, '2024-06-17', '', 6, 1430, 1430),
(44, '2023-05-03', '', 17, 1452, 1444),
(45, '2024-12-19', '', 5, 1412, 1373),
(46, '2023-08-01', '', 17, 1468, 1374),
(47, '2024-02-22', '', 18, 1469, 1351),
(48, '2024-07-30', '', 13, 1499, 1499),
(49, '2024-08-31', '', 9, 1497, 1366),
(50, '2023-05-17', '', 1, 1446, 1401),
(51, '2023-05-09', '', 10, 1410, 1361),
(52, '2024-03-25', '', 18, 1487, 1446),
(53, '2024-08-31', '', 17, 1403, 1403),
(54, '2023-10-30', '', 13, 1479, 1479),
(55, '2024-07-30', '', 17, 1479, 1371),
(56, '2023-07-14', '', 15, 1478, 1378),
(57, '2023-05-05', '', 7, 1444, 1444),
(58, '2023-05-03', '', 6, 1435, 1355),
(59, '2023-07-31', '', 4, 1459, 1459),
(60, '2023-08-09', '', 1, 1463, 1414),
(61, '2023-05-20', '', 17, 1416, 1416),
(62, '2023-10-13', '', 5, 1446, 1355),
(63, '2024-02-26', '', 4, 1486, 1479),
(64, '2024-04-21', '', 12, 1458, 1436),
(65, '2023-09-04', '', 5, 1455, 1384),
(66, '2023-07-21', '', 7, 1484, 1375),
(67, '2024-01-24', '', 4, 1472, 1450),
(68, '2024-11-25', '', 8, 1489, 1374),
(69, '2023-07-12', '', 3, 1412, 1383),
(70, '2023-09-02', '', 3, 1467, 1463),
(71, '2024-06-01', '', 5, 1413, 1404),
(72, '2023-07-02', '', 15, 1465, 1418),
(73, '2024-05-30', '', 13, 1467, 1464),
(74, '2024-01-01', '', 11, 1407, 1375),
(75, '2024-06-07', '', 8, 1490, 1362),
(76, '2024-08-23', '', 10, 1462, 1379),
(77, '2024-12-15', '', 3, 1475, 1373),
(78, '2023-07-07', '', 16, 1484, 1471),
(79, '2024-12-19', '', 3, 1449, 1431),
(80, '2023-06-22', '', 8, 1428, 1393),
(81, '2024-04-18', '', 18, 1464, 1382),
(82, '2023-08-14', '', 17, 1477, 1417),
(83, '2023-05-06', '', 1, 1452, 1398),
(84, '2023-06-13', '', 12, 1403, 1403),
(85, '2024-04-10', '', 12, 1477, 1424),
(86, '2024-11-17', '', 10, 1418, 1360),
(87, '2024-09-16', '', 1, 1480, 1362),
(88, '2023-06-15', '', 0, 1413, 1413),
(89, '2024-10-29', '', 5, 1470, 1430),
(90, '2023-11-12', '', 18, 1427, 1423),
(91, '2023-08-20', '', 8, 1404, 1362),
(92, '2023-10-29', '', 16, 1488, 1357),
(93, '2024-10-12', '', 13, 1416, 1388),
(94, '2024-08-21', '', 11, 1470, 1463),
(95, '2023-12-25', '', 0, 1500, 1488),
(96, '2024-02-16', '', 5, 1410, 1410),
(97, '2024-10-10', '', 6, 1428, 1351),
(98, '2023-10-22', '', 12, 1431, 1431),
(99, '2024-01-20', '', 18, 1443, 1405),
(100, '2024-04-18', '', 3, 1438, 1438),
(101, '2023-11-10', '', 7, 1419, 1378),
(102, '2023-07-02', '', 8, 1407, 1407),
(103, '2024-06-12', '', 14, 1433, 1390),
(104, '2024-01-25', '', 14, 1437, 1387),
(105, '2024-12-05', '', 15, 1458, 1458),
(106, '2024-12-03', '', 9, 1430, 1430),
(107, '2024-07-19', '', 3, 1456, 1456),
(108, '2024-10-17', '', 10, 1409, 1409),
(109, '2023-11-01', '', 14, 1494, 1388),
(110, '2023-07-21', '', 3, 1426, 1426),
(111, '2024-03-10', '', 9, 1495, 1495),
(112, '2024-08-17', '', 6, 1405, 1379),
(113, '2023-09-27', '', 7, 1432, 1379),
(114, '2024-01-22', '', 14, 1465, 1410),
(115, '2023-08-22', '', 19, 1425, 1407),
(116, '2024-10-20', '', 5, 1416, 1416),
(117, '2023-09-04', '', 17, 1415, 1367),
(118, '2024-04-26', '', 5, 1403, 1388),
(119, '2024-06-15', '', 6, 1425, 1380),
(120, '2024-01-12', '', 11, 1414, 1379),
(121, '2023-12-04', '', 12, 1485, 1485),
(122, '2024-05-23', '', 14, 1493, 1400),
(123, '2023-07-26', '', 8, 1471, 1471),
(124, '2024-01-05', '', 13, 1402, 1397),
(125, '2024-04-09', '', 18, 1492, 1483),
(126, '2024-03-22', '', 19, 1419, 1369),
(127, '2023-05-12', '', 1, 1425, 1382),
(128, '2024-06-15', '', 8, 1403, 1403),
(129, '2024-10-04', '', 2, 1478, 1355),
(130, '2023-12-07', '', 13, 1455, 1449),
(131, '2024-02-07', '', 0, 1476, 1450),
(132, '2023-07-22', '', 2, 1493, 1449),
(133, '2024-05-21', '', 17, 1407, 1389),
(134, '2023-06-16', '', 12, 1433, 1352),
(135, '2023-11-16', '', 9, 1402, 1378),
(136, '2024-02-07', '', 19, 1488, 1446),
(137, '2023-08-18', '', 7, 1426, 1368),
(138, '2024-12-08', '', 12, 1462, 1358),
(139, '2023-05-13', '', 7, 1471, 1435),
(140, '2024-01-04', '', 16, 1434, 1434),
(141, '2024-04-26', '', 19, 1442, 1383),
(142, '2023-10-06', '', 18, 1449, 1374),
(143, '2024-01-08', '', 4, 1423, 1357),
(144, '2024-01-18', '', 14, 1494, 1389),
(145, '2023-06-29', '', 17, 1471, 1400),
(146, '2024-01-15', '', 15, 1411, 1411),
(147, '2023-08-24', '', 0, 1470, 1457),
(148, '2023-06-06', '', 12, 1413, 1374),
(149, '2023-09-16', '', 19, 1435, 1391),
(150, '2024-02-09', '', 19, 1465, 1450),
(151, '2024-06-06', '', 7, 1420, 1366),
(152, '2024-01-09', '', 8, 1459, 1408),
(153, '2024-09-07', '', 14, 1448, 1416),
(154, '2023-10-09', '', 1, 1492, 1462),
(155, '2024-01-24', '', 0, 1445, 1378),
(156, '2024-11-27', '', 5, 1467, 1467),
(157, '2024-02-11', '', 6, 1427, 1384),
(158, '2024-02-20', '', 5, 1489, 1405),
(159, '2024-02-03', '', 1, 1458, 1425),
(160, '2024-02-27', '', 10, 1475, 1381),
(161, '2023-12-10', '', 3, 1463, 1458),
(162, '2024-01-03', '', 6, 1434, 1394),
(163, '2024-04-25', '', 3, 1414, 1360),
(164, '2024-03-30', '', 16, 1405, 1352),
(165, '2024-04-15', '', 12, 1489, 1489),
(166, '2024-03-09', '', 18, 1431, 1410),
(167, '2023-10-25', '', 7, 1427, 1425),
(168, '2024-05-24', '', 18, 1416, 1416),
(169, '2024-04-21', '', 9, 1494, 1494),
(170, '2023-10-24', '', 3, 1428, 1362),
(171, '2024-01-24', '', 14, 1410, 1410),
(172, '2023-09-05', '', 20, 1481, 1384),
(173, '2023-11-13', '', 4, 1417, 1403),
(174, '2023-10-20', '', 11, 1457, 1407),
(175, '2024-02-17', '', 9, 1458, 1458),
(176, '2024-05-21', '', 20, 1469, 1401),
(177, '2023-05-19', '', 4, 1449, 1422),
(178, '2023-12-31', '', 18, 1474, 1466),
(179, '2023-08-30', '', 11, 1405, 1362),
(180, '2024-01-07', '', 14, 1497, 1381),
(181, '2023-11-18', '', 19, 1458, 1400),
(182, '2024-09-25', '', 13, 1492, 1492),
(183, '2024-01-31', '', 0, 1473, 1473),
(184, '2023-12-20', '', 4, 1426, 1416),
(185, '2023-07-20', '', 5, 1430, 1430),
(186, '2024-01-26', '', 12, 1400, 1400),
(187, '2023-12-13', '', 14, 1463, 1425),
(188, '2024-10-02', '', 5, 1401, 1387),
(189, '2023-09-12', '', 7, 1449, 1442),
(190, '2023-11-10', '', 20, 1463, 1428),
(191, '2023-06-26', '', 12, 1460, 1368),
(192, '2024-01-09', '', 6, 1452, 1426),
(193, '2024-07-26', '', 12, 1433, 1384),
(194, '2023-08-15', '', 19, 1494, 1438),
(195, '2024-05-23', '', 2, 1466, 1371),
(196, '2023-10-20', '', 8, 1459, 1450),
(197, '2024-06-01', '', 9, 1413, 1391),
(198, '2024-12-14', '', 19, 1470, 1470),
(199, '2023-10-05', '', 15, 1416, 1358),
(200, '2024-11-19', '', 9, 1476, 1476);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `fellepok`
--
ALTER TABLE `fellepok`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `jegyek`
--
ALTER TABLE `jegyek`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `jegytipusok`
--
ALTER TABLE `jegytipusok`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `koncertek`
--
ALTER TABLE `koncertek`
  ADD PRIMARY KEY (`ID`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `fellepok`
--
ALTER TABLE `fellepok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `jegyek`
--
ALTER TABLE `jegyek`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `jegytipusok`
--
ALTER TABLE `jegytipusok`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `koncertek`
--
ALTER TABLE `koncertek`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
