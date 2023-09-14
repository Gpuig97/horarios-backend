-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2023 a las 17:23:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horario_netlife_app`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2022-08-11 02:59:32.759000', '2022-08-11 02:59:32.759000', NULL, NULL),
(2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-08-11 02:59:35.822000', '2022-08-11 02:59:35.822000', NULL, NULL),
(3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-08-11 02:59:42.241000', '2022-08-11 02:59:42.241000', NULL, NULL),
(4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-08-11 02:59:45.815000', '2022-08-11 02:59:45.815000', NULL, NULL),
(5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-08-11 02:59:48.888000', '2022-08-11 02:59:48.888000', NULL, NULL),
(6, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-08-11 02:59:54.717000', '2022-08-11 02:59:54.717000', NULL, NULL),
(7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-08-11 03:00:00.936000', '2022-08-11 03:00:00.936000', NULL, NULL),
(8, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-08-11 03:00:10.102000', '2022-08-11 03:00:10.102000', NULL, NULL),
(9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-08-11 03:00:10.212000', '2022-08-11 03:00:10.212000', NULL, NULL),
(10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-08-11 03:00:10.323000', '2022-08-11 03:00:10.323000', NULL, NULL),
(11, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2022-08-11 03:00:10.515000', '2022-08-11 03:00:10.515000', NULL, NULL),
(12, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2022-08-11 03:00:10.718000', '2022-08-11 03:00:10.718000', NULL, NULL),
(13, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2022-08-11 03:00:10.907000', '2022-08-11 03:00:10.907000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-08-11 03:00:11.030000', '2022-08-11 03:00:11.030000', NULL, NULL),
(15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-08-11 03:00:11.129000', '2022-08-11 03:00:11.129000', NULL, NULL),
(16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-08-11 03:00:11.230000', '2022-08-11 03:00:11.230000', NULL, NULL),
(17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-08-11 03:00:11.331000', '2022-08-11 03:00:11.331000', NULL, NULL),
(18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-08-11 03:00:11.430000', '2022-08-11 03:00:11.430000', NULL, NULL),
(19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-08-11 03:00:11.532000', '2022-08-11 03:00:11.532000', NULL, NULL),
(20, 'plugin::upload.read', NULL, '{}', '[]', '2022-08-11 03:00:11.660000', '2022-08-11 03:00:11.660000', NULL, NULL),
(21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-08-11 03:00:11.962000', '2022-08-11 03:00:11.962000', NULL, NULL),
(22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-08-11 03:00:12.149000', '2022-08-11 03:00:12.149000', NULL, NULL),
(23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-08-11 03:00:12.227000', '2022-08-11 03:00:12.227000', NULL, NULL),
(24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-08-11 03:00:12.622000', '2022-08-11 03:00:12.622000', NULL, NULL),
(25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-08-11 03:00:12.765000', '2022-08-11 03:00:12.765000', NULL, NULL),
(26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-08-11 03:00:12.868000', '2022-08-11 03:00:12.868000', NULL, NULL),
(27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-08-11 03:00:12.957000', '2022-08-11 03:00:12.957000', NULL, NULL),
(28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-08-11 03:00:13.111000', '2022-08-11 03:00:13.111000', NULL, NULL),
(29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-08-11 03:00:13.212000', '2022-08-11 03:00:13.212000', NULL, NULL),
(30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-08-11 03:00:13.291000', '2022-08-11 03:00:13.291000', NULL, NULL),
(31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-08-11 03:00:13.390000', '2022-08-11 03:00:13.390000', NULL, NULL),
(32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-08-11 03:00:19.298000', '2022-08-11 03:00:19.298000', NULL, NULL),
(33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-08-11 03:00:22.587000', '2022-08-11 03:00:22.587000', NULL, NULL),
(34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-08-11 03:00:22.872000', '2022-08-11 03:00:22.872000', NULL, NULL),
(35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-08-11 03:00:22.996000', '2022-08-11 03:00:22.996000', NULL, NULL),
(36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-08-11 03:00:23.085000', '2022-08-11 03:00:23.085000', NULL, NULL),
(37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-08-11 03:00:23.174000', '2022-08-11 03:00:23.174000', NULL, NULL),
(38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-08-11 03:00:23.453000', '2022-08-11 03:00:23.453000', NULL, NULL),
(39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-08-11 03:00:23.543000', '2022-08-11 03:00:23.543000', NULL, NULL),
(40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-08-11 03:00:23.632000', '2022-08-11 03:00:23.632000', NULL, NULL),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-08-11 03:00:23.711000', '2022-08-11 03:00:23.711000', NULL, NULL),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-08-11 03:00:23.828000', '2022-08-11 03:00:23.828000', NULL, NULL),
(43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-08-11 03:00:24.136000', '2022-08-11 03:00:24.136000', NULL, NULL),
(44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-08-11 03:00:24.588000', '2022-08-11 03:00:24.588000', NULL, NULL),
(45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-08-11 03:00:24.687000', '2022-08-11 03:00:24.687000', NULL, NULL),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-08-11 03:00:24.765000', '2022-08-11 03:00:24.765000', NULL, NULL),
(47, 'admin::users.create', NULL, '{}', '[]', '2022-08-11 03:00:24.882000', '2022-08-11 03:00:24.882000', NULL, NULL),
(48, 'admin::users.read', NULL, '{}', '[]', '2022-08-11 03:00:24.987000', '2022-08-11 03:00:24.987000', NULL, NULL),
(49, 'admin::users.update', NULL, '{}', '[]', '2022-08-11 03:00:25.126000', '2022-08-11 03:00:25.126000', NULL, NULL),
(50, 'admin::users.delete', NULL, '{}', '[]', '2022-08-11 03:00:25.227000', '2022-08-11 03:00:25.227000', NULL, NULL),
(51, 'admin::roles.create', NULL, '{}', '[]', '2022-08-11 03:00:25.304000', '2022-08-11 03:00:25.304000', NULL, NULL),
(52, 'admin::roles.read', NULL, '{}', '[]', '2022-08-11 03:00:25.393000', '2022-08-11 03:00:25.393000', NULL, NULL),
(53, 'admin::roles.update', NULL, '{}', '[]', '2022-08-11 03:00:25.471000', '2022-08-11 03:00:25.471000', NULL, NULL),
(54, 'admin::roles.delete', NULL, '{}', '[]', '2022-08-11 03:00:25.616000', '2022-08-11 03:00:25.616000', NULL, NULL),
(55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-08-11 03:00:25.716000', '2022-08-11 03:00:25.716000', NULL, NULL),
(56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-08-11 03:00:25.816000', '2022-08-11 03:00:25.816000', NULL, NULL),
(57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-08-11 03:00:25.957000', '2022-08-11 03:00:25.957000', NULL, NULL),
(58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-08-11 03:00:26.044000', '2022-08-11 03:00:26.044000', NULL, NULL),
(59, 'admin::project-settings.update', NULL, '{}', '[]', '2022-08-11 03:00:26.183000', '2022-08-11 03:00:26.183000', NULL, NULL),
(60, 'admin::project-settings.read', NULL, '{}', '[]', '2022-08-11 03:00:26.270000', '2022-08-11 03:00:26.270000', NULL, NULL),
(64, 'plugin::content-manager.explorer.delete', 'api::area.area', '{}', '[]', '2022-08-11 03:03:26.851000', '2022-08-11 03:03:26.851000', NULL, NULL),
(65, 'plugin::content-manager.explorer.publish', 'api::area.area', '{}', '[]', '2022-08-11 03:03:26.940000', '2022-08-11 03:03:26.940000', NULL, NULL),
(69, 'plugin::content-manager.explorer.delete', 'api::agent.agent', '{}', '[]', '2022-08-11 03:07:42.013000', '2022-08-11 03:07:42.013000', NULL, NULL),
(70, 'plugin::content-manager.explorer.publish', 'api::agent.agent', '{}', '[]', '2022-08-11 03:07:42.091000', '2022-08-11 03:07:42.091000', NULL, NULL),
(77, 'plugin::content-manager.explorer.delete', 'api::group.group', '{}', '[]', '2022-08-11 03:11:54.850000', '2022-08-11 03:11:54.850000', NULL, NULL),
(78, 'plugin::content-manager.explorer.publish', 'api::group.group', '{}', '[]', '2022-08-11 03:11:55.357000', '2022-08-11 03:11:55.357000', NULL, NULL),
(82, 'plugin::content-manager.explorer.delete', 'api::type-of-shift.type-of-shift', '{}', '[]', '2022-08-11 03:13:29.104000', '2022-08-11 03:13:29.104000', NULL, NULL),
(83, 'plugin::content-manager.explorer.publish', 'api::type-of-shift.type-of-shift', '{}', '[]', '2022-08-11 03:13:29.180000', '2022-08-11 03:13:29.180000', NULL, NULL),
(87, 'plugin::content-manager.explorer.delete', 'api::shift.shift', '{}', '[]', '2022-08-11 03:15:11.378000', '2022-08-11 03:15:11.378000', NULL, NULL),
(88, 'plugin::content-manager.explorer.publish', 'api::shift.shift', '{}', '[]', '2022-08-11 03:15:11.478000', '2022-08-11 03:15:11.478000', NULL, NULL),
(92, 'plugin::content-manager.explorer.delete', 'api::type-of-holiday.type-of-holiday', '{}', '[]', '2022-08-11 03:18:38.640000', '2022-08-11 03:18:38.640000', NULL, NULL),
(93, 'plugin::content-manager.explorer.publish', 'api::type-of-holiday.type-of-holiday', '{}', '[]', '2022-08-11 03:18:38.718000', '2022-08-11 03:18:38.718000', NULL, NULL),
(97, 'plugin::content-manager.explorer.delete', 'api::holiday.holiday', '{}', '[]', '2022-08-11 03:19:53.141000', '2022-08-11 03:19:53.141000', NULL, NULL),
(98, 'plugin::content-manager.explorer.publish', 'api::holiday.holiday', '{}', '[]', '2022-08-11 03:19:53.252000', '2022-08-11 03:19:53.252000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', 'api::rule-hour.rule-hour', '{}', '[]', '2022-08-11 03:21:02.100000', '2022-08-11 03:21:02.100000', NULL, NULL),
(103, 'plugin::content-manager.explorer.publish', 'api::rule-hour.rule-hour', '{}', '[]', '2022-08-11 03:21:02.190000', '2022-08-11 03:21:02.190000', NULL, NULL),
(107, 'plugin::content-manager.explorer.delete', 'api::schedule.schedule', '{}', '[]', '2022-08-11 03:22:50.295000', '2022-08-11 03:22:50.295000', NULL, NULL),
(108, 'plugin::content-manager.explorer.publish', 'api::schedule.schedule', '{}', '[]', '2022-08-11 03:22:50.372000', '2022-08-11 03:22:50.372000', NULL, NULL),
(112, 'plugin::content-manager.explorer.delete', 'api::rule-day.rule-day', '{}', '[]', '2022-08-11 03:24:40.611000', '2022-08-11 03:24:40.611000', NULL, NULL),
(113, 'plugin::content-manager.explorer.publish', 'api::rule-day.rule-day', '{}', '[]', '2022-08-11 03:24:40.693000', '2022-08-11 03:24:40.693000', NULL, NULL),
(117, 'plugin::content-manager.explorer.delete', 'api::groups-and-agent.groups-and-agent', '{}', '[]', '2022-08-11 03:27:15.735000', '2022-08-11 03:27:15.735000', NULL, NULL),
(118, 'plugin::content-manager.explorer.publish', 'api::groups-and-agent.groups-and-agent', '{}', '[]', '2022-08-11 03:27:16.154000', '2022-08-11 03:27:16.154000', NULL, NULL),
(122, 'plugin::content-manager.explorer.delete', 'api::isabel-call-base.isabel-call-base', '{}', '[]', '2022-08-15 18:52:19.683000', '2022-08-15 18:52:19.683000', NULL, NULL),
(123, 'plugin::content-manager.explorer.publish', 'api::isabel-call-base.isabel-call-base', '{}', '[]', '2022-08-15 18:52:19.781000', '2022-08-15 18:52:19.781000', NULL, NULL),
(132, 'plugin::content-manager.explorer.delete', 'api::dates-available-by-agent.dates-available-by-agent', '{}', '[]', '2022-08-23 16:20:17.783000', '2022-08-23 16:20:17.783000', NULL, NULL),
(133, 'plugin::content-manager.explorer.publish', 'api::dates-available-by-agent.dates-available-by-agent', '{}', '[]', '2022-08-23 16:20:17.914000', '2022-08-23 16:20:17.914000', NULL, NULL),
(137, 'plugin::content-manager.explorer.delete', 'api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{}', '[]', '2022-08-23 16:21:45.473000', '2022-08-23 16:21:45.473000', NULL, NULL),
(138, 'plugin::content-manager.explorer.publish', 'api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{}', '[]', '2022-08-23 16:21:45.563000', '2022-08-23 16:21:45.563000', NULL, NULL),
(142, 'plugin::content-manager.explorer.delete', 'api::vacation-date-by-agent.vacation-date-by-agent', '{}', '[]', '2022-08-23 16:24:14.250000', '2022-08-23 16:24:14.250000', NULL, NULL),
(143, 'plugin::content-manager.explorer.publish', 'api::vacation-date-by-agent.vacation-date-by-agent', '{}', '[]', '2022-08-23 16:24:14.339000', '2022-08-23 16:24:14.339000', NULL, NULL),
(147, 'plugin::content-manager.explorer.delete', 'api::coordinator.coordinator', '{}', '[]', '2022-08-23 16:26:41.659000', '2022-08-23 16:26:41.659000', NULL, NULL),
(148, 'plugin::content-manager.explorer.publish', 'api::coordinator.coordinator', '{}', '[]', '2022-08-23 16:26:41.748000', '2022-08-23 16:26:41.748000', NULL, NULL),
(158, 'plugin::content-manager.explorer.delete', 'api::region.region', '{}', '[]', '2022-08-26 16:39:52.516000', '2022-08-26 16:39:52.516000', NULL, NULL),
(159, 'plugin::content-manager.explorer.publish', 'api::region.region', '{}', '[]', '2022-08-26 16:39:52.584000', '2022-08-26 16:39:52.584000', NULL, NULL),
(163, 'plugin::content-manager.explorer.delete', 'api::city.city', '{}', '[]', '2022-08-26 16:41:19.265000', '2022-08-26 16:41:19.265000', NULL, NULL),
(164, 'plugin::content-manager.explorer.publish', 'api::city.city', '{}', '[]', '2022-08-26 16:41:19.343000', '2022-08-26 16:41:19.343000', NULL, NULL),
(189, 'plugin::content-manager.explorer.delete', 'api::type-of-agent.type-of-agent', '{}', '[]', '2022-09-28 20:07:29.820000', '2022-09-28 20:07:29.820000', NULL, NULL),
(190, 'plugin::content-manager.explorer.publish', 'api::type-of-agent.type-of-agent', '{}', '[]', '2022-09-28 20:07:29.988000', '2022-09-28 20:07:29.988000', NULL, NULL),
(197, 'plugin::content-manager.explorer.delete', 'api::place.place', '{}', '[]', '2022-09-30 10:48:38.522000', '2022-09-30 10:48:38.522000', NULL, NULL),
(198, 'plugin::content-manager.explorer.publish', 'api::place.place', '{}', '[]', '2022-09-30 10:48:38.864000', '2022-09-30 10:48:38.864000', NULL, NULL),
(223, 'plugin::content-manager.explorer.delete', 'api::schedules-day-turn.schedules-day-turn', '{}', '[]', '2022-10-14 11:55:54.427000', '2022-10-14 11:55:54.427000', NULL, NULL),
(224, 'plugin::content-manager.explorer.publish', 'api::schedules-day-turn.schedules-day-turn', '{}', '[]', '2022-10-14 11:55:54.505000', '2022-10-14 11:55:54.505000', NULL, NULL),
(258, 'plugin::content-manager.explorer.create', 'api::schedule-turn-agent.schedule-turn-agent', '{\"fields\": [\"schedules_day_turn\", \"groups_and_agent\"]}', '[]', '2022-10-21 14:35:39.368000', '2022-10-21 14:35:39.368000', NULL, NULL),
(259, 'plugin::content-manager.explorer.read', 'api::schedule-turn-agent.schedule-turn-agent', '{\"fields\": [\"schedules_day_turn\", \"groups_and_agent\"]}', '[]', '2022-10-21 14:35:39.653000', '2022-10-21 14:35:39.653000', NULL, NULL),
(260, 'plugin::content-manager.explorer.update', 'api::schedule-turn-agent.schedule-turn-agent', '{\"fields\": [\"schedules_day_turn\", \"groups_and_agent\"]}', '[]', '2022-10-21 14:35:39.929000', '2022-10-21 14:35:39.929000', NULL, NULL),
(261, 'plugin::content-manager.explorer.delete', 'api::schedule-turn-agent.schedule-turn-agent', '{}', '[]', '2022-10-21 14:35:40.210000', '2022-10-21 14:35:40.210000', NULL, NULL),
(262, 'plugin::content-manager.explorer.publish', 'api::schedule-turn-agent.schedule-turn-agent', '{}', '[]', '2022-10-21 14:35:40.486000', '2022-10-21 14:35:40.486000', NULL, NULL),
(287, 'plugin::content-manager.explorer.delete', 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{}', '[]', '2022-11-02 07:47:25.968000', '2022-11-02 07:47:25.968000', NULL, NULL),
(289, 'plugin::content-manager.explorer.delete', 'api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{}', '[]', '2022-11-02 07:47:26.558000', '2022-11-02 07:47:26.558000', NULL, NULL),
(290, 'plugin::content-manager.explorer.publish', 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{}', '[]', '2022-11-02 07:47:26.858000', '2022-11-02 07:47:26.858000', NULL, NULL),
(292, 'plugin::content-manager.explorer.publish', 'api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{}', '[]', '2022-11-02 07:47:27.455000', '2022-11-02 07:47:27.455000', NULL, NULL),
(299, 'plugin::content-manager.explorer.create', 'api::region.region', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:37:15.460000', '2022-11-09 14:37:15.460000', NULL, NULL),
(300, 'plugin::content-manager.explorer.read', 'api::region.region', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:37:15.752000', '2022-11-09 14:37:15.752000', NULL, NULL),
(301, 'plugin::content-manager.explorer.update', 'api::region.region', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:37:16.040000', '2022-11-09 14:37:16.040000', NULL, NULL),
(305, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"region\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:38:38.063000', '2022-11-09 14:38:38.063000', NULL, NULL),
(306, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"region\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:38:38.355000', '2022-11-09 14:38:38.355000', NULL, NULL),
(307, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"region\", \"active\", \"deleted\"]}', '[]', '2022-11-09 14:38:38.640000', '2022-11-09 14:38:38.640000', NULL, NULL),
(434, 'plugin::content-manager.explorer.create', 'api::configuracion-login.configuracion-login', '{\"fields\": [\"url\", \"active\", \"deleted\", \"observations\"]}', '[]', '2022-12-06 12:49:08.789000', '2022-12-06 12:49:08.789000', NULL, NULL),
(435, 'plugin::content-manager.explorer.read', 'api::configuracion-login.configuracion-login', '{\"fields\": [\"url\", \"active\", \"deleted\", \"observations\"]}', '[]', '2022-12-06 12:49:09.075000', '2022-12-06 12:49:09.075000', NULL, NULL),
(436, 'plugin::content-manager.explorer.update', 'api::configuracion-login.configuracion-login', '{\"fields\": [\"url\", \"active\", \"deleted\", \"observations\"]}', '[]', '2022-12-06 12:49:09.366000', '2022-12-06 12:49:09.366000', NULL, NULL),
(437, 'plugin::content-manager.explorer.delete', 'api::configuracion-login.configuracion-login', '{}', '[]', '2022-12-06 12:49:09.648000', '2022-12-06 12:49:09.648000', NULL, NULL),
(438, 'plugin::content-manager.explorer.publish', 'api::configuracion-login.configuracion-login', '{}', '[]', '2022-12-06 12:49:09.931000', '2022-12-06 12:49:09.931000', NULL, NULL),
(445, 'plugin::content-manager.explorer.create', 'api::isabel-call-base.isabel-call-base', '{\"fields\": [\"date\", \"time\", \"cabinas_6022_manejadas\", \"soporte_5900_manejadas\", \"cabinas_6022_abandonadas\", \"soporte_5900_abandonadas\", \"atc_6028_manejadas\", \"cobranzas_5903_manejadas\", \"atc_6028_abandonadas\", \"cobranzas_5903_abandonadas\", \"area\", \"manejadas\", \"abandonadas\"]}', '[]', '2022-12-06 20:02:27.483000', '2022-12-06 20:02:27.483000', NULL, NULL),
(446, 'plugin::content-manager.explorer.read', 'api::isabel-call-base.isabel-call-base', '{\"fields\": [\"date\", \"time\", \"cabinas_6022_manejadas\", \"soporte_5900_manejadas\", \"cabinas_6022_abandonadas\", \"soporte_5900_abandonadas\", \"atc_6028_manejadas\", \"cobranzas_5903_manejadas\", \"atc_6028_abandonadas\", \"cobranzas_5903_abandonadas\", \"area\", \"manejadas\", \"abandonadas\"]}', '[]', '2022-12-06 20:02:27.773000', '2022-12-06 20:02:27.773000', NULL, NULL),
(447, 'plugin::content-manager.explorer.update', 'api::isabel-call-base.isabel-call-base', '{\"fields\": [\"date\", \"time\", \"cabinas_6022_manejadas\", \"soporte_5900_manejadas\", \"cabinas_6022_abandonadas\", \"soporte_5900_abandonadas\", \"atc_6028_manejadas\", \"cobranzas_5903_manejadas\", \"atc_6028_abandonadas\", \"cobranzas_5903_abandonadas\", \"area\", \"manejadas\", \"abandonadas\"]}', '[]', '2022-12-06 20:02:28.066000', '2022-12-06 20:02:28.066000', NULL, NULL),
(457, 'plugin::content-manager.explorer.delete', 'api::module.module', '{}', '[]', '2022-12-19 13:36:08.489000', '2022-12-19 13:36:08.489000', NULL, NULL),
(458, 'plugin::content-manager.explorer.publish', 'api::module.module', '{}', '[]', '2022-12-19 13:36:08.771000', '2022-12-19 13:36:08.771000', NULL, NULL),
(462, 'plugin::content-manager.explorer.delete', 'api::rol.rol', '{}', '[]', '2022-12-19 13:39:13.463000', '2022-12-19 13:39:13.463000', NULL, NULL),
(463, 'plugin::content-manager.explorer.publish', 'api::rol.rol', '{}', '[]', '2022-12-19 13:39:13.755000', '2022-12-19 13:39:13.755000', NULL, NULL),
(464, 'plugin::content-manager.explorer.create', 'api::permiso.permiso', '{\"fields\": [\"module\", \"rol\", \"create\", \"read\", \"update\", \"delete\"]}', '[]', '2022-12-19 13:44:11.458000', '2022-12-19 13:44:11.458000', NULL, NULL),
(465, 'plugin::content-manager.explorer.read', 'api::permiso.permiso', '{\"fields\": [\"module\", \"rol\", \"create\", \"read\", \"update\", \"delete\"]}', '[]', '2022-12-19 13:44:11.745000', '2022-12-19 13:44:11.745000', NULL, NULL),
(466, 'plugin::content-manager.explorer.update', 'api::permiso.permiso', '{\"fields\": [\"module\", \"rol\", \"create\", \"read\", \"update\", \"delete\"]}', '[]', '2022-12-19 13:44:12.033000', '2022-12-19 13:44:12.033000', NULL, NULL),
(467, 'plugin::content-manager.explorer.delete', 'api::permiso.permiso', '{}', '[]', '2022-12-19 13:44:12.321000', '2022-12-19 13:44:12.321000', NULL, NULL),
(468, 'plugin::content-manager.explorer.publish', 'api::permiso.permiso', '{}', '[]', '2022-12-19 13:44:12.605000', '2022-12-19 13:44:12.605000', NULL, NULL),
(472, 'plugin::content-manager.explorer.delete', 'api::schedules-day-descanso.schedules-day-descanso', '{}', '[]', '2022-12-19 16:03:45.689000', '2022-12-19 16:03:45.689000', NULL, NULL),
(473, 'plugin::content-manager.explorer.publish', 'api::schedules-day-descanso.schedules-day-descanso', '{}', '[]', '2022-12-19 16:03:46.003000', '2022-12-19 16:03:46.003000', NULL, NULL),
(477, 'plugin::content-manager.explorer.delete', 'api::schedules-day-hextra.schedules-day-hextra', '{}', '[]', '2022-12-19 16:07:31.983000', '2022-12-19 16:07:31.983000', NULL, NULL),
(478, 'plugin::content-manager.explorer.publish', 'api::schedules-day-hextra.schedules-day-hextra', '{}', '[]', '2022-12-19 16:07:32.273000', '2022-12-19 16:07:32.273000', NULL, NULL),
(485, 'plugin::content-manager.explorer.delete', 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{}', '[]', '2022-12-19 16:10:25.062000', '2022-12-19 16:10:25.062000', NULL, NULL),
(486, 'plugin::content-manager.explorer.publish', 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{}', '[]', '2022-12-19 16:10:25.354000', '2022-12-19 16:10:25.354000', NULL, NULL),
(505, 'plugin::content-manager.explorer.delete', 'api::site.site', '{}', '[]', '2022-12-21 15:28:42.710000', '2022-12-21 15:28:42.710000', NULL, NULL),
(506, 'plugin::content-manager.explorer.publish', 'api::site.site', '{}', '[]', '2022-12-21 15:28:45.021000', '2022-12-21 15:28:45.021000', NULL, NULL),
(510, 'plugin::content-manager.explorer.create', 'api::agent.agent', '{\"fields\": [\"names\", \"surnames\", \"identification\", \"email\", \"phone\", \"area\", \"observations\", \"coordinator\", \"city\", \"type_of_agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 15:49:41.040000', '2022-12-21 15:49:41.040000', NULL, NULL),
(511, 'plugin::content-manager.explorer.read', 'api::agent.agent', '{\"fields\": [\"names\", \"surnames\", \"identification\", \"email\", \"phone\", \"area\", \"observations\", \"coordinator\", \"city\", \"type_of_agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 15:49:41.377000', '2022-12-21 15:49:41.377000', NULL, NULL),
(512, 'plugin::content-manager.explorer.update', 'api::agent.agent', '{\"fields\": [\"names\", \"surnames\", \"identification\", \"email\", \"phone\", \"area\", \"observations\", \"coordinator\", \"city\", \"type_of_agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 15:49:41.746000', '2022-12-21 15:49:41.746000', NULL, NULL),
(522, 'plugin::content-manager.explorer.create', 'api::type-of-holiday.type-of-holiday', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-12-21 15:57:19.214000', '2022-12-21 15:57:19.214000', NULL, NULL),
(523, 'plugin::content-manager.explorer.read', 'api::type-of-holiday.type-of-holiday', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-12-21 15:57:19.768000', '2022-12-21 15:57:19.768000', NULL, NULL),
(524, 'plugin::content-manager.explorer.update', 'api::type-of-holiday.type-of-holiday', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\"]}', '[]', '2022-12-21 15:57:20.102000', '2022-12-21 15:57:20.102000', NULL, NULL),
(531, 'plugin::content-manager.explorer.create', 'api::area.area', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:22:36.789000', '2022-12-21 17:22:36.789000', NULL, NULL),
(532, 'plugin::content-manager.explorer.read', 'api::area.area', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:22:37.086000', '2022-12-21 17:22:37.086000', NULL, NULL),
(533, 'plugin::content-manager.explorer.update', 'api::area.area', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:22:37.384000', '2022-12-21 17:22:37.384000', NULL, NULL),
(534, 'plugin::content-manager.explorer.create', 'api::place.place', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"city\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:27:40.090000', '2022-12-21 17:27:40.090000', NULL, NULL),
(535, 'plugin::content-manager.explorer.read', 'api::place.place', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"city\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:27:40.387000', '2022-12-21 17:27:40.387000', NULL, NULL),
(536, 'plugin::content-manager.explorer.update', 'api::place.place', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"city\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:27:40.708000', '2022-12-21 17:27:40.708000', NULL, NULL),
(540, 'plugin::content-manager.explorer.create', 'api::type-of-shift.type-of-shift', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"holiday\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:42:37.892000', '2022-12-21 17:42:37.892000', NULL, NULL),
(541, 'plugin::content-manager.explorer.read', 'api::type-of-shift.type-of-shift', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"holiday\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:42:38.301000', '2022-12-21 17:42:38.301000', NULL, NULL),
(542, 'plugin::content-manager.explorer.update', 'api::type-of-shift.type-of-shift', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"holiday\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:42:38.711000', '2022-12-21 17:42:38.711000', NULL, NULL),
(546, 'plugin::content-manager.explorer.create', 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{\"fields\": [\"agentes_necesarios\", \"shift\", \"date\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:47:52.897000', '2022-12-21 17:47:52.897000', NULL, NULL),
(547, 'plugin::content-manager.explorer.read', 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{\"fields\": [\"agentes_necesarios\", \"shift\", \"date\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:47:53.375000', '2022-12-21 17:47:53.375000', NULL, NULL),
(548, 'plugin::content-manager.explorer.update', 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{\"fields\": [\"agentes_necesarios\", \"shift\", \"date\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:47:53.756000', '2022-12-21 17:47:53.756000', NULL, NULL),
(549, 'plugin::content-manager.explorer.create', 'api::type-of-agent.type-of-agent', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:50:53.165000', '2022-12-21 17:50:53.165000', NULL, NULL),
(550, 'plugin::content-manager.explorer.read', 'api::type-of-agent.type-of-agent', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:50:53.462000', '2022-12-21 17:50:53.462000', NULL, NULL),
(551, 'plugin::content-manager.explorer.update', 'api::type-of-agent.type-of-agent', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:50:53.909000', '2022-12-21 17:50:53.909000', NULL, NULL),
(558, 'plugin::content-manager.explorer.create', 'api::dates-available-by-agent.dates-available-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:57:52.560000', '2022-12-21 17:57:52.560000', NULL, NULL),
(559, 'plugin::content-manager.explorer.read', 'api::dates-available-by-agent.dates-available-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:57:52.857000', '2022-12-21 17:57:52.857000', NULL, NULL),
(560, 'plugin::content-manager.explorer.update', 'api::dates-available-by-agent.dates-available-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agent\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:57:53.167000', '2022-12-21 17:57:53.167000', NULL, NULL),
(561, 'plugin::content-manager.explorer.create', 'api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{\"fields\": [\"hora_desde\", \"hora_hasta\", \"area\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:59:24.521000', '2022-12-21 17:59:24.521000', NULL, NULL),
(562, 'plugin::content-manager.explorer.read', 'api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{\"fields\": [\"hora_desde\", \"hora_hasta\", \"area\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:59:24.845000', '2022-12-21 17:59:24.845000', NULL, NULL),
(563, 'plugin::content-manager.explorer.update', 'api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{\"fields\": [\"hora_desde\", \"hora_hasta\", \"area\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 17:59:25.182000', '2022-12-21 17:59:25.182000', NULL, NULL),
(570, 'plugin::content-manager.explorer.create', 'api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:02.686000', '2022-12-21 18:03:02.686000', NULL, NULL),
(571, 'plugin::content-manager.explorer.read', 'api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:02.984000', '2022-12-21 18:03:02.984000', NULL, NULL),
(572, 'plugin::content-manager.explorer.update', 'api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:03.301000', '2022-12-21 18:03:03.301000', NULL, NULL),
(573, 'plugin::content-manager.explorer.create', 'api::vacation-date-by-agent.vacation-date-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"days_before_to_remind\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:51.364000', '2022-12-21 18:03:51.364000', NULL, NULL),
(574, 'plugin::content-manager.explorer.read', 'api::vacation-date-by-agent.vacation-date-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"days_before_to_remind\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:51.696000', '2022-12-21 18:03:51.696000', NULL, NULL),
(575, 'plugin::content-manager.explorer.update', 'api::vacation-date-by-agent.vacation-date-by-agent', '{\"fields\": [\"date_from\", \"date_to\", \"observations\", \"days_before_to_remind\", \"agents\", \"active\", \"deleted\", \"site\"]}', '[]', '2022-12-21 18:03:52.038000', '2022-12-21 18:03:52.038000', NULL, NULL),
(585, 'plugin::content-manager.explorer.create', 'api::schedules-day-descanso.schedules-day-descanso', '{\"fields\": [\"schedule\", \"date\", \"groups_and_agents\", \"agents\"]}', '[]', '2022-12-29 03:57:32.172000', '2022-12-29 03:57:32.172000', NULL, NULL),
(586, 'plugin::content-manager.explorer.read', 'api::schedules-day-descanso.schedules-day-descanso', '{\"fields\": [\"schedule\", \"date\", \"groups_and_agents\", \"agents\"]}', '[]', '2022-12-29 03:57:32.298000', '2022-12-29 03:57:32.298000', NULL, NULL),
(587, 'plugin::content-manager.explorer.update', 'api::schedules-day-descanso.schedules-day-descanso', '{\"fields\": [\"schedule\", \"date\", \"groups_and_agents\", \"agents\"]}', '[]', '2022-12-29 03:57:32.557000', '2022-12-29 03:57:32.557000', NULL, NULL),
(591, 'plugin::content-manager.explorer.create', 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"deleted\", \"observations\", \"groups_and_agent\", \"agents\"]}', '[]', '2022-12-29 03:58:38.613000', '2022-12-29 03:58:38.613000', NULL, NULL),
(592, 'plugin::content-manager.explorer.read', 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"deleted\", \"observations\", \"groups_and_agent\", \"agents\"]}', '[]', '2022-12-29 03:58:38.715000', '2022-12-29 03:58:38.715000', NULL, NULL),
(593, 'plugin::content-manager.explorer.update', 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"deleted\", \"observations\", \"groups_and_agent\", \"agents\"]}', '[]', '2022-12-29 03:58:38.815000', '2022-12-29 03:58:38.815000', NULL, NULL),
(606, 'plugin::content-manager.explorer.create', 'api::group.group', '{\"fields\": [\"name\", \"internal_code\", \"max_agents\", \"observations\", \"area\", \"active\", \"deleted\", \"site\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"monday_order\", \"tuesday_order\", \"wednesday_order\", \"thursday_order\", \"friday_order\", \"saturday_order\", \"sunday_order\", \"order\", \"view_monday_rest\", \"view_tuesday_rest\", \"view_wednesday_rest\", \"view_thursday_rest\", \"view_friday_rest\", \"view_saturday_rest\", \"view_sunday_rest\"]}', '[]', '2023-01-03 07:47:42.003000', '2023-01-03 07:47:42.003000', NULL, NULL),
(607, 'plugin::content-manager.explorer.read', 'api::group.group', '{\"fields\": [\"name\", \"internal_code\", \"max_agents\", \"observations\", \"area\", \"active\", \"deleted\", \"site\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"monday_order\", \"tuesday_order\", \"wednesday_order\", \"thursday_order\", \"friday_order\", \"saturday_order\", \"sunday_order\", \"order\", \"view_monday_rest\", \"view_tuesday_rest\", \"view_wednesday_rest\", \"view_thursday_rest\", \"view_friday_rest\", \"view_saturday_rest\", \"view_sunday_rest\"]}', '[]', '2023-01-03 07:47:42.121000', '2023-01-03 07:47:42.121000', NULL, NULL),
(608, 'plugin::content-manager.explorer.update', 'api::group.group', '{\"fields\": [\"name\", \"internal_code\", \"max_agents\", \"observations\", \"area\", \"active\", \"deleted\", \"site\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"monday_order\", \"tuesday_order\", \"wednesday_order\", \"thursday_order\", \"friday_order\", \"saturday_order\", \"sunday_order\", \"order\", \"view_monday_rest\", \"view_tuesday_rest\", \"view_wednesday_rest\", \"view_thursday_rest\", \"view_friday_rest\", \"view_saturday_rest\", \"view_sunday_rest\"]}', '[]', '2023-01-03 07:47:42.221000', '2023-01-03 07:47:42.221000', NULL, NULL),
(609, 'plugin::content-manager.explorer.create', 'api::groups-and-agent.groups-and-agent', '{\"fields\": [\"name\", \"agents\", \"group\", \"available\", \"rules_day\", \"rules_hour\", \"observations\", \"place\", \"active\", \"deleted\", \"site\", \"order\"]}', '[]', '2023-01-03 08:43:46.339000', '2023-01-03 08:43:46.339000', NULL, NULL),
(610, 'plugin::content-manager.explorer.read', 'api::groups-and-agent.groups-and-agent', '{\"fields\": [\"name\", \"agents\", \"group\", \"available\", \"rules_day\", \"rules_hour\", \"observations\", \"place\", \"active\", \"deleted\", \"site\", \"order\"]}', '[]', '2023-01-03 08:43:46.540000', '2023-01-03 08:43:46.540000', NULL, NULL),
(611, 'plugin::content-manager.explorer.update', 'api::groups-and-agent.groups-and-agent', '{\"fields\": [\"name\", \"agents\", \"group\", \"available\", \"rules_day\", \"rules_hour\", \"observations\", \"place\", \"active\", \"deleted\", \"site\", \"order\"]}', '[]', '2023-01-03 08:43:46.666000', '2023-01-03 08:43:46.666000', NULL, NULL),
(612, 'plugin::content-manager.explorer.create', 'api::tipo-lider.tipo-lider', '{\"fields\": [\"name\", \"internal_code\", \"order\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:53:43.579000', '2023-01-03 14:53:43.579000', NULL, NULL),
(613, 'plugin::content-manager.explorer.read', 'api::tipo-lider.tipo-lider', '{\"fields\": [\"name\", \"internal_code\", \"order\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:53:43.717000', '2023-01-03 14:53:43.717000', NULL, NULL),
(614, 'plugin::content-manager.explorer.update', 'api::tipo-lider.tipo-lider', '{\"fields\": [\"name\", \"internal_code\", \"order\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:53:43.825000', '2023-01-03 14:53:43.825000', NULL, NULL),
(615, 'plugin::content-manager.explorer.delete', 'api::tipo-lider.tipo-lider', '{}', '[]', '2023-01-03 14:53:43.934000', '2023-01-03 14:53:43.934000', NULL, NULL),
(616, 'plugin::content-manager.explorer.publish', 'api::tipo-lider.tipo-lider', '{}', '[]', '2023-01-03 14:53:44.026000', '2023-01-03 14:53:44.026000', NULL, NULL),
(617, 'plugin::content-manager.explorer.create', 'api::tipo-standby.tipo-standby', '{\"fields\": [\"name\", \"order\", \"internal_code\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:54:54.294000', '2023-01-03 14:54:54.294000', NULL, NULL),
(618, 'plugin::content-manager.explorer.read', 'api::tipo-standby.tipo-standby', '{\"fields\": [\"name\", \"order\", \"internal_code\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:54:54.421000', '2023-01-03 14:54:54.421000', NULL, NULL),
(619, 'plugin::content-manager.explorer.update', 'api::tipo-standby.tipo-standby', '{\"fields\": [\"name\", \"order\", \"internal_code\", \"observations\", \"site\", \"active\", \"deleted\"]}', '[]', '2023-01-03 14:54:54.564000', '2023-01-03 14:54:54.564000', NULL, NULL),
(620, 'plugin::content-manager.explorer.delete', 'api::tipo-standby.tipo-standby', '{}', '[]', '2023-01-03 14:54:54.680000', '2023-01-03 14:54:54.680000', NULL, NULL),
(621, 'plugin::content-manager.explorer.publish', 'api::tipo-standby.tipo-standby', '{}', '[]', '2023-01-03 14:54:54.797000', '2023-01-03 14:54:54.797000', NULL, NULL),
(625, 'plugin::content-manager.explorer.delete', 'api::schedules-day-leader.schedules-day-leader', '{}', '[]', '2023-01-03 15:45:17.540000', '2023-01-03 15:45:17.540000', NULL, NULL),
(626, 'plugin::content-manager.explorer.publish', 'api::schedules-day-leader.schedules-day-leader', '{}', '[]', '2023-01-03 15:45:17.667000', '2023-01-03 15:45:17.667000', NULL, NULL),
(630, 'plugin::content-manager.explorer.delete', 'api::schedules-day-standby.schedules-day-standby', '{}', '[]', '2023-01-03 15:47:14.681000', '2023-01-03 15:47:14.681000', NULL, NULL),
(631, 'plugin::content-manager.explorer.publish', 'api::schedules-day-standby.schedules-day-standby', '{}', '[]', '2023-01-03 15:47:14.865000', '2023-01-03 15:47:14.865000', NULL, NULL),
(632, 'plugin::content-manager.explorer.create', 'api::schedules-day-leader.schedules-day-leader', '{\"fields\": [\"schedule\", \"tipo_lider\", \"date\", \"name\", \"order\", \"groups_and_agent\"]}', '[]', '2023-01-03 15:58:14.338000', '2023-01-03 15:58:14.338000', NULL, NULL),
(633, 'plugin::content-manager.explorer.read', 'api::schedules-day-leader.schedules-day-leader', '{\"fields\": [\"schedule\", \"tipo_lider\", \"date\", \"name\", \"order\", \"groups_and_agent\"]}', '[]', '2023-01-03 15:58:14.473000', '2023-01-03 15:58:14.473000', NULL, NULL),
(634, 'plugin::content-manager.explorer.update', 'api::schedules-day-leader.schedules-day-leader', '{\"fields\": [\"schedule\", \"tipo_lider\", \"date\", \"name\", \"order\", \"groups_and_agent\"]}', '[]', '2023-01-03 15:58:14.623000', '2023-01-03 15:58:14.623000', NULL, NULL),
(635, 'plugin::content-manager.explorer.create', 'api::schedules-day-standby.schedules-day-standby', '{\"fields\": [\"schedule\", \"groups_and_agent\", \"tipo_standby\", \"name\", \"order\", \"date\"]}', '[]', '2023-01-03 15:59:27.739000', '2023-01-03 15:59:27.739000', NULL, NULL),
(636, 'plugin::content-manager.explorer.read', 'api::schedules-day-standby.schedules-day-standby', '{\"fields\": [\"schedule\", \"groups_and_agent\", \"tipo_standby\", \"name\", \"order\", \"date\"]}', '[]', '2023-01-03 15:59:27.857000', '2023-01-03 15:59:27.857000', NULL, NULL),
(637, 'plugin::content-manager.explorer.update', 'api::schedules-day-standby.schedules-day-standby', '{\"fields\": [\"schedule\", \"groups_and_agent\", \"tipo_standby\", \"name\", \"order\", \"date\"]}', '[]', '2023-01-03 15:59:28.016000', '2023-01-03 15:59:28.016000', NULL, NULL),
(641, 'plugin::content-manager.explorer.delete', 'api::group-and-grouped-days.group-and-grouped-days', '{}', '[]', '2023-01-10 12:19:50.785000', '2023-01-10 12:19:50.785000', NULL, NULL),
(642, 'plugin::content-manager.explorer.publish', 'api::group-and-grouped-days.group-and-grouped-days', '{}', '[]', '2023-01-10 12:19:50.893000', '2023-01-10 12:19:50.893000', NULL, NULL),
(643, 'plugin::content-manager.explorer.create', 'api::group-and-grouped-days.group-and-grouped-days', '{\"fields\": [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"group\", \"order\", \"active\", \"deleted\", \"site\"]}', '[]', '2023-01-10 12:23:23.632000', '2023-01-10 12:23:23.632000', NULL, NULL),
(644, 'plugin::content-manager.explorer.read', 'api::group-and-grouped-days.group-and-grouped-days', '{\"fields\": [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"group\", \"order\", \"active\", \"deleted\", \"site\"]}', '[]', '2023-01-10 12:23:23.733000', '2023-01-10 12:23:23.733000', NULL, NULL),
(645, 'plugin::content-manager.explorer.update', 'api::group-and-grouped-days.group-and-grouped-days', '{\"fields\": [\"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"group\", \"order\", \"active\", \"deleted\", \"site\"]}', '[]', '2023-01-10 12:23:23.825000', '2023-01-10 12:23:23.825000', NULL, NULL),
(652, 'plugin::content-manager.explorer.delete', 'api::site-configuration.site-configuration', '{}', '[]', '2023-01-10 12:34:27.513000', '2023-01-10 12:34:27.513000', NULL, NULL),
(653, 'plugin::content-manager.explorer.publish', 'api::site-configuration.site-configuration', '{}', '[]', '2023-01-10 12:34:27.682000', '2023-01-10 12:34:27.682000', NULL, NULL),
(654, 'plugin::content-manager.explorer.create', 'api::site-configuration.site-configuration', '{\"fields\": [\"site\", \"turno_velada_por_orden\", \"active\", \"deleted\"]}', '[]', '2023-01-10 13:28:22.759000', '2023-01-10 13:28:22.759000', NULL, NULL),
(655, 'plugin::content-manager.explorer.read', 'api::site-configuration.site-configuration', '{\"fields\": [\"site\", \"turno_velada_por_orden\", \"active\", \"deleted\"]}', '[]', '2023-01-10 13:28:23.152000', '2023-01-10 13:28:23.152000', NULL, NULL),
(656, 'plugin::content-manager.explorer.update', 'api::site-configuration.site-configuration', '{\"fields\": [\"site\", \"turno_velada_por_orden\", \"active\", \"deleted\"]}', '[]', '2023-01-10 13:28:23.403000', '2023-01-10 13:28:23.403000', NULL, NULL),
(669, 'plugin::content-manager.explorer.create', 'api::rule-day.rule-day', '{\"fields\": [\"name\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\"]}', '[]', '2023-01-19 17:42:48.052000', '2023-01-19 17:42:48.052000', NULL, NULL),
(670, 'plugin::content-manager.explorer.read', 'api::rule-day.rule-day', '{\"fields\": [\"name\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\"]}', '[]', '2023-01-19 17:42:48.153000', '2023-01-19 17:42:48.153000', NULL, NULL),
(671, 'plugin::content-manager.explorer.update', 'api::rule-day.rule-day', '{\"fields\": [\"name\", \"monday\", \"tuesday\", \"wednesday\", \"thursday\", \"friday\", \"saturday\", \"sunday\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\"]}', '[]', '2023-01-19 17:42:48.254000', '2023-01-19 17:42:48.254000', NULL, NULL),
(678, 'plugin::content-manager.explorer.create', 'api::shift.shift', '{\"fields\": [\"time_from\", \"time_to\", \"type_of_shift\", \"lunch_time\", \"observations\", \"velada\", \"horas_extras\", \"place\", \"num_agentes_necesarios\", \"active\", \"deleted\", \"site\", \"type_of_agents\", \"soporte\", \"color\", \"monday_num_agents\", \"tuesday_num_agents\", \"wednesday_num_agents\", \"thursday_num_agents\", \"friday_num_agents\", \"saturday_num_agents\", \"sunday_num_agents\", \"name\"]}', '[]', '2023-02-12 10:14:12.422000', '2023-02-12 10:14:12.422000', NULL, NULL),
(679, 'plugin::content-manager.explorer.read', 'api::shift.shift', '{\"fields\": [\"time_from\", \"time_to\", \"type_of_shift\", \"lunch_time\", \"observations\", \"velada\", \"horas_extras\", \"place\", \"num_agentes_necesarios\", \"active\", \"deleted\", \"site\", \"type_of_agents\", \"soporte\", \"color\", \"monday_num_agents\", \"tuesday_num_agents\", \"wednesday_num_agents\", \"thursday_num_agents\", \"friday_num_agents\", \"saturday_num_agents\", \"sunday_num_agents\", \"name\"]}', '[]', '2023-02-12 10:14:12.573000', '2023-02-12 10:14:12.573000', NULL, NULL),
(680, 'plugin::content-manager.explorer.update', 'api::shift.shift', '{\"fields\": [\"time_from\", \"time_to\", \"type_of_shift\", \"lunch_time\", \"observations\", \"velada\", \"horas_extras\", \"place\", \"num_agentes_necesarios\", \"active\", \"deleted\", \"site\", \"type_of_agents\", \"soporte\", \"color\", \"monday_num_agents\", \"tuesday_num_agents\", \"wednesday_num_agents\", \"thursday_num_agents\", \"friday_num_agents\", \"saturday_num_agents\", \"sunday_num_agents\", \"name\"]}', '[]', '2023-02-12 10:14:12.766000', '2023-02-12 10:14:12.766000', NULL, NULL),
(684, 'plugin::content-manager.explorer.create', 'api::schedule.schedule', '{\"fields\": [\"date_from\", \"observations\", \"date_to\", \"internal_code\", \"production\", \"active\", \"deleted\", \"site\", \"coordinator\", \"planificado\", \"type\"]}', '[]', '2023-02-16 03:42:15.675000', '2023-02-16 03:42:15.675000', NULL, NULL),
(685, 'plugin::content-manager.explorer.read', 'api::schedule.schedule', '{\"fields\": [\"date_from\", \"observations\", \"date_to\", \"internal_code\", \"production\", \"active\", \"deleted\", \"site\", \"coordinator\", \"planificado\", \"type\"]}', '[]', '2023-02-16 03:42:15.868000', '2023-02-16 03:42:15.868000', NULL, NULL),
(686, 'plugin::content-manager.explorer.update', 'api::schedule.schedule', '{\"fields\": [\"date_from\", \"observations\", \"date_to\", \"internal_code\", \"production\", \"active\", \"deleted\", \"site\", \"coordinator\", \"planificado\", \"type\"]}', '[]', '2023-02-16 03:42:16.009000', '2023-02-16 03:42:16.009000', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(687, 'plugin::content-manager.explorer.create', 'api::site.site', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"type\"]}', '[]', '2023-02-16 03:43:36.315000', '2023-02-16 03:43:36.315000', NULL, NULL),
(688, 'plugin::content-manager.explorer.read', 'api::site.site', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"type\"]}', '[]', '2023-02-16 03:43:36.519000', '2023-02-16 03:43:36.519000', NULL, NULL),
(689, 'plugin::content-manager.explorer.update', 'api::site.site', '{\"fields\": [\"name\", \"internal_code\", \"observations\", \"active\", \"deleted\", \"type\"]}', '[]', '2023-02-16 03:43:36.858000', '2023-02-16 03:43:36.858000', NULL, NULL),
(690, 'plugin::content-manager.explorer.create', 'api::schedules-day-turn.schedules-day-turn', '{\"fields\": [\"date\", \"shift\", \"schedule\", \"time_from\", \"time_to\", \"agentes_necesarios\", \"groups_and_agents\", \"lunch_time\", \"velada\", \"horas_extras\", \"place\", \"agents\", \"soporte\", \"color\", \"name\", \"holiday\"]}', '[]', '2023-02-20 14:47:20.771000', '2023-02-20 14:47:20.771000', NULL, NULL),
(691, 'plugin::content-manager.explorer.read', 'api::schedules-day-turn.schedules-day-turn', '{\"fields\": [\"date\", \"shift\", \"schedule\", \"time_from\", \"time_to\", \"agentes_necesarios\", \"groups_and_agents\", \"lunch_time\", \"velada\", \"horas_extras\", \"place\", \"agents\", \"soporte\", \"color\", \"name\", \"holiday\"]}', '[]', '2023-02-20 14:47:20.939000', '2023-02-20 14:47:20.939000', NULL, NULL),
(692, 'plugin::content-manager.explorer.update', 'api::schedules-day-turn.schedules-day-turn', '{\"fields\": [\"date\", \"shift\", \"schedule\", \"time_from\", \"time_to\", \"agentes_necesarios\", \"groups_and_agents\", \"lunch_time\", \"velada\", \"horas_extras\", \"place\", \"agents\", \"soporte\", \"color\", \"name\", \"holiday\"]}', '[]', '2023-02-20 14:47:21.064000', '2023-02-20 14:47:21.064000', NULL, NULL),
(693, 'plugin::content-manager.explorer.create', 'api::schedules-day-hextra.schedules-day-hextra', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"observations\", \"deleted\", \"groups_and_agent\", \"shift\", \"agents\", \"lunch_time\"]}', '[]', '2023-02-20 14:48:56.981000', '2023-02-20 14:48:56.981000', NULL, NULL),
(694, 'plugin::content-manager.explorer.read', 'api::schedules-day-hextra.schedules-day-hextra', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"observations\", \"deleted\", \"groups_and_agent\", \"shift\", \"agents\", \"lunch_time\"]}', '[]', '2023-02-20 14:48:57.116000', '2023-02-20 14:48:57.116000', NULL, NULL),
(695, 'plugin::content-manager.explorer.update', 'api::schedules-day-hextra.schedules-day-hextra', '{\"fields\": [\"schedule\", \"date\", \"time_from\", \"time_to\", \"observations\", \"deleted\", \"groups_and_agent\", \"shift\", \"agents\", \"lunch_time\"]}', '[]', '2023-02-20 14:48:57.216000', '2023-02-20 14:48:57.216000', NULL, NULL),
(696, 'plugin::content-manager.explorer.create', 'api::module.module', '{\"fields\": [\"name\", \"observations\", \"code\"]}', '[]', '2023-04-17 10:10:13.152000', '2023-04-17 10:10:13.152000', NULL, NULL),
(697, 'plugin::content-manager.explorer.create', 'api::rol.rol', '{\"fields\": [\"name\", \"observations\", \"active\", \"deleted\"]}', '[]', '2023-04-17 10:10:13.220000', '2023-04-17 10:10:13.220000', NULL, NULL),
(698, 'plugin::content-manager.explorer.read', 'api::module.module', '{\"fields\": [\"name\", \"observations\", \"code\"]}', '[]', '2023-04-17 10:10:13.298000', '2023-04-17 10:10:13.298000', NULL, NULL),
(699, 'plugin::content-manager.explorer.read', 'api::rol.rol', '{\"fields\": [\"name\", \"observations\", \"active\", \"deleted\"]}', '[]', '2023-04-17 10:10:13.389000', '2023-04-17 10:10:13.389000', NULL, NULL),
(700, 'plugin::content-manager.explorer.update', 'api::module.module', '{\"fields\": [\"name\", \"observations\", \"code\"]}', '[]', '2023-04-17 10:10:13.456000', '2023-04-17 10:10:13.456000', NULL, NULL),
(701, 'plugin::content-manager.explorer.update', 'api::rol.rol', '{\"fields\": [\"name\", \"observations\", \"active\", \"deleted\"]}', '[]', '2023-04-17 10:10:13.533000', '2023-04-17 10:10:13.533000', NULL, NULL),
(702, 'plugin::content-manager.explorer.create', 'api::coordinator.coordinator', '{\"fields\": [\"names\", \"observations\", \"surnames\", \"identification\", \"email\", \"phone\", \"active\", \"deleted\", \"password\", \"login_nl\", \"username\", \"sites\", \"access_system\", \"rol\"]}', '[]', '2023-04-17 10:12:05.926000', '2023-04-17 10:12:05.926000', NULL, NULL),
(703, 'plugin::content-manager.explorer.read', 'api::coordinator.coordinator', '{\"fields\": [\"names\", \"observations\", \"surnames\", \"identification\", \"email\", \"phone\", \"active\", \"deleted\", \"password\", \"login_nl\", \"username\", \"sites\", \"access_system\", \"rol\"]}', '[]', '2023-04-17 10:12:06.003000', '2023-04-17 10:12:06.003000', NULL, NULL),
(704, 'plugin::content-manager.explorer.update', 'api::coordinator.coordinator', '{\"fields\": [\"names\", \"observations\", \"surnames\", \"identification\", \"email\", \"phone\", \"active\", \"deleted\", \"password\", \"login_nl\", \"username\", \"sites\", \"access_system\", \"rol\"]}', '[]', '2023-04-17 10:12:06.150000', '2023-04-17 10:12:06.150000', NULL, NULL),
(705, 'plugin::content-manager.explorer.create', 'api::rule-hour.rule-hour', '{\"fields\": [\"name\", \"time_from\", \"time_to\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\", \"type_rule\", \"places\"]}', '[]', '2023-07-15 03:31:32.944000', '2023-07-15 03:31:32.944000', NULL, NULL),
(706, 'plugin::content-manager.explorer.read', 'api::rule-hour.rule-hour', '{\"fields\": [\"name\", \"time_from\", \"time_to\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\", \"type_rule\", \"places\"]}', '[]', '2023-07-15 03:31:32.956000', '2023-07-15 03:31:32.956000', NULL, NULL),
(707, 'plugin::content-manager.explorer.update', 'api::rule-hour.rule-hour', '{\"fields\": [\"name\", \"time_from\", \"time_to\", \"observations\", \"active\", \"deleted\", \"site\", \"order\", \"skip_order_group\", \"type_rule\", \"places\"]}', '[]', '2023-07-15 03:31:32.963000', '2023-07-15 03:31:32.963000', NULL, NULL),
(708, 'plugin::content-manager.explorer.create', 'api::holiday.holiday', '{\"fields\": [\"name\", \"date\", \"type_of_holiday\", \"observations\", \"active\", \"deleted\", \"sites\"]}', '[]', '2023-07-15 03:48:35.800000', '2023-07-15 03:48:35.800000', NULL, NULL),
(709, 'plugin::content-manager.explorer.read', 'api::holiday.holiday', '{\"fields\": [\"name\", \"date\", \"type_of_holiday\", \"observations\", \"active\", \"deleted\", \"sites\"]}', '[]', '2023-07-15 03:48:35.808000', '2023-07-15 03:48:35.808000', NULL, NULL),
(710, 'plugin::content-manager.explorer.update', 'api::holiday.holiday', '{\"fields\": [\"name\", \"date\", \"type_of_holiday\", \"observations\", \"active\", \"deleted\", \"sites\"]}', '[]', '2023-07-15 03:48:35.817000', '2023-07-15 03:48:35.817000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(64, 1),
(65, 1),
(69, 1),
(70, 1),
(77, 1),
(78, 1),
(82, 1),
(83, 1),
(87, 1),
(88, 1),
(92, 1),
(93, 1),
(97, 1),
(98, 1),
(102, 1),
(103, 1),
(107, 1),
(108, 1),
(112, 1),
(113, 1),
(117, 1),
(118, 1),
(122, 1),
(123, 1),
(132, 1),
(133, 1),
(137, 1),
(138, 1),
(142, 1),
(143, 1),
(147, 1),
(148, 1),
(158, 1),
(159, 1),
(163, 1),
(164, 1),
(189, 1),
(190, 1),
(197, 1),
(198, 1),
(223, 1),
(224, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(287, 1),
(289, 1),
(290, 1),
(292, 1),
(299, 1),
(300, 1),
(301, 1),
(305, 1),
(306, 1),
(307, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(445, 1),
(446, 1),
(447, 1),
(457, 1),
(458, 1),
(462, 1),
(463, 1),
(464, 1),
(465, 1),
(466, 1),
(467, 1),
(468, 1),
(472, 1),
(473, 1),
(477, 1),
(478, 1),
(485, 1),
(486, 1),
(505, 1),
(506, 1),
(510, 1),
(511, 1),
(512, 1),
(522, 1),
(523, 1),
(524, 1),
(531, 1),
(532, 1),
(533, 1),
(534, 1),
(535, 1),
(536, 1),
(540, 1),
(541, 1),
(542, 1),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(551, 1),
(558, 1),
(559, 1),
(560, 1),
(561, 1),
(562, 1),
(563, 1),
(570, 1),
(571, 1),
(572, 1),
(573, 1),
(574, 1),
(575, 1),
(585, 1),
(586, 1),
(587, 1),
(591, 1),
(592, 1),
(593, 1),
(606, 1),
(607, 1),
(608, 1),
(609, 1),
(610, 1),
(611, 1),
(612, 1),
(613, 1),
(614, 1),
(615, 1),
(616, 1),
(617, 1),
(618, 1),
(619, 1),
(620, 1),
(621, 1),
(625, 1),
(626, 1),
(630, 1),
(631, 1),
(632, 1),
(633, 1),
(634, 1),
(635, 1),
(636, 1),
(637, 1),
(641, 1),
(642, 1),
(643, 1),
(644, 1),
(645, 1),
(652, 1),
(653, 1),
(654, 1),
(655, 1),
(656, 1),
(669, 1),
(670, 1),
(671, 1),
(678, 1),
(679, 1),
(680, 1),
(684, 1),
(685, 1),
(686, 1),
(687, 1),
(688, 1),
(689, 1),
(690, 1),
(691, 1),
(692, 1),
(693, 1),
(694, 1),
(695, 1),
(696, 1),
(697, 1),
(698, 1),
(699, 1),
(700, 1),
(701, 1),
(702, 1),
(703, 1),
(704, 1),
(705, 1),
(706, 1),
(707, 1),
(708, 1),
(709, 1),
(710, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-08-11 02:59:25.067000', '2022-08-11 02:59:25.067000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-08-11 02:59:27.174000', '2022-08-11 02:59:27.174000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-08-11 02:59:30.707000', '2022-08-11 02:59:30.707000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'SUPERADMIN', 'NL', NULL, 'superadmin@nl.com', '$2a$10$PShpxiHmKhyeWzMjWUYe9u6xce6d5zqWsmnh/uZyM8J3BOPBJgF.S', NULL, NULL, 1, 0, NULL, '2022-08-11 03:01:05.801000', '2022-08-11 03:01:05.801000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes_necesarios_por_dia_por_turnos`
--

CREATE TABLE `agentes_necesarios_por_dia_por_turnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `agentes_necesarios` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes_necesarios_por_dia_por_turnos_shift_links`
--

CREATE TABLE `agentes_necesarios_por_dia_por_turnos_shift_links` (
  `agentes_necesarios_por_dia_por_turno_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agentes_necesarios_por_dia_por_turnos_site_links`
--

CREATE TABLE `agentes_necesarios_por_dia_por_turnos_site_links` (
  `agentes_necesarios_por_dia_por_turno_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents`
--

CREATE TABLE `agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surnames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents_area_links`
--

CREATE TABLE `agents_area_links` (
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents_city_links`
--

CREATE TABLE `agents_city_links` (
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents_coordinator_links`
--

CREATE TABLE `agents_coordinator_links` (
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents_site_links`
--

CREATE TABLE `agents_site_links` (
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agents_type_of_agent_links`
--

CREATE TABLE `agents_type_of_agent_links` (
  `agent_id` int(10) UNSIGNED DEFAULT NULL,
  `type_of_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_site_links`
--

CREATE TABLE `areas_site_links` (
  `area_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities_region_links`
--

CREATE TABLE `cities_region_links` (
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `region_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_horas_nocturnas`
--

CREATE TABLE `configuracion_horas_nocturnas` (
  `id` int(10) UNSIGNED NOT NULL,
  `hora_desde` time(3) DEFAULT NULL,
  `hora_hasta` time(3) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracion_horas_nocturnas`
--

INSERT INTO `configuracion_horas_nocturnas` (`id`, `hora_desde`, `hora_hasta`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `active`, `deleted`) VALUES
(5, '19:00:00.000', '06:00:00.000', '2022-12-21 18:09:29.669000', '2022-12-21 18:17:03.882000', '2022-12-21 18:09:29.665000', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_horas_nocturnas_area_links`
--

CREATE TABLE `configuracion_horas_nocturnas_area_links` (
  `configuracion_horas_nocturna_id` int(10) UNSIGNED DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_horas_nocturnas_site_links`
--

CREATE TABLE `configuracion_horas_nocturnas_site_links` (
  `configuracion_horas_nocturna_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion_logins`
--

CREATE TABLE `configuracion_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configuracion_logins`
--

INSERT INTO `configuracion_logins` (`id`, `url`, `active`, `deleted`, `observations`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'http://172.24.66.5/ldap/controller/issabel.php', 1, 0, 'LOGIN PROD EN SERVIDOR UBUNTU', '2022-12-06 18:01:44.139000', '2023-06-05 16:25:04.330000', '2022-12-06 18:01:45.644000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(10) UNSIGNED NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surnames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_nl` tinyint(1) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_system` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coordinators`
--

INSERT INTO `coordinators` (`id`, `names`, `observations`, `surnames`, `identification`, `email`, `phone`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `active`, `deleted`, `password`, `login_nl`, `username`, `access_system`) VALUES
(1, 'Pablo', '', 'Garcia', '', 'pgarcia@netlife.net.ec', NULL, '2022-08-23 18:46:53.521000', '2022-12-21 17:11:39.496000', '2022-08-23 18:46:54.563000', 1, 1, 1, 1, '$2a$10$DmXBMLAP5RO8D6OTZMO7ZuBJItu0tO7XykDM8ftI2fB4nt9Rmi5nK', 0, 'pgarcia', NULL),
(2, 'Gabriela ', NULL, 'Fonseca', NULL, 'gafonseca@netlife.net.ec', NULL, '2022-08-23 18:47:16.939000', '2023-06-06 17:29:03.738000', '2022-08-23 18:47:18.055000', 1, 1, 1, 0, '$2a$10$bgcvxdthQbGzj5TUGJqlk.yJ5QwlL6RPgjzSC.mG7HCiWcg7s2m/e', 1, 'gafonseca', NULL),
(3, 'Veronica', NULL, 'Ochoa', NULL, 'vochoa@netlife.net.ec', NULL, '2022-08-23 18:47:30.927000', '2023-06-21 00:57:18.184000', '2022-08-23 18:47:31.885000', 1, 1, 1, 0, '$2a$10$qMyCalA5E8bzq6kUyGfXpeyE6pCX.GZIOmz.MfsgFjeLvi3xhMTgu', 1, 'vochoa', NULL),
(4, 'Ricardo', NULL, 'Zapata', NULL, 'rzapata@netlife.net.ec', NULL, '2022-08-23 18:47:30.927000', '2023-08-21 16:30:38.520000', '2022-08-23 18:47:31.885000', 1, 1, 1, 0, '$2a$10$bTAIlJeK0j8/6Briuw4iQORFYNpd8ug/HfHBC.jkc9CG/vYcrihL6', 1, 'rzapata', NULL),
(5, 'Marcela', NULL, 'Tapia', NULL, 'mtapia@netlife.net.ec', NULL, '2022-11-17 00:37:55.006000', '2023-06-06 17:30:40.830000', '2022-11-17 00:37:55.914000', 1, 1, 1, 0, '$2a$10$m6uZ0mISMjXxRQoIKItKQ.m1YX/IEkMvZ8cyr9SHS/Yn9FeIoH4k6', 1, 'mtapia', NULL),
(6, 'Guillermo', '', 'Puig', '0930899463', 'gpuig97@gmail.com', '0967041388', '2022-11-17 12:54:06.056000', '2023-07-15 03:55:31.665000', '2022-11-17 12:54:06.053000', NULL, 1, 1, 0, '$2a$10$6PTgKTRMUsJpqFcDP9yQUesdi5Y/891KesQlFAn4y38kwBZp/aBf.', 0, 'gpuig', NULL),
(8, 'Luis', NULL, 'Pazmiño', '222222', 'lpazmino@netlife.net.ec', NULL, '2022-12-01 08:15:33.991000', '2022-12-29 16:39:01.480000', '2022-12-01 08:15:37.891000', 1, 1, 1, 1, '$2a$10$qAzwnWxsD.PMT3v/GEOgoOU4vfv6bJ0cNIAiNwuqRap5sm/4l3M06', 1, 'lpazmino', NULL),
(13, 'CARLOS', '', ' PUIG', '0906318142', 'cpuig92@gmail.com', '0986562990', '2022-12-21 16:38:53.842000', '2022-12-29 16:38:55.218000', '2022-12-21 16:38:53.839000', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL),
(14, 'Pablo', '', 'Garcia', '', 'pgarcia@netlife.net.ec', '', '2022-12-21 17:12:01.962000', '2023-06-05 19:00:47.447000', '2022-12-21 17:12:01.956000', NULL, 1, 1, 0, NULL, 1, 'pgarcia', NULL),
(15, 'Alexis', NULL, 'Figueroa', NULL, 'apfigueroa@netlife.net.ec', '123456', '2022-12-28 10:56:03.413000', '2023-06-17 19:47:08.652000', '2022-12-28 10:56:06.568000', 1, 1, 1, 1, '$2a$10$fk5.cXIwjghwIW9WprnCLO8j1qSwJCFTfoxWqnJlcLqZTGP5vYO3m', 1, 'apfigueroa', NULL),
(16, 'Victor', '', 'Yepez', '', 'vyepez@netlife.net.ec', '', '2023-01-12 17:04:10.182000', '2023-06-21 02:12:37.717000', '2023-01-12 17:04:10.179000', NULL, 1, 1, 1, NULL, 1, 'vyepez', NULL),
(17, 'Kelvin', '', 'Ponce', '', 'kiponce@netlife.net.ec', '', '2023-01-12 17:06:09.455000', '2023-06-30 20:57:55.660000', '2023-01-12 17:06:09.453000', NULL, 1, 1, 0, NULL, 1, 'kiponce', NULL),
(18, 'Darwin', '', 'Almeida', '', 'dalmeida@netlife.net.ec', '', '2023-01-13 05:52:29.676000', '2023-06-06 17:31:41.476000', '2023-01-13 05:52:29.674000', NULL, 1, 1, 0, NULL, 1, 'dalmeida', NULL),
(19, 'Efren', 'Test', 'Villegas', '', 'evillegas@netlife.net.ec', '', '2023-01-18 12:35:34.351000', '2023-06-17 19:45:40.835000', '2023-01-18 12:35:34.344000', NULL, 1, 1, 1, NULL, NULL, 'evillegas', NULL),
(20, 'JUAN CARLOS', '', 'LEON GRANJA', '', 'jcleon@netlife.net.ec', '', '2023-02-11 17:43:16.201000', '2023-06-06 17:27:53.145000', '2023-02-11 17:43:16.199000', NULL, 1, 1, 1, NULL, 1, 'jcleon', NULL),
(21, 'KAROL', '', 'CEVALLOS', '', 'kcevallos@netlife.net.ec', '', '2023-04-17 11:12:16.990000', '2023-06-06 17:31:25.073000', '2023-04-17 11:12:16.986000', NULL, 1, 1, 0, NULL, 1, 'kcevallos', NULL),
(22, 'Dario', '', 'Perez', '', 'daperez@netlife.net.ec', '', '2023-06-06 03:43:19.621000', '2023-06-06 12:08:58.176000', '2023-06-06 03:43:19.610000', NULL, NULL, 1, 1, NULL, NULL, 'daperez', NULL),
(23, 'Dario', '', 'Perez', '', 'daperez@netlife.net.ec', '', '2023-06-06 03:43:30.490000', '2023-06-06 03:43:56.782000', '2023-06-06 03:43:30.486000', NULL, NULL, 1, 1, NULL, NULL, 'daperez', NULL),
(24, 'Dario', '', 'Perez', '', 'daperez@netlife.net.ec', '', '2023-06-06 17:28:31.685000', '2023-06-20 21:44:10.315000', '2023-06-06 17:28:31.681000', NULL, NULL, 1, 0, NULL, NULL, 'daperez', NULL),
(25, 'Alejandro', NULL, 'Ramos', NULL, 'ajramosg@netlife.com.ec', NULL, '2023-06-14 17:26:55.061000', '2023-06-14 17:26:57.214000', '2023-06-14 17:26:57.210000', 1, 1, 1, 0, '$2a$10$fX.FdtuuzXf16VIxWpr.vureUZcaFhbXZ6OrB352fPO8vmgsd.h5W', 1, 'ajramosg', 1),
(26, 'Efren', NULL, 'Villegas', NULL, 'evillegas@netlife.net.ec', '12345', '2023-06-17 19:45:16.254000', '2023-06-17 19:48:15.885000', NULL, 1, 1, 1, 1, NULL, 1, 'evillegas', NULL),
(27, 'Paul', NULL, 'Quinde', NULL, 'paquinde@netlife.net.ec', '123455', '2023-06-17 19:46:19.022000', '2023-06-17 20:03:55.807000', '2023-06-17 19:49:28.742000', 1, 1, 1, 1, '$2a$10$CrIlOsoRDqNOSlEjgR7Lb.HoHCAMd.zIucoyBmoz06xiq1W8/0Z1O', 1, 'paquinde', NULL),
(28, 'Tomas', '', 'Guijo', '', 'tguijo@netlife.net.ec', '', '2023-06-20 15:01:18.733000', '2023-07-17 15:15:28.898000', '2023-06-20 15:01:18.722000', NULL, NULL, 1, 0, NULL, NULL, 'tguijo', NULL),
(29, 'Lisbeth', '', 'Yambay', '', 'lyambay@netlife.net.ec', '', '2023-06-21 02:01:15.326000', '2023-06-21 02:01:15.326000', '2023-06-21 02:01:15.318000', NULL, NULL, 1, 0, NULL, NULL, 'lyambay', NULL),
(30, 'Cristian', '', 'Gutierrez', '', 'cgutierrez@netlife.net.ec', '', '2023-06-21 02:12:13.431000', '2023-06-21 02:12:13.431000', '2023-06-21 02:12:13.425000', NULL, NULL, 1, 0, NULL, NULL, 'cgutierrez', NULL),
(31, 'FAUSTO', '', 'ZAMBRANO', '', 'fxzambrano@netlife.net.ec', '', '2023-07-17 17:02:21.848000', '2023-07-17 17:02:21.848000', '2023-07-17 17:02:21.839000', NULL, NULL, 1, 0, NULL, NULL, 'fxzambrano', NULL),
(32, 'Alexis', '', 'Figueroa', '', 'apfigueroa@netlife.net.ec', '', '2023-08-02 16:20:34.650000', '2023-08-02 16:20:34.650000', '2023-08-02 16:20:34.634000', NULL, NULL, 1, 0, NULL, NULL, 'apfigueroa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinators_rol_links`
--

CREATE TABLE `coordinators_rol_links` (
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL,
  `rol_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coordinators_rol_links`
--

INSERT INTO `coordinators_rol_links` (`coordinator_id`, `rol_id`) VALUES
(14, 1),
(23, 2),
(2, 2),
(5, 2),
(16, 2),
(21, 2),
(18, 2),
(25, 1),
(19, 1),
(15, 1),
(26, 1),
(27, 1),
(24, 2),
(3, 2),
(29, 2),
(30, 2),
(17, 2),
(6, 1),
(28, 2),
(31, 2),
(32, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinators_sites_links`
--

CREATE TABLE `coordinators_sites_links` (
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coordinators_sites_links`
--

INSERT INTO `coordinators_sites_links` (`coordinator_id`, `site_id`) VALUES
(1, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(14, 4),
(14, 9),
(20, 9),
(22, 2),
(22, 4),
(22, 9),
(23, 2),
(23, 4),
(23, 9),
(2, 5),
(2, 2),
(2, 4),
(2, 9),
(5, 3),
(16, 11),
(21, 11),
(18, 8),
(18, 11),
(25, 7),
(25, 1),
(19, 1),
(15, 1),
(15, 2),
(15, 6),
(15, 5),
(15, 9),
(26, 1),
(26, 3),
(26, 9),
(26, 4),
(27, 1),
(27, 3),
(27, 2),
(27, 4),
(24, 1),
(24, 13),
(3, 3),
(3, 14),
(29, 15),
(30, 16),
(17, 12),
(17, 17),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 9),
(6, 16),
(6, 11),
(6, 12),
(6, 13),
(6, 15),
(6, 14),
(6, 17),
(28, 11),
(31, 12),
(31, 17),
(32, 11),
(4, 4),
(4, 5),
(4, 2),
(4, 9),
(4, 3),
(4, 1),
(4, 14),
(4, 15),
(4, 16),
(4, 12),
(4, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dates_available_by_agents`
--

CREATE TABLE `dates_available_by_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dates_available_by_agents_agent_links`
--

CREATE TABLE `dates_available_by_agents_agent_links` (
  `dates_available_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dates_available_by_agents_site_links`
--

CREATE TABLE `dates_available_by_agents_site_links` (
  `dates_available_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_agents` int(11) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `monday_order` int(11) DEFAULT NULL,
  `tuesday_order` int(11) DEFAULT NULL,
  `wednesday_order` int(11) DEFAULT NULL,
  `thursday_order` int(11) DEFAULT NULL,
  `friday_order` int(11) DEFAULT NULL,
  `saturday_order` int(11) DEFAULT NULL,
  `sunday_order` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `view_monday_rest` tinyint(1) DEFAULT NULL,
  `view_tuesday_rest` tinyint(1) DEFAULT NULL,
  `view_wednesday_rest` tinyint(1) DEFAULT NULL,
  `view_thursday_rest` tinyint(1) DEFAULT NULL,
  `view_friday_rest` tinyint(1) DEFAULT NULL,
  `view_saturday_rest` tinyint(1) DEFAULT NULL,
  `view_sunday_rest` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents`
--

CREATE TABLE `groups_and_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_agents_links`
--

CREATE TABLE `groups_and_agents_agents_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_group_links`
--

CREATE TABLE `groups_and_agents_group_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_place_links`
--

CREATE TABLE `groups_and_agents_place_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_rules_day_links`
--

CREATE TABLE `groups_and_agents_rules_day_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `rule_day_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_rules_hour_links`
--

CREATE TABLE `groups_and_agents_rules_hour_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `rule_hour_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_and_agents_site_links`
--

CREATE TABLE `groups_and_agents_site_links` (
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_area_links`
--

CREATE TABLE `groups_area_links` (
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups_site_links`
--

CREATE TABLE `groups_site_links` (
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_and_grouped_day`
--

CREATE TABLE `group_and_grouped_day` (
  `id` int(10) UNSIGNED NOT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_and_grouped_day_group_links`
--

CREATE TABLE `group_and_grouped_day_group_links` (
  `group_and_grouped_days_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_and_grouped_day_site_links`
--

CREATE TABLE `group_and_grouped_day_site_links` (
  `group_and_grouped_days_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holidays_sites_links`
--

CREATE TABLE `holidays_sites_links` (
  `holiday_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `holidays_type_of_holiday_links`
--

CREATE TABLE `holidays_type_of_holiday_links` (
  `holiday_id` int(10) UNSIGNED DEFAULT NULL,
  `type_of_holiday_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `isabel_call_bases`
--

CREATE TABLE `isabel_call_bases` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` time(3) DEFAULT NULL,
  `cabinas_6022_manejadas` int(11) DEFAULT NULL,
  `soporte_5900_manejadas` int(11) DEFAULT NULL,
  `cabinas_6022_abandonadas` int(11) DEFAULT NULL,
  `soporte_5900_abandonadas` int(11) DEFAULT NULL,
  `atc_6028_manejadas` int(11) DEFAULT NULL,
  `cobranzas_5903_manejadas` int(11) DEFAULT NULL,
  `atc_6028_abandonadas` int(11) DEFAULT NULL,
  `cobranzas_5903_abandonadas` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `manejadas` int(11) DEFAULT NULL,
  `abandonadas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `isabel_call_bases_area_links`
--

CREATE TABLE `isabel_call_bases_area_links` (
  `isabel_call_base_id` int(10) UNSIGNED DEFAULT NULL,
  `area_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `name`, `code`, `observations`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Roles', 'rols', NULL, '2023-04-17 09:13:27.846000', '2023-04-17 09:13:28.709000', '2023-04-17 09:13:28.706000', 1, 1),
(2, 'Canales', 'sites', NULL, '2023-04-17 09:13:42.562000', '2023-04-17 09:13:43.579000', '2023-04-17 09:13:43.578000', 1, 1),
(3, 'Regiones', 'regions', NULL, '2023-04-17 09:13:52.673000', '2023-04-17 09:13:53.459000', '2023-04-17 09:13:53.457000', 1, 1),
(4, 'Ciudades', 'cities', NULL, '2023-04-17 09:14:04.232000', '2023-04-17 09:14:05.111000', '2023-04-17 09:14:05.108000', 1, 1),
(5, 'Tipos de Feriados', 'types-of-holidays', NULL, '2023-04-17 09:14:26.541000', '2023-04-17 09:14:29.512000', '2023-04-17 09:14:29.510000', 1, 1),
(6, 'Feriados', 'holidays', NULL, '2023-04-17 09:14:39.669000', '2023-04-17 09:14:42.171000', '2023-04-17 09:14:42.169000', 1, 1),
(7, 'Config. Horas Nocturnas', 'configuracion-horas-nocturnas', NULL, '2023-04-17 09:14:59.067000', '2023-04-17 09:15:00.619000', '2023-04-17 09:15:00.618000', 1, 1),
(8, 'Coordinadores', 'coordinators', NULL, '2023-04-17 09:15:10.178000', '2023-04-17 09:15:12.938000', '2023-04-17 09:15:12.935000', 1, 1),
(9, 'Áreas', 'areas', NULL, '2023-04-17 09:15:22.682000', '2023-04-17 09:15:23.640000', '2023-04-17 09:15:23.636000', 1, 1),
(10, 'Lugares', 'places', NULL, '2023-04-17 09:15:38.813000', '2023-04-17 09:15:40.028000', '2023-04-17 09:15:40.027000', 1, 1),
(11, 'Grupos', 'groups', NULL, '2023-04-17 09:15:49.993000', '2023-04-17 09:15:50.750000', '2023-04-17 09:15:50.748000', 1, 1),
(12, 'Agrupación de Dias de descanso por Grupo', 'group-and-grouped-day', NULL, '2023-04-17 09:16:32.375000', '2023-04-17 09:16:33.843000', '2023-04-17 09:16:33.841000', 1, 1),
(13, 'Configuración del Sitio', 'site-configurations', NULL, '2023-04-17 09:16:47.119000', '2023-04-17 09:16:47.884000', '2023-04-17 09:16:47.882000', 1, 1),
(14, 'Tipo de Agentes', 'type_of_agents', NULL, '2023-04-17 09:17:00.916000', '2023-04-17 09:17:01.817000', '2023-04-17 09:17:01.816000', 1, 1),
(15, 'Tipo de Turnos', 'type-of-shifts', NULL, '2023-04-17 09:17:14.854000', '2023-04-17 09:17:15.705000', '2023-04-17 09:17:15.703000', 1, 1),
(16, 'Turnos', 'shifts', NULL, '2023-04-17 09:17:26.831000', '2023-04-17 09:17:43.852000', '2023-04-17 09:17:43.849000', 1, 1),
(18, 'Agentes', 'agents', NULL, '2023-04-17 09:18:05.520000', '2023-04-17 09:18:06.252000', '2023-04-17 09:18:06.251000', 1, 1),
(19, 'Reglas por Día de la semana', 'rules-days', NULL, '2023-04-17 09:18:18.948000', '2023-04-17 09:18:19.671000', '2023-04-17 09:18:19.669000', 1, 1),
(20, 'Reglas por rango de Horas', 'rules-hours', NULL, '2023-04-17 09:18:31.923000', '2023-04-17 09:18:32.667000', '2023-04-17 09:18:32.663000', 1, 1),
(21, 'Días no disponible por Agentes', 'unavailable-dates-by-agents', NULL, '2023-04-17 09:18:52.646000', '2023-04-17 09:18:53.442000', '2023-04-17 09:18:53.439000', 1, 1),
(22, 'Vacaciones por Agente', 'vacation-date-by-agents', NULL, '2023-04-17 09:19:05.071000', '2023-04-17 09:19:05.780000', '2023-04-17 09:19:05.778000', 1, 1),
(23, 'Importar Registros de Atención', 'importar-registros-de-atencion', NULL, '2023-04-17 09:19:21.211000', '2023-04-17 09:19:22.349000', '2023-04-17 09:19:22.346000', 1, 1),
(24, 'Tipo Líderes', 'tipo-liders', NULL, '2023-04-17 09:19:35.073000', '2023-04-17 09:19:35.936000', '2023-04-17 09:19:35.934000', 1, 1),
(25, 'Tipo StandBy', 'tipo-standbies', NULL, '2023-04-17 09:19:53.516000', '2023-04-17 09:19:54.225000', '2023-04-17 09:19:54.223000', 1, 1),
(26, 'Grupos y Agentes', 'groups-and-agents', NULL, '2023-04-17 09:20:07.517000', '2023-04-17 09:20:08.480000', '2023-04-17 09:20:08.479000', 1, 1),
(27, 'Planificación de Horario', 'schedules', NULL, '2023-04-17 09:20:29.544000', '2023-04-17 09:20:50.769000', '2023-04-17 09:20:30.777000', 1, 1),
(28, 'Horario Final', 'schedules-final', NULL, '2023-04-17 09:21:01.756000', '2023-04-17 09:21:02.448000', '2023-04-17 09:21:02.446000', 1, 1),
(29, 'Reporte de Horas por Agente', 'reporte-horas-agentes', NULL, '2023-04-17 09:21:12.518000', '2023-04-17 09:21:13.366000', '2023-04-17 09:21:13.364000', 1, 1),
(30, 'Reporte de Horas por Agente por Día', 'reporte-horas-agentes-por-dia', NULL, '2023-04-17 09:21:28.209000', '2023-04-17 09:21:28.949000', '2023-04-17 09:21:28.947000', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(10) UNSIGNED NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `create`, `read`, `update`, `delete`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 1, 1, 1, 1, '2023-04-17 10:14:06.114000', '2023-04-17 10:14:06.114000', '2023-04-17 10:14:06.110000', NULL, NULL),
(2, 1, 1, 1, 1, '2023-04-17 10:14:06.127000', '2023-04-17 10:14:06.127000', '2023-04-17 10:14:06.125000', NULL, NULL),
(3, 1, 1, 1, 1, '2023-04-17 10:14:06.606000', '2023-04-17 10:14:06.606000', '2023-04-17 10:14:06.604000', NULL, NULL),
(4, 1, 1, 1, 1, '2023-04-17 10:14:06.611000', '2023-04-17 10:14:06.611000', '2023-04-17 10:14:06.610000', NULL, NULL),
(5, 1, 1, 1, 1, '2023-04-17 10:14:06.617000', '2023-04-17 10:14:06.617000', '2023-04-17 10:14:06.616000', NULL, NULL),
(6, 1, 1, 1, 1, '2023-04-17 10:14:06.624000', '2023-04-17 10:14:06.624000', '2023-04-17 10:14:06.623000', NULL, NULL),
(7, 1, 1, 1, 1, '2023-04-17 10:14:06.820000', '2023-04-17 10:14:06.820000', '2023-04-17 10:14:06.817000', NULL, NULL),
(8, 1, 1, 1, 1, '2023-04-17 10:14:06.906000', '2023-04-17 10:14:06.906000', '2023-04-17 10:14:06.904000', NULL, NULL),
(9, 1, 1, 1, 1, '2023-04-17 10:14:07.067000', '2023-04-17 10:14:07.067000', '2023-04-17 10:14:07.065000', NULL, NULL),
(10, 1, 1, 1, 1, '2023-04-17 10:14:07.195000', '2023-04-17 10:14:07.195000', '2023-04-17 10:14:07.194000', NULL, NULL),
(11, 1, 1, 1, 1, '2023-04-17 10:14:07.248000', '2023-04-17 10:14:07.248000', '2023-04-17 10:14:07.247000', NULL, NULL),
(12, 1, 1, 1, 1, '2023-04-17 10:14:07.294000', '2023-04-17 10:14:07.294000', '2023-04-17 10:14:07.292000', NULL, NULL),
(13, 1, 1, 1, 1, '2023-04-17 10:14:07.395000', '2023-04-17 10:14:07.395000', '2023-04-17 10:14:07.391000', NULL, NULL),
(14, 1, 1, 1, 1, '2023-04-17 10:14:07.434000', '2023-04-17 10:14:07.434000', '2023-04-17 10:14:07.432000', NULL, NULL),
(15, 1, 1, 1, 1, '2023-04-17 10:14:07.542000', '2023-04-17 10:14:07.542000', '2023-04-17 10:14:07.539000', NULL, NULL),
(16, 1, 1, 1, 1, '2023-04-17 10:14:07.705000', '2023-04-17 10:14:07.705000', '2023-04-17 10:14:07.704000', NULL, NULL),
(18, 1, 1, 1, 1, '2023-04-17 10:14:08.024000', '2023-04-17 10:14:08.024000', '2023-04-17 10:14:08.023000', NULL, NULL),
(19, 1, 1, 1, 1, '2023-04-17 10:14:08.032000', '2023-04-17 10:14:08.032000', '2023-04-17 10:14:08.031000', NULL, NULL),
(20, 1, 1, 1, 1, '2023-04-17 10:14:08.085000', '2023-04-17 10:14:08.085000', '2023-04-17 10:14:08.084000', NULL, NULL),
(21, 1, 1, 1, 1, '2023-04-17 10:14:08.111000', '2023-04-17 10:14:08.111000', '2023-04-17 10:14:08.111000', NULL, NULL),
(22, 1, 1, 1, 1, '2023-04-17 10:14:08.308000', '2023-04-17 10:14:08.308000', '2023-04-17 10:14:08.307000', NULL, NULL),
(23, 1, 1, 1, 1, '2023-04-17 10:14:08.315000', '2023-04-17 10:14:08.315000', '2023-04-17 10:14:08.314000', NULL, NULL),
(24, 1, 1, 1, 1, '2023-04-17 10:14:08.418000', '2023-04-17 10:14:08.418000', '2023-04-17 10:14:08.416000', NULL, NULL),
(25, 1, 1, 1, 1, '2023-04-17 10:14:08.482000', '2023-04-17 10:14:08.482000', '2023-04-17 10:14:08.480000', NULL, NULL),
(26, 1, 1, 1, 1, '2023-04-17 10:14:08.538000', '2023-04-17 10:14:08.538000', '2023-04-17 10:14:08.536000', NULL, NULL),
(27, 1, 1, 1, 1, '2023-04-17 10:14:08.582000', '2023-04-17 10:14:08.582000', '2023-04-17 10:14:08.580000', NULL, NULL),
(28, 1, 1, 1, 1, '2023-04-17 10:14:09.075000', '2023-04-17 10:14:09.075000', '2023-04-17 10:14:09.074000', NULL, NULL),
(29, 1, 1, 1, 1, '2023-04-17 10:14:09.083000', '2023-04-17 10:14:09.083000', '2023-04-17 10:14:09.082000', NULL, NULL),
(30, 1, 1, 1, 1, '2023-04-17 10:14:09.090000', '2023-04-17 10:14:09.090000', '2023-04-17 10:14:09.088000', NULL, NULL),
(31, 0, 0, 0, 0, '2023-04-17 10:16:00.945000', '2023-04-17 10:16:00.945000', '2023-04-17 10:16:00.944000', NULL, NULL),
(32, 0, 0, 0, 0, '2023-04-17 10:16:00.951000', '2023-04-17 10:16:00.951000', '2023-04-17 10:16:00.950000', NULL, NULL),
(33, 0, 0, 0, 0, '2023-04-17 10:16:01.151000', '2023-04-17 10:16:01.151000', '2023-04-17 10:16:01.150000', NULL, NULL),
(34, 0, 0, 0, 0, '2023-04-17 10:16:01.160000', '2023-04-17 10:16:01.160000', '2023-04-17 10:16:01.159000', NULL, NULL),
(35, 0, 0, 0, 0, '2023-04-17 10:16:01.166000', '2023-04-17 10:16:01.166000', '2023-04-17 10:16:01.165000', NULL, NULL),
(36, 0, 0, 0, 0, '2023-04-17 10:16:01.170000', '2023-04-17 10:16:01.170000', '2023-04-17 10:16:01.169000', NULL, NULL),
(37, 0, 0, 0, 0, '2023-04-17 10:16:01.246000', '2023-04-17 10:16:01.246000', '2023-04-17 10:16:01.245000', NULL, NULL),
(38, 0, 0, 0, 0, '2023-04-17 10:16:01.459000', '2023-04-17 10:16:01.459000', '2023-04-17 10:16:01.459000', NULL, NULL),
(39, 1, 1, 1, 1, '2023-04-17 10:16:02.740000', '2023-04-17 10:16:02.740000', '2023-04-17 10:16:02.737000', NULL, NULL),
(40, 1, 1, 1, 1, '2023-04-17 10:16:02.753000', '2023-04-17 10:16:02.753000', '2023-04-17 10:16:02.750000', NULL, NULL),
(41, 1, 1, 1, 1, '2023-04-17 10:16:02.790000', '2023-04-17 10:16:02.790000', '2023-04-17 10:16:02.789000', NULL, NULL),
(42, 1, 1, 1, 1, '2023-04-17 10:16:02.794000', '2023-04-17 10:16:02.794000', '2023-04-17 10:16:02.793000', NULL, NULL),
(43, 1, 1, 1, 1, '2023-04-17 10:16:02.801000', '2023-04-17 10:16:02.801000', '2023-04-17 10:16:02.800000', NULL, NULL),
(44, 1, 1, 1, 1, '2023-04-17 10:16:02.814000', '2023-04-17 10:16:02.814000', '2023-04-17 10:16:02.813000', NULL, NULL),
(45, 1, 1, 1, 1, '2023-04-17 10:16:03.087000', '2023-04-17 10:16:03.087000', '2023-04-17 10:16:03.085000', NULL, NULL),
(46, 1, 1, 1, 1, '2023-04-17 10:16:03.177000', '2023-04-17 10:16:03.177000', '2023-04-17 10:16:03.175000', NULL, NULL),
(48, 1, 1, 1, 1, '2023-04-17 10:16:03.302000', '2023-04-17 10:16:03.302000', '2023-04-17 10:16:03.301000', NULL, NULL),
(49, 1, 1, 1, 1, '2023-04-17 10:16:03.413000', '2023-04-17 10:16:03.413000', '2023-04-17 10:16:03.411000', NULL, NULL),
(50, 1, 1, 1, 1, '2023-04-17 10:16:03.459000', '2023-04-17 10:16:03.459000', '2023-04-17 10:16:03.458000', NULL, NULL),
(51, 1, 1, 1, 1, '2023-04-17 10:16:03.601000', '2023-04-17 10:16:03.601000', '2023-04-17 10:16:03.600000', NULL, NULL),
(52, 1, 1, 1, 1, '2023-04-17 10:16:03.675000', '2023-04-17 10:16:03.675000', '2023-04-17 10:16:03.674000', NULL, NULL),
(53, 1, 1, 1, 1, '2023-04-17 10:16:03.715000', '2023-04-17 10:16:03.715000', '2023-04-17 10:16:03.714000', NULL, NULL),
(54, 1, 1, 1, 1, '2023-04-17 10:16:03.840000', '2023-04-17 10:16:03.840000', '2023-04-17 10:16:03.839000', NULL, NULL),
(55, 1, 1, 1, 1, '2023-04-17 10:16:03.918000', '2023-04-17 10:16:03.918000', '2023-04-17 10:16:03.917000', NULL, NULL),
(56, 1, 1, 1, 1, '2023-04-17 10:16:04.017000', '2023-04-17 10:16:04.017000', '2023-04-17 10:16:04.015000', NULL, NULL),
(57, 1, 1, 1, 1, '2023-04-17 10:16:04.096000', '2023-04-17 10:16:04.096000', '2023-04-17 10:16:04.095000', NULL, NULL),
(58, 1, 1, 1, 1, '2023-04-17 10:16:04.275000', '2023-04-17 10:16:04.275000', '2023-04-17 10:16:04.274000', NULL, NULL),
(59, 1, 1, 1, 1, '2023-04-17 10:16:04.318000', '2023-04-17 10:16:04.318000', '2023-04-17 10:16:04.317000', NULL, NULL),
(60, 1, 1, 1, 1, '2023-04-17 10:16:04.392000', '2023-04-17 10:16:04.392000', '2023-04-17 10:16:04.390000', NULL, NULL),
(61, 0, 0, 0, 0, '2023-08-09 17:11:11.799000', '2023-08-09 17:11:11.799000', '2023-08-09 17:11:11.797000', NULL, NULL),
(62, 0, 0, 0, 0, '2023-08-09 17:11:11.858000', '2023-08-09 17:11:11.858000', '2023-08-09 17:11:11.856000', NULL, NULL),
(63, 0, 0, 0, 0, '2023-08-09 17:11:11.864000', '2023-08-09 17:11:11.864000', '2023-08-09 17:11:11.863000', NULL, NULL),
(64, 0, 0, 0, 0, '2023-08-09 17:11:11.900000', '2023-08-09 17:11:11.900000', '2023-08-09 17:11:11.898000', NULL, NULL),
(65, 0, 0, 0, 0, '2023-08-09 17:11:11.929000', '2023-08-09 17:11:11.929000', '2023-08-09 17:11:11.927000', NULL, NULL),
(66, 0, 0, 0, 0, '2023-08-09 17:11:11.935000', '2023-08-09 17:11:11.935000', '2023-08-09 17:11:11.934000', NULL, NULL),
(67, 0, 0, 0, 0, '2023-08-09 17:11:11.970000', '2023-08-09 17:11:11.970000', '2023-08-09 17:11:11.966000', NULL, NULL),
(68, 0, 0, 0, 0, '2023-08-09 17:11:12.008000', '2023-08-09 17:11:12.008000', '2023-08-09 17:11:12.006000', NULL, NULL),
(69, 0, 0, 0, 0, '2023-08-09 17:11:12.013000', '2023-08-09 17:11:12.013000', '2023-08-09 17:11:12.012000', NULL, NULL),
(70, 0, 0, 0, 0, '2023-08-09 17:11:12.046000', '2023-08-09 17:11:12.046000', '2023-08-09 17:11:12.045000', NULL, NULL),
(71, 0, 0, 0, 0, '2023-08-09 17:11:12.062000', '2023-08-09 17:11:12.062000', '2023-08-09 17:11:12.061000', NULL, NULL),
(72, 0, 0, 0, 0, '2023-08-09 17:11:12.067000', '2023-08-09 17:11:12.067000', '2023-08-09 17:11:12.066000', NULL, NULL),
(73, 0, 0, 0, 0, '2023-08-09 17:11:12.072000', '2023-08-09 17:11:12.072000', '2023-08-09 17:11:12.071000', NULL, NULL),
(74, 0, 0, 0, 0, '2023-08-09 17:11:12.099000', '2023-08-09 17:11:12.099000', '2023-08-09 17:11:12.097000', NULL, NULL),
(75, 0, 0, 0, 0, '2023-08-09 17:11:12.117000', '2023-08-09 17:11:12.117000', '2023-08-09 17:11:12.115000', NULL, NULL),
(76, 0, 0, 0, 0, '2023-08-09 17:11:12.131000', '2023-08-09 17:11:12.131000', '2023-08-09 17:11:12.130000', NULL, NULL),
(77, 0, 0, 0, 0, '2023-08-09 17:11:12.157000', '2023-08-09 17:11:12.157000', '2023-08-09 17:11:12.156000', NULL, NULL),
(78, 0, 0, 0, 0, '2023-08-09 17:11:12.162000', '2023-08-09 17:11:12.162000', '2023-08-09 17:11:12.161000', NULL, NULL),
(79, 0, 0, 0, 0, '2023-08-09 17:11:12.181000', '2023-08-09 17:11:12.181000', '2023-08-09 17:11:12.180000', NULL, NULL),
(80, 0, 0, 0, 0, '2023-08-09 17:11:12.194000', '2023-08-09 17:11:12.194000', '2023-08-09 17:11:12.193000', NULL, NULL),
(81, 0, 0, 0, 0, '2023-08-09 17:11:12.212000', '2023-08-09 17:11:12.212000', '2023-08-09 17:11:12.211000', NULL, NULL),
(82, 0, 0, 0, 0, '2023-08-09 17:11:12.233000', '2023-08-09 17:11:12.233000', '2023-08-09 17:11:12.231000', NULL, NULL),
(83, 0, 0, 0, 0, '2023-08-09 17:11:12.249000', '2023-08-09 17:11:12.249000', '2023-08-09 17:11:12.248000', NULL, NULL),
(84, 0, 0, 0, 0, '2023-08-09 17:11:12.274000', '2023-08-09 17:11:12.274000', '2023-08-09 17:11:12.273000', NULL, NULL),
(85, 0, 0, 0, 0, '2023-08-09 17:11:12.286000', '2023-08-09 17:11:12.286000', '2023-08-09 17:11:12.285000', NULL, NULL),
(86, 0, 0, 0, 0, '2023-08-09 17:11:12.297000', '2023-08-09 17:11:12.297000', '2023-08-09 17:11:12.295000', NULL, NULL),
(87, 0, 0, 0, 0, '2023-08-09 17:11:12.315000', '2023-08-09 17:11:12.315000', '2023-08-09 17:11:12.311000', NULL, NULL),
(88, 0, 0, 0, 0, '2023-08-09 17:11:12.338000', '2023-08-09 17:11:12.338000', '2023-08-09 17:11:12.337000', NULL, NULL),
(89, 0, 0, 0, 0, '2023-08-09 17:11:12.344000', '2023-08-09 17:11:12.344000', '2023-08-09 17:11:12.343000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_module_links`
--

CREATE TABLE `permisos_module_links` (
  `permiso_id` int(10) UNSIGNED DEFAULT NULL,
  `module_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permisos_module_links`
--

INSERT INTO `permisos_module_links` (`permiso_id`, `module_id`) VALUES
(2, 2),
(1, 1),
(4, 6),
(5, 5),
(3, 4),
(6, 3),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 30),
(30, 28),
(29, 29),
(31, 1),
(32, 2),
(33, 3),
(35, 5),
(34, 4),
(37, 7),
(36, 6),
(38, 8),
(39, 10),
(40, 9),
(41, 11),
(43, 13),
(44, 14),
(42, 12),
(45, 15),
(46, 16),
(48, 18),
(50, 20),
(49, 19),
(51, 21),
(52, 22),
(53, 23),
(54, 24),
(55, 25),
(56, 26),
(57, 27),
(58, 28),
(59, 29),
(60, 30),
(61, 1),
(62, 3),
(63, 4),
(64, 2),
(65, 6),
(66, 5),
(67, 7),
(69, 9),
(68, 8),
(70, 10),
(71, 11),
(72, 12),
(73, 13),
(74, 14),
(75, 15),
(76, 16),
(77, 19),
(78, 18),
(79, 20),
(80, 21),
(81, 22),
(82, 23),
(83, 24),
(84, 25),
(85, 26),
(86, 27),
(87, 28),
(88, 29),
(89, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_rol_links`
--

CREATE TABLE `permisos_rol_links` (
  `permiso_id` int(10) UNSIGNED DEFAULT NULL,
  `rol_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permisos_rol_links`
--

INSERT INTO `permisos_rol_links` (`permiso_id`, `rol_id`) VALUES
(2, 1),
(1, 1),
(4, 1),
(3, 1),
(6, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(15, 1),
(14, 1),
(16, 1),
(19, 1),
(18, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(30, 1),
(29, 1),
(31, 2),
(32, 2),
(33, 2),
(35, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(43, 2),
(41, 2),
(44, 2),
(42, 2),
(45, 2),
(46, 2),
(48, 2),
(50, 2),
(49, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(69, 3),
(68, 3),
(70, 3),
(72, 3),
(73, 3),
(71, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places_city_links`
--

CREATE TABLE `places_city_links` (
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places_site_links`
--

CREATE TABLE `places_site_links` (
  `place_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`, `observations`, `active`, `deleted`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Administrador', NULL, 1, 0, '2023-04-17 09:07:22.788000', '2023-04-17 10:14:06.030000', '2023-04-17 09:36:53.056000', 1, 1),
(2, 'Coordinador', '', 1, 0, '2023-04-17 10:16:00.284000', '2023-04-17 10:16:00.284000', '2023-04-17 10:16:00.282000', NULL, NULL),
(3, 'test1 ', 'Pruebas. ', 1, 1, '2023-08-09 17:11:11.747000', '2023-08-09 17:42:47.063000', '2023-08-09 17:11:11.746000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules_days`
--

CREATE TABLE `rules_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `skip_order_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules_days_site_links`
--

CREATE TABLE `rules_days_site_links` (
  `rule_day_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules_hours`
--

CREATE TABLE `rules_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from` time(3) DEFAULT NULL,
  `time_to` time(3) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `skip_order_group` tinyint(1) DEFAULT NULL,
  `type_rule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules_hours_places_links`
--

CREATE TABLE `rules_hours_places_links` (
  `rule_hour_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rules_hours_site_links`
--

CREATE TABLE `rules_hours_site_links` (
  `rule_hour_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `planificado` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_coordinator_links`
--

CREATE TABLE `schedules_coordinator_links` (
  `schedule_id` int(10) UNSIGNED DEFAULT NULL,
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_descansos`
--

CREATE TABLE `schedules_day_descansos` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_descansos_agents_links`
--

CREATE TABLE `schedules_day_descansos_agents_links` (
  `schedules_day_descanso_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_descansos_groups_and_agents_links`
--

CREATE TABLE `schedules_day_descansos_groups_and_agents_links` (
  `schedules_day_descanso_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_descansos_schedule_links`
--

CREATE TABLE `schedules_day_descansos_schedule_links` (
  `schedules_day_descanso_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hextras`
--

CREATE TABLE `schedules_day_hextras` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time_from` time(3) DEFAULT NULL,
  `time_to` time(3) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `lunch_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hextras_agents_links`
--

CREATE TABLE `schedules_day_hextras_agents_links` (
  `schedules_day_hextra_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hextras_groups_and_agent_links`
--

CREATE TABLE `schedules_day_hextras_groups_and_agent_links` (
  `schedules_day_hextra_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hextras_schedule_links`
--

CREATE TABLE `schedules_day_hextras_schedule_links` (
  `schedules_day_hextra_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hextras_shift_links`
--

CREATE TABLE `schedules_day_hextras_shift_links` (
  `schedules_day_hextra_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hsuplementarias`
--

CREATE TABLE `schedules_day_hsuplementarias` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time_from` time(3) DEFAULT NULL,
  `time_to` time(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hsuplementarias_agents_links`
--

CREATE TABLE `schedules_day_hsuplementarias_agents_links` (
  `schedules_day_hsuplementaria_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hsuplementarias_groups_and_agent_links`
--

CREATE TABLE `schedules_day_hsuplementarias_groups_and_agent_links` (
  `schedules_day_hsuplementaria_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_hsuplementarias_schedule_links`
--

CREATE TABLE `schedules_day_hsuplementarias_schedule_links` (
  `schedules_day_hsuplementaria_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_leaders`
--

CREATE TABLE `schedules_day_leaders` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_leaders_groups_and_agent_links`
--

CREATE TABLE `schedules_day_leaders_groups_and_agent_links` (
  `schedules_day_leader_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_leaders_schedule_links`
--

CREATE TABLE `schedules_day_leaders_schedule_links` (
  `schedules_day_leader_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_leaders_tipo_lider_links`
--

CREATE TABLE `schedules_day_leaders_tipo_lider_links` (
  `schedules_day_leader_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_lider_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_standbies`
--

CREATE TABLE `schedules_day_standbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_standbies_groups_and_agent_links`
--

CREATE TABLE `schedules_day_standbies_groups_and_agent_links` (
  `schedules_day_standby_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_standbies_schedule_links`
--

CREATE TABLE `schedules_day_standbies_schedule_links` (
  `schedules_day_standby_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_standbies_tipo_standby_links`
--

CREATE TABLE `schedules_day_standbies_tipo_standby_links` (
  `schedules_day_standby_id` int(10) UNSIGNED DEFAULT NULL,
  `tipo_standby_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns`
--

CREATE TABLE `schedules_day_turns` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `time_from` time(3) DEFAULT NULL,
  `time_to` time(3) DEFAULT NULL,
  `agentes_necesarios` int(11) DEFAULT NULL,
  `lunch_time` int(11) DEFAULT NULL,
  `velada` tinyint(1) DEFAULT NULL,
  `horas_extras` tinyint(1) DEFAULT NULL,
  `soporte` tinyint(1) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns_agents_links`
--

CREATE TABLE `schedules_day_turns_agents_links` (
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns_groups_and_agents_links`
--

CREATE TABLE `schedules_day_turns_groups_and_agents_links` (
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns_place_links`
--

CREATE TABLE `schedules_day_turns_place_links` (
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns_schedule_links`
--

CREATE TABLE `schedules_day_turns_schedule_links` (
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL,
  `schedule_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_day_turns_shift_links`
--

CREATE TABLE `schedules_day_turns_shift_links` (
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL,
  `shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedules_site_links`
--

CREATE TABLE `schedules_site_links` (
  `schedule_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule_turn_agents`
--

CREATE TABLE `schedule_turn_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule_turn_agents_groups_and_agent_links`
--

CREATE TABLE `schedule_turn_agents_groups_and_agent_links` (
  `schedule_turn_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `groups_and_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedule_turn_agents_schedules_day_turn_links`
--

CREATE TABLE `schedule_turn_agents_schedules_day_turn_links` (
  `schedule_turn_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `schedules_day_turn_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `lunch_time` int(11) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `velada` tinyint(1) DEFAULT NULL,
  `horas_extras` tinyint(1) DEFAULT NULL,
  `num_agentes_necesarios` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `soporte` tinyint(1) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_num_agents` int(11) DEFAULT NULL,
  `tuesday_num_agents` int(11) DEFAULT NULL,
  `wednesday_num_agents` int(11) DEFAULT NULL,
  `thursday_num_agents` int(11) DEFAULT NULL,
  `friday_num_agents` int(11) DEFAULT NULL,
  `saturday_num_agents` int(11) DEFAULT NULL,
  `sunday_num_agents` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shifts_place_links`
--

CREATE TABLE `shifts_place_links` (
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `place_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shifts_site_links`
--

CREATE TABLE `shifts_site_links` (
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shifts_type_of_agents_links`
--

CREATE TABLE `shifts_type_of_agents_links` (
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `type_of_agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shifts_type_of_shift_links`
--

CREATE TABLE `shifts_type_of_shift_links` (
  `shift_id` int(10) UNSIGNED DEFAULT NULL,
  `type_of_shift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sites`
--

CREATE TABLE `sites` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sites`
--

INSERT INTO `sites` (`id`, `name`, `internal_code`, `observations`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `active`, `deleted`, `type`) VALUES
(1, 'CALLCENTER', '', '', '2022-12-21 15:34:42.705000', '2023-02-16 04:05:58.320000', '2022-12-21 15:34:42.695000', NULL, 1, 1, 0, 'modo_1'),
(2, 'RRSS', '', '', '2022-12-21 15:47:36.798000', '2023-02-16 04:06:03.756000', '2022-12-21 15:47:36.791000', NULL, NULL, 1, 0, 'modo_1'),
(3, 'ATENCION AL CLIENTE', '', '', '2022-12-21 17:08:14.600000', '2023-02-16 04:06:08.971000', '2022-12-21 17:08:14.599000', NULL, NULL, 1, 0, 'modo_2'),
(4, 'CEAC-CSI', '', '', '2022-12-21 17:09:42.827000', '2023-02-16 04:06:14.554000', '2022-12-21 17:09:42.826000', NULL, NULL, 1, 0, 'modo_1'),
(5, 'CALLCENTER UIO', '', '', '2022-12-29 16:38:27.006000', '2023-02-16 04:06:22.131000', '2022-12-29 16:38:27.001000', NULL, NULL, 1, 0, 'modo_1'),
(6, 'CORREO', '', '', '2023-01-17 12:36:07.350000', '2023-02-16 04:06:52.422000', '2023-01-17 12:36:07.346000', NULL, 1, 1, 1, 'modo_1'),
(7, 'NETLIFE ASISTANCE', '', '', '2023-01-17 12:36:16.366000', '2023-02-16 04:07:01.784000', '2023-01-17 12:36:16.365000', NULL, 1, 1, 1, 'modo_1'),
(8, 'TIK TOK', '', '', '2023-01-17 12:36:29.095000', '2023-02-16 04:07:07.932000', '2023-01-17 12:36:29.094000', NULL, 1, 1, 1, 'modo_1'),
(9, 'COORDINADORES', '', '', '2023-02-11 16:34:44.749000', '2023-04-17 11:00:49.809000', '2023-02-11 16:34:44.729000', NULL, NULL, 1, 0, 'modo_2'),
(10, 'SENIOR CAROL CEVALLOS', '', '', '2023-04-17 11:11:10.949000', '2023-06-20 20:14:00.056000', '2023-04-17 11:11:10.943000', NULL, NULL, 1, 1, 'modo_2'),
(11, 'PRUEBAS', '', '', '2023-06-06 17:26:19.137000', '2023-06-06 17:26:19.137000', '2023-06-06 17:26:19.133000', NULL, NULL, 1, 0, 'modo_2'),
(12, 'SENIOR', '', '', '2023-06-20 20:14:08.964000', '2023-06-20 20:14:08.964000', '2023-06-20 20:14:08.961000', NULL, NULL, 1, 0, 'modo_1'),
(13, 'CITA VIRTUALES ATC', '', '', '2023-06-20 21:43:18.835000', '2023-06-20 21:43:18.835000', '2023-06-20 21:43:18.832000', NULL, NULL, 1, 0, 'modo_1'),
(14, 'CEAC VERONICA OCHOA', '', '', '2023-06-21 00:56:50.735000', '2023-06-21 00:56:50.735000', '2023-06-21 00:56:50.730000', NULL, NULL, 1, 0, 'modo_2'),
(15, 'CEAC LISBETH YAMBAY', '', '', '2023-06-21 02:00:15.966000', '2023-06-21 02:00:15.966000', '2023-06-21 02:00:15.961000', NULL, NULL, 1, 0, 'modo_2'),
(16, 'CEAC CRISTIAN GUTIERREZ', '', '', '2023-06-21 02:11:26.122000', '2023-06-21 02:54:33.515000', '2023-06-21 02:11:26.120000', NULL, NULL, 1, 0, 'modo_1'),
(17, 'Netlife Assistance', '', '', '2023-06-30 20:57:11.392000', '2023-06-30 20:57:39.192000', '2023-06-30 20:57:11.385000', NULL, NULL, 1, 0, 'modo_1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_configurations`
--

CREATE TABLE `site_configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `turno_velada_por_orden` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_configurations_site_links`
--

CREATE TABLE `site_configurations_site_links` (
  `site_configuration_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::agent.agent\":{\"kind\":\"collectionType\",\"collectionName\":\"agents\",\"info\":{\"singularName\":\"agent\",\"pluralName\":\"agents\",\"displayName\":\"AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"names\":{\"type\":\"string\"},\"surnames\":{\"type\":\"string\"},\"identification\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"observations\":{\"type\":\"richtext\"},\"coordinator\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::coordinator.coordinator\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"type_of_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-agent.type-of-agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"agents\",\"info\":{\"singularName\":\"agent\",\"pluralName\":\"agents\",\"displayName\":\"AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"names\":{\"type\":\"string\"},\"surnames\":{\"type\":\"string\"},\"identification\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"observations\":{\"type\":\"richtext\"},\"coordinator\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::coordinator.coordinator\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"type_of_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-agent.type-of-agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"agent\",\"connection\":\"default\",\"uid\":\"api::agent.agent\",\"apiName\":\"agent\",\"globalId\":\"Agent\",\"actions\":{},\"lifecycles\":{}},\"api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno\":{\"kind\":\"collectionType\",\"collectionName\":\"agentes_necesarios_por_dia_por_turnos\",\"info\":{\"singularName\":\"agentes-necesarios-por-dia-por-turno\",\"pluralName\":\"agentes-necesarios-por-dia-por-turnos\",\"displayName\":\"AGENTES NECESARIOS POR DIA POR TURNO\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"agentes_necesarios\":{\"type\":\"integer\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"date\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"agentes_necesarios_por_dia_por_turnos\",\"info\":{\"singularName\":\"agentes-necesarios-por-dia-por-turno\",\"pluralName\":\"agentes-necesarios-por-dia-por-turnos\",\"displayName\":\"AGENTES NECESARIOS POR DIA POR TURNO\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"agentes_necesarios\":{\"type\":\"integer\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"date\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"agentes-necesarios-por-dia-por-turno\",\"connection\":\"default\",\"uid\":\"api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno\",\"apiName\":\"agentes-necesarios-por-dia-por-turno\",\"globalId\":\"AgentesNecesariosPorDiaPorTurno\",\"actions\":{},\"lifecycles\":{}},\"api::area.area\":{\"kind\":\"collectionType\",\"collectionName\":\"areas\",\"info\":{\"singularName\":\"area\",\"pluralName\":\"areas\",\"displayName\":\"AREAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"areas\",\"info\":{\"singularName\":\"area\",\"pluralName\":\"areas\",\"displayName\":\"AREAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"area\",\"connection\":\"default\",\"uid\":\"api::area.area\",\"apiName\":\"area\",\"globalId\":\"Area\",\"actions\":{},\"lifecycles\":{}},\"api::city.city\":{\"kind\":\"collectionType\",\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"CITIES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"region\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::region.region\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"CITIES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"region\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::region.region\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"city\",\"connection\":\"default\",\"uid\":\"api::city.city\",\"apiName\":\"city\",\"globalId\":\"City\",\"actions\":{},\"lifecycles\":{}},\"api::configuracion-horas-nocturna.configuracion-horas-nocturna\":{\"kind\":\"collectionType\",\"collectionName\":\"configuracion_horas_nocturnas\",\"info\":{\"singularName\":\"configuracion-horas-nocturna\",\"pluralName\":\"configuracion-horas-nocturnas\",\"displayName\":\"CONFIGURACION HORAS NOCTURNAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hora_desde\":{\"type\":\"time\"},\"hora_hasta\":{\"type\":\"time\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"configuracion_horas_nocturnas\",\"info\":{\"singularName\":\"configuracion-horas-nocturna\",\"pluralName\":\"configuracion-horas-nocturnas\",\"displayName\":\"CONFIGURACION HORAS NOCTURNAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"hora_desde\":{\"type\":\"time\"},\"hora_hasta\":{\"type\":\"time\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"configuracion-horas-nocturna\",\"connection\":\"default\",\"uid\":\"api::configuracion-horas-nocturna.configuracion-horas-nocturna\",\"apiName\":\"configuracion-horas-nocturna\",\"globalId\":\"ConfiguracionHorasNocturna\",\"actions\":{},\"lifecycles\":{}},\"api::configuracion-login.configuracion-login\":{\"kind\":\"collectionType\",\"collectionName\":\"configuracion_logins\",\"info\":{\"singularName\":\"configuracion-login\",\"pluralName\":\"configuracion-logins\",\"displayName\":\"CONFIGURACION LOGIN\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"url\":{\"type\":\"string\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"configuracion_logins\",\"info\":{\"singularName\":\"configuracion-login\",\"pluralName\":\"configuracion-logins\",\"displayName\":\"CONFIGURACION LOGIN\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"url\":{\"type\":\"string\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"configuracion-login\",\"connection\":\"default\",\"uid\":\"api::configuracion-login.configuracion-login\",\"apiName\":\"configuracion-login\",\"globalId\":\"ConfiguracionLogin\",\"actions\":{},\"lifecycles\":{}},\"api::coordinator.coordinator\":{\"kind\":\"collectionType\",\"collectionName\":\"coordinators\",\"info\":{\"singularName\":\"coordinator\",\"pluralName\":\"coordinators\",\"displayName\":\"coordinators\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"names\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"surnames\":{\"type\":\"string\"},\"identification\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"password\":{\"type\":\"password\"},\"login_nl\":{\"type\":\"boolean\"},\"username\":{\"type\":\"string\"},\"sites\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::site.site\"},\"access_system\":{\"type\":\"boolean\"},\"rol\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rol.rol\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"coordinators\",\"info\":{\"singularName\":\"coordinator\",\"pluralName\":\"coordinators\",\"displayName\":\"coordinators\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"names\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"surnames\":{\"type\":\"string\"},\"identification\":{\"type\":\"string\"},\"email\":{\"type\":\"email\"},\"phone\":{\"type\":\"string\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"password\":{\"type\":\"password\"},\"login_nl\":{\"type\":\"boolean\"},\"username\":{\"type\":\"string\"},\"sites\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::site.site\"},\"access_system\":{\"type\":\"boolean\"},\"rol\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rol.rol\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"coordinator\",\"connection\":\"default\",\"uid\":\"api::coordinator.coordinator\",\"apiName\":\"coordinator\",\"globalId\":\"Coordinator\",\"actions\":{},\"lifecycles\":{}},\"api::dates-available-by-agent.dates-available-by-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"dates_available_by_agents\",\"info\":{\"singularName\":\"dates-available-by-agent\",\"pluralName\":\"dates-available-by-agents\",\"displayName\":\"dates available by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"dates_available_by_agents\",\"info\":{\"singularName\":\"dates-available-by-agent\",\"pluralName\":\"dates-available-by-agents\",\"displayName\":\"dates available by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"dates-available-by-agent\",\"connection\":\"default\",\"uid\":\"api::dates-available-by-agent.dates-available-by-agent\",\"apiName\":\"dates-available-by-agent\",\"globalId\":\"DatesAvailableByAgent\",\"actions\":{},\"lifecycles\":{}},\"api::group.group\":{\"kind\":\"collectionType\",\"collectionName\":\"groups\",\"info\":{\"singularName\":\"group\",\"pluralName\":\"groups\",\"displayName\":\"GROUPS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"max_agents\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"monday_order\":{\"type\":\"integer\"},\"tuesday_order\":{\"type\":\"integer\"},\"wednesday_order\":{\"type\":\"integer\"},\"thursday_order\":{\"type\":\"integer\"},\"friday_order\":{\"type\":\"integer\"},\"saturday_order\":{\"type\":\"integer\"},\"sunday_order\":{\"type\":\"integer\"},\"order\":{\"type\":\"integer\"},\"view_monday_rest\":{\"type\":\"boolean\"},\"view_tuesday_rest\":{\"type\":\"boolean\"},\"view_wednesday_rest\":{\"type\":\"boolean\"},\"view_thursday_rest\":{\"type\":\"boolean\"},\"view_friday_rest\":{\"type\":\"boolean\"},\"view_saturday_rest\":{\"type\":\"boolean\"},\"view_sunday_rest\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"groups\",\"info\":{\"singularName\":\"group\",\"pluralName\":\"groups\",\"displayName\":\"GROUPS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"max_agents\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"monday_order\":{\"type\":\"integer\"},\"tuesday_order\":{\"type\":\"integer\"},\"wednesday_order\":{\"type\":\"integer\"},\"thursday_order\":{\"type\":\"integer\"},\"friday_order\":{\"type\":\"integer\"},\"saturday_order\":{\"type\":\"integer\"},\"sunday_order\":{\"type\":\"integer\"},\"order\":{\"type\":\"integer\"},\"view_monday_rest\":{\"type\":\"boolean\"},\"view_tuesday_rest\":{\"type\":\"boolean\"},\"view_wednesday_rest\":{\"type\":\"boolean\"},\"view_thursday_rest\":{\"type\":\"boolean\"},\"view_friday_rest\":{\"type\":\"boolean\"},\"view_saturday_rest\":{\"type\":\"boolean\"},\"view_sunday_rest\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"group\",\"connection\":\"default\",\"uid\":\"api::group.group\",\"apiName\":\"group\",\"globalId\":\"Group\",\"actions\":{},\"lifecycles\":{}},\"api::group-and-grouped-days.group-and-grouped-days\":{\"kind\":\"collectionType\",\"collectionName\":\"group_and_grouped_day\",\"info\":{\"singularName\":\"group-and-grouped-days\",\"pluralName\":\"group-and-grouped-day\",\"displayName\":\"GROUP AND GROUPED DAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"group\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::group.group\"},\"order\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"group_and_grouped_day\",\"info\":{\"singularName\":\"group-and-grouped-days\",\"pluralName\":\"group-and-grouped-day\",\"displayName\":\"GROUP AND GROUPED DAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"group\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::group.group\"},\"order\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"group-and-grouped-days\",\"connection\":\"default\",\"uid\":\"api::group-and-grouped-days.group-and-grouped-days\",\"apiName\":\"group-and-grouped-days\",\"globalId\":\"GroupAndGroupedDays\",\"actions\":{},\"lifecycles\":{}},\"api::groups-and-agent.groups-and-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"groups_and_agents\",\"info\":{\"singularName\":\"groups-and-agent\",\"pluralName\":\"groups-and-agents\",\"displayName\":\"GROUPS AND AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"group\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::group.group\"},\"available\":{\"type\":\"boolean\"},\"rules_day\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rule-day.rule-day\"},\"rules_hour\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rule-hour.rule-hour\"},\"observations\":{\"type\":\"richtext\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"groups_and_agents\",\"info\":{\"singularName\":\"groups-and-agent\",\"pluralName\":\"groups-and-agents\",\"displayName\":\"GROUPS AND AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"group\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::group.group\"},\"available\":{\"type\":\"boolean\"},\"rules_day\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rule-day.rule-day\"},\"rules_hour\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rule-hour.rule-hour\"},\"observations\":{\"type\":\"richtext\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"groups-and-agent\",\"connection\":\"default\",\"uid\":\"api::groups-and-agent.groups-and-agent\",\"apiName\":\"groups-and-agent\",\"globalId\":\"GroupsAndAgent\",\"actions\":{},\"lifecycles\":{}},\"api::holiday.holiday\":{\"kind\":\"collectionType\",\"collectionName\":\"holidays\",\"info\":{\"singularName\":\"holiday\",\"pluralName\":\"holidays\",\"displayName\":\"HOLIDAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"date\":{\"type\":\"date\"},\"type_of_holiday\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-holiday.type-of-holiday\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"sites\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"holidays\",\"info\":{\"singularName\":\"holiday\",\"pluralName\":\"holidays\",\"displayName\":\"HOLIDAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"date\":{\"type\":\"date\"},\"type_of_holiday\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-holiday.type-of-holiday\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"sites\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"holiday\",\"connection\":\"default\",\"uid\":\"api::holiday.holiday\",\"apiName\":\"holiday\",\"globalId\":\"Holiday\",\"actions\":{},\"lifecycles\":{}},\"api::isabel-call-base.isabel-call-base\":{\"kind\":\"collectionType\",\"collectionName\":\"isabel_call_bases\",\"info\":{\"singularName\":\"isabel-call-base\",\"pluralName\":\"isabel-call-bases\",\"displayName\":\"ISABEL CALL BASE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date\":{\"type\":\"date\"},\"time\":{\"type\":\"time\"},\"cabinas_6022_manejadas\":{\"type\":\"integer\"},\"soporte_5900_manejadas\":{\"type\":\"integer\"},\"cabinas_6022_abandonadas\":{\"type\":\"integer\"},\"soporte_5900_abandonadas\":{\"type\":\"integer\"},\"atc_6028_manejadas\":{\"type\":\"integer\"},\"cobranzas_5903_manejadas\":{\"type\":\"integer\"},\"atc_6028_abandonadas\":{\"type\":\"integer\"},\"cobranzas_5903_abandonadas\":{\"type\":\"integer\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"manejadas\":{\"type\":\"integer\"},\"abandonadas\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"isabel_call_bases\",\"info\":{\"singularName\":\"isabel-call-base\",\"pluralName\":\"isabel-call-bases\",\"displayName\":\"ISABEL CALL BASE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date\":{\"type\":\"date\"},\"time\":{\"type\":\"time\"},\"cabinas_6022_manejadas\":{\"type\":\"integer\"},\"soporte_5900_manejadas\":{\"type\":\"integer\"},\"cabinas_6022_abandonadas\":{\"type\":\"integer\"},\"soporte_5900_abandonadas\":{\"type\":\"integer\"},\"atc_6028_manejadas\":{\"type\":\"integer\"},\"cobranzas_5903_manejadas\":{\"type\":\"integer\"},\"atc_6028_abandonadas\":{\"type\":\"integer\"},\"cobranzas_5903_abandonadas\":{\"type\":\"integer\"},\"area\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::area.area\"},\"manejadas\":{\"type\":\"integer\"},\"abandonadas\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"isabel-call-base\",\"connection\":\"default\",\"uid\":\"api::isabel-call-base.isabel-call-base\",\"apiName\":\"isabel-call-base\",\"globalId\":\"IsabelCallBase\",\"actions\":{},\"lifecycles\":{}},\"api::module.module\":{\"kind\":\"collectionType\",\"collectionName\":\"modules\",\"info\":{\"singularName\":\"module\",\"pluralName\":\"modules\",\"displayName\":\"modules\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"code\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"modules\",\"info\":{\"singularName\":\"module\",\"pluralName\":\"modules\",\"displayName\":\"modules\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"code\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"module\",\"connection\":\"default\",\"uid\":\"api::module.module\",\"apiName\":\"module\",\"globalId\":\"Module\",\"actions\":{},\"lifecycles\":{}},\"api::permiso.permiso\":{\"kind\":\"collectionType\",\"collectionName\":\"permisos\",\"info\":{\"singularName\":\"permiso\",\"pluralName\":\"permisos\",\"displayName\":\"permisos\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"module\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::module.module\"},\"rol\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rol.rol\"},\"create\":{\"type\":\"boolean\"},\"read\":{\"type\":\"boolean\"},\"update\":{\"type\":\"boolean\"},\"delete\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"permisos\",\"info\":{\"singularName\":\"permiso\",\"pluralName\":\"permisos\",\"displayName\":\"permisos\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"module\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::module.module\"},\"rol\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::rol.rol\"},\"create\":{\"type\":\"boolean\"},\"read\":{\"type\":\"boolean\"},\"update\":{\"type\":\"boolean\"},\"delete\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permiso\",\"connection\":\"default\",\"uid\":\"api::permiso.permiso\",\"apiName\":\"permiso\",\"globalId\":\"Permiso\",\"actions\":{},\"lifecycles\":{}},\"api::place.place\":{\"kind\":\"collectionType\",\"collectionName\":\"places\",\"info\":{\"singularName\":\"place\",\"pluralName\":\"places\",\"displayName\":\"places\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"places\",\"info\":{\"singularName\":\"place\",\"pluralName\":\"places\",\"displayName\":\"places\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"place\",\"connection\":\"default\",\"uid\":\"api::place.place\",\"apiName\":\"place\",\"globalId\":\"Place\",\"actions\":{},\"lifecycles\":{}},\"api::region.region\":{\"kind\":\"collectionType\",\"collectionName\":\"regions\",\"info\":{\"singularName\":\"region\",\"pluralName\":\"regions\",\"displayName\":\"REGIONS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"regions\",\"info\":{\"singularName\":\"region\",\"pluralName\":\"regions\",\"displayName\":\"REGIONS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"region\",\"connection\":\"default\",\"uid\":\"api::region.region\",\"apiName\":\"region\",\"globalId\":\"Region\",\"actions\":{},\"lifecycles\":{}},\"api::rol.rol\":{\"kind\":\"collectionType\",\"collectionName\":\"rols\",\"info\":{\"singularName\":\"rol\",\"pluralName\":\"rols\",\"displayName\":\"Rols\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"rols\",\"info\":{\"singularName\":\"rol\",\"pluralName\":\"rols\",\"displayName\":\"Rols\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"rol\",\"connection\":\"default\",\"uid\":\"api::rol.rol\",\"apiName\":\"rol\",\"globalId\":\"Rol\",\"actions\":{},\"lifecycles\":{}},\"api::rule-day.rule-day\":{\"kind\":\"collectionType\",\"collectionName\":\"rules_days\",\"info\":{\"singularName\":\"rule-day\",\"pluralName\":\"rules-days\",\"displayName\":\"RULES DAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"},\"skip_order_group\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"rules_days\",\"info\":{\"singularName\":\"rule-day\",\"pluralName\":\"rules-days\",\"displayName\":\"RULES DAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"},\"skip_order_group\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"rule-day\",\"connection\":\"default\",\"uid\":\"api::rule-day.rule-day\",\"apiName\":\"rule-day\",\"globalId\":\"RuleDay\",\"actions\":{},\"lifecycles\":{}},\"api::rule-hour.rule-hour\":{\"kind\":\"collectionType\",\"collectionName\":\"rules_hours\",\"info\":{\"singularName\":\"rule-hour\",\"pluralName\":\"rules-hours\",\"displayName\":\"RULES HOURS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"},\"skip_order_group\":{\"type\":\"boolean\"},\"type_rule\":{\"type\":\"enumeration\",\"enum\":[\"Rango\",\"Exacto\",\"Inicio\"]},\"places\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::place.place\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"rules_hours\",\"info\":{\"singularName\":\"rule-hour\",\"pluralName\":\"rules-hours\",\"displayName\":\"RULES HOURS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"order\":{\"type\":\"integer\"},\"skip_order_group\":{\"type\":\"boolean\"},\"type_rule\":{\"type\":\"enumeration\",\"enum\":[\"Rango\",\"Exacto\",\"Inicio\"]},\"places\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::place.place\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"rule-hour\",\"connection\":\"default\",\"uid\":\"api::rule-hour.rule-hour\",\"apiName\":\"rule-hour\",\"globalId\":\"RuleHour\",\"actions\":{},\"lifecycles\":{}},\"api::schedule.schedule\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules\",\"info\":{\"singularName\":\"schedule\",\"pluralName\":\"schedules\",\"displayName\":\"SCHEDULES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"date_to\":{\"type\":\"date\"},\"internal_code\":{\"type\":\"string\"},\"production\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"coordinator\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::coordinator.coordinator\"},\"planificado\":{\"type\":\"boolean\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"modo_1\",\"modo_2\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules\",\"info\":{\"singularName\":\"schedule\",\"pluralName\":\"schedules\",\"displayName\":\"SCHEDULES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"date_to\":{\"type\":\"date\"},\"internal_code\":{\"type\":\"string\"},\"production\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"coordinator\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::coordinator.coordinator\"},\"planificado\":{\"type\":\"boolean\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"modo_1\",\"modo_2\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedule\",\"connection\":\"default\",\"uid\":\"api::schedule.schedule\",\"apiName\":\"schedule\",\"globalId\":\"Schedule\",\"actions\":{},\"lifecycles\":{}},\"api::schedule-turn-agent.schedule-turn-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"schedule_turn_agents\",\"info\":{\"singularName\":\"schedule-turn-agent\",\"pluralName\":\"schedule-turn-agents\",\"displayName\":\"schedule_turn_agents\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedules_day_turn\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedules-day-turn.schedules-day-turn\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedule_turn_agents\",\"info\":{\"singularName\":\"schedule-turn-agent\",\"pluralName\":\"schedule-turn-agents\",\"displayName\":\"schedule_turn_agents\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedules_day_turn\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedules-day-turn.schedules-day-turn\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedule-turn-agent\",\"connection\":\"default\",\"uid\":\"api::schedule-turn-agent.schedule-turn-agent\",\"apiName\":\"schedule-turn-agent\",\"globalId\":\"ScheduleTurnAgent\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-descanso.schedules-day-descanso\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_descansos\",\"info\":{\"singularName\":\"schedules-day-descanso\",\"pluralName\":\"schedules-day-descansos\",\"displayName\":\"SCHEDULES DAY DESCANSO\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"groups_and_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_descansos\",\"info\":{\"singularName\":\"schedules-day-descanso\",\"pluralName\":\"schedules-day-descansos\",\"displayName\":\"SCHEDULES DAY DESCANSO\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"groups_and_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-descanso\",\"connection\":\"default\",\"uid\":\"api::schedules-day-descanso.schedules-day-descanso\",\"apiName\":\"schedules-day-descanso\",\"globalId\":\"SchedulesDayDescanso\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-hextra.schedules-day-hextra\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_hextras\",\"info\":{\"singularName\":\"schedules-day-hextra\",\"pluralName\":\"schedules-day-hextras\",\"displayName\":\"SCHEDULES DAY HEXTRAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"observations\":{\"type\":\"richtext\"},\"deleted\":{\"type\":\"boolean\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"lunch_time\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_hextras\",\"info\":{\"singularName\":\"schedules-day-hextra\",\"pluralName\":\"schedules-day-hextras\",\"displayName\":\"SCHEDULES DAY HEXTRAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"observations\":{\"type\":\"richtext\"},\"deleted\":{\"type\":\"boolean\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"lunch_time\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-hextra\",\"connection\":\"default\",\"uid\":\"api::schedules-day-hextra.schedules-day-hextra\",\"apiName\":\"schedules-day-hextra\",\"globalId\":\"SchedulesDayHextra\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-hsuplementaria.schedules-day-hsuplementaria\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_hsuplementarias\",\"info\":{\"singularName\":\"schedules-day-hsuplementaria\",\"pluralName\":\"schedules-day-hsuplementarias\",\"displayName\":\"SCHEDULES DAY HSUPLEMENTARIAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"deleted\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_hsuplementarias\",\"info\":{\"singularName\":\"schedules-day-hsuplementaria\",\"pluralName\":\"schedules-day-hsuplementarias\",\"displayName\":\"SCHEDULES DAY HSUPLEMENTARIAS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"date\":{\"type\":\"date\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"deleted\":{\"type\":\"boolean\"},\"observations\":{\"type\":\"richtext\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-hsuplementaria\",\"connection\":\"default\",\"uid\":\"api::schedules-day-hsuplementaria.schedules-day-hsuplementaria\",\"apiName\":\"schedules-day-hsuplementaria\",\"globalId\":\"SchedulesDayHsuplementaria\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-leader.schedules-day-leader\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_leaders\",\"info\":{\"singularName\":\"schedules-day-leader\",\"pluralName\":\"schedules-day-leaders\",\"displayName\":\"SCHEDULES DAY LEADERS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"tipo_lider\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-lider.tipo-lider\"},\"date\":{\"type\":\"date\"},\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_leaders\",\"info\":{\"singularName\":\"schedules-day-leader\",\"pluralName\":\"schedules-day-leaders\",\"displayName\":\"SCHEDULES DAY LEADERS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"tipo_lider\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-lider.tipo-lider\"},\"date\":{\"type\":\"date\"},\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-leader\",\"connection\":\"default\",\"uid\":\"api::schedules-day-leader.schedules-day-leader\",\"apiName\":\"schedules-day-leader\",\"globalId\":\"SchedulesDayLeader\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-standby.schedules-day-standby\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_standbies\",\"info\":{\"singularName\":\"schedules-day-standby\",\"pluralName\":\"schedules-day-standbies\",\"displayName\":\"SCHEDULES DAY STANDBY\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"tipo_standby\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-standby.tipo-standby\"},\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"date\":{\"type\":\"date\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_standbies\",\"info\":{\"singularName\":\"schedules-day-standby\",\"pluralName\":\"schedules-day-standbies\",\"displayName\":\"SCHEDULES DAY STANDBY\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"groups_and_agent\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"tipo_standby\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-standby.tipo-standby\"},\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"date\":{\"type\":\"date\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-standby\",\"connection\":\"default\",\"uid\":\"api::schedules-day-standby.schedules-day-standby\",\"apiName\":\"schedules-day-standby\",\"globalId\":\"SchedulesDayStandby\",\"actions\":{},\"lifecycles\":{}},\"api::schedules-day-turn.schedules-day-turn\":{\"kind\":\"collectionType\",\"collectionName\":\"schedules_day_turns\",\"info\":{\"singularName\":\"schedules-day-turn\",\"pluralName\":\"schedules-day-turns\",\"displayName\":\"SCHEDULES DAY TURN\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date\":{\"type\":\"date\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"agentes_necesarios\":{\"type\":\"integer\"},\"groups_and_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"lunch_time\":{\"type\":\"integer\"},\"velada\":{\"type\":\"boolean\"},\"horas_extras\":{\"type\":\"boolean\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"soporte\":{\"type\":\"boolean\"},\"color\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"holiday\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"schedules_day_turns\",\"info\":{\"singularName\":\"schedules-day-turn\",\"pluralName\":\"schedules-day-turns\",\"displayName\":\"SCHEDULES DAY TURN\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date\":{\"type\":\"date\"},\"shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::shift.shift\"},\"schedule\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::schedule.schedule\"},\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"agentes_necesarios\":{\"type\":\"integer\"},\"groups_and_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::groups-and-agent.groups-and-agent\"},\"lunch_time\":{\"type\":\"integer\"},\"velada\":{\"type\":\"boolean\"},\"horas_extras\":{\"type\":\"boolean\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::agent.agent\"},\"soporte\":{\"type\":\"boolean\"},\"color\":{\"type\":\"string\"},\"name\":{\"type\":\"string\"},\"holiday\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"schedules-day-turn\",\"connection\":\"default\",\"uid\":\"api::schedules-day-turn.schedules-day-turn\",\"apiName\":\"schedules-day-turn\",\"globalId\":\"SchedulesDayTurn\",\"actions\":{},\"lifecycles\":{}},\"api::shift.shift\":{\"kind\":\"collectionType\",\"collectionName\":\"shifts\",\"info\":{\"singularName\":\"shift\",\"pluralName\":\"shifts\",\"displayName\":\"SHIFTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"type_of_shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-shift.type-of-shift\"},\"lunch_time\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"velada\":{\"type\":\"boolean\"},\"horas_extras\":{\"type\":\"boolean\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"num_agentes_necesarios\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"type_of_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::type-of-agent.type-of-agent\"},\"soporte\":{\"type\":\"boolean\"},\"color\":{\"type\":\"string\"},\"monday_num_agents\":{\"type\":\"integer\"},\"tuesday_num_agents\":{\"type\":\"integer\"},\"wednesday_num_agents\":{\"type\":\"integer\"},\"thursday_num_agents\":{\"type\":\"integer\"},\"friday_num_agents\":{\"type\":\"integer\"},\"saturday_num_agents\":{\"type\":\"integer\"},\"sunday_num_agents\":{\"type\":\"integer\"},\"name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"shifts\",\"info\":{\"singularName\":\"shift\",\"pluralName\":\"shifts\",\"displayName\":\"SHIFTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"time_from\":{\"type\":\"time\"},\"time_to\":{\"type\":\"time\"},\"type_of_shift\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::type-of-shift.type-of-shift\"},\"lunch_time\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"velada\":{\"type\":\"boolean\"},\"horas_extras\":{\"type\":\"boolean\"},\"place\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::place.place\"},\"num_agentes_necesarios\":{\"type\":\"integer\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"type_of_agents\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::type-of-agent.type-of-agent\"},\"soporte\":{\"type\":\"boolean\"},\"color\":{\"type\":\"string\"},\"monday_num_agents\":{\"type\":\"integer\"},\"tuesday_num_agents\":{\"type\":\"integer\"},\"wednesday_num_agents\":{\"type\":\"integer\"},\"thursday_num_agents\":{\"type\":\"integer\"},\"friday_num_agents\":{\"type\":\"integer\"},\"saturday_num_agents\":{\"type\":\"integer\"},\"sunday_num_agents\":{\"type\":\"integer\"},\"name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"shift\",\"connection\":\"default\",\"uid\":\"api::shift.shift\",\"apiName\":\"shift\",\"globalId\":\"Shift\",\"actions\":{},\"lifecycles\":{}},\"api::site.site\":{\"kind\":\"collectionType\",\"collectionName\":\"sites\",\"info\":{\"singularName\":\"site\",\"pluralName\":\"sites\",\"displayName\":\"SITES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"text\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"modo_1\",\"modo_2\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sites\",\"info\":{\"singularName\":\"site\",\"pluralName\":\"sites\",\"displayName\":\"SITES\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"text\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"modo_1\",\"modo_2\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"site\",\"connection\":\"default\",\"uid\":\"api::site.site\",\"apiName\":\"site\",\"globalId\":\"Site\",\"actions\":{},\"lifecycles\":{}},\"api::site-configuration.site-configuration\":{\"kind\":\"collectionType\",\"collectionName\":\"site_configurations\",\"info\":{\"singularName\":\"site-configuration\",\"pluralName\":\"site-configurations\",\"displayName\":\"SITE CONFIGURATION\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"turno_velada_por_orden\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"site_configurations\",\"info\":{\"singularName\":\"site-configuration\",\"pluralName\":\"site-configurations\",\"displayName\":\"SITE CONFIGURATION\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"turno_velada_por_orden\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"site-configuration\",\"connection\":\"default\",\"uid\":\"api::site-configuration.site-configuration\",\"apiName\":\"site-configuration\",\"globalId\":\"SiteConfiguration\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-lider.tipo-lider\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_liders\",\"info\":{\"singularName\":\"tipo-lider\",\"pluralName\":\"tipo-liders\",\"displayName\":\"TIPO LIDER\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_liders\",\"info\":{\"singularName\":\"tipo-lider\",\"pluralName\":\"tipo-liders\",\"displayName\":\"TIPO LIDER\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"observations\":{\"type\":\"richtext\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-lider\",\"connection\":\"default\",\"uid\":\"api::tipo-lider.tipo-lider\",\"apiName\":\"tipo-lider\",\"globalId\":\"TipoLider\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-standby.tipo-standby\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_standbies\",\"info\":{\"singularName\":\"tipo-standby\",\"pluralName\":\"tipo-standbies\",\"displayName\":\"TIPO STANDBY\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_standbies\",\"info\":{\"singularName\":\"tipo-standby\",\"pluralName\":\"tipo-standbies\",\"displayName\":\"TIPO STANDBY\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"order\":{\"type\":\"integer\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-standby\",\"connection\":\"default\",\"uid\":\"api::tipo-standby.tipo-standby\",\"apiName\":\"tipo-standby\",\"globalId\":\"TipoStandby\",\"actions\":{},\"lifecycles\":{}},\"api::type-of-agent.type-of-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"type_of_agents\",\"info\":{\"singularName\":\"type-of-agent\",\"pluralName\":\"type-of-agents\",\"displayName\":\"TYPE OF AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"type_of_agents\",\"info\":{\"singularName\":\"type-of-agent\",\"pluralName\":\"type-of-agents\",\"displayName\":\"TYPE OF AGENTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"type-of-agent\",\"connection\":\"default\",\"uid\":\"api::type-of-agent.type-of-agent\",\"apiName\":\"type-of-agent\",\"globalId\":\"TypeOfAgent\",\"actions\":{},\"lifecycles\":{}},\"api::type-of-holiday.type-of-holiday\":{\"kind\":\"collectionType\",\"collectionName\":\"type_of_holidays\",\"info\":{\"singularName\":\"type-of-holiday\",\"pluralName\":\"type-of-holidays\",\"displayName\":\"TYPE OF HOLIDAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"type_of_holidays\",\"info\":{\"singularName\":\"type-of-holiday\",\"pluralName\":\"type-of-holidays\",\"displayName\":\"TYPE OF HOLIDAYS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"type-of-holiday\",\"connection\":\"default\",\"uid\":\"api::type-of-holiday.type-of-holiday\",\"apiName\":\"type-of-holiday\",\"globalId\":\"TypeOfHoliday\",\"actions\":{},\"lifecycles\":{}},\"api::type-of-shift.type-of-shift\":{\"kind\":\"collectionType\",\"collectionName\":\"type_of_shifts\",\"info\":{\"singularName\":\"type-of-shift\",\"pluralName\":\"type-of-shifts\",\"displayName\":\"TYPE OF SHIFTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"holiday\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"type_of_shifts\",\"info\":{\"singularName\":\"type-of-shift\",\"pluralName\":\"type-of-shifts\",\"displayName\":\"TYPE OF SHIFTS\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"internal_code\":{\"type\":\"string\"},\"observations\":{\"type\":\"richtext\"},\"monday\":{\"type\":\"boolean\"},\"tuesday\":{\"type\":\"boolean\"},\"wednesday\":{\"type\":\"boolean\"},\"thursday\":{\"type\":\"boolean\"},\"friday\":{\"type\":\"boolean\"},\"saturday\":{\"type\":\"boolean\"},\"sunday\":{\"type\":\"boolean\"},\"holiday\":{\"type\":\"boolean\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"type-of-shift\",\"connection\":\"default\",\"uid\":\"api::type-of-shift.type-of-shift\",\"apiName\":\"type-of-shift\",\"globalId\":\"TypeOfShift\",\"actions\":{},\"lifecycles\":{}},\"api::unavailable-dates-by-agent.unavailable-dates-by-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"unavailable_dates_by_agents\",\"info\":{\"singularName\":\"unavailable-dates-by-agent\",\"pluralName\":\"unavailable-dates-by-agents\",\"displayName\":\"unavailable dates by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"unavailable_dates_by_agents\",\"info\":{\"singularName\":\"unavailable-dates-by-agent\",\"pluralName\":\"unavailable-dates-by-agents\",\"displayName\":\"unavailable dates by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"unavailable-dates-by-agent\",\"connection\":\"default\",\"uid\":\"api::unavailable-dates-by-agent.unavailable-dates-by-agent\",\"apiName\":\"unavailable-dates-by-agent\",\"globalId\":\"UnavailableDatesByAgent\",\"actions\":{},\"lifecycles\":{}},\"api::vacation-date-by-agent.vacation-date-by-agent\":{\"kind\":\"collectionType\",\"collectionName\":\"vacation_date_by_agents\",\"info\":{\"singularName\":\"vacation-date-by-agent\",\"pluralName\":\"vacation-date-by-agents\",\"displayName\":\"vacation date by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"days_before_to_remind\":{\"type\":\"integer\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"vacation_date_by_agents\",\"info\":{\"singularName\":\"vacation-date-by-agent\",\"pluralName\":\"vacation-date-by-agents\",\"displayName\":\"vacation date by agent\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"date_from\":{\"type\":\"date\"},\"date_to\":{\"type\":\"date\"},\"observations\":{\"type\":\"richtext\"},\"days_before_to_remind\":{\"type\":\"integer\"},\"agents\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agent.agent\"},\"active\":{\"type\":\"boolean\"},\"deleted\":{\"type\":\"boolean\"},\"site\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::site.site\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"vacation-date-by-agent\",\"connection\":\"default\",\"uid\":\"api::vacation-date-by-agent.vacation-date-by-agent\",\"apiName\":\"vacation-date-by-agent\",\"globalId\":\"VacationDateByAgent\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"folder\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"editRelations\":[\"parent\",\"children\",\"files\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(13, 'plugin_upload_metrics', '{\"weeklySchedule\":\"20 21 21 * * 4\",\"lastWeeklyUpdate\":1692912080062}', 'object', NULL, NULL),
(14, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(15, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(16, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(17, 'plugin_i18n_default_locale', '\"es-EC\"', 'string', NULL, NULL),
(18, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::area.area', '{\"uid\":\"api::area.area\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"site\"]}}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::agent.agent', '{\"uid\":\"api::agent.agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"names\",\"defaultSortBy\":\"names\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"names\":{\"edit\":{\"label\":\"names\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"names\",\"searchable\":true,\"sortable\":true}},\"surnames\":{\"edit\":{\"label\":\"surnames\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"surnames\",\"searchable\":true,\"sortable\":true}},\"identification\":{\"edit\":{\"label\":\"identification\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"identification\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"coordinator\":{\"edit\":{\"label\":\"coordinator\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"coordinator\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"type_of_agent\":{\"edit\":{\"label\":\"type_of_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"type_of_agent\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"names\",\"surnames\",\"identification\",\"email\",\"city\"],\"edit\":[[{\"name\":\"names\",\"size\":6},{\"name\":\"surnames\",\"size\":6}],[{\"name\":\"identification\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"phone\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"coordinator\",\"city\",\"type_of_agent\",\"area\",\"site\"]}}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::api::group.group', '{\"uid\":\"api::group.group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"max_agents\":{\"edit\":{\"label\":\"max_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"max_agents\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"monday\":{\"edit\":{\"label\":\"monday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday\",\"searchable\":true,\"sortable\":true}},\"tuesday\":{\"edit\":{\"label\":\"tuesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday\",\"searchable\":true,\"sortable\":true}},\"wednesday\":{\"edit\":{\"label\":\"wednesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday\",\"searchable\":true,\"sortable\":true}},\"thursday\":{\"edit\":{\"label\":\"thursday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday\",\"searchable\":true,\"sortable\":true}},\"friday\":{\"edit\":{\"label\":\"friday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday\",\"searchable\":true,\"sortable\":true}},\"saturday\":{\"edit\":{\"label\":\"saturday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday\",\"searchable\":true,\"sortable\":true}},\"sunday\":{\"edit\":{\"label\":\"sunday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday\",\"searchable\":true,\"sortable\":true}},\"monday_order\":{\"edit\":{\"label\":\"monday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday_order\",\"searchable\":true,\"sortable\":true}},\"tuesday_order\":{\"edit\":{\"label\":\"tuesday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday_order\",\"searchable\":true,\"sortable\":true}},\"wednesday_order\":{\"edit\":{\"label\":\"wednesday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday_order\",\"searchable\":true,\"sortable\":true}},\"thursday_order\":{\"edit\":{\"label\":\"thursday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday_order\",\"searchable\":true,\"sortable\":true}},\"friday_order\":{\"edit\":{\"label\":\"friday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday_order\",\"searchable\":true,\"sortable\":true}},\"saturday_order\":{\"edit\":{\"label\":\"saturday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday_order\",\"searchable\":true,\"sortable\":true}},\"sunday_order\":{\"edit\":{\"label\":\"sunday_order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday_order\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"view_monday_rest\":{\"edit\":{\"label\":\"view_monday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_monday_rest\",\"searchable\":true,\"sortable\":true}},\"view_tuesday_rest\":{\"edit\":{\"label\":\"view_tuesday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_tuesday_rest\",\"searchable\":true,\"sortable\":true}},\"view_wednesday_rest\":{\"edit\":{\"label\":\"view_wednesday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_wednesday_rest\",\"searchable\":true,\"sortable\":true}},\"view_thursday_rest\":{\"edit\":{\"label\":\"view_thursday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_thursday_rest\",\"searchable\":true,\"sortable\":true}},\"view_friday_rest\":{\"edit\":{\"label\":\"view_friday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_friday_rest\",\"searchable\":true,\"sortable\":true}},\"view_saturday_rest\":{\"edit\":{\"label\":\"view_saturday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_saturday_rest\",\"searchable\":true,\"sortable\":true}},\"view_sunday_rest\":{\"edit\":{\"label\":\"view_sunday_rest\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"view_sunday_rest\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"max_agents\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"max_agents\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4},{\"name\":\"monday\",\"size\":4}],[{\"name\":\"tuesday\",\"size\":4},{\"name\":\"wednesday\",\"size\":4},{\"name\":\"thursday\",\"size\":4}],[{\"name\":\"friday\",\"size\":4},{\"name\":\"saturday\",\"size\":4},{\"name\":\"sunday\",\"size\":4}],[{\"name\":\"monday_order\",\"size\":4},{\"name\":\"tuesday_order\",\"size\":4},{\"name\":\"wednesday_order\",\"size\":4}],[{\"name\":\"thursday_order\",\"size\":4},{\"name\":\"friday_order\",\"size\":4},{\"name\":\"saturday_order\",\"size\":4}],[{\"name\":\"sunday_order\",\"size\":4},{\"name\":\"order\",\"size\":4},{\"name\":\"view_monday_rest\",\"size\":4}],[{\"name\":\"view_tuesday_rest\",\"size\":4},{\"name\":\"view_wednesday_rest\",\"size\":4},{\"name\":\"view_thursday_rest\",\"size\":4}],[{\"name\":\"view_friday_rest\",\"size\":4},{\"name\":\"view_saturday_rest\",\"size\":4},{\"name\":\"view_sunday_rest\",\"size\":4}]],\"editRelations\":[\"area\",\"site\"]}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::api::type-of-shift.type-of-shift', '{\"uid\":\"api::type-of-shift.type-of-shift\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"monday\":{\"edit\":{\"label\":\"monday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday\",\"searchable\":true,\"sortable\":true}},\"tuesday\":{\"edit\":{\"label\":\"tuesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday\",\"searchable\":true,\"sortable\":true}},\"wednesday\":{\"edit\":{\"label\":\"wednesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday\",\"searchable\":true,\"sortable\":true}},\"thursday\":{\"edit\":{\"label\":\"thursday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday\",\"searchable\":true,\"sortable\":true}},\"friday\":{\"edit\":{\"label\":\"friday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday\",\"searchable\":true,\"sortable\":true}},\"saturday\":{\"edit\":{\"label\":\"saturday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday\",\"searchable\":true,\"sortable\":true}},\"sunday\":{\"edit\":{\"label\":\"sunday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday\",\"searchable\":true,\"sortable\":true}},\"holiday\":{\"edit\":{\"label\":\"holiday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"holiday\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"monday\",\"size\":4},{\"name\":\"tuesday\",\"size\":4},{\"name\":\"wednesday\",\"size\":4}],[{\"name\":\"thursday\",\"size\":4},{\"name\":\"friday\",\"size\":4},{\"name\":\"saturday\",\"size\":4}],[{\"name\":\"sunday\",\"size\":4},{\"name\":\"holiday\",\"size\":4},{\"name\":\"active\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"site\"]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(23, 'plugin_content_manager_configuration_content_types::api::shift.shift', '{\"uid\":\"api::shift.shift\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"time_from\":{\"edit\":{\"label\":\"time_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_from\",\"searchable\":true,\"sortable\":true}},\"time_to\":{\"edit\":{\"label\":\"time_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_to\",\"searchable\":true,\"sortable\":true}},\"type_of_shift\":{\"edit\":{\"label\":\"type_of_shift\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"type_of_shift\",\"searchable\":true,\"sortable\":true}},\"lunch_time\":{\"edit\":{\"label\":\"lunch_time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lunch_time\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"velada\":{\"edit\":{\"label\":\"velada\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"velada\",\"searchable\":true,\"sortable\":true}},\"horas_extras\":{\"edit\":{\"label\":\"horas_extras\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"horas_extras\",\"searchable\":true,\"sortable\":true}},\"place\":{\"edit\":{\"label\":\"place\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"place\",\"searchable\":true,\"sortable\":true}},\"num_agentes_necesarios\":{\"edit\":{\"label\":\"num_agentes_necesarios\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"num_agentes_necesarios\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"type_of_agents\":{\"edit\":{\"label\":\"type_of_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"type_of_agents\",\"searchable\":false,\"sortable\":false}},\"soporte\":{\"edit\":{\"label\":\"soporte\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"soporte\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"monday_num_agents\":{\"edit\":{\"label\":\"monday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday_num_agents\",\"searchable\":true,\"sortable\":true}},\"tuesday_num_agents\":{\"edit\":{\"label\":\"tuesday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday_num_agents\",\"searchable\":true,\"sortable\":true}},\"wednesday_num_agents\":{\"edit\":{\"label\":\"wednesday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday_num_agents\",\"searchable\":true,\"sortable\":true}},\"thursday_num_agents\":{\"edit\":{\"label\":\"thursday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday_num_agents\",\"searchable\":true,\"sortable\":true}},\"friday_num_agents\":{\"edit\":{\"label\":\"friday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday_num_agents\",\"searchable\":true,\"sortable\":true}},\"saturday_num_agents\":{\"edit\":{\"label\":\"saturday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday_num_agents\",\"searchable\":true,\"sortable\":true}},\"sunday_num_agents\":{\"edit\":{\"label\":\"sunday_num_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday_num_agents\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"time_from\",\"time_to\",\"type_of_shift\"],\"edit\":[[{\"name\":\"time_from\",\"size\":4},{\"name\":\"time_to\",\"size\":4},{\"name\":\"lunch_time\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"velada\",\"size\":4},{\"name\":\"horas_extras\",\"size\":4},{\"name\":\"num_agentes_necesarios\",\"size\":4}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4},{\"name\":\"soporte\",\"size\":4}],[{\"name\":\"color\",\"size\":6},{\"name\":\"monday_num_agents\",\"size\":4}],[{\"name\":\"tuesday_num_agents\",\"size\":4},{\"name\":\"wednesday_num_agents\",\"size\":4},{\"name\":\"thursday_num_agents\",\"size\":4}],[{\"name\":\"friday_num_agents\",\"size\":4},{\"name\":\"saturday_num_agents\",\"size\":4},{\"name\":\"sunday_num_agents\",\"size\":4}],[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"type_of_shift\",\"place\",\"site\",\"type_of_agents\"]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::type-of-holiday.type-of-holiday', '{\"uid\":\"api::type-of-holiday.type-of-holiday\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::holiday.holiday', '{\"uid\":\"api::holiday.holiday\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"type_of_holiday\":{\"edit\":{\"label\":\"type_of_holiday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"type_of_holiday\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"sites\":{\"edit\":{\"label\":\"sites\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"sites\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"date\",\"type_of_holiday\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"date\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"type_of_holiday\",\"sites\"]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::rule-hour.rule-hour', '{\"uid\":\"api::rule-hour.rule-hour\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"time_from\":{\"edit\":{\"label\":\"time_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_from\",\"searchable\":true,\"sortable\":true}},\"time_to\":{\"edit\":{\"label\":\"time_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_to\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"skip_order_group\":{\"edit\":{\"label\":\"skip_order_group\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"skip_order_group\",\"searchable\":true,\"sortable\":true}},\"type_rule\":{\"edit\":{\"label\":\"type_rule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type_rule\",\"searchable\":true,\"sortable\":true}},\"places\":{\"edit\":{\"label\":\"places\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"places\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"time_from\",\"time_to\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"time_from\",\"size\":4}],[{\"name\":\"time_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4},{\"name\":\"order\",\"size\":4}],[{\"name\":\"skip_order_group\",\"size\":4},{\"name\":\"type_rule\",\"size\":6}]],\"editRelations\":[\"site\",\"places\"]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::schedule.schedule', '{\"uid\":\"api::schedule.schedule\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"internal_code\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date_from\":{\"edit\":{\"label\":\"date_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_from\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"date_to\":{\"edit\":{\"label\":\"date_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_to\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"production\":{\"edit\":{\"label\":\"production\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"production\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"coordinator\":{\"edit\":{\"label\":\"coordinator\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"coordinator\",\"searchable\":true,\"sortable\":true}},\"planificado\":{\"edit\":{\"label\":\"planificado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"planificado\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date_from\",\"internal_code\",\"production\"],\"edit\":[[{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"date_from\",\"size\":4},{\"name\":\"date_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"production\",\"size\":4},{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}],[{\"name\":\"planificado\",\"size\":4},{\"name\":\"type\",\"size\":6}]],\"editRelations\":[\"coordinator\",\"site\"]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::rule-day.rule-day', '{\"uid\":\"api::rule-day.rule-day\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"monday\":{\"edit\":{\"label\":\"monday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday\",\"searchable\":true,\"sortable\":true}},\"tuesday\":{\"edit\":{\"label\":\"tuesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday\",\"searchable\":true,\"sortable\":true}},\"wednesday\":{\"edit\":{\"label\":\"wednesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday\",\"searchable\":true,\"sortable\":true}},\"thursday\":{\"edit\":{\"label\":\"thursday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday\",\"searchable\":true,\"sortable\":true}},\"friday\":{\"edit\":{\"label\":\"friday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday\",\"searchable\":true,\"sortable\":true}},\"saturday\":{\"edit\":{\"label\":\"saturday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday\",\"searchable\":true,\"sortable\":true}},\"sunday\":{\"edit\":{\"label\":\"sunday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"skip_order_group\":{\"edit\":{\"label\":\"skip_order_group\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"skip_order_group\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"monday\",\"tuesday\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"monday\",\"size\":4}],[{\"name\":\"tuesday\",\"size\":4},{\"name\":\"wednesday\",\"size\":4},{\"name\":\"thursday\",\"size\":4}],[{\"name\":\"friday\",\"size\":4},{\"name\":\"saturday\",\"size\":4},{\"name\":\"sunday\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4},{\"name\":\"order\",\"size\":4}],[{\"name\":\"skip_order_group\",\"size\":4}]],\"editRelations\":[\"site\"]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::groups-and-agent.groups-and-agent', '{\"uid\":\"api::groups-and-agent.groups-and-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":true,\"sortable\":true}},\"group\":{\"edit\":{\"label\":\"group\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"group\",\"searchable\":true,\"sortable\":true}},\"available\":{\"edit\":{\"label\":\"available\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"available\",\"searchable\":true,\"sortable\":true}},\"rules_day\":{\"edit\":{\"label\":\"rules_day\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"rules_day\",\"searchable\":true,\"sortable\":true}},\"rules_hour\":{\"edit\":{\"label\":\"rules_hour\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"rules_hour\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"place\":{\"edit\":{\"label\":\"place\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"place\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"agents\",\"group\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"available\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4},{\"name\":\"order\",\"size\":4}]],\"editRelations\":[\"agents\",\"group\",\"rules_day\",\"rules_hour\",\"place\",\"site\"]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::isabel-call-base.isabel-call-base', '{\"uid\":\"api::isabel-call-base.isabel-call-base\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"time\":{\"edit\":{\"label\":\"time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time\",\"searchable\":true,\"sortable\":true}},\"cabinas_6022_manejadas\":{\"edit\":{\"label\":\"cabinas_6022_manejadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cabinas_6022_manejadas\",\"searchable\":true,\"sortable\":true}},\"soporte_5900_manejadas\":{\"edit\":{\"label\":\"soporte_5900_manejadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"soporte_5900_manejadas\",\"searchable\":true,\"sortable\":true}},\"cabinas_6022_abandonadas\":{\"edit\":{\"label\":\"cabinas_6022_abandonadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cabinas_6022_abandonadas\",\"searchable\":true,\"sortable\":true}},\"soporte_5900_abandonadas\":{\"edit\":{\"label\":\"soporte_5900_abandonadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"soporte_5900_abandonadas\",\"searchable\":true,\"sortable\":true}},\"atc_6028_manejadas\":{\"edit\":{\"label\":\"atc_6028_manejadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"atc_6028_manejadas\",\"searchable\":true,\"sortable\":true}},\"cobranzas_5903_manejadas\":{\"edit\":{\"label\":\"cobranzas_5903_manejadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cobranzas_5903_manejadas\",\"searchable\":true,\"sortable\":true}},\"atc_6028_abandonadas\":{\"edit\":{\"label\":\"atc_6028_abandonadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"atc_6028_abandonadas\",\"searchable\":true,\"sortable\":true}},\"cobranzas_5903_abandonadas\":{\"edit\":{\"label\":\"cobranzas_5903_abandonadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cobranzas_5903_abandonadas\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"manejadas\":{\"edit\":{\"label\":\"manejadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"manejadas\",\"searchable\":true,\"sortable\":true}},\"abandonadas\":{\"edit\":{\"label\":\"abandonadas\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"abandonadas\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date\",\"time\",\"cabinas_6022_manejadas\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"time\",\"size\":4},{\"name\":\"cabinas_6022_manejadas\",\"size\":4}],[{\"name\":\"soporte_5900_manejadas\",\"size\":4},{\"name\":\"cabinas_6022_abandonadas\",\"size\":4},{\"name\":\"soporte_5900_abandonadas\",\"size\":4}],[{\"name\":\"atc_6028_manejadas\",\"size\":4},{\"name\":\"cobranzas_5903_manejadas\",\"size\":4},{\"name\":\"atc_6028_abandonadas\",\"size\":4}],[{\"name\":\"cobranzas_5903_abandonadas\",\"size\":4},{\"name\":\"manejadas\",\"size\":4},{\"name\":\"abandonadas\",\"size\":4}]],\"editRelations\":[\"area\"]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::dates-available-by-agent.dates-available-by-agent', '{\"uid\":\"api::dates-available-by-agent.dates-available-by-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date_from\":{\"edit\":{\"label\":\"date_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_from\",\"searchable\":true,\"sortable\":true}},\"date_to\":{\"edit\":{\"label\":\"date_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_to\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"agent\":{\"edit\":{\"label\":\"agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agent\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date_from\",\"date_to\",\"agent\"],\"edit\":[[{\"name\":\"date_from\",\"size\":4},{\"name\":\"date_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"agent\",\"site\"]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::unavailable-dates-by-agent.unavailable-dates-by-agent', '{\"uid\":\"api::unavailable-dates-by-agent.unavailable-dates-by-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date_from\":{\"edit\":{\"label\":\"date_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_from\",\"searchable\":true,\"sortable\":true}},\"date_to\":{\"edit\":{\"label\":\"date_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_to\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date_from\",\"date_to\",\"agents\"],\"edit\":[[{\"name\":\"date_from\",\"size\":4},{\"name\":\"date_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"agents\",\"site\"]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::vacation-date-by-agent.vacation-date-by-agent', '{\"uid\":\"api::vacation-date-by-agent.vacation-date-by-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date_from\":{\"edit\":{\"label\":\"date_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_from\",\"searchable\":true,\"sortable\":true}},\"date_to\":{\"edit\":{\"label\":\"date_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date_to\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"days_before_to_remind\":{\"edit\":{\"label\":\"days_before_to_remind\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"days_before_to_remind\",\"searchable\":true,\"sortable\":true}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date_from\",\"date_to\",\"days_before_to_remind\"],\"edit\":[[{\"name\":\"date_from\",\"size\":4},{\"name\":\"date_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"days_before_to_remind\",\"size\":4},{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"agents\",\"site\"]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::coordinator.coordinator', '{\"uid\":\"api::coordinator.coordinator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"names\",\"defaultSortBy\":\"names\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"names\":{\"edit\":{\"label\":\"names\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"names\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"surnames\":{\"edit\":{\"label\":\"surnames\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"surnames\",\"searchable\":true,\"sortable\":true}},\"identification\":{\"edit\":{\"label\":\"identification\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"identification\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"login_nl\":{\"edit\":{\"label\":\"login_nl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"login_nl\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"sites\":{\"edit\":{\"label\":\"sites\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"sites\",\"searchable\":false,\"sortable\":false}},\"access_system\":{\"edit\":{\"label\":\"access_system\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"access_system\",\"searchable\":true,\"sortable\":true}},\"rol\":{\"edit\":{\"label\":\"rol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"rol\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"names\",\"surnames\",\"identification\"],\"edit\":[[{\"name\":\"names\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"surnames\",\"size\":6},{\"name\":\"identification\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}],[{\"name\":\"password\",\"size\":6},{\"name\":\"login_nl\",\"size\":4}],[{\"name\":\"username\",\"size\":6},{\"name\":\"access_system\",\"size\":4}]],\"editRelations\":[\"sites\",\"rol\"]}}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::region.region', '{\"uid\":\"api::region.region\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::city.city', '{\"uid\":\"api::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"region\":{\"edit\":{\"label\":\"region\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"region\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"region\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"region\"]}}', 'object', NULL, NULL),
(38, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"Netlife.png\",\"hash\":\"Netlife_5800c5f200\",\"url\":\"/uploads/Netlife_5800c5f200.png\",\"width\":750,\"height\":195,\"ext\":\".png\",\"size\":48.57,\"provider\":\"local\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(39, 'plugin_content_manager_configuration_content_types::api::type-of-agent.type-of-agent', '{\"uid\":\"api::type-of-agent.type-of-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"site\"]}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::place.place', '{\"uid\":\"api::place.place\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"city\":{\"edit\":{\"label\":\"city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"city\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"city\",\"site\"]}}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::api::schedules-day-turn.schedules-day-turn', '{\"uid\":\"api::schedules-day-turn.schedules-day-turn\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"shift\":{\"edit\":{\"label\":\"shift\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"shift\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"time_from\":{\"edit\":{\"label\":\"time_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_from\",\"searchable\":true,\"sortable\":true}},\"time_to\":{\"edit\":{\"label\":\"time_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_to\",\"searchable\":true,\"sortable\":true}},\"agentes_necesarios\":{\"edit\":{\"label\":\"agentes_necesarios\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"agentes_necesarios\",\"searchable\":true,\"sortable\":true}},\"groups_and_agents\":{\"edit\":{\"label\":\"groups_and_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agents\",\"searchable\":false,\"sortable\":false}},\"lunch_time\":{\"edit\":{\"label\":\"lunch_time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lunch_time\",\"searchable\":true,\"sortable\":true}},\"velada\":{\"edit\":{\"label\":\"velada\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"velada\",\"searchable\":true,\"sortable\":true}},\"horas_extras\":{\"edit\":{\"label\":\"horas_extras\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"horas_extras\",\"searchable\":true,\"sortable\":true}},\"place\":{\"edit\":{\"label\":\"place\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"place\",\"searchable\":true,\"sortable\":true}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":false,\"sortable\":false}},\"soporte\":{\"edit\":{\"label\":\"soporte\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"soporte\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"holiday\":{\"edit\":{\"label\":\"holiday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"holiday\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"date\",\"shift\",\"schedule\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"time_from\",\"size\":4},{\"name\":\"time_to\",\"size\":4}],[{\"name\":\"agentes_necesarios\",\"size\":4},{\"name\":\"lunch_time\",\"size\":4},{\"name\":\"velada\",\"size\":4}],[{\"name\":\"horas_extras\",\"size\":4},{\"name\":\"soporte\",\"size\":4}],[{\"name\":\"color\",\"size\":6},{\"name\":\"name\",\"size\":6}],[{\"name\":\"holiday\",\"size\":4}]],\"editRelations\":[\"shift\",\"schedule\",\"groups_and_agents\",\"place\",\"agents\"]}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::schedule-turn-agent.schedule-turn-agent', '{\"uid\":\"api::schedule-turn-agent.schedule-turn-agent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedules_day_turn\":{\"edit\":{\"label\":\"schedules_day_turn\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"schedules_day_turn\",\"searchable\":true,\"sortable\":true}},\"groups_and_agent\":{\"edit\":{\"label\":\"groups_and_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agent\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedules_day_turn\",\"groups_and_agent\",\"createdAt\"],\"editRelations\":[\"schedules_day_turn\",\"groups_and_agent\"],\"edit\":[]}}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno', '{\"uid\":\"api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"agentes_necesarios\":{\"edit\":{\"label\":\"agentes_necesarios\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"agentes_necesarios\",\"searchable\":true,\"sortable\":true}},\"shift\":{\"edit\":{\"label\":\"shift\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"shift\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"agentes_necesarios\",\"shift\",\"date\"],\"edit\":[[{\"name\":\"agentes_necesarios\",\"size\":4},{\"name\":\"date\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"shift\",\"site\"]}}', 'object', NULL, NULL),
(47, 'plugin_content_manager_configuration_content_types::api::configuracion-horas-nocturna.configuracion-horas-nocturna', '{\"uid\":\"api::configuracion-horas-nocturna.configuracion-horas-nocturna\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"hora_desde\":{\"edit\":{\"label\":\"hora_desde\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hora_desde\",\"searchable\":true,\"sortable\":true}},\"hora_hasta\":{\"edit\":{\"label\":\"hora_hasta\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hora_hasta\",\"searchable\":true,\"sortable\":true}},\"area\":{\"edit\":{\"label\":\"area\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"area\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"hora_desde\",\"hora_hasta\",\"area\"],\"edit\":[[{\"name\":\"hora_desde\",\"size\":4},{\"name\":\"hora_hasta\",\"size\":4},{\"name\":\"active\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"area\",\"site\"]}}', 'object', NULL, NULL),
(49, 'plugin_content_manager_configuration_content_types::api::configuracion-login.configuracion-login', '{\"uid\":\"api::configuracion-login.configuracion-login\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"active\",\"deleted\"],\"editRelations\":[],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"active\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}]]}}', 'object', NULL, NULL),
(50, 'plugin_content_manager_configuration_content_types::api::module.module', '{\"uid\":\"api::module.module\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"code\",\"size\":6}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(51, 'plugin_content_manager_configuration_content_types::api::rol.rol', '{\"uid\":\"api::rol.rol\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(52, 'plugin_content_manager_configuration_content_types::api::permiso.permiso', '{\"uid\":\"api::permiso.permiso\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"module\":{\"edit\":{\"label\":\"module\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"module\",\"searchable\":true,\"sortable\":true}},\"rol\":{\"edit\":{\"label\":\"rol\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"rol\",\"searchable\":true,\"sortable\":true}},\"create\":{\"edit\":{\"label\":\"create\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"create\",\"searchable\":true,\"sortable\":true}},\"read\":{\"edit\":{\"label\":\"read\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"read\",\"searchable\":true,\"sortable\":true}},\"update\":{\"edit\":{\"label\":\"update\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"update\",\"searchable\":true,\"sortable\":true}},\"delete\":{\"edit\":{\"label\":\"delete\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"delete\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"module\",\"rol\",\"create\"],\"editRelations\":[\"module\",\"rol\"],\"edit\":[[{\"name\":\"create\",\"size\":4},{\"name\":\"read\",\"size\":4},{\"name\":\"update\",\"size\":4}],[{\"name\":\"delete\",\"size\":4}]]}}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_content_types::api::schedules-day-descanso.schedules-day-descanso', '{\"uid\":\"api::schedules-day-descanso.schedules-day-descanso\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"groups_and_agents\":{\"edit\":{\"label\":\"groups_and_agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agents\",\"searchable\":false,\"sortable\":false}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedule\",\"date\",\"groups_and_agents\"],\"edit\":[[{\"name\":\"date\",\"size\":4}]],\"editRelations\":[\"schedule\",\"groups_and_agents\",\"agents\"]}}', 'object', NULL, NULL),
(54, 'plugin_content_manager_configuration_content_types::api::schedules-day-hextra.schedules-day-hextra', '{\"uid\":\"api::schedules-day-hextra.schedules-day-hextra\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"time_from\":{\"edit\":{\"label\":\"time_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_from\",\"searchable\":true,\"sortable\":true}},\"time_to\":{\"edit\":{\"label\":\"time_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_to\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"groups_and_agent\":{\"edit\":{\"label\":\"groups_and_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agent\",\"searchable\":true,\"sortable\":true}},\"shift\":{\"edit\":{\"label\":\"shift\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"shift\",\"searchable\":true,\"sortable\":true}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":false,\"sortable\":false}},\"lunch_time\":{\"edit\":{\"label\":\"lunch_time\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lunch_time\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedule\",\"date\",\"time_from\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"time_from\",\"size\":4},{\"name\":\"time_to\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"deleted\",\"size\":4},{\"name\":\"lunch_time\",\"size\":4}]],\"editRelations\":[\"schedule\",\"groups_and_agent\",\"shift\",\"agents\"]}}', 'object', NULL, NULL),
(55, 'plugin_content_manager_configuration_content_types::api::schedules-day-hsuplementaria.schedules-day-hsuplementaria', '{\"uid\":\"api::schedules-day-hsuplementaria.schedules-day-hsuplementaria\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"time_from\":{\"edit\":{\"label\":\"time_from\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_from\",\"searchable\":true,\"sortable\":true}},\"time_to\":{\"edit\":{\"label\":\"time_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"time_to\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"groups_and_agent\":{\"edit\":{\"label\":\"groups_and_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agent\",\"searchable\":true,\"sortable\":true}},\"agents\":{\"edit\":{\"label\":\"agents\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"names\"},\"list\":{\"label\":\"agents\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedule\",\"date\",\"time_from\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"time_from\",\"size\":4},{\"name\":\"time_to\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}]],\"editRelations\":[\"schedule\",\"groups_and_agent\",\"agents\"]}}', 'object', NULL, NULL),
(56, 'plugin_content_manager_configuration_content_types::api::site.site', '{\"uid\":\"api::site.site\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"observations\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":6},{\"name\":\"active\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4},{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_content_types::api::tipo-lider.tipo-lider', '{\"uid\":\"api::tipo-lider.tipo-lider\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"internal_code\",\"order\"],\"editRelations\":[\"site\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"order\",\"size\":4}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]]}}', 'object', NULL, NULL),
(58, 'plugin_content_manager_configuration_content_types::api::tipo-standby.tipo-standby', '{\"uid\":\"api::tipo-standby.tipo-standby\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"internal_code\":{\"edit\":{\"label\":\"internal_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"internal_code\",\"searchable\":true,\"sortable\":true}},\"observations\":{\"edit\":{\"label\":\"observations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observations\",\"searchable\":false,\"sortable\":false}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"order\",\"internal_code\"],\"editRelations\":[\"site\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"order\",\"size\":4}],[{\"name\":\"internal_code\",\"size\":6}],[{\"name\":\"observations\",\"size\":12}],[{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]]}}', 'object', NULL, NULL),
(59, 'plugin_content_manager_configuration_content_types::api::schedules-day-leader.schedules-day-leader', '{\"uid\":\"api::schedules-day-leader.schedules-day-leader\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"tipo_lider\":{\"edit\":{\"label\":\"tipo_lider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"tipo_lider\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"groups_and_agent\":{\"edit\":{\"label\":\"groups_and_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agent\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedule\",\"tipo_lider\",\"date\"],\"edit\":[[{\"name\":\"date\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"order\",\"size\":4}]],\"editRelations\":[\"schedule\",\"tipo_lider\",\"groups_and_agent\"]}}', 'object', NULL, NULL),
(60, 'plugin_content_manager_configuration_content_types::api::schedules-day-standby.schedules-day-standby', '{\"uid\":\"api::schedules-day-standby.schedules-day-standby\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"schedule\":{\"edit\":{\"label\":\"schedule\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"internal_code\"},\"list\":{\"label\":\"schedule\",\"searchable\":true,\"sortable\":true}},\"groups_and_agent\":{\"edit\":{\"label\":\"groups_and_agent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"groups_and_agent\",\"searchable\":true,\"sortable\":true}},\"tipo_standby\":{\"edit\":{\"label\":\"tipo_standby\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"tipo_standby\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"date\":{\"edit\":{\"label\":\"date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"date\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"schedule\",\"tipo_standby\",\"groups_and_agent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"order\",\"size\":4}],[{\"name\":\"date\",\"size\":4}]],\"editRelations\":[\"schedule\",\"tipo_standby\",\"groups_and_agent\"]}}', 'object', NULL, NULL),
(61, 'plugin_content_manager_configuration_content_types::api::group-and-grouped-days.group-and-grouped-days', '{\"uid\":\"api::group-and-grouped-days.group-and-grouped-days\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"monday\":{\"edit\":{\"label\":\"monday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"monday\",\"searchable\":true,\"sortable\":true}},\"tuesday\":{\"edit\":{\"label\":\"tuesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tuesday\",\"searchable\":true,\"sortable\":true}},\"wednesday\":{\"edit\":{\"label\":\"wednesday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"wednesday\",\"searchable\":true,\"sortable\":true}},\"thursday\":{\"edit\":{\"label\":\"thursday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"thursday\",\"searchable\":true,\"sortable\":true}},\"friday\":{\"edit\":{\"label\":\"friday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"friday\",\"searchable\":true,\"sortable\":true}},\"saturday\":{\"edit\":{\"label\":\"saturday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"saturday\",\"searchable\":true,\"sortable\":true}},\"sunday\":{\"edit\":{\"label\":\"sunday\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"sunday\",\"searchable\":true,\"sortable\":true}},\"group\":{\"edit\":{\"label\":\"group\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"group\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"monday\",\"tuesday\",\"wednesday\"],\"edit\":[[{\"name\":\"monday\",\"size\":4},{\"name\":\"tuesday\",\"size\":4},{\"name\":\"wednesday\",\"size\":4}],[{\"name\":\"thursday\",\"size\":4},{\"name\":\"friday\",\"size\":4},{\"name\":\"saturday\",\"size\":4}],[{\"name\":\"sunday\",\"size\":4},{\"name\":\"order\",\"size\":4},{\"name\":\"active\",\"size\":4}],[{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"group\",\"site\"]}}', 'object', NULL, NULL),
(62, 'plugin_content_manager_configuration_content_types::api::site-configuration.site-configuration', '{\"uid\":\"api::site-configuration.site-configuration\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"site\":{\"edit\":{\"label\":\"site\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"site\",\"searchable\":true,\"sortable\":true}},\"turno_velada_por_orden\":{\"edit\":{\"label\":\"turno_velada_por_orden\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"turno_velada_por_orden\",\"searchable\":true,\"sortable\":true}},\"active\":{\"edit\":{\"label\":\"active\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"active\",\"searchable\":true,\"sortable\":true}},\"deleted\":{\"edit\":{\"label\":\"deleted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deleted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"site\",\"turno_velada_por_orden\",\"createdAt\"],\"edit\":[[{\"name\":\"turno_velada_por_orden\",\"size\":4},{\"name\":\"active\",\"size\":4},{\"name\":\"deleted\",\"size\":4}]],\"editRelations\":[\"site\"]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(177, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents\",\"indexes\":[{\"name\":\"agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"names\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"surnames\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"identification\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agentes_necesarios_por_dia_por_turnos\",\"indexes\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"agentes_necesarios_por_dia_por_turnos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"agentes_necesarios_por_dia_por_turnos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"agentes_necesarios\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"areas\",\"indexes\":[{\"name\":\"areas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"areas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"areas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"areas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cities\",\"indexes\":[{\"name\":\"cities_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"cities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"cities_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"cities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracion_horas_nocturnas\",\"indexes\":[{\"name\":\"configuracion_horas_nocturnas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"configuracion_horas_nocturnas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"configuracion_horas_nocturnas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"configuracion_horas_nocturnas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"hora_desde\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hora_hasta\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracion_logins\",\"indexes\":[{\"name\":\"configuracion_logins_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"configuracion_logins_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"configuracion_logins_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"configuracion_logins_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"coordinators\",\"indexes\":[{\"name\":\"coordinators_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"coordinators_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"coordinators_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"coordinators_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"names\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"surnames\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"identification\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"phone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"login_nl\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_system\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"dates_available_by_agents\",\"indexes\":[{\"name\":\"dates_available_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"dates_available_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"dates_available_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"dates_available_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date_from\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date_to\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups\",\"indexes\":[{\"name\":\"groups_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"groups_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"groups_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"groups_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"max_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday_order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_monday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_tuesday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_wednesday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_thursday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_friday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_saturday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"view_sunday_rest\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"group_and_grouped_day\",\"indexes\":[{\"name\":\"group_and_grouped_day_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"group_and_grouped_day_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"group_and_grouped_day_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"group_and_grouped_day_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"monday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents\",\"indexes\":[{\"name\":\"groups_and_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"groups_and_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"groups_and_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"available\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"holidays\",\"indexes\":[{\"name\":\"holidays_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"holidays_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"holidays_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"holidays_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"isabel_call_bases\",\"indexes\":[{\"name\":\"isabel_call_bases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"isabel_call_bases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"isabel_call_bases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"isabel_call_bases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cabinas_6022_manejadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"soporte_5900_manejadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cabinas_6022_abandonadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"soporte_5900_abandonadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"atc_6028_manejadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cobranzas_5903_manejadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"atc_6028_abandonadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"cobranzas_5903_abandonadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"manejadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"abandonadas\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"modules\",\"indexes\":[{\"name\":\"modules_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"modules_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"modules_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"modules_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"permisos\",\"indexes\":[{\"name\":\"permisos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"permisos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"permisos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"permisos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"create\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"read\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"update\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"delete\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"places\",\"indexes\":[{\"name\":\"places_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"places_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"places_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"places_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"regions\",\"indexes\":[{\"name\":\"regions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"regions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"regions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"regions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rols\",\"indexes\":[{\"name\":\"rols_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"rols_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"rols_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"rols_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rules_days\",\"indexes\":[{\"name\":\"rules_days_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"rules_days_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"rules_days_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"rules_days_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"skip_order_group\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rules_hours\",\"indexes\":[{\"name\":\"rules_hours_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"rules_hours_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"rules_hours_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"rules_hours_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_from\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_to\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"skip_order_group\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type_rule\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules\",\"indexes\":[{\"name\":\"schedules_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date_from\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date_to\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"production\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"planificado\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedule_turn_agents\",\"indexes\":[{\"name\":\"schedule_turn_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedule_turn_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedule_turn_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedule_turn_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_descansos\",\"indexes\":[{\"name\":\"schedules_day_descansos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_descansos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_descansos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_descansos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hextras\",\"indexes\":[{\"name\":\"schedules_day_hextras_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_hextras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hextras_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_hextras_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_from\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_to\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lunch_time\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hsuplementarias\",\"indexes\":[{\"name\":\"schedules_day_hsuplementarias_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_hsuplementarias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hsuplementarias_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_hsuplementarias_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_from\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_to\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_leaders\",\"indexes\":[{\"name\":\"schedules_day_leaders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_leaders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_leaders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_leaders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_standbies\",\"indexes\":[{\"name\":\"schedules_day_standbies_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_standbies_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_standbies_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_standbies_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns\",\"indexes\":[{\"name\":\"schedules_day_turns_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"schedules_day_turns_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"schedules_day_turns_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_from\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_to\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"agentes_necesarios\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lunch_time\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"velada\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"horas_extras\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"soporte\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"holiday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"shifts\",\"indexes\":[{\"name\":\"shifts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"shifts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"shifts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"shifts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"time_from\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"time_to\",\"type\":\"time\",\"args\":[{\"precision\":3}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lunch_time\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"velada\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"horas_extras\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"num_agentes_necesarios\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"soporte\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday_num_agents\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sites\",\"indexes\":[{\"name\":\"sites_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sites_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sites_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sites_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"site_configurations\",\"indexes\":[{\"name\":\"site_configurations_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"site_configurations_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"site_configurations_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"site_configurations_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"turno_velada_por_orden\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipo_liders\",\"indexes\":[{\"name\":\"tipo_liders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"tipo_liders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"tipo_liders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"tipo_liders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipo_standbies\",\"indexes\":[{\"name\":\"tipo_standbies_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"tipo_standbies_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"tipo_standbies_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"tipo_standbies_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"type_of_agents\",\"indexes\":[{\"name\":\"type_of_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"type_of_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"type_of_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"type_of_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"type_of_holidays\",\"indexes\":[{\"name\":\"type_of_holidays_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"type_of_holidays_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"type_of_holidays_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"type_of_holidays_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"type_of_shifts\",\"indexes\":[{\"name\":\"type_of_shifts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"type_of_shifts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"type_of_shifts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"type_of_shifts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"internal_code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"monday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tuesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"wednesday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"thursday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"friday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"saturday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"sunday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"holiday\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"unavailable_dates_by_agents\",\"indexes\":[{\"name\":\"unavailable_dates_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"unavailable_dates_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"unavailable_dates_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"unavailable_dates_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date_from\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date_to\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"vacation_date_by_agents\",\"indexes\":[{\"name\":\"vacation_date_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"vacation_date_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"vacation_date_by_agents_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"vacation_date_by_agents_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"date_from\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"date_to\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"observations\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"days_before_to_remind\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deleted\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents_area_links\",\"indexes\":[{\"name\":\"agents_area_links_fk\",\"columns\":[\"agent_id\"]},{\"name\":\"agents_area_links_inv_fk\",\"columns\":[\"area_id\"]}],\"foreignKeys\":[{\"name\":\"agents_area_links_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"agents_area_links_inv_fk\",\"columns\":[\"area_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"areas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"area_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents_coordinator_links\",\"indexes\":[{\"name\":\"agents_coordinator_links_fk\",\"columns\":[\"agent_id\"]},{\"name\":\"agents_coordinator_links_inv_fk\",\"columns\":[\"coordinator_id\"]}],\"foreignKeys\":[{\"name\":\"agents_coordinator_links_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"agents_coordinator_links_inv_fk\",\"columns\":[\"coordinator_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"coordinators\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"coordinator_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents_city_links\",\"indexes\":[{\"name\":\"agents_city_links_fk\",\"columns\":[\"agent_id\"]},{\"name\":\"agents_city_links_inv_fk\",\"columns\":[\"city_id\"]}],\"foreignKeys\":[{\"name\":\"agents_city_links_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"agents_city_links_inv_fk\",\"columns\":[\"city_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cities\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"city_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents_type_of_agent_links\",\"indexes\":[{\"name\":\"agents_type_of_agent_links_fk\",\"columns\":[\"agent_id\"]},{\"name\":\"agents_type_of_agent_links_inv_fk\",\"columns\":[\"type_of_agent_id\"]}],\"foreignKeys\":[{\"name\":\"agents_type_of_agent_links_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"agents_type_of_agent_links_inv_fk\",\"columns\":[\"type_of_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"type_of_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agents_site_links\",\"indexes\":[{\"name\":\"agents_site_links_fk\",\"columns\":[\"agent_id\"]},{\"name\":\"agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"agents_site_links_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agentes_necesarios_por_dia_por_turnos_shift_links\",\"indexes\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_shift_links_fk\",\"columns\":[\"agentes_necesarios_por_dia_por_turno_id\"]},{\"name\":\"agentes_necesarios_por_dia_por_turnos_shift_links_inv_fk\",\"columns\":[\"shift_id\"]}],\"foreignKeys\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_shift_links_fk\",\"columns\":[\"agentes_necesarios_por_dia_por_turno_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agentes_necesarios_por_dia_por_turnos\",\"onDelete\":\"CASCADE\"},{\"name\":\"agentes_necesarios_por_dia_por_turnos_shift_links_inv_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agentes_necesarios_por_dia_por_turno_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agentes_necesarios_por_dia_por_turnos_site_links\",\"indexes\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_site_links_fk\",\"columns\":[\"agentes_necesarios_por_dia_por_turno_id\"]},{\"name\":\"agentes_necesarios_por_dia_por_turnos_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"agentes_necesarios_por_dia_por_turnos_site_links_fk\",\"columns\":[\"agentes_necesarios_por_dia_por_turno_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agentes_necesarios_por_dia_por_turnos\",\"onDelete\":\"CASCADE\"},{\"name\":\"agentes_necesarios_por_dia_por_turnos_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"agentes_necesarios_por_dia_por_turno_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"areas_site_links\",\"indexes\":[{\"name\":\"areas_site_links_fk\",\"columns\":[\"area_id\"]},{\"name\":\"areas_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"areas_site_links_fk\",\"columns\":[\"area_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"areas\",\"onDelete\":\"CASCADE\"},{\"name\":\"areas_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"area_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cities_region_links\",\"indexes\":[{\"name\":\"cities_region_links_fk\",\"columns\":[\"city_id\"]},{\"name\":\"cities_region_links_inv_fk\",\"columns\":[\"region_id\"]}],\"foreignKeys\":[{\"name\":\"cities_region_links_fk\",\"columns\":[\"city_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cities\",\"onDelete\":\"CASCADE\"},{\"name\":\"cities_region_links_inv_fk\",\"columns\":[\"region_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"regions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"city_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"region_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracion_horas_nocturnas_area_links\",\"indexes\":[{\"name\":\"configuracion_horas_nocturnas_area_links_fk\",\"columns\":[\"configuracion_horas_nocturna_id\"]},{\"name\":\"configuracion_horas_nocturnas_area_links_inv_fk\",\"columns\":[\"area_id\"]}],\"foreignKeys\":[{\"name\":\"configuracion_horas_nocturnas_area_links_fk\",\"columns\":[\"configuracion_horas_nocturna_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"configuracion_horas_nocturnas\",\"onDelete\":\"CASCADE\"},{\"name\":\"configuracion_horas_nocturnas_area_links_inv_fk\",\"columns\":[\"area_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"areas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"configuracion_horas_nocturna_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"area_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"configuracion_horas_nocturnas_site_links\",\"indexes\":[{\"name\":\"configuracion_horas_nocturnas_site_links_fk\",\"columns\":[\"configuracion_horas_nocturna_id\"]},{\"name\":\"configuracion_horas_nocturnas_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"configuracion_horas_nocturnas_site_links_fk\",\"columns\":[\"configuracion_horas_nocturna_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"configuracion_horas_nocturnas\",\"onDelete\":\"CASCADE\"},{\"name\":\"configuracion_horas_nocturnas_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"configuracion_horas_nocturna_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"coordinators_sites_links\",\"indexes\":[{\"name\":\"coordinators_sites_links_fk\",\"columns\":[\"coordinator_id\"]},{\"name\":\"coordinators_sites_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"coordinators_sites_links_fk\",\"columns\":[\"coordinator_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"coordinators\",\"onDelete\":\"CASCADE\"},{\"name\":\"coordinators_sites_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"coordinator_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"coordinators_rol_links\",\"indexes\":[{\"name\":\"coordinators_rol_links_fk\",\"columns\":[\"coordinator_id\"]},{\"name\":\"coordinators_rol_links_inv_fk\",\"columns\":[\"rol_id\"]}],\"foreignKeys\":[{\"name\":\"coordinators_rol_links_fk\",\"columns\":[\"coordinator_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"coordinators\",\"onDelete\":\"CASCADE\"},{\"name\":\"coordinators_rol_links_inv_fk\",\"columns\":[\"rol_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rols\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"coordinator_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"rol_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"dates_available_by_agents_agent_links\",\"indexes\":[{\"name\":\"dates_available_by_agents_agent_links_fk\",\"columns\":[\"dates_available_by_agent_id\"]},{\"name\":\"dates_available_by_agents_agent_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"dates_available_by_agents_agent_links_fk\",\"columns\":[\"dates_available_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"dates_available_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"dates_available_by_agents_agent_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"dates_available_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"dates_available_by_agents_site_links\",\"indexes\":[{\"name\":\"dates_available_by_agents_site_links_fk\",\"columns\":[\"dates_available_by_agent_id\"]},{\"name\":\"dates_available_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"dates_available_by_agents_site_links_fk\",\"columns\":[\"dates_available_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"dates_available_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"dates_available_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"dates_available_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_area_links\",\"indexes\":[{\"name\":\"groups_area_links_fk\",\"columns\":[\"group_id\"]},{\"name\":\"groups_area_links_inv_fk\",\"columns\":[\"area_id\"]}],\"foreignKeys\":[{\"name\":\"groups_area_links_fk\",\"columns\":[\"group_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_area_links_inv_fk\",\"columns\":[\"area_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"areas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"group_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"area_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_site_links\",\"indexes\":[{\"name\":\"groups_site_links_fk\",\"columns\":[\"group_id\"]},{\"name\":\"groups_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"groups_site_links_fk\",\"columns\":[\"group_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"group_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"group_and_grouped_day_group_links\",\"indexes\":[{\"name\":\"group_and_grouped_day_group_links_fk\",\"columns\":[\"group_and_grouped_days_id\"]},{\"name\":\"group_and_grouped_day_group_links_inv_fk\",\"columns\":[\"group_id\"]}],\"foreignKeys\":[{\"name\":\"group_and_grouped_day_group_links_fk\",\"columns\":[\"group_and_grouped_days_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"group_and_grouped_day\",\"onDelete\":\"CASCADE\"},{\"name\":\"group_and_grouped_day_group_links_inv_fk\",\"columns\":[\"group_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"group_and_grouped_days_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"group_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"group_and_grouped_day_site_links\",\"indexes\":[{\"name\":\"group_and_grouped_day_site_links_fk\",\"columns\":[\"group_and_grouped_days_id\"]},{\"name\":\"group_and_grouped_day_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"group_and_grouped_day_site_links_fk\",\"columns\":[\"group_and_grouped_days_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"group_and_grouped_day\",\"onDelete\":\"CASCADE\"},{\"name\":\"group_and_grouped_day_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"group_and_grouped_days_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_agents_links\",\"indexes\":[{\"name\":\"groups_and_agents_agents_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_agents_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_group_links\",\"indexes\":[{\"name\":\"groups_and_agents_group_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_group_links_inv_fk\",\"columns\":[\"group_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_group_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_group_links_inv_fk\",\"columns\":[\"group_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"group_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_rules_day_links\",\"indexes\":[{\"name\":\"groups_and_agents_rules_day_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_rules_day_links_inv_fk\",\"columns\":[\"rule_day_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_rules_day_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_rules_day_links_inv_fk\",\"columns\":[\"rule_day_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rules_days\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"rule_day_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_rules_hour_links\",\"indexes\":[{\"name\":\"groups_and_agents_rules_hour_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_rules_hour_links_inv_fk\",\"columns\":[\"rule_hour_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_rules_hour_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_rules_hour_links_inv_fk\",\"columns\":[\"rule_hour_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rules_hours\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"rule_hour_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_place_links\",\"indexes\":[{\"name\":\"groups_and_agents_place_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_place_links_inv_fk\",\"columns\":[\"place_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_place_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_place_links_inv_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"groups_and_agents_site_links\",\"indexes\":[{\"name\":\"groups_and_agents_site_links_fk\",\"columns\":[\"groups_and_agent_id\"]},{\"name\":\"groups_and_agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"groups_and_agents_site_links_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"groups_and_agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"holidays_type_of_holiday_links\",\"indexes\":[{\"name\":\"holidays_type_of_holiday_links_fk\",\"columns\":[\"holiday_id\"]},{\"name\":\"holidays_type_of_holiday_links_inv_fk\",\"columns\":[\"type_of_holiday_id\"]}],\"foreignKeys\":[{\"name\":\"holidays_type_of_holiday_links_fk\",\"columns\":[\"holiday_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"holidays\",\"onDelete\":\"CASCADE\"},{\"name\":\"holidays_type_of_holiday_links_inv_fk\",\"columns\":[\"type_of_holiday_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_holidays\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"holiday_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"type_of_holiday_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"holidays_sites_links\",\"indexes\":[{\"name\":\"holidays_sites_links_fk\",\"columns\":[\"holiday_id\"]},{\"name\":\"holidays_sites_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"holidays_sites_links_fk\",\"columns\":[\"holiday_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"holidays\",\"onDelete\":\"CASCADE\"},{\"name\":\"holidays_sites_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"holiday_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"isabel_call_bases_area_links\",\"indexes\":[{\"name\":\"isabel_call_bases_area_links_fk\",\"columns\":[\"isabel_call_base_id\"]},{\"name\":\"isabel_call_bases_area_links_inv_fk\",\"columns\":[\"area_id\"]}],\"foreignKeys\":[{\"name\":\"isabel_call_bases_area_links_fk\",\"columns\":[\"isabel_call_base_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"isabel_call_bases\",\"onDelete\":\"CASCADE\"},{\"name\":\"isabel_call_bases_area_links_inv_fk\",\"columns\":[\"area_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"areas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"isabel_call_base_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"area_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"permisos_module_links\",\"indexes\":[{\"name\":\"permisos_module_links_fk\",\"columns\":[\"permiso_id\"]},{\"name\":\"permisos_module_links_inv_fk\",\"columns\":[\"module_id\"]}],\"foreignKeys\":[{\"name\":\"permisos_module_links_fk\",\"columns\":[\"permiso_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"permisos\",\"onDelete\":\"CASCADE\"},{\"name\":\"permisos_module_links_inv_fk\",\"columns\":[\"module_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"modules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permiso_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"module_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"permisos_rol_links\",\"indexes\":[{\"name\":\"permisos_rol_links_fk\",\"columns\":[\"permiso_id\"]},{\"name\":\"permisos_rol_links_inv_fk\",\"columns\":[\"rol_id\"]}],\"foreignKeys\":[{\"name\":\"permisos_rol_links_fk\",\"columns\":[\"permiso_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"permisos\",\"onDelete\":\"CASCADE\"},{\"name\":\"permisos_rol_links_inv_fk\",\"columns\":[\"rol_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rols\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permiso_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"rol_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"places_city_links\",\"indexes\":[{\"name\":\"places_city_links_fk\",\"columns\":[\"place_id\"]},{\"name\":\"places_city_links_inv_fk\",\"columns\":[\"city_id\"]}],\"foreignKeys\":[{\"name\":\"places_city_links_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"},{\"name\":\"places_city_links_inv_fk\",\"columns\":[\"city_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cities\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"city_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"places_site_links\",\"indexes\":[{\"name\":\"places_site_links_fk\",\"columns\":[\"place_id\"]},{\"name\":\"places_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"places_site_links_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"},{\"name\":\"places_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rules_days_site_links\",\"indexes\":[{\"name\":\"rules_days_site_links_fk\",\"columns\":[\"rule_day_id\"]},{\"name\":\"rules_days_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"rules_days_site_links_fk\",\"columns\":[\"rule_day_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rules_days\",\"onDelete\":\"CASCADE\"},{\"name\":\"rules_days_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"rule_day_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rules_hours_site_links\",\"indexes\":[{\"name\":\"rules_hours_site_links_fk\",\"columns\":[\"rule_hour_id\"]},{\"name\":\"rules_hours_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"rules_hours_site_links_fk\",\"columns\":[\"rule_hour_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rules_hours\",\"onDelete\":\"CASCADE\"},{\"name\":\"rules_hours_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"rule_hour_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"rules_hours_places_links\",\"indexes\":[{\"name\":\"rules_hours_places_links_fk\",\"columns\":[\"rule_hour_id\"]},{\"name\":\"rules_hours_places_links_inv_fk\",\"columns\":[\"place_id\"]}],\"foreignKeys\":[{\"name\":\"rules_hours_places_links_fk\",\"columns\":[\"rule_hour_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"rules_hours\",\"onDelete\":\"CASCADE\"},{\"name\":\"rules_hours_places_links_inv_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"rule_hour_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_site_links\",\"indexes\":[{\"name\":\"schedules_site_links_fk\",\"columns\":[\"schedule_id\"]},{\"name\":\"schedules_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_site_links_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_coordinator_links\",\"indexes\":[{\"name\":\"schedules_coordinator_links_fk\",\"columns\":[\"schedule_id\"]},{\"name\":\"schedules_coordinator_links_inv_fk\",\"columns\":[\"coordinator_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_coordinator_links_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_coordinator_links_inv_fk\",\"columns\":[\"coordinator_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"coordinators\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"coordinator_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedule_turn_agents_schedules_day_turn_links\",\"indexes\":[{\"name\":\"schedule_turn_agents_schedules_day_turn_links_fk\",\"columns\":[\"schedule_turn_agent_id\"]},{\"name\":\"schedule_turn_agents_schedules_day_turn_links_inv_fk\",\"columns\":[\"schedules_day_turn_id\"]}],\"foreignKeys\":[{\"name\":\"schedule_turn_agents_schedules_day_turn_links_fk\",\"columns\":[\"schedule_turn_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedule_turn_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedule_turn_agents_schedules_day_turn_links_inv_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedule_turn_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedule_turn_agents_groups_and_agent_links\",\"indexes\":[{\"name\":\"schedule_turn_agents_groups_and_agent_links_fk\",\"columns\":[\"schedule_turn_agent_id\"]},{\"name\":\"schedule_turn_agents_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedule_turn_agents_groups_and_agent_links_fk\",\"columns\":[\"schedule_turn_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedule_turn_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedule_turn_agents_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedule_turn_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_descansos_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_descansos_schedule_links_fk\",\"columns\":[\"schedules_day_descanso_id\"]},{\"name\":\"schedules_day_descansos_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_descansos_schedule_links_fk\",\"columns\":[\"schedules_day_descanso_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_descansos\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_descansos_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_descanso_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_descansos_groups_and_agents_links\",\"indexes\":[{\"name\":\"schedules_day_descansos_groups_and_agents_links_fk\",\"columns\":[\"schedules_day_descanso_id\"]},{\"name\":\"schedules_day_descansos_groups_and_agents_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_descansos_groups_and_agents_links_fk\",\"columns\":[\"schedules_day_descanso_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_descansos\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_descansos_groups_and_agents_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_descanso_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_descansos_agents_links\",\"indexes\":[{\"name\":\"schedules_day_descansos_agents_links_fk\",\"columns\":[\"schedules_day_descanso_id\"]},{\"name\":\"schedules_day_descansos_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_descansos_agents_links_fk\",\"columns\":[\"schedules_day_descanso_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_descansos\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_descansos_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_descanso_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hextras_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_hextras_schedule_links_fk\",\"columns\":[\"schedules_day_hextra_id\"]},{\"name\":\"schedules_day_hextras_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hextras_schedule_links_fk\",\"columns\":[\"schedules_day_hextra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hextras\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hextras_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hextra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hextras_groups_and_agent_links\",\"indexes\":[{\"name\":\"schedules_day_hextras_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_hextra_id\"]},{\"name\":\"schedules_day_hextras_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hextras_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_hextra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hextras\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hextras_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hextra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hextras_shift_links\",\"indexes\":[{\"name\":\"schedules_day_hextras_shift_links_fk\",\"columns\":[\"schedules_day_hextra_id\"]},{\"name\":\"schedules_day_hextras_shift_links_inv_fk\",\"columns\":[\"shift_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hextras_shift_links_fk\",\"columns\":[\"schedules_day_hextra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hextras\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hextras_shift_links_inv_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hextra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hextras_agents_links\",\"indexes\":[{\"name\":\"schedules_day_hextras_agents_links_fk\",\"columns\":[\"schedules_day_hextra_id\"]},{\"name\":\"schedules_day_hextras_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hextras_agents_links_fk\",\"columns\":[\"schedules_day_hextra_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hextras\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hextras_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hextra_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hsuplementarias_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_hsuplementarias_schedule_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"]},{\"name\":\"schedules_day_hsuplementarias_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hsuplementarias_schedule_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hsuplementarias\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hsuplementarias_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hsuplementaria_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hsuplementarias_groups_and_agent_links\",\"indexes\":[{\"name\":\"schedules_day_hsuplementarias_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"]},{\"name\":\"schedules_day_hsuplementarias_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hsuplementarias_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hsuplementarias\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hsuplementarias_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hsuplementaria_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_hsuplementarias_agents_links\",\"indexes\":[{\"name\":\"schedules_day_hsuplementarias_agents_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"]},{\"name\":\"schedules_day_hsuplementarias_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_hsuplementarias_agents_links_fk\",\"columns\":[\"schedules_day_hsuplementaria_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_hsuplementarias\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_hsuplementarias_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_hsuplementaria_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_leaders_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_leaders_schedule_links_fk\",\"columns\":[\"schedules_day_leader_id\"]},{\"name\":\"schedules_day_leaders_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_leaders_schedule_links_fk\",\"columns\":[\"schedules_day_leader_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_leaders\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_leaders_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_leader_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_leaders_tipo_lider_links\",\"indexes\":[{\"name\":\"schedules_day_leaders_tipo_lider_links_fk\",\"columns\":[\"schedules_day_leader_id\"]},{\"name\":\"schedules_day_leaders_tipo_lider_links_inv_fk\",\"columns\":[\"tipo_lider_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_leaders_tipo_lider_links_fk\",\"columns\":[\"schedules_day_leader_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_leaders\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_leaders_tipo_lider_links_inv_fk\",\"columns\":[\"tipo_lider_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"tipo_liders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_leader_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"tipo_lider_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_leaders_groups_and_agent_links\",\"indexes\":[{\"name\":\"schedules_day_leaders_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_leader_id\"]},{\"name\":\"schedules_day_leaders_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_leaders_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_leader_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_leaders\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_leaders_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_leader_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_standbies_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_standbies_schedule_links_fk\",\"columns\":[\"schedules_day_standby_id\"]},{\"name\":\"schedules_day_standbies_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_standbies_schedule_links_fk\",\"columns\":[\"schedules_day_standby_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_standbies\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_standbies_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_standby_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_standbies_groups_and_agent_links\",\"indexes\":[{\"name\":\"schedules_day_standbies_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_standby_id\"]},{\"name\":\"schedules_day_standbies_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_standbies_groups_and_agent_links_fk\",\"columns\":[\"schedules_day_standby_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_standbies\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_standbies_groups_and_agent_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_standby_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_standbies_tipo_standby_links\",\"indexes\":[{\"name\":\"schedules_day_standbies_tipo_standby_links_fk\",\"columns\":[\"schedules_day_standby_id\"]},{\"name\":\"schedules_day_standbies_tipo_standby_links_inv_fk\",\"columns\":[\"tipo_standby_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_standbies_tipo_standby_links_fk\",\"columns\":[\"schedules_day_standby_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_standbies\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_standbies_tipo_standby_links_inv_fk\",\"columns\":[\"tipo_standby_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"tipo_standbies\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_standby_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"tipo_standby_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns_shift_links\",\"indexes\":[{\"name\":\"schedules_day_turns_shift_links_fk\",\"columns\":[\"schedules_day_turn_id\"]},{\"name\":\"schedules_day_turns_shift_links_inv_fk\",\"columns\":[\"shift_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_shift_links_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_turns_shift_links_inv_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns_schedule_links\",\"indexes\":[{\"name\":\"schedules_day_turns_schedule_links_fk\",\"columns\":[\"schedules_day_turn_id\"]},{\"name\":\"schedules_day_turns_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_schedule_links_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_turns_schedule_links_inv_fk\",\"columns\":[\"schedule_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"schedule_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns_groups_and_agents_links\",\"indexes\":[{\"name\":\"schedules_day_turns_groups_and_agents_links_fk\",\"columns\":[\"schedules_day_turn_id\"]},{\"name\":\"schedules_day_turns_groups_and_agents_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_groups_and_agents_links_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_turns_groups_and_agents_links_inv_fk\",\"columns\":[\"groups_and_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"groups_and_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"groups_and_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns_place_links\",\"indexes\":[{\"name\":\"schedules_day_turns_place_links_fk\",\"columns\":[\"schedules_day_turn_id\"]},{\"name\":\"schedules_day_turns_place_links_inv_fk\",\"columns\":[\"place_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_place_links_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_turns_place_links_inv_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"schedules_day_turns_agents_links\",\"indexes\":[{\"name\":\"schedules_day_turns_agents_links_fk\",\"columns\":[\"schedules_day_turn_id\"]},{\"name\":\"schedules_day_turns_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"schedules_day_turns_agents_links_fk\",\"columns\":[\"schedules_day_turn_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"schedules_day_turns\",\"onDelete\":\"CASCADE\"},{\"name\":\"schedules_day_turns_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"schedules_day_turn_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"shifts_type_of_shift_links\",\"indexes\":[{\"name\":\"shifts_type_of_shift_links_fk\",\"columns\":[\"shift_id\"]},{\"name\":\"shifts_type_of_shift_links_inv_fk\",\"columns\":[\"type_of_shift_id\"]}],\"foreignKeys\":[{\"name\":\"shifts_type_of_shift_links_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"},{\"name\":\"shifts_type_of_shift_links_inv_fk\",\"columns\":[\"type_of_shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_shifts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"type_of_shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"shifts_place_links\",\"indexes\":[{\"name\":\"shifts_place_links_fk\",\"columns\":[\"shift_id\"]},{\"name\":\"shifts_place_links_inv_fk\",\"columns\":[\"place_id\"]}],\"foreignKeys\":[{\"name\":\"shifts_place_links_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"},{\"name\":\"shifts_place_links_inv_fk\",\"columns\":[\"place_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"places\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"place_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"shifts_site_links\",\"indexes\":[{\"name\":\"shifts_site_links_fk\",\"columns\":[\"shift_id\"]},{\"name\":\"shifts_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"shifts_site_links_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"},{\"name\":\"shifts_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"shifts_type_of_agents_links\",\"indexes\":[{\"name\":\"shifts_type_of_agents_links_fk\",\"columns\":[\"shift_id\"]},{\"name\":\"shifts_type_of_agents_links_inv_fk\",\"columns\":[\"type_of_agent_id\"]}],\"foreignKeys\":[{\"name\":\"shifts_type_of_agents_links_fk\",\"columns\":[\"shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"shifts\",\"onDelete\":\"CASCADE\"},{\"name\":\"shifts_type_of_agents_links_inv_fk\",\"columns\":[\"type_of_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"type_of_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"site_configurations_site_links\",\"indexes\":[{\"name\":\"site_configurations_site_links_fk\",\"columns\":[\"site_configuration_id\"]},{\"name\":\"site_configurations_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"site_configurations_site_links_fk\",\"columns\":[\"site_configuration_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"site_configurations\",\"onDelete\":\"CASCADE\"},{\"name\":\"site_configurations_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"site_configuration_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipo_liders_site_links\",\"indexes\":[{\"name\":\"tipo_liders_site_links_fk\",\"columns\":[\"tipo_lider_id\"]},{\"name\":\"tipo_liders_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"tipo_liders_site_links_fk\",\"columns\":[\"tipo_lider_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"tipo_liders\",\"onDelete\":\"CASCADE\"},{\"name\":\"tipo_liders_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"tipo_lider_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipo_standbies_site_links\",\"indexes\":[{\"name\":\"tipo_standbies_site_links_fk\",\"columns\":[\"tipo_standby_id\"]},{\"name\":\"tipo_standbies_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"tipo_standbies_site_links_fk\",\"columns\":[\"tipo_standby_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"tipo_standbies\",\"onDelete\":\"CASCADE\"},{\"name\":\"tipo_standbies_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"tipo_standby_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"type_of_agents_site_links\",\"indexes\":[{\"name\":\"type_of_agents_site_links_fk\",\"columns\":[\"type_of_agent_id\"]},{\"name\":\"type_of_agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"type_of_agents_site_links_fk\",\"columns\":[\"type_of_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"type_of_agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"type_of_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"type_of_shifts_site_links\",\"indexes\":[{\"name\":\"type_of_shifts_site_links_fk\",\"columns\":[\"type_of_shift_id\"]},{\"name\":\"type_of_shifts_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"type_of_shifts_site_links_fk\",\"columns\":[\"type_of_shift_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"type_of_shifts\",\"onDelete\":\"CASCADE\"},{\"name\":\"type_of_shifts_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"type_of_shift_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"unavailable_dates_by_agents_agents_links\",\"indexes\":[{\"name\":\"unavailable_dates_by_agents_agents_links_fk\",\"columns\":[\"unavailable_dates_by_agent_id\"]},{\"name\":\"unavailable_dates_by_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"unavailable_dates_by_agents_agents_links_fk\",\"columns\":[\"unavailable_dates_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"unavailable_dates_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"unavailable_dates_by_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"unavailable_dates_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"unavailable_dates_by_agents_site_links\",\"indexes\":[{\"name\":\"unavailable_dates_by_agents_site_links_fk\",\"columns\":[\"unavailable_dates_by_agent_id\"]},{\"name\":\"unavailable_dates_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"unavailable_dates_by_agents_site_links_fk\",\"columns\":[\"unavailable_dates_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"unavailable_dates_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"unavailable_dates_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"unavailable_dates_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"vacation_date_by_agents_agents_links\",\"indexes\":[{\"name\":\"vacation_date_by_agents_agents_links_fk\",\"columns\":[\"vacation_date_by_agent_id\"]},{\"name\":\"vacation_date_by_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"]}],\"foreignKeys\":[{\"name\":\"vacation_date_by_agents_agents_links_fk\",\"columns\":[\"vacation_date_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"vacation_date_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"vacation_date_by_agents_agents_links_inv_fk\",\"columns\":[\"agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agents\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"vacation_date_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"vacation_date_by_agents_site_links\",\"indexes\":[{\"name\":\"vacation_date_by_agents_site_links_fk\",\"columns\":[\"vacation_date_by_agent_id\"]},{\"name\":\"vacation_date_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"]}],\"foreignKeys\":[{\"name\":\"vacation_date_by_agents_site_links_fk\",\"columns\":[\"vacation_date_by_agent_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"vacation_date_by_agents\",\"onDelete\":\"CASCADE\"},{\"name\":\"vacation_date_by_agents_site_links_inv_fk\",\"columns\":[\"site_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"sites\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"vacation_date_by_agent_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"site_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-07-15 03:48:35', '12a4f23b981dccb0cce0a411d9e7d032');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_liders`
--

CREATE TABLE `tipo_liders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_liders_site_links`
--

CREATE TABLE `tipo_liders_site_links` (
  `tipo_lider_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_standbies`
--

CREATE TABLE `tipo_standbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_standbies_site_links`
--

CREATE TABLE `tipo_standbies_site_links` (
  `tipo_standby_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_agents`
--

CREATE TABLE `type_of_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_agents_site_links`
--

CREATE TABLE `type_of_agents_site_links` (
  `type_of_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_holidays`
--

CREATE TABLE `type_of_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_shifts`
--

CREATE TABLE `type_of_shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `holiday` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_of_shifts_site_links`
--

CREATE TABLE `type_of_shifts_site_links` (
  `type_of_shift_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unavailable_dates_by_agents`
--

CREATE TABLE `unavailable_dates_by_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unavailable_dates_by_agents_agents_links`
--

CREATE TABLE `unavailable_dates_by_agents_agents_links` (
  `unavailable_dates_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unavailable_dates_by_agents_site_links`
--

CREATE TABLE `unavailable_dates_by_agents_site_links` (
  `unavailable_dates_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2022-08-11 02:59:09.467000', '2022-08-11 02:59:09.467000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2022-08-11 02:59:09.467000', '2022-08-11 02:59:09.467000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(8, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(9, 'plugin::users-permissions.auth.emailConfirmation', '2022-08-11 02:59:16.113000', '2022-08-11 02:59:16.113000', NULL, NULL),
(10, 'api::agent.agent.find', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(11, 'api::agent.agent.findOne', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(12, 'api::agent.agent.create', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(13, 'api::agent.agent.delete', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(14, 'api::agent.agent.update', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(15, 'api::area.area.find', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(16, 'api::area.area.create', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(17, 'api::area.area.findOne', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(18, 'api::area.area.update', '2022-08-11 03:28:42.611000', '2022-08-11 03:28:42.611000', NULL, NULL),
(19, 'api::area.area.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(20, 'api::group.group.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(21, 'api::group.group.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(22, 'api::group.group.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(23, 'api::group.group.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(24, 'api::group.group.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(25, 'api::groups-and-agent.groups-and-agent.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(26, 'api::groups-and-agent.groups-and-agent.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(27, 'api::groups-and-agent.groups-and-agent.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(28, 'api::groups-and-agent.groups-and-agent.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(29, 'api::groups-and-agent.groups-and-agent.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(30, 'api::holiday.holiday.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(31, 'api::holiday.holiday.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(32, 'api::holiday.holiday.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(33, 'api::holiday.holiday.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(34, 'api::holiday.holiday.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(35, 'api::rule-day.rule-day.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(36, 'api::rule-day.rule-day.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(37, 'api::rule-day.rule-day.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(38, 'api::rule-day.rule-day.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(39, 'api::rule-day.rule-day.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(40, 'api::rule-hour.rule-hour.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(41, 'api::rule-hour.rule-hour.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(42, 'api::rule-hour.rule-hour.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(43, 'api::rule-hour.rule-hour.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(44, 'api::rule-hour.rule-hour.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(45, 'api::schedule.schedule.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(46, 'api::schedule.schedule.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(47, 'api::schedule.schedule.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(48, 'api::schedule.schedule.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(49, 'api::schedule.schedule.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(50, 'api::shift.shift.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(51, 'api::shift.shift.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(52, 'api::shift.shift.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(53, 'api::shift.shift.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(54, 'api::shift.shift.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(55, 'api::type-of-holiday.type-of-holiday.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(56, 'api::type-of-holiday.type-of-holiday.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(57, 'api::type-of-holiday.type-of-holiday.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(58, 'api::type-of-holiday.type-of-holiday.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(59, 'api::type-of-holiday.type-of-holiday.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(60, 'api::type-of-shift.type-of-shift.find', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(61, 'api::type-of-shift.type-of-shift.findOne', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(62, 'api::type-of-shift.type-of-shift.create', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(63, 'api::type-of-shift.type-of-shift.update', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(64, 'api::type-of-shift.type-of-shift.delete', '2022-08-11 03:28:42.612000', '2022-08-11 03:28:42.612000', NULL, NULL),
(65, 'api::isabel-call-base.isabel-call-base.find', '2022-08-15 18:52:59.849000', '2022-08-15 18:52:59.849000', NULL, NULL),
(66, 'api::isabel-call-base.isabel-call-base.findOne', '2022-08-15 18:52:59.849000', '2022-08-15 18:52:59.849000', NULL, NULL),
(67, 'api::isabel-call-base.isabel-call-base.create', '2022-08-15 18:52:59.849000', '2022-08-15 18:52:59.849000', NULL, NULL),
(68, 'api::isabel-call-base.isabel-call-base.update', '2022-08-15 18:52:59.849000', '2022-08-15 18:52:59.849000', NULL, NULL),
(69, 'api::isabel-call-base.isabel-call-base.delete', '2022-08-15 18:52:59.849000', '2022-08-15 18:52:59.849000', NULL, NULL),
(73, 'api::coordinator.coordinator.find', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(74, 'api::coordinator.coordinator.findOne', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(75, 'api::coordinator.coordinator.update', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(76, 'api::coordinator.coordinator.create', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(77, 'api::coordinator.coordinator.delete', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(78, 'api::dates-available-by-agent.dates-available-by-agent.find', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(79, 'api::dates-available-by-agent.dates-available-by-agent.findOne', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(80, 'api::dates-available-by-agent.dates-available-by-agent.create', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(81, 'api::dates-available-by-agent.dates-available-by-agent.update', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(82, 'api::dates-available-by-agent.dates-available-by-agent.delete', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(83, 'api::unavailable-dates-by-agent.unavailable-dates-by-agent.find', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(84, 'api::unavailable-dates-by-agent.unavailable-dates-by-agent.findOne', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(85, 'api::unavailable-dates-by-agent.unavailable-dates-by-agent.create', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(86, 'api::unavailable-dates-by-agent.unavailable-dates-by-agent.update', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(87, 'api::unavailable-dates-by-agent.unavailable-dates-by-agent.delete', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(88, 'api::vacation-date-by-agent.vacation-date-by-agent.find', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(89, 'api::vacation-date-by-agent.vacation-date-by-agent.findOne', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(90, 'api::vacation-date-by-agent.vacation-date-by-agent.create', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(91, 'api::vacation-date-by-agent.vacation-date-by-agent.update', '2022-08-23 18:58:04.516000', '2022-08-23 18:58:04.516000', NULL, NULL),
(92, 'api::vacation-date-by-agent.vacation-date-by-agent.delete', '2022-08-23 18:58:04.517000', '2022-08-23 18:58:04.517000', NULL, NULL),
(93, 'api::city.city.find', '2022-08-26 16:49:24.568000', '2022-08-26 16:49:24.568000', NULL, NULL),
(94, 'api::city.city.findOne', '2022-08-26 16:49:24.568000', '2022-08-26 16:49:24.568000', NULL, NULL),
(95, 'api::city.city.create', '2022-08-26 16:49:24.568000', '2022-08-26 16:49:24.568000', NULL, NULL),
(96, 'api::city.city.update', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(97, 'api::city.city.delete', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(98, 'api::region.region.find', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(99, 'api::region.region.findOne', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(100, 'api::region.region.create', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(101, 'api::region.region.update', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(102, 'api::region.region.delete', '2022-08-26 16:49:24.569000', '2022-08-26 16:49:24.569000', NULL, NULL),
(103, 'api::type-of-agent.type-of-agent.find', '2022-09-28 20:10:02.846000', '2022-09-28 20:10:02.846000', NULL, NULL),
(104, 'api::type-of-agent.type-of-agent.findOne', '2022-09-28 20:10:02.846000', '2022-09-28 20:10:02.846000', NULL, NULL),
(105, 'api::type-of-agent.type-of-agent.create', '2022-09-28 20:10:02.846000', '2022-09-28 20:10:02.846000', NULL, NULL),
(106, 'api::type-of-agent.type-of-agent.delete', '2022-09-28 20:10:02.846000', '2022-09-28 20:10:02.846000', NULL, NULL),
(107, 'api::type-of-agent.type-of-agent.update', '2022-09-28 20:10:02.846000', '2022-09-28 20:10:02.846000', NULL, NULL),
(108, 'api::place.place.find', '2022-09-30 10:54:52.573000', '2022-09-30 10:54:52.573000', NULL, NULL),
(109, 'api::place.place.findOne', '2022-09-30 10:54:52.574000', '2022-09-30 10:54:52.574000', NULL, NULL),
(110, 'api::place.place.create', '2022-09-30 10:54:52.574000', '2022-09-30 10:54:52.574000', NULL, NULL),
(111, 'api::place.place.update', '2022-09-30 10:54:52.574000', '2022-09-30 10:54:52.574000', NULL, NULL),
(112, 'api::place.place.delete', '2022-09-30 10:54:52.574000', '2022-09-30 10:54:52.574000', NULL, NULL),
(113, 'api::schedules-day-turn.schedules-day-turn.find', '2022-10-21 12:13:33.984000', '2022-10-21 12:13:33.984000', NULL, NULL),
(114, 'api::schedules-day-turn.schedules-day-turn.findOne', '2022-10-21 12:13:33.985000', '2022-10-21 12:13:33.985000', NULL, NULL),
(115, 'api::schedules-day-turn.schedules-day-turn.create', '2022-10-21 12:13:33.985000', '2022-10-21 12:13:33.985000', NULL, NULL),
(116, 'api::schedules-day-turn.schedules-day-turn.update', '2022-10-21 12:13:33.985000', '2022-10-21 12:13:33.985000', NULL, NULL),
(117, 'api::schedules-day-turn.schedules-day-turn.delete', '2022-10-21 12:13:33.985000', '2022-10-21 12:13:33.985000', NULL, NULL),
(118, 'api::schedule-turn-agent.schedule-turn-agent.find', '2022-10-21 19:41:39.562000', '2022-10-21 19:41:39.562000', NULL, NULL),
(119, 'api::schedule-turn-agent.schedule-turn-agent.create', '2022-10-21 19:41:39.562000', '2022-10-21 19:41:39.562000', NULL, NULL),
(120, 'api::schedule-turn-agent.schedule-turn-agent.findOne', '2022-10-21 19:41:39.562000', '2022-10-21 19:41:39.562000', NULL, NULL),
(121, 'api::schedule-turn-agent.schedule-turn-agent.delete', '2022-10-21 19:41:39.562000', '2022-10-21 19:41:39.562000', NULL, NULL),
(122, 'api::schedule-turn-agent.schedule-turn-agent.update', '2022-10-21 19:41:39.562000', '2022-10-21 19:41:39.562000', NULL, NULL),
(133, 'plugin::content-type-builder.components.getComponents', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(134, 'plugin::content-type-builder.components.getComponent', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(135, 'plugin::content-type-builder.content-types.getContentTypes', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(136, 'plugin::content-type-builder.content-types.getContentType', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(137, 'plugin::email.email.send', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(138, 'plugin::upload.content-api.find', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(139, 'plugin::upload.content-api.findOne', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(140, 'plugin::upload.content-api.destroy', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(141, 'plugin::upload.content-api.upload', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(142, 'plugin::i18n.locales.listLocales', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(143, 'plugin::users-permissions.auth.changePassword', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(144, 'plugin::users-permissions.user.create', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(145, 'plugin::users-permissions.user.update', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(146, 'plugin::users-permissions.user.find', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(147, 'plugin::users-permissions.user.findOne', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(148, 'plugin::users-permissions.user.count', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(149, 'plugin::users-permissions.user.destroy', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(150, 'plugin::users-permissions.user.me', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(151, 'plugin::users-permissions.role.createRole', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(152, 'plugin::users-permissions.role.findOne', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(153, 'plugin::users-permissions.role.find', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(154, 'plugin::users-permissions.role.updateRole', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(155, 'plugin::users-permissions.role.deleteRole', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(156, 'plugin::users-permissions.permissions.getPermissions', '2022-10-26 15:02:56.485000', '2022-10-26 15:02:56.485000', NULL, NULL),
(162, 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno.find', '2022-11-02 12:44:26.071000', '2022-11-02 12:44:26.071000', NULL, NULL),
(163, 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno.findOne', '2022-11-02 12:44:26.071000', '2022-11-02 12:44:26.071000', NULL, NULL),
(164, 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno.create', '2022-11-02 12:44:26.071000', '2022-11-02 12:44:26.071000', NULL, NULL),
(165, 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno.update', '2022-11-02 12:44:26.072000', '2022-11-02 12:44:26.072000', NULL, NULL),
(166, 'api::agentes-necesarios-por-dia-por-turno.agentes-necesarios-por-dia-por-turno.delete', '2022-11-02 12:44:26.072000', '2022-11-02 12:44:26.072000', NULL, NULL),
(167, 'api::configuracion-horas-nocturna.configuracion-horas-nocturna.find', '2022-11-02 14:53:56.972000', '2022-11-02 14:53:56.972000', NULL, NULL),
(168, 'api::configuracion-horas-nocturna.configuracion-horas-nocturna.findOne', '2022-11-02 14:53:56.973000', '2022-11-02 14:53:56.973000', NULL, NULL),
(169, 'api::configuracion-horas-nocturna.configuracion-horas-nocturna.create', '2022-11-02 14:53:56.973000', '2022-11-02 14:53:56.973000', NULL, NULL),
(170, 'api::configuracion-horas-nocturna.configuracion-horas-nocturna.update', '2022-11-02 14:53:56.973000', '2022-11-02 14:53:56.973000', NULL, NULL),
(171, 'api::configuracion-horas-nocturna.configuracion-horas-nocturna.delete', '2022-11-02 14:53:56.973000', '2022-11-02 14:53:56.973000', NULL, NULL),
(177, 'api::configuracion-login.configuracion-login.findOne', '2022-12-06 18:02:02.946000', '2022-12-06 18:02:02.946000', NULL, NULL),
(178, 'api::configuracion-login.configuracion-login.find', '2022-12-06 18:02:02.946000', '2022-12-06 18:02:02.946000', NULL, NULL),
(179, 'api::configuracion-login.configuracion-login.create', '2022-12-06 18:02:02.946000', '2022-12-06 18:02:02.946000', NULL, NULL),
(180, 'api::configuracion-login.configuracion-login.update', '2022-12-06 18:02:02.946000', '2022-12-06 18:02:02.946000', NULL, NULL),
(181, 'api::configuracion-login.configuracion-login.delete', '2022-12-06 18:02:02.946000', '2022-12-06 18:02:02.946000', NULL, NULL),
(182, 'api::module.module.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(183, 'api::module.module.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(184, 'api::module.module.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(185, 'api::module.module.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(186, 'api::module.module.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(187, 'api::permiso.permiso.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(188, 'api::permiso.permiso.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(189, 'api::permiso.permiso.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(190, 'api::permiso.permiso.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(191, 'api::permiso.permiso.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(192, 'api::rol.rol.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(193, 'api::rol.rol.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(194, 'api::rol.rol.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(195, 'api::rol.rol.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(196, 'api::rol.rol.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(197, 'api::schedules-day-descanso.schedules-day-descanso.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(198, 'api::schedules-day-descanso.schedules-day-descanso.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(199, 'api::schedules-day-descanso.schedules-day-descanso.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(200, 'api::schedules-day-descanso.schedules-day-descanso.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(201, 'api::schedules-day-descanso.schedules-day-descanso.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(202, 'api::schedules-day-hextra.schedules-day-hextra.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(203, 'api::schedules-day-hextra.schedules-day-hextra.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(204, 'api::schedules-day-hextra.schedules-day-hextra.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(205, 'api::schedules-day-hextra.schedules-day-hextra.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(206, 'api::schedules-day-hextra.schedules-day-hextra.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(207, 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria.find', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(208, 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria.findOne', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(209, 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria.create', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(210, 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria.update', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(211, 'api::schedules-day-hsuplementaria.schedules-day-hsuplementaria.delete', '2022-12-19 16:58:37.800000', '2022-12-19 16:58:37.800000', NULL, NULL),
(212, 'api::site.site.find', '2022-12-21 15:34:10.557000', '2022-12-21 15:34:10.557000', NULL, NULL),
(213, 'api::site.site.findOne', '2022-12-21 15:34:10.557000', '2022-12-21 15:34:10.557000', NULL, NULL),
(214, 'api::site.site.create', '2022-12-21 15:34:10.557000', '2022-12-21 15:34:10.557000', NULL, NULL),
(215, 'api::site.site.delete', '2022-12-21 15:34:10.558000', '2022-12-21 15:34:10.558000', NULL, NULL),
(216, 'api::site.site.update', '2022-12-21 15:34:10.558000', '2022-12-21 15:34:10.558000', NULL, NULL),
(217, 'api::tipo-lider.tipo-lider.find', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(218, 'api::tipo-lider.tipo-lider.findOne', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(219, 'api::tipo-lider.tipo-lider.create', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(220, 'api::tipo-lider.tipo-lider.update', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(221, 'api::tipo-lider.tipo-lider.delete', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(222, 'api::tipo-standby.tipo-standby.find', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(223, 'api::tipo-standby.tipo-standby.findOne', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(224, 'api::tipo-standby.tipo-standby.create', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(225, 'api::tipo-standby.tipo-standby.update', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(226, 'api::tipo-standby.tipo-standby.delete', '2023-01-03 15:07:57.764000', '2023-01-03 15:07:57.764000', NULL, NULL),
(227, 'api::schedules-day-leader.schedules-day-leader.find', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(228, 'api::schedules-day-leader.schedules-day-leader.findOne', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(229, 'api::schedules-day-leader.schedules-day-leader.create', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(230, 'api::schedules-day-leader.schedules-day-leader.update', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(231, 'api::schedules-day-leader.schedules-day-leader.delete', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(232, 'api::schedules-day-standby.schedules-day-standby.find', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(233, 'api::schedules-day-standby.schedules-day-standby.findOne', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(234, 'api::schedules-day-standby.schedules-day-standby.create', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(235, 'api::schedules-day-standby.schedules-day-standby.update', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(236, 'api::schedules-day-standby.schedules-day-standby.delete', '2023-01-03 15:47:46.584000', '2023-01-03 15:47:46.584000', NULL, NULL),
(237, 'api::group-and-grouped-days.group-and-grouped-days.find', '2023-01-10 12:35:12.608000', '2023-01-10 12:35:12.608000', NULL, NULL),
(238, 'api::group-and-grouped-days.group-and-grouped-days.findOne', '2023-01-10 12:35:12.608000', '2023-01-10 12:35:12.608000', NULL, NULL),
(239, 'api::group-and-grouped-days.group-and-grouped-days.create', '2023-01-10 12:35:12.608000', '2023-01-10 12:35:12.608000', NULL, NULL),
(240, 'api::group-and-grouped-days.group-and-grouped-days.update', '2023-01-10 12:35:12.608000', '2023-01-10 12:35:12.608000', NULL, NULL),
(241, 'api::group-and-grouped-days.group-and-grouped-days.delete', '2023-01-10 12:35:12.608000', '2023-01-10 12:35:12.608000', NULL, NULL),
(242, 'api::site-configuration.site-configuration.find', '2023-01-10 12:35:23.363000', '2023-01-10 12:35:23.363000', NULL, NULL),
(243, 'api::site-configuration.site-configuration.findOne', '2023-01-10 12:35:23.363000', '2023-01-10 12:35:23.363000', NULL, NULL),
(244, 'api::site-configuration.site-configuration.create', '2023-01-10 12:35:23.363000', '2023-01-10 12:35:23.363000', NULL, NULL),
(245, 'api::site-configuration.site-configuration.update', '2023-01-10 12:35:23.363000', '2023-01-10 12:35:23.363000', NULL, NULL),
(246, 'api::site-configuration.site-configuration.delete', '2023-01-10 12:35:23.363000', '2023-01-10 12:35:23.363000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(8, 2),
(7, 2),
(9, 2),
(4, 2),
(6, 2),
(5, 2),
(10, 2),
(11, 2),
(14, 2),
(12, 2),
(17, 2),
(18, 2),
(21, 2),
(24, 2),
(13, 2),
(15, 2),
(16, 2),
(22, 2),
(19, 2),
(23, 2),
(25, 2),
(20, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(33, 2),
(32, 2),
(34, 2),
(40, 2),
(36, 2),
(39, 2),
(37, 2),
(35, 2),
(43, 2),
(45, 2),
(38, 2),
(44, 2),
(48, 2),
(42, 2),
(51, 2),
(49, 2),
(46, 2),
(50, 2),
(47, 2),
(41, 2),
(54, 2),
(53, 2),
(31, 2),
(55, 2),
(52, 2),
(58, 2),
(56, 2),
(57, 2),
(61, 2),
(62, 2),
(60, 2),
(59, 2),
(64, 2),
(63, 2),
(65, 2),
(66, 2),
(69, 2),
(67, 2),
(68, 2),
(74, 2),
(73, 2),
(79, 2),
(75, 2),
(77, 2),
(80, 2),
(82, 2),
(76, 2),
(86, 2),
(78, 2),
(83, 2),
(81, 2),
(87, 2),
(92, 2),
(84, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(85, 2),
(99, 2),
(93, 2),
(102, 2),
(100, 2),
(94, 2),
(97, 2),
(96, 2),
(98, 2),
(101, 2),
(95, 2),
(103, 2),
(104, 2),
(107, 2),
(106, 2),
(105, 2),
(108, 2),
(109, 2),
(111, 2),
(110, 2),
(112, 2),
(113, 2),
(115, 2),
(114, 2),
(116, 2),
(117, 2),
(118, 2),
(121, 2),
(119, 2),
(120, 2),
(122, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(150, 2),
(149, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(162, 2),
(166, 2),
(165, 2),
(163, 2),
(164, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(193, 2),
(192, 2),
(194, 2),
(195, 2),
(197, 2),
(196, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(214, 2),
(213, 2),
(216, 2),
(215, 2),
(217, 2),
(218, 2),
(226, 2),
(220, 2),
(219, 2),
(225, 2),
(224, 2),
(222, 2),
(223, 2),
(221, 2),
(227, 2),
(228, 2),
(233, 2),
(230, 2),
(232, 2),
(234, 2),
(235, 2),
(236, 2),
(231, 2),
(229, 2),
(237, 2),
(238, 2),
(239, 2),
(241, 2),
(240, 2),
(242, 2),
(243, 2),
(245, 2),
(244, 2),
(246, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-08-11 02:59:02.549000', '2022-08-11 02:59:02.549000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-08-11 02:59:06.636000', '2023-01-10 12:35:23.311000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacation_date_by_agents`
--

CREATE TABLE `vacation_date_by_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `observations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_before_to_remind` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacation_date_by_agents_agents_links`
--

CREATE TABLE `vacation_date_by_agents_agents_links` (
  `vacation_date_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `agent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacation_date_by_agents_site_links`
--

CREATE TABLE `vacation_date_by_agents_site_links` (
  `vacation_date_by_agent_id` int(10) UNSIGNED DEFAULT NULL,
  `site_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indices de la tabla `agentes_necesarios_por_dia_por_turnos`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agentes_necesarios_por_dia_por_turnos_created_by_id_fk` (`created_by_id`),
  ADD KEY `agentes_necesarios_por_dia_por_turnos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `agentes_necesarios_por_dia_por_turnos_shift_links`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos_shift_links`
  ADD KEY `agentes_necesarios_por_dia_por_turnos_shift_links_fk` (`agentes_necesarios_por_dia_por_turno_id`),
  ADD KEY `agentes_necesarios_por_dia_por_turnos_shift_links_inv_fk` (`shift_id`);

--
-- Indices de la tabla `agentes_necesarios_por_dia_por_turnos_site_links`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos_site_links`
  ADD KEY `agentes_necesarios_por_dia_por_turnos_site_links_fk` (`agentes_necesarios_por_dia_por_turno_id`),
  ADD KEY `agentes_necesarios_por_dia_por_turnos_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `agents_area_links`
--
ALTER TABLE `agents_area_links`
  ADD KEY `agents_area_links_fk` (`agent_id`),
  ADD KEY `agents_area_links_inv_fk` (`area_id`);

--
-- Indices de la tabla `agents_city_links`
--
ALTER TABLE `agents_city_links`
  ADD KEY `agents_city_links_fk` (`agent_id`),
  ADD KEY `agents_city_links_inv_fk` (`city_id`);

--
-- Indices de la tabla `agents_coordinator_links`
--
ALTER TABLE `agents_coordinator_links`
  ADD KEY `agents_coordinator_links_fk` (`agent_id`),
  ADD KEY `agents_coordinator_links_inv_fk` (`coordinator_id`);

--
-- Indices de la tabla `agents_site_links`
--
ALTER TABLE `agents_site_links`
  ADD KEY `agents_site_links_fk` (`agent_id`),
  ADD KEY `agents_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `agents_type_of_agent_links`
--
ALTER TABLE `agents_type_of_agent_links`
  ADD KEY `agents_type_of_agent_links_fk` (`agent_id`),
  ADD KEY `agents_type_of_agent_links_inv_fk` (`type_of_agent_id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_created_by_id_fk` (`created_by_id`),
  ADD KEY `areas_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `areas_site_links`
--
ALTER TABLE `areas_site_links`
  ADD KEY `areas_site_links_fk` (`area_id`),
  ADD KEY `areas_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_created_by_id_fk` (`created_by_id`),
  ADD KEY `cities_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `cities_region_links`
--
ALTER TABLE `cities_region_links`
  ADD KEY `cities_region_links_fk` (`city_id`),
  ADD KEY `cities_region_links_inv_fk` (`region_id`);

--
-- Indices de la tabla `configuracion_horas_nocturnas`
--
ALTER TABLE `configuracion_horas_nocturnas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configuracion_horas_nocturnas_created_by_id_fk` (`created_by_id`),
  ADD KEY `configuracion_horas_nocturnas_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `configuracion_horas_nocturnas_area_links`
--
ALTER TABLE `configuracion_horas_nocturnas_area_links`
  ADD KEY `configuracion_horas_nocturnas_area_links_fk` (`configuracion_horas_nocturna_id`),
  ADD KEY `configuracion_horas_nocturnas_area_links_inv_fk` (`area_id`);

--
-- Indices de la tabla `configuracion_horas_nocturnas_site_links`
--
ALTER TABLE `configuracion_horas_nocturnas_site_links`
  ADD KEY `configuracion_horas_nocturnas_site_links_fk` (`configuracion_horas_nocturna_id`),
  ADD KEY `configuracion_horas_nocturnas_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `configuracion_logins`
--
ALTER TABLE `configuracion_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configuracion_logins_created_by_id_fk` (`created_by_id`),
  ADD KEY `configuracion_logins_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinators_created_by_id_fk` (`created_by_id`),
  ADD KEY `coordinators_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `coordinators_rol_links`
--
ALTER TABLE `coordinators_rol_links`
  ADD KEY `coordinators_rol_links_fk` (`coordinator_id`),
  ADD KEY `coordinators_rol_links_inv_fk` (`rol_id`);

--
-- Indices de la tabla `coordinators_sites_links`
--
ALTER TABLE `coordinators_sites_links`
  ADD KEY `coordinators_sites_links_fk` (`coordinator_id`),
  ADD KEY `coordinators_sites_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `dates_available_by_agents`
--
ALTER TABLE `dates_available_by_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dates_available_by_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `dates_available_by_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `dates_available_by_agents_agent_links`
--
ALTER TABLE `dates_available_by_agents_agent_links`
  ADD KEY `dates_available_by_agents_agent_links_fk` (`dates_available_by_agent_id`),
  ADD KEY `dates_available_by_agents_agent_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `dates_available_by_agents_site_links`
--
ALTER TABLE `dates_available_by_agents_site_links`
  ADD KEY `dates_available_by_agents_site_links_fk` (`dates_available_by_agent_id`),
  ADD KEY `dates_available_by_agents_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`);

--
-- Indices de la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_created_by_id_fk` (`created_by_id`),
  ADD KEY `groups_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `groups_and_agents`
--
ALTER TABLE `groups_and_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_and_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `groups_and_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `groups_and_agents_agents_links`
--
ALTER TABLE `groups_and_agents_agents_links`
  ADD KEY `groups_and_agents_agents_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `groups_and_agents_group_links`
--
ALTER TABLE `groups_and_agents_group_links`
  ADD KEY `groups_and_agents_group_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_group_links_inv_fk` (`group_id`);

--
-- Indices de la tabla `groups_and_agents_place_links`
--
ALTER TABLE `groups_and_agents_place_links`
  ADD KEY `groups_and_agents_place_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_place_links_inv_fk` (`place_id`);

--
-- Indices de la tabla `groups_and_agents_rules_day_links`
--
ALTER TABLE `groups_and_agents_rules_day_links`
  ADD KEY `groups_and_agents_rules_day_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_rules_day_links_inv_fk` (`rule_day_id`);

--
-- Indices de la tabla `groups_and_agents_rules_hour_links`
--
ALTER TABLE `groups_and_agents_rules_hour_links`
  ADD KEY `groups_and_agents_rules_hour_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_rules_hour_links_inv_fk` (`rule_hour_id`);

--
-- Indices de la tabla `groups_and_agents_site_links`
--
ALTER TABLE `groups_and_agents_site_links`
  ADD KEY `groups_and_agents_site_links_fk` (`groups_and_agent_id`),
  ADD KEY `groups_and_agents_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `groups_area_links`
--
ALTER TABLE `groups_area_links`
  ADD KEY `groups_area_links_fk` (`group_id`),
  ADD KEY `groups_area_links_inv_fk` (`area_id`);

--
-- Indices de la tabla `groups_site_links`
--
ALTER TABLE `groups_site_links`
  ADD KEY `groups_site_links_fk` (`group_id`),
  ADD KEY `groups_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `group_and_grouped_day`
--
ALTER TABLE `group_and_grouped_day`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_and_grouped_day_created_by_id_fk` (`created_by_id`),
  ADD KEY `group_and_grouped_day_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `group_and_grouped_day_group_links`
--
ALTER TABLE `group_and_grouped_day_group_links`
  ADD KEY `group_and_grouped_day_group_links_fk` (`group_and_grouped_days_id`),
  ADD KEY `group_and_grouped_day_group_links_inv_fk` (`group_id`);

--
-- Indices de la tabla `group_and_grouped_day_site_links`
--
ALTER TABLE `group_and_grouped_day_site_links`
  ADD KEY `group_and_grouped_day_site_links_fk` (`group_and_grouped_days_id`),
  ADD KEY `group_and_grouped_day_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_created_by_id_fk` (`created_by_id`),
  ADD KEY `holidays_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `holidays_sites_links`
--
ALTER TABLE `holidays_sites_links`
  ADD KEY `holidays_sites_links_fk` (`holiday_id`),
  ADD KEY `holidays_sites_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `holidays_type_of_holiday_links`
--
ALTER TABLE `holidays_type_of_holiday_links`
  ADD KEY `holidays_type_of_holiday_links_fk` (`holiday_id`),
  ADD KEY `holidays_type_of_holiday_links_inv_fk` (`type_of_holiday_id`);

--
-- Indices de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `isabel_call_bases`
--
ALTER TABLE `isabel_call_bases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `isabel_call_bases_created_by_id_fk` (`created_by_id`),
  ADD KEY `isabel_call_bases_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `isabel_call_bases_area_links`
--
ALTER TABLE `isabel_call_bases_area_links`
  ADD KEY `isabel_call_bases_area_links_fk` (`isabel_call_base_id`),
  ADD KEY `isabel_call_bases_area_links_inv_fk` (`area_id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_created_by_id_fk` (`created_by_id`),
  ADD KEY `modules_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permisos_created_by_id_fk` (`created_by_id`),
  ADD KEY `permisos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `permisos_module_links`
--
ALTER TABLE `permisos_module_links`
  ADD KEY `permisos_module_links_fk` (`permiso_id`),
  ADD KEY `permisos_module_links_inv_fk` (`module_id`);

--
-- Indices de la tabla `permisos_rol_links`
--
ALTER TABLE `permisos_rol_links`
  ADD KEY `permisos_rol_links_fk` (`permiso_id`),
  ADD KEY `permisos_rol_links_inv_fk` (`rol_id`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_created_by_id_fk` (`created_by_id`),
  ADD KEY `places_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `places_city_links`
--
ALTER TABLE `places_city_links`
  ADD KEY `places_city_links_fk` (`place_id`),
  ADD KEY `places_city_links_inv_fk` (`city_id`);

--
-- Indices de la tabla `places_site_links`
--
ALTER TABLE `places_site_links`
  ADD KEY `places_site_links_fk` (`place_id`),
  ADD KEY `places_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regions_created_by_id_fk` (`created_by_id`),
  ADD KEY `regions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rols_created_by_id_fk` (`created_by_id`),
  ADD KEY `rols_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `rules_days`
--
ALTER TABLE `rules_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_days_created_by_id_fk` (`created_by_id`),
  ADD KEY `rules_days_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `rules_days_site_links`
--
ALTER TABLE `rules_days_site_links`
  ADD KEY `rules_days_site_links_fk` (`rule_day_id`),
  ADD KEY `rules_days_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `rules_hours`
--
ALTER TABLE `rules_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rules_hours_created_by_id_fk` (`created_by_id`),
  ADD KEY `rules_hours_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `rules_hours_places_links`
--
ALTER TABLE `rules_hours_places_links`
  ADD KEY `rules_hours_places_links_fk` (`rule_hour_id`),
  ADD KEY `rules_hours_places_links_inv_fk` (`place_id`);

--
-- Indices de la tabla `rules_hours_site_links`
--
ALTER TABLE `rules_hours_site_links`
  ADD KEY `rules_hours_site_links_fk` (`rule_hour_id`),
  ADD KEY `rules_hours_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_coordinator_links`
--
ALTER TABLE `schedules_coordinator_links`
  ADD KEY `schedules_coordinator_links_fk` (`schedule_id`),
  ADD KEY `schedules_coordinator_links_inv_fk` (`coordinator_id`);

--
-- Indices de la tabla `schedules_day_descansos`
--
ALTER TABLE `schedules_day_descansos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_descansos_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_descansos_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_descansos_agents_links`
--
ALTER TABLE `schedules_day_descansos_agents_links`
  ADD KEY `schedules_day_descansos_agents_links_fk` (`schedules_day_descanso_id`),
  ADD KEY `schedules_day_descansos_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `schedules_day_descansos_groups_and_agents_links`
--
ALTER TABLE `schedules_day_descansos_groups_and_agents_links`
  ADD KEY `schedules_day_descansos_groups_and_agents_links_fk` (`schedules_day_descanso_id`),
  ADD KEY `schedules_day_descansos_groups_and_agents_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_descansos_schedule_links`
--
ALTER TABLE `schedules_day_descansos_schedule_links`
  ADD KEY `schedules_day_descansos_schedule_links_fk` (`schedules_day_descanso_id`),
  ADD KEY `schedules_day_descansos_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_hextras`
--
ALTER TABLE `schedules_day_hextras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_hextras_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_hextras_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_hextras_agents_links`
--
ALTER TABLE `schedules_day_hextras_agents_links`
  ADD KEY `schedules_day_hextras_agents_links_fk` (`schedules_day_hextra_id`),
  ADD KEY `schedules_day_hextras_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `schedules_day_hextras_groups_and_agent_links`
--
ALTER TABLE `schedules_day_hextras_groups_and_agent_links`
  ADD KEY `schedules_day_hextras_groups_and_agent_links_fk` (`schedules_day_hextra_id`),
  ADD KEY `schedules_day_hextras_groups_and_agent_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_hextras_schedule_links`
--
ALTER TABLE `schedules_day_hextras_schedule_links`
  ADD KEY `schedules_day_hextras_schedule_links_fk` (`schedules_day_hextra_id`),
  ADD KEY `schedules_day_hextras_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_hextras_shift_links`
--
ALTER TABLE `schedules_day_hextras_shift_links`
  ADD KEY `schedules_day_hextras_shift_links_fk` (`schedules_day_hextra_id`),
  ADD KEY `schedules_day_hextras_shift_links_inv_fk` (`shift_id`);

--
-- Indices de la tabla `schedules_day_hsuplementarias`
--
ALTER TABLE `schedules_day_hsuplementarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_hsuplementarias_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_hsuplementarias_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_hsuplementarias_agents_links`
--
ALTER TABLE `schedules_day_hsuplementarias_agents_links`
  ADD KEY `schedules_day_hsuplementarias_agents_links_fk` (`schedules_day_hsuplementaria_id`),
  ADD KEY `schedules_day_hsuplementarias_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `schedules_day_hsuplementarias_groups_and_agent_links`
--
ALTER TABLE `schedules_day_hsuplementarias_groups_and_agent_links`
  ADD KEY `schedules_day_hsuplementarias_groups_and_agent_links_fk` (`schedules_day_hsuplementaria_id`),
  ADD KEY `schedules_day_hsuplementarias_groups_and_agent_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_hsuplementarias_schedule_links`
--
ALTER TABLE `schedules_day_hsuplementarias_schedule_links`
  ADD KEY `schedules_day_hsuplementarias_schedule_links_fk` (`schedules_day_hsuplementaria_id`),
  ADD KEY `schedules_day_hsuplementarias_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_leaders`
--
ALTER TABLE `schedules_day_leaders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_leaders_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_leaders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_leaders_groups_and_agent_links`
--
ALTER TABLE `schedules_day_leaders_groups_and_agent_links`
  ADD KEY `schedules_day_leaders_groups_and_agent_links_fk` (`schedules_day_leader_id`),
  ADD KEY `schedules_day_leaders_groups_and_agent_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_leaders_schedule_links`
--
ALTER TABLE `schedules_day_leaders_schedule_links`
  ADD KEY `schedules_day_leaders_schedule_links_fk` (`schedules_day_leader_id`),
  ADD KEY `schedules_day_leaders_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_leaders_tipo_lider_links`
--
ALTER TABLE `schedules_day_leaders_tipo_lider_links`
  ADD KEY `schedules_day_leaders_tipo_lider_links_fk` (`schedules_day_leader_id`),
  ADD KEY `schedules_day_leaders_tipo_lider_links_inv_fk` (`tipo_lider_id`);

--
-- Indices de la tabla `schedules_day_standbies`
--
ALTER TABLE `schedules_day_standbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_standbies_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_standbies_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_standbies_groups_and_agent_links`
--
ALTER TABLE `schedules_day_standbies_groups_and_agent_links`
  ADD KEY `schedules_day_standbies_groups_and_agent_links_fk` (`schedules_day_standby_id`),
  ADD KEY `schedules_day_standbies_groups_and_agent_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_standbies_schedule_links`
--
ALTER TABLE `schedules_day_standbies_schedule_links`
  ADD KEY `schedules_day_standbies_schedule_links_fk` (`schedules_day_standby_id`),
  ADD KEY `schedules_day_standbies_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_standbies_tipo_standby_links`
--
ALTER TABLE `schedules_day_standbies_tipo_standby_links`
  ADD KEY `schedules_day_standbies_tipo_standby_links_fk` (`schedules_day_standby_id`),
  ADD KEY `schedules_day_standbies_tipo_standby_links_inv_fk` (`tipo_standby_id`);

--
-- Indices de la tabla `schedules_day_turns`
--
ALTER TABLE `schedules_day_turns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_day_turns_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedules_day_turns_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedules_day_turns_agents_links`
--
ALTER TABLE `schedules_day_turns_agents_links`
  ADD KEY `schedules_day_turns_agents_links_fk` (`schedules_day_turn_id`),
  ADD KEY `schedules_day_turns_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `schedules_day_turns_groups_and_agents_links`
--
ALTER TABLE `schedules_day_turns_groups_and_agents_links`
  ADD KEY `schedules_day_turns_groups_and_agents_links_fk` (`schedules_day_turn_id`),
  ADD KEY `schedules_day_turns_groups_and_agents_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedules_day_turns_place_links`
--
ALTER TABLE `schedules_day_turns_place_links`
  ADD KEY `schedules_day_turns_place_links_fk` (`schedules_day_turn_id`),
  ADD KEY `schedules_day_turns_place_links_inv_fk` (`place_id`);

--
-- Indices de la tabla `schedules_day_turns_schedule_links`
--
ALTER TABLE `schedules_day_turns_schedule_links`
  ADD KEY `schedules_day_turns_schedule_links_fk` (`schedules_day_turn_id`),
  ADD KEY `schedules_day_turns_schedule_links_inv_fk` (`schedule_id`);

--
-- Indices de la tabla `schedules_day_turns_shift_links`
--
ALTER TABLE `schedules_day_turns_shift_links`
  ADD KEY `schedules_day_turns_shift_links_fk` (`schedules_day_turn_id`),
  ADD KEY `schedules_day_turns_shift_links_inv_fk` (`shift_id`);

--
-- Indices de la tabla `schedules_site_links`
--
ALTER TABLE `schedules_site_links`
  ADD KEY `schedules_site_links_fk` (`schedule_id`),
  ADD KEY `schedules_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `schedule_turn_agents`
--
ALTER TABLE `schedule_turn_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_turn_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `schedule_turn_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `schedule_turn_agents_groups_and_agent_links`
--
ALTER TABLE `schedule_turn_agents_groups_and_agent_links`
  ADD KEY `schedule_turn_agents_groups_and_agent_links_fk` (`schedule_turn_agent_id`),
  ADD KEY `schedule_turn_agents_groups_and_agent_links_inv_fk` (`groups_and_agent_id`);

--
-- Indices de la tabla `schedule_turn_agents_schedules_day_turn_links`
--
ALTER TABLE `schedule_turn_agents_schedules_day_turn_links`
  ADD KEY `schedule_turn_agents_schedules_day_turn_links_fk` (`schedule_turn_agent_id`),
  ADD KEY `schedule_turn_agents_schedules_day_turn_links_inv_fk` (`schedules_day_turn_id`);

--
-- Indices de la tabla `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_created_by_id_fk` (`created_by_id`),
  ADD KEY `shifts_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `shifts_place_links`
--
ALTER TABLE `shifts_place_links`
  ADD KEY `shifts_place_links_fk` (`shift_id`),
  ADD KEY `shifts_place_links_inv_fk` (`place_id`);

--
-- Indices de la tabla `shifts_site_links`
--
ALTER TABLE `shifts_site_links`
  ADD KEY `shifts_site_links_fk` (`shift_id`),
  ADD KEY `shifts_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `shifts_type_of_agents_links`
--
ALTER TABLE `shifts_type_of_agents_links`
  ADD KEY `shifts_type_of_agents_links_fk` (`shift_id`),
  ADD KEY `shifts_type_of_agents_links_inv_fk` (`type_of_agent_id`);

--
-- Indices de la tabla `shifts_type_of_shift_links`
--
ALTER TABLE `shifts_type_of_shift_links`
  ADD KEY `shifts_type_of_shift_links_fk` (`shift_id`),
  ADD KEY `shifts_type_of_shift_links_inv_fk` (`type_of_shift_id`);

--
-- Indices de la tabla `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_created_by_id_fk` (`created_by_id`),
  ADD KEY `sites_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `site_configurations`
--
ALTER TABLE `site_configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_configurations_created_by_id_fk` (`created_by_id`),
  ADD KEY `site_configurations_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `site_configurations_site_links`
--
ALTER TABLE `site_configurations_site_links`
  ADD KEY `site_configurations_site_links_fk` (`site_configuration_id`),
  ADD KEY `site_configurations_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_liders`
--
ALTER TABLE `tipo_liders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_liders_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_liders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `tipo_liders_site_links`
--
ALTER TABLE `tipo_liders_site_links`
  ADD KEY `tipo_liders_site_links_fk` (`tipo_lider_id`),
  ADD KEY `tipo_liders_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `tipo_standbies`
--
ALTER TABLE `tipo_standbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_standbies_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_standbies_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `tipo_standbies_site_links`
--
ALTER TABLE `tipo_standbies_site_links`
  ADD KEY `tipo_standbies_site_links_fk` (`tipo_standby_id`),
  ADD KEY `tipo_standbies_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `type_of_agents`
--
ALTER TABLE `type_of_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_of_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `type_of_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `type_of_agents_site_links`
--
ALTER TABLE `type_of_agents_site_links`
  ADD KEY `type_of_agents_site_links_fk` (`type_of_agent_id`),
  ADD KEY `type_of_agents_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `type_of_holidays`
--
ALTER TABLE `type_of_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_of_holidays_created_by_id_fk` (`created_by_id`),
  ADD KEY `type_of_holidays_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `type_of_shifts`
--
ALTER TABLE `type_of_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_of_shifts_created_by_id_fk` (`created_by_id`),
  ADD KEY `type_of_shifts_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `type_of_shifts_site_links`
--
ALTER TABLE `type_of_shifts_site_links`
  ADD KEY `type_of_shifts_site_links_fk` (`type_of_shift_id`),
  ADD KEY `type_of_shifts_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `unavailable_dates_by_agents`
--
ALTER TABLE `unavailable_dates_by_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unavailable_dates_by_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `unavailable_dates_by_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `unavailable_dates_by_agents_agents_links`
--
ALTER TABLE `unavailable_dates_by_agents_agents_links`
  ADD KEY `unavailable_dates_by_agents_agents_links_fk` (`unavailable_dates_by_agent_id`),
  ADD KEY `unavailable_dates_by_agents_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `unavailable_dates_by_agents_site_links`
--
ALTER TABLE `unavailable_dates_by_agents_site_links`
  ADD KEY `unavailable_dates_by_agents_site_links_fk` (`unavailable_dates_by_agent_id`),
  ADD KEY `unavailable_dates_by_agents_site_links_inv_fk` (`site_id`);

--
-- Indices de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`);

--
-- Indices de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indices de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- Indices de la tabla `vacation_date_by_agents`
--
ALTER TABLE `vacation_date_by_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacation_date_by_agents_created_by_id_fk` (`created_by_id`),
  ADD KEY `vacation_date_by_agents_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `vacation_date_by_agents_agents_links`
--
ALTER TABLE `vacation_date_by_agents_agents_links`
  ADD KEY `vacation_date_by_agents_agents_links_fk` (`vacation_date_by_agent_id`),
  ADD KEY `vacation_date_by_agents_agents_links_inv_fk` (`agent_id`);

--
-- Indices de la tabla `vacation_date_by_agents_site_links`
--
ALTER TABLE `vacation_date_by_agents_site_links`
  ADD KEY `vacation_date_by_agents_site_links_fk` (`vacation_date_by_agent_id`),
  ADD KEY `vacation_date_by_agents_site_links_inv_fk` (`site_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `agentes_necesarios_por_dia_por_turnos`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion_horas_nocturnas`
--
ALTER TABLE `configuracion_horas_nocturnas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `configuracion_logins`
--
ALTER TABLE `configuracion_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `dates_available_by_agents`
--
ALTER TABLE `dates_available_by_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `groups_and_agents`
--
ALTER TABLE `groups_and_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `group_and_grouped_day`
--
ALTER TABLE `group_and_grouped_day`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `isabel_call_bases`
--
ALTER TABLE `isabel_call_bases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rules_days`
--
ALTER TABLE `rules_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rules_hours`
--
ALTER TABLE `rules_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_descansos`
--
ALTER TABLE `schedules_day_descansos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_hextras`
--
ALTER TABLE `schedules_day_hextras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_hsuplementarias`
--
ALTER TABLE `schedules_day_hsuplementarias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_leaders`
--
ALTER TABLE `schedules_day_leaders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_standbies`
--
ALTER TABLE `schedules_day_standbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedules_day_turns`
--
ALTER TABLE `schedules_day_turns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `schedule_turn_agents`
--
ALTER TABLE `schedule_turn_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `site_configurations`
--
ALTER TABLE `site_configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_liders`
--
ALTER TABLE `tipo_liders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_standbies`
--
ALTER TABLE `tipo_standbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_of_agents`
--
ALTER TABLE `type_of_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_of_holidays`
--
ALTER TABLE `type_of_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_of_shifts`
--
ALTER TABLE `type_of_shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unavailable_dates_by_agents`
--
ALTER TABLE `unavailable_dates_by_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vacation_date_by_agents`
--
ALTER TABLE `vacation_date_by_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agentes_necesarios_por_dia_por_turnos`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos`
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `agentes_necesarios_por_dia_por_turnos_shift_links`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos_shift_links`
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_shift_links_fk` FOREIGN KEY (`agentes_necesarios_por_dia_por_turno_id`) REFERENCES `agentes_necesarios_por_dia_por_turnos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_shift_links_inv_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agentes_necesarios_por_dia_por_turnos_site_links`
--
ALTER TABLE `agentes_necesarios_por_dia_por_turnos_site_links`
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_site_links_fk` FOREIGN KEY (`agentes_necesarios_por_dia_por_turno_id`) REFERENCES `agentes_necesarios_por_dia_por_turnos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agentes_necesarios_por_dia_por_turnos_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `agents_area_links`
--
ALTER TABLE `agents_area_links`
  ADD CONSTRAINT `agents_area_links_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_area_links_inv_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agents_city_links`
--
ALTER TABLE `agents_city_links`
  ADD CONSTRAINT `agents_city_links_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_city_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agents_coordinator_links`
--
ALTER TABLE `agents_coordinator_links`
  ADD CONSTRAINT `agents_coordinator_links_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_coordinator_links_inv_fk` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agents_site_links`
--
ALTER TABLE `agents_site_links`
  ADD CONSTRAINT `agents_site_links_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `agents_type_of_agent_links`
--
ALTER TABLE `agents_type_of_agent_links`
  ADD CONSTRAINT `agents_type_of_agent_links_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agents_type_of_agent_links_inv_fk` FOREIGN KEY (`type_of_agent_id`) REFERENCES `type_of_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `areas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `areas_site_links`
--
ALTER TABLE `areas_site_links`
  ADD CONSTRAINT `areas_site_links_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `areas_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cities_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `cities_region_links`
--
ALTER TABLE `cities_region_links`
  ADD CONSTRAINT `cities_region_links_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cities_region_links_inv_fk` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configuracion_horas_nocturnas`
--
ALTER TABLE `configuracion_horas_nocturnas`
  ADD CONSTRAINT `configuracion_horas_nocturnas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `configuracion_horas_nocturnas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `configuracion_horas_nocturnas_area_links`
--
ALTER TABLE `configuracion_horas_nocturnas_area_links`
  ADD CONSTRAINT `configuracion_horas_nocturnas_area_links_fk` FOREIGN KEY (`configuracion_horas_nocturna_id`) REFERENCES `configuracion_horas_nocturnas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `configuracion_horas_nocturnas_area_links_inv_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configuracion_horas_nocturnas_site_links`
--
ALTER TABLE `configuracion_horas_nocturnas_site_links`
  ADD CONSTRAINT `configuracion_horas_nocturnas_site_links_fk` FOREIGN KEY (`configuracion_horas_nocturna_id`) REFERENCES `configuracion_horas_nocturnas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `configuracion_horas_nocturnas_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configuracion_logins`
--
ALTER TABLE `configuracion_logins`
  ADD CONSTRAINT `configuracion_logins_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `configuracion_logins_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `coordinators`
--
ALTER TABLE `coordinators`
  ADD CONSTRAINT `coordinators_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `coordinators_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `coordinators_rol_links`
--
ALTER TABLE `coordinators_rol_links`
  ADD CONSTRAINT `coordinators_rol_links_fk` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coordinators_rol_links_inv_fk` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `coordinators_sites_links`
--
ALTER TABLE `coordinators_sites_links`
  ADD CONSTRAINT `coordinators_sites_links_fk` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coordinators_sites_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `dates_available_by_agents`
--
ALTER TABLE `dates_available_by_agents`
  ADD CONSTRAINT `dates_available_by_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `dates_available_by_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `dates_available_by_agents_agent_links`
--
ALTER TABLE `dates_available_by_agents_agent_links`
  ADD CONSTRAINT `dates_available_by_agents_agent_links_fk` FOREIGN KEY (`dates_available_by_agent_id`) REFERENCES `dates_available_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dates_available_by_agents_agent_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `dates_available_by_agents_site_links`
--
ALTER TABLE `dates_available_by_agents_site_links`
  ADD CONSTRAINT `dates_available_by_agents_site_links_fk` FOREIGN KEY (`dates_available_by_agent_id`) REFERENCES `dates_available_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dates_available_by_agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `groups_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `groups_and_agents`
--
ALTER TABLE `groups_and_agents`
  ADD CONSTRAINT `groups_and_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `groups_and_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `groups_and_agents_agents_links`
--
ALTER TABLE `groups_and_agents_agents_links`
  ADD CONSTRAINT `groups_and_agents_agents_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_and_agents_group_links`
--
ALTER TABLE `groups_and_agents_group_links`
  ADD CONSTRAINT `groups_and_agents_group_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_group_links_inv_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_and_agents_place_links`
--
ALTER TABLE `groups_and_agents_place_links`
  ADD CONSTRAINT `groups_and_agents_place_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_place_links_inv_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_and_agents_rules_day_links`
--
ALTER TABLE `groups_and_agents_rules_day_links`
  ADD CONSTRAINT `groups_and_agents_rules_day_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_rules_day_links_inv_fk` FOREIGN KEY (`rule_day_id`) REFERENCES `rules_days` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_and_agents_rules_hour_links`
--
ALTER TABLE `groups_and_agents_rules_hour_links`
  ADD CONSTRAINT `groups_and_agents_rules_hour_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_rules_hour_links_inv_fk` FOREIGN KEY (`rule_hour_id`) REFERENCES `rules_hours` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_and_agents_site_links`
--
ALTER TABLE `groups_and_agents_site_links`
  ADD CONSTRAINT `groups_and_agents_site_links_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_and_agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_area_links`
--
ALTER TABLE `groups_area_links`
  ADD CONSTRAINT `groups_area_links_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_area_links_inv_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `groups_site_links`
--
ALTER TABLE `groups_site_links`
  ADD CONSTRAINT `groups_site_links_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `groups_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `group_and_grouped_day`
--
ALTER TABLE `group_and_grouped_day`
  ADD CONSTRAINT `group_and_grouped_day_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `group_and_grouped_day_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `group_and_grouped_day_group_links`
--
ALTER TABLE `group_and_grouped_day_group_links`
  ADD CONSTRAINT `group_and_grouped_day_group_links_fk` FOREIGN KEY (`group_and_grouped_days_id`) REFERENCES `group_and_grouped_day` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_and_grouped_day_group_links_inv_fk` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `group_and_grouped_day_site_links`
--
ALTER TABLE `group_and_grouped_day_site_links`
  ADD CONSTRAINT `group_and_grouped_day_site_links_fk` FOREIGN KEY (`group_and_grouped_days_id`) REFERENCES `group_and_grouped_day` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_and_grouped_day_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `holidays_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `holidays_sites_links`
--
ALTER TABLE `holidays_sites_links`
  ADD CONSTRAINT `holidays_sites_links_fk` FOREIGN KEY (`holiday_id`) REFERENCES `holidays` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `holidays_sites_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `holidays_type_of_holiday_links`
--
ALTER TABLE `holidays_type_of_holiday_links`
  ADD CONSTRAINT `holidays_type_of_holiday_links_fk` FOREIGN KEY (`holiday_id`) REFERENCES `holidays` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `holidays_type_of_holiday_links_inv_fk` FOREIGN KEY (`type_of_holiday_id`) REFERENCES `type_of_holidays` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `isabel_call_bases`
--
ALTER TABLE `isabel_call_bases`
  ADD CONSTRAINT `isabel_call_bases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `isabel_call_bases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `isabel_call_bases_area_links`
--
ALTER TABLE `isabel_call_bases_area_links`
  ADD CONSTRAINT `isabel_call_bases_area_links_fk` FOREIGN KEY (`isabel_call_base_id`) REFERENCES `isabel_call_bases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `isabel_call_bases_area_links_inv_fk` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `modules_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `permisos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `permisos_module_links`
--
ALTER TABLE `permisos_module_links`
  ADD CONSTRAINT `permisos_module_links_fk` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permisos_module_links_inv_fk` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permisos_rol_links`
--
ALTER TABLE `permisos_rol_links`
  ADD CONSTRAINT `permisos_rol_links_fk` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permisos_rol_links_inv_fk` FOREIGN KEY (`rol_id`) REFERENCES `rols` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `places_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `places_city_links`
--
ALTER TABLE `places_city_links`
  ADD CONSTRAINT `places_city_links_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `places_city_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `places_site_links`
--
ALTER TABLE `places_site_links`
  ADD CONSTRAINT `places_site_links_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `places_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `regions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `rols`
--
ALTER TABLE `rols`
  ADD CONSTRAINT `rols_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `rols_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `rules_days`
--
ALTER TABLE `rules_days`
  ADD CONSTRAINT `rules_days_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `rules_days_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `rules_days_site_links`
--
ALTER TABLE `rules_days_site_links`
  ADD CONSTRAINT `rules_days_site_links_fk` FOREIGN KEY (`rule_day_id`) REFERENCES `rules_days` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rules_days_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rules_hours`
--
ALTER TABLE `rules_hours`
  ADD CONSTRAINT `rules_hours_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `rules_hours_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `rules_hours_places_links`
--
ALTER TABLE `rules_hours_places_links`
  ADD CONSTRAINT `rules_hours_places_links_fk` FOREIGN KEY (`rule_hour_id`) REFERENCES `rules_hours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rules_hours_places_links_inv_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rules_hours_site_links`
--
ALTER TABLE `rules_hours_site_links`
  ADD CONSTRAINT `rules_hours_site_links_fk` FOREIGN KEY (`rule_hour_id`) REFERENCES `rules_hours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rules_hours_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_coordinator_links`
--
ALTER TABLE `schedules_coordinator_links`
  ADD CONSTRAINT `schedules_coordinator_links_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_coordinator_links_inv_fk` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_descansos`
--
ALTER TABLE `schedules_day_descansos`
  ADD CONSTRAINT `schedules_day_descansos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_descansos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_descansos_agents_links`
--
ALTER TABLE `schedules_day_descansos_agents_links`
  ADD CONSTRAINT `schedules_day_descansos_agents_links_fk` FOREIGN KEY (`schedules_day_descanso_id`) REFERENCES `schedules_day_descansos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_descansos_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_descansos_groups_and_agents_links`
--
ALTER TABLE `schedules_day_descansos_groups_and_agents_links`
  ADD CONSTRAINT `schedules_day_descansos_groups_and_agents_links_fk` FOREIGN KEY (`schedules_day_descanso_id`) REFERENCES `schedules_day_descansos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_descansos_groups_and_agents_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_descansos_schedule_links`
--
ALTER TABLE `schedules_day_descansos_schedule_links`
  ADD CONSTRAINT `schedules_day_descansos_schedule_links_fk` FOREIGN KEY (`schedules_day_descanso_id`) REFERENCES `schedules_day_descansos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_descansos_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hextras`
--
ALTER TABLE `schedules_day_hextras`
  ADD CONSTRAINT `schedules_day_hextras_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_hextras_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_hextras_agents_links`
--
ALTER TABLE `schedules_day_hextras_agents_links`
  ADD CONSTRAINT `schedules_day_hextras_agents_links_fk` FOREIGN KEY (`schedules_day_hextra_id`) REFERENCES `schedules_day_hextras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hextras_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hextras_groups_and_agent_links`
--
ALTER TABLE `schedules_day_hextras_groups_and_agent_links`
  ADD CONSTRAINT `schedules_day_hextras_groups_and_agent_links_fk` FOREIGN KEY (`schedules_day_hextra_id`) REFERENCES `schedules_day_hextras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hextras_groups_and_agent_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hextras_schedule_links`
--
ALTER TABLE `schedules_day_hextras_schedule_links`
  ADD CONSTRAINT `schedules_day_hextras_schedule_links_fk` FOREIGN KEY (`schedules_day_hextra_id`) REFERENCES `schedules_day_hextras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hextras_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hextras_shift_links`
--
ALTER TABLE `schedules_day_hextras_shift_links`
  ADD CONSTRAINT `schedules_day_hextras_shift_links_fk` FOREIGN KEY (`schedules_day_hextra_id`) REFERENCES `schedules_day_hextras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hextras_shift_links_inv_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hsuplementarias`
--
ALTER TABLE `schedules_day_hsuplementarias`
  ADD CONSTRAINT `schedules_day_hsuplementarias_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_hsuplementarias_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_hsuplementarias_agents_links`
--
ALTER TABLE `schedules_day_hsuplementarias_agents_links`
  ADD CONSTRAINT `schedules_day_hsuplementarias_agents_links_fk` FOREIGN KEY (`schedules_day_hsuplementaria_id`) REFERENCES `schedules_day_hsuplementarias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hsuplementarias_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hsuplementarias_groups_and_agent_links`
--
ALTER TABLE `schedules_day_hsuplementarias_groups_and_agent_links`
  ADD CONSTRAINT `schedules_day_hsuplementarias_groups_and_agent_links_fk` FOREIGN KEY (`schedules_day_hsuplementaria_id`) REFERENCES `schedules_day_hsuplementarias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hsuplementarias_groups_and_agent_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_hsuplementarias_schedule_links`
--
ALTER TABLE `schedules_day_hsuplementarias_schedule_links`
  ADD CONSTRAINT `schedules_day_hsuplementarias_schedule_links_fk` FOREIGN KEY (`schedules_day_hsuplementaria_id`) REFERENCES `schedules_day_hsuplementarias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_hsuplementarias_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_leaders`
--
ALTER TABLE `schedules_day_leaders`
  ADD CONSTRAINT `schedules_day_leaders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_leaders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_leaders_groups_and_agent_links`
--
ALTER TABLE `schedules_day_leaders_groups_and_agent_links`
  ADD CONSTRAINT `schedules_day_leaders_groups_and_agent_links_fk` FOREIGN KEY (`schedules_day_leader_id`) REFERENCES `schedules_day_leaders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_leaders_groups_and_agent_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_leaders_schedule_links`
--
ALTER TABLE `schedules_day_leaders_schedule_links`
  ADD CONSTRAINT `schedules_day_leaders_schedule_links_fk` FOREIGN KEY (`schedules_day_leader_id`) REFERENCES `schedules_day_leaders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_leaders_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_leaders_tipo_lider_links`
--
ALTER TABLE `schedules_day_leaders_tipo_lider_links`
  ADD CONSTRAINT `schedules_day_leaders_tipo_lider_links_fk` FOREIGN KEY (`schedules_day_leader_id`) REFERENCES `schedules_day_leaders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_leaders_tipo_lider_links_inv_fk` FOREIGN KEY (`tipo_lider_id`) REFERENCES `tipo_liders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_standbies`
--
ALTER TABLE `schedules_day_standbies`
  ADD CONSTRAINT `schedules_day_standbies_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_standbies_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_standbies_groups_and_agent_links`
--
ALTER TABLE `schedules_day_standbies_groups_and_agent_links`
  ADD CONSTRAINT `schedules_day_standbies_groups_and_agent_links_fk` FOREIGN KEY (`schedules_day_standby_id`) REFERENCES `schedules_day_standbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_standbies_groups_and_agent_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_standbies_schedule_links`
--
ALTER TABLE `schedules_day_standbies_schedule_links`
  ADD CONSTRAINT `schedules_day_standbies_schedule_links_fk` FOREIGN KEY (`schedules_day_standby_id`) REFERENCES `schedules_day_standbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_standbies_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_standbies_tipo_standby_links`
--
ALTER TABLE `schedules_day_standbies_tipo_standby_links`
  ADD CONSTRAINT `schedules_day_standbies_tipo_standby_links_fk` FOREIGN KEY (`schedules_day_standby_id`) REFERENCES `schedules_day_standbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_standbies_tipo_standby_links_inv_fk` FOREIGN KEY (`tipo_standby_id`) REFERENCES `tipo_standbies` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_turns`
--
ALTER TABLE `schedules_day_turns`
  ADD CONSTRAINT `schedules_day_turns_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedules_day_turns_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedules_day_turns_agents_links`
--
ALTER TABLE `schedules_day_turns_agents_links`
  ADD CONSTRAINT `schedules_day_turns_agents_links_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_turns_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_turns_groups_and_agents_links`
--
ALTER TABLE `schedules_day_turns_groups_and_agents_links`
  ADD CONSTRAINT `schedules_day_turns_groups_and_agents_links_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_turns_groups_and_agents_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_turns_place_links`
--
ALTER TABLE `schedules_day_turns_place_links`
  ADD CONSTRAINT `schedules_day_turns_place_links_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_turns_place_links_inv_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_turns_schedule_links`
--
ALTER TABLE `schedules_day_turns_schedule_links`
  ADD CONSTRAINT `schedules_day_turns_schedule_links_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_turns_schedule_links_inv_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_day_turns_shift_links`
--
ALTER TABLE `schedules_day_turns_shift_links`
  ADD CONSTRAINT `schedules_day_turns_shift_links_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_day_turns_shift_links_inv_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedules_site_links`
--
ALTER TABLE `schedules_site_links`
  ADD CONSTRAINT `schedules_site_links_fk` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedule_turn_agents`
--
ALTER TABLE `schedule_turn_agents`
  ADD CONSTRAINT `schedule_turn_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedule_turn_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `schedule_turn_agents_groups_and_agent_links`
--
ALTER TABLE `schedule_turn_agents_groups_and_agent_links`
  ADD CONSTRAINT `schedule_turn_agents_groups_and_agent_links_fk` FOREIGN KEY (`schedule_turn_agent_id`) REFERENCES `schedule_turn_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_turn_agents_groups_and_agent_links_inv_fk` FOREIGN KEY (`groups_and_agent_id`) REFERENCES `groups_and_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `schedule_turn_agents_schedules_day_turn_links`
--
ALTER TABLE `schedule_turn_agents_schedules_day_turn_links`
  ADD CONSTRAINT `schedule_turn_agents_schedules_day_turn_links_fk` FOREIGN KEY (`schedule_turn_agent_id`) REFERENCES `schedule_turn_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_turn_agents_schedules_day_turn_links_inv_fk` FOREIGN KEY (`schedules_day_turn_id`) REFERENCES `schedules_day_turns` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shifts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `shifts_place_links`
--
ALTER TABLE `shifts_place_links`
  ADD CONSTRAINT `shifts_place_links_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shifts_place_links_inv_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shifts_site_links`
--
ALTER TABLE `shifts_site_links`
  ADD CONSTRAINT `shifts_site_links_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shifts_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shifts_type_of_agents_links`
--
ALTER TABLE `shifts_type_of_agents_links`
  ADD CONSTRAINT `shifts_type_of_agents_links_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shifts_type_of_agents_links_inv_fk` FOREIGN KEY (`type_of_agent_id`) REFERENCES `type_of_agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `shifts_type_of_shift_links`
--
ALTER TABLE `shifts_type_of_shift_links`
  ADD CONSTRAINT `shifts_type_of_shift_links_fk` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shifts_type_of_shift_links_inv_fk` FOREIGN KEY (`type_of_shift_id`) REFERENCES `type_of_shifts` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sites_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `site_configurations`
--
ALTER TABLE `site_configurations`
  ADD CONSTRAINT `site_configurations_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `site_configurations_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `site_configurations_site_links`
--
ALTER TABLE `site_configurations_site_links`
  ADD CONSTRAINT `site_configurations_site_links_fk` FOREIGN KEY (`site_configuration_id`) REFERENCES `site_configurations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `site_configurations_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `tipo_liders`
--
ALTER TABLE `tipo_liders`
  ADD CONSTRAINT `tipo_liders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_liders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `tipo_liders_site_links`
--
ALTER TABLE `tipo_liders_site_links`
  ADD CONSTRAINT `tipo_liders_site_links_fk` FOREIGN KEY (`tipo_lider_id`) REFERENCES `tipo_liders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tipo_liders_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tipo_standbies`
--
ALTER TABLE `tipo_standbies`
  ADD CONSTRAINT `tipo_standbies_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_standbies_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `tipo_standbies_site_links`
--
ALTER TABLE `tipo_standbies_site_links`
  ADD CONSTRAINT `tipo_standbies_site_links_fk` FOREIGN KEY (`tipo_standby_id`) REFERENCES `tipo_standbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tipo_standbies_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `type_of_agents`
--
ALTER TABLE `type_of_agents`
  ADD CONSTRAINT `type_of_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `type_of_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `type_of_agents_site_links`
--
ALTER TABLE `type_of_agents_site_links`
  ADD CONSTRAINT `type_of_agents_site_links_fk` FOREIGN KEY (`type_of_agent_id`) REFERENCES `type_of_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `type_of_agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `type_of_holidays`
--
ALTER TABLE `type_of_holidays`
  ADD CONSTRAINT `type_of_holidays_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `type_of_holidays_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `type_of_shifts`
--
ALTER TABLE `type_of_shifts`
  ADD CONSTRAINT `type_of_shifts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `type_of_shifts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `type_of_shifts_site_links`
--
ALTER TABLE `type_of_shifts_site_links`
  ADD CONSTRAINT `type_of_shifts_site_links_fk` FOREIGN KEY (`type_of_shift_id`) REFERENCES `type_of_shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `type_of_shifts_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `unavailable_dates_by_agents`
--
ALTER TABLE `unavailable_dates_by_agents`
  ADD CONSTRAINT `unavailable_dates_by_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `unavailable_dates_by_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `unavailable_dates_by_agents_agents_links`
--
ALTER TABLE `unavailable_dates_by_agents_agents_links`
  ADD CONSTRAINT `unavailable_dates_by_agents_agents_links_fk` FOREIGN KEY (`unavailable_dates_by_agent_id`) REFERENCES `unavailable_dates_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `unavailable_dates_by_agents_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `unavailable_dates_by_agents_site_links`
--
ALTER TABLE `unavailable_dates_by_agents_site_links`
  ADD CONSTRAINT `unavailable_dates_by_agents_site_links_fk` FOREIGN KEY (`unavailable_dates_by_agent_id`) REFERENCES `unavailable_dates_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `unavailable_dates_by_agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vacation_date_by_agents`
--
ALTER TABLE `vacation_date_by_agents`
  ADD CONSTRAINT `vacation_date_by_agents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vacation_date_by_agents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `vacation_date_by_agents_agents_links`
--
ALTER TABLE `vacation_date_by_agents_agents_links`
  ADD CONSTRAINT `vacation_date_by_agents_agents_links_fk` FOREIGN KEY (`vacation_date_by_agent_id`) REFERENCES `vacation_date_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vacation_date_by_agents_agents_links_inv_fk` FOREIGN KEY (`agent_id`) REFERENCES `agents` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vacation_date_by_agents_site_links`
--
ALTER TABLE `vacation_date_by_agents_site_links`
  ADD CONSTRAINT `vacation_date_by_agents_site_links_fk` FOREIGN KEY (`vacation_date_by_agent_id`) REFERENCES `vacation_date_by_agents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vacation_date_by_agents_site_links_inv_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
