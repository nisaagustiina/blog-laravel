-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 11:18 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `keywords`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'web-development', 'web development, ngoding web', 'web development', '2022-02-17 19:31:29', '2022-02-17 19:31:29'),
(2, 'Web Design', 'web-design', 'web design, design', 'web design 123', '2022-02-17 19:31:56', '2022-02-17 19:33:47'),
(3, 'Desktop Development', 'desktop-development', 'desktop, development', 'desktop', '2022-02-17 21:41:02', '2022-02-17 21:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_17_031929_create_categories_table', 1),
(6, '2022_02_17_044423_create_tags_table', 1),
(7, '2022_02_17_050514_create_posts_table', 1),
(8, '2022_02_17_051039_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `cover`, `title`, `slug`, `desc`, `keywords`, `meta_desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'images/blog/VqEYtpFq49J7mmU7YUs2Msy4AZAjp5adx2FhtaXL.jpg', 'Non dolorem provident.', 'eos-commodi-excepturi-aliquam-odit', 'Blanditiis dolores aut amet architecto sed. Iure esse consequatur earum voluptas. Vitae enim aliquid consequatur praesentium fugit sit. Dolores nisi illo inventore et ut exercitationem. Ut pariatur temporibus voluptas non enim. Sed eum omnis minus doloremque soluta. Quia dignissimos praesentium ut aliquam est sed ut.', 'quia', 'Blanditiis dolores aut amet architecto sed. Iure esse consequatur earum voluptas.', '2022-02-17 19:35:32', '2022-02-17 21:19:14', NULL),
(2, 1, 1, 'images/blog/EjgiNCIdoEsSZA7NQxk1CZUVItpzYVsXKUerBdXO.jpg', 'Aut ullam.', 'voluptatum-aut-unde-qui-rerum-sequi-corrupti', 'At magnam harum quia laboriosam et consequatur. Omnis ipsum aut quis eos similique. Occaecati quis praesentium accusamus rem facere.Dolor voluptatum qui ut quod provident accusantium recusandae. Et quo eum expedita labore. Corporis iste non consectetur beatae repellat. Ut vel necessitatibus minima voluptatum aspernatur in. Dolores maiores quisquam et corporis deleniti est. Et nemo hic est ea voluptates assumenda culpa. Odio eaque non et veritatis qui saepe blanditiis. Quas eum nisi necessitatibus natus ipsum. Omnis architecto laborum eius accusantium sequi rerum. Error dolores ducimus deleniti consequatur autem quisquam iusto.', 'aut', 'At magnam harum quia laboriosam et consequatur. Omnis ipsum aut quis eos similique. Occaecati quis praesentium accusamus rem facere', '2022-02-17 19:35:32', '2022-02-17 21:19:59', NULL),
(3, 2, 1, 'images/blog/nvcwnDKwWxNf8UHPFoUtSFlj8j9fJA5jSVwLJUtb.jpg', 'Doloribus facilis amet maxime qui sapiente similique illum nemo dolores.', 'accusamus-et-aliquam-eveniet-enim-cumque-similique-et', 'Molestiae sed et dolorum et occaecati. Dolorum incidunt pariatur nihil dolorum. Modi totam nemo enim quae earum omnis qui expedita. Accusamus qui laudantium quasi eveniet. Maxime hic dignissimos architecto alias. Nesciunt ipsum libero consectetur consequuntur quas nihil. Cumque eum tenetur et ut asperiores aliquid. Et ab nobis ratione quaerat est. Dignissimos veritatis ipsa illum velit modi ut atque. Sed molestiae ut quo facere.', 'animi', 'Accusamus qui laudantium quasi eveniet. Maxime hic dignissimos architecto alias.', '2022-02-17 19:35:32', '2022-02-17 21:22:51', NULL),
(4, 2, 1, 'images/blog/rSNP65AKLH0ceMI2QJtmNeToYLrNNoiENFTZi3u1.jpg', 'Iste laboriosam occaecati incidunt.', 'ab-laborum-commodi-reprehenderit-quisquam', 'Id dolore architecto qui cupiditate. Dolorum quam qui et impedit necessitatibus totam. Eaque voluptas fuga omnis eius doloribus. Repudiandae nihil accusamus expedita amet officia esse. Quia sint nulla pariatur corrupti eum delectus voluptatem excepturi. Commodi autem quibusdam dolor quia sint. Delectus omnis sed neque aut neque aut dolor est. Ab reprehenderit perspiciatis voluptatem corporis aut recusandae. Nam dolor aspernatur veritatis ducimus rerum placeat. Molestias distinctio in tempora ut qui quia numquam. Et voluptas ea sed maxime. Explicabo quo praesentium at enim. Mollitia aliquam eligendi repellat est.Repudiandae nihil accusamus expedita amet officia esse. Quia sint nulla pariatur corrupti eum delectus voluptatem excepturi. Commodi autem quibusdam dolor quia sint. Delectus omnis sed neque aut neque aut dolor est. Ab reprehenderit perspiciatis voluptatem corporis aut recusandae. Nam dolor aspernatur veritatis ducimus rerum placeat. Molestias distinctio in tempora ut qui quia numquam. Et voluptas ea sed maxime. Explicabo quo praesentium at enim. Mollitia aliquam eligendi repellat est.', 'velit', 'Repudiandae nihil accusamus expedita amet officia esse.', '2022-02-17 19:35:32', '2022-02-17 22:21:55', '2022-02-17 22:21:55'),
(5, 1, 1, 'images/blog/wBTemBM3zlE2QuCn9fSVxonPZ0Ybf6ojAbICSTo6.jpg', 'Tempore aut est non ut.', 'distinctio-tempore-omnis-saepe', 'Eum temporibus animi beatae et impedit modi laborum. Et vero voluptatem dolorem quam saepe. Officiis atque ut rerum quis saepe est quod. Molestias sequi molestiae quia deleniti qui.Rem est fugiat voluptatem repellendus quod. Quod eveniet nostrum est. Fugit repudiandae quibusdam qui quia ea. Et unde sed ex explicabo neque. Eum temporibus animi beatae et impedit modi laborum. Et vero voluptatem dolorem quam saepe. Officiis atque ut rerum quis saepe est quod. Molestias sequi molestiae quia deleniti qui.Rem est fugiat voluptatem repellendus quod. Quod eveniet nostrum est. Fugit repudiandae quibusdam qui quia ea. Et unde sed ex explicabo neque.Eum temporibus animi beatae et impedit modi laborum. Et vero voluptatem dolorem quam saepe. Officiis atque ut rerum quis saepe est quod. Molestias sequi molestiae quia deleniti qui.Rem est fugiat voluptatem repellendus quod. Quod eveniet nostrum est. Fugit repudiandae quibusdam qui quia ea. Et unde sed ex explicabo neque.Eum temporibus animi beatae et impedit modi laborum. Et vero voluptatem dolorem quam saepe. Officiis atque ut rerum quis saepe est quod. Molestias sequi molestiae quia deleniti qui.Rem est fugiat voluptatem repellendus quod. Quod eveniet nostrum est. Fugit repudiandae quibusdam qui quia ea. Et unde sed ex explicabo neque.', 'ea', 'Rem est fugiat voluptatem repellendus quod. Quod eveniet nostrum est. Fugit repudiandae quibusdam qui quia ea. Et unde sed ex explicabo neque.', '2022-02-17 19:35:32', '2022-02-17 21:23:52', NULL),
(6, 1, 1, 'images/blog/iPKDQhwhYpk5yGVsh85I4yJsc4IJ2XtEVN5RiOlS.jpg', 'Enim quis aut.', 'ut-aut-veniam-dolore-alias-impedit', 'Velit possimus blanditiis nulla. Amet explicabo adipisci perferendis sed corporis in. Est ducimus doloremque aut qui incidunt est. Ipsum quibusdam minus ut qui. Ab eum qui aliquam atque fugiat. Dolorem nisi minima magnam officiis. Libero beatae laboriosam sed vel ducimus consequatur.', 'eos', 'Ducimus omnis voluptatum accusamus sit. Quasi libero accusamus doloremque quod aut. Consequatur quia voluptate eligendi animi tempore rem. Officia unde amet qui.', '2022-02-17 19:40:49', '2022-02-17 21:26:03', NULL),
(10, 2, 1, 'images/blog/A1UgOz2Te9SDW10f3WBKLqfBrg0c7N97NwSj86PT.jpg', 'Ad odio id asperiores.', 'nesciunt-fugiat-enim-possimus-repellendus-soluta-nihil-magnam', 'Voluptatem quam hic deserunt quia. A quia ratione ducimus pariatur itaque. Veritatis voluptatem voluptatem facere natus itaque. Voluptatem culpa iste placeat numquam id iste cupiditate. Temporibus dolore quisquam ullam eveniet. Impedit nihil rerum explicabo id omnis inventore. Veritatis dolor ullam eligendi aspernatur esse tenetur. Facere voluptas molestiae voluptas molestias. Et iusto voluptas illum.', 'architecto', 'Magni quod officiis eos dolor. Rerum voluptates dolore consequuntur rerum voluptatem blanditiis. Qui veniam rem porro laboriosam iste nostrum. Sequi sunt magnam temporibus voluptate.', '2022-02-17 19:40:49', '2022-02-17 21:44:08', NULL),
(11, 1, 1, 'images/blog/cEJmnisiepDt36v7R1BmiXzOcs7RR7Hv1egmbDQf.jpg', 'Membuat CRUD PHP dengan Mysql dan Bootstrap', 'membuat-crud-php-dengan-mysql-dan-bootstrap', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'php, crud', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum', '2022-02-17 19:45:18', '2022-02-17 21:26:40', NULL),
(13, 1, 1, 'images/blog/3TywoPufjs8CrtFzyoWPmlQE2zvxs8Ou7k8JgGJP.jpg', 'Quod natus aut repudiandae.', 'aut-perferendis-qui-molestiae', 'Voluptate soluta ut ut provident officiis magni numquam. Voluptatem voluptatem dolorem enim omnis. Quia atque earum quo. Qui eaque aut qui quo. Voluptatem ut id temporibus ea veritatis et sunt. Vitae nobis voluptas harum repudiandae. Rerum possimus molestiae et autem nemo officiis voluptatum. Exercitationem placeat quo possimus vel fuga. Qui non debitis hic voluptas.', 'maxime', 'Accusamus expedita possimus qui repellat. Exercitationem iusto sed qui. Assumenda reiciendis sit at vero perspiciatis.', '2022-02-17 22:16:28', '2022-02-17 22:18:59', NULL),
(14, 3, 1, 'images/blog/tGXqdjpIaQqudreIPWTdQ9LA5EKzsDi6PWam3Mbv.jpg', 'Voluptas libero consectetur ab.', 'voluptatem-maiores-qui-maiores', 'Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.Voluptatem quia ea fugit. Officiis vel ut et quod deleniti. Voluptate dolorem a velit tenetur eius. Harum sunt id officiis earum sed tempore. Voluptas animi autem eos. Rem dolores dolor eaque. Beatae harum ut dolorem vero inventore sequi. Iure officia voluptatibus rerum.', 'laboriosam', 'Eligendi reiciendis inventore voluptatem quia repellat voluptatem omnis. Optio maiores vitae voluptas animi impedit. Eum cupiditate voluptates dolorumuga adipisci harum at. Deserunt aut aliquam architecto facere tempore amet autem animi.', '2022-02-17 22:16:29', '2022-02-17 22:24:18', NULL),
(15, 2, 1, 'images/blog/4cpBZvgxkHQmrCfmZUac7kQcIzw8vJP3O6vQChBa.png', 'Et consectetur omnis quis sit.', 'corrupti-omnis-sit-quia-porro-et-id-ipsum', 'Dolores molestias aut vel iste neque aut. Ut consequatur est ut et qui. Amet suscipit laborum non et est. Possimus perspiciatis accusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.Dolores molestias aut vel iste neque aut. Ut consequatur est ut et qui. Amet suscipit laborum non et est. Possimus perspiciatis accusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.Dolores molestias aut vel iste neque aut. Ut consequatur est ut et qui. Amet suscipit laborum non et est. Possimus perspiciatis accusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.Dolores molestias aut vel iste neque aut. Ut consequatur est ut et qui. Amet suscipit laborum non et est. Possimus perspiciatis accusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.Dolores molestias aut vel iste neque aut. Ut consequatur est ut et qui. Amet suscipit laborum non et est. Possimus perspiciatis accusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.', 'voluptate', 'Dolorem molestias impedit tenetur eveniet quia qui nesciunt. At et repellendus praesentium quis debitis molestiae nostrum. ccusamus veniam nihil quaerat repellendus animi. Ipsa dignissimos est voluptates perferendis.', '2022-02-17 22:16:29', '2022-02-17 22:26:57', NULL),
(16, 2, 1, 'images/blog/h5SwHYRamVxDGNZUxjlMEyZgmHDMJV8UiAyT1A9V.jpg', 'Provident quis eum.', 'suscipit-est-magnam-dolor-corporis-unde-rem', 'Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.Maiores blanditiis enim aliquid quos. Est nam reprehenderit earum quia molestiae. Vitae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.', 'vel', 'Enim recusandae sint necessitatibus optio et sint. Ea rerum accusamus nam in voluptas laborum. Optio voluptate autem animi suscipit optio ducimus ad.itae repudiandae ut placeat similique aut quaerat distinctio similique. Aspernatur cupiditate beatae qui voluptate sed quibusdam. Dolore eum ad earum omnis doloremque reiciendis et.', '2022-02-17 22:16:29', '2022-02-17 22:25:11', NULL),
(17, 3, 1, 'images/blog/96My5KQKpEvueOcWpN9MWtXSCk309YzdF8kdYTae.png', 'Eveniet debitis ullam deleniti eveniet consequatur amet qui.', 'tenetur-adipisci-suscipit-illo-aut', 'Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.Est sunt delectus voluptas possimus velit. Quia sit aut voluptas. Perferendis voluptatem asperiores voluptas distinctio omnis quaerat dolorem. Id vel vero voluptatem quae. Perspiciatis quaerat omnis porro. Iusto laboriosam libero a ex. Ipsa fugiat quod sed delectus delectus sit voluptatem quasi. Quis incidunt vel laboriosam omnis autem aut veritatis minus.', 'commodi', 'Est itaque molestias fugit et sint modi. Ut et rerum quas eos qui exercitationem est amet. Error quod ad esse aliquid architecto aliquid a. Ipsum cum omnis perferendis at. Officia praesentium ex assumenda aut.', '2022-02-17 22:16:29', '2022-02-17 22:25:27', NULL),
(18, 1, 1, 'C:\\Users\\icha\\AppData\\Local\\Temp\\0caeee701aadb378b29193b2d2eeea7e.png', 'Esse qui nobis.', 'ipsa-vel-molestiae-mollitia-quia-beatae-voluptatem-eos', 'Voluptatem quis quisquam occaecati qui magnam pariatur accusantium. Voluptatem nulla ut distinctio eveniet nisi quas ad. Optio sed tempore aut minima est repellendus. Amet in vel dolorum aut.', 'quae', 'Tenetur natus velit ullam et soluta. Cupiditate sed placeat quibusdam laborum commodi. Consequatur cumque labore ab reiciendis magni aliquid sit.', '2022-02-18 03:13:20', '2022-02-18 03:16:57', '2022-02-18 03:16:57'),
(19, 1, 1, 'images/blog/lkRnzsv0BUkSjwOeJ82sKU7L6kcezi3ZTqd1z2DH.jpg', 'Quaerat totam odit voluptatem perspiciatis consectetur magnam.', 'neque-dolorem-non-provident', 'Sed velit non autem velit recusandae. Eos laudantium voluptas dolores sunt minus fuga eos. Libero velit aperiam excepturi quasi omnis autem. Et molestiae dolores quisquam fuga animi. Officiis placeat ab dolorem reprehenderit quis explicabo eaque corporis. Facilis et pariatur excepturi temporibus natus. Animi ut et fuga nulla. Eos neque numquam illum deserunt nulla suscipit voluptatum. Nesciunt aliquam maiores ipsam quisquam. Enim voluptates quaerat aspernatur suscipit vitae accusamus sed.', 'modi', 'Culpa et explicabo dolore officia velit consequuntur. Eum cumque cum blanditiis fugiat modi atque. Id nihil et id aliquam eum incidunt.', '2022-02-18 03:13:20', '2022-02-18 03:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 11, 1, NULL, NULL),
(3, 11, 2, NULL, NULL),
(4, 11, 3, NULL, NULL),
(5, 11, 5, NULL, NULL),
(6, 11, 6, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 3, 7, NULL, NULL),
(9, 4, 8, NULL, NULL),
(10, 5, 3, NULL, NULL),
(11, 5, 5, NULL, NULL),
(12, 5, 6, NULL, NULL),
(13, 10, 7, NULL, NULL),
(14, 6, 2, NULL, NULL),
(15, 13, 1, NULL, NULL),
(16, 14, 10, NULL, NULL),
(17, 15, 8, NULL, NULL),
(18, 16, 8, NULL, NULL),
(19, 17, 11, NULL, NULL),
(20, 19, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `keywords`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'php', 'php', 'php', '2022-02-17 19:29:28', '2022-02-17 19:29:28'),
(2, 'Mysql', 'mysql', 'mysql', 'mysql', '2022-02-17 19:29:41', '2022-02-17 19:29:47'),
(3, 'Javascript', 'javascript', 'js, javascript', 'js', '2022-02-17 19:30:06', '2022-02-17 19:30:06'),
(5, 'HTML', 'html', 'html, html 5', 'html', '2022-02-17 19:30:41', '2022-02-17 19:30:41'),
(6, 'CSS', 'css', 'css', 'css', '2022-02-17 19:30:51', '2022-02-17 19:30:51'),
(7, 'Figma', 'figma', 'figma', 'figma', NULL, '2022-02-17 21:39:57'),
(8, 'Adobe Photoshop', 'adobe-photoshop', 'adobe photoshop', 'adobe photoshop', NULL, '2022-02-17 21:39:36'),
(9, 'Canva', 'canva', 'canva', 'canva', '2022-02-17 21:39:22', '2022-02-17 21:39:22'),
(10, 'c++', 'c++', 'c++', 'c++', NULL, NULL),
(11, 'java', 'java', 'java\r\n', 'java', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nisa', 'admin@gmail.com', NULL, '$2y$10$ElJF7k7Y8Z9R32iFy6DljOj9HKX.Ix2q02OJ7OASqCqVjGGwkjl4y', NULL, '2022-02-17 19:29:14', '2022-02-17 19:29:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
