-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-06-2025 a las 17:37:58
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
('laravel_cache_livewire-rate-limiter:e9c2ee3f8fade50dea18cfa5c8c296a517fdded1', 'i:1;', 1750784861),
('laravel_cache_livewire-rate-limiter:e9c2ee3f8fade50dea18cfa5c8c296a517fdded1:timer', 'i:1750784861;', 1750784861);

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
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `archivo_pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documents`
--

INSERT INTO `documents` (`id`, `titulo`, `descripcion`, `archivo_pdf`, `type_id`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Qui modi vitae ea fugit.', 'Sint cumque quis et dolor ut laboriosam quas tenetur. Magnam et libero deserunt delectus quam.', '8.pdf', 1, 4, 1, '2025-06-24 17:19:17', '2025-06-24 17:19:17', NULL),
(2, 'Fuga aut eligendi vitae.', 'Beatae architecto fuga rerum harum nemo. Quis sit animi ut. Amet voluptate eligendi ad est.', '1.pdf', 2, 1, 1, '2025-06-24 17:19:17', '2025-06-24 17:19:17', NULL),
(3, 'Nemo odio dicta et sint.', 'Explicabo cum quis rerum. Ea et officia dolorem reiciendis ipsum sed. Totam iste non dolorem.', '9.pdf', 1, 4, 1, '2025-06-24 17:19:17', '2025-06-24 17:19:17', NULL),
(4, 'Et quasi quia non iure.', 'Est omnis omnis modi est. Rerum cumque quia dicta ut.', '8.pdf', 1, 3, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(5, 'Distinctio et et libero.', 'Quia ut corrupti corrupti veniam. Eum et sed consequuntur eligendi ipsa.', '11.pdf', 1, 1, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(6, 'Magnam et ad et.', 'Velit aperiam ab quaerat non. Cupiditate quibusdam accusamus qui omnis facere quia nemo.', '11.pdf', 2, 1, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(7, 'Sit culpa ipsa qui non.', 'Et consectetur expedita expedita aut nemo quisquam. Et sequi velit voluptatem quam corrupti.', '10.pdf', 1, 2, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(8, 'Quasi nam labore alias.', 'Iste sunt et quaerat nesciunt. Dolorum quisquam ut eum eum. Hic quisquam id soluta vel modi.', '2.pdf', 3, 3, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(9, 'Qui quo et et non.', 'Et aut repellendus libero. Quia enim nobis dolor enim. Accusantium ut non qui quidem et.', '4.pdf', 3, 4, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(10, 'Perspiciatis odit et ut.', 'Et ut inventore praesentium animi. Minus ut sunt nihil possimus. Qui amet eum officia ullam.', '7.pdf', 2, 1, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(11, 'In itaque ut est quam.', 'Quis et neque eaque deserunt provident est aperiam sit. Nihil deserunt et aut nam.', '11.pdf', 1, 4, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(12, 'Culpa ea ut quos quia.', 'Fugit corrupti asperiores et quia. Doloribus corrupti quis voluptatum tenetur qui eius non est.', '3.pdf', 1, 3, 1, '2025-06-24 17:19:18', '2025-06-24 17:19:18', NULL),
(13, 'Neque est debitis nam.', 'Quod officia minus voluptas et. Rem officia qui sapiente porro. Dignissimos rerum aspernatur modi.', '8.pdf', 2, 1, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(14, 'Ipsam eos qui placeat.', 'Omnis et at corrupti est. Laudantium a pariatur qui.', '1.pdf', 3, 3, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(15, 'Totam aut dolor quos in.', 'Voluptatem qui autem tenetur. Unde praesentium accusantium distinctio et ullam porro.', '9.pdf', 2, 2, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(16, 'Magnam iure eos vel ut.', 'Doloremque ipsam ratione nulla incidunt id et sapiente voluptate. Eos error magni modi suscipit.', '10.pdf', 3, 2, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(17, 'Sed aut ut aut.', 'Et ex ut sequi libero. Error et quis rerum aspernatur. Magni nam aliquid sunt non nihil.', '10.pdf', 2, 3, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(18, 'Quos repellendus ut qui.', 'Vel a laboriosam fuga et est ducimus assumenda qui. Maxime aut aut consequuntur.', '5.pdf', 2, 2, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(19, 'Neque dolorem quia nam.', 'Quia deleniti sunt commodi tenetur qui. Velit eos fugit omnis. Excepturi quis a cumque eos.', '9.pdf', 1, 4, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(20, 'Esse fuga culpa id in.', 'Dolorem cum tempora animi inventore. Nisi quos aut quis expedita.', '10.pdf', 1, 2, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(21, 'Sit ad ut quia velit.', 'Ut totam laborum quaerat perspiciatis. Et sed eius sed et.', '9.pdf', 1, 2, 1, '2025-06-24 17:19:19', '2025-06-24 17:19:19', NULL),
(22, 'Et sint vitae eos.', 'Earum velit soluta officia nam. Corrupti et non aut.', '9.pdf', 1, 1, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(23, 'Et modi vel ea fuga.', 'Aspernatur ut a voluptas est. Iusto cupiditate dolores quo. Et fuga velit expedita nobis ab.', '7.pdf', 3, 3, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(24, 'Ut nihil in quis.', 'Eaque voluptas non consequatur. Iusto doloremque ut odit similique unde odit esse.', '2.pdf', 1, 2, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(25, 'Nihil sunt earum culpa.', 'Deleniti at dicta enim saepe qui sed. Id similique voluptas voluptatum alias ipsum.', '9.pdf', 2, 4, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(26, 'Quis quo qui placeat.', 'Autem qui aut non voluptatem nobis et. Temporibus assumenda fugiat sit.', '8.pdf', 2, 1, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(27, 'Ea ipsa dolore quasi.', 'Et aut aut qui. Quas ipsum libero labore eos ratione totam. Aliquid perspiciatis sit quos culpa.', '5.pdf', 2, 3, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(28, 'Ex et cupiditate magni.', 'Saepe ipsum omnis reprehenderit. Sed rerum et sit at unde. Libero id quisquam dicta et.', '3.pdf', 2, 3, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(29, 'Qui debitis non itaque.', 'Aut dolores vitae error voluptas non distinctio autem. Nemo rerum earum iste dolores.', '11.pdf', 2, 4, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(30, 'Ut omnis dolorum quis.', 'Doloremque molestiae consequuntur quia et dolores non optio. Eos est voluptatem quo omnis autem.', '10.pdf', 1, 4, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(31, 'Aut vel dolor modi.', 'Autem rerum molestias corrupti eius. In maiores eius rerum qui qui. Odio officiis modi quia vitae.', '6.pdf', 1, 4, 1, '2025-06-24 17:19:20', '2025-06-24 17:19:20', NULL),
(32, 'Eius repellat ut velit.', 'Eligendi dolor ullam qui quis dolor vero qui. Dolor quis quam libero ratione.', '4.pdf', 2, 2, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(33, 'Vel quia dolores ut.', 'Pariatur ipsam vel ex quibusdam laboriosam modi. Vel sapiente et id commodi et dolorem quae.', '2.pdf', 1, 4, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(34, 'Eos error nulla nisi.', 'Et ut id nostrum totam. Enim repudiandae ut nostrum ipsum recusandae eos. Ut et velit et.', '2.pdf', 3, 1, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(35, 'Maiores et sit impedit.', 'Aut quaerat quibusdam tenetur. Consequatur quis consequatur cumque est voluptas optio.', '4.pdf', 2, 4, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(36, 'Facere qui et eligendi.', 'In omnis voluptatum blanditiis sit. Nemo sed et aut. Ipsa repellat eveniet est perspiciatis neque.', '3.pdf', 1, 3, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(37, 'Tempore non est omnis.', 'Eos consequatur expedita fuga culpa sit. Soluta esse error eius suscipit corrupti at voluptas.', '2.pdf', 2, 2, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(38, 'Iste optio est aut.', 'Officia eum laudantium quis. Non nemo et magnam eveniet blanditiis ea sed.', '1.pdf', 1, 2, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(39, 'Beatae sed vero ut quam.', 'Aliquam rerum aut vel et. Incidunt nostrum aut non sed.', '6.pdf', 2, 2, 1, '2025-06-24 17:19:21', '2025-06-24 17:19:21', NULL),
(40, 'Quod illum et atque.', 'Quibusdam qui fugiat et. Aut porro doloribus aperiam impedit assumenda. Sed hic ut nobis.', '3.pdf', 2, 2, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(41, 'Et quos unde et nisi.', 'Recusandae et et nostrum eos. Est et omnis aut doloremque a facere qui dolor.', '8.pdf', 2, 1, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(42, 'Dolor enim non vel eum.', 'Est debitis autem sunt aperiam. Sapiente debitis autem et voluptas deserunt ex omnis officia.', '9.pdf', 3, 2, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(43, 'Eos quia ipsa et.', 'Delectus eius laudantium ab maiores quia minima. Ea et sint a et id illo.', '4.pdf', 1, 4, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(44, 'At est atque amet ab.', 'Voluptatum facere quisquam animi dolores voluptatem ex. Ut consequatur dolor aut.', '8.pdf', 3, 2, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(45, 'Quo et incidunt id id.', 'Eum eum non adipisci. Voluptas asperiores fugiat cum ut quo. Fugit impedit libero quia velit.', '7.pdf', 2, 4, 1, '2025-06-24 17:19:22', '2025-06-24 17:19:22', NULL),
(46, 'Alias nihil sint unde.', 'Perferendis voluptas architecto eius. Ut qui atque et non. Vitae eos quia aut.', '1.pdf', 2, 1, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(47, 'Laborum omnis vero in.', 'In ea perspiciatis praesentium eos. Delectus et sequi ad velit.', '2.pdf', 2, 3, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(48, 'Vitae autem dolor quae.', 'Aut et facilis est voluptatem et. Dolorem iste ut qui quidem. Non quidem quod beatae.', '1.pdf', 3, 1, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(49, 'Itaque ipsa aut sed.', 'Laborum inventore quasi dolores vel quas. Minima et et maxime id.', '3.pdf', 3, 2, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(50, 'Incidunt id ea nesciunt.', 'Amet aut veritatis doloribus. Sed cum suscipit est est omnis ea.', '2.pdf', 2, 1, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(51, 'Qui ad est expedita.', 'Laboriosam eum error quia dolor dolorem debitis. Harum esse aut ea qui maiores.', '5.pdf', 2, 2, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(52, 'Neque illo sit sit.', 'Nostrum repellendus sit aperiam odio ex esse sunt. Porro dignissimos fugit a et.', '2.pdf', 2, 2, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(53, 'Et quam qui sit.', 'Eos aut omnis illum recusandae. Sunt est illo velit tenetur.', '1.pdf', 3, 1, 1, '2025-06-24 17:19:23', '2025-06-24 17:19:23', NULL),
(54, 'Et facere magni debitis.', 'Deleniti et numquam placeat vero nihil omnis. Asperiores qui et voluptas praesentium non dolorem.', '4.pdf', 2, 2, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(55, 'Incidunt nostrum eos ut.', 'Quasi cum nam rerum quos dignissimos illo. Architecto saepe totam nemo deserunt et alias.', '3.pdf', 3, 4, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(56, 'Harum reiciendis ea est.', 'Non sint eligendi sed similique cumque. Et saepe ut maxime pariatur ea quo id quia.', '6.pdf', 1, 1, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(57, 'Ut cumque mollitia sed.', 'Sed omnis vel fugit adipisci iste est. Placeat et culpa in dolores reiciendis nihil numquam.', '5.pdf', 3, 2, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(58, 'Nihil pariatur est aut.', 'Expedita earum earum enim cumque dolor rem dolorem. Aperiam nihil aut laudantium in nisi odio.', '6.pdf', 3, 1, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(59, 'Nam aut hic dolorum hic.', 'In qui ea quaerat voluptatem similique. Illum sed quis perferendis voluptas modi.', '7.pdf', 1, 3, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(60, 'At aut maxime quod.', 'Voluptas iure consectetur molestiae eius beatae possimus rerum. Nisi nesciunt id et magni.', '2.pdf', 2, 1, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(61, 'Quas dolor itaque et.', 'Aliquam incidunt et consequatur ut voluptatibus error. Aut sunt a et qui suscipit architecto.', '10.pdf', 3, 1, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(62, 'Corporis atque dolor ea.', 'Minima alias ullam quia atque nisi voluptatum quaerat. Quasi maxime est magnam.', '6.pdf', 3, 4, 1, '2025-06-24 17:19:24', '2025-06-24 17:19:24', NULL),
(63, 'Eius quas nam et.', 'Aut ut atque incidunt consequuntur. Modi quia sapiente beatae repellat.', '8.pdf', 2, 1, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(64, 'Quasi dolor qui ut.', 'Vel expedita est officia reprehenderit inventore. Et magnam cumque et et corrupti aut tempore.', '1.pdf', 3, 4, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(65, 'Ipsam et aut aut quae.', 'Velit libero laudantium unde dolorem molestiae at. Ut et praesentium repellat quibusdam.', '8.pdf', 1, 4, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(66, 'Aut non ut ut sit est.', 'Enim odit expedita qui at autem fuga dolores. Officia error maxime ducimus magni.', '11.pdf', 3, 3, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(67, 'Nulla nihil et eveniet.', 'Neque quia dolorum cupiditate enim quae. Quisquam placeat exercitationem impedit.', '9.pdf', 2, 1, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(68, 'Laboriosam quo sed aut.', 'Illo itaque hic odit eum. Odit consequuntur voluptatum nesciunt nihil atque rerum deleniti.', '2.pdf', 2, 3, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(69, 'Eos omnis quia magnam.', 'Quos rerum quis vel. Molestiae facere molestias ut ullam.', '5.pdf', 2, 3, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(70, 'Quas libero qui aperiam.', 'Esse ea quo ipsa qui nobis. Sit necessitatibus quia aut sapiente. Voluptas sed impedit qui.', '7.pdf', 3, 4, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(71, 'Aut et nisi nam.', 'Quibusdam eveniet autem cumque aperiam. Explicabo occaecati sed dolore.', '5.pdf', 3, 2, 1, '2025-06-24 17:19:25', '2025-06-24 17:19:25', NULL),
(72, 'Laboriosam et et id et.', 'Sed rem tenetur qui non quidem itaque. Sunt mollitia tempore accusamus velit et et laborum.', '8.pdf', 3, 4, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(73, 'Quasi unde ut eum illo.', 'Quo dolor asperiores in esse labore occaecati modi. Vero qui dolorem est.', '4.pdf', 1, 2, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(74, 'Qui non sit deserunt.', 'Aut numquam aliquam ea corrupti illo architecto. Error autem totam natus culpa velit quaerat.', '4.pdf', 3, 2, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(75, 'Ut et sed magnam quam.', 'Provident et dolores reprehenderit. Minima a illo sunt repellat autem ea.', '11.pdf', 3, 2, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(76, 'Aut et corrupti esse.', 'Ex reiciendis quod unde aut iste. Ab ut sed illo voluptatem sequi reprehenderit.', '7.pdf', 3, 1, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(77, 'Inventore quo aut et.', 'Repellat suscipit ab et commodi. Quae nisi laudantium fuga et.', '1.pdf', 2, 3, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(78, 'Odit ut aut dolor aut.', 'Incidunt natus eos id. Qui quis natus nisi neque.', '2.pdf', 3, 1, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(79, 'Neque ipsum nobis nulla.', 'Itaque minima facilis neque. Non officia non occaecati officia.', '9.pdf', 1, 4, 1, '2025-06-24 17:19:26', '2025-06-24 17:19:26', NULL),
(80, 'Est qui neque hic.', 'Quo laborum voluptatem soluta quis sit. Qui corrupti omnis ea dolores nostrum.', '6.pdf', 2, 2, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(81, 'Aut non aut enim non.', 'Exercitationem molestiae est dolor deserunt ut autem. Sit et quia assumenda mollitia.', '8.pdf', 2, 4, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(82, 'Enim molestias et id.', 'Quae ullam vel enim rem ad ex deserunt vero. Fuga ut eveniet vel officiis molestiae.', '5.pdf', 3, 4, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(83, 'Deleniti ut ipsam sed.', 'Eum quia officiis provident dolorem. Rerum voluptas est error error. Aut officia quam qui pariatur.', '10.pdf', 3, 1, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(84, 'Pariatur aut autem sunt.', 'Eveniet et temporibus quam. Sit fugit blanditiis id ullam ut illo. Aliquid quod natus illum qui.', '7.pdf', 1, 3, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(85, 'Ut enim iure itaque sed.', 'Molestiae et saepe quos modi nihil. Ab necessitatibus ducimus et in sit.', '1.pdf', 1, 1, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(86, 'Velit itaque natus et.', 'Ullam possimus modi totam in id. Quae non autem illum suscipit ut. Consequatur vitae enim cum sit.', '4.pdf', 1, 2, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(87, 'Delectus facilis ut vel.', 'Qui beatae qui totam. Tempora neque libero ea ad iste. Ipsa delectus sit sed itaque repellat qui.', '4.pdf', 3, 1, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(88, 'Et sed dolor mollitia.', 'Facilis ut aut natus. Qui accusamus ducimus qui ea accusamus quo.', '8.pdf', 1, 2, 1, '2025-06-24 17:19:27', '2025-06-24 17:19:27', NULL),
(89, 'Aut itaque cum quis.', 'Et qui deserunt dolor eius ut rerum. Velit architecto sint quia.', '6.pdf', 3, 1, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(90, 'Ut qui est consectetur.', 'Sit et provident vel qui. Magnam sint sit animi aut voluptas.', '6.pdf', 3, 2, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(91, 'Qui nisi velit rem et.', 'Totam labore nostrum voluptatem odit. Ab numquam dolorem aspernatur cum repellat pariatur.', '3.pdf', 1, 2, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(92, 'Qui molestias quia enim.', 'Ut sequi corporis et rerum reiciendis voluptas. Eveniet et mollitia corrupti accusamus et dicta.', '1.pdf', 3, 3, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(93, 'Id sed dolor nostrum.', 'Velit autem cumque nihil. Blanditiis neque quam aut maxime.', '5.pdf', 1, 4, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(94, 'Sit atque vitae magni.', 'Veritatis voluptates nemo culpa eos. Rerum ut aut sed.', '9.pdf', 2, 4, 1, '2025-06-24 17:19:28', '2025-06-24 17:19:28', NULL),
(95, 'Quia laboriosam cum ea.', 'Cumque impedit eum aspernatur. Expedita omnis sapiente quidem. Et vel voluptas voluptatum odio.', '9.pdf', 2, 1, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(96, 'Debitis esse sint nisi.', 'Ut voluptas aliquid temporibus officia. Dignissimos consequatur cum quibusdam similique ipsam.', '1.pdf', 2, 3, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(97, 'Sint minima id nemo.', 'Maxime quasi sed corrupti consequatur. Quidem nam perferendis itaque id quia incidunt voluptatem.', '5.pdf', 2, 3, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(98, 'Qui et vel qui laborum.', 'Quia quaerat vitae est quo nulla. Laborum id id ut in aut. Qui autem et ad similique.', '6.pdf', 2, 1, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(99, 'Quos eius et quo nobis.', 'Ipsa sequi assumenda provident laborum suscipit. Quod eos maiores molestiae dolores voluptatum.', '11.pdf', 2, 1, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(100, 'Doloribus saepe hic ea.', 'Odio voluptates rerum ex eveniet eum quis. Explicabo alias maiores doloribus minima.', '5.pdf', 2, 1, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(101, 'Ullam nobis ad autem et.', 'Veritatis aut quo in ut. Eum sed amet iste eveniet. Dolorum quibusdam quae aliquam modi sed.', '6.pdf', 2, 3, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(102, 'At ipsum aut et ut.', 'Non officiis enim est. Ad vel ut aut ducimus qui maxime. Omnis autem quibusdam neque ipsam sit.', '5.pdf', 2, 4, 1, '2025-06-24 17:19:29', '2025-06-24 17:19:29', NULL),
(103, 'Sunt debitis a ipsum id.', 'Voluptatum adipisci quis sed. Rem unde aut eius sit.', '10.pdf', 1, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(104, 'Non culpa voluptas ea.', 'Dolorem mollitia aliquid placeat non libero. Voluptas assumenda sequi error molestiae maxime.', '10.pdf', 2, 2, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(105, 'Vel esse sequi soluta.', 'Mollitia consequatur quia maiores autem. Neque quas dolore deserunt et iure explicabo.', '3.pdf', 2, 4, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(106, 'Sunt eum qui reiciendis.', 'Perferendis dolores accusantium sed odio iste. Quas numquam enim molestiae vitae illum.', '4.pdf', 1, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(107, 'Saepe non dolorum est.', 'Corrupti itaque quaerat qui ut atque voluptatem. Veniam quia eaque dolores adipisci.', '7.pdf', 2, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(108, 'Incidunt omnis qui enim.', 'Provident in quia aut reiciendis eaque. Rem placeat et molestias molestiae dolor consectetur neque.', '1.pdf', 1, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(109, 'Maiores iste ut ut.', 'Cupiditate impedit maxime ducimus. Distinctio sunt dolor eum nesciunt. Debitis est eum aut dolorem.', '8.pdf', 3, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(110, 'Dolores sed nihil dicta.', 'Voluptatem optio sit aperiam autem dolorem qui vel. Aut porro molestiae eaque deleniti sed quod et.', '11.pdf', 3, 1, 1, '2025-06-24 17:19:30', '2025-06-24 17:19:30', NULL),
(111, 'Qui ut quo ullam est.', 'Laborum magni tenetur est quaerat voluptatem illum. Impedit voluptas commodi at.', '3.pdf', 1, 2, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(112, 'Autem dolore sit aut.', 'Consequuntur inventore officia libero. Voluptatum perspiciatis quo rerum dolorem.', '8.pdf', 1, 4, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(113, 'Ut et aut asperiores.', 'Ipsa fugit praesentium quis consequatur. Eos magni voluptatem veniam. Repellendus magnam qui quia.', '1.pdf', 1, 1, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(114, 'Aut quis dolorem optio.', 'Molestias sequi architecto molestiae quisquam. Quibusdam odio similique eos ab qui.', '8.pdf', 1, 3, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(115, 'Sed officia ea qui.', 'Sed occaecati voluptas provident ut. Ducimus et vel ut omnis corrupti enim beatae.', '3.pdf', 1, 2, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(116, 'Non ut sit quis facilis.', 'Sed harum molestiae et perferendis eum laborum consequatur. Cum accusamus velit et fugiat velit.', '10.pdf', 3, 2, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(117, 'Et laborum illum animi.', 'Voluptatem fuga excepturi labore quisquam. Vel quod voluptatem amet quis.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(118, 'Autem impedit ut magnam.', 'Doloribus eius ut odio sequi suscipit sunt laborum. Iste et aspernatur voluptatibus et.', '7.pdf', 1, 3, 1, '2025-06-24 17:19:31', '2025-06-24 17:19:31', NULL),
(119, 'Et ut quo qui qui ab.', 'Dolores rem quis et. Facilis et voluptas aperiam. Qui sed sit corporis sit nisi.', '8.pdf', 1, 2, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(120, 'Sit itaque est vel.', 'Aut ea delectus aut suscipit vel. Eos laboriosam sint incidunt. Et doloremque et voluptates.', '3.pdf', 2, 4, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(121, 'Earum neque ut optio.', 'Et corporis blanditiis sit. Adipisci cum non sed nihil. Blanditiis exercitationem nisi et fugiat.', '7.pdf', 2, 4, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(122, 'Et labore et iure iusto.', 'Aut molestias et illo necessitatibus qui. Sit officiis veritatis tempore.', '11.pdf', 1, 2, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(123, 'Suscipit ut dolorum et.', 'Vel perferendis tempore pariatur labore. Quia sed id occaecati ducimus. Omnis modi laborum esse ea.', '6.pdf', 1, 3, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(124, 'Totam non veniam in.', 'Et consequatur iusto odit. Sint quidem incidunt voluptas laborum doloremque fugit quae.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(125, 'Quidem illo et omnis.', 'Possimus et minima exercitationem non. Illo veniam dicta expedita temporibus qui.', '9.pdf', 3, 1, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(126, 'Iusto et sunt sed natus.', 'Deleniti quo iusto est voluptate eos et non. Perspiciatis vitae quis sit. Excepturi saepe quia eum.', '8.pdf', 3, 4, 1, '2025-06-24 17:19:32', '2025-06-24 17:19:32', NULL),
(127, 'Est eius vel recusandae.', 'Id optio minus eos dolor ea. Et voluptatem quod a id aspernatur.', '9.pdf', 2, 3, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(128, 'Iste et aut sint.', 'Facere quasi quia id. Inventore qui neque et. Placeat maxime et et rerum.', '11.pdf', 2, 3, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(129, 'Autem et sit corporis.', 'Quidem et ex voluptatum nihil vero id mollitia. Dolorum voluptates perferendis aut iure.', '3.pdf', 3, 4, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(130, 'Maxime et sit explicabo.', 'Molestiae iusto ut est. Nam atque distinctio vel deleniti.', '3.pdf', 1, 2, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(131, 'Qui et facere ut qui.', 'Commodi minima cumque aspernatur accusantium accusantium. Delectus nihil delectus minus dolorem.', '8.pdf', 2, 3, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(132, 'Qui voluptate a sed qui.', 'Adipisci enim omnis ipsam consequatur praesentium dolor. Ea quam optio eveniet.', '9.pdf', 3, 3, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(133, 'Aut ad cum suscipit ex.', 'Eius et laborum eos sunt. Corrupti fuga corrupti ex et. Optio et nisi blanditiis.', '10.pdf', 2, 1, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(134, 'Ab autem aut quia esse.', 'Nobis expedita excepturi rem corporis enim sapiente. Rerum id eum dicta voluptates quis fugiat qui.', '8.pdf', 1, 3, 1, '2025-06-24 17:19:33', '2025-06-24 17:19:33', NULL),
(135, 'Hic aut ipsa aut rerum.', 'Officiis et et nemo sed aut provident est. Exercitationem molestiae ut sed sed.', '2.pdf', 2, 1, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(136, 'Nihil porro harum velit.', 'Ipsa explicabo placeat ullam sunt. Sint sit quo aliquid maiores id. Quas est rerum molestiae quas.', '4.pdf', 1, 4, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(137, 'A repellendus id quos.', 'Est numquam perspiciatis aut. Nesciunt unde hic culpa illo illum amet. Est quia possimus dolore.', '4.pdf', 1, 4, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(138, 'Iure sed quae nulla.', 'Rerum alias molestias et qui repellendus. Velit aspernatur harum provident.', '2.pdf', 2, 4, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(139, 'In sit autem autem.', 'Mollitia nisi et et assumenda maxime consequuntur. Placeat ea quam cupiditate quia est.', '1.pdf', 3, 1, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(140, 'Sunt quo eum id dolorem.', 'Possimus debitis quia qui qui sapiente. Expedita dolor autem alias suscipit sit animi consectetur.', '7.pdf', 3, 3, 1, '2025-06-24 17:19:34', '2025-06-24 17:19:34', NULL),
(141, 'Ipsam ea rerum optio.', 'Et consequatur facere autem asperiores. Aspernatur alias ut quibusdam architecto.', '3.pdf', 2, 4, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(142, 'Modi qui asperiores vel.', 'Non rerum sit accusamus. Magnam et sint velit molestias. Officia autem a nostrum.', '4.pdf', 2, 1, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(143, 'Culpa sequi ab totam.', 'Ex perferendis ex nihil. Iste ut eos quo enim rem odit cum. Tempore voluptatem et error accusamus.', '4.pdf', 1, 1, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(144, 'Officiis id est facere.', 'Ipsa eum sit corrupti hic aliquid quos assumenda. Et nobis facere enim quos.', '9.pdf', 2, 2, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(145, 'Sit ut quis nihil aut.', 'Eaque nisi vel voluptate sequi. Cum magnam repellat occaecati veritatis repellat esse.', '4.pdf', 2, 1, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(146, 'Impedit et ut non.', 'Ea tempora accusamus et fugit eius. Enim fugiat vero animi dolor sit tenetur.', '6.pdf', 2, 2, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(147, 'Eum totam quaerat dolor.', 'Vero dolores mollitia ut blanditiis. Quas quam tempore doloribus doloremque quia dolorum ipsa.', '8.pdf', 3, 4, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(148, 'Quam officia quia qui.', 'Aut et repudiandae tempore voluptatum vero et animi. Et consequatur quia earum pariatur.', '8.pdf', 3, 4, 1, '2025-06-24 17:19:35', '2025-06-24 17:19:35', NULL),
(149, 'Iusto rerum id sit in.', 'Sunt molestiae debitis labore. Molestiae sed ipsam et maiores labore officiis ducimus repudiandae.', '4.pdf', 3, 4, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(150, 'Unde esse quia iste sit.', 'Voluptas sit et officia magni. Et natus libero inventore excepturi.', '10.pdf', 1, 1, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(151, 'Hic soluta velit magnam.', 'Sunt reiciendis rerum iste suscipit nihil cum. Ut maxime molestiae totam.', '11.pdf', 1, 4, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(152, 'Omnis et ipsum rerum.', 'Voluptate animi et qui eveniet qui. Aut natus doloribus est. Voluptatum aliquid est veniam commodi.', '6.pdf', 2, 3, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(153, 'Ea quod et ut et et.', 'Veniam nam nulla distinctio est officia. Dolorem amet odit nesciunt tempore facere.', '9.pdf', 3, 3, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(154, 'Vel minus est aut omnis.', 'Voluptate in est distinctio voluptas laboriosam consequatur. Qui dolores itaque et autem sit.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(155, 'Aut nihil sed corrupti.', 'Voluptatem pariatur rem officiis consectetur minima ab. Saepe sequi facilis id aut.', '10.pdf', 3, 3, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(156, 'Et qui libero sit.', 'Earum maxime voluptatibus eius. Sit quia qui illum ab. Libero aut est tenetur natus quis.', '9.pdf', 3, 1, 1, '2025-06-24 17:19:36', '2025-06-24 17:19:36', NULL),
(157, 'Et asperiores ad est.', 'Qui et rem dolore eligendi rerum sit. Quae officiis in iure voluptas.', '8.pdf', 1, 3, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(158, 'Ad aut et vero et.', 'Aut quae alias ut dolorem fuga inventore eligendi. Odit ipsum ea et totam.', '1.pdf', 2, 2, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(159, 'Vel sint natus fuga et.', 'Odit laudantium ex hic reprehenderit porro odit. Laboriosam veniam eveniet excepturi.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(160, 'A enim ad optio labore.', 'Itaque et soluta dolores placeat dolorem est. Qui rerum commodi mollitia vitae dolore suscipit.', '10.pdf', 1, 3, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(161, 'Sequi qui optio id.', 'Error error dolor quaerat nulla voluptas. Ea sed itaque aliquam et voluptas consequuntur.', '4.pdf', 3, 1, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(162, 'Ad a quam possimus vel.', 'Sunt omnis neque est doloremque. Consequuntur qui est laborum pariatur quod.', '8.pdf', 3, 2, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(163, 'Rem sed neque quo.', 'Quo omnis quod iusto consectetur. Modi voluptatum maxime assumenda.', '5.pdf', 2, 3, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(164, 'Ut vel vero eligendi.', 'In porro sit earum et rerum. Facere repellendus cumque dolorem.', '3.pdf', 1, 4, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(165, 'Quia velit et nesciunt.', 'Rerum voluptatem enim eaque aliquam cum voluptatem ratione. At temporibus doloribus quis optio.', '3.pdf', 1, 1, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(166, 'In magni amet vero.', 'Cum ut perferendis earum quisquam atque tempore. Maxime amet doloribus sed necessitatibus quam.', '10.pdf', 2, 4, 1, '2025-06-24 17:19:37', '2025-06-24 17:19:37', NULL),
(167, 'Dolor aut laborum vitae.', 'Aliquid minima eaque expedita aspernatur. Et laboriosam quas ut nisi.', '2.pdf', 2, 4, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(168, 'Et cum eos autem.', 'Eaque quidem debitis et mollitia soluta. Ipsa est dolorem earum illum.', '11.pdf', 3, 1, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(169, 'Aut animi soluta in quo.', 'Similique quia hic et veniam. Est vero qui velit placeat. Molestiae itaque et et non est dolorem.', '9.pdf', 3, 2, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(170, 'Ab ut inventore qui.', 'Nihil ut voluptatem quis in. Qui fugiat atque quisquam in facere.', '11.pdf', 3, 4, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(171, 'Nulla ad expedita qui.', 'Mollitia a rerum soluta. Dolor et magni et est eum quis. Eaque expedita eius ipsa aut natus.', '7.pdf', 3, 3, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(172, 'Odio nemo omnis quia.', 'Ipsam ullam ex facilis ut molestiae. Eveniet vero qui est sint. Amet modi ut fuga eos.', '3.pdf', 3, 4, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(173, 'At in est ut enim.', 'Sint quo et voluptate ea itaque quia cum. Amet error qui ut.', '6.pdf', 1, 1, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(174, 'Eligendi et totam qui.', 'Ad cum qui et distinctio maiores. Accusantium quo dolor voluptatibus nisi totam quae et et.', '2.pdf', 3, 3, 1, '2025-06-24 17:19:38', '2025-06-24 17:19:38', NULL),
(175, 'Non nihil velit vitae.', 'Sed culpa aperiam non at aut. Aperiam et voluptas maxime magni et enim qui.', '4.pdf', 2, 4, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(176, 'Excepturi alias quo et.', 'In eos error dolores. Alias repudiandae dolorum quas soluta sint sunt maxime.', '2.pdf', 1, 4, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(177, 'Impedit ut cumque sit.', 'Ipsa reiciendis laboriosam aut nam quod. Rem sint accusamus consequuntur voluptas officiis.', '7.pdf', 3, 4, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(178, 'Libero et nulla sed.', 'Quibusdam in est repellat. Voluptatibus est molestias consectetur qui.', '2.pdf', 3, 1, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(179, 'Tenetur hic error quos.', 'Eos ipsum qui sint et totam ut. Non aut rerum fugit in iure. Quos incidunt velit totam.', '5.pdf', 3, 1, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(180, 'Ratione quia optio quam.', 'Qui odit voluptatibus dolores reprehenderit non. Dolorem dicta expedita dolor.', '11.pdf', 3, 4, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(181, 'Est consequatur ut ut.', 'Nihil sint vero tempore. Voluptas molestiae dolorum rerum et delectus necessitatibus ullam.', '5.pdf', 3, 3, 1, '2025-06-24 17:19:39', '2025-06-24 17:19:39', NULL),
(182, 'Quia aut id est et.', 'Sint earum itaque in est animi qui. Accusantium et libero ab saepe pariatur amet velit ipsa.', '1.pdf', 1, 3, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(183, 'Quidem sint ipsa at.', 'Aspernatur nulla neque quam voluptas. At facere reprehenderit ipsum.', '7.pdf', 3, 4, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(184, 'Quos est earum dolores.', 'Atque quas non ut rerum autem expedita laborum. Aut ab ut cum incidunt molestiae eum.', '2.pdf', 1, 3, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(185, 'Cum sint enim soluta ut.', 'Velit et excepturi rerum saepe commodi quaerat sunt. Impedit qui nemo dolor dignissimos.', '6.pdf', 2, 1, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(186, 'Quod et voluptas et eum.', 'Omnis eos veniam ratione. Sequi natus doloribus ipsa dignissimos velit. Nihil ratione vel placeat.', '2.pdf', 3, 4, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(187, 'Et iusto qui non ut.', 'In id sequi quos ut. Non quisquam consequatur aspernatur laborum. Et quod nulla voluptatibus et.', '5.pdf', 3, 2, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(188, 'Sed magnam et odio.', 'Amet delectus quia ut ut ullam hic. Qui et nam autem et voluptatem repudiandae.', '9.pdf', 3, 4, 1, '2025-06-24 17:19:40', '2025-06-24 17:19:40', NULL),
(189, 'Quo quia quis similique.', 'Assumenda rerum quo qui. Architecto debitis tenetur aut in.', '11.pdf', 2, 1, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(190, 'Quia a doloribus sit.', 'Labore qui velit rerum ut voluptas rem. Error inventore nulla est.', '1.pdf', 2, 2, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(191, 'Dicta et tempora cum.', 'Et rerum aut et tempora. Odit doloribus voluptas veniam harum culpa facilis provident.', '2.pdf', 1, 1, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(192, 'Eos deserunt dolor iste.', 'Quisquam nostrum illum qui quae voluptatibus. Beatae eum et iusto.', '10.pdf', 3, 3, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(193, 'Odio et ullam ipsa non.', 'Dolorum est quisquam veritatis est ipsam. Ut adipisci at exercitationem culpa molestiae.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(194, 'Nisi nemo aliquam sit.', 'Ullam est voluptatem in. Voluptatibus quidem eveniet amet. Animi incidunt autem sed aut quibusdam.', '9.pdf', 1, 3, 1, '2025-06-24 17:19:41', '2025-06-24 17:19:41', NULL),
(195, 'Et explicabo ratione ut.', 'Accusamus ad quas ad et incidunt sit. Dolor incidunt dolor facilis quia est reiciendis animi.', '11.pdf', 1, 4, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(196, 'Itaque vel quam sed.', 'Et quam laudantium corporis ab. Eius exercitationem blanditiis fugiat voluptatem unde et voluptas.', '7.pdf', 3, 2, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(197, 'Et rem amet nesciunt.', 'Est tenetur iusto doloribus eum et dolorum odio itaque. Voluptatem qui temporibus corporis ipsa.', '5.pdf', 2, 4, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(198, 'Cum et iste voluptatem.', 'Qui dolor itaque omnis et. Quo sint minus et alias iusto ut consectetur.', '6.pdf', 1, 1, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(199, 'Beatae aut rerum qui.', 'Unde error eligendi rerum. Maiores qui totam qui odit aperiam. Optio placeat autem ex sit.', '10.pdf', 1, 4, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(200, 'Quis facilis amet aut.', 'Enim excepturi dolore repellat est. Pariatur ut aut nisi. Perferendis nihil qui laboriosam et.', '2.pdf', 1, 4, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(201, 'Et rem sunt quisquam.', 'Perferendis sapiente repellat qui. Rerum sit fugit vel in deserunt.', '8.pdf', 2, 2, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(202, 'Vel porro et velit.', 'Qui magni ab ea. Omnis voluptatem ex sunt ab eum. Aut rerum totam cupiditate.', '3.pdf', 1, 1, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(203, 'Iste et error autem id.', 'Quo enim hic nihil dignissimos qui natus. Rerum repellat et nihil possimus.', '6.pdf', 2, 4, 1, '2025-06-24 17:19:42', '2025-06-24 17:19:42', NULL),
(204, 'Culpa sunt sit sunt qui.', 'Enim nulla quas et molestiae et. Commodi ut ipsam distinctio hic id in similique.', '11.pdf', 1, 2, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(205, 'Quo quos nam ab sint.', 'Autem autem nulla alias unde. Qui eum enim ipsa pariatur saepe. Ut consequatur culpa aut vel.', '5.pdf', 2, 4, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(206, 'Nihil velit enim ex.', 'Pariatur et rem accusantium maxime rem. Et atque atque architecto quasi ab.', '10.pdf', 2, 3, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(207, 'Ut fugit est sunt.', 'Ea voluptatem repellendus qui non enim. Ea vel voluptas voluptatibus voluptates quo.', '1.pdf', 2, 4, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(208, 'Quas et accusamus et.', 'Eaque fugiat id ullam. Id ut et architecto autem. Eos ipsum vero vel quia nam voluptatem et.', '11.pdf', 2, 2, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(209, 'Et velit nam eum fuga.', 'Ut voluptates non nihil nesciunt. Sapiente voluptas impedit eius.', '4.pdf', 1, 4, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(210, 'Debitis dolore sed odio.', 'Autem consequatur ipsa voluptates magni. Et enim molestias velit rerum aut inventore.', '11.pdf', 3, 3, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(211, 'Eum libero ut maiores.', 'At id omnis occaecati rerum odit debitis provident. Tempore quia impedit amet.', '1.pdf', 3, 3, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(212, 'Et ratione sapiente ut.', 'Eius ut dicta aliquam est id aut omnis. Ipsa voluptatem hic libero dignissimos quibusdam quia illo.', '10.pdf', 2, 3, 1, '2025-06-24 17:19:43', '2025-06-24 17:19:43', NULL),
(213, 'Et et quam ut sed hic.', 'Aspernatur vitae iusto facilis nam. Consequuntur ut iure praesentium nisi velit non facere.', '3.pdf', 1, 1, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(214, 'Ex vel autem magni ex.', 'Voluptatem rerum provident repellat sit iusto. Beatae voluptatem expedita deserunt est sit.', '2.pdf', 2, 3, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(215, 'Quia non qui quae.', 'Sit amet repellat veniam aut. Est veniam aut voluptatem omnis ex.', '7.pdf', 3, 2, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(216, 'Et perspiciatis qui in.', 'Incidunt sed ut qui incidunt sunt dolore quos. Provident quis facilis adipisci unde qui est eos.', '11.pdf', 2, 3, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(217, 'Aut quod earum sint non.', 'Quisquam itaque aperiam sequi possimus et accusamus earum. Esse non aut ipsam architecto est.', '8.pdf', 1, 1, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(218, 'Nihil aut est rem ex.', 'Sed et enim non ipsum molestias nemo. Est atque aut velit voluptas ab voluptatem.', '4.pdf', 1, 2, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(219, 'Quia dolores id vel.', 'Sit nulla labore dolor qui beatae officia cumque. Voluptates et optio enim porro labore.', '1.pdf', 1, 2, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(220, 'Eveniet ut sed aut est.', 'Asperiores est aut incidunt voluptas. Maiores maiores officiis tenetur qui.', '7.pdf', 2, 2, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(221, 'Ex qui iste error.', 'Voluptate eos doloribus itaque enim. Sed labore fuga accusantium eaque.', '11.pdf', 3, 4, 1, '2025-06-24 17:19:44', '2025-06-24 17:19:44', NULL),
(222, 'Dolorem est optio nihil.', 'Sunt ipsa ut cumque impedit velit repellat. Et cumque laboriosam et voluptas commodi quos.', '6.pdf', 1, 4, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(223, 'Totam vero ea qui ea.', 'Esse velit qui sint ipsum. Nisi rerum nisi ducimus eum. Est ut nam est amet eos maxime.', '3.pdf', 1, 3, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(224, 'Vitae ea id eos.', 'Esse eum et blanditiis et. Harum aut sed libero at quo libero. Quis minima voluptatem magni minima.', '11.pdf', 2, 4, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(225, 'Fuga autem aut qui rem.', 'Exercitationem ut corrupti dolorem quo est. Hic cum rem sint aut.', '11.pdf', 2, 3, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(226, 'Omnis possimus hic ut.', 'Harum ad aut magnam a nulla ut. Et velit magnam soluta reiciendis quo optio iste.', '11.pdf', 1, 2, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(227, 'Porro ut expedita nihil.', 'Est accusamus consequatur in repellat. Nihil exercitationem repudiandae esse nam.', '1.pdf', 3, 2, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(228, 'Quia libero et ipsa.', 'Voluptatem accusantium eos eligendi eos iusto corrupti. Unde omnis qui non illum dolores unde qui.', '10.pdf', 1, 2, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(229, 'Illo ut quis porro vel.', 'Cum facilis voluptas fugiat et. Ipsum est quibusdam ducimus quas et ea fuga.', '7.pdf', 2, 1, 1, '2025-06-24 17:19:45', '2025-06-24 17:19:45', NULL),
(230, 'Aut tenetur qui aperiam.', 'Ea nobis quasi et inventore ab qui quae et. Consectetur debitis est temporibus dolorem ad non ad.', '7.pdf', 1, 1, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(231, 'Quidem et enim aut quo.', 'Ea et eum aut autem. Cumque voluptatem quia aut qui aut laboriosam rem.', '10.pdf', 2, 4, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(232, 'Veniam maxime et ab sed.', 'Vel consectetur sapiente mollitia vitae. Aut culpa ducimus quia at et magni.', '11.pdf', 3, 1, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(233, 'Sunt aut eius facere et.', 'Quaerat dolorem explicabo et qui. Delectus et dolorum minima in deserunt pariatur dicta voluptatum.', '7.pdf', 3, 4, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(234, 'Qui sit aut culpa quasi.', 'Tempore voluptatem tenetur sunt adipisci quod esse reiciendis quia. Sint qui ducimus magnam qui.', '1.pdf', 2, 3, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(235, 'Et rem ut quae voluptas.', 'Id consequatur amet optio vero. Maxime reiciendis aut nihil doloremque dolorum et.', '1.pdf', 3, 1, 1, '2025-06-24 17:19:46', '2025-06-24 17:19:46', NULL),
(236, 'Est illo natus nemo.', 'Commodi eos molestias distinctio facere. Et natus cum non ut enim ut quis.', '1.pdf', 3, 2, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(237, 'Voluptatem et sit id.', 'Et quae sed ut qui maxime. Et vel voluptatum et sed. Quaerat omnis aut nulla ut nihil.', '5.pdf', 1, 1, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(238, 'Odio atque vel non qui.', 'Hic praesentium repudiandae doloribus quo alias molestiae. Debitis inventore est non qui.', '10.pdf', 2, 3, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(239, 'Ut et cupiditate minima.', 'Tempore aut veritatis quisquam. Et illum quo eligendi aliquam odio omnis.', '6.pdf', 3, 3, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(240, 'In et quam iste quia a.', 'Eaque tempore minima est ea. Facere rerum quia occaecati. Eius fugit et nobis.', '6.pdf', 1, 2, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(241, 'Aut labore amet non hic.', 'Incidunt ad rerum nihil. Eveniet enim nihil dolor nihil aliquam. Dignissimos dolores id ab tempore.', '10.pdf', 2, 3, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(242, 'Ab aut et quia magni.', 'Doloribus vel animi illum error. Error eum dolorem consequatur.', '4.pdf', 2, 3, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(243, 'Iure explicabo in ut.', 'Maxime aut et quae libero. Cum sed exercitationem qui. Omnis repellendus beatae qui iste.', '11.pdf', 1, 1, 1, '2025-06-24 17:19:47', '2025-06-24 17:19:47', NULL),
(244, 'Et dicta velit sunt non.', 'Et beatae eveniet quibusdam adipisci. Cumque consequatur eveniet ea accusamus eum.', '11.pdf', 2, 3, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(245, 'Dolore sequi aut est.', 'Tenetur culpa laboriosam aut et. Possimus aut non animi suscipit quod fugit inventore.', '1.pdf', 2, 1, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(246, 'Vero qui aut tempora et.', 'Eaque reiciendis nihil quidem rerum sit commodi eius. Modi libero fuga optio.', '6.pdf', 1, 1, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(247, 'Eos autem nemo modi.', 'Nemo sint illum qui qui in quam. Deserunt non dolorum iste porro facere ullam ab.', '4.pdf', 1, 4, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(248, 'Ex hic consectetur non.', 'Quo sit nobis deleniti quia quia repellat corrupti ut. Mollitia repudiandae non earum voluptates.', '6.pdf', 3, 3, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(249, 'Est beatae ea magnam.', 'Vero placeat doloremque esse id at. Sunt et non perferendis magni tempora nam.', '4.pdf', 1, 2, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL),
(250, 'Minus porro ut eum in.', 'Molestiae ullam id eum voluptates. Et qui facere ducimus rerum.', '1.pdf', 1, 4, 1, '2025-06-24 17:19:48', '2025-06-24 17:19:48', NULL);

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
(4, '2025_06_25_000001_create_types_table', 2),
(5, '2025_06_25_000002_create_categories_table', 2),
(6, '2025_06_25_000003_create_documents_table', 2);

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
('qviBe0QXTMBjHxqRo3uLqtqfQsFaqWmZDAAiTFgo', 1, '10.24.254.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM25Na1JLaVhyTVpiQTlqQk5waEtaY3VrM0hnZ1lVYVVnS05vdzFFdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMC4yNC4yNTQuMTYwOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDB1QkJpOTRpUkt5UHJEMTd6STAuMC42d1BYYnQ4NDNLL2FWeFBJRmJ3VFFuWi5kMVdxWTBPIjt9', 1750784802);

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
-- AUTO_INCREMENT de la tabla `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
