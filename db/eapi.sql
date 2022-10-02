-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2022 lúc 09:19 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eapi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_30_160527_create_products_table', 1),
(6, '2022_09_30_160551_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'quia', 'Explicabo voluptatum repudiandae alias vitae in non quis id. Sed qui sint nesciunt mollitia non. Facilis ea praesentium delectus vitae sed similique.', 5491, 7, 55, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(2, 'dolor', 'Et non adipisci enim iusto error aut quas. Ad dolorem voluptatem eaque. Earum est et ipsa sit soluta.', 9539, 7, 76, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(3, 'dolor', 'Quis tempora rem omnis. Dolor accusantium rerum debitis ipsam qui. Velit ducimus quia ab pariatur repellat sint veritatis.', 7849, 7, 2, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(4, 'laudantium', 'Ab dolores in nulla dolorem. Distinctio dolores delectus molestiae sint molestias et enim soluta. Quos quo ea dicta voluptatem ea. Ea reiciendis a voluptas eveniet.', 1630, 6, 43, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(5, 'ad', 'Omnis accusantium iusto non repudiandae. Ducimus sint rerum est. Necessitatibus vel modi nobis quasi aut cupiditate sint reiciendis.', 3718, 8, 90, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(6, 'et', 'Ad laudantium quia eligendi dolore enim qui ipsum sunt. Facilis sapiente qui doloribus. Sunt itaque et non voluptatum natus.', 4252, 9, 87, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(7, 'dolor', 'Fuga magnam ipsa nam enim. Ducimus expedita velit et suscipit. Sint quod distinctio et repellat delectus nobis. Aliquid accusamus unde qui aut vitae eaque. Blanditiis ipsum fugiat inventore laborum natus ut et.', 5812, 3, 73, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(8, 'iusto', 'Delectus tenetur inventore ut. Placeat voluptatem alias veniam atque tenetur fuga ipsum. Molestiae asperiores at ut at. Sit voluptas voluptatem alias voluptas a animi.', 4744, 7, 41, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(9, 'in', 'Quis aut est aperiam rerum temporibus rem rerum sed. Velit adipisci molestiae distinctio libero. In magnam et fugit iusto. Saepe rerum sed doloremque reiciendis tenetur quasi assumenda.', 4829, 3, 55, '2022-10-02 12:15:14', '2022-10-02 12:15:14'),
(10, 'amet', 'Ut mollitia eligendi libero distinctio non ab consequatur. Sunt sit error saepe et nihil repellat dolorum. Ipsam aut suscipit rerum enim qui voluptatem. Sunt autem odio et repellendus distinctio error.', 2047, 6, 14, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(11, 'exercitationem', 'Sunt et consequuntur et nemo nemo repellendus neque. Aut enim fuga harum ullam ipsum quia consectetur. Ducimus explicabo perspiciatis et et est atque nemo. Aut at cupiditate labore quia.', 9533, 0, 58, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(12, 'asperiores', 'Repellendus perspiciatis voluptas dolorem inventore. Dolores rerum autem sapiente eveniet eum voluptates. Nihil excepturi et quis nobis eaque. Dolore molestias odio repellat necessitatibus.', 8555, 5, 30, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(13, 'est', 'Qui explicabo est repellendus quia aperiam. Consequuntur eos in harum. Id exercitationem nihil omnis sed quasi quasi.', 7477, 2, 58, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(14, 'illo', 'Iusto eos enim inventore quia omnis quia qui. Omnis occaecati commodi ut nam. Et et quisquam quia nesciunt aut fuga repellat adipisci.', 1321, 4, 76, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(15, 'et', 'Aperiam soluta voluptas corrupti iusto modi qui. Sit consequuntur assumenda quae quos quae fuga. Et veritatis ratione quisquam fugit provident est.', 1482, 1, 47, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(16, 'voluptatem', 'Velit quam nisi necessitatibus. Sunt dolorem voluptas dolorem. Vel et pariatur vel voluptas consequatur. Voluptatibus facere veritatis dolores fugiat optio recusandae.', 1680, 5, 99, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(17, 'porro', 'A exercitationem beatae expedita voluptate neque. Voluptate autem quia voluptates tempore minima suscipit vel. Quae tempora et quia dolorem nisi recusandae. Alias voluptate odit asperiores.', 5826, 1, 62, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(18, 'sed', 'Repellat quia provident consequatur enim corrupti architecto sunt. Esse maxime nostrum id veritatis maiores nemo officia. Quia error ipsum itaque aut delectus. Nisi et est quidem eligendi recusandae.', 4255, 0, 18, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(19, 'libero', 'Sit nam natus exercitationem aut similique quam iure. Ut praesentium doloribus laboriosam eum aliquam occaecati.', 1656, 6, 14, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(20, 'incidunt', 'Eligendi laudantium aliquam inventore aperiam placeat ratione eos. Repellendus maxime ut nemo voluptatum necessitatibus minima. Tempora delectus et exercitationem inventore.', 2242, 6, 81, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(21, 'et', 'Aliquid quis aliquid eos inventore magni rerum. Et eaque qui aut et repellat. Omnis aut eos consectetur dolorum et quis repellat.', 8980, 8, 51, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(22, 'mollitia', 'Ipsa harum quaerat dolor earum sunt impedit. Vitae accusamus alias iure impedit ut vitae ullam. Repellat ab neque esse culpa ipsam.', 1628, 3, 8, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(23, 'distinctio', 'Magnam voluptatibus laboriosam a quia. Laborum distinctio et voluptas placeat dolorum aspernatur. Aut sed non rerum impedit. Eos error unde quo est rerum praesentium excepturi.', 8896, 2, 39, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(24, 'facilis', 'Occaecati quia sint hic sequi perferendis provident ipsa. Corporis quisquam occaecati quo illum.', 5827, 8, 80, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(25, 'repudiandae', 'Numquam reprehenderit porro eos inventore dolorem. Facilis fuga eaque suscipit et nam soluta vel. Sint laudantium facilis nihil nemo. Dolor minus consequuntur blanditiis fugit aut enim.', 1850, 0, 15, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(26, 'et', 'Accusantium quia iste repellat dignissimos. Rerum magni aut autem cum officiis. Esse officiis natus aut perferendis et placeat. Fuga omnis laudantium assumenda illo quia iure dolore.', 2967, 6, 3, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(27, 'incidunt', 'Praesentium quam velit non voluptatem nihil. Repellendus odio fugit et molestias amet. Molestiae ab necessitatibus beatae magnam voluptatem fuga.', 7363, 0, 64, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(28, 'dolorem', 'Vitae ratione vel architecto aut tempore. Quod omnis quo vel quo.', 4410, 3, 15, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(29, 'dignissimos', 'Vel quia voluptatem omnis ut. Reprehenderit aut a repellendus iusto earum est voluptatum animi. Autem quisquam quae ea accusamus est. Voluptas rerum et esse at.', 2397, 2, 57, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(30, 'laboriosam', 'Quasi sit repudiandae eum ipsum in. Delectus minus rerum a at tempore adipisci voluptatem voluptatibus. Rerum nemo sunt esse minus atque ut.', 7919, 6, 70, '2022-10-02 12:15:15', '2022-10-02 12:15:15'),
(31, 'excepturi', 'Eum ut voluptas expedita cumque eligendi molestiae. Facere ratione nam natus atque ipsam. Quaerat eos aut itaque est recusandae.', 3264, 0, 39, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(32, 'repellendus', 'Tenetur voluptate ipsam numquam expedita. Eum eius quia quisquam quisquam quia. Magnam non ea debitis occaecati repellendus et. Aut consectetur est eligendi necessitatibus enim sequi.', 9245, 0, 50, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(33, 'necessitatibus', 'Mollitia doloribus odio dolore dolore dignissimos adipisci laborum. Vero dolorem eligendi aliquam quaerat. Ut aspernatur illum dolore voluptatum dolor ut et.', 4758, 4, 86, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(34, 'itaque', 'Eaque eaque omnis non rem iure qui quia. Reiciendis dolor occaecati et qui laudantium omnis similique. Laborum porro dolore iure fugit architecto. Dolorem laudantium ad ullam.', 6692, 0, 83, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(35, 'quas', 'Provident qui non dolor quod. Voluptas qui facilis quia fugiat illum aliquam. Aut eum quaerat nihil enim et. Labore autem soluta libero odio. Animi odit magni cumque et magni ullam distinctio.', 3444, 8, 53, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(36, 'assumenda', 'Tempora est quas dolor possimus laboriosam voluptatibus ipsa. Occaecati eligendi vitae ut voluptate esse aut. Architecto impedit laudantium sed totam qui deleniti dolor.', 8498, 7, 87, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(37, 'ut', 'Veritatis exercitationem ut maxime facilis. Similique molestiae enim sed dolor. Vitae fugiat voluptatem tenetur quis dolor molestiae excepturi. Qui natus et enim quia praesentium blanditiis voluptatibus eaque.', 4423, 6, 11, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(38, 'labore', 'Eligendi ut nemo blanditiis animi et beatae temporibus. Et sit sequi aut suscipit cumque nisi temporibus. Harum porro quo maxime nostrum adipisci.', 9491, 0, 77, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(39, 'dolorem', 'Eveniet ducimus minima minima aut. Qui in eos qui facere iste expedita exercitationem. Nulla eos nobis aut dolorem minus modi. Rerum possimus nihil amet.', 7078, 1, 41, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(40, 'tempore', 'Sit odio asperiores animi odit. Commodi ea et deleniti alias possimus ut. Exercitationem est non exercitationem dolore nesciunt repudiandae corporis. Voluptas est ut sit atque.', 2367, 1, 67, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(41, 'quas', 'Aut quibusdam id vel repudiandae cumque cumque. Expedita aliquid laboriosam fuga omnis rerum nesciunt vero. Autem eius error libero omnis voluptatem voluptates perspiciatis.', 9487, 9, 96, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(42, 'dicta', 'Aspernatur sit laudantium ea dignissimos officia officia et aspernatur. At officia incidunt ab aut aliquam et. Libero eum aut sunt quaerat qui dicta dolores.', 9112, 7, 31, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(43, 'sed', 'Rerum quis architecto consectetur suscipit doloribus architecto. Ullam at inventore possimus non reiciendis exercitationem voluptatem nostrum. Quos animi ut et animi alias ea voluptas.', 8806, 8, 60, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(44, 'maxime', 'Iusto reiciendis nihil modi omnis. Expedita nam mollitia ex magni. Deserunt sit sit assumenda placeat ea. Pariatur consequatur laboriosam provident eveniet dolore ullam perferendis.', 1513, 0, 56, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(45, 'dolorum', 'Ut iste pariatur totam consequatur dolorum soluta est. Placeat blanditiis quis assumenda ut. Cumque ipsa blanditiis pariatur sit. Voluptatem dolore ut cum iste iste natus repellat.', 6663, 4, 90, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(46, 'totam', 'Et tenetur neque incidunt odit. Nostrum et ab rerum occaecati optio voluptates deserunt. Rerum sed facilis error aut tenetur dolores. Nemo nesciunt quisquam et nam iste.', 5399, 4, 40, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(47, 'illum', 'Laudantium ipsum in cumque debitis rerum sunt ut. Ipsum atque aliquam quidem earum est et. Mollitia assumenda eligendi quas. Perspiciatis numquam consequatur qui cumque laboriosam exercitationem fuga quis. Veritatis nemo quos animi saepe.', 4704, 4, 23, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(48, 'expedita', 'Voluptatem et aspernatur optio est ut excepturi minus. Optio et totam molestiae officia soluta atque nihil. Quis cupiditate quis voluptatem porro atque ratione nisi.', 5624, 5, 73, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(49, 'rem', 'Iusto reprehenderit in error minus fugiat et. Et enim unde aut qui aut deserunt soluta quidem. Facilis libero enim nobis odit consequuntur. Beatae sit quaerat velit eos.', 8916, 2, 77, '2022-10-02 12:15:16', '2022-10-02 12:15:16'),
(50, 'reiciendis', 'Officia rem vel ut porro. Rerum impedit sint voluptatem cupiditate assumenda. Iusto reiciendis voluptatem enim. Aperiam nam dolorem et culpa non ut tempore.', 2964, 9, 58, '2022-10-02 12:15:16', '2022-10-02 12:15:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 49, 'Richard Borer', 'Et consequatur ut nostrum aliquid. Repudiandae aut dolor sed ea ut. Id sit quia quae nemo quis sint quae. Sed velit reprehenderit est eaque quos.', 5, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(2, 32, 'Stone Douglas', 'Enim excepturi sit doloribus aut. Corrupti ut beatae dignissimos doloremque maiores nostrum vel. Aut et sit libero adipisci sint possimus dicta ducimus.', 0, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(3, 2, 'Prof. Suzanne Stokes DVM', 'Explicabo voluptate voluptatem possimus alias sequi dolore. Facere iure neque quibusdam qui voluptates consequatur. Sit quisquam rerum nihil sunt necessitatibus consectetur.', 3, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(4, 8, 'Christop Stehr', 'Harum labore id fugiat laborum. Quod labore deserunt officia. Laboriosam corporis dolores vero maiores sit. Molestiae odio quia sed dolorum consectetur nesciunt provident. Dolore veniam facilis est ratione.', 3, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(5, 45, 'Minerva Swift', 'Reprehenderit eos et impedit est autem pariatur est. Eos sunt corrupti ullam ut et. Officia aut omnis libero reprehenderit ut. Autem molestiae nam molestiae quaerat iste laboriosam non. Hic vitae eum fugit aut.', 1, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(6, 48, 'Arlie Koch', 'Totam aspernatur dolore voluptatem cum. Unde at et rerum blanditiis. Rerum vitae accusantium voluptatem beatae.', 5, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(7, 42, 'Porter Wunsch', 'Nemo ex sint distinctio et nemo odio. Atque expedita qui saepe praesentium. Ex aperiam iusto minima qui inventore quo.', 5, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(8, 3, 'Mr. Cedrick D\'Amore DDS', 'Dolor sit quis distinctio voluptas earum nihil nesciunt. Molestiae molestias nihil atque excepturi ad eligendi. Ex quibusdam iusto sed libero dicta et vel.', 1, '2022-10-02 12:15:17', '2022-10-02 12:15:17'),
(9, 6, 'Misael Walker', 'Quod qui error officia voluptate. Necessitatibus cupiditate at eaque explicabo vel numquam. Eveniet corrupti enim tempore dolores eum ipsum dolores. Quas inventore repellat quia expedita magnam facere.', 0, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(10, 38, 'Prof. Brandon Vandervort Jr.', 'Voluptatum non aut aspernatur occaecati. Omnis sapiente minima qui dolor. Et vel vero temporibus odit. Ab tempore quas repellendus atque nihil nisi.', 1, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(11, 19, 'Ms. Mireya Christiansen', 'Et omnis quae et quis. Earum asperiores natus quod sint. Voluptatem et sed omnis beatae dignissimos alias.', 0, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(12, 39, 'Demond Mann V', 'Alias voluptatibus odit similique illo praesentium et. Occaecati sit placeat quia quaerat dolor aut omnis. Corrupti distinctio necessitatibus commodi inventore dicta.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(13, 23, 'Bernadine Tromp', 'Provident tempore aliquam provident fugit. Magnam quibusdam expedita velit. Architecto et est eligendi iure.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(14, 7, 'Jaiden Tromp DDS', 'Quibusdam aspernatur sint quam ipsum eveniet ut fuga. Illum non nihil commodi quia ea qui optio. Ipsa iusto sit ut deserunt maiores.', 3, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(15, 17, 'Fay Vandervort', 'Ipsa pariatur deleniti qui in sint dignissimos non. Eligendi dignissimos et porro ut rerum tempora. Aut vel quis nihil accusantium neque adipisci.', 2, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(16, 29, 'Prof. Fabiola Tremblay', 'Eos sit voluptatem quisquam veritatis voluptate nesciunt aperiam. Aut aperiam distinctio optio voluptatum nobis corrupti. Qui asperiores voluptates cum qui voluptas dolor dolore. Tempore odit adipisci et dignissimos illo nihil. Tempore odio praesentium similique.', 3, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(17, 4, 'Fidel Reichert', 'Eum cum id cumque harum molestiae voluptas veritatis. Nesciunt porro repellat perferendis quia quasi cupiditate reiciendis delectus. Quis nesciunt officia maiores sit voluptates neque aut modi.', 5, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(18, 35, 'Trenton Wehner', 'Maiores quo dignissimos quisquam. Libero aut deleniti et ipsum voluptate pariatur alias. Eaque non nulla et autem. Laborum repudiandae temporibus ut laborum.', 2, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(19, 25, 'Eldred Erdman', 'Voluptatem quia tenetur omnis amet. Itaque sit tempora delectus voluptatibus ipsum non quo itaque. Voluptas et molestiae laudantium perspiciatis suscipit.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(20, 27, 'Enos Kutch II', 'Facere eius natus impedit repudiandae. Qui atque distinctio totam minus rerum. Ut consequuntur nihil et repellat sed hic unde sit. Animi libero ipsam porro eaque maiores ut voluptatum. Totam omnis perspiciatis est aut ipsam sapiente omnis asperiores.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(21, 24, 'Dr. Antonina West V', 'Dolores tempora eos impedit qui eum amet voluptatibus quos. Adipisci ut dolores rerum voluptatem dicta. Voluptas aliquam facere odit omnis laborum saepe rerum accusamus.', 5, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(22, 17, 'Ardella Jacobson', 'Illo dolorem doloremque est quisquam dignissimos reprehenderit. Et quia quia doloremque sapiente nam iste. Dignissimos expedita harum ea nihil omnis.', 3, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(23, 18, 'Prof. Shakira Schinner', 'Commodi eos sunt qui assumenda et ut. Et et quia excepturi fuga optio maiores doloribus. Doloribus sequi debitis labore consectetur eum maiores necessitatibus. Illum consequuntur inventore repellendus impedit tempora aut.', 2, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(24, 25, 'Dr. Marlin Berge V', 'Est ipsum officia aut velit repellat sit. Excepturi adipisci quasi et est quaerat. Similique in reprehenderit provident voluptatem quia. Occaecati tempore voluptas nam minima consectetur exercitationem animi.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(25, 16, 'Mr. Axel Prohaska DVM', 'Repudiandae dicta saepe odit quasi eius quisquam ad. Perferendis amet quae enim molestiae eveniet quibusdam soluta. Sapiente recusandae doloremque voluptatem praesentium magnam. Consectetur tenetur excepturi in quia itaque.', 1, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(26, 11, 'Hubert Towne', 'Enim minus ipsam maxime enim adipisci eaque et. Et deleniti voluptate excepturi velit. Consequatur voluptatem aliquid nisi sunt. Dignissimos non voluptatum et omnis.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(27, 44, 'Mrs. Heaven Deckow', 'Consequatur ab aut repellat facere impedit laborum placeat. Sint cum rerum saepe exercitationem aut ipsam. Optio qui animi non ea molestiae. Cupiditate adipisci tenetur adipisci laborum sapiente nihil et.', 4, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(28, 8, 'Laverna Prohaska Jr.', 'Nisi ipsa dicta cum quidem. Sed qui at ut similique quibusdam a. Suscipit illum sapiente minima. Et impedit inventore id corrupti aspernatur eos non.', 2, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(29, 20, 'Jennyfer Toy', 'Animi quasi atque et qui et in cum optio. Sed omnis iste amet magni eos voluptatibus sit. Veritatis quae vero eos et aut ipsa.', 5, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(30, 14, 'Dr. Erica Lehner', 'Natus nostrum error blanditiis cum distinctio quasi nihil doloribus. Deserunt sit deserunt officiis neque esse corporis quia. Numquam fugiat aut delectus quidem laudantium soluta.', 1, '2022-10-02 12:15:18', '2022-10-02 12:15:18'),
(31, 33, 'Zack Bosco', 'Ut consequatur placeat fugit sed consequatur quibusdam est. Quas sequi et consequatur rerum.', 0, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(32, 40, 'Laron Abernathy', 'Sint nihil temporibus hic voluptatum. Nihil est temporibus ad laudantium. Sint et occaecati et optio.', 0, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(33, 10, 'Ms. Kira Grady PhD', 'Architecto ratione expedita consequuntur minus maiores. Quo eos fugiat inventore dolore amet. Impedit ut incidunt et. Quia deleniti veniam consequatur quos ducimus.', 5, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(34, 12, 'Magdalena Carroll', 'Sunt aut minima nihil voluptate aut omnis reiciendis totam. Voluptatem fugit at perspiciatis error quia. Minus soluta excepturi temporibus aperiam. Quo voluptatem facilis eos saepe.', 3, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(35, 44, 'Dariana Pouros', 'Ipsum consectetur magnam ex cumque. Vel cum ullam eaque culpa. Iure error illum nostrum. Doloribus earum non harum inventore vel aut et.', 2, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(36, 18, 'Keyshawn Kling DVM', 'Rerum quae fuga aliquam magnam iusto. Et et ipsam amet officia.', 4, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(37, 6, 'Lavinia Stokes', 'Magnam asperiores consequatur dolor. Inventore sed illum quia. Mollitia debitis repudiandae nisi unde aperiam. Rem iure voluptatum repudiandae atque quas non quia.', 2, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(38, 21, 'Selena Hammes', 'Aut harum magni dolores consequatur aspernatur et sunt. Hic perferendis voluptate ut quidem autem. Et non autem voluptas illo modi non. Maxime ab quia itaque.', 0, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(39, 49, 'Antonio Trantow', 'Amet et aliquid et inventore asperiores fuga. Eum quod ut rerum fugit nisi. Voluptatem vero saepe vero sit rerum.', 2, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(40, 34, 'Dr. Magdalena Hickle', 'Repellendus placeat rem possimus sed est. Et eaque aut inventore consequatur cupiditate veritatis consequuntur quibusdam. Facere labore ut laborum eum voluptatem et velit ad.', 5, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(41, 16, 'Bernhard Zulauf', 'Et et placeat maxime deserunt tempore est. Possimus assumenda natus a dolorem molestiae quasi. Nobis consequatur vitae voluptatibus saepe quaerat qui et. Pariatur autem optio ut minima consequatur enim dolorem.', 1, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(42, 36, 'Barney Champlin', 'Libero optio est assumenda qui officiis autem. Consequatur sint eum voluptatem cumque magni mollitia. Nihil eveniet totam ut nulla. Officia alias similique repudiandae quo consequuntur.', 5, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(43, 21, 'Abel Harber', 'Id dolorem vero expedita quibusdam molestiae. Repellat consequatur eius qui neque porro voluptas repellat ut. Aliquam fugiat fuga vel cupiditate illo.', 4, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(44, 45, 'Karine Grady', 'Voluptatem perspiciatis aut quidem temporibus. Necessitatibus harum ut pariatur nostrum autem quia consequatur. Ut consequatur quam error est doloremque. Velit iure eos culpa velit eos numquam. Excepturi in deserunt non sapiente.', 4, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(45, 27, 'Ms. Delia Conroy III', 'Aliquid qui voluptas aspernatur repudiandae qui. Ipsa corporis occaecati molestiae natus cupiditate possimus saepe. Dolore est aut natus veniam. Temporibus aliquid ut ex voluptas sed necessitatibus.', 3, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(46, 5, 'Dr. Vernice O\'Kon V', 'Sunt expedita tenetur ducimus velit omnis aut vel sunt. Est amet reprehenderit et. Error est eos itaque est magni. Natus ipsa quis et quia. Dolores qui dolor ratione eaque dolores dolores qui.', 3, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(47, 17, 'Julianne Collins II', 'Numquam sunt dignissimos qui magni amet temporibus dolores eos. Quos illo laudantium debitis tempora atque natus. Facilis qui temporibus quo voluptatem sit ex non modi.', 3, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(48, 42, 'Linda Waelchi', 'Odio eaque alias assumenda labore iste. Consectetur ducimus dolores unde dolores. Id totam dolore neque blanditiis dolor ad veritatis.', 0, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(49, 6, 'Mr. Markus Price', 'Amet ullam nostrum et et dolor delectus aut. Ut explicabo ipsa odio ad eveniet voluptate ducimus. Eaque rerum eum tempora a ea provident. Ut eveniet eos sit ex nostrum ut quo.', 3, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(50, 50, 'Cordelia Effertz', 'Harum non quia modi. Qui aut dolor inventore laudantium officia quae. Harum molestiae consectetur debitis dicta et consectetur. Expedita consequatur magnam laboriosam commodi perspiciatis nemo quibusdam. Ad est maxime inventore alias et sunt.', 4, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(51, 38, 'Prof. Adaline Cremin Jr.', 'Quos et qui non suscipit sunt eum quis. Est sapiente asperiores perferendis vel et impedit doloremque impedit.', 5, '2022-10-02 12:15:19', '2022-10-02 12:15:19'),
(52, 33, 'Elfrieda Heaney', 'Minus perspiciatis quam nemo repellendus doloribus quod consequuntur ut. Fuga neque ea sunt et sint. Sunt iure suscipit est nesciunt.', 0, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(53, 1, 'Ray Cormier II', 'Dolorem voluptatem qui dolores itaque et doloremque fugiat. Vel qui consequatur praesentium ut sunt omnis. Repellat praesentium deserunt sint omnis quod reprehenderit deleniti. Dolorem ratione rerum et id maiores.', 1, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(54, 46, 'Prof. Leo Lehner I', 'Et similique consequatur excepturi voluptates. Veniam qui illum saepe vel. Magni ea eos et dolores et. Explicabo voluptatum consequatur temporibus debitis eos iste vel.', 2, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(55, 7, 'Okey Morar', 'Dolore autem dicta at sequi eum blanditiis. Maxime aut doloremque harum quibusdam nesciunt vitae voluptatum. Quibusdam sunt sunt commodi et iusto sunt dolorum.', 4, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(56, 44, 'Dr. Jocelyn Kiehn Sr.', 'Fugit voluptatum aut et iste. Autem fugiat nihil perspiciatis nulla voluptas incidunt expedita.', 5, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(57, 3, 'Magnus Marquardt', 'Ut quos nisi hic ut hic. Amet autem asperiores ipsam ipsum. Esse consequatur quia explicabo.', 0, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(58, 16, 'Jeanie Koss', 'Ab aspernatur eveniet beatae eligendi ut. Aut omnis cum tempore veniam incidunt voluptatem blanditiis maxime. Omnis a aut non et necessitatibus. Consequatur dolorem omnis nihil voluptatem.', 0, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(59, 10, 'Gerhard Hayes Jr.', 'Perspiciatis sint aliquid ipsum aperiam iusto ut ut. Aut aut non est quo. Deserunt libero alias incidunt.', 1, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(60, 12, 'Prince Emard', 'Quaerat quia sequi quae nihil aut dolorem dolores sed. Eos sit tenetur itaque nemo minima. Quia et vel deleniti quos cupiditate et. Recusandae totam aperiam deleniti non.', 1, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(61, 40, 'Prof. Abdiel Borer IV', 'Et a tempore quas quia aliquid et. Aut quia quaerat quis quos dolore cumque rerum. Quam non iusto aliquid sed architecto.', 1, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(62, 16, 'Dr. Shayne Trantow II', 'Quae autem delectus qui eius officia omnis ex ullam. Dolores minus accusamus voluptatem sint quos sint eligendi. Illum qui voluptatibus accusamus et dolorum corporis. Eligendi hic quaerat perferendis magnam qui voluptatem consequatur.', 3, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(63, 2, 'Kennith Cremin', 'Atque nobis sapiente quasi facere qui facere omnis. Ipsa esse ex vero sed blanditiis ut. Iusto vel et aliquid reiciendis omnis unde. Enim corporis laudantium ut corporis non facilis optio.', 4, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(64, 26, 'Miss Yasmine Kuhic', 'Reprehenderit ex eligendi iusto. Ea sit eum pariatur alias optio odio expedita. Molestias nihil dignissimos aperiam enim itaque voluptate sed.', 2, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(65, 34, 'Dr. Aida Heidenreich DDS', 'Earum qui quo odit consectetur. Iste autem placeat ut quisquam eligendi. Sit debitis praesentium iste adipisci. Id quos ut neque praesentium vel et.', 2, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(66, 28, 'Leonora King', 'Numquam ipsa necessitatibus iste ea voluptatem. Sit et alias ipsa odio. Repellendus minus earum facere.', 2, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(67, 23, 'Dr. Conner Shanahan', 'Consequatur architecto aperiam perspiciatis nostrum consectetur quos. Labore temporibus voluptas esse commodi quia. Autem excepturi illum neque quam. Iure et fuga qui illo similique quis.', 4, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(68, 34, 'Deja Sawayn', 'Aspernatur et similique animi in suscipit est ex. Cupiditate velit nobis omnis ut sed dolor qui sed. Nesciunt consequuntur ad quidem accusamus. Culpa sunt aut labore.', 3, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(69, 13, 'Camryn Glover', 'Et et earum reprehenderit delectus fugit. Totam pariatur omnis voluptas laborum. Non a aut qui illum.', 4, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(70, 46, 'Effie Grady', 'Dolorum voluptatem repellat ut illo at consectetur. Nisi ut velit sint modi.', 1, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(71, 48, 'Miss Lenore Stamm', 'Nam voluptatum nulla molestiae deserunt. Ut ea vel ut et. Architecto ut repudiandae et distinctio at accusantium eos.', 3, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(72, 48, 'Melyna Jacobson', 'Velit repellat eum velit dicta ipsa magnam ut blanditiis. Ratione officiis id commodi perferendis. Dolores rerum dolorem illum adipisci sint ex assumenda. Quo nulla architecto labore consequatur in voluptatem.', 3, '2022-10-02 12:15:20', '2022-10-02 12:15:20'),
(73, 50, 'Fred Reichert', 'Minus consequatur ut id laborum doloribus vero voluptas molestias. Voluptates sunt repellat autem dolorum ipsa molestiae sint. Quibusdam quia voluptatem esse.', 1, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(74, 5, 'Garnet Armstrong IV', 'Delectus maiores facere quidem culpa nisi aut in. Ut et cupiditate modi beatae illo nam.', 3, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(75, 48, 'Hellen Kuphal', 'Dolorem ratione enim doloremque molestiae iste qui velit. Id laborum et similique ducimus itaque. At expedita ut eius voluptas vitae. Explicabo voluptatem cupiditate reprehenderit recusandae iusto in voluptatem. Accusantium occaecati adipisci voluptates asperiores.', 4, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(76, 20, 'Ms. Giovanna Barton PhD', 'Quia sint velit eaque dignissimos debitis molestiae modi. Laborum architecto magni cum. Id ut labore vel quod dolorum.', 1, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(77, 47, 'Foster Schaefer II', 'Et hic est aliquam ipsa corporis maxime rerum ab. Ut quo et commodi placeat et sapiente similique. Aliquid ducimus quia odit atque quia. Eveniet sint nemo rerum molestiae.', 4, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(78, 1, 'Gudrun Fay', 'Nobis fugiat quam voluptatum. Porro vero ex cumque qui illum impedit. Illo dicta fugit fugiat numquam beatae quos excepturi repudiandae. Aut quo quo excepturi nam et voluptatem consectetur similique.', 3, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(79, 25, 'Monroe Toy', 'Veritatis sed voluptatum ipsum voluptatem veniam officia. Est et praesentium commodi non inventore.', 5, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(80, 24, 'Wilbert Ward', 'Odio ducimus vel quis omnis. Voluptatum eos facilis porro commodi aut laboriosam blanditiis. Rerum qui impedit ad ullam perferendis. Dignissimos in sunt laborum aut temporibus.', 3, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(81, 46, 'Prof. Judd Haag IV', 'Molestiae quidem cumque fuga beatae. Ad dicta beatae at hic. Velit voluptatem fugiat repellat alias quas eum.', 4, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(82, 5, 'Prof. Morris Larkin', 'Nostrum molestiae est molestiae aliquam fugit. Dignissimos ut ut expedita culpa odit laboriosam architecto.', 4, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(83, 14, 'Dr. Jewell Wiegand', 'Esse consequuntur minus iusto reiciendis illum et. Sit sed quam qui possimus. Tempora non aut et deleniti fugiat voluptatibus.', 0, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(84, 37, 'Yasmeen Klocko', 'Perferendis mollitia voluptates est delectus quas nemo. Et eum occaecati qui molestiae quia iste reprehenderit. Voluptatum quos voluptatem accusantium error.', 3, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(85, 37, 'Vallie Howell', 'Nisi excepturi quo incidunt ab unde aliquid est. Nesciunt ad perferendis autem voluptatem qui. Aspernatur officia expedita soluta molestias dolores sequi autem. Aut alias rem rem dolorum voluptas tempore.', 0, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(86, 35, 'Dr. Monte Pacocha III', 'Sit aut voluptatem voluptatem eius. Excepturi maxime ut doloremque facere id corporis. Facere sint sint quo consectetur. Aut dolores enim aliquid sequi.', 4, '2022-10-02 12:15:21', '2022-10-02 12:15:21'),
(87, 44, 'Demond Howe', 'Eos corrupti sint velit dolore. At rerum nam esse ut provident. Est veritatis necessitatibus eum.', 0, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(88, 24, 'Geraldine Daniel III', 'Sit nisi distinctio iste. Dolor doloribus et dolorum quas. Ipsam pariatur optio ea nihil iusto omnis in omnis. Et ut accusantium expedita sit aut sed quo velit.', 1, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(89, 22, 'Prof. Neil O\'Conner Sr.', 'Sequi ad ut quasi voluptatibus et alias. Optio iure nesciunt temporibus voluptatem. Exercitationem qui labore velit rerum pariatur et officia qui. Hic occaecati voluptas dignissimos similique non.', 2, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(90, 46, 'Al Herman', 'Occaecati sequi error voluptatibus et enim a ipsam debitis. Repudiandae consequatur tempore quidem architecto sed. Molestiae magnam vero accusamus placeat. Quae impedit eligendi quidem omnis.', 4, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(91, 1, 'Dr. Garfield Bergnaum Jr.', 'Eos odio in ducimus libero id molestias ipsam. Asperiores id nulla temporibus possimus qui doloremque. Officiis et magnam voluptatem itaque nesciunt aliquam.', 0, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(92, 35, 'Zachery Fay V', 'Voluptas voluptas dolor vel velit. Veritatis numquam aut earum in. Suscipit et repellendus voluptas odio exercitationem in.', 0, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(93, 15, 'Mrs. Hillary Hudson DDS', 'Dolore dignissimos optio quidem autem ad animi tenetur. Dolor distinctio temporibus expedita et. Est rem sapiente ut ex aperiam consequatur saepe amet. Laudantium animi aspernatur corrupti molestias.', 4, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(94, 14, 'Dr. Hermann Schaden III', 'Fugiat natus eum quia qui sed. Assumenda illum voluptatem ullam incidunt harum rerum. Distinctio vel corrupti a repellat a voluptatibus aut. Repudiandae quod repellat eaque nihil sit.', 1, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(95, 22, 'Dr. Mireya Baumbach', 'Ipsa et iusto perferendis porro. Pariatur similique quam quo rerum porro corrupti sunt. Quia laudantium sunt laborum modi labore vel. Blanditiis ut quam excepturi aut eos suscipit.', 5, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(96, 39, 'Dr. Ansley Lueilwitz', 'Reiciendis repudiandae et aut voluptates delectus. Et architecto praesentium quod mollitia perferendis iste minus. Consequatur dolorem et veritatis beatae.', 1, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(97, 34, 'Corine Carroll', 'Consequatur odit eos ut sequi dolorum est qui. Perferendis voluptatem eum tempora quos dolor aspernatur voluptatum hic. Expedita vero molestiae dolores atque nobis aperiam. Ut accusantium et dolorem ut architecto. Nostrum sapiente beatae sed delectus sunt.', 2, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(98, 11, 'Dr. Allen Stokes', 'Vero enim sunt aut est iure adipisci. Ducimus repellendus praesentium quos. Vitae repellat dolorem laboriosam numquam dolor iusto. Voluptas est unde qui. Quis quisquam et voluptatem aut quam corrupti iusto illo.', 3, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(99, 28, 'Dr. Maxime Eichmann', 'Amet unde quo beatae repellat. Labore aspernatur nemo velit animi. Consectetur autem temporibus voluptas odio eaque provident consequuntur.', 4, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(100, 46, 'Coby Swaniawski', 'Nihil itaque exercitationem saepe aut. Blanditiis omnis recusandae eius necessitatibus amet rerum. Recusandae et dolores tempore quibusdam repellendus. Odio cum dolore officiis voluptate possimus et.', 5, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(101, 4, 'Dr. Mohammad Bashirian DDS', 'Facilis accusamus placeat dolorem repudiandae quisquam architecto perspiciatis. Sed aut nihil omnis aspernatur. Vitae perspiciatis ratione repellendus maiores quo magnam. Deserunt incidunt quae unde autem eum commodi omnis.', 5, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(102, 2, 'Lavonne Sanford', 'Itaque et sit ipsum id. Explicabo reprehenderit et soluta saepe nemo delectus vero. Tenetur aut nihil iusto eveniet natus qui. Error quisquam quia in ex amet culpa nemo.', 3, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(103, 42, 'Rigoberto Donnelly', 'Sed dolorem quos alias at. Voluptatem magni veritatis nulla. Perspiciatis quos omnis facilis at aut omnis.', 0, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(104, 46, 'Mr. Pedro Gerlach', 'Magnam iusto est sed et delectus. Ducimus fugit inventore delectus aut qui alias inventore. Animi sapiente sunt voluptatibus amet rerum tempora qui. Quisquam cumque ex ut sit. Dolorum distinctio earum earum blanditiis itaque.', 3, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(105, 24, 'Pamela Reichert', 'Assumenda praesentium aut vel soluta ipsam. Hic saepe ratione eaque rerum voluptas iure ex. Dolor totam inventore doloribus qui a nihil aperiam. Maiores non tempora quo ducimus rem.', 2, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(106, 34, 'Dr. Michele Becker', 'Magni nam non dolor blanditiis quos. Eaque molestiae vero eum illo officia maiores. Recusandae eligendi sint maxime qui blanditiis nam.', 0, '2022-10-02 12:15:22', '2022-10-02 12:15:22'),
(107, 26, 'Joaquin Wuckert', 'Et sit vitae consequuntur laborum quaerat deserunt voluptatem. Facere illum ea quia eum quaerat aperiam quae. Minima quia nemo est officia.', 0, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(108, 37, 'Mrs. Magdalena Bogan', 'Non et voluptatem omnis quo est. Ipsum deserunt magnam quia esse molestiae cupiditate dolores. Velit facilis sit corporis blanditiis cupiditate voluptas.', 3, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(109, 12, 'Iliana Roberts IV', 'Voluptatibus dolor culpa eum quos perferendis. Consequatur omnis sit ea facere aut mollitia. Debitis esse et mollitia explicabo eos ea id.', 5, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(110, 31, 'Dr. Edgardo Koelpin', 'Est et eligendi aut dignissimos deleniti consequatur. Eos odit nobis nostrum facilis ex quos voluptates voluptatem. Ipsum ut aliquam corporis ut velit officia facere.', 5, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(111, 6, 'Cassandra Beier', 'Molestias et sapiente voluptas impedit est. Qui ad nemo dolore excepturi aut voluptate. Tempore reprehenderit qui inventore dolorem qui et vitae.', 0, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(112, 32, 'Vivien Mann', 'Explicabo dolor autem voluptatum voluptas rerum dolorem. Atque ipsam occaecati in voluptas est aut et. Sed aut omnis id vel tenetur sed. Quasi et perferendis explicabo accusamus possimus accusamus eveniet ut.', 5, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(113, 38, 'Carlotta Gutkowski', 'Eaque et id velit quo. Iste quia exercitationem quibusdam numquam. Nobis reprehenderit maiores modi quas. Necessitatibus deserunt fugit est qui vel officiis autem.', 2, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(114, 10, 'Bella Marks', 'Et dolor et cumque. Quia ut qui reiciendis et. Et odio non ut earum et adipisci.', 0, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(115, 19, 'Claud Kerluke', 'Delectus magni pariatur nobis sit non. Totam voluptatem nisi dicta qui ut vel. Et quibusdam alias impedit modi dolorem est qui corrupti.', 0, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(116, 38, 'Sibyl Mills', 'Velit sapiente debitis deleniti quod repellat ut voluptas magnam. Molestias voluptatem et reprehenderit facilis. Ut culpa et aperiam.', 3, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(117, 16, 'Dr. Isaac Hudson', 'Nemo similique rem praesentium consectetur amet atque atque. Ut autem ipsum totam. Iste sunt maxime ducimus dolor. Quos nobis quod commodi.', 1, '2022-10-02 12:15:23', '2022-10-02 12:15:23'),
(118, 10, 'Diego Strosin', 'Reiciendis velit est quos error et a autem. Sint facere quaerat voluptatem sint debitis. Veniam temporibus ut eos quas.', 4, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(119, 26, 'Justus Schaefer', 'Labore voluptas voluptates tenetur non et. Perferendis et eius inventore officiis optio reprehenderit vitae culpa. Eius eos delectus omnis sed qui similique. Quis facilis doloremque natus tempore.', 2, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(120, 48, 'Magdalen Reynolds', 'Repudiandae facere atque voluptatem earum voluptates sit. Sit consequatur iusto corporis omnis adipisci quaerat. Natus consectetur iste consequatur voluptate harum qui aut.', 4, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(121, 14, 'Mr. Trevor Connelly I', 'Maiores ut qui aut quia dolorum qui voluptatem. Natus quo fugiat aut voluptas possimus voluptate. Delectus quisquam doloremque et repudiandae vel quis aperiam.', 4, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(122, 47, 'Chaz Donnelly', 'Amet rerum voluptas maxime dicta rerum voluptatem animi perspiciatis. Quis sint quidem est sed atque. Accusamus rerum magni doloribus. Est cumque est consequatur architecto perferendis aut.', 2, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(123, 9, 'Miss Aniyah Hammes IV', 'Necessitatibus adipisci ipsa voluptatem ex laboriosam sint. Voluptas minus voluptatum sit animi saepe suscipit. Eos porro vitae corporis deserunt et dolorem. Iure ex culpa et illum quidem qui.', 0, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(124, 25, 'Miss Maxie Hegmann V', 'Recusandae quo ipsum expedita sed error id. Aut aliquam velit omnis quia. Enim aut quae qui omnis tempora officiis. Cumque minima odio praesentium aspernatur sint. Rerum dolorum dolorem iure adipisci sunt ad tempora.', 1, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(125, 10, 'Zula Beier', 'Earum pariatur est autem vel dolorum ut asperiores iusto. Totam qui doloribus reprehenderit fugiat. Aut nobis harum expedita laborum.', 0, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(126, 8, 'Chet Kulas', 'Quidem itaque iusto nihil alias. Quis molestiae iure autem voluptates. Beatae doloremque et consectetur modi architecto. Quo qui non voluptatem.', 0, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(127, 48, 'Clara Hintz', 'Reiciendis numquam voluptatem provident quia fugit dolor dolore. Quasi esse et qui.', 5, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(128, 4, 'Lexus Stamm', 'Sequi iure reprehenderit nobis qui dolorem id officia. Aut illum dolores ut corrupti ad eveniet voluptatem. Dolor quasi qui accusantium ut fugit repellendus sed.', 3, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(129, 6, 'Burdette Wiegand', 'Voluptatem cupiditate harum et doloribus autem accusamus. Cumque exercitationem aut recusandae est accusantium eius ut et. Reprehenderit voluptatem fugiat quia commodi consequatur et. In quibusdam impedit quasi.', 1, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(130, 50, 'Delphia Lehner', 'Sunt voluptatem deserunt minima totam velit praesentium. Aut ut a ducimus. Et quod nisi et. Consequatur aut quis ut sint sed quod necessitatibus. Dolorem vero inventore dignissimos quod itaque.', 5, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(131, 50, 'Mrs. Bette Bashirian DDS', 'Enim dolor est nisi doloremque dignissimos. Eum optio architecto aut ullam aliquid aut est. Eos possimus pariatur similique non rerum et.', 3, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(132, 22, 'Kailee Jaskolski', 'Assumenda cum quo sed perferendis aut et. Amet fugiat aliquid rerum qui at sint. Aspernatur quo deserunt et nihil ea et. Excepturi modi officiis exercitationem et qui.', 5, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(133, 31, 'Alicia Hoppe', 'Quae ea consequuntur aliquam quo dolorem quia aliquid amet. Laboriosam sunt qui iste omnis omnis voluptatem autem quam. Et quia fuga at et.', 5, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(134, 43, 'Brenna Kilback', 'Maiores eligendi voluptatum aliquam aspernatur eveniet aut. Praesentium consequatur alias doloremque. Et omnis maxime aspernatur rerum et. Modi dolore voluptas unde qui aspernatur est.', 3, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(135, 35, 'Shyanne Stroman Jr.', 'Tenetur quisquam cupiditate quaerat non at. Exercitationem asperiores consequatur impedit suscipit id quos. Omnis molestiae nam possimus officia.', 4, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(136, 29, 'Erica Medhurst PhD', 'Animi repellendus voluptates rem est quos optio tenetur. Enim totam aut voluptates atque distinctio autem eum. Nostrum quia voluptatem dolorum qui soluta autem excepturi.', 5, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(137, 39, 'Annabelle Pacocha', 'Et natus possimus totam pariatur. Qui dolor sunt animi voluptas. In explicabo vero corrupti quo minima.', 0, '2022-10-02 12:15:24', '2022-10-02 12:15:24'),
(138, 41, 'Prof. Marcellus Dicki', 'Error ut fugit consequatur itaque voluptatibus. Reiciendis nostrum quod et ea dolorem non iusto ea.', 4, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(139, 32, 'Marcelle Okuneva', 'Recusandae dolores incidunt assumenda ea reiciendis temporibus. Consequatur aspernatur corrupti placeat beatae facilis. Quaerat voluptas possimus nesciunt. Asperiores inventore sunt ut.', 1, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(140, 33, 'Johann Deckow', 'Voluptatem ut qui illum iure reprehenderit est suscipit. Temporibus praesentium earum quasi cum. Officia aut quasi inventore mollitia deleniti est delectus. Non porro debitis repudiandae asperiores sit et. Sed ullam ratione aut.', 5, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(141, 42, 'Cary Sporer', 'At quisquam et qui fugit dignissimos id praesentium. Eaque sint sint ea architecto sed. Fugiat quod voluptas saepe occaecati consequatur. Id laborum distinctio sequi voluptatem quis dolore architecto. Voluptas amet praesentium temporibus quibusdam non non nihil.', 3, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(142, 36, 'Dr. Houston Jakubowski', 'Sequi expedita voluptatem architecto temporibus quod veniam magni. Doloremque consequatur et corrupti autem. Enim distinctio quo saepe ea voluptatibus et voluptas nihil.', 2, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(143, 26, 'Miss Maudie Rippin', 'Iusto reiciendis ratione officia quia. Similique suscipit non perspiciatis enim quos incidunt nihil. Quidem ratione in quo vel pariatur. Eum blanditiis sit et id delectus veritatis eligendi.', 3, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(144, 19, 'Mr. Boris Muller II', 'Officiis neque eaque ratione repellendus aut eaque. Omnis consequatur nemo nisi est. Molestias quas unde autem possimus omnis veritatis.', 4, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(145, 11, 'Maxine Barton', 'Quidem ullam quia architecto eligendi voluptas et magni. Odio voluptatem praesentium at.', 1, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(146, 39, 'Estella Fahey', 'Consequatur voluptatem eligendi blanditiis maxime. Commodi ea enim ut ea officiis. Et cumque dolore et. Necessitatibus facere nulla eum harum voluptas facere atque sint. Assumenda velit est rerum quibusdam rerum velit facere.', 5, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(147, 28, 'Lonnie Reinger V', 'Omnis consequatur sunt explicabo rerum. Rerum porro veniam voluptas eligendi. Est dolore et omnis ut itaque ducimus. Dignissimos quidem consectetur quod.', 4, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(148, 43, 'Wilburn Moen', 'Voluptatem quae autem rerum iste necessitatibus quis sint. Omnis molestiae molestiae aspernatur eveniet libero reprehenderit.', 2, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(149, 41, 'Prof. Therese Beer', 'Dolores laboriosam quae sunt ad aut quod enim. Dolores omnis soluta nisi voluptatum adipisci voluptatibus. Dolor omnis dignissimos eius laboriosam veritatis quibusdam ratione ea.', 0, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(150, 33, 'Darwin Willms', 'Vero nostrum eaque repellendus deserunt in dignissimos similique. Eos nesciunt quo quia velit quod mollitia. Autem et voluptate et consequuntur dolorum voluptas et officia. Aut delectus sunt nesciunt sapiente totam tempora. Qui quo et rerum asperiores quo sequi.', 4, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(151, 12, 'Hellen Batz', 'Ullam aut accusamus eaque. Nobis officia doloribus quaerat hic ea. Ipsam quia libero pariatur.', 0, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(152, 30, 'Wilbert Simonis', 'Magnam vel officia qui corrupti nihil aspernatur eius deserunt. Harum nulla et numquam. Atque debitis libero labore autem qui qui.', 0, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(153, 4, 'Damon Kuvalis', 'Reprehenderit deserunt voluptas excepturi sapiente. Ipsa placeat quia quo officiis quae quisquam quos explicabo. Est perferendis nemo quos earum.', 1, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(154, 21, 'Verda Hauck', 'Consequuntur quis rerum quae voluptas ut similique ipsum. Neque numquam eius autem laboriosam excepturi culpa et non. A veniam ut est vitae molestiae. Voluptatem ab voluptatum consequatur ratione eligendi reiciendis eos eum.', 1, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(155, 24, 'Rosalia Wunsch', 'Omnis velit fugit maxime qui enim dicta harum maiores. Voluptas aut libero ducimus vel fuga aut eveniet. Cupiditate odit ipsa et quia fugit iusto.', 2, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(156, 3, 'Dr. Dwight Stanton PhD', 'Laboriosam sit sit voluptatem veniam cum voluptas quasi. Neque ut perspiciatis voluptas dolorem voluptas quia ratione. Non id labore blanditiis et ut et voluptatibus. Dolore quibusdam placeat dolorum rerum.', 4, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(157, 27, 'Christina Swaniawski I', 'Optio nobis vitae ab enim alias. Natus ex excepturi sit quo quia. Et eum maxime voluptatem necessitatibus temporibus ratione maxime quis.', 0, '2022-10-02 12:15:25', '2022-10-02 12:15:25'),
(158, 16, 'Dr. Michele Heathcote', 'Laudantium corrupti iusto omnis sed. Et consequatur quos rerum ut expedita debitis. Autem incidunt sunt et. Ut eum doloremque et aliquid nihil nisi.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(159, 24, 'Hayley Hettinger', 'Quaerat commodi pariatur nihil voluptatem qui nulla. Harum vel odit ea veritatis aut fugiat. Minima sit quisquam incidunt quia tempore repellendus ut totam. Ut iure et reprehenderit repudiandae. Eum officia nam iure.', 1, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(160, 16, 'Mack Hoeger', 'Libero iure ea labore sapiente eius accusamus ab. Dicta tempora fugiat distinctio veniam aut. Consequatur culpa natus molestiae vel quo nulla. Omnis et et sapiente soluta.', 2, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(161, 42, 'Prof. Junius Bogisich II', 'Ratione excepturi iste rem doloremque sapiente rerum. Voluptate molestiae reiciendis quibusdam tenetur est dolorem harum temporibus.', 1, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(162, 39, 'Dr. Jace Hettinger', 'Earum nobis voluptatem dolores officiis sapiente. Quibusdam saepe dicta provident rerum neque rem. Ut aut velit est tempore necessitatibus qui recusandae.', 2, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(163, 37, 'Mr. Kendall Koch', 'At omnis recusandae nam. Soluta nemo dolor eum adipisci consequatur expedita odit animi. Est eos ut placeat voluptatibus dolore reprehenderit quis. Delectus et quis beatae amet.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(164, 40, 'Giovanna Schamberger', 'Odio possimus rem minus non consequatur dignissimos. Vitae deserunt non ratione porro quibusdam soluta qui explicabo. Minima aut qui veniam fuga tempore iure.', 3, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(165, 10, 'Kamryn Greenholt III', 'Maxime sed aliquid dolor quia maxime ut. Et eligendi sunt amet sequi rem cumque. Mollitia est sit quibusdam alias facere modi. Esse sequi facere cumque voluptatem dolorem ab.', 5, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(166, 46, 'Erna Sipes', 'Sequi veniam accusamus doloribus odit aliquid. Nemo voluptatibus quisquam impedit explicabo similique sequi. Sed assumenda suscipit laborum consequuntur reprehenderit mollitia. Rerum praesentium expedita qui at voluptate quis. Facere nihil ea debitis totam ratione provident.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(167, 5, 'Madie Price V', 'Harum et sequi labore assumenda et in. Ullam excepturi autem consequatur ipsa qui maxime officia. Facere iusto ut odio quis veritatis officia quos. Qui officia et rerum nulla facere.', 1, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(168, 5, 'Robin Donnelly', 'Alias ratione temporibus at maiores laborum a nihil cumque. Quae autem atque et eos nihil. Ratione numquam et ut voluptate dolor.', 2, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(169, 24, 'Levi Gorczany Sr.', 'Omnis id corporis dolor porro. Possimus eos hic voluptate et. Deserunt qui velit et ut commodi. Iste molestiae tempore numquam facere qui quia quis.', 1, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(170, 21, 'Lenny Bosco', 'Repudiandae omnis dolores veritatis quae libero corporis reiciendis. Aut voluptatem sit et. Et fugiat quibusdam est cum ea est maiores. Error illum quia sit et.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(171, 30, 'Christophe Upton DDS', 'Laboriosam amet quia architecto quia sapiente. Commodi dolorem dolorem non delectus animi eveniet magnam vel. Cupiditate eum sit similique facere. Quae autem dolores omnis deserunt dignissimos.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(172, 49, 'Emerald Will', 'Ipsa sed facere et omnis. Numquam id quia fugit eum excepturi molestias. Nihil dicta nisi suscipit molestiae. Rem id similique sapiente voluptatum debitis consectetur quia.', 4, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(173, 26, 'Prof. Carson Kulas V', 'Ab quia voluptates et ut. Similique voluptatum commodi alias a. Porro tempore ipsam sunt aliquam libero. Cum facilis placeat perferendis nemo sed nesciunt.', 0, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(174, 30, 'Janie Becker', 'Doloribus laboriosam ratione soluta incidunt placeat non consequatur. Labore eaque repudiandae dolorem vel eveniet sapiente nostrum. Facere aspernatur ut consequatur officiis expedita.', 2, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(175, 32, 'Charles Feil', 'Nisi nostrum eos excepturi qui delectus est quaerat vero. Sint et impedit dolorum blanditiis et consequatur sed. Quasi quo nam molestiae ipsam voluptate consequuntur et minus. Delectus et et accusantium qui.', 4, '2022-10-02 12:15:26', '2022-10-02 12:15:26'),
(176, 21, 'Mrs. Darlene Kovacek PhD', 'Et ut dolorum officia architecto explicabo ut et. Exercitationem voluptas deleniti expedita nemo velit deleniti. Laborum nisi est velit sequi.', 3, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(177, 38, 'Miss Viva Aufderhar IV', 'Dolor eos sit odit ut. Dignissimos voluptates neque quia facere ratione aliquam.', 2, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(178, 25, 'Rickie Borer II', 'Vel vitae ipsam facilis in. Quidem magni quae totam suscipit cupiditate repellat. Ipsum aut provident earum non.', 0, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(179, 9, 'Garnett Upton', 'Quia dignissimos dolor optio corrupti. Quasi ut ut repellendus quibusdam nemo. Quidem optio nemo ipsa non similique distinctio et.', 5, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(180, 17, 'Claud Renner', 'Quibusdam ipsum asperiores id nihil ut. Non occaecati qui itaque sint eius. Ut qui voluptas ad aut qui praesentium temporibus. Quo eum inventore enim repudiandae.', 2, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(181, 8, 'Mark Barrows Jr.', 'Et eum ullam aperiam harum ratione qui. Vel voluptas neque ut officiis quisquam aut. Non maxime unde aut delectus facilis beatae consequatur voluptate. Et corrupti velit quos sit iste.', 1, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(182, 25, 'Margie Harvey', 'Rerum occaecati enim assumenda odio sunt dignissimos. Est aliquam nobis fugit consequatur quasi non maiores inventore. Dolorem non harum eum.', 4, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(183, 2, 'Mandy Bailey', 'Sunt adipisci et excepturi. Aspernatur amet modi molestiae labore culpa magni autem.', 5, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(184, 45, 'Mrs. Itzel Jacobs Sr.', 'Ullam temporibus nesciunt natus expedita voluptatibus doloremque sed. Sint id id nulla fuga.', 4, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(185, 26, 'Agustin Wunsch', 'Maxime molestias et aut error doloremque inventore saepe omnis. Earum qui omnis veritatis nihil qui consectetur.', 2, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(186, 27, 'Vince Hoeger', 'Iusto autem aut est cumque esse voluptas quos. Quod consequuntur placeat ea et aut sunt. Numquam omnis doloribus dolores voluptas voluptatem cum porro quia.', 4, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(187, 47, 'Erica Corwin', 'Doloribus inventore ut iusto reprehenderit culpa ut. In rem distinctio et ullam. Voluptatem quis aut consequatur quos dicta et. Tempora quod earum aut est nobis nisi voluptate.', 0, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(188, 28, 'Juana Dicki', 'Eum rem eum at occaecati asperiores est consectetur rerum. Fuga voluptas vero laborum et commodi nihil explicabo. Unde aut vel reprehenderit expedita amet. Est culpa in voluptatem delectus praesentium provident repellendus et.', 1, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(189, 46, 'Mr. Preston Schimmel V', 'Amet et dolore dolores dolor aspernatur numquam reiciendis. Enim perferendis quaerat quae ut. Ea molestiae soluta quas occaecati. Eveniet consequatur qui eum dolor.', 1, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(190, 49, 'Mr. Davin Schmidt PhD', 'Molestiae voluptatum sint beatae distinctio rerum ea qui. Vitae iure et cumque non consequatur. Vitae sed modi aut qui fugiat quos. Ipsam repellendus laudantium sit autem. Porro qui totam consectetur reiciendis voluptatum et quod.', 3, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(191, 43, 'Clarabelle Bailey', 'Eos eum dolor libero rem quis provident consequatur iusto. Animi perspiciatis sit nulla fuga. Similique quia et quasi at rerum quibusdam et.', 2, '2022-10-02 12:15:27', '2022-10-02 12:15:27'),
(192, 28, 'Virginia Homenick', 'Doloribus beatae eveniet sunt repellendus dolor quis neque repellendus. Molestiae et est ad in explicabo. Dolores fuga sit est. Quisquam voluptas exercitationem excepturi debitis architecto in.', 1, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(193, 42, 'Eleonore Murray', 'Atque et fuga temporibus. Architecto rerum cum est asperiores laboriosam.', 3, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(194, 12, 'Godfrey Effertz V', 'Nemo corporis hic placeat aut aliquam rem id. Voluptas velit ratione aut.', 2, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(195, 45, 'Casimir Fahey', 'Deserunt ea provident accusamus laboriosam. Aspernatur veritatis odit animi soluta et iusto voluptas. Animi aut eius modi error et dolorem. Saepe sit enim rerum.', 0, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(196, 43, 'Prof. Effie Veum', 'Vel facere quibusdam quod quaerat quas qui. Quis sit sunt quas sint recusandae laudantium. Sunt alias excepturi numquam nihil distinctio quia. Neque officiis debitis commodi nihil sunt architecto.', 5, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(197, 38, 'Johnny Rogahn', 'Non dolorem modi architecto ut sunt repellendus. Molestiae ipsam praesentium explicabo dolorem. Ipsam consequatur minima sequi accusantium. Laudantium commodi nulla expedita reprehenderit et. Perferendis sapiente sapiente officiis nobis impedit quod est.', 0, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(198, 45, 'Spencer Heathcote', 'Non labore ab nihil illo quisquam. Nemo eos odit nisi.', 5, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(199, 13, 'Noemie Murazik', 'In cum ullam harum sapiente est. Quia ullam sed ut dolores omnis magnam. Ullam consectetur sed fugiat velit. Itaque error quasi alias expedita qui dolores facilis.', 4, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(200, 42, 'Mr. Jevon Willms', 'Saepe odio ipsa qui totam. Porro inventore enim eum totam est incidunt. Tenetur eos nostrum officiis exercitationem beatae.', 2, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(201, 23, 'Mr. Weldon Bins I', 'Recusandae eos veniam amet. Laborum tempore rerum adipisci rerum. Tempore natus ea nam perspiciatis ut neque omnis.', 2, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(202, 37, 'Celia Hackett', 'Optio modi mollitia blanditiis corrupti dolor quo tempore. Nesciunt et eveniet quisquam in sit excepturi. Quasi magni dolores atque molestias excepturi tempora molestiae. Distinctio doloremque nostrum nostrum autem.', 0, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(203, 31, 'Dr. Ella Hand', 'Dolore vel facere cum cupiditate asperiores voluptatum nihil. Illo corrupti aut ipsam id non quia sed. Voluptates quibusdam voluptas earum pariatur consequatur saepe et voluptatibus.', 5, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(204, 16, 'Easter West', 'Cupiditate natus fuga officia esse vitae eveniet. Atque mollitia unde fuga. Aut maxime omnis natus quis eos suscipit et. Deleniti et recusandae nam voluptas dolorum repellendus.', 1, '2022-10-02 12:15:28', '2022-10-02 12:15:28'),
(205, 32, 'Shawna Bosco', 'Pariatur quo reprehenderit fugit. Ea atque nesciunt consequatur vel reiciendis et ab nemo. Ut sapiente reprehenderit dolorum vel tenetur.', 0, '2022-10-02 12:15:29', '2022-10-02 12:15:29');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(206, 17, 'Demarcus Leannon', 'Occaecati tempore illo voluptatem officia. Nulla reprehenderit voluptatem doloremque suscipit amet. Voluptatibus non ut hic dignissimos ab iusto praesentium. Praesentium quis ullam modi quidem et itaque dolor consequatur.', 2, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(207, 14, 'Ole Deckow MD', 'Rerum omnis ut est hic distinctio. Enim rerum tempore culpa mollitia perspiciatis quia. Quasi ullam iste minus et totam.', 1, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(208, 31, 'Prof. Destinee Mayer PhD', 'Odio laboriosam quae iure sit eos ducimus. Quibusdam corporis molestiae nisi odit et. Omnis sapiente hic fuga ut error rem.', 5, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(209, 43, 'Dr. Haleigh Quigley III', 'Maxime sit veritatis nobis tempora. Officiis accusantium quae expedita dicta iusto. Voluptatibus eum unde cupiditate accusantium molestias pariatur.', 1, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(210, 33, 'Dr. Jovan Kassulke V', 'Necessitatibus velit labore porro. Illo aliquam non quae quisquam totam. Ex consequatur ab in. Ad dolores necessitatibus et consequatur molestias.', 0, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(211, 26, 'Dr. Elyse McCullough MD', 'Facere aut rerum architecto. Fugiat sed impedit veritatis optio. Odio recusandae eos magnam sed eum.', 4, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(212, 42, 'Derrick Maggio', 'Beatae voluptatem dolor et ut praesentium veritatis repudiandae. Quia quisquam distinctio accusantium reiciendis explicabo. Impedit consequatur aliquid dolores sequi dolore et quia veritatis. Ducimus aut corporis aut.', 2, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(213, 24, 'Vincenzo Ernser', 'Labore aut voluptates quidem dignissimos. Quam qui est molestiae eaque incidunt atque est beatae. Vel voluptates molestiae odit tenetur id.', 3, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(214, 50, 'Roxane Flatley', 'Saepe deserunt est quis voluptates atque a ullam. Pariatur harum illum illo culpa. Quos rerum sed consectetur itaque.', 5, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(215, 43, 'Ms. Hope Skiles', 'Quia nemo et voluptate animi et mollitia non. Et nisi ut omnis facilis. Et et nostrum non qui. Velit nobis odio qui omnis officia dolorum voluptas.', 3, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(216, 5, 'Quentin Nikolaus', 'Quia assumenda ut architecto quia. Sapiente ut corrupti tempore harum deserunt quis. Possimus magnam ea minima minima nihil. Id ipsam asperiores ut quis non doloremque id adipisci. Asperiores dolore est eos accusamus.', 0, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(217, 12, 'Lorine Dicki', 'Asperiores necessitatibus aliquid ratione id. Neque temporibus et rem aut aut. Molestias rerum rerum sunt corrupti et qui.', 0, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(218, 31, 'Casimer Bayer', 'Adipisci eos at enim veniam dolorum facilis. Aut minus voluptatem libero consequatur tempora nihil. Tempore harum autem sed aut fugiat. Dolor odio eligendi animi cum.', 5, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(219, 39, 'Prof. Brionna Romaguera', 'Perspiciatis praesentium qui repudiandae labore. Est facilis voluptates a tempora. Voluptatem minima aliquid et assumenda voluptatem rem. Quis optio sed recusandae cum. Aut dolorem aut velit voluptatem beatae delectus aut.', 5, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(220, 12, 'Candelario Harvey', 'Dolor dolorem consequatur earum tempora et. Pariatur dolor beatae ut sed et est doloribus eaque. Quo aut corrupti commodi sunt magni unde molestias. Quo eos qui ut sint consequatur eos.', 5, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(221, 31, 'Davonte Pagac', 'Ex consequuntur qui dolor voluptatem totam perferendis consequatur. Qui eos animi architecto sapiente eligendi commodi expedita. Inventore fuga non voluptatem possimus mollitia. Dolore voluptas fugit perspiciatis voluptatem doloribus.', 4, '2022-10-02 12:15:29', '2022-10-02 12:15:29'),
(222, 18, 'Anthony Simonis', 'Itaque iusto facere magnam aut repellendus qui. Est impedit esse dicta quas quod. Temporibus ut non nostrum sit ut. Perspiciatis distinctio error aut veniam est modi.', 4, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(223, 46, 'Jesus McCullough Sr.', 'Ea aut labore aliquid ratione totam beatae. Asperiores earum perferendis dolor commodi inventore quasi et temporibus. Quia commodi nulla maxime accusamus.', 2, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(224, 31, 'Magnus Harber III', 'Quo commodi tempora fugiat. Dolorem maiores ut quae. Tempora corporis modi et illo quod. Dolor minima minima rem et quo ab sequi. Ea rerum ea excepturi autem corrupti.', 2, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(225, 14, 'Einar Beer', 'Pariatur soluta minima dolorem accusamus. Et facilis deleniti cupiditate laborum voluptates. Dolor nam exercitationem doloremque quidem quis velit ad. Qui in blanditiis officiis commodi.', 1, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(226, 6, 'Reba McClure', 'Dolore assumenda assumenda corporis voluptatem soluta qui totam. Libero quisquam qui aut et qui esse molestiae. Quam repudiandae molestias dolor exercitationem impedit. Rerum dolorem nesciunt sit error corporis pariatur.', 4, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(227, 46, 'Dr. Maude O\'Keefe', 'Et est cum exercitationem et. Officia est esse voluptatem et atque a. Et doloremque eligendi delectus architecto et facilis soluta. Minima tenetur dicta id velit.', 3, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(228, 17, 'Dr. Jabari Metz', 'Quia dolores vero similique dolorum delectus nihil quam ducimus. Qui ut molestiae neque qui itaque non aliquam explicabo. Et et nulla soluta nemo. Velit commodi quae incidunt dolor quos.', 1, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(229, 43, 'Isabelle Bauch', 'Sit quis pariatur eum aut sint nemo. Sint sit numquam delectus voluptatem aut.', 4, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(230, 34, 'Ms. Jeanie Wilkinson', 'Autem ea minima non magni consequatur dolores. Laborum iusto fugit iure in. Rerum cumque dicta aut pariatur.', 1, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(231, 49, 'Richard Johnson', 'Minima quis dolorem enim nulla impedit sed ut. Totam qui nemo perspiciatis error sit quis nobis. Delectus quod dolorem quos velit.', 2, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(232, 30, 'Anjali Huels', 'Sunt rem unde ipsam aut dolor. Autem consequatur nobis inventore unde. Voluptatem laboriosam expedita in quam. Nihil ad quasi vero vitae tenetur.', 5, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(233, 41, 'Mrs. Imogene Roob IV', 'Dolore et nisi dicta nihil et suscipit. Qui a quasi repellendus incidunt voluptatem. Totam ut aperiam consequatur voluptate nam. Non distinctio occaecati enim porro deleniti ut modi repellendus.', 3, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(234, 30, 'Jorge Lowe', 'Omnis dolore veniam ipsam quia aut nisi est. Eos dolore repellendus culpa et. Nemo tenetur nihil tempora quibusdam. Quasi ex rerum et at vitae cupiditate.', 1, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(235, 33, 'Mallie Becker', 'Totam sit provident aut molestiae ad eum et cumque. Repellendus nesciunt ea possimus. Voluptates et ipsam similique alias ut voluptas deleniti. Minus quibusdam vel rem quasi illo vitae dolor. Dolore et eos magni ducimus est.', 4, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(236, 8, 'Connie Schmeler DDS', 'Quas eos omnis ut officiis nihil. Eum et exercitationem pariatur. Saepe tenetur vitae pariatur autem ducimus quisquam. Esse accusamus voluptatem est dicta. Libero culpa minus possimus velit similique sunt vero.', 5, '2022-10-02 12:15:30', '2022-10-02 12:15:30'),
(237, 1, 'Donavon Abbott DVM', 'Qui eaque nihil laboriosam id et qui optio sit. Perferendis iure tempore accusantium iusto. Laborum animi porro et atque rem cupiditate quasi aliquam. Beatae fugiat ipsa eos non.', 2, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(238, 19, 'Antonietta Lockman', 'Sed et rerum tempora et corrupti voluptatem commodi. Eligendi cupiditate culpa sint rerum id in. Dolore tempore tempora ea deleniti sequi.', 2, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(239, 17, 'Prof. Dandre Beatty DDS', 'Aliquid perferendis dolorem accusantium voluptatum. Repudiandae animi eaque hic quos et necessitatibus illum. Consequuntur illo facilis aspernatur labore. Qui nihil quasi aut veniam reprehenderit quia rem in. Facere temporibus nihil quam dolor eos.', 3, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(240, 43, 'Lemuel Schinner', 'At iure similique tempora dolorum ut sed et ut. Qui iure necessitatibus numquam ut porro. Est eius vitae optio consequuntur.', 0, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(241, 17, 'Mrs. Elaina Denesik', 'Ab aliquam illum natus provident. Libero aut rerum sint ea. Velit voluptate sunt autem est vel.', 3, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(242, 50, 'Prof. Osborne Ankunding MD', 'Repellendus adipisci blanditiis est sunt. Quam corrupti cumque illo dolorum magni esse aut. Assumenda asperiores consequatur perspiciatis delectus quia. Blanditiis numquam neque laudantium est. Ut suscipit qui sed perferendis.', 4, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(243, 6, 'Dr. Taya Miller PhD', 'Architecto et laudantium totam officiis impedit ut saepe. Culpa minus rerum aut numquam eveniet optio aut. Illum non eos temporibus eveniet itaque.', 2, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(244, 45, 'Nadia Collier', 'Omnis officiis quia nemo quae quod aut labore quam. Voluptatem beatae quo error asperiores quis nulla eaque voluptas.', 5, '2022-10-02 12:15:32', '2022-10-02 12:15:32'),
(245, 28, 'Prof. Webster Gutkowski PhD', 'Quia iste eveniet ipsum at culpa ipsam laboriosam. Fugiat asperiores nulla tempora vitae sunt molestias. Reprehenderit sequi maiores porro rem. Et dolorem omnis deserunt harum ut provident.', 4, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(246, 37, 'Johnpaul Hills', 'Velit non est quia qui sint. Consequuntur quia et necessitatibus magni in eius. Tempora omnis rerum veniam rem sint ipsa vitae illo. Et ratione dolor laboriosam quia. Laboriosam deleniti et aliquam soluta iusto eum eaque.', 4, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(247, 14, 'Shane Weber', 'Voluptatem ullam blanditiis quibusdam deleniti dolor magnam. Mollitia molestiae qui architecto autem dicta. Quia eum qui provident et repellendus veniam. Dolorem quod cum qui officiis repudiandae ut blanditiis.', 4, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(248, 22, 'Ms. Juanita Cronin DDS', 'Quis enim sit odio molestiae itaque facilis. Ut et odit tempora qui iure ea et.', 1, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(249, 20, 'Sophia Runte', 'Velit voluptatem ad aut voluptatem. Dolor inventore autem nostrum iusto doloremque. Quas voluptatem corporis esse dignissimos et ratione saepe ut. Nobis ut adipisci ducimus.', 4, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(250, 29, 'Alf Pagac', 'Saepe in totam porro officiis quia. Et corrupti pariatur inventore explicabo vel molestiae qui. Ut recusandae quia optio. Veritatis consequatur totam sunt animi.', 2, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(251, 2, 'Mrs. Antonina Brekke', 'Modi odio autem ea accusamus natus vitae. Et vitae optio est et explicabo laboriosam asperiores. At non iure aut iste ut sapiente et.', 5, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(252, 45, 'Melissa Corwin', 'Nesciunt consectetur quas sed sed voluptatem et non. Autem inventore deserunt nisi voluptatem voluptatem voluptatibus. Repudiandae tenetur quaerat qui sed veritatis ea. Est deserunt aut alias.', 0, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(253, 11, 'Valentina Kessler', 'Tempore minus autem ducimus sapiente dolor nihil. Voluptas est necessitatibus inventore sed at soluta. Doloremque vitae suscipit molestias non ut perferendis qui illo.', 4, '2022-10-02 12:15:33', '2022-10-02 12:15:33'),
(254, 9, 'Zetta Heidenreich', 'Tenetur architecto autem sequi dicta libero omnis. Totam beatae amet possimus. Est voluptatem sed sunt iure quia qui est.', 4, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(255, 36, 'Dameon Wolff', 'Ea aliquid repellat quia. Tempore dolore non qui vel dignissimos nobis ipsam. Qui dolor qui maxime qui asperiores. Maxime distinctio sint nostrum facilis vel.', 1, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(256, 2, 'Delphine Christiansen', 'Doloremque rerum occaecati et quaerat dolore. Quos nihil minus autem non. Laborum nulla ea iure incidunt distinctio.', 1, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(257, 15, 'Ms. Anita Skiles MD', 'Non optio maiores eos ipsum repellat. Placeat aut aut est qui rerum ipsa numquam.', 4, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(258, 7, 'Ricky Purdy DVM', 'Nesciunt fuga dolorem corrupti hic nemo. Possimus ipsum magni molestiae officiis asperiores. Et sit adipisci nesciunt enim omnis omnis quis ipsa. Et natus voluptas officia recusandae.', 0, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(259, 7, 'Kaia Bosco', 'Ut est quibusdam odio dolor. Ab eius cum dolorem illo adipisci. Ex earum ut adipisci iusto. Voluptatem perferendis tempore aut amet impedit.', 0, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(260, 16, 'Elliot Bruen', 'Iste et nihil provident odit id eveniet. Enim sit enim quia eos quam ratione et sequi.', 0, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(261, 35, 'Vickie Kerluke', 'Officiis dolore tenetur ut ullam iusto. Hic asperiores porro doloribus quibusdam molestiae eligendi aut.', 3, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(262, 26, 'Mr. Arnold Kris Jr.', 'Maiores in laborum enim quo ea. Aut facilis est quos ut incidunt. Molestiae nemo blanditiis cumque perspiciatis exercitationem. Veritatis ut harum quae fugiat accusantium cumque.', 3, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(263, 28, 'Lenny Skiles', 'Molestiae dolore dolorum voluptatem sit omnis aut. Dolores accusamus rerum quo optio tempora qui. Eum omnis asperiores corrupti quo voluptatem dolorum enim fugiat. Accusantium quo dicta totam.', 4, '2022-10-02 12:15:34', '2022-10-02 12:15:34'),
(264, 49, 'Vernie Mills', 'Quis aliquid temporibus qui explicabo. Magnam aut minima laboriosam sint. Et fugit molestias atque reprehenderit. Ut aut voluptates rerum eos.', 0, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(265, 20, 'Lera Stoltenberg', 'Doloremque laborum eius suscipit. Cupiditate ut enim non expedita iusto dolor. Beatae sit totam exercitationem rerum non. Fuga alias numquam tenetur modi itaque tenetur quae.', 4, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(266, 10, 'Dr. Clair Morar DVM', 'Esse natus inventore vel doloremque. Eius aperiam soluta voluptates natus eum amet ad. Placeat libero aut aut accusantium commodi illo quisquam.', 0, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(267, 48, 'Ottis Hansen', 'Dolorem necessitatibus ullam illo asperiores eaque. Cumque quis maiores labore quidem.', 5, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(268, 22, 'Trey Howell', 'Ullam modi est est voluptas voluptatem maiores est. Excepturi numquam unde soluta provident dignissimos. Sint corrupti voluptate fuga velit aut amet autem. Quia sit earum corporis.', 1, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(269, 30, 'Wilmer Moore', 'Assumenda autem debitis quo et incidunt molestiae. Dolor quidem illo magnam harum omnis. Hic iste iste libero error esse. Dolor aut sit et voluptates aut tenetur. Est odit blanditiis voluptatem nulla deserunt.', 1, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(270, 28, 'Prof. Dale Cummings Jr.', 'Qui quaerat ut vel porro possimus magni est corrupti. Quis architecto tempora voluptatem animi ea cupiditate. Perferendis animi repudiandae blanditiis et non est facere a. Mollitia eveniet ipsa quibusdam est praesentium voluptatem vitae.', 0, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(271, 47, 'Mr. Edgardo Herman', 'Possimus nobis officiis recusandae officiis incidunt quis vero. Animi doloribus tempora ut fugiat magnam inventore. Non consequuntur assumenda esse alias debitis odio modi. Est expedita ducimus in in animi perspiciatis.', 4, '2022-10-02 12:15:35', '2022-10-02 12:15:35'),
(272, 13, 'Ms. Rosalia Fritsch', 'Eius vero sed iste suscipit. Qui in doloribus et. Reprehenderit ut neque totam eos temporibus autem ea. Porro unde soluta id sint repudiandae rerum doloremque.', 5, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(273, 46, 'Augusta Stehr', 'Rem voluptas consequatur pariatur. Aut ad occaecati illum nemo perspiciatis ducimus a omnis. Nam ullam quas ea et.', 5, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(274, 40, 'Delta Davis PhD', 'Unde consequatur maiores voluptas repudiandae ut. Ut ea hic illo qui omnis. Delectus excepturi asperiores id nihil odio nam unde.', 1, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(275, 41, 'Dexter Christiansen', 'Quisquam deleniti atque quia eum reiciendis qui illum. Dolores accusamus ut sapiente ratione corporis quasi. Pariatur sed non molestiae consectetur modi consequatur.', 1, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(276, 50, 'Hortense Rau', 'Exercitationem quia dolorem commodi et soluta quia. Nihil non eaque sunt impedit optio. Voluptas maxime est possimus recusandae. Amet quas maiores porro aperiam accusamus animi eum libero.', 1, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(277, 41, 'Breanna Streich', 'Consequatur saepe nihil est et. Vel veniam delectus et. Accusamus numquam nobis sequi qui quia.', 0, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(278, 33, 'Mrs. Alia Heller', 'Qui consequatur in pariatur consectetur vel aut labore quo. Adipisci quis et quis aspernatur reiciendis quibusdam. Delectus autem sit totam consequatur et. At et sit in voluptas commodi labore.', 4, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(279, 41, 'Cesar Batz Jr.', 'Quis incidunt tenetur reiciendis itaque itaque sunt blanditiis. Rerum in doloribus sed et nemo est. Consequuntur et vel veritatis tempora.', 3, '2022-10-02 12:15:36', '2022-10-02 12:15:36'),
(280, 22, 'Justina DuBuque', 'Libero quia similique minus libero et dolor. Excepturi culpa pariatur aut dolor nam.', 0, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(281, 8, 'Ahmad Collier', 'Sed qui et sunt ducimus dolor qui. Nobis ipsum soluta debitis dolor. Vitae qui molestias reiciendis quia.', 2, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(282, 16, 'Mr. Federico Koelpin', 'Voluptatum neque molestiae dicta veniam iste sed mollitia. Eos dignissimos corporis ea non dolor iusto. Magni ducimus voluptatem aut eum natus.', 1, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(283, 44, 'Polly Wisozk', 'Et nobis tenetur minima ut. Autem sint similique dolorem. Qui eum accusantium sit sint ullam.', 0, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(284, 16, 'Shanna Witting', 'Accusantium aut quia eveniet consequuntur. Ducimus voluptatem nobis cumque quos a eius asperiores repellat. Laborum quas eos qui ut voluptas distinctio. Et ea hic ad qui. Eligendi molestiae labore aut et omnis voluptates quae.', 3, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(285, 14, 'Ms. Wendy Smith I', 'Autem labore hic consequatur. Eveniet distinctio sunt culpa et quam voluptas.', 3, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(286, 15, 'Andre Klein', 'Nihil pariatur sint velit possimus. Enim natus nesciunt labore facilis rem aut. Saepe laboriosam dolores deserunt incidunt nulla aut nostrum. Cumque voluptates magnam ea nobis veniam.', 0, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(287, 44, 'Dr. Mikayla Russel DDS', 'Voluptatem soluta molestias hic modi consequuntur iure. Unde eos nisi maiores maxime consequuntur dolore. In repellat excepturi ea tenetur. Sint earum ipsum recusandae quidem recusandae.', 3, '2022-10-02 12:15:37', '2022-10-02 12:15:37'),
(288, 10, 'Lenore Kohler', 'Assumenda explicabo sed voluptatibus est. Pariatur dolor nemo voluptatum modi. Optio aliquid sapiente nemo esse repellendus.', 2, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(289, 33, 'Ines Howe', 'Cupiditate doloribus nemo dolor non optio numquam. Cumque vel veritatis velit commodi sint quia consequatur.', 4, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(290, 25, 'Gardner Grady', 'Corporis ipsam sunt error iure ut rerum. Ipsum sunt est illum placeat. Et sunt dolor possimus est commodi.', 5, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(291, 19, 'Perry Kemmer III', 'Consequatur odio illo non dolorum rem. Pariatur ut non harum atque soluta nam animi.', 0, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(292, 13, 'Prof. Jace Hand V', 'A ipsa ullam numquam pariatur. Quis aspernatur quia inventore facilis.', 0, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(293, 41, 'Keanu Hintz', 'Quidem distinctio voluptates ratione sapiente nihil esse. Eveniet ut fugiat dolores. Earum ut maiores in quaerat ea velit asperiores.', 2, '2022-10-02 12:15:38', '2022-10-02 12:15:38'),
(294, 1, 'Donald Considine', 'Eum consequatur et atque iste est exercitationem deserunt. Asperiores harum dolore aspernatur architecto eveniet. Qui necessitatibus et dolorum.', 2, '2022-10-02 12:15:39', '2022-10-02 12:15:39'),
(295, 42, 'Ms. Nicolette Yundt', 'Ipsam ipsa et ut nam dolore est. Aliquid quis aperiam voluptatem est odit. Minus voluptas a delectus id quia nam nisi.', 0, '2022-10-02 12:15:39', '2022-10-02 12:15:39'),
(296, 10, 'Nicole White', 'Quidem cum id cum in quia nihil dolores. Hic quam magni tempora. Quo et ut necessitatibus ratione est.', 5, '2022-10-02 12:15:39', '2022-10-02 12:15:39'),
(297, 40, 'Saul Abernathy', 'Id accusamus mollitia et harum et labore quia quam. Sunt laboriosam amet pariatur modi minus quos consequatur nam. Dolores placeat harum et non soluta. Labore iste praesentium omnis molestias et voluptate facilis. Voluptatem est iste asperiores aut blanditiis optio impedit.', 4, '2022-10-02 12:15:39', '2022-10-02 12:15:39'),
(298, 32, 'Felix Howe', 'Itaque eveniet ut et cupiditate sunt in. Quisquam quis ut excepturi et labore et. Ducimus laudantium velit autem voluptatem ut illum fugit quibusdam.', 3, '2022-10-02 12:15:40', '2022-10-02 12:15:40'),
(299, 49, 'Valentin Roberts', 'Qui possimus optio sit molestiae. Sit animi et eius vitae dolorem. Modi aut numquam quod quia qui corrupti voluptatem qui. Ad consequatur debitis et molestias et.', 2, '2022-10-02 12:15:40', '2022-10-02 12:15:40'),
(300, 21, 'Dr. Cristina Hirthe DVM', 'Consectetur quia qui quia sapiente. Quo dolores placeat enim dolores. Et velit delectus et odit vero facere consequuntur. Debitis est rerum dolores consequatur accusamus distinctio modi.', 2, '2022-10-02 12:15:40', '2022-10-02 12:15:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
