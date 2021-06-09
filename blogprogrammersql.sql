-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 09-Jun-2021 às 00:53
-- Versão do servidor: 5.7.29
-- versão do PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `homestead`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `author_id`, `post_id`, `content`, `posted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Este é um exemplo de comentário :D', '2021-06-09 02:53:13', '2021-06-09 02:53:13', '2021-06-09 02:53:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likeable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `posted_at` datetime NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `media_libraries`
--

CREATE TABLE `media_libraries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `media_libraries`
--

INSERT INTO `media_libraries` (`id`, `created_at`, `updated_at`) VALUES
(1, '2021-06-09 02:53:13', '2021-06-09 02:53:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_08_08_100000_create_telescope_entries_table', 1),
(2, '2021_03_22_001042_create_users_table', 1),
(3, '2021_03_22_001043_create_password_resets_table', 1),
(4, '2021_03_22_001044_create_posts_table', 1),
(5, '2021_03_22_001045_create_comments_table', 1),
(6, '2021_03_22_001046_create_newsletter_subscriptions_table', 1),
(7, '2021_03_22_001047_create_jobs_table', 1),
(8, '2021_03_22_001048_add_provider_and_provider_id_to_users', 1),
(9, '2021_03_22_001049_update_email_and_password_to_nullable_to_users', 1),
(10, '2021_03_22_001050_create_roles_table', 1),
(11, '2021_03_22_001051_add_registered_at_to_users_table', 1),
(12, '2021_03_22_001052_create_media_table', 1),
(13, '2021_03_22_001053_add_thumbnail_id_to_posts_table', 1),
(14, '2021_03_22_001054_add_api_token_to_users_table', 1),
(15, '2021_03_22_001055_add_slug_to_posts', 1),
(16, '2021_03_22_001056_add_index_on_title_to_posts', 1),
(17, '2021_03_22_003340_create_likes_table', 1),
(18, '2021_03_22_214952_drop_media_table', 1),
(19, '2021_03_22_215224_create_media_table_with_media_library', 1),
(20, '2021_03_22_230046_create_media_libraries_table', 1),
(21, '2021_09_05_220100_add_email_verified_at_to_users', 1),
(22, '2021_09_09_000456_create_failed_jobs_table', 1),
(23, '2021_10_06_231328_add_fields_to_media', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter_subscriptions`
--

CREATE TABLE `newsletter_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumbnail_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `content`, `posted_at`, `created_at`, `updated_at`, `thumbnail_id`) VALUES
(1, 1, 'Hello World', 'hello-world', '\n                    Welcome to BlogProgrammer !<br><br>', '2021-06-09 02:53:13', '2021-06-09 02:53:13', '2021-06-09 02:53:13', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'editor', '2021-06-09 02:53:13', '2021-06-09 02:53:13'),
(2, 'admin', '2021-06-09 02:53:13', '2021-06-09 02:53:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-06-09 02:53:13', '2021-06-09 02:53:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '93a111d0-7619-4875-9c6c-55d02374afea', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'homestead\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"9.20\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:58'),
(2, '93a111d0-b0bb-4728-af13-7cbd1f18ed30', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `migrations` (`id` int unsigned not null auto_increment primary key, `migration` varchar(255) not null, `batch` int not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"32.88\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"246242198a8fbc1beb167611385ac644\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(3, '93a111d0-b6b2-4b30-8640-fc901368b2a7', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'homestead\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"14.53\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(4, '93a111d0-b72e-4e4f-841b-f2547545e914', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.55\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(5, '93a111d0-c97b-4448-948a-e75956fe606a', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.79\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(6, '93a111d0-ee00-4229-a292-46871e21500b', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"2.49\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(7, '93a111d1-01be-48b3-a13b-19f4f9a21289', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"23.25\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(8, '93a111d1-0c8d-4099-b17f-76eaaea4c8ee', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"27.31\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(9, '93a111d1-17e0-4894-bf5d-9ba69d6bbc29', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"28.57\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(10, '93a111d1-26c9-4b08-9efa-3ca60101dac4', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"37.60\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(11, '93a111d1-3346-4ae3-ad0b-58526afba6fd', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"31.44\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(12, '93a111d1-3e8a-4740-8303-66dbf668c7fc', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"28.46\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(13, '93a111d1-480b-46b3-a68a-e26cad23e8ea', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.77\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"5ed47d3cfcd3051674e3cb7b613f0fba\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(14, '93a111d1-557b-4e1d-8cc8-f47d58382ebf', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_entry_uuid_tag_index`(`entry_uuid`, `tag`)\",\"time\":\"33.52\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"d77cdf5585b51f60954d40e76786e20f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(15, '93a111d1-5e85-4612-8948-1dc71f269496', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"22.55\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(16, '93a111d1-79a8-4590-b829-3bcf1e4bdea6', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"69.10\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(17, '93a111d1-819b-453b-a3bd-3a4f5c5dc8e8', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"19.92\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"8cddf327ba1b3bd52637b409200a4c1f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(18, '93a111d1-8b09-4918-9e1e-4d997ef0f015', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 1)\",\"time\":\"2.74\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(19, '93a111d1-92bd-430b-8a4a-3698eb715f67', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `users` (`id` int unsigned not null auto_increment primary key, `name` varchar(255) not null, `email` varchar(255) not null, `password` varchar(255) not null, `remember_token` varchar(100) null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"19.09\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001042_create_users_table.php\",\"line\":23,\"hash\":\"550e4f736a4665f1af3d35712864ea8b\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(20, '93a111d1-9b30-412c-b0fb-8ac821e60f7a', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_email_unique`(`email`)\",\"time\":\"21.27\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001042_create_users_table.php\",\"line\":23,\"hash\":\"0648806a3d18c0f5b81e2257de64675e\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(21, '93a111d1-9d09-4cc7-80e1-a39560554d6e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001042_create_users_table\', 1)\",\"time\":\"4.11\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(22, '93a111d1-a85e-43f5-8ad0-dba83d18c5a0', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `password_resets` (`email` varchar(255) not null, `token` varchar(255) not null, `created_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"28.33\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001043_create_password_resets_table.php\",\"line\":20,\"hash\":\"6a64d07661eabf9849c9a4281ec344ad\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(23, '93a111d1-b094-4139-a38a-d1ae6c10704e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `password_resets` add index `password_resets_email_index`(`email`)\",\"time\":\"20.71\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001043_create_password_resets_table.php\",\"line\":20,\"hash\":\"e47bfd004ad9142afc1b2460960fbe08\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(24, '93a111d1-b7a1-4246-b857-0a99a0e16fec', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `password_resets` add index `password_resets_token_index`(`token`)\",\"time\":\"17.62\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001043_create_password_resets_table.php\",\"line\":20,\"hash\":\"0c7ffc372df7e65c94ef7971c938ff57\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(25, '93a111d1-b9a8-49c6-8bce-66c7dfe2826e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001043_create_password_resets_table\', 1)\",\"time\":\"4.73\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(26, '93a111d1-c135-4763-92a6-21158ab40faf', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `posts` (`id` int unsigned not null auto_increment primary key, `author_id` int unsigned not null default \'0\', `title` varchar(255) not null, `content` text not null, `posted_at` datetime not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.41\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001044_create_posts_table.php\",\"line\":24,\"hash\":\"70f4f34fc3450b674ad714be4d58854a\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(27, '93a111d1-db12-434d-8b99-c0878ba201e8', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add constraint `posts_author_id_foreign` foreign key (`author_id`) references `users` (`id`) on delete cascade\",\"time\":\"65.90\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001044_create_posts_table.php\",\"line\":24,\"hash\":\"30b82e9d4ca550ba3fe438fa57c1ed1d\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(28, '93a111d1-dbfb-4d85-bfff-a7988ca0073c', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001044_create_posts_table\', 1)\",\"time\":\"1.95\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(29, '93a111d1-e177-4b46-afec-a679ba561fb2', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `comments` (`id` int unsigned not null auto_increment primary key, `author_id` int unsigned not null default \'0\', `post_id` int unsigned not null, `content` text not null, `posted_at` datetime not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"13.55\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001045_create_comments_table.php\",\"line\":28,\"hash\":\"ebb5220ec92eade4068f8f4a5cba1ae7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(30, '93a111d1-fc2c-4adf-a361-4825a3e7a39e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `comments` add constraint `comments_author_id_foreign` foreign key (`author_id`) references `users` (`id`) on delete cascade\",\"time\":\"68.11\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001045_create_comments_table.php\",\"line\":28,\"hash\":\"e5dddbbeb08df6f8e00b07ea178d2722\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(31, '93a111d2-0cb9-408e-a3ec-a432f3d8b41e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `comments` add constraint `comments_post_id_foreign` foreign key (`post_id`) references `posts` (`id`) on delete cascade\",\"time\":\"42.08\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001045_create_comments_table.php\",\"line\":28,\"hash\":\"be35f057bcbdd791b6deab364b3ac06f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(32, '93a111d2-0d80-45b3-812b-db738cf4cd0b', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001045_create_comments_table\', 1)\",\"time\":\"1.65\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(33, '93a111d2-1626-4908-a91f-ca84269b017c', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `newsletter_subscriptions` (`id` int unsigned not null auto_increment primary key, `email` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"21.61\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001046_create_newsletter_subscriptions_table.php\",\"line\":20,\"hash\":\"50038633ba9122e207d202810e52fc49\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:52:59'),
(34, '93a111d2-20b7-4499-b673-9e71f2c0297e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `newsletter_subscriptions` add unique `newsletter_subscriptions_email_unique`(`email`)\",\"time\":\"26.51\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001046_create_newsletter_subscriptions_table.php\",\"line\":20,\"hash\":\"7e7a954b750f839e4f9dd9ce2b99e020\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(35, '93a111d2-2285-4af8-8889-3b1b1cf702f9', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001046_create_newsletter_subscriptions_table\', 1)\",\"time\":\"3.52\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(36, '93a111d2-2ad7-4a72-b8b6-8b01c5028a3a', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `jobs` (`id` bigint unsigned not null auto_increment primary key, `queue` varchar(255) not null, `payload` longtext not null, `attempts` tinyint unsigned not null, `reserved_at` int unsigned null, `available_at` int unsigned not null, `created_at` int unsigned not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.65\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001047_create_jobs_table.php\",\"line\":25,\"hash\":\"87d7e48163c279f619932f5e34922b35\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(37, '93a111d2-3130-422f-9d56-0edbdd4e97f3', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `jobs` add index `jobs_queue_reserved_at_index`(`queue`, `reserved_at`)\",\"time\":\"15.87\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001047_create_jobs_table.php\",\"line\":25,\"hash\":\"b24c64e0f447d6a0f978ed09eb6c03da\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(38, '93a111d2-32a6-433c-b4a6-7be78c892c0d', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001047_create_jobs_table\', 1)\",\"time\":\"3.42\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(39, '93a111d2-46ba-400c-97f0-d5faae0dd175', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add `provider` varchar(255) null, add `provider_id` varchar(255) null\",\"time\":\"50.75\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001048_add_provider_and_provider_id_to_users.php\",\"line\":19,\"hash\":\"9c772d5a1d2b9cbf3f225e6a979ba96c\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(40, '93a111d2-4f09-4240-a943-ae082ed02850', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_provider_id_unique`(`provider_id`)\",\"time\":\"20.77\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001048_add_provider_and_provider_id_to_users.php\",\"line\":19,\"hash\":\"7c9d5a3b867ca5c301f08ee8a7d910cf\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(41, '93a111d2-502d-4638-9a0b-261aaf05bbcd', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001048_add_provider_and_provider_id_to_users\', 1)\",\"time\":\"2.43\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(42, '93a111d2-987f-4dc0-a2be-b87fa99736c3', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"ALTER TABLE users CHANGE email email VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`, CHANGE password password VARCHAR(255) CHARACTER SET utf8mb4 DEFAULT NULL COLLATE `utf8mb4_unicode_ci`\",\"time\":\"42.55\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001049_update_email_and_password_to_nullable_to_users.php\",\"line\":19,\"hash\":\"6d89b225ff8ef14021a0d2b65a37134b\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(43, '93a111d2-99c6-4265-b81b-8a101bc62b67', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001049_update_email_and_password_to_nullable_to_users\', 1)\",\"time\":\"2.76\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(44, '93a111d2-a27a-40a4-a321-4428bb82b55e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `roles` (`id` int unsigned not null auto_increment primary key, `name` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"20.94\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001050_create_roles_table.php\",\"line\":22,\"hash\":\"4d356b288590e541535b4b8c9aeab95f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(45, '93a111d2-abf2-47ec-a286-5c26ba02b76e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `role_user` (`id` int unsigned not null auto_increment primary key, `user_id` int unsigned not null, `role_id` int unsigned not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"23.65\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001050_create_roles_table.php\",\"line\":34,\"hash\":\"f41723296e5d2d7a1455e4fb4f2d515f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(46, '93a111d2-c463-4ed3-bfd2-7925a038c866', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_user` add constraint `role_user_user_id_foreign` foreign key (`user_id`) references `users` (`id`)\",\"time\":\"62.21\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001050_create_roles_table.php\",\"line\":34,\"hash\":\"f90dfa95e5e3b182431c06533ccf9226\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(47, '93a111d2-d267-4f57-97bb-0f06d779deaa', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `role_user` add constraint `role_user_role_id_foreign` foreign key (`role_id`) references `roles` (`id`)\",\"time\":\"35.61\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001050_create_roles_table.php\",\"line\":34,\"hash\":\"42707687b22a6a011667671d4c775415\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(48, '93a111d2-d32c-403c-9efa-a48c9c9e8c28', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001050_create_roles_table\', 1)\",\"time\":\"1.67\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(49, '93a111d2-df11-4618-94dd-97370e4787e4', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add `registered_at` datetime null\",\"time\":\"29.72\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001051_add_registered_at_to_users_table.php\",\"line\":18,\"hash\":\"b5027f55c9c630635fa9c63a66a9ecef\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(50, '93a111d2-e364-4672-b6ad-b4130e032b50', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001051_add_registered_at_to_users_table\', 1)\",\"time\":\"9.73\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(51, '93a111d2-f349-4658-8557-5e1f3555061b', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `media` (`id` int unsigned not null auto_increment primary key, `filename` varchar(255) not null, `original_filename` varchar(255) not null, `mime_type` varchar(255) not null, `mediable_type` varchar(255) null, `mediable_id` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"38.24\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001052_create_media_table.php\",\"line\":25,\"hash\":\"7ab826305af8bde9d4099f7bb3e89a06\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(52, '93a111d2-fe23-4a61-9815-e8cd73d25da9', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media` add index `media_mediable_type_mediable_id_index`(`mediable_type`, `mediable_id`)\",\"time\":\"27.29\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001052_create_media_table.php\",\"line\":25,\"hash\":\"992c17b23de68474f32173cac1cf8a71\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(53, '93a111d3-0023-4345-b1ee-d134a8b88a05', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001052_create_media_table\', 1)\",\"time\":\"4.50\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(54, '93a111d3-16e2-4b08-840c-943c9bc38380', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add `thumbnail_id` int unsigned null\",\"time\":\"56.51\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001053_add_thumbnail_id_to_posts_table.php\",\"line\":19,\"hash\":\"5d4b34f6f47d9ca4ccfcde5783420ba7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(55, '93a111d3-2ef1-437c-b9b7-d95ae02f1a14', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add constraint `posts_thumbnail_id_foreign` foreign key (`thumbnail_id`) references `media` (`id`)\",\"time\":\"60.73\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001053_add_thumbnail_id_to_posts_table.php\",\"line\":19,\"hash\":\"6b2eaa837dfef49f9bf22a263abe2a57\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(56, '93a111d3-3336-4460-8814-949a8c82573d', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001053_add_thumbnail_id_to_posts_table\', 1)\",\"time\":\"10.08\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(57, '93a111d3-4b29-4eb1-9928-b5aa089ec156', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add `api_token` varchar(60) null\",\"time\":\"59.82\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001054_add_api_token_to_users_table.php\",\"line\":18,\"hash\":\"4e5ae8fddf95631bfca13a3b0cf142c7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(58, '93a111d3-5863-4c68-ad05-f6768e4a79bc', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add unique `users_api_token_unique`(`api_token`)\",\"time\":\"33.40\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001054_add_api_token_to_users_table.php\",\"line\":18,\"hash\":\"cdbb55269679eefa1e2596ff6446f8f1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(59, '93a111d3-5978-4bb1-9dbb-da4833b471d3', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001054_add_api_token_to_users_table\', 1)\",\"time\":\"2.31\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(60, '93a111d3-7d34-4121-af68-870bf305b6e3', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add `slug` varchar(255) not null after `title`\",\"time\":\"90.48\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001055_add_slug_to_posts.php\",\"line\":18,\"hash\":\"e90df9aa3004ee7a1bbb8e84b4b367ab\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(61, '93a111d3-8a38-4283-88b5-a0fd758a8d80', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add unique `posts_slug_unique`(`slug`)\",\"time\":\"32.79\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001055_add_slug_to_posts.php\",\"line\":18,\"hash\":\"3bccc227aff223bb250093339a641c4a\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(62, '93a111d3-8ce9-41e1-aa1c-7bb31cb0340d', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001055_add_slug_to_posts\', 1)\",\"time\":\"6.29\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(63, '93a111d3-9603-4be4-a3ae-7f67356ec030', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add index `posts_title_index`(`title`)\",\"time\":\"22.28\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_001056_add_index_on_title_to_posts.php\",\"line\":18,\"hash\":\"a7d5dd7b3ebba3ec88becb8ba378dcb3\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(64, '93a111d3-9916-4a5a-9646-5e2db6bf51a8', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_001056_add_index_on_title_to_posts\', 1)\",\"time\":\"7.36\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:00'),
(65, '93a111d3-a84e-40f2-8064-ada6f52f61cb', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `likes` (`id` int unsigned not null auto_increment primary key, `author_id` int unsigned not null, `likeable_type` varchar(255) null, `likeable_id` bigint unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"37.94\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_003340_create_likes_table.php\",\"line\":24,\"hash\":\"4e91c0e4351d71058717f58f70fa8cba\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(66, '93a111d3-d3f3-45da-a15a-4c4467ca8c81', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `likes` add constraint `likes_author_id_foreign` foreign key (`author_id`) references `users` (`id`)\",\"time\":\"111.16\",\"slow\":true,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_003340_create_likes_table.php\",\"line\":24,\"hash\":\"379cd5bb72cf5e2f3104eb0b8b1bdd12\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(67, '93a111d3-e0aa-4ef9-bcbd-45799a701106', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `likes` add index `likes_likeable_type_likeable_id_index`(`likeable_type`, `likeable_id`)\",\"time\":\"32.15\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_003340_create_likes_table.php\",\"line\":24,\"hash\":\"328443a41d311ae3484041ff982dd46f\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(68, '93a111d3-e229-40dd-b50b-cf21eaea8b90', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_003340_create_likes_table\', 1)\",\"time\":\"3.18\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(69, '93a111d3-e96d-4036-8a88-ef5b64c882a9', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` drop foreign key `posts_thumbnail_id_foreign`\",\"time\":\"17.72\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_214952_drop_media_table.php\",\"line\":19,\"hash\":\"e84733e90dd7957f1a8e1504c6fae2a8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(70, '93a111d4-0b80-40e9-aae0-54e2a5bd0b44', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` drop `thumbnail_id`\",\"time\":\"86.84\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_214952_drop_media_table.php\",\"line\":19,\"hash\":\"275eab2a5754a0cb6e946992a927cda3\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(71, '93a111d4-109d-4449-a589-f5122568ff2e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"drop table if exists `media`\",\"time\":\"12.69\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_214952_drop_media_table.php\",\"line\":21,\"hash\":\"b85660a7293b7381b053481858fd647a\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(72, '93a111d4-11a4-4d4f-8307-5e6b5ed5e489', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_214952_drop_media_table\', 1)\",\"time\":\"2.23\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(73, '93a111d4-1c95-42ca-85a2-234894c41897', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `media` (`id` int unsigned not null auto_increment primary key, `model_type` varchar(255) not null, `model_id` bigint unsigned not null, `collection_name` varchar(255) not null, `name` varchar(255) not null, `file_name` varchar(255) not null, `mime_type` varchar(255) null, `disk` varchar(255) not null, `size` bigint unsigned not null, `manipulations` json not null, `custom_properties` json not null, `responsive_images` json not null, `posted_at` datetime not null, `order_column` int unsigned null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"26.01\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_215224_create_media_table_with_media_library.php\",\"line\":29,\"hash\":\"b3829a37c3eab1aebbcb4ba156752b8e\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(74, '93a111d4-2b6b-40d9-a5aa-c5fc9300df3c', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media` add index `media_model_type_model_id_index`(`model_type`, `model_id`)\",\"time\":\"37.33\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_215224_create_media_table_with_media_library.php\",\"line\":29,\"hash\":\"18aa785eeff7b50b2cd7fd56c897a016\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(75, '93a111d4-3b10-490d-b043-1bbc2e520bb4', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add `thumbnail_id` int unsigned null\",\"time\":\"38.95\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_215224_create_media_table_with_media_library.php\",\"line\":34,\"hash\":\"5d4b34f6f47d9ca4ccfcde5783420ba7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(76, '93a111d4-4ebd-4329-bac0-3ca4f76b4b6e', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `posts` add constraint `posts_thumbnail_id_foreign` foreign key (`thumbnail_id`) references `media` (`id`) on delete set null\",\"time\":\"49.19\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_215224_create_media_table_with_media_library.php\",\"line\":34,\"hash\":\"4b4d40ed138fd80cf199e0e75e6d5b48\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(77, '93a111d4-4fe3-4a47-ab55-5aff2a9c9412', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_215224_create_media_table_with_media_library\', 1)\",\"time\":\"2.59\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(78, '93a111d4-56be-4050-bc71-f7bfc07c659d', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `media_libraries` (`id` int unsigned not null auto_increment primary key, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"16.83\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_03_22_230046_create_media_libraries_table.php\",\"line\":19,\"hash\":\"52112b658e5ce9a33b6dd1fbfb0ab9e0\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(79, '93a111d4-5806-435f-b217-fbf0b7c5474f', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_03_22_230046_create_media_libraries_table\', 1)\",\"time\":\"2.83\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(80, '93a111d4-741f-4e71-bd1c-4e989c7d4df5', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add `email_verified_at` timestamp null\",\"time\":\"70.98\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_09_05_220100_add_email_verified_at_to_users.php\",\"line\":18,\"hash\":\"e38703ca8e585e4eccba2f7504af942e\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(81, '93a111d4-75e5-404d-af38-7b05843a8590', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_09_05_220100_add_email_verified_at_to_users\', 1)\",\"time\":\"4.15\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(82, '93a111d4-7baf-45fe-ac6f-f9021bc4aa0f', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `failed_jobs` (`id` bigint unsigned not null auto_increment primary key, `uuid` varchar(255) not null, `connection` text not null, `queue` text not null, `payload` longtext not null, `exception` longtext not null, `failed_at` timestamp default CURRENT_TIMESTAMP not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"14.07\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_09_09_000456_create_failed_jobs_table.php\",\"line\":24,\"hash\":\"b4213f3d9cf0b0646ce18d265d239ccd\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(83, '93a111d4-808f-4dbb-b48d-d8b3fb6d5edb', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `failed_jobs` add unique `failed_jobs_uuid_unique`(`uuid`)\",\"time\":\"12.21\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_09_09_000456_create_failed_jobs_table.php\",\"line\":24,\"hash\":\"f851653a45d1f2394473d70db5636fd3\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(84, '93a111d4-817b-410f-a141-e347f2a5ce6c', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_09_09_000456_create_failed_jobs_table\', 1)\",\"time\":\"1.99\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(85, '93a111d4-8d33-4c51-9516-5f825e1554e6', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `media` add `uuid` char(36) null, add `conversions_disk` varchar(255) null\",\"time\":\"29.34\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/migrations\\/2021_10_06_231328_add_fields_to_media.php\",\"line\":19,\"hash\":\"66b136f494c6801002c301b7e930360b\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(86, '93a111d4-8e2a-442d-ba7b-b4cee3780ec0', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2021_10_06_231328_add_fields_to_media\', 1)\",\"time\":\"2.13\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(87, '93a111d4-9083-4f0c-9d0a-4b12883664b5', '93a111d4-90de-44d0-8e5b-530b35a6682f', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"step\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":false,\"no-interaction\":false,\"env\":null},\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:01'),
(88, '93a111d9-867c-477a-a943-1387d2de4f56', '93a111d9-9694-4405-bb07-ebe5dfe0d914', '66e407a326e336a6eb281acd6f19bbc4', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"file\":\"\\/var\\/www\\/html\\/vendor\\/symfony\\/console\\/Application.php\",\"line\":678,\"message\":\"Command \\\"artisan\\\" is not defined.\",\"context\":null,\"trace\":[{\"file\":\"\\/var\\/www\\/html\\/vendor\\/symfony\\/console\\/Application.php\",\"line\":255},{\"file\":\"\\/var\\/www\\/html\\/vendor\\/symfony\\/console\\/Application.php\",\"line\":167},{\"file\":\"\\/var\\/www\\/html\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Console\\/Application.php\",\"line\":93},{\"file\":\"\\/var\\/www\\/html\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Console\\/Kernel.php\",\"line\":129},{\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37}],\"line_preview\":{\"669\":\"\",\"670\":\"                if (1 == \\\\count($alternatives)) {\",\"671\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"672\":\"                } else {\",\"673\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"674\":\"                }\",\"675\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"676\":\"            }\",\"677\":\"\",\"678\":\"            throw new CommandNotFoundException($message, array_values($alternatives));\",\"679\":\"        }\",\"680\":\"\",\"681\":\"        \\/\\/ filter out aliases for commands which are already on the list\",\"682\":\"        if (\\\\count($commands) > 1) {\",\"683\":\"            $commandList = $this->commandLoader ? array_merge(array_flip($this->commandLoader->getNames()), $this->commands) : $this->commands;\",\"684\":\"            $commands = array_unique(array_filter($commands, function ($nameOrAlias) use (&$commandList, $commands, &$aliases) {\",\"685\":\"                if (!$commandList[$nameOrAlias] instanceof Command) {\",\"686\":\"                    $commandList[$nameOrAlias] = $this->commandLoader->get($nameOrAlias);\",\"687\":\"                }\",\"688\":\"\"},\"hostname\":\"3f208685e7ac\",\"occurrences\":1}', '2021-06-09 02:53:04'),
(89, '93a111e6-da18-41c7-a500-350e7dc3f217', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'homestead\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"3.00\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(90, '93a111e6-e001-47c4-a61e-7c556062776a', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'homestead\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.55\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(91, '93a111e6-e03f-42e2-a5ca-80ed88c2dcc1', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.34\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(92, '93a111e6-e0f2-44a4-99e6-e0805d58c45d', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.54\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":37,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(93, '93a111e6-eb3f-42ad-a2c4-e0bad67c65a9', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` where (`name` = \'editor\') limit 1\",\"time\":\"0.88\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":20,\"hash\":\"ebfef91c49a4bea6cd85166ddb3490fe\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(94, '93a111e6-ef4f-471f-a5ce-7e34961341f9', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`name`, `updated_at`, `created_at`) values (\'editor\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"4.09\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":20,\"hash\":\"f4f8e341c71c0077f6123cb935368ea8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(95, '93a111e6-f0ae-43ef-9b73-969b8eb7424a', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(96, '93a111e6-f117-4998-bbc3-34c26d998bf4', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `roles` where (`name` = \'admin\') limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":21,\"hash\":\"ebfef91c49a4bea6cd85166ddb3490fe\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(97, '93a111e6-f2ef-41f0-9f29-d13d1fb7505a', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `roles` (`name`, `updated_at`, `created_at`) values (\'admin\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"4.23\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":21,\"hash\":\"f4f8e341c71c0077f6123cb935368ea8\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(98, '93a111e6-f342-4940-980e-3f639049f8bc', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Role:2\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(99, '93a111e6-f71f-4cc2-8554-56e678e69f6f', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `media_libraries` limit 1\",\"time\":\"1.36\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":24,\"hash\":\"30c09de81f6dbc6dce819b4eedce2028\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(100, '93a111e6-f84e-4c33-8be4-dbbe9eca08f6', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `media_libraries` (`updated_at`, `created_at`) values (\'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"2.54\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":24,\"hash\":\"51d6059d7e4cd16ffc1351611700ffd9\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(101, '93a111e6-f86a-4f35-8d06-7aa4c8ce4037', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\MediaLibrary:1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(102, '93a111e7-1191-4d55-a6f0-93d2dcb710f1', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where (`email` = \'teste@teste.com\') limit 1\",\"time\":\"4.47\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":32,\"hash\":\"36c7c0dcc861a17146411d1fc25bc9f3\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(103, '93a111e7-13b5-4de5-9933-1622c8c059ae', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `users` where `api_token` = \'bbvqrcPbJjGnTcG5ow2gwHH7fo6Px7FQcMYaiPW5wfCs0KdIY2g1zfVVEO9j\') as `exists`\",\"time\":\"0.46\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/Token.php\",\"line\":17,\"hash\":\"1b29fc5a2d7f0d815e58f97a1fca408c\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(104, '93a111e7-1545-4c39-8767-aa10732ce1b7', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `users` (`email`, `name`, `password`, `email_verified_at`, `registered_at`, `api_token`, `updated_at`, `created_at`) values (\'teste@teste.com\', \'teste\', \'y$oXIYi70mLaIQi2vd.6yzNe3L10tt0ym\\/1nj\\/aJ.i1pT3QI0jWkkce\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\', \'bbvqrcPbJjGnTcG5ow2gwHH7fo6Px7FQcMYaiPW5wfCs0KdIY2g1zfVVEO9j\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"3.52\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":32,\"hash\":\"27c60d6fc0063d42ae34cfa60e6fe1bb\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(105, '93a111e7-155d-4fbf-a813-d2787a6bcba6', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\User:1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(106, '93a111e7-1913-4a05-b819-31265b756ea7', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `role_user` where `user_id` = 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":36,\"hash\":\"d903d605069f55d5cf863ce147e7994e\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(107, '93a111e7-1a1e-49b2-bf03-accebd307014', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `role_user` (`created_at`, `role_id`, `updated_at`, `user_id`) values (\'2021-06-09 02:53:13\', 2, \'2021-06-09 02:53:13\', 1)\",\"time\":\"2.27\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":36,\"hash\":\"efcf80a06663171bcc8853e656b8b4db\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(108, '93a111e7-20fb-4abf-a678-250057eb7686', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` where (`title` = \'Hello World\' and `author_id` = 1) and `posted_at` <= \'2021-06-09 02:53:13\' limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":46,\"hash\":\"864a2e9caf59a9634a5bb9f3815d43b6\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(109, '93a111e7-222b-4e4d-80ba-fc354ec4aabf', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `posts` (`title`, `author_id`, `posted_at`, `content`, `slug`, `updated_at`, `created_at`) values (\'Hello World\', 1, \'2021-06-09 02:53:13\', \'\\\\n                    Welcome to BlogProgrammer !<br><br>\', \'hello-world\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"2.41\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":46,\"hash\":\"7d42947240d64c1e37a4ca7623024b99\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(110, '93a111e7-2243-4b8f-9184-fb5973f8c9f1', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Post:1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(111, '93a111e7-22bf-4204-ac55-c51d0b93261c', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `comments` where (`author_id` = 1 and `post_id` = 1) limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":59,\"hash\":\"6f75c00dcafcdd2305c1786ec2c4a786\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(112, '93a111e7-23b9-4d86-88a7-46ca3005fcc6', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `comments` (`author_id`, `post_id`, `posted_at`, `content`, `updated_at`, `created_at`) values (1, 1, \'2021-06-09 02:53:13\', \'Este \\u00e9 um exemplo de coment\\u00e1rio :D\', \'2021-06-09 02:53:13\', \'2021-06-09 02:53:13\')\",\"time\":\"1.92\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":59,\"hash\":\"43bda423cbc7846b4deb9c2c53381e84\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(113, '93a111e7-23cf-4154-a967-59e2f318f115', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'model', '{\"action\":\"created\",\"model\":\"App\\\\Models\\\\Comment:1\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(114, '93a111e7-240c-4122-8772-c28b23ddc15c', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `api_token` is null\",\"time\":\"0.34\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/database\\/seeders\\/DatabaseSeeder.php\",\"line\":64,\"hash\":\"f25afb76cd6d15037a142c9d4e8b22dc\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(115, '93a111e7-243b-4630-bca4-8023feb55060', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `users` where `api_token` = \'E46Vnc35GkNIP2IJoRptQXpxy2rw3WX18uzwaCbQNqJPA9S90WWKUrjyduHT\') as `exists`\",\"time\":\"0.21\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/Token.php\",\"line\":17,\"hash\":\"1b29fc5a2d7f0d815e58f97a1fca408c\",\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13'),
(116, '93a111e7-24d3-4e1c-936f-1d5f1b08643e', '93a111e7-24e9-492e-b3d9-9a0f929ef778', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":true,\"step\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":false,\"no-interaction\":false,\"env\":null},\"hostname\":\"3f208685e7ac\"}', '2021-06-09 02:53:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('93a111d3-d3f3-45da-a15a-4c4467ca8c81', 'slow'),
('93a111e6-f0ae-43ef-9b73-969b8eb7424a', 'App\\Models\\Role:1'),
('93a111e6-f342-4940-980e-3f639049f8bc', 'App\\Models\\Role:2'),
('93a111e6-f86a-4f35-8d06-7aa4c8ce4037', 'App\\Models\\MediaLibrary:1'),
('93a111e7-155d-4fbf-a813-d2787a6bcba6', 'App\\Models\\User:1'),
('93a111e7-2243-4b8f-9184-fb5973f8c9f1', 'App\\Models\\Post:1'),
('93a111e7-23cf-4154-a967-59e2f318f115', 'App\\Models\\Comment:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `provider`, `provider_id`, `registered_at`, `api_token`, `email_verified_at`) VALUES
(1, 'teste', 'teste@teste.com', '$2y$10$oXIYi70mLaIQi2vd.6yzNe3L10tt0ym/1nj/aJ.i1pT3QI0jWkkce', NULL, '2021-06-09 02:53:13', '2021-06-09 02:53:13', NULL, NULL, '2021-06-09 02:53:13', 'bbvqrcPbJjGnTcG5ow2gwHH7fo6Px7FQcMYaiPW5wfCs0KdIY2g1zfVVEO9j', '2021-06-09 02:53:13');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_author_id_foreign` (`author_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_author_id_foreign` (`author_id`),
  ADD KEY `likes_likeable_type_likeable_id_index` (`likeable_type`,`likeable_id`);

--
-- Índices para tabela `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Índices para tabela `media_libraries`
--
ALTER TABLE `media_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletter_subscriptions_email_unique` (`email`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_title_index` (`title`),
  ADD KEY `posts_thumbnail_id_foreign` (`thumbnail_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Índices para tabela `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Índices para tabela `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_provider_id_unique` (`provider_id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `media_libraries`
--
ALTER TABLE `media_libraries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `newsletter_subscriptions`
--
ALTER TABLE `newsletter_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
