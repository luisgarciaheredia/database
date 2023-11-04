-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2023 a las 15:07:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lots`
--

CREATE TABLE `lots` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `block` varchar(255) NOT NULL,
  `lot` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lots`
--

INSERT INTO `lots` (`id`, `project_id`, `block`, `lot`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', '1', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(2, 1, 'B', '2', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(3, 1, 'B', '3', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(4, 1, 'B', '1', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(5, 1, 'A', '2', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(6, 1, 'A', '3', 1, '2023-09-17 22:59:42', '2023-09-17 22:59:42'),
(7, 1, 'B', '4', 1, '2023-09-17 22:59:43', '2023-09-17 22:59:43'),
(8, 1, 'B', '5', 1, '2023-09-17 22:59:43', '2023-09-17 22:59:43'),
(9, 2, 'A', '1', 1, '2023-09-17 23:00:15', '2023-09-17 23:00:15'),
(10, 2, 'A', '2', 1, '2023-09-17 23:00:15', '2023-09-17 23:00:15'),
(11, 2, 'A', '3', 1, '2023-09-17 23:00:15', '2023-09-17 23:00:15'),
(12, 2, 'B', '1', 1, '2023-09-17 23:00:15', '2023-09-18 07:50:52'),
(13, 3, 'A', '1', 1, '2023-09-24 21:30:44', '2023-09-24 21:30:44'),
(14, 4, 'A', '1', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(15, 4, 'C', '3', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(16, 4, 'C', '2', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(17, 4, 'B', '1', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(18, 4, 'B', '2', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(19, 4, 'C', '1', 1, '2023-09-24 21:35:13', '2023-09-24 21:35:13'),
(20, 41, 'B', '1', 0, '2023-09-28 18:25:32', '2023-10-14 13:59:41'),
(21, 41, 'A', '1', 1, '2023-09-28 18:25:32', '2023-09-28 18:25:32'),
(22, 41, 'B', '2', 1, '2023-09-28 18:25:32', '2023-09-28 18:25:32'),
(23, 41, 'B', '3', 1, '2023-09-28 18:25:32', '2023-09-30 16:16:12'),
(24, 41, 'A', '2', 1, '2023-09-28 18:25:32', '2023-09-28 18:25:32'),
(25, 10, 'A', '1', 1, '2023-10-01 23:59:37', '2023-10-01 23:59:37'),
(26, 10, 'B', '1', 1, '2023-10-01 23:59:37', '2023-10-01 23:59:37'),
(27, 10, 'B', '2', 1, '2023-10-01 23:59:37', '2023-10-01 23:59:37'),
(28, 42, 'B', '5', 1, '2023-10-15 07:02:56', '2023-10-15 07:02:56'),
(29, 43, 'A', '1', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15'),
(30, 43, 'D', '1', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15'),
(31, 43, 'A', '2', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15'),
(32, 43, 'B', '2', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15'),
(33, 43, 'C', '1', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15'),
(34, 43, 'B', '1', 1, '2023-10-19 02:38:15', '2023-10-19 02:38:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `lot_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `comments` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `lot_id`, `owner_id`, `user_id`, `price`, `type`, `date`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 1, 2000.00, 'Financiado', '2023-10-09', 'hola', 1, '2023-10-09 07:09:28', '2023-10-14 15:10:59'),
(2, 9, 11, 1, 2000.00, 'Financiado', '2023-10-14', 'd', 1, '2023-10-14 14:10:56', '2023-10-14 14:10:56'),
(3, 13, 13, 1, 3000.00, 'Financiado', '2023-10-12', 'i', 1, '2023-10-14 20:56:39', '2023-10-14 20:56:39'),
(4, 17, 17, 1, 1500.00, 'Contado', '2023-10-15', 'g', 1, '2023-10-14 20:59:05', '2023-10-14 20:59:05'),
(5, 28, 25, 1, 1500.00, 'Financiado', '2023-10-11', 'prueba', 1, '2023-10-15 07:04:21', '2023-10-15 07:41:15'),
(6, 22, 25, 1, 444.00, 'Contado', '2023-10-14', '4', 1, '2023-10-16 06:58:08', '2023-10-16 06:58:08'),
(7, 29, 26, 1, 1000.00, 'Financiado', '2023-10-19', 'c', 1, '2023-10-19 02:39:08', '2023-10-19 02:39:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owners`
--

CREATE TABLE `owners` (
  `id` int(11) NOT NULL,
  `document` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `owners`
--

INSERT INTO `owners` (`id`, `document`, `name`, `phone`, `address`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(11, '42264360', 'Ronald Díaz Barbosa', '979540216', 'CALLE HUMBOLT Nº 527, PASAJE SAN ANTONIO, DISTRITO Y PROVINCIA DE CHICLAYO, DEPARTAMENTO DE LAMBAYEQUE.', '-', 1, '2023-08-09 08:34:31', '2023-09-15 16:59:25'),
(12, '46023580', 'Esteban Díaz Barboza', '945064876', 'CENTRO POBLADO DE LINGAN GRANDE, DISTRITO Y PROVINCIA DE CHOTA, DEPARTAMENTO DE CAJAMARCA.', '-', 1, '2023-08-09 09:04:49', '2023-08-12 22:34:25'),
(13, '33671848', 'María Delicia Muñoz Corcuera', '979390456', 'CALLE URBANIZACION EL OBELISCO  MZ “G”, LOTE 2,  DISTRITO DE JOSE LEONARDO ORTIZ, PROVINCIA DE CHICLAYO, DEPARTAMENTO DE LAMBAYEQUE', '-', 1, '2023-08-12 16:22:30', '2023-08-20 07:47:01'),
(15, '17440184', 'Mariano Manayay Céspedes', '994513604', 'CASERIO LANCHIPAMPA, DISTRITO DE INCAHUASI,  PROVINCIA DE FERREÑAFE,  DEPARTAMENTO DE LAMBAYEQUE.', '-', 1, '2023-08-12 19:29:37', '2023-08-12 22:39:49'),
(17, '17409790', 'Segundo Exequiel Vallejos Carretero', '938140153', 'CALLE URBANIZACION EL  OBELISCO  MZ “G”, LOTE 2,  DISTRITO DE JOSE LEONARDO ORTIZ, PROVINCIA DE CHICLAYO, DEPARTAMENTO DE LAMBAYEQUE.', '-', 1, '2023-08-12 19:48:16', '2023-08-12 22:41:50'),
(21, 'asf', 'sdf', '987', 'asdf', 'safd', 0, '2023-09-11 07:17:57', '2023-09-18 07:48:58'),
(23, 'prueba hoy', 'prueba hoy', '999999999', 'prueba hoy', 'prueba hoy', 1, '2023-09-28 18:28:21', '2023-09-28 18:28:21'),
(24, 'hola', 'mi nombre ', '34', 'sdf', 'adfa', 1, '2023-10-08 17:43:24', '2023-10-08 17:43:24'),
(25, 'hola', 'prueba 15 de octubre', '979390458', 'prueba', 'prueba', 1, '2023-10-15 07:02:09', '2023-10-15 07:02:09'),
(26, 'prueba', 'propietario 19 10', '99999999', 'prueba', 'prueba', 1, '2023-10-19 02:37:07', '2023-10-19 02:37:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `due_date` date NOT NULL,
  `amount_in_progress` decimal(11,2) NOT NULL,
  `last_payment_date` date NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `invoice_detail` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `type`, `number`, `amount`, `due_date`, `amount_in_progress`, `last_payment_date`, `invoice`, `invoice_detail`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Inicial', 1, 100.00, '2023-10-08', 100.00, '2023-10-14', 'd', 'd', 'd', 1, '2023-10-09 07:09:29', '2023-10-14 15:11:00'),
(2, 1, 'Financiado', 4, 475.00, '2023-10-22', 0.00, '0000-00-00', '', '', '', 1, '2023-10-09 07:09:29', '2023-10-14 15:11:00'),
(3, 1, 'Financiado', 2, 475.00, '2023-10-13', 0.00, '0000-00-00', '', '', '', 1, '2023-10-09 07:09:29', '2023-10-14 15:11:00'),
(4, 1, 'Financiado', 1, 475.00, '2023-10-12', 0.00, '0000-00-00', '', '', '', 1, '2023-10-09 07:09:29', '2023-10-14 15:11:00'),
(5, 1, 'Financiado', 3, 475.00, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-09 07:09:29', '2023-10-14 15:11:00'),
(6, 2, 'Inicial', 2, 50.00, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 14:10:57', '2023-10-14 14:10:57'),
(7, 2, 'Financiado', 3, 633.34, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 14:10:57', '2023-10-14 14:10:57'),
(8, 2, 'Financiado', 1, 633.33, '2023-10-14', 633.33, '2023-10-14', '4', '4', '4', 1, '2023-10-14 14:10:57', '2023-10-14 14:12:16'),
(9, 2, 'Financiado', 2, 633.33, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 14:10:57', '2023-10-14 14:10:57'),
(10, 2, 'Inicial', 1, 50.00, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 14:10:57', '2023-10-14 14:10:57'),
(11, 3, 'Inicial', 1, 100.00, '2023-10-12', 100.00, '2023-10-15', 'g', 'g', 'g', 1, '2023-10-14 20:56:40', '2023-10-14 20:57:33'),
(12, 3, 'Financiado', 2, 966.67, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:56:40', '2023-10-14 20:56:40'),
(13, 3, 'Financiado', 1, 966.67, '2023-10-13', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:56:40', '2023-10-14 20:56:40'),
(14, 3, 'Financiado', 3, 966.66, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:56:40', '2023-10-14 20:56:40'),
(15, 4, 'Inicial', 1, 500.00, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:59:06', '2023-10-14 20:59:06'),
(16, 4, 'Inicial', 3, 500.00, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:59:06', '2023-10-14 20:59:06'),
(17, 4, 'Inicial', 2, 500.00, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-14 20:59:06', '2023-10-14 20:59:06'),
(18, 5, 'Inicial', 1, 50.00, '2023-10-10', 50.00, '2023-10-15', 'j', 'j', 'j', 1, '2023-10-15 07:04:22', '2023-10-15 07:41:16'),
(19, 5, 'Financiado', 3, 466.66, '2023-10-16', 0.00, '0000-00-00', '', '', '', 1, '2023-10-15 07:04:22', '2023-10-15 07:41:16'),
(20, 5, 'Financiado', 2, 466.67, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-15 07:04:22', '2023-10-15 07:41:16'),
(21, 5, 'Inicial', 2, 50.00, '2023-10-13', 0.00, '0000-00-00', '', '', '', 1, '2023-10-15 07:04:22', '2023-10-15 07:41:16'),
(22, 5, 'Financiado', 1, 466.67, '2023-10-14', 0.00, '0000-00-00', '', '', '', 1, '2023-10-15 07:04:22', '2023-10-15 07:41:16'),
(23, 6, 'Inicial', 2, 148.00, '2023-10-16', 0.00, '0000-00-00', '', '', '', 1, '2023-10-16 06:58:09', '2023-10-16 06:58:09'),
(24, 6, 'Inicial', 3, 148.00, '2023-10-17', 0.00, '0000-00-00', '', '', '', 1, '2023-10-16 06:58:09', '2023-10-16 06:58:09'),
(25, 6, 'Inicial', 1, 148.00, '2023-10-15', 0.00, '0000-00-00', '', '', '', 1, '2023-10-16 06:58:09', '2023-10-16 06:58:09'),
(26, 7, 'Financiado', 1, 450.00, '2023-10-19', 0.00, '0000-00-00', '', '', '', 1, '2023-10-19 02:39:09', '2023-10-19 02:39:09'),
(27, 7, 'Financiado', 2, 450.00, '2023-10-19', 0.00, '0000-00-00', '', '', '', 1, '2023-10-19 02:39:09', '2023-10-19 02:39:09'),
(28, 7, 'Inicial', 1, 100.00, '2023-10-19', 100.00, '2023-10-19', 'o', 'o', 'o', 1, '2023-10-19 02:39:09', '2023-10-19 02:39:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `project`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Villa Latina - Ferreñafe', 1, '2023-08-12 20:25:08', '2023-10-14 14:16:06'),
(2, 'Sol de Olmos 2da Etapa', 1, '2023-08-12 20:25:51', '2023-08-14 07:15:25'),
(3, 'El Prado', 1, '2023-08-12 20:51:46', '2023-08-12 20:51:46'),
(4, 'Alameda de Olmos', 1, '2023-08-12 20:52:11', '2023-08-12 20:52:11'),
(5, 'Huertos de Fala', 1, '2023-08-12 20:52:25', '2023-08-12 20:52:25'),
(6, 'Sol de Olmos 1ra Etapa', 1, '2023-08-12 20:52:48', '2023-08-12 20:52:48'),
(7, 'Marcavelica', 1, '2023-08-12 20:53:11', '2023-08-12 20:53:11'),
(8, 'Sinai 1ra Etapa', 1, '2023-08-12 20:53:27', '2023-08-12 20:53:27'),
(9, 'Sinai 2da Etapa', 1, '2023-08-12 20:53:47', '2023-08-12 20:53:47'),
(10, 'Costa del Sol - Tumbes', 1, '2023-08-12 20:54:03', '2023-09-24 18:42:24'),
(40, 'prubeaa', 0, '2023-09-24 21:29:57', '2023-09-24 21:29:57'),
(41, 'pruebahoy', 1, '2023-09-28 18:25:07', '2023-09-28 18:25:07'),
(42, 'proyecto 15 de octubre', 1, '2023-10-15 07:02:34', '2023-10-15 07:02:34'),
(43, 'proyecto 19 de octubre', 1, '2023-10-19 02:37:38', '2023-10-19 02:37:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `permissions` varchar(1020) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `role`, `permissions`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Administrador', 'Owner_Create, Owner_Read, Owner_Update, Owner_Delete, Project_Create, Project_Read, Project_Update, Project_Delete, Lot_Create, Lot_Read, Lot_Update, Lot_Delete, Order_Create, Order_Read, Order_Update, Order_Delete, Payment_Create, Payment_Read, Payment_Update, Payment_Delete, User_Create, User_Read, User_Update, User_Delete, Role_Create, Role_Read, Role_Update, Role_Delete, Reports_Read', 1, '2023-08-05 11:54:01', '2023-10-18 23:19:05'),
(4, 'Supervisor', 'Owner_Create, Owner_Read, Owner_Update, Project_Create, Project_Read, Project_Update, Lot_Create, Lot_Read, Lot_Update, Order_Create, Order_Read, Order_Update, Payment_Create, Payment_Read, Payment_Update, User_Create, User_Read, User_Update, Role_Create, Role_Read, Role_Update', 1, '2023-08-05 11:59:41', '2023-10-09 07:24:00'),
(5, 'Vendedor', 'Owner_Create, Owner_Read, Owner_Update, Project_Read, Lot_Read, Order_Create, Order_Read, Payment_Create, Payment_Read, Payment_Update', 1, '2023-08-05 12:01:04', '2023-10-14 15:45:25'),
(6, 'Usuario', 'Owner_Create, Owner_Read, Project_Create, Project_Read, Lot_Create, Lot_Read, Order_Create, Order_Read, Payment_Create, Payment_Read', 1, '2023-08-05 12:01:14', '2023-10-14 15:45:59'),
(13, 'Practicante', 'Owner_Read, Project_Read, Lot_Read', 1, '2023-08-20 09:51:20', '2023-09-18 08:00:09'),
(20, 'practicante 2', 'Owner_Create, Owner_Read, Owner_Update, Owner_Delete, Project_Create, Project_Read, Project_Update, Project_Delete, Lot_Create, Lot_Read, Lot_Update, Lot_Delete, Order_Create, Order_Read, Order_Update, Order_Delete, Payment_Create, Payment_Read, Payment_Update, Payment_Delete, User_Create, User_Read, User_Update, User_Delete, Role_Create, Role_Read, Role_Update, Role_Delete', 0, '2023-09-30 15:56:54', '2023-10-14 14:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user`, `password`, `role_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Víctor Acosta', 'victor.acosta@gmail.com', 'vacosta', 'victor123456', 3, 1, '2023-08-20 10:26:44', '2023-09-15 07:56:49'),
(2, 'José García', 'jose.garcia@gmail.com', 'jgarcia', 'jose123456', 4, 1, '2023-08-20 17:02:25', '2023-09-15 07:55:41'),
(3, 'Juan Acosta', 'juan.acosta@gmail.com', 'jacosta', '1232', 4, 1, '2023-08-20 18:22:29', '2023-09-13 12:13:12'),
(5, 'Luis García', 'luis.garcia@gmail.com', 'lgarcia', 'luis123456', 5, 1, '2023-08-26 22:40:08', '2023-10-08 11:06:19'),
(6, 'Ana Castro', 'ana.castro@gmail.com', 'acastro', 'clave123', 5, 1, '2023-08-27 07:12:39', '2023-09-13 12:14:13'),
(7, 'Pinina García', 'pinina.garcia@gmail.com', 'pgarcia', 'pinina123456', 6, 1, '2023-09-02 20:03:44', '2023-09-13 12:14:33'),
(10, 'prueba', 'prueba@prueba.com', 'prueba', 'prueba', 6, 0, '2023-09-03 10:16:20', '2023-10-14 13:52:59'),
(11, 'prueba', 'prueba', 'prueba', 'prueba', 4, 1, '2023-09-15 22:06:23', '2023-09-18 07:56:57'),
(12, 'hola', 'hola', 'hola', 'hola', 3, 1, '2023-09-24 21:28:48', '2023-09-24 21:28:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
