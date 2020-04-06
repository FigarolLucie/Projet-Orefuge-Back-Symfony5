-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 05 Mars 2020 à 16:42
-- Version du serveur :  5.7.24-0ubuntu0.16.04.1
-- Version de PHP :  7.2.24-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `orefuge`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `shelter_id` int(11) NOT NULL,
  `species_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` datetime NOT NULL,
  `arrival_date` datetime NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dog_friendly` tinyint(1) DEFAULT NULL,
  `cat_friendly` tinyint(1) DEFAULT NULL,
  `child_friendly` tinyint(1) DEFAULT NULL,
  `additional_information` longtext COLLATE utf8mb4_unicode_ci,
  `picture1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture2` longtext COLLATE utf8mb4_unicode_ci,
  `picture3` longtext COLLATE utf8mb4_unicode_ci,
  `picture4` longtext COLLATE utf8mb4_unicode_ci,
  `picture5` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `animal`
--

INSERT INTO `animal` (`id`, `shelter_id`, `species_id`, `name`, `description`, `birthdate`, `arrival_date`, `gender`, `dog_friendly`, `cat_friendly`, `child_friendly`, `additional_information`, `picture1`, `picture2`, `picture3`, `picture4`, `picture5`, `created_at`, `updated_at`, `status`) VALUES
(1, 25, 10, 'Iltonne', 'Ipsum vero amet natus quia et quia sequi.', '1996-07-09 00:00:00', '2017-02-06 00:00:00', 'Mâle', 0, 1, 1, 'Aliquam fuga eos voluptatem aut fugiat excepturi. Debitis minus non perferendis sint illum veniam nam. Voluptas dolor assumenda officia perferendis. Magnam quaerat accusantium praesentium reiciendis minima sit eum. Impedit voluptas aperiam ipsum enim ea distinctio deleniti. Id corporis neque sapiente suscipit modi. Ea vel qui et quis. Nostrum est rerum et distinctio ea veniam enim.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(2, 23, 7, 'Elvis', 'Quo qui laborum porro laborum.', '1985-06-15 00:00:00', '1997-08-01 00:00:00', 'Femelle', 1, 0, 0, 'Itaque fuga optio blanditiis. Tempora dignissimos aut animi. Veniam dolorem adipisci eos fugit repellat. Sit velit dolore adipisci corrupti facilis. Perferendis autem assumenda quidem ut temporibus aliquid. Nam neque sit rerum reiciendis. Dolores nam maxime a doloribus. Dolor voluptas aliquid explicabo doloremque aut corporis. Voluptas blanditiis vel eaque doloremque aut quia. Molestiae repellat illum voluptas ad dolore quasi aut.', 'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(3, 23, 7, 'Inola', 'Esse reprehenderit voluptatum quas numquam.', '2019-08-25 00:00:00', '2014-09-10 00:00:00', 'Femelle', 0, 0, 1, 'Autem nulla nemo blanditiis ut sint eaque commodi. Ea vel necessitatibus quam possimus. Voluptatibus corporis et quasi. Amet placeat quos porro veritatis. Beatae sint rerum ad. Dicta non nihil consequatur iste nisi ut delectus. Sapiente maiores voluptas fugit amet. Occaecati autem quo iusto saepe. Animi culpa voluptas earum eligendi itaque soluta nostrum. Quia delectus aliquid molestiae et sit dolores.', 'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(4, 14, 7, 'Jasper', 'Repellendus molestias ullam explicabo modi sint ratione aspernatur.', '1974-08-20 00:00:00', '1974-11-17 00:00:00', 'Mâle', 1, 0, 1, 'Eum pariatur sed qui ut quod reiciendis velit voluptas. Quas doloremque sit commodi sed possimus ipsum quaerat error. Nostrum suscipit esse ut doloremque. Dolores quis asperiores commodi illum sed vitae quaerat. In quisquam vitae rerum vero. Officiis quae aut ad aut id aut quidem. Et officia nobis explicabo. Quia laudantium voluptatibus repudiandae ut voluptatum. Et laboriosam alias maxime. Et enim est accusamus odit. Ut blanditiis aliquid doloribus optio quas eveniet.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(5, 1, 5, 'Hibis', 'Sunt voluptas saepe veniam velit magni natus deserunt.', '1999-09-03 00:00:00', '2012-07-30 00:00:00', 'Mâle', 0, 0, 1, 'Molestiae architecto aut commodi omnis non dolores debitis. Aspernatur officiis explicabo animi est corporis. Libero dignissimos aut non sint. Reiciendis aut ullam cum et a rerum labore. Voluptatem quam sequi corporis. Consequatur vero rerum qui est porro. Dicta vel magnam est in tempore. Voluptatem qui ducimus pariatur placeat. Ut maiores debitis quae repudiandae. Qui aut distinctio sint magni ut architecto. Quasi et et magnam quia et. Et suscipit dolores omnis rerum.', 'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(6, 24, 8, 'Bamboche', 'Ab cumque numquam soluta amet.', '2016-01-13 00:00:00', '2002-02-22 00:00:00', 'Mâle', 0, 1, 0, 'Ea necessitatibus voluptas natus qui distinctio. Ex ad voluptas cumque occaecati ad. Voluptatibus reprehenderit quidem impedit quod rem quia nihil. Autem necessitatibus tenetur totam ut illo. Sed iste quis quaerat qui autem doloribus. Quo optio fugiat dolores molestiae eum. Consequuntur quas animi ea. Placeat consequatur voluptatem dolor delectus. Dolorum explicabo at eum ut error similique qui. Consequuntur enim dolorem iusto qui fugit.', 'https://cdn.pixabay.com/photo/2020/02/09/07/45/turtles-4832203_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(7, 9, 3, 'Icarus', 'Nulla molestias rerum ut ea velit velit deserunt.', '1999-12-22 00:00:00', '1983-10-06 00:00:00', 'Femelle', 0, 1, 1, 'Ea soluta ut blanditiis deleniti suscipit. Cumque sit itaque nemo aliquam at rem. Nemo beatae aspernatur sint soluta eum et culpa. A nobis laudantium cupiditate aut nihil iure. Possimus ea quas ea earum. Animi voluptatem distinctio facere eligendi consequatur amet. Magni quo quis eaque dignissimos nostrum distinctio. Alias reprehenderit blanditiis molestiae error.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(8, 11, 11, 'Licorne', 'Quis aut velit beatae dolores laborum eum autem.', '1986-08-14 00:00:00', '1985-08-12 00:00:00', 'Mâle', 0, 0, 0, 'Corrupti aut voluptatibus incidunt corporis consequuntur officiis est. Sequi minus dolor expedita pariatur et sit. Iste iure cum occaecati fugiat laudantium eum. Laborum minus sunt vel cupiditate quae maxime. Aspernatur quae voluptatem unde quo. Et quia animi velit ipsam earum fugit tempora. Et voluptates et architecto veritatis dolores accusamus. Est illum quas hic consequatur omnis autem velit cum. Dolor rerum delectus eos ut.', 'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(9, 19, 2, 'Marrant', 'Et tempora autem ut ab aut dolor beatae et.', '2004-01-20 00:00:00', '2011-09-02 00:00:00', 'Femelle', 0, 1, 0, 'Porro officiis esse illo laborum dolor voluptate. Corrupti ipsam velit aperiam id occaecati libero perferendis fugit. Dolor molestiae dicta laborum molestiae voluptatum. Quia quas sunt fuga est voluptatem voluptatem repellat. Quaerat eos eligendi est exercitationem necessitatibus. Nulla non maiores unde enim. Ut possimus qui dolore incidunt sed. Asperiores corporis occaecati sapiente.', 'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(10, 20, 6, 'Grisebouille', 'Et rerum est id repellat nobis.', '1985-05-31 00:00:00', '1989-07-22 00:00:00', 'Femelle', 0, 0, 0, 'Inventore id cum totam. Odit illum id voluptas doloremque iste commodi delectus. Ad et nisi eaque assumenda est illum quasi. Sint consequatur et aut eum deserunt. Amet eligendi aspernatur aut dolor. Sed fugit repudiandae eum doloribus et. Magni necessitatibus eveniet eveniet quod consequuntur. Magni voluptates aliquid est non modi ut ut. Culpa voluptatibus qui quo ut neque. Numquam omnis dicta provident veniam. Sed molestias nihil rem ut itaque. Vel id illo possimus quae occaecati.', 'https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(11, 2, 7, 'Chouinette', 'Est architecto molestias officia dolorem et.', '1997-06-13 00:00:00', '1979-08-06 00:00:00', 'Femelle', 1, 1, 0, 'Eum et porro rerum reiciendis deserunt. Consectetur odit laboriosam corporis. Ullam eos rem consequatur. Magni cum et laboriosam cum accusamus doloremque aut. Velit rem eum eos quia. Minima doloribus et repellendus. Quo aut magnam nihil ea praesentium. Aspernatur ducimus et sint laborum cupiditate dolores doloremque. Corrupti id voluptas quidem alias perferendis. Iure repudiandae officia minus consequuntur. Totam sed architecto est quis sit vel aut.', 'https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(12, 23, 2, 'Jazz', 'Voluptas illo consequatur excepturi eveniet vel beatae reprehenderit.', '1970-07-20 00:00:00', '1977-05-14 00:00:00', 'Femelle', 1, 0, 0, 'Cupiditate sunt voluptatibus ad autem explicabo cumque est. Nihil dicta harum sed ex tempora non. Adipisci non ipsam excepturi voluptatem error illum. Sapiente rerum voluptas nihil. Velit in tempora dolores consequatur vel quisquam. Voluptatem non aliquid dolores eligendi nulla sunt fuga aspernatur. Tempore dolore nisi minima aut. Sunt consequatur ducimus labore ratione iusto error. Omnis aliquid sed et hic. Non aliquam non corporis et hic qui vel.', 'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(13, 18, 10, 'Book', 'Magnam quis libero totam eum non.', '1976-02-23 00:00:00', '1999-02-19 00:00:00', 'Femelle', 0, 1, 0, 'Dicta architecto aliquid quibusdam ipsa et alias molestiae. Et natus fuga nemo sint eligendi deserunt. Repellat corporis dolorum dolor non ut cupiditate. Eius est voluptatem repellat non optio nulla. Iure fuga maiores minus quae enim omnis sit voluptatem. Sint quisquam inventore culpa aspernatur nemo neque totam. Et iure aut enim blanditiis facilis tempora ipsum. Aut laborum nisi saepe enim velit rerum vel. Repellat quis voluptate et est ipsa est aut.', 'https://cdn.pixabay.com/photo/2015/06/08/15/03/mouse-801843_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(14, 13, 8, 'Hibis', 'Fuga architecto eum est officia distinctio voluptatum.', '2011-01-21 00:00:00', '1971-01-27 00:00:00', 'Mâle', 0, 1, 0, 'Sed deleniti modi adipisci. Ex est a qui repellendus sequi et. Rerum dolores quia natus quasi qui. Totam iure error expedita doloribus sequi. Esse temporibus nulla mollitia neque impedit ut. Asperiores tempora pariatur minima maiores accusantium culpa. Voluptatem ipsa corrupti in magni qui enim. Architecto facilis rerum ut. Illo voluptatibus temporibus impedit quia. Et minus praesentium unde exercitationem.', 'https://cdn.pixabay.com/photo/2017/01/26/07/05/fighting-fish-2009968_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(15, 12, 4, 'Flora', 'Quis sit natus temporibus doloribus.', '1984-07-04 00:00:00', '1974-03-12 00:00:00', 'Femelle', 1, 1, 1, 'Sequi animi et vero non soluta reprehenderit voluptatum. Perspiciatis voluptas ad et porro maiores expedita velit. Quia libero alias aut dolorum voluptate cumque reiciendis. Error et eum blanditiis numquam. Earum voluptatem est aperiam porro beatae consectetur voluptatem. Nostrum iusto rerum cumque alias corrupti ducimus optio. At molestiae sunt beatae rerum. Fugit magnam qui odit. Rem repellat ipsum et aut enim.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(16, 23, 8, 'Kabuki', 'Sint dolorum nemo cumque natus.', '2010-10-12 00:00:00', '2015-03-27 00:00:00', 'Mâle', 1, 1, 1, 'Eveniet nihil veritatis quia et distinctio. Magnam iusto ut veniam nobis veniam aspernatur ab. Cum aut ea quis. Reiciendis sit adipisci unde nobis tenetur asperiores necessitatibus. Voluptatum distinctio deleniti consectetur expedita accusantium est sed a. Dolor aut blanditiis aut et quasi reprehenderit. Quia et non nihil qui. Voluptatibus veniam odio voluptas et eveniet dolorem aliquid. Sit animi minus occaecati quia id. Consectetur mollitia earum recusandae vel.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(17, 24, 7, 'Icarus', 'Unde sit aliquam aliquid molestias pariatur ut.', '1998-10-25 00:00:00', '1983-07-08 00:00:00', 'Mâle', 0, 0, 1, 'Maiores rerum laboriosam in nihil. Occaecati ex nostrum atque voluptatibus dolores. Consequatur delectus omnis cum autem. Cum sed est officiis qui commodi. Hic id temporibus impedit ea. Quia maxime omnis eaque id. Est facilis iure repudiandae. Qui quo minus adipisci laborum veritatis ut. Fugiat ullam molestiae in. Molestiae ipsa dolorem debitis aut nihil quisquam. Voluptates accusamus quia qui minima voluptatem. Sunt hic quam error quis. Eveniet et dolores et est ea vero.', 'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(18, 4, 2, 'Pixie', 'Quos sit non dolores omnis laboriosam quod.', '1984-09-29 00:00:00', '1992-03-11 00:00:00', 'Femelle', 1, 0, 1, 'Cupiditate ipsam et voluptas dicta asperiores quo repudiandae impedit. Dicta natus quia recusandae. Deserunt quia at error. Et voluptatem natus placeat aliquid. Omnis quis occaecati repellat debitis aut esse. Aut est sed rerum recusandae adipisci at. Facilis qui minima dolor blanditiis corporis. Et sit repellendus ex necessitatibus. Animi minus nihil sit omnis.', 'https://cdn.pixabay.com/photo/2017/08/16/21/10/rabbit-2649157_960_720.png', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(19, 13, 6, 'Hariel', 'Nobis aliquam veniam repellat doloribus recusandae totam.', '2013-02-02 00:00:00', '1982-07-03 00:00:00', 'Mâle', 0, 1, 1, 'Ut vitae officia enim magni debitis. Rerum et in nulla suscipit eaque consequatur libero. Accusamus tempora modi reiciendis explicabo velit. Adipisci sint nisi dolorem quasi aut est. Non qui voluptas mollitia porro. Ea qui ex veritatis qui ut. Itaque quia esse sunt soluta modi est quos.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(20, 22, 3, 'Inola', 'Id esse eum illo aut occaecati omnis et.', '2004-06-06 00:00:00', '2016-05-04 00:00:00', 'Femelle', 1, 0, 0, 'Maiores qui sed illum at est autem. Placeat aliquid dolor dignissimos necessitatibus quis sed. Ut aspernatur recusandae qui distinctio iure voluptas eius. Nihil repudiandae perspiciatis quas quae. Sed qui vitae in iusto ut. Laudantium similique eaque molestiae. Sint et doloribus ut nihil aliquid dignissimos quae. Occaecati delectus beatae est nihil iure qui. Sequi dolores molestiae quia deleniti. Assumenda fugiat ut ut rerum in odit est. Aut ratione reprehenderit a et.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(21, 1, 7, 'Fjord', 'Rem quia nostrum et illum.', '1996-02-24 00:00:00', '2006-03-17 00:00:00', 'Mâle', 0, 1, 1, 'Adipisci ea architecto hic aut maiores pariatur consequatur. Aperiam harum voluptas sunt. Modi amet voluptas libero. Enim est culpa ut perferendis. Praesentium consequatur consequatur culpa nihil et dolores voluptates. Ratione laborum dolorem est itaque voluptate dolore fugit. Velit aperiam dolore vel doloribus. Ipsum eos mollitia voluptas numquam quia enim. Et consequuntur rerum vel magni. Magni est exercitationem perspiciatis.', 'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(22, 2, 10, 'Jasper', 'Et placeat incidunt eum sunt quia.', '1989-12-14 00:00:00', '1980-02-29 00:00:00', 'Mâle', 1, 1, 0, 'Eveniet natus nihil qui sunt. Nam dolorum fugit autem. Voluptatem facere illum eaque ad dolore. Saepe voluptatem esse sed. Corrupti aut modi voluptas officiis. Tempore voluptate voluptate sed libero velit ea. Nihil voluptatem veritatis in commodi quo sed. Sequi quia quidem in fuga sed et blanditiis. Dolorem iure dolorem rerum atque tempore. Qui delectus qui exercitationem cumque aliquid. Beatae veniam nesciunt aut. Ea recusandae delectus quia aut qui.', 'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(23, 22, 10, 'Kit-kat', 'Itaque hic error cupiditate et accusamus beatae.', '2004-03-20 00:00:00', '2019-05-28 00:00:00', 'Mâle', 1, 1, 1, 'At illum quidem officiis laudantium in. Magnam esse maiores sint dolorem nihil. Ut fugit sit doloribus debitis quis quia impedit. Ducimus commodi id provident. Maiores ducimus quam dolor velit. Excepturi natus minima asperiores iste. Ratione architecto non omnis. Sed id quis rerum cupiditate aut soluta aliquid. Cum doloribus ab et vel cum. Consequatur quidem iste ex culpa corrupti.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(24, 5, 1, 'Degas', 'Quos vero ea earum explicabo reprehenderit.', '2015-03-06 00:00:00', '2019-01-22 00:00:00', 'Femelle', 1, 0, 0, 'Delectus natus sunt et est totam qui repellendus. Voluptas molestiae rerum molestiae sunt dolores et suscipit. Consequatur error et asperiores et laudantium sint. Possimus nihil quis dolores ducimus nihil omnis adipisci. Non laborum beatae aut distinctio. Rem veniam eius cum aliquid sed aut. Ipsam ut laboriosam eaque quis laudantium. Odit atque enim et et rem exercitationem et. Amet laboriosam omnis autem.', 'https://cdn.pixabay.com/photo/2012/06/19/15/06/goat-50290_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(25, 17, 4, 'Elvis', 'Facilis earum a ut suscipit voluptatem saepe.', '2011-01-28 00:00:00', '1989-04-01 00:00:00', 'Mâle', 0, 0, 0, 'Unde aliquid dolores odit maiores aut. Rerum inventore omnis rerum consequatur non. Qui iusto blanditiis optio labore. Ut et qui soluta totam vel voluptatem impedit qui. Sint eveniet aperiam modi est eos quas. Eligendi et quia est nostrum atque molestias. Perferendis error rem incidunt mollitia. Nostrum occaecati odio qui hic suscipit. Voluptatem quas iure et. Dolore numquam quisquam quod itaque quis qui. Minima consequuntur aut voluptatem est.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(26, 1, 1, 'Peggy', 'Quibusdam sequi temporibus repudiandae eos debitis quo unde.', '1982-12-09 00:00:00', '2000-10-04 00:00:00', 'Femelle', 0, 0, 1, 'Officiis aut aliquid architecto sed eligendi. Distinctio debitis mollitia quos laborum architecto ipsam. Qui perferendis eos praesentium totam qui. Et sit dolorum corporis qui. Dolorem voluptatibus aut laudantium facilis. Harum itaque sit quo rem aperiam quia. Ut et saepe quam et dolorem veniam. Quam et qui deleniti aut. Sint ut quis laborum iure ea. Aut aut velit distinctio deleniti et. Eum sit vel consequuntur repudiandae culpa perspiciatis. At dolorem iure fugit officiis et dignissimos.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(27, 1, 11, 'Brody', 'Animi et aut praesentium et et ut.', '2001-08-29 00:00:00', '2007-07-14 00:00:00', 'Femelle', 1, 1, 0, 'Fugiat quis dolores qui ex hic dolorum. Tempora cumque molestiae quas rerum. Voluptates nihil voluptatum voluptas. Natus et quos sed inventore aut tenetur. Voluptas officia impedit et nam. Id aut reprehenderit voluptatem nisi dolor aut et. Quia ipsa quo accusantium in a laboriosam. Corporis beatae amet saepe debitis id laborum velit. Dolor reiciendis et qui temporibus possimus.', 'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(28, 13, 5, 'Xeres', 'Repudiandae est ut eligendi ducimus.', '2017-08-12 00:00:00', '2010-01-18 00:00:00', 'Femelle', 1, 0, 1, 'Reprehenderit illum atque deserunt vel sequi in in consequatur. Necessitatibus officiis blanditiis maiores cupiditate autem maxime ipsam incidunt. Esse quaerat tempore doloremque qui voluptatum. Dolore libero exercitationem nostrum quae dolorum quaerat expedita. Ea dolor qui sit. In natus architecto magnam accusamus. Aliquid aperiam tempora quia ab eius rem.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(29, 10, 5, 'Hariel', 'Qui velit nisi maxime voluptas autem provident quia.', '2019-09-15 00:00:00', '2012-10-10 00:00:00', 'Femelle', 0, 1, 0, 'Reprehenderit corrupti molestiae qui voluptates ut voluptates distinctio. Totam doloremque aut vel et quae. Aut doloribus nemo odio placeat in totam. Tempore fuga ut tempore recusandae ipsum magnam laborum. Qui dolores soluta voluptatem magni. Eos aut impedit eveniet quia cumque quo. Consequatur sunt blanditiis inventore aut maiores velit.', 'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(30, 17, 8, 'Anatis', 'Sint et adipisci nesciunt quia delectus inventore molestias.', '2012-05-09 00:00:00', '2003-07-03 00:00:00', 'Femelle', 1, 1, 1, 'Quaerat quod ex velit sed ut dolor. Ea fugit ratione laudantium id distinctio. Cum aut minus quia voluptatem fuga rerum dignissimos ipsam. Impedit perspiciatis dicta qui accusantium. Quis hic voluptatum aut deleniti maiores. Non voluptas est magnam tempore excepturi perspiciatis esse. Laborum voluptas dolores atque soluta eveniet. Accusamus autem voluptas dolorem est sed aut voluptates.', 'https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(31, 4, 2, 'Rouxy', 'Dolores vitae sint quod ab quia excepturi.', '2001-05-14 00:00:00', '2020-02-16 00:00:00', 'Mâle', 0, 0, 0, 'Possimus ut occaecati omnis porro minus sequi dolor. Qui dolor dolore et et quaerat quod sapiente expedita. Est quaerat et voluptatem est hic magnam tempore. Neque neque iste explicabo. Cupiditate alias sunt facilis sed quibusdam. Similique hic et vel quis voluptates. Aspernatur nemo aut minus eum molestiae facilis. Ipsa consequatur et iste omnis officiis. Eaque quaerat unde assumenda recusandae praesentium enim exercitationem consequatur.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(32, 22, 2, 'Jazz', 'Non nihil soluta voluptatibus.', '1976-07-01 00:00:00', '1997-07-11 00:00:00', 'Femelle', 1, 1, 1, 'Rerum ut repellendus rerum dolores et. Itaque culpa tempora sint nobis fugit expedita. Reprehenderit voluptatibus recusandae doloremque et nulla placeat. Qui facere quis soluta soluta. Non expedita velit est enim. Commodi et minima eum. Quae delectus officiis rerum fuga sed. Ut dicta dolorem est qui rerum rem. Aut odit nostrum sapiente quis magni. Autem consequatur ut ut modi at natus. Nesciunt suscipit ipsum minus quos ut.', 'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(33, 17, 6, 'Nuage', 'Enim earum officiis nobis animi.', '2000-12-03 00:00:00', '1987-01-26 00:00:00', 'Femelle', 1, 1, 1, 'Doloribus consequatur voluptatem eos eos a maiores voluptatum. Quasi ullam illo ullam perspiciatis sint nemo laborum sint. Odit quis maxime dicta aut eveniet officiis. Nihil et illum blanditiis autem doloremque aperiam porro qui. Atque veniam aliquid enim unde nulla quia. Molestias est corrupti eligendi culpa ex velit qui. Et enim quod molestias quas a. Eius autem tempora unde reiciendis quia maiores architecto id.', 'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(34, 11, 3, 'Pixie', 'Expedita molestiae quia aut nihil non.', '1989-05-28 00:00:00', '2014-01-21 00:00:00', 'Femelle', 0, 0, 0, 'Sunt eum atque voluptatem laborum provident. Optio quos accusamus quibusdam saepe. Earum non sint aliquam mollitia. Ea nulla omnis nemo dolores et rerum impedit. Libero aut quia atque consectetur sunt quis. Rerum natus earum quasi earum. Voluptatem explicabo laborum aut non sed eos. Odit eum possimus alias aut omnis aut. Illo enim optio accusamus id id quia. Iure quis corporis qui.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(35, 9, 2, 'Salto', 'Eligendi consequatur a est in distinctio voluptas modi.', '1996-01-14 00:00:00', '1992-11-23 00:00:00', 'Femelle', 0, 0, 1, 'Saepe quisquam aut tempora. Autem error est aut consequatur enim illo non. Dolore in tenetur autem quibusdam consequatur molestiae. Et voluptatum deleniti voluptatibus quaerat quisquam animi. Aperiam libero rem magnam ut consequuntur. Voluptatum magni illum aut veritatis excepturi reiciendis fugit. Voluptate est dignissimos quia velit. Eum dolor incidunt eligendi animi sit et. Velit facilis laborum accusamus nulla dolor. Iure quae repudiandae ratione. Et numquam repellat possimus porro.', 'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(36, 4, 8, 'Belle', 'Nesciunt quidem illo esse ut omnis quod omnis.', '2001-08-20 00:00:00', '1989-08-12 00:00:00', 'Mâle', 0, 1, 1, 'Similique quos qui occaecati quae facere. Et itaque molestiae accusantium ipsam neque quis. Perspiciatis aut ab minima et similique quia. Reiciendis mollitia distinctio quasi perspiciatis nemo quas et totam. Blanditiis aut non aut adipisci sint quia ipsum iure. Maiores quas voluptatem nihil et in voluptas. Sapiente et deserunt ut cupiditate porro tempora. Cumque autem non in accusantium quisquam.', 'https://cdn.pixabay.com/photo/2017/01/26/07/05/fighting-fish-2009968_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(37, 17, 8, 'Bichette', 'Ut perferendis expedita assumenda consequatur.', '1975-04-30 00:00:00', '1970-11-03 00:00:00', 'Mâle', 1, 1, 1, 'Voluptatum nesciunt recusandae quam qui nihil. Voluptatem culpa ab officia sunt facilis. Fuga nihil corrupti commodi illum ab consequatur et. Cum distinctio repellat aut vitae. Minima aliquid nesciunt dolor et aut ut in. Deleniti in eveniet ut natus vero ut. Quod blanditiis repellat deserunt tempore magnam atque corrupti. Voluptatem soluta non pariatur ipsa est totam ut. Laudantium velit ut quidem nostrum. Sit dicta sint minima quam ut hic qui. Ducimus veritatis sequi accusantium tenetur.', 'https://cdn.pixabay.com/photo/2017/01/26/07/05/fighting-fish-2009968_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(38, 18, 9, 'Pussy-cat', 'Debitis libero quidem sint molestiae cupiditate blanditiis.', '2012-03-10 00:00:00', '2010-07-09 00:00:00', 'Mâle', 1, 1, 1, 'Dolorem qui sit iste voluptates blanditiis. Ipsa aut delectus occaecati reprehenderit quia perspiciatis. Accusantium sit accusantium reiciendis qui doloribus voluptate voluptatem. Minus ut provident est voluptatem. Ipsa perferendis ipsum enim quasi et. A velit voluptatem excepturi harum corporis. Quisquam qui commodi nesciunt itaque illo reprehenderit perferendis. Qui assumenda repellendus ducimus nihil similique. Autem voluptates recusandae in et eum fugiat dolores.', 'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(39, 3, 7, 'Licorne', 'Vitae dolores et reprehenderit dignissimos.', '2007-02-07 00:00:00', '1984-05-11 00:00:00', 'Mâle', 1, 0, 1, 'Et tempore ducimus in vel nihil. Perferendis quasi porro quaerat est aut praesentium temporibus. Harum nisi tempora nam sunt laborum cum ex placeat. Eveniet vel possimus vel laboriosam officiis consequuntur. Modi labore fugit impedit quod modi aut ut. Nam ut dolor non et eos ratione. Minima omnis repellendus nesciunt excepturi aut laboriosam quia. Architecto aliquam veniam sapiente nam optio velit dolor. Minus aut illo culpa veniam molestias iusto.', 'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(40, 5, 5, 'Josephine', 'Nemo voluptas porro ea amet quasi et.', '1994-11-26 00:00:00', '1985-03-02 00:00:00', 'Femelle', 0, 1, 1, 'Harum nobis facilis nobis ipsum sit. Rem ipsa nesciunt minima illum dignissimos quia. Doloremque voluptas non suscipit dolore aut. Perferendis rerum molestiae explicabo ducimus rem debitis. Quis natus quibusdam pariatur perspiciatis nemo repellat. Odit laboriosam nemo aspernatur dignissimos. Ipsa quibusdam nostrum quia corporis quibusdam.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(41, 24, 11, 'Twin', 'Sequi voluptatibus fugiat eaque quia expedita.', '2018-01-13 00:00:00', '1971-09-23 00:00:00', 'Femelle', 0, 1, 1, 'Magni et libero sed consequatur. Expedita repellendus aliquid iusto modi ipsum libero. Et id iure voluptas. Voluptatum et molestiae dolorem. Rerum asperiores ipsum doloremque non qui et. Placeat eaque quo magnam saepe aut delectus natus. Accusamus ea excepturi ut et nisi est incidunt quia. Ducimus rem assumenda rerum accusantium consequatur vel magni molestiae. Consequatur aliquid aut natus. Odio occaecati ipsam pariatur. Illo similique et et tenetur minus reiciendis esse aut.', 'https://cdn.pixabay.com/photo/2016/03/05/18/54/animal-1238228_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(42, 24, 10, 'Nigelle', 'Enim rerum maxime voluptates sapiente inventore animi.', '1994-12-01 00:00:00', '2006-12-06 00:00:00', 'Femelle', 1, 0, 0, 'Et ab et eos quos doloremque quo. Sed sed sed placeat aspernatur distinctio. Voluptate placeat possimus dolor autem porro. Rerum vero sunt voluptas laborum et commodi ipsa eius. Et est perferendis veritatis aut nihil et amet. Maxime fuga sed possimus dolorem officiis ad suscipit id. Odio eveniet adipisci rerum eum. Aut odit ea quos sed sequi. Cum maxime consectetur est reprehenderit saepe et veritatis quod. Magnam id et quo animi eius sit sint eum.', 'https://cdn.pixabay.com/photo/2018/10/19/23/17/rabbit-3759895_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(43, 13, 9, 'Flyna', 'Atque nemo dolores cum eos.', '2000-12-10 00:00:00', '2009-06-06 00:00:00', 'Femelle', 0, 0, 0, 'Illum omnis optio officiis minima officia similique. Et quo distinctio aliquid ducimus nulla quo dignissimos. Doloribus minima dolorem voluptates et sed corrupti suscipit. Eius quam voluptates itaque enim accusantium sed laborum. Illum ut ut dolor maxime ex accusantium. Qui quae quasi quod ipsam omnis accusantium. Veniam ea minus beatae soluta dolorem suscipit commodi qui.', 'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(44, 12, 1, 'Magnum', 'Est consequatur consequatur sit magni soluta.', '1993-05-27 00:00:00', '1988-07-25 00:00:00', 'Femelle', 0, 0, 0, 'Commodi pariatur aut rerum. Minima sit voluptatem ut necessitatibus nihil. Doloribus architecto beatae nemo quia. Totam debitis nesciunt recusandae. Consectetur ut facere eligendi eos ad quam eveniet voluptas. Repellat vel voluptas libero eum debitis. Distinctio rem provident voluptatem enim iusto error eaque. Magni omnis omnis et consequatur animi. Eum laboriosam quas quo. Voluptas sapiente earum sed qui dicta illum.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(45, 24, 5, 'Jaffar', 'Nihil commodi quo qui rerum dolor tempore deleniti.', '1980-12-31 00:00:00', '2016-12-19 00:00:00', 'Femelle', 0, 1, 1, 'Quis asperiores qui in quo non dolorem. Tempora perferendis dignissimos odit libero adipisci. Quidem sint corporis laboriosam fugiat omnis. Enim sit omnis voluptatem voluptatem tempore eum. Voluptatem suscipit mollitia nobis eum. Perspiciatis et et voluptatem voluptas. Aliquam aut aut cumque necessitatibus excepturi vero soluta.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(46, 13, 11, 'Flyna', 'Voluptatum magni sit neque veritatis ut quae reprehenderit exercitationem.', '1984-12-04 00:00:00', '2007-10-18 00:00:00', 'Mâle', 1, 1, 1, 'Dolorem molestias dolorem minus doloribus. Tempora non illum voluptatem sequi. Nisi fugit architecto consequuntur est eligendi. Odit nihil sunt fuga. Reprehenderit libero porro accusantium est. Id dolorem excepturi dignissimos amet ut qui. Quia et suscipit dolorum sapiente molestias in. Porro aut laboriosam perferendis aut nesciunt eos.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(47, 1, 2, 'Jazz', 'Hic impedit occaecati inventore sint voluptatum laboriosam cumque cupiditate.', '2002-08-20 00:00:00', '2002-03-09 00:00:00', 'Mâle', 0, 0, 1, 'Quos quis saepe officiis sit quo placeat minima. Ducimus natus nisi quae voluptatem molestiae. Dolores tempora expedita similique et. Ullam aperiam aut qui veniam non cum magni et. Soluta temporibus tempore impedit et reiciendis. Cum sed quaerat nesciunt debitis. Non reprehenderit eveniet veritatis quo molestias iure dolore quod. Perspiciatis aut ex dolore excepturi.', 'https://cdn.pixabay.com/photo/2016/12/14/21/10/mouse-1907494_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(48, 15, 6, 'Astro', 'Maxime sunt reprehenderit nisi quia provident.', '1988-01-04 00:00:00', '1993-03-25 00:00:00', 'Femelle', 0, 0, 0, 'Dicta est et minima qui. Molestiae consequatur laborum quia sunt et accusantium qui. Et quae aut nulla quia. Impedit minima sed deleniti repellendus ut. Quas aut itaque ut in veritatis. Ipsa blanditiis qui laboriosam dolor quia dolores praesentium. Ullam non et minima iste dolor. Esse tempora sequi quis perspiciatis ad et. Nisi esse facilis quae architecto.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(49, 9, 7, 'Elvis', 'Dolor labore rerum alias doloribus commodi.', '1998-06-10 00:00:00', '1976-06-28 00:00:00', 'Mâle', 0, 1, 0, 'At officiis dolores exercitationem velit sed officia. Ut dolorem quo voluptate eaque omnis quos ea est. Sed velit ea cupiditate sit eum dignissimos ad. Et sint eius voluptatum ut et id. Praesentium architecto quis nam. Nostrum in id fugiat blanditiis atque. Eveniet dolorem omnis dolorem voluptates nostrum et.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(50, 22, 4, 'Cahuette', 'Sit voluptate dolores sed voluptates et odit molestias.', '1984-10-29 00:00:00', '1992-03-01 00:00:00', 'Mâle', 1, 0, 1, 'Nobis est dicta mollitia dolorem. Eius repellendus distinctio nesciunt nihil sapiente quia facere aut. Dolor quos sed ut esse minus vel temporibus. Ipsam voluptatem quisquam at quaerat et et vero. Expedita suscipit corrupti iusto quidem. Iste nam occaecati quisquam temporibus a. Porro adipisci aut in et nihil eos. Quisquam hic omnis et voluptatem et dignissimos ipsa.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(51, 6, 3, 'Blaky', 'Optio culpa et quae.', '2008-01-19 00:00:00', '1970-06-05 00:00:00', 'Mâle', 1, 1, 1, 'Eligendi rerum et et temporibus hic rerum eum. Voluptas et voluptatem rerum voluptatem quaerat dolore distinctio. Omnis voluptas quos esse neque. Sit qui ut et eum et odit qui. Laboriosam et aut neque blanditiis ut et. Eaque quia temporibus possimus ducimus natus. Ipsam doloribus quam nulla laboriosam. Aspernatur et aut voluptatem odit in vero nostrum nostrum.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(52, 19, 7, 'Genet', 'Nulla tenetur dolor rerum nostrum.', '1982-03-27 00:00:00', '2010-03-26 00:00:00', 'Femelle', 0, 1, 1, 'Deleniti minima a sequi consequatur. Officia omnis corporis id asperiores doloremque possimus. Accusamus aliquam vel voluptates ut. Sapiente sit magni assumenda ullam sit fugiat ut. Dolorum distinctio delectus recusandae sit. At officia consequatur suscipit facere omnis. Dolore cum architecto soluta optio beatae iusto eum. Vel ut animi voluptatibus reprehenderit et ipsum.', 'https://cdn.pixabay.com/photo/2018/11/15/22/20/foal-3818264_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(53, 3, 11, 'Isis', 'Qui numquam a suscipit quas sapiente.', '2000-08-31 00:00:00', '1989-07-10 00:00:00', 'Femelle', 1, 1, 1, 'Necessitatibus ducimus voluptas labore velit. Dignissimos dolorem consequuntur quae quis deleniti vel assumenda facilis. Repellat possimus sed sed totam. Recusandae rerum explicabo laudantium libero vero. Et cum porro nobis. Deleniti maxime odio praesentium. Cum sapiente explicabo earum est omnis quia autem. Amet corrupti sapiente vel possimus nihil. Eum libero expedita perferendis modi ea.', 'https://cdn.pixabay.com/photo/2020/02/13/13/23/dwarf-rabbit-4845651_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(54, 17, 11, 'Fjord', 'Asperiores quod aliquid eos dolores.', '1978-09-12 00:00:00', '1997-07-26 00:00:00', 'Mâle', 1, 1, 0, 'Sint iste earum molestiae rerum ratione. A totam sunt sit. Excepturi tempora est voluptatem vero ut aut. Illum eligendi est esse dolores. Et maxime unde qui. Eveniet nostrum a impedit et repudiandae et voluptatem. Quos dolores ipsa dolor ut fuga odio quia. Reprehenderit minus harum voluptatem impedit aut occaecati aut.', 'https://cdn.pixabay.com/photo/2020/02/09/07/45/turtles-4832203_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(55, 7, 3, 'Isis', 'Quam praesentium voluptatem doloribus magnam similique praesentium numquam.', '1987-04-18 00:00:00', '2005-07-08 00:00:00', 'Femelle', 1, 1, 1, 'Qui voluptas in facilis sit provident. Voluptatem omnis et eum quibusdam nobis. Alias sint enim molestias. Tempore consequatur voluptas laboriosam at fuga illum. Et voluptas non consequuntur incidunt beatae fugiat. Animi corrupti deleniti alias aut. Facilis omnis similique iste et beatae deserunt eos. Ipsum consectetur iste rem aut. Ea iste autem optio magnam. Optio maxime impedit velit ad facere. Consequatur est quia delectus quibusdam.', 'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(56, 12, 2, 'Marrant', 'Iste alias omnis maxime eaque et.', '2019-03-24 00:00:00', '1990-06-28 00:00:00', 'Femelle', 1, 1, 0, 'Quo aliquam ut veniam omnis rerum voluptatem enim. Earum tenetur saepe ducimus et molestiae aliquam. Modi consequatur suscipit veniam cupiditate et voluptatum. Eius consequuntur est esse error. Ad laudantium veritatis voluptatem cumque. Dolores voluptas quibusdam itaque consequatur necessitatibus. Blanditiis aut incidunt sit numquam. Et accusantium voluptate quidem. Cupiditate minima tempora cumque corrupti labore ab rem. Eum doloribus sed tenetur et nobis consequuntur doloribus placeat.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(57, 3, 9, 'Winsor', 'Inventore dolores fuga sed.', '1975-11-19 00:00:00', '1977-12-20 00:00:00', 'Mâle', 0, 1, 1, 'Quia ut molestiae quasi aut. Dicta voluptas non ipsum quod excepturi pariatur. Deleniti rerum inventore expedita numquam. Id voluptatum corrupti quis veniam culpa. Laudantium quasi non nobis dolorem ut id ipsa. Ut quo pariatur accusamus culpa suscipit aut. Sint doloribus aliquid quod eligendi voluptate dignissimos voluptatibus et.', 'https://cdn.pixabay.com/photo/2020/02/13/13/23/dwarf-rabbit-4845651_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(58, 12, 3, 'Book', 'Qui aspernatur maiores sint laboriosam.', '1998-05-17 00:00:00', '1999-04-13 00:00:00', 'Mâle', 0, 1, 0, 'Dolores vel sed iure non iste ut optio. Ea magnam dolor praesentium eum ut ea ut cumque. Veritatis fugiat pariatur incidunt provident aut. Eius at eligendi ad qui. Alias natus ipsam voluptatibus quaerat nisi qui. Itaque sapiente aut ratione porro. Quo doloribus rerum ipsam sunt maiores porro. Aliquid deleniti quo est quibusdam. Consequatur voluptatem laboriosam doloribus dolorem. Voluptatum corporis neque praesentium.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(59, 20, 3, 'Genet', 'Ut enim quo reiciendis temporibus minus tempore dignissimos.', '1973-05-28 00:00:00', '1973-06-22 00:00:00', 'Mâle', 0, 1, 0, 'Quia dolores et rerum dolor necessitatibus adipisci vel a. Aliquam placeat distinctio dolor nihil qui. Quidem mollitia ad porro dolorem aut et. Alias qui esse hic et. Quod necessitatibus eius omnis possimus nulla voluptatem et ut. Non qui assumenda voluptate sit aliquid consectetur vitae consequuntur. Omnis odio natus vel. Consequatur quaerat numquam dolores quis totam fugiat. Impedit similique ut et id velit vitae.', 'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(60, 11, 4, 'Genet', 'Assumenda harum impedit dolores sint.', '1992-10-19 00:00:00', '1970-11-13 00:00:00', 'Femelle', 1, 0, 1, 'Ut repudiandae omnis suscipit iure ea deserunt sit. Hic aliquid quibusdam autem unde earum laborum. Totam deleniti harum quae expedita a voluptas facere dolor. Quam enim consequuntur ratione reprehenderit dolorum fugit. Odit non voluptas nemo sed sapiente qui sunt. Dolor vitae minus ullam laboriosam quidem sed perspiciatis. Et qui doloribus officia autem fugit.', 'https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(61, 15, 8, 'Iltonne', 'Consequatur sed harum illo beatae.', '2008-12-18 00:00:00', '2009-03-16 00:00:00', 'Femelle', 1, 0, 0, 'Debitis ipsam adipisci sed voluptatem totam sit. Reprehenderit repellendus ex impedit velit recusandae at quis. Qui quas sunt in ratione blanditiis dolor. Soluta placeat ratione aliquam libero qui distinctio voluptatum. Voluptas ut ut unde velit. Illum consequatur ab quis qui. Omnis cumque et rerum ut fugit natus. Est sed numquam ratione repudiandae necessitatibus vero. Sunt aliquid nesciunt non et repellendus aperiam corrupti porro.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(62, 21, 11, 'Iltonne', 'Cum nihil illo dolorem sequi voluptas nisi.', '2017-05-02 00:00:00', '1990-05-21 00:00:00', 'Femelle', 1, 1, 1, 'Et voluptatem ratione accusamus fuga. Et incidunt molestias consectetur ut architecto eaque. Corporis dignissimos excepturi repellat neque. Quo consequatur omnis aspernatur adipisci et ut. Molestiae ipsam sunt earum ipsam. Dolores ut pariatur nisi eum velit. Qui repudiandae veritatis dolore et sit non assumenda. Qui laborum vel sunt quia officiis dicta. Rerum quia nihil quo odit sit similique.', 'https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(63, 20, 8, 'Teuf', 'Incidunt ipsum reprehenderit sapiente quidem consequatur vitae non.', '1992-10-18 00:00:00', '1990-08-03 00:00:00', 'Mâle', 0, 0, 1, 'Consectetur ut et ipsum ex aut et hic. Adipisci corporis suscipit occaecati consequatur at quam fuga. Numquam deleniti maiores sed enim. Nostrum voluptas in repudiandae minus mollitia eveniet. Qui accusantium eos voluptatem deleniti necessitatibus vel vitae. Explicabo fuga voluptatem autem inventore quisquam dolore in. Architecto vero omnis aut quae ut.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(64, 22, 3, 'Astro', 'Rem et reprehenderit quam rerum ut et suscipit.', '1992-10-22 00:00:00', '2004-11-07 00:00:00', 'Mâle', 1, 1, 1, 'Eaque cumque et et autem voluptatibus. Ipsam aut unde et pariatur porro nam voluptas. Incidunt in velit placeat atque non explicabo deleniti. Suscipit dicta corporis pariatur hic numquam. Eos ut magnam tempore itaque repudiandae in libero. Rerum perspiciatis deserunt voluptas eos inventore minima. Aut quae molestiae et sapiente. Maxime consequatur dolorum vel voluptas cupiditate autem. Dolorum ut magnam dolores facere atque.', 'https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(65, 2, 9, 'Tic', 'Voluptatem consequuntur commodi et necessitatibus esse modi voluptas.', '1973-03-12 00:00:00', '1970-11-14 00:00:00', 'Mâle', 0, 1, 0, 'Et tenetur autem nihil magni sit sed et. Ducimus ex eaque velit. Suscipit aut aperiam repudiandae illo. Est odio molestias optio excepturi ut. Ab ut dignissimos id a labore. Labore impedit minus quas quia animi quia qui possimus. Accusantium ratione similique quo repudiandae optio dolor aut. Ut totam neque voluptatem explicabo aut. Aut temporibus ea et. Tempora quo ut velit distinctio architecto. Enim vel ducimus voluptatum fugiat vero harum illo.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(66, 14, 9, 'Pyra', 'Doloremque consequatur omnis odit.', '1973-09-16 00:00:00', '1971-07-12 00:00:00', 'Mâle', 0, 0, 0, 'Commodi aperiam fugiat aut inventore ratione est quia. Veniam eaque dolore neque ut voluptas expedita nobis. Tempora repellat fuga hic id eligendi impedit numquam. Blanditiis perspiciatis voluptatem eveniet magnam reiciendis. Facere maiores soluta ut. Error excepturi necessitatibus fuga consectetur enim. Incidunt facere quia quo. Ex enim vel beatae reiciendis.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(67, 22, 10, 'Bamboche', 'Praesentium rerum eum rerum dolores rerum quasi aut debitis.', '2008-08-01 00:00:00', '1979-03-06 00:00:00', 'Mâle', 0, 1, 1, 'Nisi reiciendis sunt saepe odit soluta voluptas corrupti. Laborum saepe vel commodi. Asperiores dolore voluptatem quisquam non sed. Vitae sapiente enim sit aut et. Voluptates reprehenderit facilis reprehenderit quia aut accusamus dignissimos. Sunt maiores omnis quas laboriosam. Dolores eveniet vitae tenetur sint laudantium. Et quia facere et sit repellendus ipsam. Velit eum enim omnis dolore eos.', 'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(68, 25, 2, 'Josephine', 'Quia dolor cum ea rem aut veritatis totam.', '2018-12-15 00:00:00', '1990-07-17 00:00:00', 'Femelle', 1, 1, 0, 'Repudiandae vel nemo provident dolorem molestias. Quidem voluptatibus ipsum et hic. Ut magnam autem corrupti. Nihil qui unde distinctio dignissimos aut ut voluptates. Porro repellat temporibus mollitia inventore aliquid assumenda. Pariatur ea totam iure autem. Aut nihil sapiente cumque dolor doloribus et.', 'https://cdn.pixabay.com/photo/2016/12/14/21/10/mouse-1907494_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(69, 17, 4, 'Gourmet', 'Omnis facere expedita exercitationem autem quibusdam sapiente atque.', '1995-03-28 00:00:00', '2019-10-02 00:00:00', 'Mâle', 0, 1, 1, 'Ad accusantium ut assumenda reiciendis. Rem animi et quas voluptas sunt dolorem modi. Consequuntur cumque omnis sequi esse et odit. Vel ea praesentium at. Aut aliquam ut quia quas cumque. Nostrum eaque totam in libero distinctio est. Consequuntur rem doloremque sequi ullam. Dignissimos vitae quos assumenda voluptate. Qui earum adipisci hic omnis molestiae dolores. Et nihil itaque quia et provident.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(70, 6, 10, 'Hibis', 'Voluptatum corporis voluptatem accusamus ducimus voluptatem nihil quae.', '1970-05-04 00:00:00', '2008-04-24 00:00:00', 'Femelle', 1, 0, 0, 'Est maiores optio nemo voluptatem et. Labore odit et similique quidem odit est. Non dolor consectetur officiis et et ut et. Aut numquam ut perspiciatis. Id voluptate odit harum autem molestiae qui ducimus. Magni eius est sunt dolores vitae. Minus ea incidunt asperiores autem iure. Inventore laborum accusantium quaerat itaque.', 'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(71, 18, 7, 'Ebony', 'Molestiae totam sed nesciunt aut reiciendis.', '1988-10-22 00:00:00', '1985-02-14 00:00:00', 'Femelle', 0, 1, 1, 'Magni dolorem cum quo rerum molestias. Nisi maiores dolore veritatis perspiciatis est. Illum aperiam in odit ut fugiat nulla. Soluta incidunt debitis asperiores commodi assumenda aliquam. Sapiente omnis recusandae ex qui. Veritatis cupiditate vel enim quod doloremque fuga itaque. Minima enim facere sunt. Mollitia dolores reiciendis eligendi rerum qui.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(72, 13, 10, 'Bichette', 'Voluptatem voluptatum ea deserunt beatae alias a consequuntur.', '1992-04-01 00:00:00', '1997-05-16 00:00:00', 'Femelle', 1, 1, 0, 'Dolore labore neque architecto architecto eos animi debitis id. Et corporis rerum qui esse et. Alias dolor aut quia blanditiis repellat. Hic iure ipsa eos corporis sequi ut. Voluptatum non ad necessitatibus ad deleniti. Nisi fugit aut dolor quisquam rerum. Aperiam harum eveniet aliquid dolore voluptate quis. Sit sit nostrum aut voluptatem modi tempora. Delectus sit occaecati ullam iusto modi vero. Omnis deleniti quaerat consequatur sunt nam non inventore. Consequuntur eaque facere voluptate.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(73, 10, 5, 'Clint', 'Aperiam quisquam omnis delectus.', '1995-01-28 00:00:00', '1996-01-29 00:00:00', 'Mâle', 0, 0, 1, 'Ut nemo nam sed a nesciunt temporibus quo. Laudantium quam dolorem at laudantium eaque omnis sunt quia. In ratione illo saepe perferendis reiciendis ducimus. Sunt atque qui architecto omnis eveniet iusto. Perferendis dolorem qui nam corporis enim doloribus. Id error commodi iusto. Ipsum alias quia ut adipisci officiis dolore. Suscipit ea ad at nulla nisi. Nisi sed repellendus quia sequi dolores eaque aperiam.', 'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0);
INSERT INTO `animal` (`id`, `shelter_id`, `species_id`, `name`, `description`, `birthdate`, `arrival_date`, `gender`, `dog_friendly`, `cat_friendly`, `child_friendly`, `additional_information`, `picture1`, `picture2`, `picture3`, `picture4`, `picture5`, `created_at`, `updated_at`, `status`) VALUES
(74, 9, 6, 'Hariel', 'Sint corporis libero enim.', '1996-06-30 00:00:00', '1977-11-03 00:00:00', 'Femelle', 1, 1, 0, 'Blanditiis praesentium voluptatum quaerat qui quia ipsam fugiat doloremque. Non sed ex dolores enim. Omnis et minus mollitia eos quia ratione aut rem. Commodi minus ut velit corrupti mollitia voluptates. Et dignissimos unde et hic quod consequatur autem est. Eveniet aspernatur illo praesentium esse praesentium fugit soluta repudiandae.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(75, 4, 5, 'Ally', 'Quod voluptatem reiciendis quis nobis.', '2017-02-13 00:00:00', '1981-10-04 00:00:00', 'Femelle', 0, 1, 0, 'Quo non eligendi et itaque. Et deserunt aperiam vitae. Iste veritatis itaque asperiores. Voluptas culpa unde natus itaque et maxime qui suscipit. Perspiciatis a aut provident tempore. Deleniti sint sed assumenda odio est et. Ut accusamus quas sunt reiciendis aspernatur dolorum officia. Dolores molestias voluptatem saepe sunt et. Eum aperiam consequatur eius voluptas dignissimos exercitationem dolores necessitatibus.', 'https://cdn.pixabay.com/photo/2017/08/16/21/10/rabbit-2649157_960_720.png', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(76, 25, 9, 'Texto', 'Suscipit debitis consectetur consectetur qui eum assumenda.', '2015-12-03 00:00:00', '2014-06-03 00:00:00', 'Mâle', 0, 1, 1, 'Quidem quidem expedita consequatur recusandae eos ea veritatis. Distinctio voluptatem nobis reiciendis rerum adipisci voluptates. Corporis consequuntur voluptatem modi nam doloremque et consequuntur. Veniam ad rerum exercitationem commodi officiis minus recusandae. Doloremque nihil quam aperiam. Vel voluptas dolorem cupiditate libero optio et maiores sit. Harum quis velit earum eius expedita quam.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(77, 25, 7, 'Pyra', 'Vel velit fugit sequi suscipit autem nisi dolores.', '1999-07-22 00:00:00', '1978-11-30 00:00:00', 'Femelle', 0, 1, 0, 'Iusto dolorem non aut dignissimos assumenda ratione excepturi. Ea quis omnis doloremque aut aliquid quam. Commodi deleniti unde quis aut et ipsum veniam. Debitis nihil quibusdam repellendus. Eos a excepturi ea neque nisi in sit aliquam. Ipsum ut incidunt facere debitis libero. Suscipit corporis ut minima consequatur non asperiores. Sed est nulla dolorem nisi sapiente et et.', 'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(78, 22, 3, 'Oslo', 'Impedit distinctio consequatur nulla.', '1989-10-29 00:00:00', '1999-07-23 00:00:00', 'Femelle', 1, 1, 1, 'Quia consequuntur eaque aut voluptas. Nulla dolorem fuga et nihil perspiciatis in sed. Nulla placeat iste dolor quibusdam. Quam ex quo nisi aut eum sint labore. Rerum recusandae maiores aut. Voluptatem itaque corporis aut porro a. Pariatur ab nihil suscipit molestias vitae enim impedit. Qui accusantium quibusdam est dolorem. Aut saepe aperiam est omnis provident possimus. Eligendi occaecati doloribus quidem non aspernatur et aut.', 'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(79, 24, 10, 'Pixie', 'Neque eaque aperiam corporis consequatur error optio in doloremque.', '1994-01-11 00:00:00', '1990-08-07 00:00:00', 'Femelle', 0, 1, 1, 'In asperiores voluptas modi quia sed nam unde. Provident est fugit occaecati sed rerum doloribus culpa eum. Culpa molestiae vel dicta atque sint ut. Odit provident quia aperiam nam possimus voluptatem alias minima. Voluptatibus iste illo voluptas modi eveniet in. Aliquam quo voluptatem quas aliquam eos neque fugit. Itaque velit qui explicabo qui doloremque et magni. Corporis dolorem ad vero consequatur quaerat tempore. Pariatur enim architecto iste dolorem enim odit ex. Suscipit nulla id sed.', 'https://cdn.pixabay.com/photo/2017/04/02/19/57/horse-2196755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(80, 16, 1, 'Max', 'Et excepturi animi dignissimos praesentium fugit ea.', '2006-01-06 00:00:00', '1974-03-21 00:00:00', 'Mâle', 0, 0, 1, 'Facilis voluptatum voluptate odio numquam sapiente at odit. Nostrum ipsa ad excepturi odit nesciunt voluptatum. Doloremque ut deserunt aperiam rem doloremque quo. Accusantium animi debitis id harum quas earum. Est tempore quam error qui. Quos saepe dignissimos enim. Cupiditate molestias ab facere dolorum et quis ut. Vel omnis sint quia non sed repellendus in.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(81, 24, 10, 'Genet', 'Ab blanditiis eos aut velit quidem.', '1999-04-27 00:00:00', '1997-09-07 00:00:00', 'Mâle', 1, 0, 0, 'Velit sed et eos dolorem aut fugiat. Et est omnis et dicta nisi. Eveniet libero saepe voluptatibus vero aut in. A sed quaerat dicta molestias iure accusamus. Alias fugit non nam laborum quam quasi. Est qui ad impedit voluptate. Sed quis quaerat sit eligendi. Saepe ut aut eaque assumenda vel soluta. Sit consequatur error dolores veniam aut atque incidunt. Ut sunt aut accusamus.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(82, 16, 3, 'Teuf', 'Odit a consequatur rem est aut.', '1985-05-26 00:00:00', '2004-01-21 00:00:00', 'Mâle', 0, 1, 0, 'Excepturi dolores est repellat nobis dignissimos et. Ut aut et at aperiam distinctio laboriosam. Consequatur perspiciatis et atque similique omnis. Autem inventore itaque reprehenderit et vel numquam. Non in velit quos dolor. Iure quasi minus voluptatibus quia rerum nam iste. Alias sed autem eveniet. Cupiditate unde aperiam ducimus dolorem. Commodi nostrum quia sint sint minima quibusdam sed.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(83, 7, 9, 'Licorne', 'Error velit enim qui harum.', '2018-10-12 00:00:00', '2018-10-30 00:00:00', 'Femelle', 1, 0, 1, 'Beatae rerum nam et nihil sed cupiditate. Facilis impedit dolorum consequatur. Repudiandae commodi qui sed exercitationem incidunt quidem. Praesentium fugiat maxime dolor iusto neque. Et culpa incidunt ex excepturi. Eum aut adipisci ut dolores quia aspernatur. Pariatur quo dolorem autem quo facere vel quos sed. Nisi dolore iste beatae nobis dicta. Sed ducimus quam fuga veritatis non architecto eos. Voluptatibus dolore tempore nostrum placeat. Enim voluptatum officiis vitae quo porro eaque iure.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(84, 1, 9, 'Xeres', 'Labore labore est eveniet eum.', '1995-12-06 00:00:00', '2019-11-22 00:00:00', 'Mâle', 1, 0, 1, 'Explicabo odio molestiae minima enim et cumque vero. Vel quod dolorem nam maxime. Doloribus numquam autem laudantium. Delectus quia voluptatem non. Placeat consequuntur voluptates sunt omnis dolores. Accusamus atque qui molestias mollitia dolores ullam. Ad aut doloribus vel.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(85, 23, 11, 'Oslo', 'Quia vitae in iure harum.', '2005-12-27 00:00:00', '1970-12-30 00:00:00', 'Mâle', 0, 0, 0, 'Tempora saepe voluptates ut ut quod ipsum tempora. Beatae molestiae ullam placeat tempore. Molestiae dolore sint eius deserunt hic delectus impedit reiciendis. Enim fugiat odit eum id odio velit non et. Earum debitis consequuntur enim ad atque omnis voluptatibus. Officia et dolores amet voluptas ducimus. Unde itaque nihil delectus similique. Occaecati impedit occaecati dolorum consectetur aliquam consequatur.', 'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(86, 15, 10, 'Inola', 'Tenetur vero quas culpa repellat corporis officiis dolorum.', '1972-09-21 00:00:00', '2006-06-09 00:00:00', 'Mâle', 0, 1, 0, 'Sunt deleniti ut ratione quis atque. Voluptatem dolorem nisi id suscipit qui reiciendis nesciunt. Consectetur molestiae facilis dolorem sit et. In nihil illo architecto velit. Velit illum omnis sapiente hic saepe. Aut aliquam veniam quisquam aperiam dolor. Aut cum magni amet sit impedit sint ut.', 'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(87, 11, 4, 'Pussy-cat', 'Ullam dicta necessitatibus itaque.', '2006-08-02 00:00:00', '2010-12-30 00:00:00', 'Mâle', 1, 1, 0, 'Illo sint eligendi quia veritatis. Magni qui et rerum error earum. Eum tempore et maiores corporis eum. Facere vel quod incidunt. Consequatur quas eos inventore non est. Nesciunt perferendis amet veritatis deleniti. Quia et nostrum non facilis atque voluptas. In occaecati consequatur sed voluptatem illum qui. Commodi qui perspiciatis et accusantium. Laboriosam ut labore ut soluta iste eum dicta laboriosam. Saepe repellat hic et necessitatibus nam quis non.', 'https://cdn.pixabay.com/photo/2012/06/19/15/06/goat-50290_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(88, 1, 9, 'Groove', 'Et harum voluptate quibusdam doloribus eligendi.', '2005-10-08 00:00:00', '1982-11-26 00:00:00', 'Femelle', 1, 0, 1, 'Omnis dolorem ratione aperiam est aut voluptate vero. Aut reprehenderit qui porro eaque iusto voluptatem. Necessitatibus et placeat dolorum consequatur neque possimus ex. Accusamus architecto consectetur aspernatur et totam itaque adipisci. Aut iure ut dolor. Qui quaerat assumenda sed. Voluptates id quisquam nisi placeat vel et. Quasi odit earum est molestias aliquam sed eum. Aliquid vitae ut molestias porro. Nesciunt dolorum modi velit hic quia.', 'https://cdn.pixabay.com/photo/2018/04/20/17/18/cat-3336579_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(89, 16, 2, 'Loustik', 'Ipsum autem sed doloribus dolorum.', '2018-02-03 00:00:00', '1999-01-23 00:00:00', 'Femelle', 1, 1, 0, 'Ea aliquid unde repudiandae aut. Praesentium doloribus sit voluptatem quia at cumque distinctio ut. Dolore natus sit eos ducimus aut. Aut dolores ea nihil ut corrupti maxime impedit. Eos odit excepturi deleniti aliquid. Pariatur est rerum sed ex. Qui aperiam voluptas similique repudiandae natus sit. Inventore at odio cum. Voluptas quo voluptatem mollitia quod nihil et.', 'https://cdn.pixabay.com/photo/2018/04/20/17/18/cat-3336579_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(90, 17, 7, 'Kit-kat', 'Ut nam est iste dolorem.', '1995-08-14 00:00:00', '1991-05-30 00:00:00', 'Mâle', 0, 0, 1, 'Omnis dignissimos delectus commodi occaecati perspiciatis. Voluptatibus est nihil veritatis voluptatem aperiam. Est odit adipisci possimus sed officiis et aspernatur. Aut voluptas sit aut facilis ratione dolore est. Consectetur sint enim dolorem qui cum fugiat. Voluptatum aspernatur quisquam totam cupiditate unde quasi natus. Reprehenderit molestias sed cumque nulla. Ipsum labore sint ea ex velit consequuntur. Earum iusto molestiae libero.', 'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(91, 14, 6, 'Nuage', 'Sed et voluptates ducimus omnis.', '2018-09-10 00:00:00', '1992-08-30 00:00:00', 'Femelle', 1, 0, 0, 'Eius enim aut consequatur quae soluta velit sit. Quibusdam magni ut saepe non et. Dignissimos reiciendis veritatis veniam dolorem error maxime. Dolorum nihil voluptatibus vitae molestias aliquam eum explicabo quo. Pariatur quia delectus est cumque soluta. Quis animi amet explicabo rem repellat accusantium ipsum voluptas. Et aut enim quae facere. Veniam eligendi velit dolores eligendi et ad aspernatur. Est ex dolor sunt optio animi.', 'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(92, 10, 3, 'Anatis', 'Nisi odio ipsum consequatur aliquid.', '2003-07-02 00:00:00', '2007-03-09 00:00:00', 'Femelle', 0, 0, 0, 'Aut placeat atque modi dolorum et laboriosam magnam. Magni iure amet et id. Rerum explicabo nesciunt blanditiis provident. Amet eos temporibus nihil nulla eum quidem voluptatibus. Dolorem quos tempora omnis provident. Ut temporibus doloremque sapiente error commodi. Quidem in aut temporibus tempora ad. Enim maiores incidunt nobis voluptates asperiores laborum. Quia ut iusto nisi molestias dolores eaque. Rem voluptas accusamus asperiores aut. Sint aliquam nemo explicabo.', 'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(93, 3, 7, 'Bichette', 'Placeat et dolorum ut autem quisquam.', '2003-09-17 00:00:00', '1985-03-01 00:00:00', 'Mâle', 0, 0, 1, 'Et nihil explicabo tempore esse vero. Consectetur eum eius sit nihil amet adipisci. Tempora voluptas quas tenetur sint consequuntur fugit. Et soluta aspernatur quod harum molestias rerum eaque. Cupiditate consequatur qui perferendis possimus et. Repudiandae sunt animi est. Perspiciatis deserunt illum placeat et. Incidunt earum autem esse ab odio. Eveniet alias veritatis veniam modi nesciunt. Similique ducimus similique veniam quas impedit.', 'https://cdn.pixabay.com/photo/2012/06/19/15/06/goat-50290_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(94, 23, 7, 'Hibis', 'Aspernatur quaerat iste voluptatibus possimus nam est.', '1989-02-20 00:00:00', '1978-12-14 00:00:00', 'Femelle', 1, 0, 1, 'Veritatis qui sapiente autem culpa quia laudantium cumque. Est et dicta rerum eum. Ut dolores minus voluptates. Aut non velit aperiam dolores et sit nesciunt. Quisquam rerum et et deleniti exercitationem. Accusamus ab explicabo voluptatem sed error et et. Officia doloribus sed qui rerum. Dicta voluptatem asperiores culpa commodi. Enim voluptatibus aut assumenda reiciendis qui porro. Temporibus nam ipsum eum.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(95, 20, 1, 'Ally', 'Ut consequatur molestiae quos autem non quibusdam maxime quas.', '1988-10-09 00:00:00', '1999-08-25 00:00:00', 'Femelle', 1, 1, 0, 'Occaecati quia aut eum quia asperiores error aut earum. Molestiae nulla quibusdam eligendi dolorum et labore rerum. Ea est sunt doloribus eligendi et ipsa sapiente. Neque ut vero et placeat debitis voluptas iure praesentium. Fuga tempore alias ex sit. Aut aperiam corrupti optio iure natus deleniti. Aut et quia qui omnis impedit dignissimos. Incidunt voluptate omnis non necessitatibus. Accusamus consectetur perspiciatis explicabo impedit esse amet. Et consequatur libero in accusamus.', 'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(96, 15, 9, 'Anatis', 'Necessitatibus architecto qui placeat dolorem quod ut nihil.', '2016-01-04 00:00:00', '1997-01-19 00:00:00', 'Femelle', 1, 1, 0, 'Distinctio minus laborum natus libero. Deserunt laudantium eos quas quis reprehenderit ipsam. Est eius sint sint autem nemo dolor rerum. Vitae et ut aperiam atque ut expedita autem porro. Officiis esse iure magnam deleniti corrupti mollitia enim. Est et voluptas voluptatem. Debitis voluptatibus a omnis at eum sunt. Maiores repudiandae qui ullam consectetur voluptas pariatur temporibus.', 'https://cdn.pixabay.com/photo/2018/08/17/20/16/goat-3613728_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(97, 10, 11, 'Hibis', 'Quia consectetur culpa hic expedita rerum debitis.', '1974-08-21 00:00:00', '1999-05-08 00:00:00', 'Mâle', 1, 0, 0, 'Nesciunt similique maxime expedita sit voluptas. Illo est enim nihil nesciunt voluptatem aut reprehenderit earum. Quidem consequatur harum et et ipsam. Molestiae debitis id nemo rerum. Ut unde est rerum aut quia. Quisquam delectus qui et ab quasi omnis quod. Dolorem veritatis quisquam ut. Nemo quaerat cum et consequatur fuga facilis eligendi necessitatibus. Et aut et voluptatem.', 'https://cdn.pixabay.com/photo/2016/06/09/22/09/water-1446738_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(98, 10, 7, 'Dim', 'Quia dignissimos ut quia et error.', '2003-03-27 00:00:00', '2004-06-10 00:00:00', 'Femelle', 0, 1, 0, 'Hic quo laboriosam molestiae quia error reprehenderit. Eius nulla autem quasi tempore numquam delectus. Quia maiores sunt dolor sit suscipit. Autem odit harum consequatur vero porro. Molestiae voluptatem ut ut facilis. Quisquam deserunt nihil odit excepturi ut. Incidunt omnis natus illo. Aut ullam magnam perspiciatis provident et. Veritatis voluptate enim sed consequatur quia nihil illo. Rerum delectus mollitia rem perspiciatis odit et. Doloremque vel perferendis voluptate.', 'https://cdn.pixabay.com/photo/2018/04/20/17/18/cat-3336579_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(99, 23, 5, 'Swilly', 'Explicabo error necessitatibus sit facere.', '1976-03-09 00:00:00', '1994-05-24 00:00:00', 'Femelle', 0, 1, 1, 'Autem possimus molestias et quod fugit minima. Ducimus ex et tempore animi debitis qui. Sed dicta libero voluptas et maiores aliquid. Rerum fuga non quibusdam velit. Nulla corporis recusandae voluptatem numquam et sed molestias. Cum ipsa sunt debitis veritatis sed iusto. Voluptatem sed nobis assumenda sint sed nulla at. Dolor voluptatem voluptatem molestias eveniet nam inventore suscipit facere. In labore accusamus iure laborum vel pariatur. Asperiores et porro minus harum aut voluptate magni.', 'https://cdn.pixabay.com/photo/2018/11/15/22/20/foal-3818264_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(100, 15, 8, 'Kit-kat', 'Explicabo laborum qui veritatis enim provident ut.', '1998-01-31 00:00:00', '1978-02-25 00:00:00', 'Femelle', 0, 0, 0, 'Sed placeat aut aspernatur incidunt deleniti. Non officia qui sunt quo itaque rerum. Eveniet quia eligendi ad. Esse quisquam perferendis harum excepturi. Eum quia aliquam consectetur consectetur at molestias officiis. Doloremque quia voluptas quis. Sapiente qui enim aut earum. Et enim pariatur occaecati libero occaecati. Accusamus eos ratione non consequatur.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(101, 5, 4, 'Hibis', 'Alias eligendi et dolor odio quis.', '2001-05-27 00:00:00', '2003-11-14 00:00:00', 'Mâle', 0, 0, 0, 'Non voluptates et aut ut sed iusto. Odit similique voluptate et sit neque. Quia dolor voluptates sed necessitatibus necessitatibus dolores. Ut vitae quo ullam quos quia atque. Placeat quia quis accusantium id aperiam facilis. Rerum et aperiam voluptatem harum iure dolor. Aut hic quo tenetur non rerum mollitia non. Enim vero dolorem sint in quia ut.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(102, 25, 1, 'Thiago', 'Deleniti similique fugiat cupiditate quo.', '1983-11-11 00:00:00', '1975-02-04 00:00:00', 'Mâle', 1, 0, 0, 'Aliquam ea rem quidem temporibus. Velit est debitis officiis sunt explicabo fugit. Officia ducimus qui animi exercitationem. Nostrum consequuntur aut occaecati rerum ut. Quidem error impedit libero ut corporis. Illum quo nihil totam omnis tempora veniam nulla. Ipsa maxime at aut enim maiores error enim. Error quae perspiciatis ut placeat.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(103, 24, 4, 'Canabis', 'Sunt in provident delectus sed.', '2014-10-29 00:00:00', '2009-10-07 00:00:00', 'Mâle', 0, 0, 0, 'Architecto consequatur magni occaecati. Sed dolor aliquid et nemo. Ea accusamus rerum autem rerum temporibus qui. Consequatur quia quia id consectetur. Non est et recusandae minima. Accusantium nostrum rem eius. Et velit consequatur et voluptas eaque. Eum rerum mollitia aliquam accusantium. Soluta ipsam beatae et modi. Sint beatae qui commodi eveniet. Est rerum asperiores ipsam sit laboriosam dolor maxime.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(104, 18, 6, 'Hibis', 'Natus ea in voluptatem non incidunt.', '1979-06-08 00:00:00', '1978-08-11 00:00:00', 'Mâle', 1, 1, 1, 'Quibusdam officia placeat sunt rerum. Ex et eaque sequi fugiat quo. Vel velit aut illo. Earum rerum rerum nemo ipsam sit culpa quia. Maxime illo aspernatur beatae saepe perferendis incidunt. Quo accusantium provident in at in est et aut. Molestiae quis qui cumque adipisci rerum dolor id minima. Debitis temporibus ducimus temporibus ut necessitatibus. Natus velit sit iusto aut ipsa. Quae harum quo et nihil.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(105, 16, 6, 'Anatis', 'Deleniti fugit dolores quibusdam perferendis non.', '1984-05-23 00:00:00', '2002-10-14 00:00:00', 'Mâle', 0, 0, 1, 'Odio id qui vel est similique ratione. Laboriosam voluptate dolore porro asperiores ipsam et qui. Consequatur nesciunt minus est occaecati sapiente. Dignissimos aliquam dolorem modi voluptatem sint et. Odio fugiat nihil sint nulla. Molestias libero quod tempore laborum dolore qui delectus. Repellat et earum incidunt enim.', 'https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(106, 14, 2, 'Isis', 'Incidunt quas quasi est velit optio aut voluptatibus.', '2005-07-14 00:00:00', '2015-09-25 00:00:00', 'Femelle', 1, 0, 0, 'Laudantium sequi quis quas et cumque excepturi. Quis laudantium tenetur voluptatem dolores maiores ea. Atque quod et error. Dolorem voluptatem saepe eum aut ea alias. Perspiciatis consectetur praesentium maxime quidem. Debitis tempora neque sequi molestiae. Sed eos velit ut non mollitia.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(107, 5, 9, 'Anatis', 'Et rerum non quam et aliquam.', '2004-07-29 00:00:00', '1970-11-03 00:00:00', 'Mâle', 1, 0, 0, 'Placeat aut quis quis ducimus eius itaque. Rem sit sit tenetur odit quaerat dolores quis. Impedit dolorum natus quod. Fuga necessitatibus ipsum magni consequuntur quisquam voluptas et sunt. Porro velit nulla repellendus dolores corporis necessitatibus. Ducimus asperiores ut iste et earum inventore facere. Voluptatem consequatur et eum eos. Adipisci suscipit dolores consequatur eum distinctio. Blanditiis distinctio consequuntur non aliquam officia.', 'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(108, 1, 1, 'Jinxie', 'Et qui omnis deserunt ut quia adipisci rerum.', '2000-05-02 00:00:00', '1985-09-30 00:00:00', 'Femelle', 1, 1, 1, 'Doloremque cumque vitae suscipit nihil optio reprehenderit. Quisquam quidem quae dolor suscipit. Eum est sint aut unde aspernatur. Accusantium quisquam nulla fugit natus ea ut molestiae. Itaque aspernatur sed harum nihil nihil sit placeat. Consequatur consectetur nostrum rerum unde iure quod praesentium consectetur. Ratione voluptates assumenda enim beatae temporibus voluptatibus quia. Laudantium velit aut at. Molestias atque ipsam aliquam voluptate. Est et adipisci in cupiditate dolores.', 'https://cdn.pixabay.com/photo/2015/06/08/15/03/mouse-801843_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(109, 23, 11, 'Gap', 'Dolores consectetur tenetur consequatur quidem enim ea.', '1986-07-19 00:00:00', '1993-11-20 00:00:00', 'Femelle', 1, 1, 0, 'Consequuntur quos aut totam quia dolorum tempore voluptatibus. Saepe voluptas officiis laborum voluptas minus. Fuga aut est reprehenderit maxime harum. Natus fuga id ut quas doloremque. Aut consectetur saepe recusandae ut eos quibusdam. Est porro et maxime est quibusdam quo. Voluptatem repellendus sapiente facilis dolor nesciunt. Harum rerum voluptatem ab deleniti perferendis quia ex.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(110, 17, 10, 'Degas', 'Consequuntur ullam voluptas ipsa minus dolorem hic et.', '1995-12-16 00:00:00', '2006-03-18 00:00:00', 'Femelle', 1, 0, 0, 'Sed dolorem error ut velit et. Aut voluptate perspiciatis nihil accusantium quidem sapiente ipsum. Recusandae ducimus suscipit similique. Est quibusdam voluptatum quae molestiae. Omnis libero et corporis tempore iusto reiciendis. Repellendus vero et aut consequuntur odio veritatis. Voluptatem aut excepturi labore id animi aut. Dignissimos laborum sit a eligendi ea veniam harum. Tenetur reiciendis recusandae voluptatem iure tempora ut. Fuga qui nobis et facere odio.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(111, 12, 10, 'Iltonne', 'Optio aliquam assumenda distinctio aperiam nulla officiis natus.', '2010-08-26 00:00:00', '1976-03-26 00:00:00', 'Mâle', 1, 0, 1, 'Quae molestiae incidunt est accusantium blanditiis cumque. Debitis tenetur veritatis provident est et. Ratione nobis eos voluptas non consequatur. Est voluptatem eos eum. Adipisci dolore amet asperiores mollitia. Et ut et nesciunt ut officiis libero autem saepe. Incidunt cupiditate optio magnam. Quia id quam similique ea eaque vero. Veniam et ipsam mollitia accusantium.', 'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(112, 13, 10, 'Nuage', 'Vero dicta qui similique doloremque.', '2019-09-05 00:00:00', '1978-08-14 00:00:00', 'Mâle', 1, 0, 1, 'At eius corrupti eveniet debitis ipsam repellat. Error ipsam sed fuga animi fuga pariatur dolorum. Voluptatum omnis porro quisquam repellendus commodi. Distinctio nihil et autem labore commodi. Inventore enim quis quos neque eos culpa perferendis. Debitis voluptatem fuga rerum molestiae cumque. Dignissimos nisi ad quidem voluptas libero cum. Soluta vero inventore repellendus dolorum. Et earum inventore iste. Commodi eum laborum nam quaerat.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(113, 25, 9, 'Peggy', 'Qui libero explicabo aspernatur aperiam aut maiores.', '1993-04-12 00:00:00', '2003-08-05 00:00:00', 'Mâle', 0, 1, 0, 'Atque et voluptatem repellendus itaque quo iure. Ducimus ut quos totam distinctio doloribus quia qui. Perferendis qui est molestias dignissimos id maiores deleniti. Fugit magni ipsa et odio quo dolores. Omnis eum iste inventore consectetur qui ullam est. Expedita voluptas omnis alias sit est soluta. Sit molestias est dolorem itaque. Eos consectetur deserunt vitae dignissimos reiciendis dolore et.', 'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(114, 16, 1, 'Canabis', 'Debitis soluta et adipisci est sint harum aliquam.', '1988-04-16 00:00:00', '1987-11-10 00:00:00', 'Mâle', 0, 1, 1, 'Soluta reprehenderit esse eos labore error aperiam quas. Odio porro magni dolores omnis eos sunt. In quidem animi dolore. Impedit ut est et ut vel dignissimos repellat. Optio sapiente eum voluptatem dolor et. Sed consequatur voluptatem quod mollitia. Itaque quod architecto ut aut hic debitis officiis voluptas. Eius vitae et veniam nemo animi.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(115, 9, 3, 'Blaky', 'Voluptatem nobis quo vel omnis reiciendis vel voluptatem quam.', '2017-07-14 00:00:00', '1982-01-05 00:00:00', 'Femelle', 0, 1, 1, 'Enim sunt facilis error eius. Doloremque et commodi atque sunt. Harum et est laudantium dignissimos recusandae consequatur nihil. Alias neque et voluptatibus voluptate id. Ratione excepturi fuga facilis at. Debitis fugit dicta quis rerum. Dolorem magnam voluptatem ipsum iste voluptatem qui. Amet in velit ipsa voluptas at dolor qui. Autem et ea repudiandae maxime exercitationem. Recusandae aut voluptates repudiandae. Dolorum est nesciunt in consequatur ducimus.', 'https://cdn.pixabay.com/photo/2017/01/26/07/05/fighting-fish-2009968_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(116, 5, 5, 'Pixie', 'Laboriosam minus commodi tempore aut ullam delectus ut nostrum.', '2011-01-04 00:00:00', '1977-12-26 00:00:00', 'Mâle', 0, 1, 1, 'Sed similique in distinctio optio. Dolorem similique et dolorum aperiam nihil. Qui quam quod dolores ut. Optio odio quibusdam sit saepe sed ipsum. Nostrum sint laborum et. Voluptas totam numquam eius soluta ipsa inventore consequatur. Debitis et ipsum natus quod voluptatibus. Qui quasi cupiditate omnis odit praesentium nemo quo voluptatum.', 'https://cdn.pixabay.com/photo/2016/03/05/18/54/animal-1238228_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(117, 7, 5, 'Fannie', 'Aut voluptatem sit atque harum quis ipsa.', '2000-09-26 00:00:00', '1978-06-21 00:00:00', 'Mâle', 1, 1, 0, 'Eos omnis deleniti ut omnis eaque officiis. Sapiente libero voluptatem repellendus ex voluptas cum soluta. Veniam consequuntur eius quia quibusdam ut vel adipisci. Laudantium sint rerum sequi temporibus. Corrupti consequatur inventore et at ea dolor ipsam rerum. Rerum quaerat cumque et esse voluptas. Similique beatae aut ipsam fugit est.', 'https://cdn.pixabay.com/photo/2020/02/09/07/45/turtles-4832203_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(118, 16, 11, 'Kabuki', 'Deserunt est aut ut quos dolor quia consequatur.', '2011-08-27 00:00:00', '1973-02-09 00:00:00', 'Femelle', 0, 1, 1, 'Illo fuga consectetur pariatur. Accusamus sed est fuga quia consequatur nostrum officiis. Exercitationem asperiores similique necessitatibus error. Possimus sed quo libero non in molestiae quo. In in aspernatur aut. Exercitationem hic est sequi ut. Labore laborum ratione aperiam et eius ipsa consequatur. Dolores hic in aut quos accusantium. Eos ea dicta quis quia. Ad quisquam earum accusantium ipsum voluptate odio cupiditate. Natus magnam perspiciatis voluptas tenetur quod sed.', 'https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(119, 2, 11, 'Flora', 'Suscipit alias dolor et dignissimos pariatur provident est voluptatem.', '2018-03-27 00:00:00', '1993-10-08 00:00:00', 'Mâle', 1, 1, 1, 'Nisi impedit fuga adipisci quibusdam aliquid beatae cumque dolorem. Cumque accusantium minima nemo ducimus culpa aut et quae. Laudantium cum repellendus ullam. Nulla perspiciatis est ea cumque quos numquam. Ex neque odio possimus ducimus sit suscipit alias. Rerum molestias sunt et voluptatem nemo fugit incidunt. Dolor amet voluptas placeat iure fugit ut et. Est asperiores est consequatur voluptates distinctio dolor eveniet.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(120, 7, 4, 'Iltonne', 'Optio autem quaerat molestias et est iste.', '1972-05-11 00:00:00', '1979-06-15 00:00:00', 'Femelle', 0, 0, 0, 'Vel odit deserunt est. Nobis modi sit velit atque placeat ut quia. Doloremque deleniti aut sit nihil nemo. Quae et dolorum esse architecto est nihil. Nulla minima voluptates rerum ad cupiditate est odio. Ut autem rerum fuga ratione facere aut vel illum. Magni labore ab ut sed reprehenderit praesentium. Saepe ullam aut non laudantium voluptatum. Quasi et rerum soluta iure voluptas culpa eos. Dolor laboriosam quam et pariatur et ipsam vero. Eos suscipit quidem veniam consectetur odio odit.', 'https://cdn.pixabay.com/photo/2018/04/20/17/18/cat-3336579_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(121, 18, 11, 'Salto', 'Magnam veritatis rerum corporis minima molestiae minima.', '2007-02-05 00:00:00', '1977-10-29 00:00:00', 'Femelle', 0, 0, 1, 'Iure nulla soluta cumque aut. Laudantium voluptatem voluptas debitis magni. Nihil nulla sint consequatur rem doloremque. Aut quo aut consequatur perspiciatis. Non temporibus distinctio harum et magnam molestiae minus id. Delectus debitis laudantium voluptatem et alias error. Sit atque maxime natus aut. Excepturi fuga mollitia rerum temporibus quis consequuntur. Commodi ea nulla maxime placeat. Aperiam totam ea ut velit velit qui ut quas. Pariatur unde et sint quam deleniti.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(122, 8, 3, 'Angus', 'Voluptatibus quae iste quisquam voluptatem dolore.', '1986-04-01 00:00:00', '1987-01-02 00:00:00', 'Femelle', 1, 1, 0, 'Soluta culpa quidem et ut non pariatur. Qui laboriosam fuga dolores architecto neque asperiores esse. Maiores quos voluptas cumque officiis blanditiis. Odio veniam fuga blanditiis consectetur. Ratione aut asperiores rerum quidem quo doloremque suscipit explicabo. Voluptas iste nam ea quos. Officia mollitia est at ut. Temporibus aut magnam qui quasi. Sint maiores odio architecto illo qui laboriosam. Expedita facilis voluptate sed est fugit sequi. Laborum quas soluta non consequatur illo.', 'https://cdn.pixabay.com/photo/2015/06/08/15/03/mouse-801843_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(123, 16, 6, 'Angus', 'Totam doloremque rerum velit sit in aut tempora aspernatur.', '1982-08-17 00:00:00', '1984-10-17 00:00:00', 'Femelle', 1, 0, 1, 'Ad et in repellendus minima. Quam voluptates esse facilis rerum voluptatem est quos. Aperiam repellat id ipsum modi ullam nam quis. Laboriosam autem aut a in et cumque quos est. Magni eum odit vero optio magnam natus sed officiis. Eaque veritatis consequatur omnis doloribus quisquam eum aut. Accusantium nam veritatis corporis sunt. Qui enim nobis nulla vitae voluptatem labore.', 'https://cdn.pixabay.com/photo/2018/09/22/17/05/ara-3695678_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(124, 8, 8, 'Canabis', 'Ut corporis recusandae molestiae ea.', '1973-04-29 00:00:00', '1976-10-11 00:00:00', 'Mâle', 1, 1, 0, 'Voluptas beatae nisi sunt ut inventore. Vel ipsa ex natus placeat explicabo. Consequatur officiis est odio sed at. Pariatur animi fuga quia velit ducimus voluptate. Sequi maxime id commodi reprehenderit minus. Cum eos neque magni debitis. Exercitationem quam reprehenderit quia dolor consequatur explicabo. Sapiente sed consequuntur sunt dolores ut itaque. Eveniet autem tempore doloremque deserunt ut. Magni facere qui ut saepe minus in quis.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(125, 21, 2, 'Anatis', 'Autem ut vel dolorum ipsam.', '1999-06-23 00:00:00', '1972-11-22 00:00:00', 'Femelle', 0, 1, 0, 'In harum labore possimus aut distinctio. Necessitatibus iure quis in saepe veniam earum ex. Accusamus veritatis eos hic unde est cum. Voluptas quia aspernatur ut vel quam. Rerum perspiciatis et quis aut. Debitis quo est sit ad officiis quia. Facere eos blanditiis optio rerum. Sapiente ut repellendus dignissimos magni blanditiis aspernatur iste. Tempora aperiam velit voluptas et non omnis doloribus.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(126, 17, 7, 'Xeres', 'Atque repudiandae sed velit vero et modi.', '2000-01-09 00:00:00', '2010-01-23 00:00:00', 'Mâle', 0, 0, 0, 'Sit velit modi reprehenderit quaerat facere. Illum numquam ut sit voluptas. Doloribus numquam nemo voluptates saepe. Necessitatibus et iste id vitae. Aut neque autem sint. Sit asperiores quia voluptatem laboriosam. Esse quae et quibusdam ut aut ipsam. Voluptate deserunt veniam eos accusantium eum et libero. Consequuntur dicta rerum possimus velit. Nulla voluptatem dicta aperiam fugiat sequi eos. Dolor omnis voluptatem hic ea voluptas.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(127, 14, 10, 'Ebony', 'Autem laudantium id itaque in.', '1998-01-06 00:00:00', '1976-05-17 00:00:00', 'Femelle', 0, 0, 0, 'Nobis unde sed voluptatem quae. Omnis impedit consequatur molestiae. Labore inventore aut vel beatae. Rerum distinctio voluptas optio ipsam ipsum accusamus. Quis rerum assumenda saepe quas eos aut. Neque illo et aperiam officia nam voluptatem est. Libero laudantium rem ut eum odio. Qui ab doloribus ut sed illum atque. Quis aspernatur adipisci perspiciatis vel excepturi earum esse. Velit sit quibusdam distinctio et quia sit. Quam expedita laudantium consequuntur eius in doloribus.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(128, 18, 6, 'Jasper', 'Animi voluptates molestiae aut omnis odio sit.', '1996-03-06 00:00:00', '1970-08-01 00:00:00', 'Mâle', 1, 0, 1, 'Itaque error quod ut labore ipsa optio porro dolores. Ut beatae dolor quo aut. Et velit quia harum est. Nostrum hic qui quia inventore sit. Excepturi dolores nisi quos dolore ratione error. Nihil aliquid beatae labore possimus esse repellat facere quo. Aliquam porro quam enim odit repudiandae. Quidem velit et iure temporibus deleniti voluptas. Vero voluptates culpa ea. Qui nostrum et consequatur omnis deleniti. Explicabo ullam ut molestiae voluptatem.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(129, 12, 4, 'Jinxie', 'Qui placeat tenetur officia consequuntur.', '2000-03-17 00:00:00', '1991-05-25 00:00:00', 'Mâle', 1, 1, 1, 'Ut velit vero beatae. Amet quo deleniti aut. Similique quo tempora id nihil sequi quisquam. Facilis repudiandae non aut et a. Temporibus possimus omnis rerum tempora quia nemo. Est sed voluptatem et velit. Dolorem ut sequi voluptatem debitis incidunt eum omnis. Molestiae recusandae dignissimos ipsa a quia facilis blanditiis. Necessitatibus sed quasi et autem ducimus accusamus est.', 'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(130, 6, 4, 'Vanda', 'Eum maxime nihil voluptate.', '1992-07-24 00:00:00', '1990-01-22 00:00:00', 'Femelle', 1, 0, 0, 'Voluptatibus culpa sequi perferendis enim reiciendis nihil consequatur. Et et odio distinctio modi nostrum quas vero. Nisi in nulla aut dolorum. Qui ex voluptatem voluptas nisi perferendis qui eos. Natus hic corporis odio nam quidem. Quis officia dolor molestias officia omnis. Cupiditate officia error a aut maiores qui. Voluptatem ipsa alias enim velit aspernatur. Deserunt id sapiente nisi nemo accusantium fugit. Tempora non iste aut.', 'https://cdn.pixabay.com/photo/2016/12/31/21/22/discus-fish-1943755_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(131, 20, 7, 'Pussy-cat', 'Voluptatum et rerum iure nam optio maxime.', '2011-01-30 00:00:00', '2015-05-13 00:00:00', 'Mâle', 0, 1, 0, 'Cupiditate facere repellat laudantium temporibus ab quod. Laudantium ipsam sequi possimus harum quia nemo. Et non ipsa beatae nesciunt non. Culpa ex porro sint accusantium. Enim magni vero rerum. Quis atque minima sint aut eaque consectetur quis. Illum sunt qui minus dolorum quidem quasi. Eos sit quia hic optio similique dolor similique. Et laboriosam magni voluptates dolores quae deleniti odio. Autem aut vero molestias enim.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(132, 5, 11, 'Jinxie', 'Vitae ut natus odit.', '2006-05-10 00:00:00', '1985-06-13 00:00:00', 'Mâle', 1, 1, 0, 'Necessitatibus ex inventore vel ut. Quaerat mollitia ab ut explicabo deleniti eligendi. Temporibus adipisci tenetur nesciunt fugit animi tenetur. Reprehenderit consequatur nisi quis dolorum eos minus. Qui libero non sit molestiae. Voluptatem molestias qui quis quibusdam ducimus consequatur voluptatem. Impedit alias molestiae quo excepturi corrupti vel porro.', 'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(133, 22, 5, 'Blaky', 'Eos reiciendis excepturi tempore placeat reprehenderit.', '1970-10-15 00:00:00', '1974-11-14 00:00:00', 'Femelle', 1, 1, 0, 'Voluptas repudiandae magnam voluptas fugit aut. Consectetur dolorum exercitationem a nulla commodi optio. Accusamus tenetur qui soluta repellat aperiam suscipit. Consequatur illo aspernatur velit quia sunt provident aut. Repudiandae dolores esse est. Ut beatae nisi et dicta officia possimus doloribus. Et repellat aut distinctio fugiat laudantium. Veritatis sapiente unde aut optio hic aut minima. Aspernatur reiciendis quam aperiam quisquam quia reiciendis. Suscipit aut sit harum adipisci.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(134, 17, 10, 'Isis', 'Laborum et dolorum dolorum quo recusandae.', '1981-04-10 00:00:00', '1972-12-02 00:00:00', 'Femelle', 0, 0, 0, 'Illo iste expedita eum et omnis. Ut dolorem excepturi voluptatem harum. Minima cupiditate eum laborum rerum ut. Hic consectetur omnis qui sit ut id itaque. Sint dolorem voluptatem amet et fugiat. In asperiores ex eligendi est ea quasi. Nihil et officiis error voluptatem sit in asperiores quia. Nemo rerum dolorem voluptas optio ratione ab sit. Expedita quisquam labore numquam voluptas aspernatur. Eos vel quisquam aut voluptas ut sunt inventore ex.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(135, 19, 2, 'Genet', 'Minima accusamus aut excepturi totam.', '1983-05-20 00:00:00', '2006-10-23 00:00:00', 'Mâle', 0, 1, 1, 'Aut velit sed aut. Possimus voluptatem eius dicta quia quidem id voluptas laboriosam. Nihil ea qui eius porro. Id est optio velit debitis tenetur id. Itaque beatae pariatur aut corrupti. Eveniet soluta quas qui sed. Quia magnam aut accusamus sapiente voluptas et eos hic. Aut voluptatem voluptate aut et aliquid odit iste odit. Quibusdam tenetur natus corporis hic cumque sint accusamus.', 'https://cdn.pixabay.com/photo/2016/03/05/18/54/animal-1238228_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(136, 13, 10, 'Thiago', 'Dolorem inventore minus est delectus ut.', '1979-07-23 00:00:00', '1978-06-25 00:00:00', 'Femelle', 1, 0, 0, 'Doloremque voluptatibus ipsa et et ex non ipsa. Consequatur dolorum quisquam cumque voluptatum. Ut et consectetur amet in inventore voluptatem itaque. Accusantium et enim suscipit repudiandae veniam nam. Reprehenderit quia quo molestiae aspernatur amet molestias. Facilis est praesentium impedit dicta enim cupiditate. Et a natus laudantium corporis. Ut sed dignissimos eaque suscipit. Quaerat earum magni ex in. Nam dolorem et error. Impedit ut nobis ipsa porro quaerat.', 'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(137, 14, 4, 'Gourmet', 'Quisquam cumque reprehenderit eaque voluptatibus ea unde.', '1989-09-06 00:00:00', '2016-12-01 00:00:00', 'Femelle', 1, 0, 1, 'Consequatur dicta sint ut et qui. Sunt nisi occaecati eum quaerat officiis nam. Tempore maxime aut beatae vel delectus aperiam. Molestiae distinctio aut culpa beatae et. Aliquid ea temporibus cumque sit ex dolor sit. Sed molestias soluta eum sunt aliquid. Magni ea aut qui voluptate quis hic corrupti molestiae. Consequatur quod perferendis beatae libero doloremque voluptatibus id.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(138, 14, 11, 'Bichette', 'Molestias numquam officiis culpa velit possimus.', '1997-10-30 00:00:00', '2006-05-30 00:00:00', 'Femelle', 0, 1, 1, 'Accusantium omnis vitae iure voluptatem ex nemo veritatis voluptatem. Nobis reiciendis minus error et nisi voluptas quibusdam. Iste delectus libero alias quas consequatur explicabo inventore. Nulla laboriosam nesciunt omnis ab aperiam qui. Sunt ullam eveniet quam. Molestiae tenetur quo voluptatem. Dolore sed repudiandae nostrum quo.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(139, 10, 2, 'Teuf', 'Iste dolores hic ut reiciendis nihil.', '1999-09-11 00:00:00', '2008-04-12 00:00:00', 'Mâle', 0, 1, 0, 'Officia corporis aliquam voluptas corrupti tempora suscipit cumque. Autem eos necessitatibus voluptate. Tempore et voluptas possimus quia debitis sed deserunt. Ea est quisquam molestiae doloremque ducimus. Asperiores aperiam perferendis quis autem unde. Iusto quis culpa aut eligendi possimus incidunt. Praesentium et labore voluptatem quisquam. Nihil et quis sed iusto voluptates. Porro eum dolor dignissimos consequuntur et ratione.', 'https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(140, 21, 4, 'Magnum', 'Consequatur quaerat illo est ut hic tempore.', '1979-12-08 00:00:00', '1988-10-17 00:00:00', 'Femelle', 0, 0, 0, 'Architecto debitis voluptatem hic esse. Minima omnis eius voluptas corporis rerum quis. Iste nihil tempore dolore ad repellat minima. Rem voluptatem cum et ea occaecati. Ut minus delectus blanditiis et possimus. Molestias alias laboriosam sint et amet possimus ipsa. Labore temporibus sint sed minus. Ad id laborum assumenda et officia. Ut qui sed voluptate quis dolores totam ipsam fugiat.', 'https://cdn.pixabay.com/photo/2020/02/09/07/45/turtles-4832203_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(141, 19, 1, 'Peggy', 'Aut ut magni dolorem corporis minus est quos.', '2000-05-22 00:00:00', '2014-01-11 00:00:00', 'Mâle', 0, 1, 1, 'Quam sequi illo repellat ut exercitationem blanditiis aut. Odio alias eaque ad asperiores quia nam. Eligendi in dolor consequuntur. Earum eveniet sit libero fugiat nemo velit et. Accusantium saepe assumenda iure eaque sed illo delectus. Quam quae sequi deleniti id voluptas saepe et. Hic consequuntur voluptatem consequatur ut deserunt illo possimus. Sunt expedita voluptatum ut quis architecto. Minus nemo inventore enim fugiat inventore.', 'https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(142, 19, 9, 'Laguna', 'Eos nihil ut culpa reiciendis.', '1978-10-19 00:00:00', '1975-12-08 00:00:00', 'Mâle', 0, 1, 1, 'Exercitationem dicta qui fugit aut modi qui similique. Hic ex neque et qui voluptas illum. Dolorem ab et repudiandae libero. Ea odit nesciunt placeat eum suscipit et voluptatum vitae. Distinctio magnam sit quam quaerat non aut rerum commodi. Odit animi labore quo rerum. Atque veritatis aspernatur sunt vel vel occaecati. Consequatur a ipsa quidem sed exercitationem. Cum repudiandae ut quis sit.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(143, 15, 11, 'Jasper', 'Illo delectus quis saepe nisi dolorum.', '1984-01-14 00:00:00', '2017-09-19 00:00:00', 'Mâle', 0, 1, 1, 'Aut et distinctio possimus dolorem. Quia velit quos ut alias. Quidem corporis architecto vitae qui nobis eum quisquam. Nobis voluptatibus omnis perspiciatis temporibus nostrum omnis. Quia voluptas sunt vel veritatis. Nesciunt quas cumque nobis cum quasi aut. Quisquam doloremque repudiandae ut quidem. Pariatur voluptate cum nemo deleniti voluptas. Ad omnis quis et dolores fuga. Architecto quisquam quaerat perspiciatis voluptatem nulla. Sunt aut ullam ipsa. Enim quo maiores quis.', 'https://cdn.pixabay.com/photo/2017/02/15/12/12/cat-2068462_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(144, 2, 3, 'Dim', 'Nesciunt dolorem sed enim omnis voluptatem molestias neque consequatur.', '1999-09-22 00:00:00', '2018-09-11 00:00:00', 'Femelle', 0, 1, 1, 'Pariatur magnam officia ratione magni. Suscipit deleniti tempora quia. Porro temporibus et vel ut. Similique qui eligendi consectetur autem ea soluta aut qui. Voluptatem autem vitae dolores. Nam sit illum tenetur non. Voluptatum qui et accusantium eius fuga. Dolorem libero ducimus inventore. Quas suscipit ipsam tempora rem. Id quisquam nesciunt temporibus sed neque facere nostrum.', 'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(145, 1, 6, 'Salto', 'Est minima est deleniti alias provident consequuntur sed aliquid.', '1992-03-24 00:00:00', '1994-12-22 00:00:00', 'Femelle', 0, 0, 1, 'Ad commodi laudantium deserunt cupiditate sed. Aspernatur aliquid ut corrupti quos aspernatur. Consectetur adipisci dolorum sint excepturi illo sit quo nihil. Totam ut dolorum aut omnis in voluptatem nulla. Sequi quia recusandae aut provident in. Veritatis blanditiis alias omnis aliquam minus. Sit vel modi voluptas. Ut ut doloremque hic quasi eum voluptas. Accusamus officiis beatae iusto et inventore illo.', 'https://cdn.pixabay.com/photo/2018/05/27/18/19/animal-3434123_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1);
INSERT INTO `animal` (`id`, `shelter_id`, `species_id`, `name`, `description`, `birthdate`, `arrival_date`, `gender`, `dog_friendly`, `cat_friendly`, `child_friendly`, `additional_information`, `picture1`, `picture2`, `picture3`, `picture4`, `picture5`, `created_at`, `updated_at`, `status`) VALUES
(146, 20, 2, 'Bichette', 'Voluptate maxime quia exercitationem placeat.', '1987-01-02 00:00:00', '1970-07-04 00:00:00', 'Mâle', 0, 1, 1, 'Laudantium qui ea omnis illum voluptatum. Occaecati reiciendis blanditiis laborum eum vel ducimus porro. Est consequatur et qui sunt pariatur id. Aut vitae tenetur perferendis quisquam aut repellendus quisquam iusto. Ad consequuntur temporibus quos quas. Ipsum debitis placeat eveniet et placeat. Qui ad consequuntur occaecati fugiat illum dolores. Deleniti voluptatem sequi velit necessitatibus.', 'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(147, 19, 6, 'Winsor', 'Quidem corrupti voluptas nulla quos deleniti in.', '2010-03-24 00:00:00', '1993-01-06 00:00:00', 'Mâle', 0, 0, 1, 'Excepturi soluta autem repudiandae quia necessitatibus delectus dolorum. Occaecati officiis sequi est aut impedit pariatur laboriosam. Magni culpa cupiditate id. Quaerat praesentium aperiam explicabo qui qui vel facere. Atque similique totam optio facilis neque est. Tempora ea officiis fugiat suscipit ea animi.', 'https://cdn.pixabay.com/photo/2018/10/19/23/17/rabbit-3759895_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 0),
(148, 15, 4, 'Kabuki', 'Enim sit dolorem aperiam ea ut.', '2005-07-16 00:00:00', '1982-04-02 00:00:00', 'Femelle', 0, 1, 1, 'Et omnis aperiam vero. Magnam saepe dolorum est inventore quia voluptas quos consequatur. Veritatis vel cum dicta et ex laudantium omnis veritatis. Consequatur qui et aut sint laudantium. Ab eos ut quia sed eum qui sint. Ea sint sed laborum iure qui deleniti molestiae. Quia modi harum unde dolorum ab. Eos rem blanditiis omnis. Id distinctio debitis occaecati esse enim est debitis. Unde aliquid amet vero vitae.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(149, 22, 6, 'Yuki', 'Repudiandae officiis ipsa dolor delectus neque.', '2013-12-22 00:00:00', '2010-11-17 00:00:00', 'Mâle', 0, 1, 0, 'Modi et sit rem iure consequatur qui. Sit libero ipsa distinctio explicabo. Voluptatibus consequatur maiores ab qui dolorem modi. Nihil voluptatibus vitae iusto et tenetur consequatur non. Illum debitis autem ut est illo. Accusantium voluptas placeat aliquam dolorum. Excepturi illum vero quidem et. Ex cupiditate consequatur et sed animi laboriosam ipsum sequi.', 'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1),
(150, 25, 9, 'Max', 'Et aut neque qui maiores aut.', '2008-07-22 00:00:00', '2007-07-03 00:00:00', 'Femelle', 0, 0, 0, 'Quo sed magnam unde odit necessitatibus eum. Corrupti rerum quisquam voluptas quisquam similique sequi rerum. Sit modi eum eos. Unde est aut dolor. Maxime cumque est autem dignissimos consequatur ipsum. Et corporis aut voluptas voluptas necessitatibus blanditiis alias. Minus quo alias non. Quia quis dolorem iste error distinctio. Nobis aperiam a quibusdam nisi et tempora eaque. Sed eligendi recusandae molestias incidunt voluptatem.', 'https://cdn.pixabay.com/photo/2017/08/16/21/10/rabbit-2649157_960_720.png', NULL, NULL, NULL, NULL, '2020-03-05 13:50:40', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `animal_tag`
--

CREATE TABLE `animal_tag` (
  `animal_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `animal_tag`
--

INSERT INTO `animal_tag` (`animal_id`, `tag_id`) VALUES
(1, 1),
(1, 5),
(2, 3),
(3, 1),
(4, 2),
(5, 4),
(5, 5),
(6, 1),
(6, 4),
(7, 4),
(7, 5),
(8, 2),
(9, 2),
(10, 4),
(11, 5),
(12, 4),
(13, 2),
(13, 4),
(14, 1),
(14, 4),
(15, 4),
(15, 5),
(16, 1),
(17, 5),
(18, 4),
(19, 2),
(19, 4),
(20, 1),
(20, 5),
(21, 1),
(22, 4),
(22, 5),
(23, 2),
(23, 3),
(24, 2),
(24, 3),
(25, 2),
(25, 5),
(26, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 3),
(30, 2),
(30, 4),
(31, 3),
(32, 3),
(32, 5),
(33, 4),
(34, 3),
(35, 5),
(36, 4),
(37, 1),
(38, 3),
(39, 4),
(40, 5),
(41, 1),
(42, 3),
(43, 1),
(43, 5),
(44, 2),
(44, 3),
(45, 3),
(46, 5),
(47, 3),
(48, 1),
(49, 4),
(49, 5),
(50, 2),
(51, 5),
(52, 1),
(53, 1),
(54, 4),
(54, 5),
(55, 4),
(56, 2),
(57, 5),
(58, 4),
(58, 5),
(59, 2),
(60, 5),
(61, 2),
(61, 5),
(62, 2),
(62, 5),
(63, 3),
(63, 4),
(64, 4),
(64, 5),
(65, 5),
(66, 1),
(66, 4),
(67, 4),
(67, 5),
(68, 1),
(68, 5),
(69, 2),
(69, 3),
(70, 2),
(70, 4),
(71, 1),
(72, 2),
(72, 4),
(73, 4),
(74, 3),
(74, 5),
(75, 4),
(75, 5),
(76, 2),
(76, 3),
(77, 1),
(77, 3),
(78, 2),
(78, 3),
(79, 3),
(79, 4),
(80, 1),
(81, 3),
(82, 5),
(83, 3),
(84, 1),
(84, 4),
(85, 5),
(86, 2),
(87, 3),
(88, 1),
(88, 2),
(89, 4),
(90, 5),
(91, 3),
(91, 5),
(92, 5),
(93, 3),
(94, 5),
(95, 4),
(96, 1),
(96, 5),
(97, 2),
(98, 2),
(99, 2),
(99, 5),
(100, 2),
(101, 1),
(102, 1),
(102, 5),
(103, 1),
(104, 5),
(105, 5),
(106, 3),
(106, 4),
(107, 2),
(107, 5),
(108, 4),
(108, 5),
(109, 5),
(110, 3),
(111, 2),
(112, 5),
(113, 3),
(114, 2),
(115, 1),
(115, 5),
(116, 2),
(117, 4),
(118, 1),
(118, 5),
(119, 3),
(120, 3),
(121, 5),
(122, 2),
(122, 5),
(123, 4),
(123, 5),
(124, 2),
(125, 4),
(126, 3),
(127, 1),
(127, 5),
(128, 5),
(129, 1),
(129, 3),
(130, 3),
(130, 5),
(131, 3),
(132, 4),
(132, 5),
(133, 2),
(133, 3),
(134, 3),
(134, 4),
(135, 1),
(135, 3),
(136, 2),
(136, 4),
(137, 3),
(138, 4),
(138, 5),
(139, 5),
(140, 2),
(141, 1),
(141, 2),
(142, 2),
(143, 5),
(144, 2),
(145, 2),
(146, 5),
(147, 5),
(148, 5),
(149, 2),
(150, 2);

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `shelter_id` int(11) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` tinyint(1) NOT NULL,
  `siret_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `app_user`
--

INSERT INTO `app_user` (`id`, `role_id`, `shelter_id`, `username`, `email`, `password`, `terms`, `siret_number`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 23, 'jroche', 'qhebert@wanadoo.fr', '2X#:lbX/iw@HouOmt5z', 1, '336825062-00001', '2020-03-05 13:50:40', NULL, 1),
(2, 2, 12, 'hortense66', 'agnes.simon@diallo.fr', 'MFufdcoh:}', 1, '783752868-00001', '2020-03-05 13:50:40', NULL, 1),
(3, 2, 3, 'laurent.mendes', 'dominique.roy@voila.fr', 'yG]G@u`O^o6$>*TS=', 1, '129221370-00007', '2020-03-05 13:50:40', NULL, 1),
(4, 1, 13, 'rberger', 'nicole.renaud@legall.fr', 'k,<GNKY-@%8f[?h\'2$', 1, '078282092-00002', '2020-03-05 13:50:40', NULL, 1),
(5, 1, 11, 'rene17', 'gguibert@lombard.fr', 'SG-B!hP5it,S-HcpKM}', 1, '651588329-00003', '2020-03-05 13:50:40', NULL, 1),
(6, 2, 4, 'qleger', 'vallee.nicole@hotmail.fr', 'f$Juyl', 1, '313520421-00006', '2020-03-05 13:50:40', NULL, 1),
(7, 2, 1, 'francois04', 'tpotier@voila.fr', '2h6Y[fbU*CWe', 1, '602110561-00001', '2020-03-05 13:50:40', NULL, 1),
(8, 2, 8, 'sgomes', 'nblot@barre.com', '7\\ZZOu!]fI2~?1u3JZp\\', 1, '243445350-00008', '2020-03-05 13:50:40', NULL, 1),
(9, 2, 6, 'anne90', 'luc.perez@sfr.fr', '}<UMyH|)}%aDy//[)5', 1, '301139671-00004', '2020-03-05 13:50:40', NULL, 1),
(10, 1, 20, 'patricia.dacosta', 'techer.andre@blot.fr', 'ap?DH+]#UCj[', 1, '651588329-00003', '2020-03-05 13:50:40', NULL, 1),
(11, 2, 23, 'etienne30', 'tpascal@chauvet.com', '"kF3\':9>`sT@1PFX', 1, '301139671-00004', '2020-03-05 13:50:40', NULL, 1),
(12, 2, 19, 'antoine.patricia', 'valerie50@bouygtel.fr', '3kEJ3L@CI{0"uL>w', 1, '783752868-00001', '2020-03-05 13:50:40', NULL, 1),
(13, 2, 14, 'blin.alice', 'kmahe@roche.com', 'p}xHyY;oL/E', 1, '783752868-00001', '2020-03-05 13:50:40', NULL, 1),
(14, 1, 2, 'rcourtois', 'smuller@live.com', '0*MK)sH9sv_RDipwKdpS', 1, '129221370-00007', '2020-03-05 13:50:40', NULL, 1),
(15, 2, 7, 'olivie.ferreira', 'bdupre@traore.fr', 'H/1o&=d<RB!iYvZ{^F5W', 1, '423964618-00007', '2020-03-05 13:50:40', NULL, 1),
(16, 2, 25, 'vgeorges', 'celina01@live.com', 'IedP?/j80EL7d;,{[', 1, '601639107-00007', '2020-03-05 13:50:40', NULL, 1),
(17, 2, 23, 'francois.bouvier', 'leon.huet@durand.org', '!aaJs&v\\fc2s@7#lu3\'', 1, '662362250-00000', '2020-03-05 13:50:40', NULL, 1),
(18, 2, 18, 'rguichard', 'hardy.louise@buisson.fr', 'p4j)&&J.wU', 1, '651588329-00003', '2020-03-05 13:50:40', NULL, 1),
(19, 2, 2, 'arnaude.buisson', 'uguibert@pons.fr', 'zCGR=&9/', 1, '662362250-00000', '2020-03-05 13:50:40', NULL, 1),
(20, 1, 2, 'plucas', 'emmanuelle89@bourdon.fr', '\\`8c?,vftzVJfV:$G', 1, '313520421-00006', '2020-03-05 13:50:40', NULL, 1),
(21, 2, 25, 'penelope47', 'noemi.verdier@charrier.fr', '];-}hX`irofW=', 1, '783752868-00001', '2020-03-05 13:50:40', NULL, 1),
(22, 1, 6, 'mercier.clemence', 'genevieve13@valette.com', 'xRT6ZG]:Gl-?y', 1, '941036766-00009', '2020-03-05 13:50:40', NULL, 1),
(23, 1, 17, 'legall.philippe', 'jacques.lebon@noos.fr', '7/:Ihhx#', 1, '340311117-00006', '2020-03-05 13:50:40', NULL, 1),
(24, 2, 19, 'lacombe.madeleine', 'daniel36@leroy.org', '@.9+hJ\\g/it$/)', 1, '651588329-00003', '2020-03-05 13:50:40', NULL, 1),
(25, 2, 17, 'carre.emmanuel', 'anouk.ollivier@lejeune.com', 'pHtECfws', 1, '183246511-00004', '2020-03-05 13:50:40', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Catégorie 2', '2020-03-05 13:50:40', NULL, 0),
(2, 'Catégorie 1', '2020-03-05 13:50:40', NULL, 0),
(3, 'Non catégorisé', '2020-03-05 13:50:40', NULL, 0),
(4, 'LOF', '2020-03-05 13:50:40', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `department`
--

INSERT INTO `department` (`id`, `region_id`, `name`) VALUES
(1, 1, 'Pyrénées Orientales'),
(2, 9, 'Haute Loire'),
(3, 11, 'Lozère'),
(4, 6, 'Allier'),
(5, 13, 'Val de Marne'),
(6, 3, 'Ardèche'),
(7, 2, 'Ariège'),
(8, 12, 'Aube'),
(9, 13, 'Gard'),
(10, 3, 'Rhône-Alpes'),
(11, 10, 'Deux Sèvres'),
(12, 5, 'Aveyron'),
(13, 7, 'Mayenne'),
(14, 12, 'Marne'),
(15, 11, '971 - Guadeloupe'),
(16, 11, 'Loire Atlantique'),
(17, 10, '97 - DOM'),
(18, 3, 'Indre'),
(19, 2, 'Oise'),
(20, 4, 'Dordogne'),
(21, 6, 'Yvelines'),
(22, 6, 'Vosges'),
(23, 6, 'Seine et Marne'),
(24, 9, 'Gironde'),
(25, 8, 'Hautes Alpes'),
(26, 5, 'Tarn'),
(27, 6, '01 - Ain'),
(28, 1, 'Haute Saône'),
(29, 8, 'Drôme'),
(30, 13, 'Maine et Loire'),
(31, 6, 'Meuse'),
(32, 1, 'Côte d\'Or'),
(33, 11, '2B - Haute Corse'),
(34, 9, 'Creuse'),
(35, 12, '02 - Aisne'),
(36, 11, 'Bas Rhin'),
(37, 7, 'Cher'),
(38, 10, 'Nièvre'),
(39, 11, 'Pyrénées Atlantiques'),
(40, 6, 'Lot et Garonne'),
(41, 4, '974 - Réunion'),
(42, 1, 'Loir et Cher'),
(43, 5, 'Calvados'),
(44, 11, 'Cantal'),
(45, 7, 'Loire'),
(46, 11, '972 - Martinique'),
(47, 3, 'Seine Maritime'),
(48, 11, 'Territoire de Belfort'),
(49, 6, 'Hérault'),
(50, 4, 'Vendée'),
(51, 11, 'Manche'),
(52, 2, 'Nord'),
(53, 2, '976 - Mayotte'),
(54, 13, 'Finistère'),
(55, 6, 'Lot'),
(56, 2, 'Paris'),
(57, 9, '973 - Guyane'),
(58, 4, 'Haut Rhin'),
(59, 2, 'Eure'),
(60, 11, 'Haute Vienne'),
(61, 4, 'Tarn et Garonne'),
(62, 11, 'Bouches du Rhône'),
(63, 7, 'Eure et Loir'),
(64, 6, 'Charente Maritime'),
(65, 13, 'Haute Savoie'),
(66, 6, 'Var'),
(67, 11, 'Charente'),
(68, 10, 'Alpes de Haute Provence'),
(69, 13, 'Côtes d\'Armor'),
(70, 8, 'Isère'),
(71, 12, 'Savoie'),
(72, 3, 'Vaucluse'),
(73, 5, 'Haute Garonne'),
(74, 2, '2A - Corse du Sud'),
(75, 6, 'Essonne'),
(76, 3, 'Morbihan'),
(77, 12, 'Puy de Dôme'),
(78, 13, 'Gers'),
(79, 5, 'Saône et Loire'),
(80, 12, 'Aude'),
(81, 7, 'Hautes Pyrénées'),
(82, 1, 'Meurthe et Moselle'),
(83, 7, 'Alpes Maritimes'),
(84, 7, 'Yonne'),
(85, 8, 'Val d\'Oise'),
(86, 4, 'Corrèze'),
(87, 2, 'Orne'),
(88, 1, 'Loiret'),
(89, 8, 'Vienne'),
(90, 3, 'Pas de Calais'),
(91, 4, 'Ardennes'),
(92, 3, 'Doubs'),
(93, 3, 'Somme'),
(94, 2, 'Ille et Vilaine'),
(95, 9, 'Haute Marne'),
(96, 1, 'Jura'),
(97, 4, 'Indre et Loire'),
(98, 11, 'Seine St Denis'),
(99, 4, 'Landes'),
(100, 6, '975 - Saint Pierre et Miquelon'),
(101, 9, 'Sarthe'),
(102, 3, 'Moselle');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200302135405', '2020-03-05 12:50:31'),
('20200304110557', '2020-03-05 12:50:31'),
('20200304111048', '2020-03-05 12:50:31'),
('20200305090704', '2020-03-05 12:50:31'),
('20200305115242', '2020-03-05 12:50:31'),
('20200305124002', '2020-03-05 12:50:31');

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`id`, `name`) VALUES
(1, 'Hauts-de-France'),
(2, 'Ile-de-France'),
(3, 'Normandie'),
(4, 'Bretagne'),
(5, 'Occitanie'),
(6, 'Pays de la Loire'),
(7, 'Auvergne-Rhône-Alpes'),
(8, 'Corse'),
(9, 'Grand Est'),
(10, 'Nouvelle-Aquitaine'),
(11, 'Centre-Val de Loire'),
(12, 'Bourgogne-Franche-Comté'),
(13, 'Provence-Alpes-Côte d\'Azur');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_string` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `name`, `role_string`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Administrateur', 'ROLE_USER', '2020-03-05 13:50:40', NULL, 1),
(2, 'Utilisateur', 'ROLE_ADMIN', '2020-03-05 13:50:40', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `shelter`
--

CREATE TABLE `shelter` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_number` int(11) NOT NULL,
  `zipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_fb` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_instagram` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_cagnotte` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_website` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture2` longtext COLLATE utf8mb4_unicode_ci,
  `picture3` longtext COLLATE utf8mb4_unicode_ci,
  `picture4` longtext COLLATE utf8mb4_unicode_ci,
  `adoption_conditions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `shelter`
--

INSERT INTO `shelter` (`id`, `department_id`, `name`, `description`, `phone_number`, `mobile_phone`, `street_name`, `street_number`, `zipcode`, `city`, `country`, `email`, `firstname`, `lastname`, `link_fb`, `link_instagram`, `link_cagnotte`, `link_website`, `hours`, `picture1`, `picture2`, `picture3`, `picture4`, `adoption_conditions`, `created_at`, `updated_at`, `status`) VALUES
(1, 31, 'Refuge de Caldaniccia', 'Sunt laborum nesciunt consectetur quis eius illum possimus.', '0308418613', '0659401981', 'place Guillot', 279, '18293', 'Delahaye-sur-Fischer', 'France', 'luc33@mace.org', 'Colette', 'Lebrun', NULL, NULL, NULL, 'http://gillet.net/quae-quaerat-est-et-deleniti-reiciendis-deleniti', 'Quisquam nam qui dolores laudantium.', 'https://cdn.pixabay.com/photo/2017/06/01/16/35/kingfisher-2363879_960_720.jpg', NULL, NULL, NULL, 'Sed aut ut accusamus quia nihil quos. Ipsum voluptas quo enim distinctio excepturi laboriosam. Facilis dolorum a quas non harum qui velit.', '2020-03-05 13:50:40', NULL, 0),
(2, 94, 'Refuge SPA de Laon', 'Commodi eius voluptas aspernatur omnis.', '0336809690', '0660704817', 'rue Lemaire', 1096, '82829', 'LambertVille', 'France', 'aubert.daniel@evrard.fr', 'Jacqueline', 'Turpin', NULL, NULL, NULL, 'http://maury.fr/dicta-aperiam-itaque-sit-sit-adipisci-praesentium-nihil', 'Officiis dolor et est dolore inventore ut libero.', 'https://cdn.pixabay.com/photo/2015/02/25/17/56/cat-649164_960_720.jpg', NULL, NULL, NULL, 'Omnis odit sit maxime dolorum quo. Ipsa quam nobis porro sed repudiandae. Nihil consequatur aspernatur minus quia cum voluptatem.', '2020-03-05 13:50:40', NULL, 1),
(3, 14, 'La maison de la nature - Les amis des bêtes', 'Aut corrupti aut quia aut.', '0336809690', '0696912478', 'place Gauthier', 1456, '59753', 'Costa', 'France', 'marchand.pauline@michaud.fr', 'Timothée', 'Sauvage', NULL, NULL, NULL, 'http://nicolas.com/reprehenderit-voluptatibus-nobis-recusandae-porro', 'Et dolores et dolorum vero.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, 'Deleniti dolor eum voluptatibus quasi unde nam fugiat. Consectetur eos libero velit sunt porro et. Numquam maxime et enim voluptate aliquid deserunt.', '2020-03-05 13:50:40', NULL, 0),
(4, 57, 'Refuge Garde Animalière Beaucairoise', 'Et doloribus quos officia natus dolores.', '0294830355', '0636417525', 'avenue de Boulanger', 813, '88365', 'Leroux', 'France', 'gaillard.susan@joly.org', 'Benoît', 'Germain', NULL, NULL, NULL, 'http://www.levy.fr/dolores-sit-quibusdam-quaerat-ratione-eos.html', 'Debitis dolorem rerum doloremque voluptas ut.', 'https://cdn.pixabay.com/photo/2020/02/13/13/23/dwarf-rabbit-4845651_960_720.jpg', NULL, NULL, NULL, 'Voluptate debitis quis vel quam enim culpa. Vel dolor sed incidunt veritatis sed quas. Modi ea labore nihil enim ratione quia.', '2020-03-05 13:50:40', NULL, 1),
(5, 54, 'Refuge félin de Thimonville', 'Omnis eos voluptas error asperiores quod.', '0137434541', '0662132022', 'place Schneider', 1582, '35701', 'Barbierboeuf', 'France', 'edith.gay@menard.fr', 'Nathalie', 'Roux', NULL, NULL, NULL, 'http://letellier.fr/', 'Non sapiente reiciendis commodi sed dolores omnis nihil.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, 'Odit et laudantium incidunt quos. Est dolorum dolor qui rerum autem totam pariatur. Aspernatur facilis quis ad nam est ut iste.', '2020-03-05 13:50:40', NULL, 1),
(6, 40, 'Refuge Amis Chats', 'Qui optio aspernatur doloribus est molestias.', '0365095150', '0640001575', 'rue Berthelot', 932, '13109', 'Aubry-sur-Mer', 'France', 'wmoreno@auger.org', 'Andrée', 'Pierre', NULL, NULL, NULL, 'https://brunet.fr/aperiam-voluptatem-repellat-culpa-molestiae-eveniet-et-numquam.html', 'Maxime molestiae quia reiciendis recusandae quo velit.', 'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720_960_720.jpg', NULL, NULL, NULL, 'Mollitia quasi dolorem et aut nam voluptas. Consequuntur asperiores assumenda odit omnis dolores veniam quaerat. Sit corrupti omnis animi et.', '2020-03-05 13:50:40', NULL, 0),
(7, 98, 'Refuge de Pontarlier', 'Qui veritatis quo voluptates unde.', '0199460862', '0647502919', 'chemin de Levy', 1017, '82128', 'Rodriguez', 'France', 'htessier@royer.fr', 'Odette', 'Carpentier', NULL, NULL, NULL, 'https://www.delattre.net/corporis-et-autem-laudantium-rerum-aut', 'Ut aut laudantium non et quam eligendi est mollitia.', 'https://cdn.pixabay.com/photo/2016/03/05/18/54/animal-1238228_960_720.jpg', NULL, NULL, NULL, 'Aut alias amet quia est sed. Aspernatur iure ut quis sint nobis nihil et qui. Sit omnis autem est consequatur est reiciendis quia. Commodi et dolorem ut.', '2020-03-05 13:50:40', NULL, 1),
(8, 7, 'Refuge de Bagnoles', 'Ducimus adipisci earum qui facilis sunt voluptatibus.', '0104004306', '0606429283', 'place Joubert', 484, '96741', 'Brunel', 'France', 'nicole.valette@thierry.fr', 'Michelle', 'Joseph', NULL, NULL, NULL, 'http://www.pruvost.fr/', 'Dolores rerum ut suscipit qui sed aperiam adipisci.', 'https://cdn.pixabay.com/photo/2018/04/15/17/45/fish-3322230_960_720.jpg', NULL, NULL, NULL, 'Qui aut omnis et expedita natus. Culpa velit natus voluptatibus totam quaerat.', '2020-03-05 13:50:40', NULL, 1),
(9, 63, 'Refuge SPA de Tulle la Rochette', 'Sit provident in dolores perspiciatis ab quae.', '0137434541', '0660704817', 'rue Becker', 1273, '73853', 'Tessier', 'France', 'claude25@denis.org', 'Marcel', 'Carlier', NULL, NULL, NULL, 'https://cordier.net/eos-accusamus-sit-est.html', 'Ullam non consequatur quibusdam explicabo nam iste a.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, 'Cupiditate enim reiciendis sapiente. Repellendus tempore deserunt aperiam quis numquam numquam sint numquam. Voluptatibus asperiores ea sed debitis aut.', '2020-03-05 13:50:40', NULL, 0),
(10, 72, 'Refuge animalier Augeron', 'Hic quo suscipit quaerat molestias earum laborum.', '0137434541', '0651355172', 'boulevard de Brun', 704, '86936', 'Delorme-sur-Dupre', 'France', 'timothee.guillet@dupre.com', 'Guillaume', 'Pages', NULL, NULL, NULL, 'https://marty.fr/assumenda-laborum-accusantium-id-corporis-ullam.html', 'Architecto et itaque suscipit aut soluta.', 'https://cdn.pixabay.com/photo/2016/12/14/21/10/mouse-1907494_960_720.jpg', NULL, NULL, NULL, 'Perspiciatis earum quo dolorem unde. Animi reiciendis occaecati eveniet incidunt nam. Et suscipit et fugit animi quasi et. Accusamus et cumque delectus cumque doloribus cum numquam quo.', '2020-03-05 13:50:40', NULL, 0),
(11, 66, 'Refuge Garde Animalière Beaucairoise', 'Dolorem fuga vel voluptates ratione exercitationem ut expedita.', '0464815873', '0695350918', 'chemin Gautier', 1854, '40777', 'Marie', 'France', 'bailly.penelope@rousset.com', 'Margot', 'Courtois', NULL, NULL, NULL, 'http://lebon.fr/nostrum-facere-non-quidem.html', 'Repellat error necessitatibus sed est doloribus quia.', 'https://cdn.pixabay.com/photo/2016/11/22/19/26/amphibian-1850190_960_720.jpg', NULL, NULL, NULL, 'Eos ab sit veniam et. Quasi quis reprehenderit dolorem odio laudantium rem. Quis pariatur eos alias dolores sunt. Aut autem mollitia modi ut quis sed est quo.', '2020-03-05 13:50:40', NULL, 1),
(12, 76, 'Refuge SPA de Marseille', 'Est nobis et possimus sunt vel aperiam totam.', '0406777853', '0640001575', 'rue Ferrand', 1990, '75041', 'RiviereVille', 'France', 'renaud.dominique@loiseau.fr', 'Nicole', 'Godard', NULL, NULL, NULL, 'https://marty.net/omnis-enim-aut-ut.html', 'Harum odit facilis recusandae at.', 'https://cdn.pixabay.com/photo/2016/05/09/10/42/weimaraner-1381186_960_720.jpg', NULL, NULL, NULL, 'Consequatur excepturi vel nulla ea dolor fugit. Eius nobis accusamus corporis sapiente. Eligendi dolores impedit labore expedita eum quo quas deleniti. Vel enim in possimus aut.', '2020-03-05 13:50:40', NULL, 1),
(13, 86, 'Refuge de l\'Espoir', 'Assumenda dignissimos maxime molestias blanditiis.', '0556987730', '0662789681', 'impasse Bertin', 1907, '36776', 'Carre-sur-Navarro', 'France', 'hamel.aurelie@bernier.org', 'Renée', 'Meyer', NULL, NULL, NULL, 'http://garcia.net/eaque-et-eaque-et-reiciendis-rem.html', 'Minima aspernatur beatae autem.', 'https://cdn.pixabay.com/photo/2016/06/16/18/27/goat-1461917_960_720.jpg', NULL, NULL, NULL, 'Quia architecto nihil tenetur illum aut sequi. Nostrum ea eius eos nostrum occaecati. Dolore molestiae animi voluptatem adipisci dolorem ipsam.', '2020-03-05 13:50:40', NULL, 1),
(14, 1, 'Refuge Andrée Guérin', 'Commodi eveniet rerum ut repellendus dolorem quidem et doloribus.', '0435007042', '0604431110', 'rue de Chevalier', 550, '83872', 'Lerouxnec', 'France', 'richard82@costa.fr', 'Adèle', 'Muller', NULL, NULL, NULL, 'http://fabre.fr/excepturi-eaque-consequatur-quas-ea-consequatur-mollitia-similique', 'Cum molestiae quo suscipit.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, 'Delectus est doloribus eaque odit blanditiis quas aliquid omnis. Deleniti ea quo qui aut consectetur quam. Maxime molestiae consequatur quaerat dolor minima libero in totam.', '2020-03-05 13:50:40', NULL, 1),
(15, 10, 'Refuge de l\'Amicale Chats', 'Doloribus omnis cupiditate ut mollitia voluptatibus praesentium.', '0346304856', '0606429283', 'boulevard de Bigot', 688, '37882', 'Berger', 'France', 'abernier@arnaud.com', 'Gilbert', 'Legendre', NULL, NULL, NULL, 'http://lecoq.org/', 'Dignissimos repellat id id asperiores.', 'https://cdn.pixabay.com/photo/2017/08/16/21/10/rabbit-2649157_960_720.png', NULL, NULL, NULL, 'Illum eos eum nihil esse sunt. Sint accusamus libero eius culpa similique. Eveniet expedita possimus sint omnis fugiat.', '2020-03-05 13:50:40', NULL, 0),
(16, 79, 'Refuge du Clocher', 'Ut tempora odio consequuntur veniam eum est velit.', '0199460862', '0616439056', 'rue Pinto', 102, '38655', 'Petit', 'France', 'matthieu.thomas@chauvin.com', 'Louise', 'Martinez', NULL, NULL, NULL, 'http://www.bailly.com/et-odio-qui-dolor-ipsum', 'Deleniti consectetur sunt atque et ut placeat repellat.', 'https://cdn.pixabay.com/photo/2017/01/26/07/06/fighting-fish-2009972_960_720.jpg', NULL, NULL, NULL, 'A reprehenderit alias quod tempora sed. Quisquam nihil quia omnis voluptas debitis amet omnis eius. Sit quo distinctio molestias. Ut saepe libero quas aut.', '2020-03-05 13:50:40', NULL, 1),
(17, 59, 'Refuge SPA de Vaux le Pénil', 'Qui adipisci reprehenderit ratione unde et hic.', '0288952852', '0651355172', 'chemin Maryse De Oliveira', 1567, '18705', 'Allarddan', 'France', 'tristan84@salmon.com', 'Marianne', 'Potier', NULL, NULL, NULL, 'http://paul.fr/ut-ut-nemo-sit-odio-voluptatem-vitae.html', 'Incidunt nulla repellat labore ab facilis ratione.', 'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg', NULL, NULL, NULL, 'Rem nesciunt voluptates molestiae qui. Laudantium incidunt et et esse qui non. Ea ipsa ex qui numquam consequatur quia. Dolor quidem maiores harum id numquam optio.', '2020-03-05 13:50:40', NULL, 0),
(18, 60, 'Coup de patte', 'Voluptatem est itaque error enim.', '0145404045', '0660704817', 'rue Moreau', 1872, '17285', 'Delahayenec', 'France', 'christiane30@ramos.fr', 'Alix', 'Francois', NULL, NULL, NULL, 'http://www.laporte.com/', 'Tempore molestiae quia in cum.', 'https://cdn.pixabay.com/photo/2015/07/27/19/47/turtle-863336_960_720.jpg', NULL, NULL, NULL, 'Ex blanditiis facere beatae fuga voluptatem eveniet assumenda. Fuga asperiores deleniti numquam omnis ut. Natus minima cupiditate et blanditiis velit quia eaque.', '2020-03-05 13:50:40', NULL, 1),
(19, 58, 'Refuge de Guipavas', 'Quo magni qui facilis itaque vel.', '0478241869', '0606429283', 'rue Bertrand Cordier', 248, '63226', 'Labbe-les-Bains', 'France', 'ocarpentier@julien.com', 'Colette', 'Morel', NULL, NULL, NULL, 'https://wagner.com/id-minus-qui-maiores.html', 'Possimus sint ipsam corrupti voluptas qui.', 'https://cdn.pixabay.com/photo/2016/12/13/22/25/kingfisher-1905255_960_720.jpg', NULL, NULL, NULL, 'Veritatis omnis eligendi alias quaerat non accusantium dolorem. Quo ullam sunt rem aliquam perferendis qui qui. Officiis sint neque quo officiis blanditiis vel. Et at autem harum suscipit in.', '2020-03-05 13:50:40', NULL, 0),
(20, 34, 'Refuge de Sarrebourg', 'Nobis ut voluptatem illum esse harum.', '0145404045', '0662132022', 'impasse Becker', 923, '57889', 'Arnaud', 'France', 'caroline98@peltier.net', 'Alix', 'Leroy', NULL, NULL, NULL, 'http://www.lebon.fr/sint-autem-sunt-id-pariatur-tenetur.html', 'Doloremque et asperiores deleniti.', 'https://cdn.pixabay.com/photo/2016/04/15/10/35/horse-1330690_960_720.jpg', NULL, NULL, NULL, 'Neque maxime omnis atque molestiae impedit inventore totam eaque. Deserunt et fugiat ratione consectetur rerum. Non dolorum minima quam tempora aut dolorem odio. Et dolorem enim dolor ut.', '2020-03-05 13:50:40', NULL, 1),
(21, 19, 'Refuge Espoirs Canins', 'Odio a sit quas explicabo dolorum tempore deleniti delectus.', '0478241869', '0696912478', 'rue Nath Moulin', 327, '26361', 'Roche-sur-De Oliveira', 'France', 'pdevaux@lecoq.fr', 'Anaïs', 'Rousset', NULL, NULL, NULL, 'http://www.camus.org/aperiam-minima-nihil-similique-dolore-est.html', 'Enim voluptas nesciunt laboriosam perspiciatis at consequatur autem.', 'https://cdn.pixabay.com/photo/2016/01/19/14/55/bunny-1149060_960_720.jpg', NULL, NULL, NULL, 'Ipsum sint similique commodi voluptas. Qui ab enim accusantium. Rem rem tempora iste repudiandae natus. Explicabo doloribus ea occaecati expedita quia amet rerum.', '2020-03-05 13:50:40', NULL, 0),
(22, 71, 'Refuge du Chesnay', 'Consectetur quia at alias possimus iste et et.', '0308418613', '0679035308', 'rue Pottier', 1692, '52220', 'BourgeoisVille', 'France', 'evalette@clement.org', 'Édouard', 'Martel', NULL, NULL, NULL, 'https://lucas.fr/iste-totam-rerum-aut-omnis.html', 'Consequuntur dignissimos labore vero consequatur quod delectus laborum voluptatum.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, 'Sint saepe natus laudantium at. Eos explicabo rerum soluta aut.', '2020-03-05 13:50:40', NULL, 0),
(23, 65, 'Refuge de Saint-Nizon', 'Et nam ad magni aut quasi.', '0464815873', '0606429283', 'place Moreno', 928, '99873', 'Legrosdan', 'France', 'lseguin@joseph.org', 'Noël', 'Martin', NULL, NULL, NULL, 'http://www.pelletier.fr/ut-magnam-quis-ut-ex', 'Incidunt earum velit voluptatibus rerum rem.', 'https://cdn.pixabay.com/photo/2012/09/28/07/20/horse-head-58375_960_720.jpg', NULL, NULL, NULL, 'Aut consequatur sed sunt doloremque molestiae. Quia et officiis voluptatem sint maxime error iure. Ipsa omnis laboriosam in iure rerum explicabo quia.', '2020-03-05 13:50:40', NULL, 1),
(24, 93, 'Refuge SPA de Tulle la Rochette', 'Quae aperiam nulla dignissimos.', '0435007042', '0673803791', 'place Turpin', 605, '18927', 'Bazin', 'France', 'marc.olivier@barbe.com', 'François', 'Girard', NULL, NULL, NULL, 'http://munoz.com/', 'Ut ut illo quis ut minima magnam.', 'https://cdn.pixabay.com/photo/2016/10/01/20/54/mouse-1708347_960_720.jpg', NULL, NULL, NULL, 'Est illum alias eius quod. Qui earum consequatur enim ut totam et. Vel earum quia fugiat.', '2020-03-05 13:50:40', NULL, 0),
(25, 42, 'Refuge animalier Augeron', 'Eum inventore ab nihil magnam rerum perspiciatis qui.', '0199460862', '0651355172', 'impasse de Poirier', 703, '4636', 'Boutin', 'France', 'jdurand@dupuis.fr', 'Anne', 'Benard', NULL, NULL, NULL, 'http://dupuis.com/voluptatem-ut-veniam-sit-voluptatibus-ut-eos-nam', 'Eos voluptatibus et perspiciatis ratione excepturi.', 'https://cdn.pixabay.com/photo/2014/09/24/15/15/billy-goat-459232_960_720.jpg', NULL, NULL, NULL, 'Voluptatem possimus dolores doloribus porro quasi aut. Ut ut quia vel ea quod maxime. Ut consequatur qui laudantium harum.', '2020-03-05 13:50:40', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `size`
--

INSERT INTO `size` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Petit', '2020-03-05 13:50:40', NULL, 0),
(2, 'Grand', '2020-03-05 13:50:40', NULL, 0),
(3, 'Moyen', '2020-03-05 13:50:40', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `species`
--

CREATE TABLE `species` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `species`
--

INSERT INTO `species` (`id`, `type_id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 15, 'Lapin', '2020-03-05 13:50:40', NULL, 0),
(2, 4, 'Oiseau', '2020-03-05 13:50:40', NULL, 0),
(3, 16, 'Animaux de la ferme', '2020-03-05 13:50:40', NULL, 0),
(4, 30, 'Reptile', '2020-03-05 13:50:40', NULL, 0),
(5, 19, 'Chien', '2020-03-05 13:50:40', NULL, 0),
(6, 26, 'Chat', '2020-03-05 13:50:40', NULL, 0),
(7, 5, 'Tortue', '2020-03-05 13:50:40', NULL, 0),
(8, 19, 'Cheval', '2020-03-05 13:50:40', NULL, 0),
(9, 20, 'Poisson', '2020-03-05 13:50:40', NULL, 0),
(10, 20, 'Furet', '2020-03-05 13:50:40', NULL, 0),
(11, 28, 'Rongeur', '2020-03-05 13:50:40', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Vieux', '2020-03-05 13:50:40', NULL, 0),
(2, 'Urgent', '2020-03-05 13:50:40', NULL, 0),
(3, 'Pas de particularité', '2020-03-05 13:50:40', NULL, 0),
(4, 'Malade', '2020-03-05 13:50:40', NULL, 0),
(5, 'SOS', '2020-03-05 13:50:40', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `size_id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'Européen', '2020-03-05 13:50:40', NULL, 1),
(2, 1, 'Caniche', '2020-03-05 13:50:40', NULL, 1),
(3, 3, 'Bulldog anglais', '2020-03-05 13:50:40', NULL, 1),
(4, 1, 'Epagneul breton', '2020-03-05 13:50:40', NULL, 1),
(5, 2, 'Chihuahua', '2020-03-05 13:50:40', NULL, 1),
(6, 3, 'Abyssin', '2020-03-05 13:50:40', NULL, 1),
(7, 3, 'Bengal', '2020-03-05 13:50:40', NULL, 1),
(8, 1, 'Dogue allemand', '2020-03-05 13:50:40', NULL, 1),
(9, 3, 'Perruche ondulée', '2020-03-05 13:50:40', NULL, 1),
(10, 1, 'Yorkshire', '2020-03-05 13:50:40', NULL, 1),
(11, 1, 'Braque de Weimar', '2020-03-05 13:50:40', NULL, 1),
(12, 1, 'Bélier français', '2020-03-05 13:50:40', NULL, 1),
(13, 3, 'Percheron', '2020-03-05 13:50:40', NULL, 1),
(14, 3, 'Birman', '2020-03-05 13:50:40', NULL, 1),
(15, 1, 'Boxer', '2020-03-05 13:50:40', NULL, 1),
(16, 1, 'Bull Terrier', '2020-03-05 13:50:40', NULL, 1),
(17, 3, 'Teckels', '2020-03-05 13:50:40', NULL, 1),
(18, 3, 'Berger allemand', '2020-03-05 13:50:40', NULL, 1),
(19, 3, 'Ara bleu', '2020-03-05 13:50:40', NULL, 1),
(20, 1, 'Angora', '2020-03-05 13:50:40', NULL, 1),
(21, 2, 'Pure-sang', '2020-03-05 13:50:40', NULL, 1),
(22, 1, 'Dalmatien', '2020-03-05 13:50:40', NULL, 1),
(23, 2, 'Sans type', '2020-03-05 13:50:40', NULL, 1),
(24, 1, 'Levrier', '2020-03-05 13:50:40', NULL, 1),
(25, 3, 'Gris du Gabon', '2020-03-05 13:50:40', NULL, 1),
(26, 1, 'Nain angora', '2020-03-05 13:50:40', NULL, 1),
(27, 2, 'Siamois', '2020-03-05 13:50:40', NULL, 1),
(28, 3, 'Chartreux', '2020-03-05 13:50:40', NULL, 1),
(29, 1, 'Géant des Flandres', '2020-03-05 13:50:40', NULL, 1),
(30, 1, 'Border Collie', '2020-03-05 13:50:40', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_category`
--

CREATE TABLE `type_category` (
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `type_category`
--

INSERT INTO `type_category` (`type_id`, `category_id`) VALUES
(1, 4),
(2, 3),
(3, 1),
(4, 3),
(5, 4),
(6, 1),
(6, 3),
(7, 4),
(8, 4),
(9, 2),
(10, 4),
(11, 2),
(11, 4),
(12, 3),
(12, 4),
(13, 3),
(14, 3),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 3),
(18, 4),
(19, 3),
(19, 4),
(20, 1),
(20, 2),
(21, 2),
(22, 4),
(23, 3),
(24, 2),
(24, 3),
(25, 4),
(26, 1),
(27, 3),
(28, 2),
(28, 4),
(29, 3),
(30, 4);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6AAB231F54053EC0` (`shelter_id`),
  ADD KEY `IDX_6AAB231FB2A1D860` (`species_id`);

--
-- Index pour la table `animal_tag`
--
ALTER TABLE `animal_tag`
  ADD PRIMARY KEY (`animal_id`,`tag_id`),
  ADD KEY `IDX_9C07FC6D8E962C16` (`animal_id`),
  ADD KEY `IDX_9C07FC6DBAD26311` (`tag_id`);

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88BDF3E9D60322AC` (`role_id`),
  ADD KEY `IDX_88BDF3E954053EC0` (`shelter_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CD1DE18A98260155` (`region_id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shelter`
--
ALTER TABLE `shelter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_71106707AE80F5DF` (`department_id`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A50FF712C54C8C93` (`type_id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8CDE5729498DA827` (`size_id`);

--
-- Index pour la table `type_category`
--
ALTER TABLE `type_category`
  ADD PRIMARY KEY (`type_id`,`category_id`),
  ADD KEY `IDX_CBB33E3DC54C8C93` (`type_id`),
  ADD KEY `IDX_CBB33E3D12469DE2` (`category_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT pour la table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `shelter`
--
ALTER TABLE `shelter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `species`
--
ALTER TABLE `species`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `FK_6AAB231F54053EC0` FOREIGN KEY (`shelter_id`) REFERENCES `shelter` (`id`),
  ADD CONSTRAINT `FK_6AAB231FB2A1D860` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`);

--
-- Contraintes pour la table `animal_tag`
--
ALTER TABLE `animal_tag`
  ADD CONSTRAINT `FK_9C07FC6D8E962C16` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9C07FC6DBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD CONSTRAINT `FK_88BDF3E954053EC0` FOREIGN KEY (`shelter_id`) REFERENCES `shelter` (`id`),
  ADD CONSTRAINT `FK_88BDF3E9D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_CD1DE18A98260155` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `shelter`
--
ALTER TABLE `shelter`
  ADD CONSTRAINT `FK_71106707AE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Contraintes pour la table `species`
--
ALTER TABLE `species`
  ADD CONSTRAINT `FK_A50FF712C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `FK_8CDE5729498DA827` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`);

--
-- Contraintes pour la table `type_category`
--
ALTER TABLE `type_category`
  ADD CONSTRAINT `FK_CBB33E3D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CBB33E3DC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
