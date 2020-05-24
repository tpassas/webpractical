-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 24 Μάη 2020 στις 19:48:42
-- Έκδοση διακομιστή: 10.3.16-MariaDB
-- Έκδοση PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `dogs_care`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `images`
--

INSERT INTO `images` (`id`, `image`, `created`) VALUES
(14, 'dog.jpg', '2020-05-24 19:20:35');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `stars`
--

CREATE TABLE `stars` (
  `user_id` int(11) NOT NULL,
  `rateIndex` tinyint(4) NOT NULL,
  `fkey` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `stars`
--

INSERT INTO `stars` (`user_id`, `rateIndex`, `fkey`) VALUES
(132, 4, NULL),
(157, 3, NULL),
(158, 5, NULL);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` char(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` char(60) NOT NULL,
  `gender` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `gender`) VALUES
(132, 'thrasos', 'asd', '123123', 'tpassas@city.academic.gr', '123123', 'Male'),
(133, 'asd', 'asd', '123123', 'thrasaras@gmail.com', '123123', 'Male');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fkey` (`fkey`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT για πίνακα `stars`
--
ALTER TABLE `stars`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`fkey`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
