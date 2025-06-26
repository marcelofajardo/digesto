-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-06-2025 a las 17:58:12
-- Versión del servidor: 8.0.41-0ubuntu0.24.04.1
-- Versión de PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `digesto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1750863640),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1750863639;', 1750863639),
('laravel_cache_77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1750868289),
('laravel_cache_77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1750868288;', 1750868289),
('laravel_cache_livewire-rate-limiter:e9c2ee3f8fade50dea18cfa5c8c296a517fdded1', 'i:1;', 1750958426),
('laravel_cache_livewire-rate-limiter:e9c2ee3f8fade50dea18cfa5c8c296a517fdded1:timer', 'i:1750958426;', 1750958426);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Académica', NULL, NULL, NULL),
(2, 'Extensión', NULL, NULL, NULL),
(3, 'Administrativa', NULL, NULL, NULL),
(4, 'Rectoría', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Rectorado', '2025-06-26 17:52:41', '2025-06-26 17:52:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` smallint UNSIGNED NOT NULL,
  `numero` smallint UNSIGNED NOT NULL,
  `archivo_pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `department_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id`, `titulo`, `descripcion`, `anio`, `numero`, `archivo_pdf`, `type_id`, `category_id`, `user_id`, `department_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Esse nam incidunt porro.', 'Et natus delectus modi et amet. Dicta quo nisi maxime odio sed.', 2018, 51, '2.pdf', 2, 2, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(2, 'At deserunt ea corrupti.', 'Dolore eaque unde eveniet expedita ullam. Ea est aliquam illum qui libero eveniet.', 2016, 32, '3.pdf', 3, 2, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(3, 'Quaerat nemo at id.', 'Dignissimos esse sapiente nihil voluptates. Eum ut possimus sunt ratione. Ut omnis nihil est quia.', 2016, 132, '7.pdf', 1, 2, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(4, 'A quia eos vel et.', 'Possimus natus odio dolor. Occaecati omnis quos quis dolores. Sunt molestiae assumenda eius iusto.', 2013, 111, '1.pdf', 1, 1, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(5, 'Voluptatum non sed modi.', 'Et et rem nihil ipsam rem. Et qui repellat et.', 2019, 29, '9.pdf', 1, 2, 2, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(6, 'Non enim sapiente id et.', 'Et at corporis sit et. Voluptatem iusto dignissimos ut non similique.', 2023, 13, '4.pdf', 1, 3, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(7, 'Et quo ut laboriosam.', 'Architecto quia laboriosam impedit mollitia rerum et. Deserunt repudiandae qui molestiae ut.', 2010, 4, '2.pdf', 2, 1, 2, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(8, 'Impedit totam et velit.', 'Dolorem quibusdam ullam rem ad. Quis natus cum minima recusandae soluta.', 2018, 128, '6.pdf', 2, 3, 1, 1, '2025-06-25 14:15:53', '2025-06-25 14:15:53', NULL),
(9, 'Odit ut est illo.', 'Enim et vel molestiae omnis placeat sed quibusdam ex. Et omnis vitae et ea quia minima voluptate.', 2011, 33, '10.pdf', 3, 2, 2, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(10, 'Libero qui ut quaerat.', 'Quod iusto a maxime iusto velit velit. Corporis molestias dolores aut voluptas.', 2019, 1, '7.pdf', 3, 1, 2, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(11, 'Repellat ea ut vel.', 'Sed enim unde velit ut vitae et. Sunt architecto modi est beatae. Non dolorum aut sed dolores.', 2018, 15, '3.pdf', 1, 3, 2, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(12, 'Dolore in eius animi.', 'Aut vel odio sed blanditiis et quia. Eos tempore voluptatem ut ipsa. Aut eius aut eum.', 2009, 92, '3.pdf', 2, 1, 1, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(13, 'Atque ullam quia labore.', 'Quibusdam atque distinctio aperiam voluptatem exercitationem non. Alias a eos qui voluptas ducimus.', 2018, 137, '3.pdf', 2, 2, 1, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(14, 'Quos iure nihil et non.', 'Deserunt velit laboriosam quia ratione repudiandae sunt et. Fugit ullam delectus accusantium.', 2010, 53, '11.pdf', 1, 4, 2, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(15, 'Qui tenetur unde saepe.', 'Consequatur blanditiis nobis dolor veniam quia. Voluptatem rerum occaecati quos.', 2023, 79, '6.pdf', 1, 1, 2, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(16, 'Esse ea ipsam repellat.', 'Dolor eum consequuntur sint cupiditate mollitia. Possimus et vel odit et.', 2023, 41, '10.pdf', 3, 3, 1, 1, '2025-06-25 14:15:54', '2025-06-25 14:15:54', NULL),
(17, 'Rerum omnis iste neque.', 'Repellendus et nisi eaque nemo rerum est. Dolore vero et sint beatae. Corrupti earum quo et.', 2023, 6, '10.pdf', 2, 1, 2, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(18, 'Ea quam et sed.', 'Magni minus quia vero quas. Et fugiat sit et ducimus.', 2012, 43, '3.pdf', 1, 4, 2, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(19, 'Quas ad est vel eius.', 'Eaque vel velit id beatae velit. Beatae error et sunt accusantium sit. Et placeat et qui est quasi.', 2019, 129, '9.pdf', 2, 2, 1, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(20, 'A sit tenetur ut ut.', 'Sequi error quia quod porro nulla aperiam sint modi. Nostrum non est voluptas porro ex saepe quod.', 2018, 134, '2.pdf', 2, 4, 1, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(21, 'Suscipit in modi ut in.', 'Architecto delectus dolor hic quia odit odit accusantium molestiae. Quam omnis vel dolor atque.', 2021, 37, '4.pdf', 3, 1, 1, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(22, 'Sed aut sed quia nihil.', 'Quibusdam quidem alias ab doloribus. Mollitia voluptatem sequi iste ratione voluptas.', 2019, 80, '4.pdf', 3, 1, 1, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(23, 'Sint et et quia.', 'Voluptas ut autem quia repudiandae quidem vel dolore. Exercitationem ad est id minima sit.', 2019, 136, '11.pdf', 2, 3, 1, 1, '2025-06-25 14:15:55', '2025-06-25 14:15:55', NULL),
(24, 'Libero aperiam nam qui.', 'Dolorum et repellat quasi quia. Fuga sit earum illo architecto.', 2012, 45, '1.pdf', 3, 3, 2, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(25, 'Aut assumenda ut velit.', 'Aut odio magni quasi magni laborum et saepe est. Doloribus quod incidunt tempora quis.', 2021, 123, '7.pdf', 1, 1, 1, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(26, 'Dolorem sed libero et.', 'Vel et maxime occaecati ipsam. Nam tempore soluta at modi sint. Accusamus aut et nobis qui.', 2019, 124, '1.pdf', 1, 2, 2, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(27, 'Quod ut a commodi.', 'Culpa repudiandae voluptatum enim omnis. Et aut iste maiores omnis minima. Odit beatae quia autem.', 2016, 7, '11.pdf', 2, 3, 1, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(28, 'Et magni non nobis quia.', 'Pariatur eos voluptatem voluptas delectus. Adipisci dolore porro nesciunt velit sunt.', 2020, 112, '11.pdf', 3, 3, 2, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(29, 'Odit et et in.', 'Est et illo reprehenderit quos et rerum. Recusandae pariatur ducimus occaecati quis dignissimos et.', 2021, 59, '6.pdf', 3, 1, 2, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(30, 'Nostrum eos sit et.', 'Consectetur et ab iste ad aperiam. Accusantium officia veritatis esse totam tempora voluptas.', 2019, 28, '4.pdf', 1, 1, 1, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(31, 'Est aut fuga eius nihil.', 'Earum nulla eos qui porro. Quidem quos dolorem deserunt qui.', 2024, 71, '9.pdf', 3, 1, 1, 1, '2025-06-25 14:15:56', '2025-06-25 14:15:56', NULL),
(32, 'Ea non in totam in.', 'Sunt et aut aspernatur sequi et. Non animi fugiat recusandae veritatis.', 2010, 40, '2.pdf', 1, 2, 1, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(33, 'Velit a ut omnis.', 'Et dolorum dolorem nemo earum. Aut voluptatem et sint. Architecto recusandae quos eum occaecati.', 2023, 108, '2.pdf', 2, 4, 1, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(34, 'Totam eius id eligendi.', 'Nulla officia modi quia assumenda. Aut cum modi distinctio non ex.', 2009, 58, '2.pdf', 3, 4, 2, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(35, 'Et omnis amet est animi.', 'Odit illo et explicabo a. Quasi rem ipsam illum autem deleniti voluptas.', 2014, 79, '2.pdf', 2, 2, 2, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(36, 'Aut molestiae dolor in.', 'Quia reiciendis tempora autem non quas corporis. Enim aut quae aut nam sit tempore dolorum.', 2011, 85, '6.pdf', 1, 1, 1, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(37, 'Unde velit dolorem ipsa.', 'Sit temporibus molestiae sequi. Porro est voluptatibus aliquid ut.', 2016, 19, '7.pdf', 2, 4, 2, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(38, 'Est quo ut sunt fuga.', 'Et fuga a ut. Minima doloremque velit aut quam. Aut distinctio quam rem culpa nihil natus.', 2014, 15, '4.pdf', 1, 2, 1, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(39, 'Quidem sed rerum quis.', 'Et aliquam quia cumque est. Repudiandae tenetur recusandae eligendi ducimus.', 2009, 64, '2.pdf', 1, 1, 1, 1, '2025-06-25 14:15:57', '2025-06-25 14:15:57', NULL),
(40, 'Ea amet et libero.', 'Incidunt qui consequuntur odit qui autem. Aliquam modi blanditiis quis. Velit aut et officia minus.', 2010, 92, '3.pdf', 2, 1, 1, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(41, 'Ut quas ad ut.', 'Modi repudiandae velit possimus omnis consequatur ut iste. Nisi veniam est natus.', 2018, 23, '10.pdf', 3, 2, 1, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(42, 'Quia modi eos in ut.', 'At ea architecto et quia et sapiente sapiente quas. Et sit amet iure et omnis.', 2020, 82, '11.pdf', 2, 4, 1, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(43, 'Et ut id et.', 'Optio tenetur eum voluptas ullam aspernatur. Ratione est aut quod aut. Veniam aut explicabo quo.', 2015, 48, '1.pdf', 2, 3, 2, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(44, 'Aut dolorem natus quasi.', 'In impedit accusamus ut nulla quibusdam sit. Velit vel sit dolores. Cum et corporis sequi.', 2011, 131, '2.pdf', 2, 3, 1, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(45, 'Deleniti autem quia aut.', 'Ea non similique repellat qui itaque. Voluptatem neque aut doloribus aut similique.', 2021, 17, '9.pdf', 1, 2, 1, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(46, 'Aut cum qui eos.', 'Consequatur omnis quasi rerum dolorum. Sed et voluptatem omnis sunt architecto enim.', 2021, 64, '1.pdf', 1, 3, 2, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(47, 'Autem ad et quod ea.', 'Fuga blanditiis temporibus saepe non consequatur. Sint perspiciatis qui sit.', 2015, 62, '5.pdf', 3, 1, 2, 1, '2025-06-25 14:15:58', '2025-06-25 14:15:58', NULL),
(48, 'Natus sed mollitia id.', 'Quasi beatae minus est error voluptate et. Dolores a nam culpa molestias cupiditate tenetur est.', 2025, 104, '9.pdf', 3, 2, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(49, 'Sed ut et corporis aut.', 'Aut asperiores quidem eum debitis cum eos. Id optio sit laboriosam et.', 2020, 146, '5.pdf', 3, 1, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(50, 'Hic aut veniam quasi.', 'Sapiente itaque debitis illo qui alias inventore aut ut. Eligendi officiis voluptatum maiores.', 2014, 48, '10.pdf', 3, 4, 2, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(51, 'Et sit ipsum est.', 'Praesentium nulla veniam nobis dolorum nemo. Dolorum omnis tempore exercitationem nihil deserunt.', 2023, 33, '6.pdf', 3, 3, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(52, 'Enim libero nihil et.', 'In et ipsum et. Nemo dignissimos aliquam earum doloremque ipsa ducimus deleniti.', 2020, 22, '5.pdf', 2, 3, 2, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(53, 'Animi qui aliquid quia.', 'Occaecati omnis quo dicta rerum amet non. Ea sit facilis esse sequi suscipit.', 2017, 125, '3.pdf', 1, 1, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(54, 'Neque fugiat ut odio.', 'Amet ut dolorem sed quo dolores et. Earum numquam eveniet et nostrum sequi autem voluptatibus.', 2025, 30, '8.pdf', 2, 2, 2, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(55, 'Ut sed est sed.', 'Vitae laudantium alias sapiente sint dicta quidem dolores. Velit ipsa et totam excepturi aut.', 2014, 123, '1.pdf', 3, 4, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(56, 'Sunt itaque quod maxime.', 'Soluta similique quae totam. Placeat doloremque autem odit dolores atque ut voluptatibus et.', 2022, 148, '2.pdf', 2, 4, 1, 1, '2025-06-25 14:15:59', '2025-06-25 14:15:59', NULL),
(57, 'Minus ipsum rerum qui.', 'Itaque vitae delectus nihil. Voluptatibus ipsam ut quas sed quasi.', 2012, 14, '6.pdf', 3, 4, 2, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(58, 'Veniam est ex numquam.', 'Sit sed neque nulla quod eius esse. Eum veritatis autem ut vitae.', 2023, 132, '1.pdf', 2, 4, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(59, 'Tempora non id qui quos.', 'Asperiores sit non debitis iste. Sapiente voluptates blanditiis voluptatem ipsam.', 2025, 1, '7.pdf', 3, 1, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(60, 'Neque ut et ratione et.', 'Et quo quia veniam culpa repellendus tenetur. Et enim fugiat aliquid voluptatem nulla hic.', 2015, 3, '5.pdf', 3, 2, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(61, 'Vero quo quae ut omnis.', 'Quia praesentium in ea sed. Iste expedita asperiores et repellat vero voluptas.', 2020, 138, '6.pdf', 2, 3, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(62, 'Nisi sunt velit et.', 'Fugit qui quis dolorem adipisci facere. Ex magnam quia velit sed.', 2008, 103, '4.pdf', 3, 1, 2, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(63, 'Nihil odit rem et quam.', 'Enim dolorem eveniet aut quia. Dolorum est quia incidunt dicta omnis aliquid maiores beatae.', 2020, 32, '9.pdf', 2, 3, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(64, 'Quia rem ipsum ipsam.', 'Illo maiores tenetur necessitatibus dolores sed omnis cum est. Voluptas aut officiis quo unde.', 2025, 7, '9.pdf', 2, 1, 1, 1, '2025-06-25 14:16:00', '2025-06-25 14:16:00', NULL),
(65, 'Id quasi molestiae quos.', 'Cum debitis repellat ipsum et vel aut laboriosam. Necessitatibus corrupti illum illum fuga.', 2012, 51, '6.pdf', 3, 4, 1, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(66, 'Sequi vel ut vitae eum.', 'Ut ipsa laboriosam id. Praesentium amet voluptas laborum.', 2014, 120, '2.pdf', 2, 3, 1, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(67, 'Sunt est unde aut nemo.', 'Sit fuga et sequi sit. Ut dolores harum repellat vero.', 2020, 104, '8.pdf', 2, 4, 2, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(68, 'Nihil sint facere minus.', 'Esse tenetur aliquam omnis. Quas atque nemo et quidem nihil.', 2011, 25, '11.pdf', 3, 1, 1, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(69, 'Est sed quod est.', 'Qui odio incidunt omnis alias ipsa deserunt nostrum. Aut repellat vero aut ea ipsa fuga fuga.', 2016, 58, '6.pdf', 2, 1, 2, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(70, 'Eum ipsa et ad rerum.', 'Distinctio accusamus natus quod incidunt ea. Mollitia maxime vel ut quia dicta.', 2010, 61, '7.pdf', 1, 4, 1, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(71, 'Sint numquam ea qui.', 'Et quam eos ratione dicta sapiente. Dolore quia aspernatur molestiae. Ex nisi quod quod.', 2012, 117, '2.pdf', 2, 1, 2, 1, '2025-06-25 14:16:01', '2025-06-25 14:16:01', NULL),
(72, 'Optio dolor et rerum ut.', 'Suscipit voluptatem velit delectus aut voluptates. Dolores ducimus vero molestias qui ea corporis.', 2021, 14, '7.pdf', 1, 1, 2, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(73, 'Beatae illum et minus.', 'Hic possimus debitis tenetur est quo. Facilis vitae omnis voluptas quis et.', 2011, 121, '6.pdf', 2, 4, 1, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(74, 'Et sit nisi non a.', 'Ducimus ea cumque eveniet aperiam quis. Consequatur aut nulla ducimus aut id.', 2011, 100, '3.pdf', 2, 3, 1, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(75, 'Dolor quam est eos vero.', 'Sed et in et atque soluta. Voluptatum debitis vel laboriosam excepturi sint.', 2016, 85, '2.pdf', 2, 1, 2, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(76, 'Nihil est et et.', 'Esse repellendus sequi rerum dolor illo. Magni et asperiores et ut. Rerum ea nemo facere et.', 2013, 11, '7.pdf', 1, 2, 1, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(77, 'Vitae sint esse aut sit.', 'Animi quasi alias quasi. Et voluptate beatae fugiat veniam.', 2018, 90, '9.pdf', 1, 3, 2, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(78, 'Enim beatae aut a.', 'Quisquam amet beatae in eum. Suscipit ut et aut maxime similique. Possimus sed sed esse vel.', 2013, 18, '11.pdf', 3, 4, 2, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(79, 'Rerum quia sed placeat.', 'Quo et nam sit quia sunt iste. Sit fugit impedit nobis sint. Quisquam neque velit laboriosam sunt.', 2019, 96, '1.pdf', 1, 1, 2, 1, '2025-06-25 14:16:02', '2025-06-25 14:16:02', NULL),
(80, 'Eum sint ut ut aperiam.', 'Porro maiores iure magni nisi velit omnis in. Saepe dicta est deserunt sunt.', 2024, 36, '5.pdf', 2, 1, 1, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(81, 'Non aut aut aut dolor.', 'Provident porro id laudantium impedit eum similique. Omnis aut corporis animi asperiores id et.', 2010, 139, '2.pdf', 2, 4, 1, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(82, 'Voluptatem earum est et.', 'Non aut illum id ut consequatur. Animi distinctio harum sit sit vel qui non.', 2017, 50, '11.pdf', 2, 2, 2, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(83, 'Eum occaecati et est id.', 'Sed aut nesciunt culpa accusantium. Voluptate aut voluptatem neque.', 2021, 142, '7.pdf', 3, 4, 2, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(84, 'Non eos et hic cumque.', 'A quos voluptatum quo aut rerum totam. Voluptates vel eaque fuga enim.', 2024, 87, '1.pdf', 2, 3, 1, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(85, 'Ab nobis debitis quae.', 'Autem in rerum aut et. Possimus quam fugit suscipit doloremque est voluptates consequatur.', 2008, 91, '3.pdf', 3, 1, 2, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(86, 'Et et est corporis.', 'Id non debitis similique. Culpa tempora aliquam ut excepturi. Ut facere placeat iste natus.', 2017, 52, '2.pdf', 1, 3, 1, 1, '2025-06-25 14:16:03', '2025-06-25 14:16:03', NULL),
(87, 'Et sit esse numquam.', 'Molestiae quos nihil error. Eos sed quas in. Repellendus esse ut laboriosam repudiandae.', 2021, 101, '11.pdf', 2, 3, 2, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(88, 'Nisi et quia corrupti.', 'Nihil distinctio nihil ratione occaecati. At perferendis ipsum ut sed aut.', 2016, 2, '2.pdf', 3, 1, 1, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(89, 'Culpa et a non illum ab.', 'Et eum vel expedita harum. Voluptatibus veniam iure harum. Quisquam et quasi velit sunt.', 2014, 61, '6.pdf', 2, 2, 1, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(90, 'Rerum quas qui sint.', 'Ipsa voluptatum quis voluptatem blanditiis sequi. Qui alias saepe ut dolor.', 2013, 5, '1.pdf', 2, 4, 1, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(91, 'Cumque facere fuga esse.', 'Aspernatur quia id repellendus earum error. Voluptas omnis debitis quasi qui sit.', 2013, 44, '11.pdf', 2, 1, 1, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(92, 'Optio hic illo minus at.', 'Velit magni cum aperiam incidunt quo. In nisi ut ducimus ut.', 2013, 79, '5.pdf', 3, 2, 2, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(93, 'Deleniti est sed est.', 'Aperiam est sed in distinctio eaque. Aut similique dolore ut quibusdam.', 2018, 5, '4.pdf', 3, 2, 1, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(94, 'Ut quis alias et.', 'Nobis neque delectus omnis. A eum quisquam et cum at. Placeat praesentium a optio consectetur.', 2013, 26, '8.pdf', 2, 1, 2, 1, '2025-06-25 14:16:04', '2025-06-25 14:16:04', NULL),
(95, 'Ab dicta et quae et.', 'Iste non at aut aut. Amet aut architecto quia ex natus est.', 2021, 97, '8.pdf', 1, 1, 1, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(96, 'Quia saepe non odit qui.', 'Debitis voluptatem quis quis ut qui. Est quia earum a quisquam ex enim ipsam.', 2014, 43, '2.pdf', 1, 1, 2, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(97, 'Expedita est et dolores.', 'Eveniet qui dolore voluptatem quisquam. Et alias praesentium officiis in.', 2012, 50, '4.pdf', 1, 2, 2, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(98, 'Quisquam ut amet qui.', 'Dolore vel aperiam quia rem. Eligendi corporis sint sed quia. A enim inventore ut et.', 2008, 83, '3.pdf', 3, 3, 1, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(99, 'Earum rem id ad.', 'Amet id sint animi fugit in suscipit. Consectetur exercitationem aut rerum.', 2023, 2, '4.pdf', 2, 1, 1, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(100, 'Officiis ea vel quia.', 'Dolores voluptatem earum illo. Placeat expedita inventore incidunt.', 2008, 39, '5.pdf', 3, 2, 2, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(101, 'Et ab corrupti facere.', 'Ratione aperiam possimus magni beatae. Quia ducimus consectetur voluptas quos minima ut.', 2025, 70, '10.pdf', 3, 3, 2, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(102, 'Illo aut rerum et.', 'Libero et nesciunt impedit est aut occaecati at. Maiores error quia in aut vel molestiae id.', 2011, 93, '6.pdf', 1, 2, 2, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(103, 'Omnis non itaque at.', 'Aspernatur recusandae ut et. Aperiam rerum praesentium voluptas quam molestiae nam quo totam.', 2017, 101, '2.pdf', 1, 1, 1, 1, '2025-06-25 14:16:05', '2025-06-25 14:16:05', NULL),
(104, 'Ipsum qui sed molestiae.', 'Mollitia occaecati voluptate quia ipsa tenetur. Beatae impedit numquam suscipit qui provident.', 2016, 111, '5.pdf', 2, 4, 2, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(105, 'Alias rerum odio at.', 'Magnam est omnis quod consequatur. Fugit minus quas amet architecto quas velit.', 2025, 20, '9.pdf', 2, 4, 2, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(106, 'Qui est eligendi rem.', 'Quod veniam quia recusandae esse facere. Odit dolore beatae aspernatur unde.', 2020, 75, '2.pdf', 2, 1, 1, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(107, 'Ex est sit culpa saepe.', 'Ab rem vitae et. Maxime velit repellat hic sint. Mollitia vel ratione cum aliquid beatae.', 2018, 56, '3.pdf', 2, 3, 2, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(108, 'Aut vero aut cum veniam.', 'Qui aut unde architecto eveniet sit consequatur. Quis nostrum optio ipsa vel.', 2025, 54, '9.pdf', 2, 3, 2, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(109, 'Delectus et ad nam quis.', 'Placeat id maiores distinctio culpa ex velit. Inventore voluptates quo similique aspernatur quos.', 2014, 35, '6.pdf', 3, 1, 2, 1, '2025-06-25 14:16:06', '2025-06-25 14:16:06', NULL),
(110, 'Autem qui non doloribus.', 'Est et dolorem hic alias sunt sint. Doloremque repellendus necessitatibus atque iure et.', 2017, 15, '2.pdf', 3, 4, 2, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(111, 'Numquam ea a ad optio.', 'Dolores illum commodi nam maxime blanditiis. Quia aut non voluptatem unde aut minima.', 2023, 87, '9.pdf', 3, 4, 2, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(112, 'Quo autem dolorem est.', 'Nihil fuga similique laborum earum eveniet. Cum esse sapiente sed voluptas laborum.', 2018, 143, '11.pdf', 2, 4, 1, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(113, 'Est id rerum minima.', 'Ea qui iste nulla nobis suscipit. Explicabo facilis assumenda sint vel.', 2008, 58, '1.pdf', 1, 4, 2, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(114, 'Non officiis omnis enim.', 'Tempora non quia dolor sunt. Sunt ut aliquid harum non. Est rem et sit quisquam.', 2022, 30, '3.pdf', 1, 3, 2, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(115, 'Earum alias nam sit.', 'Error dolores maiores minima et ipsam ducimus. Excepturi fugiat id ut et commodi.', 2022, 142, '9.pdf', 2, 3, 2, 1, '2025-06-25 14:16:07', '2025-06-25 14:16:07', NULL),
(116, 'Iusto et dolores cumque.', 'Commodi id eos incidunt enim vitae fugit omnis totam. Vel tenetur qui et.', 2014, 82, '8.pdf', 1, 3, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(117, 'Ut et doloribus quis.', 'Et nobis inventore debitis et velit. Illo ullam quis blanditiis quia.', 2014, 89, '2.pdf', 1, 3, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(118, 'Nemo tenetur rem modi.', 'Unde qui dolor omnis modi harum cupiditate voluptates. Porro dolor ipsum nihil ipsam aut.', 2024, 105, '4.pdf', 3, 1, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(119, 'Ex modi deserunt iste.', 'Iure dolores earum quia est. Illum sint soluta sit voluptas autem delectus qui culpa.', 2024, 101, '7.pdf', 1, 3, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(120, 'Omnis nam est fugit.', 'Fugiat doloremque enim saepe sunt et laborum. Quia ratione aut aut et laborum et voluptas.', 2019, 150, '3.pdf', 2, 4, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(121, 'Vel porro quo et sit.', 'Perspiciatis ut ducimus omnis hic. Sed maiores dolore libero sunt ex.', 2015, 8, '3.pdf', 3, 4, 2, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(122, 'Facere eos aut odit quo.', 'Fuga et laboriosam numquam vero sint. Et eos id accusamus et.', 2009, 44, '7.pdf', 2, 3, 1, 1, '2025-06-25 14:16:08', '2025-06-25 14:16:08', NULL),
(123, 'Aut ut eos fuga vitae.', 'Et voluptatem numquam aut. Ratione et voluptate error quae placeat aliquid voluptate.', 2024, 22, '7.pdf', 2, 3, 2, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(124, 'Et omnis illum mollitia.', 'Aliquid placeat aut ab molestias. Consequatur ea ad fugit culpa consequuntur aut nostrum.', 2023, 83, '9.pdf', 3, 2, 1, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(125, 'Vel saepe nobis alias.', 'Molestias voluptatem ut ut ex. Nam nulla temporibus rerum dolore dolor non.', 2019, 134, '8.pdf', 2, 3, 2, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(126, 'Id omnis omnis pariatur.', 'Dolor animi doloremque commodi enim. Recusandae voluptas est nihil eaque.', 2016, 92, '4.pdf', 1, 3, 2, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(127, 'At ipsa et qui ullam.', 'Quia qui sunt aut quibusdam. Aut modi assumenda animi sit eveniet eum.', 2021, 60, '1.pdf', 2, 4, 1, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(128, 'Sunt et est rem enim.', 'A minus est sit dolor. Dolor illum explicabo deleniti quam. Magnam corrupti tempora aut ut.', 2018, 118, '2.pdf', 3, 3, 1, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(129, 'Iusto vel at cumque et.', 'Corrupti maxime dolorem doloremque odit dolor et aspernatur. Id laboriosam nam et eius temporibus.', 2012, 42, '6.pdf', 3, 1, 2, 1, '2025-06-25 14:16:09', '2025-06-25 14:16:09', NULL),
(130, 'Ut atque sunt eos ea.', 'Hic in laudantium error quam magnam voluptatem. Est et maxime et voluptas deleniti tempore soluta.', 2009, 95, '4.pdf', 3, 3, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(131, 'Odio expedita rem ex ut.', 'Quibusdam architecto non ab. Autem et est doloremque enim. Aliquam voluptate tempora consequatur.', 2014, 77, '8.pdf', 3, 3, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(132, 'Maiores illum qui odit.', 'Consequatur quis aut et. Mollitia sit nobis sed aut exercitationem optio quas.', 2015, 81, '8.pdf', 1, 4, 1, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(133, 'Unde nobis ut aut sit.', 'Illum et sit voluptates et ea voluptas. Doloribus esse ab voluptatem aut at quidem non.', 2015, 104, '11.pdf', 1, 4, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(134, 'Rerum ipsam sunt rerum.', 'Repellat quasi consequatur modi expedita. Nulla porro nesciunt totam aliquam ut a rerum recusandae.', 2025, 102, '2.pdf', 1, 1, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(135, 'Et fugit quo cumque.', 'Aut aut vel suscipit recusandae autem. Magni quas qui animi.', 2012, 142, '7.pdf', 3, 1, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(136, 'Qui eaque enim esse.', 'Aut corporis iste minus velit ea. Eaque ipsam soluta nisi at sed quo consequatur sunt.', 2011, 144, '6.pdf', 3, 4, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(137, 'Eum illum enim sint nam.', 'Porro rerum vel ut id id. Vitae quia dignissimos nisi aspernatur quo. Ullam in dolorem ut et.', 2012, 51, '5.pdf', 1, 2, 2, 1, '2025-06-25 14:16:10', '2025-06-25 14:16:10', NULL),
(138, 'Qui eos vero ut.', 'Voluptate sint et reiciendis quasi. Temporibus iusto in vero voluptatem tenetur nulla commodi.', 2016, 95, '1.pdf', 3, 3, 1, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(139, 'Ut sapiente tempora ut.', 'Veritatis delectus sed ipsam quia. Voluptatum et ex atque quos enim.', 2022, 112, '6.pdf', 1, 4, 1, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(140, 'Porro amet magni aut.', 'Veritatis qui vitae in. Ut quam quae ut inventore. Ipsam ut aut exercitationem nemo.', 2024, 110, '6.pdf', 1, 4, 1, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(141, 'Ut quod qui quia.', 'Ratione enim temporibus nobis voluptatem saepe. Eum dolor error quis exercitationem omnis.', 2013, 126, '10.pdf', 2, 1, 2, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(142, 'Animi delectus et odio.', 'Eos sunt voluptate voluptatem id. Sapiente hic dolorum vel.', 2011, 61, '9.pdf', 2, 4, 1, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(143, 'Est ex qui est in.', 'Qui dolores ducimus eligendi. Recusandae qui aut aut quia iure.', 2020, 95, '6.pdf', 1, 4, 2, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(144, 'Velit et ab saepe.', 'Quis eos veritatis qui. Quisquam corrupti quia laudantium voluptatem error laborum.', 2025, 97, '5.pdf', 2, 2, 2, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(145, 'Quos eaque non neque.', 'Similique vero id sunt vel. Sapiente illo eius vel ut. In et quia dolorem et quis labore.', 2008, 28, '4.pdf', 2, 1, 2, 1, '2025-06-25 14:16:11', '2025-06-25 14:16:11', NULL),
(146, 'Rerum quo odit rem.', 'Nisi et nemo beatae cupiditate expedita omnis quia. Modi libero consequatur praesentium sint ad.', 2021, 137, '9.pdf', 2, 1, 2, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(147, 'Magni unde et sed aut.', 'Consectetur aliquid blanditiis quo et quis ipsam quaerat. Quia perspiciatis aut corporis qui.', 2009, 135, '3.pdf', 2, 3, 1, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(148, 'Ab officia omnis est et.', 'Explicabo illo esse aliquid. Dolorum amet corporis et. Harum aspernatur qui et culpa iure incidunt.', 2008, 80, '8.pdf', 3, 1, 1, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(149, 'Ab ea esse autem qui.', 'Eveniet quas voluptatum dolores. In sunt est ad quibusdam vel.', 2020, 128, '8.pdf', 3, 4, 2, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(150, 'Amet accusamus qui est.', 'Voluptas qui qui quos enim nulla. Deleniti et reprehenderit molestiae.', 2010, 123, '5.pdf', 1, 4, 1, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(151, 'Ea qui sint tempore at.', 'Voluptatibus eos ipsum perferendis. Iste debitis dolores quia et dicta quasi.', 2012, 90, '6.pdf', 1, 4, 2, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(152, 'Omnis earum eius sequi.', 'Aliquid eius illo et et. Ea voluptatem eveniet rerum est dolor saepe aut.', 2021, 62, '8.pdf', 2, 2, 2, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(153, 'Est rerum dolore earum.', 'Cum voluptatem culpa fugiat quisquam. Omnis soluta in dolores rerum cumque.', 2015, 63, '3.pdf', 2, 3, 2, 1, '2025-06-25 14:16:12', '2025-06-25 14:16:12', NULL),
(154, 'Minima earum natus ut.', 'Dolores cupiditate quos eos natus quisquam. Possimus dolores eos nisi omnis.', 2019, 52, '4.pdf', 1, 2, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(155, 'Enim a culpa voluptatem.', 'Iusto accusantium optio iusto tenetur. Ut porro dolore voluptates animi dolore.', 2021, 128, '9.pdf', 2, 3, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(156, 'Et qui illum quo ea ad.', 'Cumque est eveniet nihil est fugit velit ea. Laudantium sit rerum ut amet.', 2011, 27, '8.pdf', 2, 4, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(157, 'Id et itaque ipsa qui.', 'Quia facilis maiores minus alias eligendi quia voluptatem. Voluptas accusamus debitis eligendi.', 2021, 95, '11.pdf', 2, 2, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(158, 'Ut nihil in ullam ad.', 'Facilis doloribus omnis eos et quis. Fugiat molestias maxime eum laboriosam aut quae.', 2022, 20, '4.pdf', 2, 1, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(159, 'Iste qui in sint cumque.', 'Ipsam vel voluptates quasi iusto ducimus. Harum impedit quia in illo nihil qui eligendi.', 2008, 147, '9.pdf', 2, 4, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(160, 'Quis vel aut laborum.', 'Fuga fugit at fuga ad. Enim inventore aperiam iste ipsam velit impedit. Voluptatibus sunt odio at.', 2008, 109, '7.pdf', 1, 1, 2, 1, '2025-06-25 14:16:13', '2025-06-25 14:16:13', NULL),
(161, 'Quia aut ut iure.', 'Quia provident ea mollitia in praesentium. Libero eos deleniti error dolorum natus architecto.', 2012, 71, '9.pdf', 1, 1, 1, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(162, 'A laboriosam et quod.', 'Tempore eos adipisci nemo dolorem ratione. Esse nulla libero illo distinctio aut.', 2023, 53, '5.pdf', 2, 2, 2, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(163, 'Ex eveniet et eaque.', 'Quod voluptatibus quos sed est. Assumenda voluptates et possimus id veritatis adipisci velit.', 2023, 48, '11.pdf', 2, 2, 2, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(164, 'Nihil et qui commodi.', 'Hic possimus quo quia quo et. Eos ea corporis minima dolor reprehenderit ut earum quia.', 2022, 141, '10.pdf', 1, 3, 2, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(165, 'Quo cum aliquam ut et.', 'Deserunt qui omnis est. Quia recusandae voluptas eos. Reprehenderit facilis vel voluptatem.', 2023, 124, '2.pdf', 2, 4, 1, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(166, 'Eum dolores nihil nam.', 'Ullam et odio et non. Harum molestiae ab consectetur. Earum repellat fugiat in aut odio velit qui.', 2020, 82, '3.pdf', 1, 2, 1, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(167, 'Fugit qui sint sit et.', 'Qui aliquid est ut. Quisquam nihil deleniti vero error architecto.', 2021, 73, '10.pdf', 1, 1, 1, 1, '2025-06-25 14:16:14', '2025-06-25 14:16:14', NULL),
(168, 'Sunt omnis quaerat eos.', 'Qui aut quae ea velit non sunt. Quaerat beatae omnis rem et.', 2017, 114, '7.pdf', 1, 2, 1, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(169, 'Amet similique ut eos.', 'Qui esse eum aut accusamus. Rerum perferendis sed hic. Labore amet veniam maxime sit eius.', 2012, 73, '1.pdf', 2, 3, 2, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(170, 'Et nisi libero sed.', 'Et itaque adipisci eum. Voluptatem quia sunt aut qui rem dolorem tempora.', 2009, 28, '4.pdf', 2, 2, 2, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(171, 'Beatae ullam in non.', 'Et et assumenda cum et. Voluptatem velit dolor nihil delectus ex.', 2012, 20, '6.pdf', 2, 3, 1, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(172, 'Officia eum dolor fugit.', 'Dolorem expedita fugit adipisci quasi dolor. Alias ea sit qui. Et necessitatibus aliquid qui quia.', 2020, 96, '7.pdf', 2, 3, 2, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(173, 'Possimus a aut deserunt.', 'Occaecati pariatur sit accusamus necessitatibus aperiam. Quod placeat enim et voluptatibus.', 2016, 57, '4.pdf', 1, 1, 2, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(174, 'Ut quis ea eum ipsam.', 'Sequi illum sapiente qui minus error ut et. Quam aut et qui eaque.', 2022, 75, '8.pdf', 2, 4, 2, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(175, 'Sit fugiat enim iure ut.', 'Adipisci blanditiis tenetur aut consequatur. Non vitae necessitatibus rerum sunt in sed totam.', 2015, 61, '8.pdf', 2, 3, 1, 1, '2025-06-25 14:16:15', '2025-06-25 14:16:15', NULL),
(176, 'Ea iste quae non ut.', 'Facilis inventore aut a et laborum placeat. Nam voluptas voluptatem temporibus autem quas maxime.', 2020, 80, '7.pdf', 2, 2, 2, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(177, 'Et esse dolorem aut.', 'Numquam illo quod et neque quisquam consectetur tenetur. Quasi odit sed consequatur.', 2010, 107, '1.pdf', 1, 1, 1, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(178, 'Et qui aut ut et.', 'Soluta dolores repellendus vel et error eligendi. Reprehenderit iste eveniet qui.', 2013, 85, '6.pdf', 3, 4, 1, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(179, 'Quod sed deleniti a.', 'Impedit tenetur harum ut doloremque. Dolor vel vel id. Nemo earum deserunt praesentium et.', 2017, 137, '7.pdf', 1, 2, 2, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(180, 'Sed eos nostrum enim.', 'Eos minima quibusdam tenetur dolores. Laboriosam nam molestiae dolorem et unde illum ut.', 2009, 14, '6.pdf', 2, 1, 2, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(181, 'Tenetur quo et qui.', 'Architecto reprehenderit distinctio quas adipisci qui. Ab qui ab earum et illo vel.', 2008, 150, '5.pdf', 1, 4, 1, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(182, 'Quas vel sint nulla.', 'Quis repellat est est possimus eveniet. Pariatur illum omnis explicabo excepturi.', 2015, 124, '9.pdf', 2, 3, 2, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(183, 'Et ut libero autem.', 'A eos consequatur in sit. Non dignissimos modi aliquam error.', 2010, 149, '10.pdf', 2, 2, 2, 1, '2025-06-25 14:16:16', '2025-06-25 14:16:16', NULL),
(184, 'Ut ut tenetur illo.', 'Ut ipsum sunt voluptatem nisi. Vero et vitae voluptatem molestias. Eum quaerat veniam aliquid sed.', 2023, 120, '3.pdf', 3, 4, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(185, 'Doloribus eos vel vel.', 'Occaecati minima ullam dolores ratione minus quo. Ea quam sed in magni. Aut quis vero eligendi et.', 2015, 143, '4.pdf', 2, 3, 2, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(186, 'Recusandae aut et dicta.', 'Sint autem error sit. Sunt et quis repellat expedita recusandae in. Quia fugiat quia accusamus.', 2009, 128, '10.pdf', 1, 2, 2, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(187, 'Et similique quia dolor.', 'Et iste reiciendis non molestiae sit aut est. Magni maxime esse ratione et quia.', 2015, 146, '11.pdf', 3, 2, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(188, 'Quasi aut et veniam.', 'Itaque facere et qui minima nostrum consequatur magni. Hic omnis corporis tenetur aut.', 2015, 92, '9.pdf', 2, 3, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(189, 'A nulla neque corporis.', 'Quibusdam odit sunt aut deserunt corporis aut sunt. Ipsum enim nesciunt natus.', 2023, 108, '6.pdf', 1, 4, 2, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(190, 'Sunt aut eos atque.', 'Quia commodi placeat et sed rem distinctio. Ab nesciunt perferendis suscipit et aut sed.', 2017, 149, '4.pdf', 1, 1, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(191, 'Aut quod et aut fugit.', 'Repellat et ducimus sint at reprehenderit id. Eos ut ducimus odit maiores voluptas ea.', 2010, 114, '8.pdf', 3, 4, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(192, 'Quia ut similique atque.', 'Quo pariatur provident velit sunt illum. Et molestiae voluptatem et suscipit omnis aperiam.', 2020, 85, '7.pdf', 2, 3, 1, 1, '2025-06-25 14:16:17', '2025-06-25 14:16:17', NULL),
(193, 'Non ratione aut ut aut.', 'Est aliquam ut praesentium sit consectetur. Et nihil est qui vel dolorem et natus rem.', 2019, 4, '11.pdf', 3, 1, 1, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(194, 'Non et voluptatem ab.', 'Voluptatibus adipisci ullam ab quia possimus id cumque. Expedita voluptas dicta et.', 2021, 99, '1.pdf', 2, 3, 2, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(195, 'Aut non provident qui.', 'Asperiores et nulla adipisci dolores qui voluptatum. Deleniti mollitia at totam id.', 2023, 95, '5.pdf', 1, 4, 1, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(196, 'Non vitae eos earum.', 'Harum illum excepturi aperiam delectus velit. Rerum iste tenetur nihil ut commodi in non aut.', 2017, 19, '6.pdf', 3, 4, 1, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(197, 'Modi omnis veniam in ea.', 'Facilis magnam placeat vel dolorem. Consequatur unde et voluptatem sed qui.', 2017, 81, '8.pdf', 2, 4, 2, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(198, 'Ea nisi pariatur vero.', 'Aut est excepturi dolor nam repellat quasi. Quaerat non non sit vero illo necessitatibus minus.', 2012, 8, '1.pdf', 2, 2, 2, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(199, 'Qui velit adipisci iste.', 'Id atque quidem quo quod. A nulla velit iusto. Quis voluptate numquam et blanditiis laborum eum.', 2010, 70, '6.pdf', 3, 2, 1, 1, '2025-06-25 14:16:18', '2025-06-25 14:16:18', NULL),
(200, 'Veniam eos laborum est.', 'Quaerat necessitatibus eaque veritatis ut. Ducimus quisquam quia non id ipsa saepe.', 2020, 10, '5.pdf', 3, 4, 2, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(201, 'Vel natus rerum aut.', 'Sit in temporibus est nesciunt. Et quia quae similique saepe suscipit.', 2014, 19, '1.pdf', 2, 4, 1, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(202, 'Autem sint totam fuga.', 'Ipsum velit quas harum. Voluptatibus quam ea tempora.', 2008, 4, '11.pdf', 1, 1, 2, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(203, 'Quos ut veniam qui.', 'Molestias iure et facilis. Dolores velit ratione aut eveniet. Suscipit consequatur id tempora et.', 2010, 47, '5.pdf', 3, 3, 1, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(204, 'Non vel neque quo.', 'Eos sit neque voluptatem qui est. Cupiditate quam aut velit quia sed.', 2021, 133, '2.pdf', 1, 4, 1, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(205, 'Est labore rem officiis.', 'Nam est et voluptas architecto ut autem. Odit culpa est similique culpa dolores.', 2014, 12, '7.pdf', 1, 2, 1, 1, '2025-06-25 14:16:19', '2025-06-25 14:16:19', NULL),
(206, 'Ut sequi velit unde ad.', 'Eum consequatur modi ipsam voluptatem neque neque. Non est voluptatem rerum vel eius velit.', 2010, 101, '11.pdf', 1, 1, 1, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(207, 'Qui sunt sequi qui nemo.', 'Molestiae nesciunt id nesciunt sed harum sit perferendis et. A hic soluta quas neque.', 2012, 77, '2.pdf', 3, 2, 1, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(208, 'Et cum veritatis et.', 'Corrupti expedita sint velit voluptatibus. Libero quas ad error.', 2009, 14, '7.pdf', 3, 2, 1, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(209, 'Non in enim quia vel.', 'Numquam eos adipisci aliquam aliquam. Maxime rerum quis corporis numquam. Et et vel temporibus aut.', 2011, 109, '3.pdf', 1, 3, 2, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(210, 'Et ut ab officiis omnis.', 'Voluptate magnam omnis pariatur omnis placeat. Odio et est dolor at quas.', 2018, 107, '8.pdf', 2, 1, 2, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(211, 'Est quo sed dolorem.', 'Maxime dolorem sed voluptatem at vitae mollitia eum. A est corrupti alias et eos maxime suscipit.', 2021, 86, '3.pdf', 2, 2, 2, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(212, 'Ut enim repellat cum.', 'Sint alias provident sed sunt. Aut aut et impedit rem aut. Porro quibusdam nobis qui sapiente.', 2020, 129, '5.pdf', 1, 3, 2, 1, '2025-06-25 14:16:20', '2025-06-25 14:16:20', NULL),
(213, 'In enim magnam minima.', 'Et qui eos atque aut quidem. Nisi blanditiis similique laboriosam est cupiditate.', 2008, 65, '5.pdf', 2, 2, 2, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(214, 'Animi est est dolorem.', 'Vero corrupti placeat incidunt eveniet saepe. Mollitia rem quia neque deleniti aliquid omnis.', 2011, 80, '4.pdf', 1, 2, 2, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(215, 'Ex vel aut et.', 'Asperiores sit aut cupiditate quia. Possimus rerum harum aut quod id.', 2011, 127, '8.pdf', 3, 2, 2, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(216, 'Sint aut illum et.', 'Et perferendis dolores non nihil sed explicabo. Ut aut aliquid quo vel.', 2018, 148, '5.pdf', 2, 2, 2, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(217, 'Autem repellat est rem.', 'Eius ea animi dolor maiores dolor assumenda. Eaque vero ut exercitationem.', 2011, 19, '7.pdf', 1, 4, 1, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(218, 'Veniam minima dolor ut.', 'Placeat voluptas iste et in occaecati libero. Asperiores est dicta est laudantium.', 2014, 103, '11.pdf', 1, 4, 1, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(219, 'Quae nihil minus omnis.', 'Nesciunt quibusdam corrupti qui quidem optio et. Quia veniam accusamus consequuntur.', 2017, 103, '9.pdf', 1, 2, 1, 1, '2025-06-25 14:16:21', '2025-06-25 14:16:21', NULL),
(220, 'Autem ratione quia non.', 'Facilis iusto qui et natus. Perferendis aut quasi dolores.', 2009, 62, '6.pdf', 3, 3, 2, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(221, 'Aut temporibus ab est.', 'Ipsa dolorum dicta nihil non. Hic et itaque reprehenderit ullam quas ut et.', 2023, 11, '11.pdf', 2, 4, 1, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(222, 'Qui quidem quo aut.', 'Provident corrupti id sint praesentium. Deserunt minima ut repellendus reiciendis.', 2009, 4, '5.pdf', 3, 1, 2, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(223, 'Tempore et fuga ut.', 'Doloremque ex occaecati et voluptas ab quia quo. Quisquam iure impedit nemo reprehenderit.', 2017, 99, '6.pdf', 1, 1, 1, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(224, 'Velit ut velit animi.', 'Beatae soluta qui vel numquam. Quo corporis debitis non. Esse consequatur nulla perferendis est.', 2008, 114, '5.pdf', 1, 3, 2, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(225, 'Quis id dignissimos ut.', 'Aliquid aut culpa cupiditate. Voluptate qui vitae autem.', 2020, 104, '10.pdf', 2, 1, 2, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(226, 'Sunt sed dicta qui.', 'Autem et earum magnam maxime labore nisi quia. Ut non maxime culpa ut commodi.', 2011, 40, '8.pdf', 3, 2, 1, 1, '2025-06-25 14:16:22', '2025-06-25 14:16:22', NULL),
(227, 'Itaque rerum quia in et.', 'Et totam laborum in voluptatum aut. Sed quae rerum sed qui. Et at sed vel a ut quo.', 2023, 27, '6.pdf', 1, 3, 1, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(228, 'Ipsum hic eligendi id.', 'Laudantium hic distinctio nostrum temporibus nostrum. Beatae et veritatis dolorem et omnis.', 2016, 108, '1.pdf', 1, 4, 2, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(229, 'Dolorem dolorem vel eum.', 'Recusandae velit quasi inventore repellat qui cumque. Ex ipsa hic necessitatibus aspernatur.', 2018, 8, '1.pdf', 3, 4, 2, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(230, 'Aut maiores ea at omnis.', 'Id et delectus voluptates dolore. Molestiae aut sed et eligendi. Excepturi optio aspernatur velit.', 2014, 44, '2.pdf', 2, 2, 2, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(231, 'Dolor at dolorem ex.', 'Saepe est voluptate aut ipsum quasi. Consectetur repudiandae fugit voluptatem id saepe asperiores.', 2017, 130, '3.pdf', 2, 1, 1, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(232, 'At est odit recusandae.', 'Rerum velit qui dignissimos omnis. Quia dolor asperiores rem. A ut labore quam vero vitae omnis.', 2025, 85, '6.pdf', 1, 1, 2, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(233, 'Aperiam et sit est.', 'Aspernatur dolorem error ut temporibus. Corrupti qui ut quia ut et quis.', 2014, 114, '4.pdf', 1, 4, 1, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(234, 'Et cum itaque vitae.', 'Voluptas sed dolor deserunt. Ipsum autem eos reiciendis laborum.', 2009, 3, '7.pdf', 3, 4, 1, 1, '2025-06-25 14:16:23', '2025-06-25 14:16:23', NULL),
(235, 'Ab accusantium non qui.', 'Error qui iste aut. Fugiat maxime pariatur perspiciatis dolores quia aut.', 2018, 54, '1.pdf', 3, 3, 2, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(236, 'Qui vel quae quis esse.', 'Enim quis eos consequatur eius sed. Voluptate cum neque facere quidem consequatur vero debitis.', 2010, 14, '4.pdf', 1, 2, 2, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(237, 'Vero ea eveniet non ut.', 'Cum fugit quod sint iusto dignissimos maxime. Molestiae similique dicta omnis ut dolorem.', 2018, 124, '7.pdf', 1, 3, 2, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(238, 'Sit qui placeat quis.', 'Et et quas eum aut perferendis corrupti. Reprehenderit quia qui et dolores.', 2013, 76, '6.pdf', 2, 3, 1, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(239, 'Nesciunt et qui nemo.', 'Dolorum vitae sunt laudantium eligendi quo. Qui ut eum deleniti.', 2013, 143, '9.pdf', 3, 2, 1, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(240, 'Sed qui nemo quo.', 'Molestiae error quos quo. Esse nam quo omnis omnis. Iusto voluptas laboriosam ut a id sint aut.', 2012, 125, '8.pdf', 2, 4, 2, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(241, 'In animi qui veniam ea.', 'Quisquam ea molestiae voluptatem sed. Recusandae earum reiciendis sapiente odio.', 2011, 91, '11.pdf', 3, 2, 1, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(242, 'Sed est quam sit.', 'Et id et assumenda vitae laboriosam totam suscipit. Natus non quia perspiciatis libero.', 2014, 109, '9.pdf', 3, 1, 2, 1, '2025-06-25 14:16:24', '2025-06-25 14:16:24', NULL),
(243, 'Eos quasi sit corporis.', 'Aliquid veniam qui modi numquam error. Hic praesentium quod rerum. Et non saepe qui.', 2019, 116, '3.pdf', 2, 2, 2, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(244, 'Dicta sed et et iste.', 'Enim sint amet quia est. Molestias iste ut facilis consequatur et.', 2025, 74, '1.pdf', 2, 2, 2, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(245, 'Est neque id aut quam.', 'Natus doloremque sequi rerum atque harum placeat. Iure placeat id incidunt ut.', 2024, 103, '8.pdf', 1, 2, 1, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(246, 'Non alias amet vel.', 'Fugit qui voluptatibus dolores molestiae. Placeat laborum soluta enim.', 2024, 22, '2.pdf', 1, 1, 1, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(247, 'Qui alias quae atque.', 'Quis id repellendus illum quam qui tenetur possimus. Ut eius dolorum esse rem quidem id qui ad.', 2021, 46, '6.pdf', 3, 4, 1, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(248, 'Omnis in ea saepe.', 'Officia rerum aliquid doloribus quia. Voluptas modi consequuntur omnis totam quasi nobis.', 2023, 76, '8.pdf', 3, 1, 2, 1, '2025-06-25 14:16:25', '2025-06-25 14:16:25', NULL),
(249, 'Odit et placeat non eos.', 'Expedita non cum repudiandae cupiditate officiis ea et. Possimus tempora doloribus ut.', 2008, 67, '9.pdf', 2, 2, 2, 1, '2025-06-25 14:16:26', '2025-06-25 14:16:26', NULL);
INSERT INTO `documents` (`id`, `titulo`, `descripcion`, `anio`, `numero`, `archivo_pdf`, `type_id`, `category_id`, `user_id`, `department_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(250, 'Ut quo ipsum architecto.', 'Harum inventore est impedit quos dolores. Vel animi magnam dolore.', 2009, 33, '2.pdf', 3, 3, 1, 1, '2025-06-25 14:16:26', '2025-06-25 14:16:26', NULL),
(251, 'resolu4', 'as dfasf asfasd', 2025, 124, 'codigo-de-edificacion-vm_revisado_2021.pdf', 3, 3, 1, 1, '2025-06-25 14:31:46', '2025-06-25 14:46:34', NULL),
(252, 'resolu2', 'drgrdfgdfgfdg', 2025, 436, 'Detalle_DDJJ_2025_4.pdf', 3, 1, 1, 1, '2025-06-25 14:57:17', '2025-06-25 14:58:41', NULL),
(253, 'resolu2', 'asd sadsad', 2025, 24, 'FAJARDO MARCELO   .pdf', 3, 4, 3, 1, '2025-06-25 15:58:46', '2025-06-25 15:59:35', NULL),
(254, 'resolu1', 'asd fasdfsdf sda dfsdfsdfsd', 2025, 230, '2065-O-1980.pdf', 3, 2, 3, 1, '2025-06-25 16:17:12', '2025-06-25 16:18:12', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(7, '2025_06_25_000001_create_types_table', 2),
(8, '2025_06_25_000002_create_categories_table', 2),
(9, '2025_06_25_000003_create_documents_table', 2),
(10, '2025_06_26_150224_create_tag_tables', 3),
(13, '2025_06_26_171508_create_departments_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jXFITyHBaxNkMoCLadPekA9HmLNRtrYscUHymZKl', 1, '10.24.254.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiejNBMXhMMHduSVlxTHVTTUNab0lTb2RkVlNjU2IxMTV1NnNCeFlVeSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ4OiJodHRwOi8vMTAuMjQuMjU0LjE2MDo4MDAwL2FkbWluL2RvY3VtZW50cy9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkMHVCQmk5NGlSS3lQckQxN3pJMC4wLjZ3UFhidDg0M0svYVZ4UElGYndUUW5aLmQxV3FZME8iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1750960673);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` json NOT NULL,
  `slug` json NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE `types` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `types`
--

INSERT INTO `types` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Resolución', NULL, NULL, NULL),
(2, 'Memorandum', NULL, NULL, NULL),
(3, 'Decreto', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$0uBBi94iRKyPrD17zI0.0.6wPXbt843K/aVxPIFbwTQnZ.d1WqY0O', NULL, '2025-06-24 17:03:34', '2025-06-24 17:03:34'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$kqx97Q4L6inwIuka50IwVuP4mx9YAk33JoIgyzpJFw.REF8ft9UxW', NULL, NULL, NULL),
(3, 'Usuario1', 'usuario1@gmail.com', NULL, '$2y$12$9QDPLLAdpBbqLKLZWRADEe1Jf8b9N.tPd4HdNotH5fnpqEfCYnV/e', NULL, NULL, NULL),
(4, 'Prof. Andres Stiedemann I', 'audrey51@example.org', '2025-06-24 17:15:22', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'SXDGLZeMoq', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(5, 'Mr. Alexandro Hammes', 'chaz19@example.org', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'l9IPbncujE', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(6, 'Omer Lind IV', 'hane.otho@example.org', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'vdQhwP364z', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(7, 'Quinton Eichmann', 'norwood.farrell@example.net', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'MvtDkkXeNg', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(8, 'Roman Hodkiewicz', 'abbott.lonzo@example.com', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'WZUKZhAs9q', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(9, 'Prof. Nathanael Haley IV', 'elta19@example.net', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', '9ca29B1pOG', '2025-06-24 17:15:23', '2025-06-24 17:15:23'),
(10, 'Taylor Casper V', 'ypredovic@example.net', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'FlYzztn2dJ', '2025-06-24 17:15:24', '2025-06-24 17:15:24'),
(11, 'Alysha Bechtelar', 'mabel.crooks@example.com', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'ITow4Atjfs', '2025-06-24 17:15:24', '2025-06-24 17:15:24'),
(12, 'Kadin Jerde', 'bednar.bertha@example.org', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'PzY6H5Uk9F', '2025-06-24 17:15:24', '2025-06-24 17:15:24'),
(13, 'Nayeli Denesik', 'cartwright.jordane@example.com', '2025-06-24 17:15:23', '$2y$12$KpGFIJVe/jl/aufhRTDAce1ddhPp5wHtP5SmCc7vo4oT8CkHcT5zC', 'Ihu0T1DEqw', '2025-06-24 17:15:24', '2025-06-24 17:15:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_type_id_foreign` (`type_id`),
  ADD KEY `documents_category_id_foreign` (`category_id`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD UNIQUE KEY `taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `documents_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`),
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
