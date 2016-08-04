-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2016 at 10:08 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` varchar(11) NOT NULL,
  `category` mediumtext NOT NULL,
  `writerName` text NOT NULL,
  `ArticleName` mediumtext NOT NULL,
  `date` timestamp NOT NULL,
  `Article` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category`, `writerName`, `ArticleName`, `date`, `Article`) VALUES
('ate1', 'Ask the expert', 'Dr Justine Kluk', 'Guide to rosacea', '2016-08-04 08:43:35', 'Rosacea is a long term skin condition associated with facial redness and flushing. It often appears in the thirties and tends to occur more frequently in those with fair skin. Although it is common, it is still poorly understood. There are a number of factors believed to contribute to the development of rosacea. These include genetics, blood vessel abnormalities, hormonal influences, microorganisms and diet.'),
('cr1', 'consulting room', 'Dr Martin Saweirs', 'Every man is born with one', '2016-08-04 10:02:02', 'Every man is born with one. And if we chaps lived until we are 120 years old it will cause every single one of us problems. The prostate gland is what I’m talking about – an important little thing that plays a big part in our lives. It pays to know about the symptoms it can cause, and also how we go about checking it.\r\n\r\nSo what is the prostate gland?\r\n\r\nWell, all men have one, and its job is to help make semen. It’s meant to be about the size of a walnut when it’s healthy. You’ll find it sitting just below the bladder and surrounding the urethra (the tube leading from the bladder to the penis).'),
('hl1', 'HEALTHY LIVING', 'Doctify Team', '\r\n\r\nHow to eat healthy in the summer', '2016-08-04 10:05:11', 'We’ve just passed this years half way mark and that New Year’s resolution you made back in January to eat healthier has long been forgotten. However, it’s not too late, summer is a great time to revamp your diet.\r\n\r\nDoctify has put together some tips based on The Eatwell guide released by Public Health England.\r\n\r\nHere’s how you can get started.\r\n\r\nDrink plenty of water\r\n\r\nIn these hot summer months there is nothing more important than drinking plenty of water. The Eatwell guide recommends 6-8 glasses a day. Whilst there are the obvious benefits to drinking plenty of water such as preventing dehydration, it can also benefit other things such as weight loss.\r\n\r\nA new study by the University of Birmingham found that on average people who drank a glass of water 30 minutes before eating a meal lost around 2.7 pounds more than people who didn’t. They put this down to the fact that drinking water can make you feel more full and therefore less hungry. This means that when you have your meal half an hour later you are less likely to over indulge.\r\n\r\nIt is also important to cut down on fizzy drinks, which can contain a lot of added sugar. You could start by cutting it down to no more than one drink a day and eventually cut it down to once a week as the occasional treat.\r\n\r\nEstablish a healthy pattern\r\n\r\nRather than focusing on percentages and counting the calories summer is the perfect time to eat fresh, whole food. Michelle Dudash, RDN, Cordon Bleu-certified chef recommends planning for the week ahead and being armed with streamlined recipes. This doesn’t mean you need to keep a lot of food just a few staple ingredients that can be used to make a last-minute healthy meal at a moments notice. This could include grains (quinoa, brown rice and lentils), healthy oils (olive, canola, peanut), nuts and seeds as well as canned tomatoes that could be used to make a quick and easy sauce. It is also important to eat a balanced meal that combines different food groups as this has been found increase your metabolism.\r\n\r\nHeather Mangieri a spokesperson for the Academy of Nutrition and Dietetics in the US suggests you could set aside some time at the weekend to prepare and store healthy meals for the week. These meals would then be stored in the freezer and you can defrost the day before in the fridge and quickly reheat them. However it is important to follow the Food Standards Agency guidelines on reheating food.\r\n\r\nHave fun in the kitchen\r\n\r\nIt is important to cook as much as you can, as although many of us are busy and it’s a lot easier to eat away from home these meals can be full of added sugar and salt and are a source of extra calories. You could start small by cooking once or twice a week using the advice above and gradually build up. A great way of doing this is to make extra so you have some leftovers for the next day, which you could either take to work in a sealed container or leave in the fridge to be reheated when you get home.\r\n\r\nYou can also add more excitement by being more adventuresome and trying new things. Try going to your local market and buying the fruit and veg that’s in season that you wouldn’t normally try. Alternatively go to your supermarket and buy the weekly specials, which is a great way of trying new things as well as saving yourself a bit of money.\r\n\r\nIf you would like more advice on revamping your diet this summer use the link below to talk to one of our nutritionists now.'),
('no1', 'news and opinnion', 'Tom Nolan', 'Health tech innovators changing the world in 2015', '2016-08-04 09:37:02', 'Here at the Doctify Journal it’s our new year’s resolution to bring you the most interesting and relevant health news and features directly from the experts. You might have already seen our 2015 healthcare round-up and experts’ 2016 predictions, or our editor’s first monthly health news review. As Doctify gets in gear for 2016 after its first Christmas we thought we’d look around at who the other new or trending healthcare innovators are.'),
('p1', 'On the pulse', 'tom nolan', 'July health news', '2016-08-04 08:43:35', 'With the summer holidays here, my aim is to find plenty of time to do nothing. But even when I get the chance to, I usually end up doing something. I see the same in healthcare all the time, where there’s so often an overwhelming urge to do something, even when there may be nothing we can do. In this month’s news we see what happens when you don’t take antibiotics, who’s at risk of stroke but can’t do a lot about it, and research showing GPs doing something, but probably not enough.  \r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
