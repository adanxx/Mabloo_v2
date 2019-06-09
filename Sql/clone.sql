-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2019 at 02:21 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'First post', 'This is a really interesting post.', '2019-05-08 13:02:49'),
(2, 'Second post', 'This is a fascinating post!', '2019-05-08 13:02:49'),
(3, 'Third post', 'This is a very informative post.', '2019-05-08 13:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `url` varchar(512) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(512) NOT NULL,
  `keywords` varchar(512) NOT NULL,
  `clicks` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `url`, `title`, `description`, `keywords`, `clicks`, `created_at`) VALUES
(2, 'https://www.cnn.com/specials/world/cnn-climate', 'Climate change: Latest news and explainers - CNN', 'Climate change weaves through daily lives: the global politics of global warming, the business impact of greenhouse gas and carbon emissions and the environmental impact to the sea levels, extreme weather, food supply and more.', 'world, Climate change: Latest news and explainers - CNN', 0, '2019-05-24 15:46:36'),
(3, 'https://www.cnn.com/interactive/2019/04/specials/climate-change-solutions-quiz/index.html', 'Quiz: Climate change solutions', 'We need unprecedented action to stop climate change. Take CNN\'s quiz to see how much you know about the most effective solutions.', '', 0, '2019-05-24 15:46:37'),
(4, 'https://edition.cnn.com/2019/04/26/us/california-restaurants-climate-change-surcharge-trnd/index.html', 'California restaurants can now add a 1% surcharge to help fight climate change - CNN', 'People eating out at California restaurants may start to see an optional 1% surcharge added to their bill.', 'us, California restaurants can now add a 1% surcharge to help fight climate change - CNN', 0, '2019-05-24 15:46:38'),
(5, 'https://edition.cnn.com/2019/04/25/weather/penguins-antarctic-halley-scn-scli-intl/index.html', 'The world\'s second-largest emperor penguin colony has nearly disappeared - CNN', 'The world\'s second largest emperor penguin colony has almost disappeared, according to a new report, raising fears about the effects of climate change on the species.', 'weather, The world\'s second-largest emperor penguin colony has nearly disappeared - CNN', 0, '2019-05-24 15:46:41'),
(6, 'https://edition.cnn.com/style/article/cannes-red-carpet-2019/index.html', 'Cannes Film Festival 2019: The best celebrity red carpet fashion - CNN Style', 'As Cannes Film Festival unfolds, take a look at the most memorable red carpet moments. ', 'fashion, Cannes Film Festival 2019: The best celebrity red carpet fashion - CNN', 0, '2019-05-24 15:46:42'),
(7, 'https://edition.cnn.com/style/article/anna-wintour-interview/index.html', 'Anna Wintour: a rare interview with Vogue\'s editor-in-chief - CNN Style', 'In a rare interview, fashion\'s head of state and editor-in-chief of Vogue talks women, politics and sunglasses.', 'fashion, Anna Wintour: a rare interview with Vogue\'s editor-in-chief - CNN', 0, '2019-05-24 15:46:42'),
(8, 'https://edition.cnn.com/style/article/india-election-party-symbols/index.html', 'How India\'s political parties get their symbols - CNN Style', 'A ceiling fan, a bungalow, a broom and a mango -- these are just some of unusual symbols Indian voters can expect to see on ballots as they head to the polls.', 'design, How India\'s political parties get their symbols - CNN', 0, '2019-05-24 15:46:43'),
(9, 'https://edition.cnn.com/style/article/jeff-koons-rabbit-auction-record/index.html', 'Jeff Koons\' $91M \'Rabbit\' sculpture sets new auction record - CNN Style', 'A stainless steel rabbit sculpture by Jeff Koons has become the most expensive work by a living artist ever to sell at auction.', 'arts, Jeff Koons\' $91M \'Rabbit\' sculpture sets new auction record - CNN', 0, '2019-05-24 15:46:44'),
(10, 'https://edition.cnn.com/interactive/style/leonardo500/', 'Leonardo: What had he achieved by your age?', 'Leonardo da Vinci died 500 years ago at the age of 67. What was he doing at your age? Find out here.', '', 0, '2019-05-24 15:46:44'),
(11, 'https://edition.cnn.com/style/article/dmc-delorean/index.html', 'DMC DeLorean: The troubled past of the car that went back to the future  - CNN Style', 'Before achieving cult status as a time machine, the legendary DeLorean endured bankruptcy and a notorious FBI drug sting.', 'autos, DMC DeLorean: The troubled past of the car that went back to the future  - CNN', 0, '2019-05-24 15:46:45'),
(12, 'http://edition.cnn.com/travel', 'CNN Travel | Global Destinations, Tips & Video', 'Get travel tips and inspiration with insider guides, fascinating stories, video experiences and stunning photos.', 'travel news, world travel, aviation news', 0, '2019-05-24 15:46:46'),
(13, 'https://edition.cnn.com/travel/article/private-jet-flight-attendant/index.html', 'Private jet flight attendant shares her flying confessions | CNN Travel', 'VIP flight attendant Kimberley Benton shares her flying confessions about what really goes on during flights in those exclusive private jets.', 'travel, Private jet flight attendant shares her flying confessions - CNN', 0, '2019-05-24 15:46:46'),
(14, 'https://edition.cnn.com/travel/article/summer-travel-places-2019/index.html', 'Summer travel 2019: 19 best places to go | CNN Travel', 'If you\'re still deciding where to take your summer vacation, 2019 brings major anniversaries, new flight routes and buzzy museum openings. Here are 19 of the best places to go from Bolivia to Singapore.', 'travel-play, Summer travel 2019: 19 best places to go - CNN', 0, '2019-05-24 15:46:47'),
(15, 'https://edition.cnn.com/travel/article/travel-advisors/index.html', 'Travel advisors: Any advantages in paying one to plan your trip? | CNN Travel', 'The internet has made planning and booking your own trip so easy. But travel advisors are still in the game. Discover the advantages in paying one.', 'travel, Travel advisors: Any advantages in paying one to plan your trip? - CNN', 0, '2019-05-24 15:46:48'),
(16, 'https://edition.cnn.com/travel/article/game-of-thrones-classic-film-locations/index.html', '10 \'Game of Thrones\' filming locations we love | CNN Travel', 'Here are the real-life filming locations from 10 of our favorite moments in the incredible eight-season run of \"Game of Thrones.\" ', 'travel, 10 \'Game of Thrones\' filming locations we love - CNN', 0, '2019-05-24 15:46:49'),
(17, 'https://edition.cnn.com/travel/article/india-beautiful-places/index.html', 'India\'s 30 most beautiful places to visit | CNN Travel', 'India is a land of bountiful landscapes from stunning lakes, rolling plains and the snow-capped Himalayas to buildings of worldwide acclaim. See 30 of India\'s most beautiful places.', 'travel, India\'s 30 most beautiful places to visit - CNN', 0, '2019-05-24 15:46:50'),
(18, 'https://edition.cnn.com/specials/middleeast/global-gateway', 'Dubai - architecture, space technology, culture, innovation - Global Gateway - CNN', 'This series showcases the latest, most extraordinary innovations from Dubai, from skyscapers to space travel, along with the latest on Expo 2020 Dubai', 'middleeast, Dubai - architecture, space technology, culture, innovation - Global Gateway - CNN', 0, '2019-05-24 15:46:52'),
(19, 'https://edition.cnn.com/style/article/mbr-solar-park-dubai-desert-intl/index.html', '$13.6 billion solar park rises from Dubai desert - CNN Style', 'The 18-year construction project is set to break records.', 'design, $13.6 billion solar park rises from Dubai desert - CNN', 0, '2019-05-24 15:46:53'),
(20, 'https://edition.cnn.com/travel/article/superyachts-dubai-international-boat-show-2019/index.html', 'Next-gen superyachts drop anchor in Dubai | CNN Travel', 'At the Dubai International Boat Show 2019, the next generation of superyachts drop anchor. And you might be surprised what\'s more valued than luxury in these big boats.', 'travel, Next-gen superyachts drop anchor in Dubai - CNN', 0, '2019-05-24 15:46:54'),
(21, 'https://edition.cnn.com/style/article/dubai-expo-2020-pavilions-sustainability/index.html', 'Expo 2020 Dubai to bring sustainable architecture home - CNN Style', 'Before air con, Emiratis had other ways of keeping cool. Now traditional architecture methods are returning to Dubai with Expo 2020.', 'architecture, Expo 2020 Dubai to bring sustainable architecture home - CNN', 0, '2019-05-24 15:46:55'),
(22, 'https://edition.cnn.com/2019/02/01/health/boxing-grannies-live-longer/index.html', 'South Africa\'s \'boxing grannies\' juke and jab their way to healthier lives  - CNN', 'The women range in age from the mid-60s to the early 80s. They love to dance and sing. And twice a week, they come to a gym in Cosmo City, on the outskirts of Johannesburg, to box. They are affectionately known as South Africa\'s \"boxing grannies,\" and these women are juking and jabbing their way to healthier lives.', 'health, South Africa\'s \'boxing grannies\' juke and jab their way to healthier lives  - CNN', 0, '2019-05-24 15:46:58'),
(23, 'https://www.cnn.com/lifespan', 'Live Longer: Could you improve your lifespan?', 'Do you smoke too much? Eat too much? Drive too much? Learn more about yourself and how your lifestyle could be affecting your lifespan -- and how you could improve it in 2019.', 'longevity, live longer, lifespan, life expectancy, lifestyle, exercise, smoking, health, healthy, new years resolutions, resolutions, goals, targets, diet, food', 0, '2019-05-24 15:46:59'),
(24, 'https://www.reddit.com/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:06'),
(25, 'https://www.reddit.com/r/all/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:08'),
(26, 'https://www.reddit.com/original/', 'Original Content', '', '', 0, '2019-05-24 15:47:11'),
(27, 'https://www.reddit.com/login/?dest=https%3A%2F%2Fwww.reddit.com%2F', 'reddit.com: Log in', '', '', 0, '2019-05-24 15:47:12'),
(28, 'https://www.reddit.com/register/?dest=https%3A%2F%2Fwww.reddit.com%2F', 'reddit.com: Join the worldwide conversation', '', '', 0, '2019-05-24 15:47:13'),
(29, 'https://www.reddit.com/hot/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:15'),
(30, 'https://www.reddit.com/new/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:17'),
(31, 'https://www.reddit.com/controversial/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:19'),
(32, 'https://www.reddit.com/top/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:21'),
(33, 'https://www.reddit.com/rising/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:22'),
(34, 'https://www.reddit.com/r/aww/', 'A subreddit for cute and cuddly pictures', 'r/aww: Things that make you go AWW! Like puppies, bunnies, babies, and so on...A place for really cute pictures and videos!', '', 0, '2019-05-24 15:47:25'),
(35, 'https://www.reddit.com/user/Mono_420/', 'Mono_420 (u/Mono_420) - Reddit', 'u/Mono_420: ', '', 0, '2019-05-24 15:47:27'),
(36, 'https://www.reddit.com/r/aww/comments/bsf6m8/growing_old_together/', 'Growing old together : aww', 'r/aww: Things that make you go AWW! Like puppies, bunnies, babies, and so on...A place for really cute pictures and videos!', '', 0, '2019-05-24 15:47:30'),
(37, 'https://www.reddit.com/r/AskReddit/', 'Ask Reddit...', 'r/AskReddit: r/AskReddit is the place to ask and answer thought-provoking questions.', '', 0, '2019-05-24 15:47:32'),
(38, 'https://www.reddit.com/user/Kelvin_Inman/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:47:35'),
(39, 'https://www.reddit.com/r/AskReddit/comments/bs6tqc/what_was_a_common_in_1999_but_is_unusual_in_2019/', 'What was a common in 1999 but is unusual in 2019? : AskReddit', 'r/AskReddit: r/AskReddit is the place to ask and answer thought-provoking questions.', '', 0, '2019-05-24 15:47:38'),
(40, 'https://www.reddit.com/r/PublicFreakout/', '/r/PublicFreakout', 'r/PublicFreakout: A subreddit dedicated to people freaking out, melting down, losing their cool, or being weird in public.', '', 0, '2019-05-24 15:47:40'),
(41, 'https://www.reddit.com/user/nokia621/', 'nokia621 (u/nokia621) - Reddit', 'u/nokia621: ', '', 0, '2019-05-24 15:47:42'),
(42, 'https://www.reddit.com/r/PublicFreakout/comments/bs81nk/parents_leave_high_school_graduation_early/', 'Parents leave high school graduation early, principal says: \"Look who\'s leaving, all the black people\" : PublicFreakout', 'r/PublicFreakout: A subreddit dedicated to people freaking out, melting down, losing their cool, or being weird in public.', '', 0, '2019-05-24 15:47:45'),
(43, 'https://www.reddit.com/r/PublicFreakout/search?q=flair_name%253A%2522Repost%2520%25F0%259F%2598%2594%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%22Repost%20%F0%9F%98%94%22', 'r/PublicFreakout: A subreddit dedicated to people freaking out, melting down, losing their cool, or being weird in public.', '', 0, '2019-05-24 15:47:47'),
(44, 'https://www.reddit.com/r/worldnews/', 'World News', 'r/worldnews: A place for major news from around the world, excluding US-internal news.', '', 0, '2019-05-24 15:47:49'),
(45, 'https://www.reddit.com/user/dntcareboutdownvotes/', 'dntcareboutdownvotes (u/dntcareboutdownvotes) - Reddit', 'u/dntcareboutdownvotes: ', '', 0, '2019-05-24 15:47:52'),
(46, 'https://www.reddit.com/r/worldnews/comments/bselpw/uk_prime_minister_theresa_may_announces_her/', 'Uk Prime Minister Theresa May announces her resignation : worldnews', 'r/worldnews: A place for major news from around the world, excluding US-internal news.', '', 0, '2019-05-24 15:47:55'),
(47, 'https://www.bbc.co.uk/news/live/uk-politics-48394091', 'Theresa May resigns: Latest as PM to quit as party leader on 7 June - BBC News', 'Latest reaction as Mrs May announces she will step down as party leader on 7 June', '', 0, '2019-05-24 15:48:00'),
(48, 'https://www.reddit.com/r/freefolk/', 'Freefolk', 'r/freefolk: We do not kneel.GoT/ASOIAF sub for non-kneelers. r/Freefolk neither encourages nor discourages piracy. We only take action to enforce reddit\'s sitewide rules. We believe people are mature enough to decide for themselves what content to view. **NOT A SPOILER-SAFE ZONE, NEVER WILL BE.**', '', 0, '2019-05-24 15:48:02'),
(49, 'https://www.reddit.com/user/JimLazerbeam/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:48:07'),
(50, 'https://www.reddit.com/r/freefolk/comments/bseqnj/dd_screening_season_8_to_hbo_executives/', 'D&D screening season 8 to HBO executives : freefolk', 'r/freefolk: We do not kneel.GoT/ASOIAF sub for non-kneelers. r/Freefolk neither encourages nor discourages piracy. We only take action to enforce reddit\'s sitewide rules. We believe people are mature enough to decide for themselves what content to view. **NOT A SPOILER-SAFE ZONE, NEVER WILL BE.**', '', 0, '2019-05-24 15:48:09'),
(51, 'https://www.reddit.com/r/AnimalsBeingJerks/', 'animals being jerks!', 'r/AnimalsBeingJerks: A place for sharing videos, gifs, and images of animals being jerks.', '', 0, '2019-05-24 15:48:12'),
(52, 'https://www.reddit.com/user/Moose_Wings/', 'Moose_Wings (u/Moose_Wings) - Reddit', 'u/Moose_Wings: ', '', 0, '2019-05-24 15:48:16'),
(53, 'https://www.reddit.com/r/AnimalsBeingJerks/comments/bsf8rq/excuse_me_sir_but_you_look_dehydrated/', 'Excuse me sir but you look dehydrated : AnimalsBeingJerks', 'r/AnimalsBeingJerks: A place for sharing videos, gifs, and images of animals being jerks.', '', 0, '2019-05-24 15:48:19'),
(54, 'https://www.reddit.com/r/AnimalsBeingJerks/search?q=flair_name%253A%2522whale%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%22whale%22', 'r/AnimalsBeingJerks: A place for sharing videos, gifs, and images of animals being jerks.', '', 0, '2019-05-24 15:48:21'),
(55, 'https://www.reddit.com/r/rarepuppers/', 'woofe woofe whats for lumch haha', 'r/rarepuppers: this is for rare puppers, sometimes other animols are allowed if they\'re cute :)', '', 0, '2019-05-24 15:48:24'),
(56, 'https://www.reddit.com/user/LESSANGRYTHANISOUND/', 'LESSANGRYTHANISOUND (u/LESSANGRYTHANISOUND) - Reddit', 'u/LESSANGRYTHANISOUND: ', '', 0, '2019-05-24 15:48:28'),
(57, 'https://www.reddit.com/r/rarepuppers/comments/bsez6b/doin_me_a_smol_wave_hello_while_distracted_by_the/', 'Doin me a smol wave hello while distracted by the big clouds in the sky! : rarepuppers', 'r/rarepuppers: this is for rare puppers, sometimes other animols are allowed if they\'re cute :)', '', 0, '2019-05-24 15:48:31'),
(58, 'https://www.reddit.com/r/science/', 'Science', 'r/science: This community is a place to share and discuss new scientific research. Read about the latest advances in astronomy, biology, medicine, physics, social science, and more. Find and submit new publications and popular science coverage of current research.', '', 0, '2019-05-24 15:48:35'),
(59, 'https://www.reddit.com/user/mvea/', 'MVEA - Clinical Professor - MD, PhD (u/mvea) - Reddit', 'u/mvea: An Australian clinician academic with an interest in Science, Health, Technology, Space and Futurology, located in MVEA (Melbourne, Victoria, Eastern Australia).', '', 0, '2019-05-24 15:48:38'),
(60, 'https://www.reddit.com/r/science/comments/bs7l2m/us_births_fell_to_a_32year_low_in_2018_cdc_says/', 'U.S. births fell to a 32-year low in 2018; CDC says birthrate is in record slump, the fourth consecutive year of birth decline. âPeople won\'t make plans to have babies unless they\'re optimistic about the future.â : science', 'r/science: This community is a place to share and discuss new scientific research. Read about the latest advances in astronomy, biology, medicine, physics, social science, and more. Find and submit new publications and popular science coverage of current research.', '', 0, '2019-05-24 15:48:42'),
(61, 'https://www.reddit.com/r/science/search?q=flair_name%253A%2522Social%2520Science%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%22Social%20Science%22', 'r/science: This community is a place to share and discuss new scientific research. Read about the latest advances in astronomy, biology, medicine, physics, social science, and more. Find and submit new publications and popular science coverage of current research.', '', 0, '2019-05-24 15:48:44'),
(62, 'https://www.npr.org/2019/05/15/723518379/u-s-births-fell-to-a-32-year-low-in-2018-cdc-says-birthrate-is-at-record-level', 'NPR Choice page', '', '', 0, '2019-05-24 15:48:45'),
(63, 'https://www.reddit.com/submit', 'reddit.com: Log in', '', '', 0, '2019-05-24 15:48:47'),
(64, 'https://www.reddit.com/r/HeavySeas', 'Confirmed wavy.', 'r/HeavySeas: Subreddit dedicated to videos and general media relating to huge waves! Try not to puke!', '', 0, '2019-05-24 15:48:50'),
(65, 'https://www.reddit.com/r/hockey', 'hockey: the best game on earth', 'r/hockey: Discuss the NHL, AHL, KHL, NWHL, IIHF and every other hockey league you can think of!We are the premiere subreddit to talk everything hockey!', '', 0, '2019-05-24 15:48:54'),
(66, 'https://www.reddit.com/r/brutalism', 'Brutalism', 'r/brutalism: A friendly place to discover and appreciate brutalist buildings and architecture. Share photos, read articles, and discuss.', '', 0, '2019-05-24 15:48:57'),
(67, 'https://www.reddit.com/r/ouya', 'OUYA: A New Kind of Video Game Console', 'r/ouya: OUYA is a new game console for the TV, powered by Android. Helping developers help gamers!', '', 0, '2019-05-24 15:49:01'),
(68, 'https://www.reddit.com/r/calvinandhobbes', 'Calvin and Hobbes Reddit', 'r/calvinandhobbes: For everything about Calvin and Hobbes!:D', '', 0, '2019-05-24 15:49:04'),
(69, 'https://about.reddit.com', 'Homepage - Reddit', '', '', 0, '2019-05-24 15:49:05'),
(70, 'https://about.reddit.com/careers/', 'Careers - Reddit', '', '', 0, '2019-05-24 15:49:06'),
(71, 'https://about.reddit.com/press/', 'Press - Reddit', '', '', 0, '2019-05-24 15:49:07'),
(72, 'https://about.reddit.com/advertise/', 'Advertising on Reddit - Reddit', 'Learn how Reddit Ads can help you reach influential communities made up of millions of people engaging with today’s most relevant content.', '', 0, '2019-05-24 15:49:08'),
(73, 'http://www.redditblog.com/', 'Upvoted – The official Reddit blog', '', '', 0, '2019-05-24 15:49:10'),
(74, 'https://www.reddithelp.com', 'Reddit Help | Reddit Help', '', '', 0, '2019-05-24 15:49:12'),
(75, 'https://www.reddit.com/coins', 'Coins', '', '', 0, '2019-05-24 15:49:14'),
(76, 'https://www.reddit.com/premium', 'Reddit Premium', '', '', 0, '2019-05-24 15:49:17'),
(77, 'http://redditgifts.com/', 'reddit gift exchanges and more! - redditgifts', 'Get the best gift you\'ve ever gotten, give the best present you\'ve ever given!', '', 0, '2019-05-24 15:49:18'),
(78, 'https://www.reddit.com/help/contentpolicy', 'Content Policy - Reddit', '', '', 0, '2019-05-24 15:49:19'),
(79, 'https://www.reddit.com/help/privacypolicy', 'Privacy Policy - May 25, 2018 - Reddit', '', '', 0, '2019-05-24 15:49:20'),
(80, 'https://www.reddit.com/help/useragreement', 'User Agreement - September 24, 2018 - Reddit', '', '', 0, '2019-05-24 15:49:22'),
(81, 'https://www.reddit.com/help/healthycommunities/', 'Moderator Guidelines for Healthy Communities - Reddit', '', '', 0, '2019-05-24 15:49:23'),
(82, 'https://www.reddit.com/login/?dest=https%3A%2F%2Fwww.reddit.com%2Fr%2Fall%2F', 'reddit.com: Log in', '', '', 0, '2019-05-24 15:49:27'),
(83, 'https://www.reddit.com/register/?dest=https%3A%2F%2Fwww.reddit.com%2Fr%2Fall%2F', 'reddit.com: Join the worldwide conversation', '', '', 0, '2019-05-24 15:49:27'),
(84, 'https://www.reddit.com/r/all/hot/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:49:31'),
(85, 'https://www.reddit.com/r/all/new/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:49:34'),
(86, 'https://www.reddit.com/r/all/controversial/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:49:36'),
(87, 'https://www.reddit.com/r/all/top/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:49:39'),
(88, 'https://www.reddit.com/r/all/rising/', 'reddit: the front page of the internet', '', '', 0, '2019-05-24 15:49:43'),
(89, 'https://www.reddit.com/r/fakehistoryporn/', 'Fake History Porn ', 'r/fakehistoryporn: Fake History Porn : A subreddit dedicated to Fake History', '', 0, '2019-05-24 15:49:47'),
(90, 'https://www.reddit.com/user/TehMoreYouKnow1/', 'TheMoreYouKnow (u/TehMoreYouKnow1) - Reddit', 'u/TehMoreYouKnow1: CSGO Amateur and Meme Enthusiast.Steam: www.steamcommunity.com/id/TheMoreYouKnow1', '', 0, '2019-05-24 15:49:51'),
(91, 'https://www.reddit.com/r/fakehistoryporn/comments/bsf1tb/theresa_may_resigning_2019/', 'Theresa May resigning [2019] : fakehistoryporn', 'r/fakehistoryporn: Fake History Porn : A subreddit dedicated to Fake History', '', 0, '2019-05-24 15:49:55'),
(92, 'https://www.reddit.com/r/fakehistoryporn/search?q=flair_name%253A%25222019%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%222019%22', 'r/fakehistoryporn: Fake History Porn : A subreddit dedicated to Fake History', '', 0, '2019-05-24 15:49:57'),
(93, 'https://www.reddit.com/r/photoshopbattles/', 'a place to have fun with everyone\'s favorite graphic software', 'r/photoshopbattles: Photoshop contests on reddit. A place to battle using image manipulation software, play photoshop tennis, create new images from old photos, or even win reddit gold.', '', 0, '2019-05-24 15:50:06'),
(94, 'https://www.reddit.com/user/soool93/', 'soool93 (u/soool93) - Reddit', 'u/soool93: ', '', 0, '2019-05-24 15:50:11'),
(95, 'https://www.reddit.com/r/photoshopbattles/comments/bsei1c/psbattle_got_behind_the_scenes_stunt_heroes/', 'PsBattle: GOT behind the scenes stunt heroes : photoshopbattles', 'r/photoshopbattles: Photoshop contests on reddit. A place to battle using image manipulation software, play photoshop tennis, create new images from old photos, or even win reddit gold.', '', 0, '2019-05-24 15:50:14'),
(96, 'https://www.reddit.com/r/photoshopbattles/search?q=flair_name%253A%2522Photoshops%2520Only%2520Mode%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%22Photoshops%20Only%20Mode%22', 'r/photoshopbattles: Photoshop contests on reddit. A place to battle using image manipulation software, play photoshop tennis, create new images from old photos, or even win reddit gold.', '', 0, '2019-05-24 15:50:18'),
(97, 'https://www.reddit.com/r/MadeMeSmile/', 'MadeMeSmile', 'r/MadeMeSmile: A place to post things that made you smile or brightened up your day. A generally uplifting subreddit. ', '', 0, '2019-05-24 15:50:21'),
(98, 'https://www.reddit.com/user/Sonius94/', 'Sonius94 (u/Sonius94) - Reddit', 'u/Sonius94: App Developer @OvyApp, Interested in gaming and crypto', '', 0, '2019-05-24 15:50:24'),
(99, 'https://www.reddit.com/r/MadeMeSmile/comments/bsfbcd/my_last_year_i_became_engaged_married_a_father/', 'My last year. I became engaged, married, a father and finished my studies. I can smile forever now : MadeMeSmile', 'r/MadeMeSmile: A place to post things that made you smile or brightened up your day. A generally uplifting subreddit. ', '', 0, '2019-05-24 15:50:27'),
(100, 'https://www.reddit.com/login/?dest=https%3A%2F%2Fwww.reddit.com%2Foriginal%2F', 'reddit.com: Log in', '', '', 0, '2019-05-24 15:50:32'),
(101, 'https://www.reddit.com/register/?dest=https%3A%2F%2Fwww.reddit.com%2Foriginal%2F', 'reddit.com: Join the worldwide conversation', '', '', 0, '2019-05-24 15:50:33'),
(102, 'https://www.reddit.com/original/all/hot/', 'Original Content', '', '', 0, '2019-05-24 15:50:36'),
(103, 'https://www.reddit.com/original/all/new/', 'Original Content', '', '', 0, '2019-05-24 15:50:40'),
(104, 'https://www.reddit.com/original/all/controversial/', 'Original Content', '', '', 0, '2019-05-24 15:50:43'),
(105, 'https://www.reddit.com/original/all/top/', 'Original Content', '', '', 0, '2019-05-24 15:50:46'),
(106, 'https://www.reddit.com/original/comics', 'Original Content', '', '', 0, '2019-05-24 15:50:49'),
(107, 'https://www.reddit.com/r/comics/', 'Print Comics and Webcomics ', 'r/comics: Everything related to print comics (comic books, graphic novels, and strips) and web comics.  Artists are encouraged to post their own work.  News and media for adaptations based on comic books are welcome. Read [the subreddit wiki](https://www.reddit.com/r/comics/wiki/index) for more information about the subreddit.', '', 0, '2019-05-24 15:50:52'),
(108, 'https://www.reddit.com/user/beckscomics/', 'beckscomics (u/beckscomics) - Reddit', 'u/beckscomics: ', '', 0, '2019-05-24 15:50:57'),
(109, 'https://www.reddit.com/r/comics/comments/bsdsxv/coparenting_oc/', 'Co-parenting [OC] : comics', 'r/comics: Everything related to print comics (comic books, graphic novels, and strips) and web comics.  Artists are encouraged to post their own work.  News and media for adaptations based on comic books are welcome. Read [the subreddit wiki](https://www.reddit.com/r/comics/wiki/index) for more information about the subreddit.', '', 0, '2019-05-24 15:51:00'),
(110, 'https://imgur.com/TeVzpCz', '                                        Co-parenting [OC] - Imgur', 'Post with 0 votes and 266362 views. Co-parenting [OC]', 'images, photos, gif, gifs, memes, pictures, new pictures, reaction gifs, share photos, share images, latest images, funny, cute, visual storytelling, imgur', 0, '2019-05-24 15:51:01'),
(111, 'https://www.reddit.com/original/photography', 'Original Content', '', '', 0, '2019-05-24 15:51:05'),
(112, 'https://www.reddit.com/r/pics/', 'Reddit Pics', 'r/pics: A place for pictures and photographs.', '', 0, '2019-05-24 15:51:08'),
(113, 'https://www.reddit.com/user/ajamesmccarthy/', 'ajamesmccarthy (u/ajamesmccarthy) - Reddit', 'u/ajamesmccarthy: Astrophotography... Find me on Instagram @cosmic_background', '', 0, '2019-05-24 15:51:12'),
(114, 'https://www.reddit.com/r/pics/comments/bsa828/i_took_an_81_megapixel_shot_of_earthshine_on_the/', 'I took an 81 megapixel shot of earthshine on the moon. Zoom in to see the craters! : pics', 'r/pics: A place for pictures and photographs.', '', 0, '2019-05-24 15:51:14'),
(115, 'https://www.reddit.com/original/drawing_and_painting', 'Original Content', '', '', 0, '2019-05-24 15:51:16'),
(116, 'https://www.reddit.com/r/drawing/', 'tips, techniques, sharing pieces...', 'r/drawing: This is a subreddit for artists who particularly enjoy drawing and/or are interested in sharing their techniques. Sharing some really awesome pieces by other artists is totally fine too. :)', '', 0, '2019-05-24 15:51:18'),
(117, 'https://www.reddit.com/user/gombrick/', 'gombrick (u/gombrick) - Reddit', 'u/gombrick: ', '', 0, '2019-05-24 15:51:21'),
(118, 'https://www.reddit.com/r/drawing/comments/bsgasi/my_initial_sketch_didnt_get_too_much_attention/', 'My initial sketch didn\'t get too much attention but I thought I would post the finished drawing anyway : drawing', 'r/drawing: This is a subreddit for artists who particularly enjoy drawing and/or are interested in sharing their techniques. Sharing some really awesome pieces by other artists is totally fine too. :)', '', 0, '2019-05-24 15:51:23'),
(119, 'https://www.reddit.com/original/writing', 'Original Content', '', '', 0, '2019-05-24 15:51:25'),
(120, 'https://www.reddit.com/r/nosleep/', 'nosleep', 'r/nosleep: Nosleep is a subreddit for realistic horror stories. Everything is true here, even if it\'s not.', '', 0, '2019-05-24 15:51:29'),
(121, 'https://www.reddit.com/user/Verastahl/', 'Verastahl (u/Verastahl) - Reddit', 'u/Verastahl: I\'m Verastahl, aka Brandon Faircloth.  Find more of my stories at Verastahl.com and r/verastahl.', '', 0, '2019-05-24 15:51:31'),
(122, 'https://www.reddit.com/r/nosleep/comments/bsg2az/my_job_is_to_watch_a_woman_trapped_in_a_room_part/', 'My job is to watch a woman trapped in a room. Part Three. : nosleep', 'r/nosleep: Nosleep is a subreddit for realistic horror stories. Everything is true here, even if it\'s not.', '', 0, '2019-05-24 15:51:33'),
(123, 'https://www.reddit.com/r/nosleep/search?q=flair_name%253A%2522Series%2522&restrict_sr=1', 'reddit.com: search results - flair_name%3A%22Series%22', 'r/nosleep: Nosleep is a subreddit for realistic horror stories. Everything is true here, even if it\'s not.', '', 0, '2019-05-24 15:51:35'),
(124, 'https://redd.it/brco33', 'My job is watching a woman trapped in a room. : nosleep', '', '', 0, '2019-05-24 15:51:39'),
(125, 'https://redd.it/brsj8v', 'My job is watching a woman trapped in a room. Part Two. : nosleep', '', '', 0, '2019-05-24 15:51:41'),
(126, 'https://www.bbc.co.uk', 'BBC - Home', 'The best of the BBC, with the latest news and sport headlines, weather, TV & radio highlights and much more from across the whole of BBC Online', 'BBC, British Broadcasting Corporation, BBCi, News, Sport, iPlayer, TV, Radio, Food, Music, Business, Arts, Bitesize, Lifestyle, Entertainment, Headlines', 0, '2019-05-24 15:56:02'),
(127, 'https://www.bbc.com/accessibility/', 'BBC - My Web My Way - Home', 'My Web My Way explains the many ways you can change your browser, computer, keyboard and mouse settings to make the web more accessible to you', 'BBC, Accessibility, disability, browser, computer, keyboard, mouse, Windows, Mac, Linux, BBC online', 0, '2019-05-24 15:56:03'),
(128, 'https://www.bbc.co.uk/news', 'Home - BBC News', 'Visit BBC News for up-to-the-minute news, breaking news, video, audio and feature stories. BBC News provides trusted World and UK news as well as local and regional perspectives. Also entertainment, business, science, technology and health news.', '', 0, '2019-05-24 15:56:10'),
(129, 'https://www.bbc.co.uk/weather', 'BBC Weather', 'Latest weather conditions and forecasts for the UK and the world. Includes up to 14-days of hourly forecast information, warnings, maps, and the latest editorial analysis and videos from the BBC Weather Centre.', '', 0, '2019-05-24 15:56:14'),
(130, 'https://www.bbc.co.uk/iplayer', 'BBC iPlayer', 'Watch live BBC TV channels, enjoy TV programmes you missed and view exclusive content on BBC iPlayer.', 'BBC, iPlayer, TV', 0, '2019-05-24 15:56:16'),
(131, 'https://www.bbc.co.uk/sounds', 'BBC Sounds - Music. Radio. Podcasts', 'Listen without limits, with BBC Sounds. Catch the latest music tracks, discover binge-worthy podcasts, or listen to radio shows – all whenever you want.', '', 0, '2019-05-24 15:56:17'),
(132, 'https://www.bbc.co.uk/cbbc', 'The Official Home of CBBC - CBBC - BBC', 'Welcome to CBBC. Here you can play free online kids games, watch your favourite shows, chat with celebrities and join in with the fun.', '', 0, '2019-05-24 15:56:18'),
(133, 'https://www.bbc.co.uk/cbeebies', 'Games for kids and early years activities - CBeebies - BBC', 'CBeebies helps pre-schoolers learn whilst they play fun games, watch clips, sing songs and make things with their favourite CBeebies characters and shows.', '', 0, '2019-05-24 15:56:19'),
(134, 'https://www.bbc.com/food', 'BBC Food - Recipes and inspiration from your favourite BBC programmes and chefs', 'Find recipes from your favourite BBC programmes and chefs, or browse by ingredient or dish. With over 13000 recipes you\'re sure to find the perfect dish.', '', 0, '2019-05-24 15:56:20'),
(135, 'https://www.bbc.co.uk/arts', 'BBC Arts', 'The best of British culture live and on-demand. Experience performance, festivals, events and archive. Delve into the world behind the art.', '', 0, '2019-05-24 15:56:21'),
(136, 'https://www.bbc.co.uk/taster', 'BBC Taster', 'Taster is the home of new ideas from the BBC', '', 0, '2019-05-24 15:56:24'),
(137, 'https://www.bbc.co.uk/news/localnews', 'Local News - BBC News', 'Get the latest news in your local area from BBC News.', '', 0, '2019-05-24 15:56:24'),
(138, 'https://www.bbc.co.uk/tv', 'BBC iPlayer - BBC One Guide - Fri May 24 2019', 'Browse the TV Guide for programmes from the BBC.', 'BBC, iPlayer, TV, TV Guide, Schedule, BBC One', 0, '2019-05-24 15:56:26'),
(139, 'https://www.bbc.co.uk/radio', 'BBC Sounds - Music. Radio. Podcasts', 'Listen without limits, with BBC Sounds. Catch the latest music tracks, discover binge-worthy podcasts, or listen to radio shows – all whenever you want.', '', 0, '2019-05-24 15:56:28'),
(140, 'https://www.bbc.co.uk/bbcthree', 'BBC Three | Docs, Comedies, Videos & Articles', 'All the latest documentaries, comedy, videos, articles and more from the award winning digital channel, BBC Three. Makes you think. Makes you laugh', '', 0, '2019-05-24 15:56:28'),
(141, 'https://search.bbc.co.uk/search', 'BBC - Search ', 'Application', 'BBC, Search', 0, '2019-05-24 15:56:30'),
(142, 'https://www.bbc.com/news', 'Home - BBC News', 'Visit BBC News for up-to-the-minute news, breaking news, video, audio and feature stories. BBC News provides trusted World and UK news as well as local and regional perspectives. Also entertainment, business, science, technology and health news.', '', 0, '2019-05-24 15:56:32'),
(143, 'https://www.bbc.com/news/video_and_audio/headlines', 'May\'s political career - in three minutes - BBC News', 'Brexit came to define her time as prime minister, but Theresa May had a long and varied political career.', '', 0, '2019-05-24 15:56:33'),
(144, 'https://www.bbc.com/news/world', 'World - BBC News', 'BBC News', '', 0, '2019-05-24 15:56:44'),
(145, 'https://www.bbc.com/news/uk', 'UK - BBC News', 'Get the latest BBC News: breaking news, features, analysis and debate plus audio and video content from England, Scotland, Wales and Northern Ireland.', '', 0, '2019-05-24 15:56:46'),
(146, 'https://www.bbc.com/news/business', 'Business - BBC News', 'BBC News', '', 0, '2019-05-24 15:56:57'),
(147, 'https://www.bbc.com/news/technology', 'Technology - BBC News', 'BBC News', '', 0, '2019-05-24 15:57:08'),
(148, 'https://www.bbc.com/news/science_and_environment', 'Science & Environment - BBC News', 'BBC News', '', 0, '2019-05-24 15:57:19'),
(149, 'https://www.bbc.com/news/stories', 'Stories - BBC News', 'BBC Stories - digital storytelling on stories that shape you - video documentaries and in-depth features on culture, society, topical issues', '', 0, '2019-05-24 15:57:20'),
(150, 'https://www.bbc.com/news/entertainment_and_arts', 'Entertainment & Arts - BBC News', 'BBC News', '', 0, '2019-05-24 15:57:31'),
(151, 'https://www.bbc.com/news/health', 'Health - BBC News', 'BBC News', '', 0, '2019-05-24 15:57:41'),
(152, 'https://www.bbc.com/news/world_radio_and_tv', 'BBC World News: 24 hour news TV channel - BBC News', '', '', 0, '2019-05-24 15:57:43'),
(153, 'https://www.bbc.com/news/in_pictures', 'In Pictures - BBC News', 'BBC News', '', 0, '2019-05-24 15:57:54'),
(154, 'https://www.bbc.com/realitycheck', 'Reality Check - BBC News', 'All the latest news about Reality Check from the BBC', '', 0, '2019-05-24 15:58:06'),
(155, 'https://www.bbc.com/news/newsbeat', 'Newsbeat - BBC News', 'Exclusive music news, big interviews, entertainment, social media trends and video from the news people at BBC Radio 1 and 1Xtra.', '', 0, '2019-05-24 15:58:07'),
(156, 'https://www.bbc.com/news/special_reports', 'Special reports - BBC News', 'BBC special reports: - Get the latest background, news, features, reaction, Q & A, analysis and in-depth coverage, including interactive reports and infographics from BBC News correspondents and experts.', '', 0, '2019-05-24 15:58:08'),
(157, 'https://www.bbc.com/news/explainers', 'Explainers - BBC News', '', '', 0, '2019-05-24 15:58:10'),
(158, 'https://www.bbc.com/news/the_reporters', 'Long Reads - BBC News', 'BBC News', '', 0, '2019-05-24 15:58:21'),
(159, 'https://www.bbc.com/news/have_your_say', 'Have Your Say - BBC News', 'BBC News', '', 0, '2019-05-24 15:58:22'),
(160, 'https://www.bbc.com/news/world/africa', 'Africa - BBC News', 'BBC News', '', 0, '2019-05-24 15:58:33'),
(161, 'https://www.bbc.com/news/world/asia', 'Asia - BBC News', 'Get the latest Asian news from BBC News in Asia: breaking news, features, analysis and special reports plus audio and video from across the Asian continent.', '', 0, '2019-05-24 15:58:35'),
(162, 'https://www.bbc.com/news/world/australia', 'Australia - BBC News', 'BBC News', '', 0, '2019-05-24 15:58:46'),
(163, 'https://www.bbc.com/news/world/europe', 'Europe - BBC News', 'BBC News', '', 0, '2019-05-24 15:58:57'),
(164, 'https://www.bbc.com/news/world/latin_america', 'Latin America & Caribbean - BBC News', 'BBC News', '', 0, '2019-05-24 15:59:08'),
(165, 'https://www.bbc.com/news/world/middle_east', 'Middle East - BBC News', 'BBC News', '', 0, '2019-05-24 15:59:19'),
(166, 'https://www.bbc.com/news/world/us_and_canada', 'US & Canada - BBC News', 'BBC News', '', 0, '2019-05-24 15:59:30'),
(167, 'https://www.bbc.com/news/england', 'England - BBC News', 'Get the latest BBC England news: breaking news, in-depth features, analysis and debate plus audio and video coverage from the English regions.', '', 0, '2019-05-24 15:59:32'),
(168, 'https://www.bbc.com/news/northern_ireland', 'Northern Ireland - BBC News', 'Get the latest Northern Irish news from BBC Northern Ireland: breaking news, analysis, features and debate plus audio and video coverage on topical issues from around Northern Ireland.', '', 0, '2019-05-24 15:59:33'),
(169, 'https://www.bbc.com/news/scotland', 'Scotland - BBC News', 'Get the latest Scottish news from BBC Scotland: breaking news, analysis, features and debate plus audio and video coverage on topical issues from around Scotland', '', 0, '2019-05-24 15:59:36'),
(170, 'https://www.bbc.com/news/wales', 'Wales - BBC News', 'Get the latest Welsh news from BBC Wales: breaking news, analysis, features and debate plus audio and video coverage on topical issues from around Wales.', '', 0, '2019-05-24 15:59:37'),
(171, 'https://www.bbc.com/news/politics', 'UK Politics - BBC News', 'Get the latest BBC Politics news: breaking news, comment and analysis plus political guides and in-depth special reports on UK and EU politics.', '', 0, '2019-05-24 15:59:39'),
(172, 'https://www.bbc.com/news/localnews', 'Local News - BBC News', 'Get the latest news in your local area from BBC News.', '', 0, '2019-05-24 15:59:40'),
(173, 'https://www.bbc.com/news/business/market-data', 'Market Data - BBC News', 'BBC News market data provides up-to-the-minute news and financial data on hundreds of global companies and their share prices, market indices, currencies, commodities and economies.', '', 0, '2019-05-24 15:59:41'),
(174, 'https://www.bbc.com/news/business-38507481', 'Global Trade - BBC News', 'BBC News', '', 0, '2019-05-24 15:59:52'),
(175, 'https://www.bbc.com/news/business/companies', 'Companies - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:03'),
(176, 'https://www.bbc.com/news/business-22434141', 'Entrepreneurship - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:14'),
(177, 'https://www.bbc.com/news/business-11428889', 'Technology of Business - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:25'),
(178, 'https://www.bbc.com/news/business-45489065', 'Connected World - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:36'),
(179, 'https://www.bbc.com/news/business-12686570', 'Global education - BBC News', '', '', 0, '2019-05-24 16:00:38'),
(180, 'https://www.bbc.com/news/business/economy', 'Economy - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:48'),
(181, 'https://www.bbc.com/news/business/global_car_industry', 'Global Car Industry - BBC News', 'BBC News', '', 0, '2019-05-24 16:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `token_hash` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`token_hash`, `user_id`, `expires_at`) VALUES
('f84e2ec3b06c88ab4b3a3d42fa85cdb44f7ffdfce452beb9a5f3272db4f3ebc8', 1, '2013-06-10 16:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `filename` varchar(275) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filePath` varchar(512) NOT NULL,
  `file_type` varchar(40) NOT NULL,
  `file_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `filename`, `user_id`, `filePath`, `file_type`, `file_size`, `created_at`) VALUES
(4, 'meditation.PNG', 1, '../uploads/5cebd5e870b920.688502271558959592.png', 'png', 1171269, '2019-05-27 14:19:52'),
(5, '17935469_xl.jpg', 1, '../uploads/5cfcf9c21ae2b7.909264281560082882.jpg', 'jpg', 1652398, '2019-06-09 14:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `password_reset_hash` varchar(64) DEFAULT NULL,
  `password_reset_expires_at` datetime DEFAULT NULL,
  `activation_hash` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `password_reset_hash`, `password_reset_expires_at`, `activation_hash`, `is_active`, `created_at`) VALUES
(1, 'Bane', 'Bane47i@gmail.com', '$2y$10$b7F/igzbJdJPHnMX4IEF3erCNx8YqP75/.FAOYyqIUCHQhmK6X4pC', 1, NULL, NULL, NULL, 1, '2019-05-09 11:58:36'),
(6, 'Dave', 'demo477i@gmail.com', '$2y$10$0kS1XOYsJSdXZ1DoAZ1Px.icnTdb9BX9LzhhBuQqXm.s3YUkRuVhC', 0, NULL, NULL, NULL, 0, '2019-05-09 18:10:42'),
(0, 'Sol Kane', 'test2@gmail.com', '$2y$10$pwEgYyFhLaaQkRO0EingHexGkTVlOvr9Z1C5/PQNz6a9fZUFZUFWy', 0, NULL, NULL, '37c5cf6a3e540568b62d8da109e23c2572bfe8ab4d6970b5f44823190f1e0c0c', 0, '2019-05-30 13:36:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
