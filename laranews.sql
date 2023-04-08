-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 05:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laranews`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `aid` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`aid`, `title`, `url`, `image`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'https://whatson.guide/', '23022841747leaderboard.png', 'leaderboard', 'display', '2023-02-15 10:07:15', '2023-02-28 10:17:47'),
(2, 'Sidebar Top', 'https://whatson.guide/', '23021541105change maker leader.png', 'sidebar-top', 'display', '2023-02-15 10:11:05', NULL),
(3, 'Side Bottom', 'https://www.mylovely.uk.com', '23021541134Pierce-Me-London.gif', 'sidebar-bottom', 'display', '2023-02-15 10:11:34', '2023-02-28 10:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'politics', 'politics', 'on', '2023-01-26 09:23:59', NULL),
(2, 'buisness', 'buisness', 'on', '2023-01-26 09:24:04', NULL),
(3, 'entertainment', 'entertainment', 'on', '2023-01-26 09:24:17', NULL),
(4, 'technology', 'technology', 'on', '2023-01-26 09:24:26', NULL),
(5, 'sports', 'sports', 'on', '2023-01-26 09:24:33', NULL),
(6, 'travel', 'travel', 'on', '2023-01-26 09:24:36', NULL),
(7, 'style', 'style', 'on', '2023-01-26 09:24:41', NULL),
(8, 'health', 'health', 'on', '2023-01-26 09:24:47', NULL),
(9, 'featured', 'featured', 'on', '2023-01-28 10:09:13', NULL),
(10, 'news', 'news', 'on', '2023-01-31 10:28:52', NULL);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `mid` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`mid`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Arman', 'arman@gmail.com', '01701111111', 'text', '2023-02-11 09:53:55', NULL),
(2, 'whatson club', 'arman@whatson.uk.com', '01950810169', 'check sucessamge messagwse', '2023-02-11 09:57:52', NULL);

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
(5, '2023_01_13_150827_create_categories_table', 1),
(6, '2023_01_18_153224_create_settings_table', 2),
(7, '2023_01_26_160847_create_posts_table', 3),
(8, '2023_02_06_154839_create_pages_table', 4),
(9, '2023_02_11_154746_create_messages_table', 5),
(10, '2023_02_15_151000_create_advertisements_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `pageid` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pageid`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About whatson', 'about-whatson', '<h1>About WhatsOn</h1>\r\n\r\n<p>WhatsOn is a progressive global media network. It based in the hub of Birmingham City Centre with over 25 years. Our values are: diversity, equality, involvement and unity. WhatsOn supports a balanced lifestyle, real democracy . We speak out against the exploitation of people, animals and the earth.</p>\r\n\r\n<p>Every month we publish an advanced printed publication. We are covering regional, national and global. What&rsquo;s going on, where to go, what to do and key topics of discussion selected by our Editor and our R&amp;D department. There is also a digital version for each month. Along with specific guides scheduled throughout the year (see list below). To form a multi-media network, we have merged print, social media and digital marketing.</p>\r\n\r\n<p><strong>January</strong>&nbsp;&ndash; Pink Guide (LGBT)</p>\r\n\r\n<p><strong>February</strong>&nbsp;&ndash; Wedding Guide<br />\r\n<strong>March</strong>&nbsp;&ndash; Graduate, Gap Travel Guide<br />\r\n<strong>April</strong>&nbsp;&ndash; Kids Guide<br />\r\n<strong>May</strong>&nbsp;&ndash; Days Out, New York/USA Guide<br />\r\n<strong>June</strong>&nbsp;&ndash; Festival Guide<br />\r\n<strong>July</strong>&nbsp;&ndash; Courses Guide + Business Guides<br />\r\n<strong>August</strong>&nbsp;&ndash; USA/America&rsquo;s Guide<br />\r\n<strong>September</strong>&nbsp;&ndash; Regional Student Guides x 4<br />\r\n<strong>October</strong>&nbsp;&ndash; National Student Guide<br />\r\n<strong>November</strong>&nbsp;&ndash; Xmas Guide<br />\r\n<strong>December</strong>&nbsp;&ndash; Xmas Guide</p>\r\n\r\n<p><strong>Student Guide &ndash; &nbsp;</strong>Every September, just in time for freshers, we put together a 162-page guide with listings to help students prepare for their academic year. From accommodation support. National helplines to the best places to eat and shop, our student guide is the ultimate companion.</p>\r\n\r\n<p><strong>New York Guide &ndash; &nbsp;</strong>Published every three months and absolutely free, this exclusive guide offers you 12 pages of listings to get the best out of New York.</p>\r\n\r\n<p><strong>Festival Guide &ndash; &nbsp;</strong>This publication includes listings of all the major festivals throughout the UK, a survival guide to camping and some top tips to making the best of your festival experience.</p>\r\n\r\n<p>WhatsOn is available to pick up free of charge from many art centres, museums, bars, clubs, restaurants, libraries, universities, tube stations/bus stops and other cultural venues as well as areas of high footfall.</p>\r\n\r\n<p>The magazine is an indispensable guide packed full of editorial, market driven content, advertisements and endorsements by association and is a must have to pick up monthly wherever you are.</p>\r\n\r\n<p><strong>OnMedia</strong></p>\r\n\r\n<p>We have well-established and active social media channels &ndash; a Facebook page with over 57,000 likes, Instagram with more than 4,000 followers and Twitter with over 3,000 followers.</p>\r\n\r\n<p><strong>GlobalOn</strong></p>\r\n\r\n<p>We are a truly global brand, based in the UK and Asia. Every New York Guide is distributed around New York and surrounding cities. We also print a Bangladesh issue every three months with much of the content in Bangla, making it more attainable to our foreign readers.</p>', 'publish', '2023-02-07 09:58:05', '2023-02-07 10:10:09'),
(2, 'Privacy', 'privacy', '<p>whatson.uk.com holds any personal information about you confidentially in accordance with the Data Protection Act. We will store your personal information only if&nbsp;<strong>you choose</strong>&nbsp;to provide us with it, for example by completing one of our online forms. Any personal information you supply will only be used to provide the requested information or service, or for contacting you in the future about related services or updates unless you opt out.</p>\r\n\r\n<p><strong>whatson.uk.com&nbsp;never have nor ever will share your data with 3</strong><strong>rd</strong><strong>&nbsp;parties&nbsp;</strong>however, we do share information from other parties to our readers and is not responsible for the contents or reliability of any 3rd party websites linked from this site.</p>\r\n\r\n<p>Not all listings should be taken as endorsement of any kind. We cannot guarantee that these links will work all of the time and we have no control over the availability of the linked pages.</p>\r\n\r\n<p><strong>Find out about cookies, what they are and how they are used</strong></p>\r\n\r\n<p>We use cookies on this website to collect standard internet log information and details of our visitors behaviour patterns. This is so we can obtain statistics of the number of visits and the popular parts of the site. This way we can improve our web content and always be on trend with what our customer wants. We don&rsquo;t use this information for anything other then our own analysis.<br />\r\nThe cookies we use on this website are also used to provide a service to our visitors.</p>\r\n\r\n<p><strong>We use cookies to</strong></p>\r\n\r\n<p>1. We use cookies to allow users to log in and register with our website</p>\r\n\r\n<p>2. Check that cookies can be set and therefore determine whether a user is able to log in</p>\r\n\r\n<p>3. Store a reference to form data that is stored on the web servers</p>\r\n\r\n<p>4. Distribute workload across the web servers</p>\r\n\r\n<p>5. Analyse user statistics</p>\r\n\r\n<p>You can&nbsp;<strong><a href=\"http://www.aboutcookies.org/Default.aspx?page=1\">control cookies through your web browser settings</a>,&nbsp;</strong>allowing you to decide if you what to access sites that use cookies.</p>\r\n\r\n<p><strong>Please note; if you delete or disable our cookies you may not be able to register on our site and benefit from some of our online features.</strong></p>', 'publish', '2023-02-07 10:04:48', NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `title`, `slug`, `description`, `category_id`, `image`, `status`, `views`, `created_at`, `updated_at`) VALUES
(1, 'test', 'teset', '<p>safsadfs</p>\r\n\r\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"blob:http://localhost/3e13278c-763e-4e9c-8148-80fb9c5c24cb\" width=\"600\" />\r\n<figcaption></figcaption>\r\n</figure>\r\n\r\n<p>&nbsp;</p>', '6,7', '230126517008.jpg', 'draft', 0, '2023-01-26 11:17:00', NULL),
(2, 'check', 'check', '<p>asfasdffsdff</p>', '1', '23012752030it_it.png', 'publish', 0, '2023-01-27 11:20:30', NULL),
(3, 'Film Friday: This week’s top 5 Movies!', 'Film Friday: This week’s top 5 Movies!', '<p><strong>The movies in this week&rsquo;s Film Friday mix genres like science fiction, action comedy, thrill, and adventure drama comedy.</strong>&nbsp;<strong>Get ready to make your weekend worthwhile by watching some of the best movies that WhatsOn editor Tama has chosen for you.</strong></p>\r\n\r\n<h3><strong>1. Ant-Man and the Wasp: Quantumania</strong></h3>\r\n\r\n<p>American superhero movies Ant-Man and the Wasp: Quantumania Scott Lang/Ant-Man and Hope Pym/Wasp are two characters from Marvel Comics that are featured in the film. Marvel Studios produced the movie. Early in February 2021, filming in Turkey got underway.</p>\r\n\r\n<p>Along with Hank Pym and Janet Van Dyne, Scott Lang and Hope Van Dyne travel the Quantum Realm. There, they encounter odd species and go on a journey that defies their preconceived notions of what is possible.</p>\r\n\r\n<p>The movie, which serves as the first installment of the MCU&rsquo;s Phase Five, was released in the US on February 17, 2023.</p>', '1,2,3', '23012840114Film-Friday-This-weeks-top-5-Movies.jpg', 'publish', 0, '2023-01-28 10:01:14', NULL),
(4, 'The majority does not support the Public Order Bill, but it won’t be simple to stop it', 'The majority does not support the Public Order Bill, but it won’t be simple to stop it', '<p>The names of the organizations urging opposition to the Public Order Bill demonstrate how deeply the government incensed the populace. Additionally, it should remind legislators to combat climate change than what Parliament is willing to accept.</p>\r\n\r\n<p>Conservatives frequently disparage protests as the work of &ldquo;loonie leftists&rdquo;. Perhaps encouraged via &ldquo;crazy communist rags,&rdquo; as&nbsp;Workington MP Mark Jenkinson so kindly put it today.</p>\r\n\r\n<p><strong>The majority does not support the Public Order Bill</strong></p>\r\n\r\n<p>When organizations like the Wildfowl and Wetland Trust for Protection of Birds made them uncomfortable squad. And their task becomes&nbsp;more challenging.</p>\r\n\r\n<p>The vast majority of the population now recognizes the severity of the climate situation because of the Extinction Rebellion.</p>\r\n\r\n<p>The fact that heatwaves and floods are getting worse, even in a temperate nation like Britain. And that more catastrophic droughts, floods, and wildfires are happening worldwide is more evidence of this. Anyone who reads the news cannot but notice these things.</p>\r\n\r\n<p>Even individuals who get disturbed due to climate protests are skeptical of official assertions. These are the reckless actions of a small minority. And the police need broad additional powers to deal with them.</p>\r\n\r\n<p>The Conservative&rsquo;s staunch neoliberalism, and obsession with deregulation. And total freedom for big business is more blatantly at odds with the sustainability of Britain&rsquo;s rural than ever before.</p>\r\n\r\n<p>Many people are aware to &ldquo;blocking&rdquo; environmental activists will also get used to targeting their own strikes and marches. Police can use their authority to make arrests for &ldquo;serious annoyance&rdquo; to target both picketers and environmental activists.</p>\r\n\r\n<p>Defying the Law and Order Bill gets wide support. Despite this, the risk to our liberty is still very much there. A war on democracy waged through the Tories and only. The Tories and the entire political establishment, as demonstrated via Labour&rsquo;s support for more immediate injunctions against environmental demonstrators.</p>\r\n\r\n<p>They are driven by a system that can only survive through repression and is conscious of its eroding credibility. But the movement for democratic rights is effective enough to change it. The opponents to that society need&nbsp;to accept that truth.</p>', '2,3,4', '23013030702The-majority-does-not-support-the-Public-Order-Bill-but-it-wont-be-simple-to-stop-it.jpg', 'publish', 2, '2023-01-30 09:07:02', NULL),
(5, 'Sports events of the Week!', 'Sports events of the Week!', '<p><strong>Sports has always delighted us in many ways and also its one of the healthiest form of activity and yet fun. WhatsOn student journalists Zareen Subha brings a list of sports to watch this weekend and relax at your home comfort. This can be watched in TV, mobile or tablet just get the your happy hormones going. Here is the list of Sports to watch this weekend!</strong></p>\r\n\r\n<p>This weeks sports calendar is full of club Football matches and international cricket.</p>\r\n\r\n<p><br />\r\nFootball :</p>\r\n\r\n<p><strong>FA Cup</strong><br />\r\n<strong>Man city (vs) Arsenal</strong></p>\r\n\r\n<p>Date &amp; time : Friday, 27January 2023. at 2.00 am</p>\r\n\r\n<p>Venue : Etihad Stadium, England.</p>\r\n\r\n<p><strong>La Liga<br />\r\nBarcelona vs Girona</strong></p>\r\n\r\n<p>Date &amp; time : Saturday, 28 January 2023, at 9:15 pm</p>\r\n\r\n<p>Venue : Montilivi, Spain</p>\r\n\r\n<p>Cricket :</p>\r\n\r\n<p><strong>T-20 series, India vs New Zealand</strong></p>\r\n\r\n<p>Time &amp; Date : 27, 29 January &amp; 1 February 2023. At 7:30 pm</p>\r\n\r\n<p>Venue : Jharkhand,Lucknow &amp; Ahmedabad (India)</p>\r\n\r\n<p><strong>ODI series , South Africa vs England</strong></p>\r\n\r\n<p>Time &amp; Date : 27, 29January &amp; 1 February 2023 at 5:00 pm, 2:00 pm &amp; 5:00 pm</p>\r\n\r\n<p>Venue : Bloemfontein and Kimberley (South Africa)</p>\r\n\r\n<p>Volleyball :</p>\r\n\r\n<p><br />\r\n<strong>Beach Volleyball (THE FINALS)</strong></p>\r\n\r\n<p>Date &amp; time : 26-30 January 2023.</p>\r\n\r\n<p>Venue : DOHA, QATAR.</p>\r\n\r\n<p>Hockey :</p>\r\n\r\n<p><br />\r\n<strong>FIH Odisha Hockey Men&rsquo;s World Cup</strong></p>\r\n\r\n<p>Date &amp; time : 13 &ndash; 29 January, 2023.</p>\r\n\r\n<p>Venue : Bhubaneswar-Rourkela, India.</p>', '5,6,7', '23013030737tnn103eda170100012.jpg', 'publish', 0, '2023-01-30 09:07:37', NULL),
(6, 'Film Friday: This week’s top 5 Movies!', 'Film Friday: This week’s top 5 Movies!', '<p><strong>The movies in this week&rsquo;s Film Friday mix genres like science fiction, action comedy, thrill, and adventure drama comedy.</strong>&nbsp;<strong>Get ready to make your weekend worthwhile by watching some of the best movies that WhatsOn editor Tama has chosen for you.</strong></p>\r\n\r\n<h3><strong>1. Ant-Man and the Wasp: Quantumania</strong></h3>\r\n\r\n<p>American superhero movies Ant-Man and the Wasp: Quantumania Scott Lang/Ant-Man and Hope Pym/Wasp are two characters from Marvel Comics that are featured in the film. Marvel Studios produced the movie. Early in February 2021, filming in Turkey got underway.</p>\r\n\r\n<p>Along with Hank Pym and Janet Van Dyne, Scott Lang and Hope Van Dyne travel the Quantum Realm. There, they encounter odd species and go on a journey that defies their preconceived notions of what is possible.</p>\r\n\r\n<p>The movie, which serves as the first installment of the MCU&rsquo;s Phase Five, was released in the US on February 17, 2023.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ytimg.com/vi/ZlNFpri-Y40/hqdefault.jpg\" width=\"480\" /></p>\r\n\r\n<h3><strong>2. Left Behind: Rise of the Antichrist</strong></h3>\r\n\r\n<p>Nicolae: The Left Behind: Rise of the Antichrist Christian thriller movie was based on Tim LaHaye and Jerry B. Jenkins&rsquo; The Rise of the Antichrist, the third book in the Left Behind book series. It follows Left Behind (2014) and has an entirely new cast the globe falls into anarchy and millions of people vanish. And the charismatic leader who leads the U.N. becomes the only source of hope. But does he make you hopeful about the future? Or is the end of the planet near?</p>\r\n\r\n<p>On January 26, 2023, as part of Fathom Events, it was theatrically released as a constrained four-day run in a few locations. It was directed by Kevin Sorbo. Starring in the movie is Corbin Bernsen, Neal McDonough, and Kevin Sorbo.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ytimg.com/vi/dFlu7dmHQ_g/hqdefault.jpg\" width=\"480\" /></p>\r\n\r\n<h3><strong>3. Eternal Spring</strong></h3>\r\n\r\n<p>In 2022, Jason Loftus&rsquo; Canadian documentary, titled Eternal Spring (Chinese :), will be released. The movie focuses on Changchun&rsquo;s broadcast television stations being taken over by Falun Gong in 2002 and China&rsquo;s ongoing persecution of ethnic and religious minorities. It is based on animation by Chinese artist Daxiong.</p>\r\n\r\n<p>In March 2002, followers of the banned spiritual organization Falun Gong took control of a state TV station in China. Their intention was to refute the government&rsquo;s account of their method.</p>\r\n\r\n<p>Following this, police raids take place all around Changchun City, forcing Falun Gong practitioner, comic book illustrator Daxiong to leave.</p>\r\n\r\n<p>On March 15, 2022, the movie had its world premiere at the Thessaloniki Documentary Festival. After then, it was shown at the 2022 Hot Docs.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ytimg.com/vi/5XpGpbaiz4Q/hqdefault.jpg\" width=\"480\" /></p>\r\n\r\n<h3><strong>4. Mission Majnu</strong></h3>\r\n\r\n<p>Mission Majnu is a Shantanu Bagchi-directed spy thriller movie in Hindi from 2023. The filmis based on made-up events.It is a made-up account of an undercover operation carried out by India during the 1971 Indo-Pakistani War. An undercover Indian snoop undertakes a dangerous mission to reveal a clandestine nuclear weapons program deep within Pakistan.</p>\r\n\r\n<p>The movie&rsquo;s planned theatrical run was scrapped, and on January 20, 2023, it was made available only on Netflix.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ytimg.com/vi/paGeUDKRVeE/hqdefault.jpg\" width=\"480\" /></p>\r\n\r\n<h3><strong>5. Pathaan</strong></h3>\r\n\r\n<p>Siddharth Anand is the writer and director of the 2023 Hindi-language action thriller movie Pathaan. It is the fourth entry in the YRF Spy Universe and Khan&rsquo;s follow-up to Zero as a lead actor (2018)</p>\r\n\r\n<p>The Indian government revokes Article 370, which accords Jammu and Kashmir special status, in 2019. A cancer-stricken Pakistani army officer named Qadir is affected by the news and intends to wreak revenge on India. He enters into a deal with Jim, the head of the covert terrorist organization &ldquo;Outfit X.&rdquo;</p>\r\n\r\n<p>On January 25, 2023, Indian Republic Day weekend, Pathaan was released in India in IMAX, 4DX. Critics gave Pathaan mostly favorable reviews.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i.ytimg.com/vi/vqu4z34wENw/hqdefault.jpg\" width=\"480\" /></p>', '2,3,4', '23013030821Film-Friday-This-weeks-top-5-Movies (1).jpg', 'publish', 0, '2023-01-30 09:08:21', NULL),
(7, 'Tarishi: Diva of Music', 'Tarishi: Diva of Music', '<p><strong>Tarishi Mukherjee is an independent artist who started her journey at a young age. She worked with a popular singer-composer &ldquo;Rupak Tisary&rdquo;. Her latest release was &ldquo;Ek Pa Du Pa&rdquo; by JMR Music. She also debuted as a playback singer in Kholam Kuchi.</strong></p>\r\n\r\n<p>Watch Tarishi live with WhatsOn at her exclusive session. Tonight at 10 pm!</p>', '3,4', '23013030925sds.jpg', 'publish', 0, '2023-01-30 09:09:25', NULL),
(8, '3 Upcoming Art Festivals to Cherish This February', '3 Upcoming Art Festivals to Cherish This February', '<p><strong>Well, life has its unique set of ups and downs and all of them are part of this long eccentric journey. But undoubtedly art is one of the most beautiful things that life has to offer. In the name of cherishing this gift of life, we are back with all the news about some splendid upcoming art festivals so you don&rsquo;t miss out on anything. So stay with us till the end and find out what we have stored for you this week.</strong></p>\r\n\r\n<h2><strong>Kavč Festival 2023</strong></h2>\r\n\r\n<p><strong>When and where&gt;&nbsp;</strong>30th January to 5th February 2023 in Ljubljana, Slovenia.</p>', '9', '23013043250mime_art_600x400.jpg', 'publish', 0, '2023-01-30 10:32:50', NULL),
(9, '3 Wonderful Art Festivals to Reignite Your Soul', '3 Wonderful Art Festivals to Reignite Your Soul', '<p><strong>Hey, all the passionate souls out there! No matter how life is treating you right now, Art has certain healing powers that can reignite your enthusiasm and get you through hardships. Therefore, we are back with all the news about some amazing art festivals that can add whole new colors to your life. So stay with us till the end as we reveal our picks for this week.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>DIFFERENTI SENSAZIONI International Performing Arts</strong></h2>\r\n\r\n<p><strong>When and Where:&nbsp;</strong>4th November 2022 to 28th April 2023 in Turin, Italy.</p>', '9', '23013043347artlisting_600x400.jpg', 'publish', 0, '2023-01-30 10:33:47', NULL),
(10, 'Alert! 3 Eccentric Art Exhibitions to Blow Your Minds', 'Alert! 3 Eccentric Art Exhibitions to Blow Your Minds', '<p><strong>Hey, all the art enthusiasts out there! We know that your thirst for art is never ending and that is what makes your soul so gorgeous. That&rsquo;s why we are back with all the news about some eccentric art events that will bend your minds. These art events are surely one of a kind that you just can&rsquo;t afford to miss. So stick around till the end.</strong></p>', '9', '23013043417artlisting_600x400.jpg', 'publish', 1, '2023-01-30 10:34:17', NULL),
(11, 'Female Superheroes aren’t still acceptable to Marvel fans as per Sarah Michelle Gellar', 'female-superheroes-arent-still-acceptable-to-marvel-fans-as-per-sarah-michelle-gellar', '<p><em>&ldquo;The mindset of &lsquo;the man superhero,&rsquo; a rather ancient way of thinking, still exists.&rdquo;</em></p>\r\n\r\n<p>Marvel fans, from&nbsp;the perspective of Buffy legend Sarah Michelle Gellar, still won&rsquo;t appreciate female superheroes.</p>\r\n\r\n<p>Gellar became well-known for playing the superhuman vampire killer on Buffy the Vampire Slayer. Nevertheless, the actor said that still a lot of &ldquo;backward&rdquo; mentality regarding women when it comes to the superhero genre. Despite playing the lead in a female-fronted program about a super-powered hero.</p>\r\n\r\n<p>&ldquo;Women can really thrive in that genre and keep an audience&rsquo;s attention&rdquo; she argued. Any attempt from a Marvel film to include a female cast is met with utter failure.</p>\r\n\r\n<p>She added, &ldquo;Sadly, viewers weren&rsquo;t as understanding. Still pervasive is the mindset of &lsquo;the masculine superhero,&rsquo; which is really old.&rdquo;</p>\r\n\r\n<p>Gellar is still best known for her lead role on the television series Buffy. Although, the show&rsquo;s recent tarnish brought up many charges against Joss Whedon, the show&rsquo;s creator.</p>', '10', '23013144013Female-Superheroes-arent-still-acceptable-to-Marvel-fans-as-per-Sarah-Michelle-Gellar.jpg', 'publish', 0, '2023-01-31 10:40:13', NULL),
(12, 'Behold! 4 Upcoming Music festivals to Get On Board', 'behold-4-upcoming-music-festivals-to-get-on-board', '<p><strong>Hey, all the warm people out there who are constantly brightening the world with your inner beauty! While you are making the world a little more bearable for others we try our best to keep you all cheered up. We know music is more than just entertainment for you, it is a passion, a source of your enthusiasm, and food for your beautiful soul. That&rsquo;s why we are back with all the news about some wonderful upcoming music festivals. So stay with us till the end and don&rsquo;t miss out on anything.</strong></p>', '10', '23013144956edc_main_pic_600x400.jpeg', 'publish', 18, '2023-01-31 10:49:56', NULL),
(13, 'Tigray’s Health Crisis: WHO!', 'tigrays-health-crisis-who', '<h2>Director General of WHO: Tedros Adhanom Ghebreyesus</h2>\r\n\r\n<p><br />\r\nTedros Adhanom Ghebreyesus from the World Health Organization informs on Wednesday in a warning that says time is running out. The war is unable to get resolved as it started nearly two years ago. The Director General of WHO opines that it is a health crisis faced by 6 million people in the whole world. The world is not paying enough attention to the health crisis. He urges the international committee as well as the media to pay immense attention to the crisis. He says that the situation deserves attention as he claims that, &ldquo;a very narrow window now to prevent genocide&rdquo;.</p>', '8', '23020142824Feature-Image-1-1-696x374.jpg', 'publish', 0, '2023-02-01 10:28:24', NULL),
(14, 'World Mental Health and Well-being Day', 'world-mental-health-and-well-being-day', '<p><strong>On this World Mental and Well-being day, this year&rsquo;s WHO theme is to &ldquo;make mental health and well-being for all a global priority &ldquo;. World Mental Health is observed on October 10. On this day various programs are designed to draw attention to mental health issues and their affected and the lives of their caregivers. During COVID-19, people have suffered due to many mental health problems because lack of attention.</strong></p>\r\n\r\n<h2>Significance of World Mental Health</h2>\r\n\r\n<p>The primary goal of World Mental Health Day is to create awareness about mental health issues across the globe to inspire global citizens. The celebration ensures that mental health as an issue is highlighted and stays in the public consciousness.</p>\r\n\r\n<h2>Quotes on Mental Health Day</h2>\r\n\r\n<blockquote>\r\n<p>&ldquo;NOT UNTIL WE ARE LOST DO WE BEGIN TO UNDERSTAND OURSELVES&rdquo;- HENRY DAVID THOREAU</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p>&ldquo;HAPPINESS CAN BE FOUND EVEN IN THE DARKEST OF TIMES, IF ONLY ONE REMEMBERS TO TURN ON THE LIGHT&rdquo;- ALBUS DUMBLEDORE.</p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p>&ldquo;THERE IS HOPE, EVEN WHEN YOUR BRAIN TELLS YOU THERE ISN&rsquo;T&rdquo;- JOHN GREEN</p>\r\n</blockquote>', '8', '23020142928world-mental-health-day-696x696.jpg', 'publish', 0, '2023-02-01 10:29:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sid` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sid`, `image`, `social`, `about`, `created_at`, `updated_at`) VALUES
(1, '23012022540Logo-Red-CMYK.png', 'https://www.facebook.com/armantpi,https://www.youtube.com/@anrise1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2023-01-20 08:25:40', NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sid`);

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
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `pageid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
