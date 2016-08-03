-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2016 at 04:29 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `krupet_db2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`) VALUES
(1, 'admin', 'a@b.c', 'c4ca4238a0b923820dcc509a6f75849b', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads`
--

CREATE TABLE IF NOT EXISTS `tbl_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `v_image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `h_image` varchar(100) NOT NULL,
  `num_of_clicks` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_ads`
--

INSERT INTO `tbl_ads` (`id`, `name`, `link`, `v_image`, `h_image`, `num_of_clicks`, `is_published`, `created_dt`, `modified_dt`) VALUES
(2, 'Ads 1', '#', 'uploads/advertisments/advertisment_56af7cb2c3252.jpg', 'uploads/advertisments/advertisment_56af7cb2c571b.jpg', 0, 1, '0000-00-00 00:00:00', '2016-02-04 17:23:28'),
(3, 'Ads 2', '#', 'uploads/advertisments/advertisment_56b20eddbd09b.jpg', 'uploads/advertisments/advertisment_56b20f030119b.jpg', 0, 1, '0000-00-00 00:00:00', '2016-02-03 15:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE IF NOT EXISTS `tbl_blogs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) NOT NULL COMMENT '1=tip; 2=news;',
  `en_title` varchar(100) NOT NULL,
  `kh_title` varchar(100) NOT NULL,
  `en_pre_content` varchar(250) NOT NULL,
  `kh_pre_content` varchar(250) NOT NULL,
  `en_main_content` text NOT NULL,
  `kh_main_content` text NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `num_of_views` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_specialed` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `data_order` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(12, 2, 'Tobacco Companies Sued Over Cancer-Causing Substances in E-Cigarettes', 'ក្រុមហ៊ុនថ្នាំជក់ប្តឹងបង្កជំងឺមហារីកក្នុងអ៊ីបារី', 'A lawsuit by environmental watchdog group CEH targets tobacco and e-cigarette companies whose products the group says emit two toxic chemicals.\r\n', 'ពាក្យបណ្តឹងដោយក្រុមអង្គការឃ្លាំមើលបរិស្ថានបាន CEH មួយផ្តោតសំខាន់លើក្រុមហ៊ុនថ្នាំជក់និង e-បារីដែលផលិតផលរបស់ក្រុមនេះបាននិយាយថាបញ្ចេញសារធាតុគីមីពុលទាំងពីរនាក់។', '<p>Several brands of electronic cigarettes, e-liquids, and other vaping products give off high levels of two cancer-causing chemicals even during normal use, according to tests commissioned by the Center for Environmental Health (CEH).</p>\r\n<p>“More than half of the products we tested had levels above the California safety standard,” Charles Margulis, media director for CEH, told Healthline, and “many of the products were quite high.”</p>\r\n<p>The tests prompted the nonprofit to file lawsuits against tobacco and other e-cigarette companies for failing to warn consumers about these chemicals, as required by Proposition 65, California’s consumer protection law.</p>\r\n<p>CEH’s announcement comes on the same day as the American Cancer Society’s Great American Smokeout, an event designed to help people give up tobacco.</p>', '<p>មានម៉ាកបារីអេឡិចត្រូនិជាច្រើន, អ៊ីរាវនិងផលិតផល vaping ដទៃទៀតផ្តល់ឱ្យបិទកម្រិតខ្ពស់នៃសារធាតុគីមីបង្កមហារីកទាំងពីរនាក់សូម្បីតែក្នុងការប្រើប្រាស់ធម្មតានេះបើយោងតាមការធ្វើតេស្តបានទទួលបន្ទុកដោយមជ្ឈមណ្ឌលសុខភាពបរិស្ថាន (CEH) ។</p>\r\n<p>"ជាងពាក់កណ្តានៃផលិតផលដែលយើងបានធ្វើតេស្តមានកម្រិតស្ដង់ដារសុវត្ថិភាពនៅខាងលើកាលីហ្វញ៉ា" លោក Charles Margulis នាយកប្រព័ន្ធផ្សព្វផ្សាយសម្រាប់ CEH បានថ្លែងប្រាប់ Healthline និង«មនុស្សជាច្រើននៃផលិតផលក្នុងចំនួនយ៉ាងខ្ពស់»។</p>\r\n<p>ការធ្វើតេស្តនេះបានជំរុញមិនរកកម្រៃដើម្បីដាក់ពាក្យបណ្តឹងប្រឆាំងនឹងថ្នាំជក់និងក្រុមហ៊ុនអេឡិចត្រូនិបារីផ្សេងទៀតសម្រាប់ការបរាជ័យក្នុងការព្រមានអតិថិជនអំពីសារធាតុគីមីទាំងនេះដូចដែលតម្រូវដោយសំណើ 65, ច្បាប់ការពារអតិថិជនរបស់រដ្ឋ California ។</p>\r\n<p>សេចក្តីប្រកាស CEH មកនៅថ្ងៃដដែលនោះជាការសមាគមន៍ជំងឺមហារីកអាមេរិករបស់មហាអាមេរិច Smokeout ព្រឹត្តិការណ៍ដែលបានរចនាឡើងដើម្បីជួយប្រជាជនឱ្យឡើងថ្នាំជក់មួយ។</p>', '2016-03-12-Tobacco-Companies-Sued-Over-Cancer-Causing-Substances-in-E-Cigarettes', 'uploads/blogs/blog_567f63d867ff6.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2016-03-12 19:55:17', 1),
(13, 2, 'Measles Vaccine Has Saved 17 Million Lives Since the Year 2000', 'ថ្នាំបង្ការជំងឺកញ្ជ្រឹលបានរក្សាទុក 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000', 'Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).\r\n', 'កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។', '<p>Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).</p>\r\n\r\n<p>Measles is one of the most contagious diseases ever known. A sick person will infect 90 percent of the unimmunized people with whom he or she comes into contact.</p>\r\n\r\n<p>Though it only rarely kills, children are especially vulnerable.</p>\r\n\r\n<p>Measles<br />\r\nIn 2001, WHO, the CDC, the American Red Cross, the United Nations Foundation, and UNICEF launched the Measles &amp; Rubella Initiative. The goal of the program was to cut deaths by 95 percent by 2015 and to eliminate measles altogether in five of six global regions by 2020.<br />\r\n&nbsp;</p>\r\n', '<p>កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។</p>\r\n\r\n<p>ក្ឹលជាផ្នែកមួយនៃជំងឺឆ្លងបំផុតដែលបានធ្លាប់បានដឹង។ អ្នកជំងឺនឹងឆ្លងបាន 90 ភាគរយនៃប្រជាជន unimmunized ដែលគាត់ឬនាងមានទំនាក់ទំនងជាមួយនរណា។</p>\r\n\r\n<p>ទោះបីជាវាតែកម្រសម្លាប់កុមារដែលងាយរងគ្រោះជាពិសេស។</p>\r\n\r\n<p>ក្ឹល<br />\r\nក្នុងឆ្នាំ 2001 អង្គការសុខភាពពិភពលោកដែលជារបស់ CDC អាមេរិកកាកបាទក្រហមមូលនិធិអង្គការសហប្រជាជាតិនិងអង្គការ UNICEF បានចាប់ផ្តើមគំនិតផ្តួចផ្តើកញ្ជ្រឹលនិងស្អូច។ គោលដៅនៃកម្មវិធីនេះគឺដើម្បីកាត់បន្ថយការស្លាប់ដោយ 95 ភាគរយនៅឆ្នាំ 2015 និងដើម្បីលុបបំបាត់ជំងឺកញ្ជ្រិលទាំងអស់គ្នាក្នុងប្រាំប្រាំមួយតាមតំបន់ជាសកលនៅឆ្នាំ 2020 ។</p>\r\n', '', 'uploads/blogs/blog_567f62fb68bf2.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:03:07', 7),
(14, 2, '9 Misconceptions You Probably Have About HIV/AIDS', '9 យល់ខុសអ្នកប្រហែលជាមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍', 'HIV/AIDS doesn’t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren’t even aware of it.', 'មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។', '<p>HIV/AIDS doesn&rsquo;t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren&rsquo;t even aware of it.</p>\r\n\r\n<p>But while the World Health Organization says that the virus has killed some 39 million people since 1981, HIV (human immunodeficiency virus) and AIDS (acquired immunodeficiency syndrome) continue to be plagued by misinformation.</p>\r\n\r\n<p>We reached out to several experts to get their opinions on what the most glaring misconceptions people in the United States have about HIV/AIDS. They treat people, educate medical students, and provide support to patients coping with the disease. Here are the top nine myths and misconceptions that they, and people with HIV or AIDS, continue to combat:</p>\r\n', '<p>មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។</p>\r\n\r\n<p>ប៉ុន្តែខណៈដែលអង្គការសុខភាពពិភពលោកនិយាយថាវីរុសនេះបានសម្លាប់មនុស្សប្រហែល 39 លាននាក់ចាប់តាំងពីឆ្នាំ 1981 មេរោគអេដស៍ (មេរោគមនុស្ស) និងជំងឺអេដស៍ (បណ្តុំរោគសញ្ញាហ៊ីបានទិញ) បន្តត្រូវបានញាំញីដោយការយល់ច្រឡំ។</p>\r\n\r\n<p>យើងបានឈានដល់ចេញទៅជាអ្នកជំនាញជាច្រើនដើម្បីទទួលបានមតិរបស់ខ្លួននៅលើអ្វីដែលជាការយល់ច្រឡំប្រលោះបំផុតនៅក្នុងការដែលមនុស្សសហរដ្ឋអាមេរិកមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍។ ពួកគេបានព្យាបាលមនុស្ស, អប់រំសិស្សនិស្សិតវេជ្ជសាស្រ្តនិងផ្តល់ការគាំទ្រដល់អ្នកជំងឺតស៊ូជាមួយនឹងជំងឺនេះ។ ខាងក្រោមនេះជារឿងព្រេងកំពូលនិងប្រាំបួនដែលថាពួកគេយល់ច្រឡំនិងអ្នកដែលមានផ្ទុកមេរោគអេដស៍ឬជំងឺអេដស៍នៅតែបន្តការប្រយុទ្ធគឺ:</p>\r\n', '', 'uploads/blogs/blog_567f649613b57.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:09:58', 6),
(15, 2, 'The Best ADHD Podcasts of 2015', 'នេះផតខាស់ ADHD ល្អបំផុតនៃឆ្នាំ 2015', 'Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Research', 'យកចិត្តទុកដាក់ភាពមិនប្រក្រតីឱនភាព (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ', '<p>Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Researchers still aren&rsquo;t sure exactly what causes it, but both genetic and environmental factors are believed to play major roles.</p>\r\n<p>Living with ADHD isn&rsquo;t easy. People with ADHD have trouble focusing on one task. They may fidget or get bored easily. The disorder can make it more difficult to accomplish goals at work or at school, and potentially interfere with your daily life.</p>\r\n<p><br /> Treatments for ADHD include medications, therapy, and educational programs that focus on keeping symptoms under control. While there is no cure, it can be more manageable with understanding and the right coping tools.</p>\r\n<p>These podcasts certainly fit the bill, and might offer some helpful strategies that you can apply in your daily life.</p>', '<p>ឱនភាពយកចិត្តទុកដាក់ជំងឺផ្ចង់អារម្មណ៍ (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ្វីនោះទេប៉ុន្តែកត្តាទាំងពីរហ្សែននិងបរិស្ថានត្រូវបានគេជឿថាដើម្បីដើរតួនាទីសំខាន់មួយ។</p>\r\n<p>ការរស់នៅជាមួយ ADHD គឺមិនមែនជាការងាយស្រួល។ មនុស្សដែលមាន ADHD មានបញ្ហាក្នុងការផ្តោតជាសំខាន់នៅលើភារកិច្ចតែមួយ។ ពួកគេអាចនោមិនសុខឬធុញទ្រាន់យ៉ាងងាយស្រួល។ ជំងឺនេះអាចធ្វើឱ្យវាមានការលំបាកបន្ថែមទៀតដើម្បីសម្រេចបានគោលដៅនៅកន្លែងធ្វើការឬនៅសាលានិងមានសក្តានុពលជ្រៀតជ្រែកជាមួយនឹងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>\r\n<p><br /> ការព្យាបាលសម្រាប់ ADHD រួមមានការប្រើថ្នាំ, ការព្យាបាល, និងកម្មវិធីអប់រំដែលផ្តោតជាសំខាន់នៅលើការរក្សារោគសញ្ញាមួយដែលស្ថិតនៅក្រោមការត្រួតពិនិត្យ។ ខណៈពេលដែលមានគឺជាការព្យាបាលនោះទេ, វាអាចត្រូវបានគ្រប់គ្រងដោយការយល់ដឹងនិងសិទ្ធិតស៊ូឧបករណ៍។</p>\r\n<p>ផតខាស់ទាំងនេះពិតជាសមនឹងវិក័យប័ត្រនិងអាចផ្តល់នូវយុទ្ធសាស្រ្តដែលមានប្រយោជន៍មួយចំនួនដែលអ្នកអាចអនុវត្តនៅក្នុងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>', '2016-02-04-The-Best-ADHD-Podcasts-of-2015', 'uploads/blogs/blog_567f655f6a8c8.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-02-04 12:29:57', 5),
(16, 1, 'Sad Songs Say So Much: The Music You Choose May Say Something About Your Mental Health', 'ចម្រៀងសោកស្តាយនិយាយថាដូច្នេះច្រើន: តន្រ្តីអ្នកជ្រើសអាចនិយាយអ្វីមួយអំពីសុខភាពផ្លូវចិត្តរបស់អ្នក', 'Researchers look into what different types of music do to listeners’ mental state as well as if music can help calm down those who are anxious.', 'អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។', '<p>Researchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p><br />\r\nResearchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p>Music Mental<br />\r\n&ldquo;Help! I need somebody. Help!&rdquo;</p>\r\n\r\n<p>The Beatles blasted out that well-known tune in 1965.</p>\r\n\r\n<p>Whether you prefer pop, heavy metal, or hip-hop, the songs you choose may provide a glimpse into the state of your mental health.</p>\r\n\r\n<p>They may also have long-lasting effects on your mood.</p>\r\n\r\n<p>Can sad songs cheer you up? Do aggressive songs put you on edge? That depends on which expert you are tuning in to.</p>\r\n', '<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p><br />\r\nអ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>តន្ត្រីផ្លូវចិត្ត<br />\r\n&quot;ជួយ! ខ្ញុំ​ត្រូវ​ការ​នរណា​ម្នាក់។ ជំនួយ! &quot;</p>\r\n\r\n<p>ក្រុម Beatles បានផ្ទុះចេញបទភ្លេងល្បីថានៅក្នុងឆ្នាំ 1965 ។</p>\r\n\r\n<p>ថាតើអ្នកចូលចិត្តការលេចលោហៈធ្ងន់ឬហ៊ីបហបចម្រៀងដែលអ្នកបានជ្រើសអាចផ្តល់ឃើញចូលទៅក្នុងស្ថានភាពនៃសុខភាពផ្លូវចិត្តរបស់អ្នក។</p>\r\n\r\n<p>ពួកគេអាចមានឥទ្ធិពលយូរអង្វែងលើអារម្មណ៍របស់អ្នក។</p>\r\n\r\n<p>ច្រៀងបទកម្សត់អាចស្រែកហ៊ោអ្នកឡើង? តើបទចម្រៀងឈ្លានពានដាក់អ្នកនៅលើគែម? ដែលអាស្រ័យទៅលើការដែលជាអ្នកជំនាញដែលអ្នកត្រូវបានបើកនៅក្នុងការទៅ។</p>\r\n', '', 'uploads/blogs/blog_567f6643c2aed.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2015-12-27 05:17:07', 3),
(17, 1, 'Stage 4 Renal Cell Carcinoma: Treatment and Prognosis', 'ដំណាក់កាលទី 4 ជំងឺមហារីកកោសិកា Renal: ការព្យាបាលនិងការព្យាករណ៍', 'Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including', 'កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាប្រឈមនឹងគ្រោះថ្នាក់ជាច្រើនសម្រាប់ការអភិវឌ្ឍ RCC រួមទាំងការគឺមាន', '<p>Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including:</p>\r\n<p>a family history of the disease<br /> smoking<br /> obesity<br /> polycystic kidney disease<br /> The earlier it’s detected, the greater your chance for effective treatment.</p>\r\n<p>RCC Staging<br /> Doctors who diagnose and treat RCC and other types of cancer use a staging system. Each RCC patient’s cancer is given a number designation ranging from 1 to 4. Stage 1 is the earliest stage of the disease and 4 is the latest and most advanced.</p>', '<p>កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាហានិភ័យក្នុងការវិវត្តទៅ RCC រួមទាំងការគឺ:</p>\r\n<p>ប្រវត្តិគ្រួសារនៃជំងឺនេះ<br /> ការជក់បារី<br /> ការធាត់<br /> ជំងឺតម្រងនោម polycystic<br /> នេះជាឱកាសរបស់អ្នកសំរាប់ការព្យាបាលដែលមានប្រសិទ្ធិភាពកាលពីមុនវាត្រូវបានរកឃើញកាន់តែច្រើន។</p>\r\n<p>ដំណាក់កាល RCC<br /> គ្រូពេទ្យដែលធ្វើរោគវិនិច្ឆ័យនិងព្យាបាល RCC និងប្រភេទដទៃទៀតនៃជំងឺមហារីកប្រើប្រព័ន្ធឆាក។ ជំងឺមហារីកអ្នកជំងឺ RCC នីមួយគឺត្រូវបានផ្តល់ឱ្យមួយចំនួនរាប់ចាប់រចនាពី 1 ទៅ 4 ដំណាក់កាលទី 1 នេះគឺជាដំណាក់កាលដំបូងនៃជំងឺនេះនិងទី 4 គឺជាចុងក្រោយនិងទំនើបបំផុត។</p>', '2016-03-12-Stage-4-Renal-Cell-Carcinoma:-Treatment-and-Prognosis', 'uploads/blogs/blog_567f671894641.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2016-03-12 19:48:25', 2),
(18, 1, 'What Does It Feel Like When You Have a Blood Clot?', 'តើវាមានអារម្មណ៍ដូចជាពេលដែលអ្នកមានកំណកឈាមមួយ?', 'When a blood clot occurs in one of your veins, it’s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 peop', 'នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបាន', '<p><br />\r\nWhen a blood clot occurs in one of your veins, it&rsquo;s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 people in the United States are affected by this condition annually. The CDC further estimates that 60,000 to 100,000 people die from this condition annually.</p>\r\n\r\n<p>If you&rsquo;re even slightly concerned you might have a blood clot, you should call your doctor right away. Symptoms of blood clots can vary, and it&rsquo;s possible to have a blood clot with no symptoms.</p>\r\n\r\n<p>Learn more about some of the symptoms that may indicate a blood clot.</p>\r\n', '<p>នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបានរងផលប៉ះពាល់ដោយជំងឺនេះជារៀងរាល់ឆ្នាំ។ CDC បានបន្តទៀតបានប៉ាន់ប្រមាណថា 60,000 ទៅ 100,000 នាក់ស្លាប់ដោយសារជំងឺនេះជារៀងរាល់ឆ្នាំ។</p>\r\n\r\n<p>ប្រសិនបើអ្នកកំពុងសូម្បីតែមានការព្រួយបារម្ភបន្តិចអ្នកអាចមានដុំកំណកឈាម, អ្នកគួរហៅទូរស័ព្ទទៅវេជ្ជបណ្ឌិតរបស់អ្នកស្តាំទៅឆ្ងាយ។ រោគសញ្ញានៃកំណកឈាមអាចប្រែប្រួល, ហើយវាជាការដែលអាចធ្វើឱ្យមានកំណកឈាមដែលមានរោគសញ្ញានោះទេ។</p>\r\n\r\n<p>ស្វែងយល់បន្ថែមអំពីរោគសញ្ញាមួយចំនួនដែលអាចបង្ហាញដុំកំណកឈាមនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f67d468fd8.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:23:48', 10),
(19, 1, 'Can Cycling Cause Erectile Dysfunction?', 'ប្រណាំងកង់អាចបង្កឱ្យលិង្គងាប់?', 'Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and othe', 'ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្ស', '<p>Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and other people are more serious riders who spend hours a day on a bike.</p>\r\n\r\n<p>Men who bike can experience erection problems as an unintended consequence of spending too much time on a bike seat. The link between riding and erection problems isn&rsquo;t new. In fact, the Greek physician Hippocrates identified sexual issues in male horseback riders when he said &ldquo;The constant jolting on their horses unfits them for intercourse.&rdquo;</p>\r\n\r\n<p>Here&rsquo;s why riding a bike can affect your ability to achieve an erection and how to prevent cycling from putting the brakes on your sex life.</p>\r\n', '<p>ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្សេងទៀតមានអ្នកជិះកង់ធ្ងន់ធ្ងរដែលបានចំណាយពេលម៉ោងក្នុងមួយថ្ងៃនៅលើកង់មួយ។</p>\r\n\r\n<p>បុរសដែលជិះកង់អាចជួបប្រទះបញ្ហាក្នុងការឡើងរឹងរបស់លិង្គដែលជាផលវិបាកនៃការចំណាយពេលវេលាច្រើនពេកនៅលើកៅអីកង់មួយ។ ការផ្សារភ្ជាប់គ្នារវាងបញ្ហាក្នុងការធ្វើដំណើរការនិងការឡើងរឹងរបស់លិង្គនោះគឺមិនមែនថ្មីទេ។ នៅក្នុងការពិតដែលគ្រូពេទ្យក្រិក Hippocrates បានកំណត់អត្តសញ្ញាណពីបញ្ហាផ្លូវភេទនៅក្នុងអ្នកជិះកង់នៅពេលដែលគាត់ជាប្រុសខ្នងសេះបាននិយាយថា &quot;ការបណ្ដាច់មិត្ដថេរនៅលើសេះរបស់ពួកគេឱ្យពួកគេសម្រាប់ការរួមភេទ unfits &raquo;។</p>\r\n\r\n<p>ខាងក្រោមនេះជាមូលហេតុដែលជាការជិះកង់អាចប៉ះពាល់ដល់សមត្ថភាពរបស់អ្នកក្នុងការសម្រេចបាននូវការឡើងរឹងរបស់លិង្គនិងរបៀបការពារការប្រណាំងកង់មកពីការដាក់ហ្វ្រាំងលើជីវិតផ្លូវភេទរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6889759ea.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:26:49', 10),
(20, 1, 'Show Us Your Mastectomy Tattoos!', 'បង្ហាញយើងពីការចាក់សាក់ទំហំរបស់អ្នក!', 'Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed', 'ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬ', '<p>Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed, while others use the surgery as a preventative measure.&nbsp;</p>\r\n\r\n<p>Losing a part of yourself is a life-altering experience, and some women are expressing that with art, covering up their scars with tattoos. Powerful as well as beautiful, they inspire us all.</p>\r\n\r\n<p>Do you have a mastectomy tattoo? Share it with us at social@healthline.com so that you can inspire others! In your email, please include 1) a clear photo of your tattoo, 2) a short description of what your tattoo means to you and 3) whether you would like your name to be included with your submission.</p>\r\n', '<p>ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬពីរដងដោយ msterctomy នៅពេលដែលពួកគេត្រូវបានគេធ្វើរោគវិនិច្ឆ័យឃើញខណៈពេលដែលអ្នកផ្សេងទៀតប្រើការវះកាត់ជាវិធានការបង្ការ។</p>\r\n\r\n<p>ការបាត់បង់ផ្នែកមួយនៃខ្លួនឯងមួយគឺជាបទពិសោធជីវិតការផ្លាស់ប្ដូរនិងស្ត្រីមួយចំនួនកំពុងសម្តែងថាជាមួយនឹងសិល្បៈ, គ្របដណ្តប់របស់ខ្លួនជាមួយនឹងស្នាមឡើងការចាក់សាក់។ ដែលមានឥទ្ធិពលដូចជាស្រស់ស្អាត, ដែលពួកគេបានជម្រុញឱ្យយើងទាំងអស់។</p>\r\n\r\n<p>តើអ្នកមានសាក់រូបដោយ msterctomy មួយ? ចែករំលែកវាជាមួយពួកយើងនៅ social@healthline.com ដូច្នេះអ្នកអាចជម្រុញឱ្យអ្នកផ្សេង! ក្នុងអ៊ីមែលរបស់អ្នកសូមបញ្ចូលទី 1) រូបថតច្បាស់លាស់នៃការសាក់របស់អ្នក, 2) សេចក្ដីសង្ខេបនៃអ្វីដែលការសាក់របស់អ្នកដែលមានន័យថាដើម្បីអ្នកនិង 3) តើអ្នកចង់ឱ្យឈ្មោះរបស់អ្នកត្រូវបានរួមបញ្ចូលជាមួយនឹងការស្នើរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6adf6e671.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:48', 9),
(21, 1, 'The Top 8 Products to Help You Quit Smoking', 'កំពូលផលិតផល 8 ដើម្បីជួយអ្នកឈប់ជក់បារី', 'Almost 18 percent of American adults smoke cigarettes, according to the Centers for Disease Control and Prevention (CDC). And nearly 70 percent of those smokers admit to wanting to quit.', 'ស្ទើរតែ 18 ភាគរយនៃមនុស្សពេញវ័យជនជាតិអាមេរិកជក់បារីនេះបើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ។ និងជិត 70 ភាគរយនៃអ្នកជក់បារីអ្នកដែលបានទទួលស្គាល់ថាដើម្បីចង់ឈប់។', '<p>More Americans are addicted to nicotine &mdash; the drug in cigarettes &mdash; than any other drug. And because nicotine is so addictive, it isn&rsquo;t a drug you can just put down. Quitting can take several attempts. But the benefits are many. Quitters reduce their risk for several types of cancer, as well as heart disease, vascular disease, respiratory problems, infertility, and lung diseases like COPD.</p>\r\n\r\n<p>So where can those who want to quit find help? There are numerous services and products that can help smokers put down their cigarettes for good. We&rsquo;ve rounded up some of the best.</p>\r\n', '<p>ជនជាតិអាមេរិកកាន់តែច្រើនញៀននីកូទីន - គ្រឿងញៀននៅក្នុងបារី - ជាងថ្នាំដទៃទៀតណាមួយទេ។ ហើយដោយសារតែជាតិនីកូទីនជាគ្រឿងញៀនបានដូច្នេះវាមិនមែនជាថ្នាំដែលអ្នកអាចគ្រាន់តែដាក់ចុះ។ * ការឈប់ជក់បារីអាចយកជាការប៉ុនប៉ងមួយចំនួន។ ប៉ុន្តែការទទួលបានផលប្រយោជន៍ជាច្រើន។ ឈប់ជក់បន្ថយហានិភ័យរបស់ពួកគេសម្រាប់ប្រភេទជាច្រើននៃជំងឺមហារីកដូចជាជំងឺបេះដូង, ជំងឺសរសៃឈាម, បញ្ហាផ្លូវដង្ហើម, ការគ្មានកូននិងជំងឺសួតដូចជាការជំងឺផ្លូវដង្ហើមធ្ងន់ធ្ងរ។</p>\r\n\r\n<p>ដូច្នេះតើពួកអ្នកដែលចង់ឈប់ជក់បារីអាចរកជំនួយ? មានសេវានិងផលិតផលដែលអាចជួយអ្នកជក់បារីអោយដាក់ចុះបារីរបស់ពួកគេសម្រាប់ការល្អច្រើន។ យើងបានបង្គត់ឡើងមួយចំនួននៃការល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f6c3b7c87e.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:42:35', 8),
(23, 2, '6 Unique Elliptical Exercises to Burn More Calories', '6 លំហាត់រាងពងក្រពើមានតែមួយគត់ក្នុងការដុតកម្ទេចកាឡូរីច្រើនជាង', 'When it comes to cardio, the elliptical machine may be one of the best machines out there.', 'នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។', '<p>When it comes to cardio, the elliptical machine may be one of the best machines out there.</p>\r\n\r\n<p>Safe and efficient, the low-impact workout is easier on the joints than running, which makes it a fantastic cardio option for people with knee, hip, or ankle problems. If done properly, sweating it out on an elliptical can also can be effective, working the arms, legs, and core.</p>\r\n\r\n<p>In fact, studies show that elliptical workouts can be just as effective as the treadmill or stair climber for improving or maintaining your aerobic endurance. Using the moving arms available on most machines allows you to engage your upper body, and adjusting the incline and resistance can really help engage your glutes, calves, and hamstrings.</p>\r\n', '<p>នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។</p>\r\n\r\n<p>មានសុវត្ថិភាពនិងមានប្រសិទ្ធិភាព, ការសាកល្បងទាបនិងផលប៉ះពាល់គឺមានភាពងាយស្រួលនៅលើសន្លាក់ជាងការរត់ដែលធ្វើឱ្យវាជាជម្រើសបេះដូងអស្ចារ្យសម្រាប់មនុស្សដែលមានបញ្ហាជង្គង់ត្រគាកឬកជើង។ ប្រសិនបើធ្វើបានត្រឹមត្រូវ, បែកញើសវាចេញនៅលើពងក្រពើមួយដែលអាចអាចមានប្រសិទ្ធិភាព, ធ្វើការលើដៃ, ជើង, និងការស្នូល។</p>\r\n\r\n<p>ជាការពិតការសិក្សាបានបង្ហាញថាការហាត់ប្រាណគឺអាចមានរាងអេលីបមានប្រសិទ្ធភាពដូចគ្រាន់តែឬជណ្តើរហាត់ប្រាណឡើងភ្នំសម្រាប់ការកែលម្អឬរក្សាចិត្ដស៊ូទ្រាំប្រាណរបស់អ្នក។ ការប្រើប្រាស់អាវុធការផ្លាស់ប្តូរនេះអាចរកបាននៅលើម៉ាស៊ីនភាគច្រើនបំផុតដែលអនុញ្ញាតឱ្យអ្នកចូលរួមរាងកាយផ្នែកខាងលើរបស់អ្នកនិងលៃតម្រូវផាបតេរនិងភាពធន់ទ្រាំពិតជាអាចជួយចូលរួមរបស់អ្នក glutes, calves និងសរសៃពួរគន្លាក់ជើង។</p>\r\n', '', 'uploads/blogs/blog_567f6dfa7072b.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:50:02', 4),
(24, 1, '10 Classic Christmas Movies to Watch with Your Kids', 'ភាពយន្តបុរាណបុណ្យណូអែល 10 ស៊ូទ្រាំប្រុងស្មារតីជាមួយកុមាររបស់អ្នក', 'Christmas is a festive time of year, and nothing puts people in the holiday mood like a quality Christmas movie.', 'បុណ្យណូអែលគឺជាពេលវេលាបុណ្យនៃឆ្នាំហើយគ្មានអ្វីដែលបានធ្វើឱ្យប្រជាជននៅក្នុងអារម្មណ៍ថ្ងៃឈប់សម្រាកដូចជាខ្សែភាពយន្តបុណ្យណូអែលដែលមានគុណភាព។', '<p>Christmas is a festive time of year, and nothing puts people in the holiday mood like a quality Christmas movie.</p>\r\n\r\n<p>New movies are made every year. But when you want to sit down and watch a Christmas movie with your kids, you want a tried and true classic.</p>\r\n\r\n<p>Here&rsquo;s a list of 10 classic Christmas movies to watch with your kid this year.</p>\r\n', '<p>បុណ្យណូអែលគឺជាពេលវេលាបុណ្យនៃឆ្នាំហើយគ្មានអ្វីដែលបានធ្វើឱ្យប្រជាជននៅក្នុងអារម្មណ៍ថ្ងៃឈប់សម្រាកដូចជាខ្សែភាពយន្តបុណ្យណូអែលដែលមានគុណភាព។</p>\r\n\r\n<p>ខ្សែភាពយន្ដថ្មីដែលត្រូវបានធ្វើឡើងជារៀងរាល់ឆ្នាំ។ ប៉ុន្តែនៅពេលដែលអ្នកចង់អង្គុយចុះនិងការមើលខ្សែភាពយន្ដបុណ្យណូអែលជាមួយនឹងកូនរបស់អ្នក, អ្នកចង់បានជាបុរាណព្យាយាមនិងការពិត។</p>\r\n\r\n<p>ខាងក្រោមនេះជាបញ្ជីនៃខ្សែភាពយន្តបុណ្យណូអែលបុរាណ 10 ទៅប្រុងស្មារតីជាមួយកូនរបស់អ្នកនៅឆ្នាំនេះនោះទេ។</p>\r\n', '', 'uploads/blogs/blog_5683eef746882.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-02-04 12:29:30', 7);
INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(25, 1, 'Cholesterol Control: 5 Heart-Healthy Scallops Recipes', 'ការត្រួតពិនិត្យកូឡេស្តេរ៉ុល: 5 សុខភាពបេះដូង scallop បង្កាន់ដៃ', 'Seafood is good for you, right? It’s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you’re minding your cholesterol levels, you can never be too cautious. As you’ll see in the case of scal', 'អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នក', '<p><br />\r\nSeafood is good for you, right? It&rsquo;s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you&rsquo;re minding your cholesterol levels, you can never be too cautious. As you&rsquo;ll see in the case of scallops, the devil is in the preparation details.</p>\r\n\r\n<p>Scallops have a mild flavor and you&rsquo;ll often find them on a plate swimming in a sea of butter. In this case, scallops would not be a wise menu choice if you&rsquo;re watching your cholesterol, but it&rsquo;s not due to the scallops themselves.</p>\r\n', '<p>អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នកនឹងឃើញនៅក្នុងករណីនៃការខ្យង, អារក្សគឺនៅក្នុងសេចក្ដីលម្អិតរៀបចំខ្លួន។</p>\r\n\r\n<p>មានរសជាតិស្រាល scallops និងច្រើនអ្នកនឹងរកឃើញពួកវានៅលើចានមួយនៅក្នុងការហែលទឹកសមុទ្រនៃ butter មួយ។ ក្នុងករណីនេះ scallops នឹងមិនត្រូវម៉ឺនុយឱ្យជ្រើសរើសប្រាជ្ញាបើអ្នកកំពុងមើលកូឡេស្តេរ៉ុលរបស់អ្នកប៉ុន្តែវាមិនមែនដោយសារការខ្យងខ្លួនឯង។</p>\r\n', '', 'uploads/blogs/blog_5683ef68c747d.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2015-12-30 15:51:20', 6),
(26, 2, '9 Nut-Free Holiday Dessert Recipes', '9 ថ្ងៃឈប់សម្រាកបង្អែមបង្កាន់ដៃដោយឥតគិតថ្លៃយចន', 'Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, “Are there nuts in this?”', 'ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង "តើមានគ្រាប់នៅក្នុងនេះ?"', '<p>Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, &ldquo;Are there nuts in this?&rdquo;</p>\r\n\r\n<p>Fortunately, there are many nut-free dessert options that you can make and eat, worry-free. Just be sure to check each ingredient&rsquo;s label to be sure they are nut-free as well. Some ingredients are nut-free but may be made in a factory that processes nuts, such as most commercial chocolate. Luckily, nut-free chocolate is now available at most grocery stores.</p>\r\n\r\n<p>Here, we&rsquo;ve rounded up some of the best recipes.</p>\r\n', '<p>ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង &quot;តើមានគ្រាប់នៅក្នុងនេះ?&quot;</p>\r\n\r\n<p>ជាសំណាងល្អមានជម្រើសបង្អែមដោយឥតគិតថ្លៃជាច្រើនយចនដែលអ្នកអាចធ្វើឱ្យមាននិងញ៉ាំព្រួយបារម្ភដោយឥតគិតថ្លៃគឺ។ គ្រាន់តែត្រូវប្រាកដថាដើម្បីពិនិត្យមើលស្លាកធាតុផ្សំគ្នាដើម្បីឱ្យប្រាកដថាពួកគេគឺជាប្រភេទណាត់ដោយឥតគិតថ្លៃផងដែរ។ គ្រឿងផ្សំដែលមនុស្សមួយចំនួនមានចន-ឥតគិតថ្លៃប៉ុន្តែអាចត្រូវបានធ្វើឡើងនៅក្នុងរោងចក្រកែច្នៃគ្រាប់ដូចជាសូកូឡាពាណិជ្ជកម្មភាគច្រើនបំផុត។ សំណាងល្អ, សូកូឡាចនដោយឥតគិតថ្លៃឥឡូវអាចប្រើបាននៅតាមហាងលក់គ្រឿងទេសភាគច្រើនបំផុត។</p>\r\n\r\n<p>នៅទីនេះយើងបានបង្គត់ឡើងមួយចំនួននៃរូបមន្តល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f7846f0b06.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:46', 3),
(27, 1, 'How to Celebrate Their First Lost Tooth', 'តើធ្វើដូចម្តេចដើម្បីប្រារព្ធលើកដំបូងរបស់ពួកគេបានបាត់បង់ធ្មេញ', 'The first lost tooth is a major milestone.\r\n\r\n\r\nAlthough most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, ', 'នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។\r\n\r\n\r\nទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជា', '<p>The first lost tooth is a major milestone.</p>\r\n\r\n<p>Although most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, before eventually shedding it, is a feeling like no other.</p>\r\n\r\n<p>Before you get all teary eyed, remember that this is a cause for celebration, and how you celebrate the loss of a tooth is entirely up to you and your child. From the American tooth fairy to France&rsquo;s La Petite Souris, there are all sorts of fun traditions that will help you say goodbye to baby teeth and baby days.</p>\r\n', '<p>នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។</p>\r\n\r\n<p>ទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជាមួយអណ្តាតរបស់ពួកគេមុនពេលដែលនៅទីបំផុតការបង្ហូរវាគឺជាអារម្មណ៍ដូចផ្សេងទៀតទេ។</p>\r\n\r\n<p>មុនពេលអ្នកទទួលភ្នែកស្រក់ទឹកទាំងអស់, ចាំបានថានេះគឺជាហេតុមួយសម្រាប់ការសំដែងនិងរបៀបដែលអ្នកអបអរការបាត់បង់នៃធ្មេញមួយនោះគឺទាំងស្រុងឡើងទៅអ្នកនិងកូនរបស់អ្នក។ ពីទេពអប្សរឡាធ្មេញអាមេរិចរបស់ប្រទេសបារាំងញត្តិ Souris, មានគ្រប់ប្រភេទទាំងអស់នៃប្រពៃណីភាពសប្បាយរីករាយដែលនឹងជួយអ្នកក្នុងការនិយាយថាលាធ្មេញរបស់ទារកនិងថ្ងៃទារកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f78d6bd9e8.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2015-12-27 06:36:22', 5),
(28, 2, '6 Tips to Create Lasting Christmas Traditions for Kids', '6 គន្លឹះដើម្បីបង្កើតស្ថិតស្ថេរប្រពៃណីបុណ្យណូអែលសម្រាប់កុមារ', 'Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.', 'ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។', '<p>Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.</p>\r\n\r\n<p>From decorating sugar cookies, to caroling, to trimming the tree, much of the magic of Christmas comes from our family traditions.</p>\r\n\r\n<p>We&rsquo;ve rounded up different ideas from around the web so you can start your own Christmas traditions with your family this year.</p>\r\n', '<p>ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។</p>\r\n\r\n<p>ចាប់តាំងពីការតុបតែងខូឃីស៍ស្ករ Carol ដើម្បីកាត់បន្ថយការមែកធាងច្រើននៃមន្តអាគមនៃបុណ្យគ្រីស្ទបានមកពីទំនៀមទំលាប់គ្រួសាររបស់យើង។</p>\r\n\r\n<p>យើងបានប្រមូលគំនិតប្លែកគ្នាពីជុំវិញតំបន់បណ្តាញដូច្នេះអ្នកអាចចាប់ផ្តើមទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលរបស់អ្នកផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកនៅឆ្នាំនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f798cd45a1.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:44', 2),
(29, 1, 'The Cutest First Day of School Photo Ideas', 'នៅថ្ងៃដំបូងនៃគំនិតរូបថត Cutest សាលា', 'Despite what you’ll find on Pinterest, there aren’t a lot of moms out there who’ve managed to thoughtfully chronicle their children’s lives.', 'បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។', '<p>Despite what you&rsquo;ll find on Pinterest, there aren&rsquo;t a lot of moms out there who&rsquo;ve managed to thoughtfully chronicle their children&rsquo;s lives.</p>\r\n\r\n<p>Take me, for example: I have nothing close to a baby book. I have a trash bag filled with art projects and school assignments that I plan to organize, someday. The only reason I remember my kids&rsquo; first words is because I forced myself to (they were &ldquo;cat&rdquo; and &ldquo;ball&rdquo; by the way &mdash; I need to show off this knowledge whenever I get the chance).</p>\r\n\r\n<p>But one ritual I&rsquo;ve been able to stick to, despite my laziness, is the first day of school picture. Every year on that first day, I make my kids stand in front of our front door and take their picture. There are no fancy signs and I don&rsquo;t make them get dressed up.</p>\r\n\r\n<p>But if you are moderately more together than me, there are a lot of great ideas out there for how to make your child&rsquo;s first day of school photo special.</p>\r\n\r\n<p>Here are 10 ideas to get you started.</p>\r\n', '<p>បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។</p>\r\n\r\n<p>យកខ្ញុំឧទាហរណ៍: ខ្ញុំមិនមានអ្វីដែលស្និទ្ធនឹងសៀវភៅទារក។ ខ្ញុំមានថង់សំរាមមួយដែលពោរពេញទៅដោយគម្រោងជាសិល្បៈនិងកិច្ចការសាលាដែលខ្ញុំមានគម្រោងរៀបចំនៅថ្ងៃមួយ។ មូលហេតុតែមួយគត់ដែលខ្ញុំបានចាំពាក្យដំបូងកូនរបស់ខ្ញុំគឺដោយសារតែខ្ញុំត្រូវបង្ខំចិត្ត (ពួកគេត្រូវបាន &quot;ឆ្មា&quot; និង &quot;កូនបាល់&quot; ដោយវិធីនេះ - ខ្ញុំត្រូវការដើម្បីបង្ហាញពីចំណេះដឹងនេះនៅពេលណាខ្ញុំទទួលបានឱកាសនេះ) ។</p>\r\n\r\n<p>ប៉ុន្តែពិធីសាសនាមួយដែលខ្ញុំបានអាចបិទបើទោះជាខ្ជិលរបស់ខ្ញុំជាថ្ងៃដំបូងនៃរូបភាពសាលា។ ជារៀងរាល់ឆ្នាំនៅថ្ងៃដំបូងដែលខ្ញុំបានធ្វើឱ្យកូនរបស់ខ្ញុំឈរនៅពីមុខទ្វារខាងមុខរបស់យើងនិងយករូបភាពរបស់ពួកគេ។ វាមិនមានសញ្ញាពុម្ពអក្សរក្បូរក្បាច់គឺជាអ្នកហើយខ្ញុំមិនបានធ្វើឱ្យពួកគេទទួលបានស្លៀកពាក់ឡើង។</p>\r\n\r\n<p>ប៉ុន្តែប្រសិនបើអ្នកគឺជាអ្នកសមល្មមទៀតជាជាងខ្ញុំនោះមានគំនិតយ៉ាងច្រើនកុះករនៅទីនោះសម្រាប់របៀបដើម្បីធ្វើឱ្យថ្ងៃដំបូងរបស់កូនអ្នករូបថតសាលាពិសេសគឺ។</p>\r\n\r\n<p>ខាងក្រោមនេះជាគំនិតយោបល់ក្នុងការទទួលបានចំនួន 10 បានចាប់ផ្តើមជាអ្នកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f7a56a632a.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2015-12-27 06:42:46', 4),
(30, 1, 'Loneliness Can Make You Sick, But Don’t Blame the Internet', 'ភាពឯកោអាចធ្វើអោយអ្នកឈឺ, ប៉ុន្តែមិនបន្ទោសអ៊ិនធឺណិ', 'A new study has found that feeling socially isolated is linked to cellular changes that weaken the immune system and increase inflammation in the body.', 'ការសិក្សាថ្មីមួយបានរកឃើញថាមានអារម្មណ៍ដាច់ឆ្ងាយពីសង្គមត្រូវបានផ្សារភ្ជាប់ទៅនឹងការផ្លាស់ប្តូរកោសិកាដែលចុះខ្សោយប្រព័ន្ធភាពស៊ាំនិងការបង្កើនការរលាកក្នុងរាងកាយ។', '<p>Ah, solitude. What feels refreshing to some can be crippling for others.</p>\r\n<p>Feeling isolated from other people when we wish we weren&rsquo;t isn&rsquo;t just unpleasant. It&rsquo;s also bad for us.</p>\r\n<p>Whether it strikes late at night when we are alone, or in the form of feeling like you don&rsquo;t belong in the middle of a crowded party, the sharp sting of social isolation is unmistakable.</p>\r\n<p>And it&rsquo;s not just in our heads; the effects of that sensation are felt deep inside our bodies, at the level of our cells and DNA.</p>\r\n<p>These kinds of physiological changes, say the authors of a new study, help explain the link seen in earlier studies between social isolation and poor health. This includes an increased risk of early death among the chronically lonely.</p>\r\n<p>&nbsp;</p>', '<p><img style="height: 378px; width: 800px;" src="/uploads/finder/NewFolder/14460-illustration-of-a-key-pv.png" alt="" />Ah, នៅតែឯង។ តើអ្វីទៅជាមានអារម្មណ៍ថាមានកម្លាំងចិត្ដមួយចំនួនអាចត្រូវបានយ៉ាងខ្លាំងសម្រាប់អ្នកដទៃ។</p>\r\n<p>មានអារម្មណ៍ដាច់ឆ្ងាយពីប្រជាជនផ្សេងទៀតនៅពេលដែលយើងប្រាថ្នាថាយើងមិនត្រូវបានគេគឺមិនមែនគ្រាន់តែមិនរីករាយ។ វាជាការអាក្រក់ផងដែរសម្រាប់ពួកយើង។</p>\r\n<p>មិនថាវាកើតនៅពេលយប់នៅពេលដែលយើងនៅម្នាក់ឯងឬនៅក្នុងសំណុំបែបបទនៃការមានអារម្មណ៍ដូចជាអ្នកមិនមែនជារបស់នៅកណ្តាលនៃគណបក្សដែលមានមនុស្សច្រើនដែលជាទ្រនិចយ៉ាងខ្លាំងនៃភាពឯកោសង្គមគឺច្បាស់លាស់។</p>\r\n<p>ហើយវាមិនមែនគ្រាន់តែនៅក្នុងក្បាលរបស់យើង; ផលប៉ះពាល់នៃអារម្មណ៍ដែលត្រូវបានមានអារម្មណ៍យ៉ាងជ្រាលជ្រៅនៅក្នុងរាងកាយរបស់យើង, នៅក្នុងកម្រិតនៃកោសិកានិង DNA របស់យើងនោះទេ។</p>\r\n<p>ប្រភេទនៃការផ្លាស់ប្តូរសរីរវិទ្យាទាំងនេះបាននិយាយថាអ្នកនិពន្ធនៃការសិក្សាថ្មីមួយនេះជួយពន្យល់តំណឃើញនៅក្នុងការសិក្សានានាពីមុនរវាងភាពឯកោសង្គមនិងសុខភាពប្រជាជនក្រីក្រ។ នេះរួមបញ្ចូលទាំងការកើនឡើងហានិភ័យនៃការស្លាប់មុនអាយុក្នុងចំណោមឯកោរ៉ៃ។</p>', '2016-02-05-Loneliness-Can-Make-You-Sick,-But-Don’t-Blame-the-Internet', 'uploads/blogs/blog_567f7afe1d175.jpg', 0, 1, 1, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_tags`
--

CREATE TABLE IF NOT EXISTS `tbl_blog_tags` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `id_blog` int(10) NOT NULL,
  `id_tag` int(10) NOT NULL,
  `is_published` tinyint(4) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_blog_tags`
--

INSERT INTO `tbl_blog_tags` (`id`, `id_blog`, `id_tag`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 30, 1, 0, '0000-00-00 00:00:00', '2016-02-26 13:11:11'),
(2, 30, 1, 0, '0000-00-00 00:00:00', '2016-02-26 17:16:55'),
(3, 30, 4, 0, '0000-00-00 00:00:00', '2016-02-26 17:17:02'),
(5, 4, 1, 0, '0000-00-00 00:00:00', '2016-02-26 17:19:14'),
(6, 12, 4, 0, '0000-00-00 00:00:00', '2016-02-26 18:50:32'),
(7, 12, 3, 0, '0000-00-00 00:00:00', '2016-02-26 18:50:35'),
(8, 12, 2, 0, '0000-00-00 00:00:00', '2016-02-26 18:50:37'),
(9, 12, 1, 0, '0000-00-00 00:00:00', '2016-02-26 18:50:40'),
(10, 28, 4, 0, '0000-00-00 00:00:00', '2016-02-26 18:51:49'),
(11, 26, 3, 0, '0000-00-00 00:00:00', '2016-02-26 18:52:16'),
(12, 17, 4, 0, '0000-00-00 00:00:00', '2016-02-26 18:59:39'),
(13, 16, 4, 0, '0000-00-00 00:00:00', '2016-02-26 18:59:53'),
(14, 29, 4, 0, '0000-00-00 00:00:00', '2016-02-26 19:00:23'),
(15, 27, 4, 0, '0000-00-00 00:00:00', '2016-02-26 19:00:39'),
(16, 25, 4, 0, '0000-00-00 00:00:00', '2016-02-26 19:01:18'),
(17, 24, 4, 0, '0000-00-00 00:00:00', '2016-02-26 19:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_consultant_images`
--

CREATE TABLE IF NOT EXISTS `tbl_consultant_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_consultant_images`
--

INSERT INTO `tbl_consultant_images` (`id`, `image`, `modified_dt`, `is_active`) VALUES
(1, 'uploads/consultant-images/consultant_image_56edf6c5588ab.jpg', '2016-03-20 02:03:01', 1),
(2, 'uploads/consultant-images/consultant_image_56e50dc46b112.jpg', '2016-03-15 15:31:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_email`
--

CREATE TABLE IF NOT EXISTS `tbl_contact_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(100) NOT NULL,
  `security` varchar(30) NOT NULL,
  `port` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_contact_email`
--

INSERT INTO `tbl_contact_email` (`id`, `host`, `security`, `port`, `user`, `password`, `modified_dt`, `is_deleted`) VALUES
(1, 'mail.krupet.com', 'Normal', '25', 'smtp@krupet.com', 'Wim3!Es', '2016-01-03 07:40:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_information`
--

CREATE TABLE IF NOT EXISTS `tbl_contact_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_contact_information`
--

INSERT INTO `tbl_contact_information` (`id`, `alais`, `title`, `content`, `modified_dt`, `is_published`, `is_deleted`) VALUES
(1, 'address', 'Address', 'Phnom Penh', '2016-02-25 01:18:49', 1, 0),
(2, 'phone', 'Phone Number', '+(855) 17 567 099', '2016-01-10 07:32:37', 1, 0),
(3, 'email', 'E-mail', 'contact@krupet.com', '2016-01-03 07:42:39', 1, 0),
(4, 'twitter-name', 'Twitter Name', 'Krupet', '2016-01-03 17:24:36', 1, 0),
(5, 'twitter-link', 'Twitter Link', '#', '2016-01-03 17:24:38', 1, 0),
(6, 'linkin-name', 'Linkin Name', 'Krupet', '2016-01-03 17:24:57', 1, 0),
(10, 'website', 'Website', 'http://krupet.com/', '2016-01-03 07:42:12', 1, 0),
(11, 'facebook-page-name', 'Facebook Page (Name)', 'Krupet', '2016-01-15 13:21:00', 1, 0),
(12, 'facebook-page-link', 'Facebook Page (Link)', 'https://www.facebook.com/Krupetcom-137344823272389/', '2016-01-15 08:10:21', 1, 0),
(13, 'email-for-contact', 'E-mail Form Contact', 'contact@krupet.com', '2016-01-15 13:21:09', 1, 0),
(14, 'linkin-link', 'Linkin Link', '#', '0000-00-00 00:00:00', 0, 0),
(15, 'email-for-health-consultant', 'Email for health consultant', 'koeun_math@yahoo.com', '2016-03-04 05:02:26', 1, 0),
(16, 'email-droping-idea', 'Email Droping Idea', 'support@krupet.com', '2016-02-28 09:33:07', 1, 0),
(17, 'email-for-hospital-rating', 'Email For hospital rating', 'koeun_math@yahoo.com', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contents`
--

CREATE TABLE IF NOT EXISTS `tbl_contents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alais` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `en_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `en_content` text COLLATE utf8_unicode_ci NOT NULL,
  `kh_content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `id_modifier` int(10) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_contents`
--

INSERT INTO `tbl_contents` (`id`, `alais`, `en_name`, `kh_name`, `en_content`, `kh_content`, `is_deleted`, `id_modifier`, `modified_dt`, `is_published`, `created_dt`) VALUES
(1, 'about-us', 'About Us', 'About us', 'This is about us', 'about us', 0, 0, '2015-09-19 17:50:43', 0, '0000-00-00 00:00:00'),
(2, 'term', 'Term', 'Term in Khmer', '<p>Term</p>\r\n', '<p>Term</p>\r\n', 0, 0, '2015-09-19 17:56:38', 0, '0000-00-00 00:00:00'),
(3, 'career', 'Career', 'Career', '<h4><span style="font-size:20px"><strong>Sabay</strong></span> ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href="http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href="http://aboutus.sabay.com/%20" target="_blank">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', '<h4>Sabay ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href="http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href="http://aboutus.sabay.com/%20" target="_blank">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'contact-us', 'Contact Us', 'Contact Us', '<p><strong>Krupet.com</strong>&nbsp;</p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', '<p><strong>Krupet.com&nbsp;</strong></p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE IF NOT EXISTS `tbl_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`id`, `en_name`, `kh_name`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 'General', 'General', 1, NULL, NULL),
(2, 'Department B', 'Department B', 1, NULL, NULL),
(3, 'Department C', 'Department C', 1, NULL, NULL),
(4, 'Department D', 'Department D', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_distrits`
--

CREATE TABLE IF NOT EXISTS `tbl_distrits` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_province` int(10) NOT NULL,
  `en_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=197 ;

--
-- Dumping data for table `tbl_distrits`
--

INSERT INTO `tbl_distrits` (`id`, `id_province`, `en_name`, `kh_name`, `is_published`, `created_dt`, `modified_dt`, `lat`, `lon`) VALUES
(1, 21, 'Tram Kok', 'ត្រាំកក់', 1, '0000-00-00 00:00:00', '2016-02-26 02:52:05', 1, 1),
(2, 2, 'Tek thla', 'ទឹកថ្លា', 1, '0000-00-00 00:00:00', '2016-02-25 12:13:37', 0, 0),
(3, 2, 'Donh Penh', 'ដុនភ្នំពេញ', 1, '0000-00-00 00:00:00', '2016-02-25 12:13:56', 0, 0),
(4, 2, 'Sen sok', 'សែន សុខ', 1, '0000-00-00 00:00:00', '2016-02-25 18:04:41', 0, 0),
(5, 21, 'Doun Kaev', 'ដូនកែវ', 1, '0000-00-00 00:00:00', '2016-03-01 06:56:35', 0, 0),
(6, 21, 'Samraong', 'សំរោង', 1, '0000-00-00 00:00:00', '2016-03-01 06:55:32', 0, 0),
(7, 21, 'Angkor Borei', 'អង្គរបុរី', 1, '0000-00-00 00:00:00', '2016-03-01 06:47:39', 0, 0),
(8, 21, 'Bati ', 'បាទី', 1, '0000-00-00 00:00:00', '2016-03-01 06:48:12', 0, 0),
(9, 21, 'Bourei Cholsar', 'បូរីជលសារ', 1, '0000-00-00 00:00:00', '2016-03-01 06:50:02', 0, 0),
(10, 21, 'Kiri Vong', 'គិរីវង់', 1, '0000-00-00 00:00:00', '2016-03-01 06:50:44', 0, 0),
(11, 21, 'Kaoh Andaet', 'កោះអណ្តែត', 1, '0000-00-00 00:00:00', '2016-03-01 06:53:30', 0, 0),
(12, 21, 'Prey Kabbas ', 'ព្រៃកប្បាស', 1, '0000-00-00 00:00:00', '2016-03-01 06:54:08', 0, 0),
(13, 21, 'Tram Kak', 'ត្រាំកក់', 1, '0000-00-00 00:00:00', '2016-03-01 06:57:13', 0, 0),
(14, 21, 'Treang', 'ទ្រាំង', 1, '0000-00-00 00:00:00', '2016-03-01 06:57:45', 0, 0),
(15, 20, 'Chantrea', 'ចន្ទ្រា', 1, '0000-00-00 00:00:00', '2016-03-01 07:04:39', 0, 0),
(16, 20, 'Kampong Rou', 'កំពង់ជុំទី', 1, '0000-00-00 00:00:00', '2016-03-01 07:09:35', 0, 0),
(17, 20, 'Rumduol', 'រំដួល', 1, '0000-00-00 00:00:00', '2016-03-01 07:10:09', 0, 0),
(18, 20, 'Romeas Haek', 'រមាសហែក', 1, '0000-00-00 00:00:00', '2016-03-01 07:10:49', 0, 0),
(19, 20, 'Svay Chrum ', 'ស្វាយជ្រុំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:11:08', 0, 0),
(20, 20, 'Svay Rieng', 'ស្វាយរៀង', 1, '0000-00-00 00:00:00', '2016-03-01 07:11:35', 0, 0),
(21, 20, 'Svay Teab', 'ស្វាយទាប', 1, '0000-00-00 00:00:00', '2016-03-01 07:12:34', 0, 0),
(22, 19, 'Sesan ', 'សេសាន', 1, '0000-00-00 00:00:00', '2016-03-01 07:15:01', 0, 0),
(23, 19, 'Siem Bouk', 'សៀមបូក', 1, '0000-00-00 00:00:00', '2016-03-01 07:19:05', 0, 0),
(24, 19, 'Siem Pang', 'សៀមប៉ាង', 1, '0000-00-00 00:00:00', '2016-03-01 07:19:48', 0, 0),
(25, 19, 'Stung Treng', 'ស្ទឹងត្រែង', 1, '0000-00-00 00:00:00', '2016-03-01 07:20:35', 0, 0),
(26, 19, 'Thala Barivat ', 'ថាឡាបូរិ', 1, '0000-00-00 00:00:00', '2016-03-01 07:22:30', 0, 0),
(27, 17, 'Angkor Chum ', 'អង្គរជុំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:24:07', 0, 0),
(28, 17, 'Angkor Thom', 'អង្គរធំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:24:48', 0, 0),
(29, 17, 'Banteay Srei ', 'បន្ទាយស្រី', 1, '0000-00-00 00:00:00', '2016-03-01 07:25:11', 0, 0),
(30, 17, 'Chi Kraeng ', 'ជីក្រែង', 1, '0000-00-00 00:00:00', '2016-03-01 07:25:53', 0, 0),
(31, 17, 'Kralanh ', 'ក្រឡាញ់', 1, '0000-00-00 00:00:00', '2016-03-01 07:26:34', 0, 0),
(32, 17, 'Puok', 'ពួក', 1, '0000-00-00 00:00:00', '2016-03-01 07:27:03', 0, 0),
(33, 17, 'Prasat Bakong ', 'ប្រាសាទបាគង', 1, '0000-00-00 00:00:00', '2016-03-01 07:27:28', 0, 0),
(34, 17, 'Siem Reap', 'សៀមរាប', 1, '0000-00-00 00:00:00', '2016-03-01 07:27:50', 0, 0),
(35, 17, 'Sout Nikom ', 'សុតនិគម', 1, '0000-00-00 00:00:00', '2016-03-01 07:29:00', 0, 0),
(36, 17, 'Srei Snam ', 'ស្រីស្នំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:29:26', 0, 0),
(37, 17, 'Svay Leu', 'ស្វាយលើ', 1, '0000-00-00 00:00:00', '2016-03-01 07:29:58', 0, 0),
(38, 17, 'Varin ', 'វ៉ារិន', 1, '0000-00-00 00:00:00', '2016-03-01 07:30:26', 0, 0),
(39, 18, 'Andoung Meas', 'អណ្តូងមាស', 1, '0000-00-00 00:00:00', '2016-03-01 07:35:08', 0, 0),
(40, 18, 'Banlung', 'បានលុង', 1, '0000-00-00 00:00:00', '2016-03-01 07:35:53', 0, 0),
(41, 18, 'Bar Kaev ', 'របារក្រុងកៀវ', 1, '0000-00-00 00:00:00', '2016-03-01 07:36:19', 0, 0),
(42, 18, 'Koun Mom ', 'ឃួនមុំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:37:20', 0, 0),
(43, 18, 'Lumphat ', 'លំផាត់', 1, '0000-00-00 00:00:00', '2016-03-01 07:37:56', 0, 0),
(44, 18, 'Ou Chum', 'អូរជុំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:38:20', 0, 0),
(45, 18, 'Ou Ya Dav ', 'អ៊ូយ៉ាដាវ', 1, '0000-00-00 00:00:00', '2016-03-01 07:40:21', 0, 0),
(46, 18, 'Ta Veaeng', 'តាវ៉ាង', 1, '0000-00-00 00:00:00', '2016-03-01 07:41:25', 0, 0),
(47, 18, 'Veun Sai ', 'វឺនសៃ', 1, '0000-00-00 00:00:00', '2016-03-01 07:42:00', 0, 0),
(48, 16, 'Bakan ', 'បាកាន', 1, '0000-00-00 00:00:00', '2016-03-01 07:42:58', 0, 0),
(49, 16, 'Kandieng', 'កន្ឌៀង', 1, '0000-00-00 00:00:00', '2016-03-01 07:47:22', 0, 0),
(50, 16, 'Pursat ', 'ពោធិសាត់', 1, '0000-00-00 00:00:00', '2016-03-01 07:49:12', 0, 0),
(51, 16, 'Veal Veaeng', 'វាលវែង', 1, '0000-00-00 00:00:00', '2016-03-01 07:50:03', 0, 0),
(52, 15, 'Ba Phnum', 'ប៉ាភ្នំ', 1, '0000-00-00 00:00:00', '2016-03-01 07:51:43', 0, 0),
(53, 15, 'Kamchay Mear ', 'កំចាយមារ', 1, '0000-00-00 00:00:00', '2016-03-01 07:52:13', 0, 0),
(54, 15, 'Kampong Trabaek ', 'កំពង់ត្របែក', 1, '0000-00-00 00:00:00', '2016-03-01 07:52:39', 0, 0),
(55, 15, 'Kanhchriech', 'កាញារីទ្ធ', 1, '0000-00-00 00:00:00', '2016-03-01 07:54:03', 0, 0),
(56, 15, 'Me Sang', 'មែរសាង', 1, '0000-00-00 00:00:00', '2016-03-01 07:55:19', 0, 0),
(57, 15, 'Peam Chor', 'ពាមជរ', 1, '0000-00-00 00:00:00', '2016-03-01 07:55:45', 0, 0),
(58, 15, 'Peam Ro', 'Peam Ro', 1, '0000-00-00 00:00:00', '2016-03-01 07:56:09', 0, 0),
(59, 15, 'Pea Reang', 'ពារាំង', 1, '0000-00-00 00:00:00', '2016-03-01 07:56:32', 0, 0),
(60, 15, 'Preah Sdach', 'ព្រះស្តេច', 1, '0000-00-00 00:00:00', '2016-03-01 07:57:04', 0, 0),
(61, 15, 'Prey Veaeng', 'ព្រៃវែង', 1, '0000-00-00 00:00:00', '2016-03-01 07:57:26', 0, 0),
(62, 15, 'Kampong Leav', 'កំពង់លាវ', 1, '0000-00-00 00:00:00', '2016-03-01 07:57:47', 0, 0),
(63, 15, 'Sithor Kandal ', 'ស៊ីធរកណ្តាល', 1, '0000-00-00 00:00:00', '2016-03-01 07:58:12', 0, 0),
(64, 15, 'Por reang ', 'រៀងពោធិ៍', 1, '0000-00-00 00:00:00', '2016-03-01 07:58:32', 0, 0),
(65, 14, 'Chey Saen', 'ជ័យសែន', 1, '0000-00-00 00:00:00', '2016-03-01 08:00:42', 0, 0),
(66, 14, 'Chhaeb ', 'ចាប', 1, '0000-00-00 00:00:00', '2016-03-01 08:02:29', 0, 0),
(67, 14, 'Choam  Ksan', 'ជាំក្សាន្ត', 1, '0000-00-00 00:00:00', '2016-03-01 08:03:51', 0, 0),
(68, 14, 'Kulen ', 'គូលែន', 1, '0000-00-00 00:00:00', '2016-03-01 08:04:35', 0, 0),
(69, 14, 'Rovieng ', 'រវៀង', 1, '0000-00-00 00:00:00', '2016-03-01 08:05:04', 0, 0),
(70, 14, 'Sangkom Thmei', 'សង្គមថ្មី', 1, '0000-00-00 00:00:00', '2016-03-01 08:05:28', 0, 0),
(71, 14, 'Tbaeng Mean Chey', 'ត្បែងមានជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 08:06:10', 0, 0),
(72, 13, 'Anlong Veaeng ', 'អន្លង់វែង', 1, '0000-00-00 00:00:00', '2016-03-01 08:06:53', 0, 0),
(73, 13, 'Banteay Ampil ', 'បន្ទាយអំពិល', 1, '0000-00-00 00:00:00', '2016-03-01 08:07:14', 0, 0),
(74, 13, 'Chong Kal ', 'ចុងកាល់', 1, '0000-00-00 00:00:00', '2016-03-01 08:07:36', 0, 0),
(75, 13, 'Samraong ', 'សំរោង', 1, '0000-00-00 00:00:00', '2016-03-01 08:07:59', 0, 0),
(76, 13, 'Trapeang Prasat', 'ត្រពាំងប្រាសាទ', 1, '0000-00-00 00:00:00', '2016-03-01 08:08:22', 0, 0),
(77, 12, 'Kaev Seima ', 'កែវសីម៉ា', 1, '0000-00-00 00:00:00', '2016-03-01 08:09:02', 0, 0),
(78, 12, 'Kaoh Nhek', 'កោះញែក', 1, '0000-00-00 00:00:00', '2016-03-01 08:09:44', 0, 0),
(79, 12, 'Ou Reang ', 'អូររាំង', 1, '0000-00-00 00:00:00', '2016-03-01 08:10:09', 0, 0),
(80, 12, 'Pechr Chenda ', 'ពេជ្រចិន្តា', 1, '0000-00-00 00:00:00', '2016-03-01 08:10:38', 0, 0),
(81, 12, 'Saen Monourom ', 'សែនមនោរម្យ', 1, '0000-00-00 00:00:00', '2016-03-01 08:11:03', 0, 0),
(82, 11, 'Botum Sakor', 'បុទុមសាគរ', 1, '0000-00-00 00:00:00', '2016-03-01 08:11:49', 0, 0),
(83, 11, 'Kiri Sakor ', 'គិរីសាគរ', 1, '0000-00-00 00:00:00', '2016-03-01 08:12:14', 0, 0),
(84, 11, 'Koh Kong', 'កោះកុង', 1, '0000-00-00 00:00:00', '2016-03-01 08:12:43', 0, 0),
(85, 11, 'Smach Mean Chey', 'ស្មាច់មានជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 08:13:07', 0, 0),
(86, 11, 'Mondol Seima', 'មណ្ឌលសីមា', 1, '0000-00-00 00:00:00', '2016-03-01 08:13:32', 0, 0),
(87, 11, 'Srae Ambel ', 'ស្រែអំបិល', 1, '0000-00-00 00:00:00', '2016-03-01 08:14:15', 0, 0),
(88, 11, 'Thma Bang', 'ថ្មបាំង', 1, '0000-00-00 00:00:00', '2016-03-01 08:15:00', 0, 0),
(89, 10, 'Kandal Stueng', 'កណ្តាលស្ទឹង', 1, '0000-00-00 00:00:00', '2016-03-01 08:15:43', 0, 0),
(90, 10, 'Kien Svay', 'កៀនស្វាយ', 1, '0000-00-00 00:00:00', '2016-03-01 08:16:07', 0, 0),
(91, 10, 'Khsach Kandal', 'ខ្សាច់កណ្តាល', 1, '0000-00-00 00:00:00', '2016-03-01 08:16:33', 0, 0),
(92, 10, 'Kaoh Thum ', 'កោះធំ', 1, '0000-00-00 00:00:00', '2016-03-01 08:16:57', 0, 0),
(93, 10, 'Leuk Daek ', 'លើកដែក', 1, '0000-00-00 00:00:00', '2016-03-01 08:17:20', 0, 0),
(94, 10, 'Lvea Aem', 'ល្វាអែម', 1, '0000-00-00 00:00:00', '2016-03-01 08:17:43', 0, 0),
(95, 10, 'Mukh Kampul ', 'មុខកំពូល', 1, '0000-00-00 00:00:00', '2016-03-01 08:18:10', 0, 0),
(96, 10, 'Ang Snuo', 'អង្គស្នួល', 1, '0000-00-00 00:00:00', '2016-03-01 08:18:50', 0, 0),
(97, 10, 'Ponhea Lueu', 'ពញាឮ', 1, '0000-00-00 00:00:00', '2016-03-01 08:19:13', 0, 0),
(98, 10, 'S''ang', 'ស្អាង', 1, '0000-00-00 00:00:00', '2016-03-01 08:19:36', 0, 0),
(99, 10, 'Krong Ta Khmau ', 'ក្រុងតាខ្មៅ', 1, '0000-00-00 00:00:00', '2016-03-01 08:20:00', 0, 0),
(100, 9, 'Angkor Chey ', 'អង្គរជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 08:20:43', 0, 0),
(101, 9, 'Banteay Meas', 'បន្ទាយមាស', 1, '0000-00-00 00:00:00', '2016-03-01 08:21:08', 0, 0),
(102, 9, 'Chhuk', 'ឈូក', 1, '0000-00-00 00:00:00', '2016-03-01 08:21:28', 0, 0),
(103, 9, 'Chum Kiri', 'ជុំគីរី', 1, '0000-00-00 00:00:00', '2016-03-01 08:21:50', 0, 0),
(104, 9, 'Dang Tong (', 'ដាងតុង', 1, '0000-00-00 00:00:00', '2016-03-01 08:22:16', 0, 0),
(105, 9, 'Kampong Trach', 'កំពង់ត្រាច', 1, '0000-00-00 00:00:00', '2016-03-01 08:22:38', 0, 0),
(106, 9, 'Tuek Chhou ', 'ទឹកឈូ', 1, '0000-00-00 00:00:00', '2016-03-01 08:23:03', 0, 0),
(107, 9, 'Krong Kampong ', 'ក្រុងកំពង់ឆ្នាំង', 1, '0000-00-00 00:00:00', '2016-03-01 08:23:27', 0, 0),
(108, 8, 'Baray ', 'បារាយណ៍', 1, '0000-00-00 00:00:00', '2016-03-01 08:24:27', 0, 0),
(109, 8, 'Kampong Svay', 'កំពង់ស្វាយ', 1, '0000-00-00 00:00:00', '2016-03-01 08:24:52', 0, 0),
(110, 8, 'Stueng Saen ', 'ស្ទឹងសែន', 1, '0000-00-00 00:00:00', '2016-03-01 08:25:12', 0, 0),
(111, 8, 'Prasat Balangk ', 'ប្រាសាទបាល្ល័ង', 1, '0000-00-00 00:00:00', '2016-03-01 08:25:34', 0, 0),
(112, 8, 'Prasat Sambour', 'ប្រាសាទសម្បូរព្រៃគុក', 1, '0000-00-00 00:00:00', '2016-03-01 08:25:57', 0, 0),
(113, 8, 'Sandan', 'សណ្តាន់', 1, '0000-00-00 00:00:00', '2016-03-01 08:26:28', 0, 0),
(114, 8, 'Santuk ', 'សន្ទុក', 1, '0000-00-00 00:00:00', '2016-03-01 08:26:49', 0, 0),
(115, 8, 'Stoung ', 'ស្ទោង', 1, '0000-00-00 00:00:00', '2016-03-01 08:27:13', 0, 0),
(116, 7, 'Basedth ', 'បាសេត', 1, '0000-00-00 00:00:00', '2016-03-01 08:30:21', 0, 0),
(117, 7, 'Chbar Mon ', 'ច្បារមន', 1, '0000-00-00 00:00:00', '2016-03-01 08:30:44', 0, 0),
(118, 7, 'Kong Pisei ', 'គង់ពិសី', 1, '0000-00-00 00:00:00', '2016-03-01 08:31:13', 0, 0),
(119, 7, 'Aoral', 'ឱរ៉ាល់', 1, '0000-00-00 00:00:00', '2016-03-01 08:31:33', 0, 0),
(120, 7, 'Odong', 'ឧដុង្គ', 1, '0000-00-00 00:00:00', '2016-03-01 08:32:04', 0, 0),
(121, 7, 'Phnom Sruoch', 'ភ្នំស្រួច', 1, '0000-00-00 00:00:00', '2016-03-01 08:32:25', 0, 0),
(122, 7, 'Samraong Tong', 'សំរោងទង', 1, '0000-00-00 00:00:00', '2016-03-01 08:32:50', 0, 0),
(123, 7, 'Thpong', 'ថ្ពង', 1, '0000-00-00 00:00:00', '2016-03-01 08:33:14', 0, 0),
(124, 6, 'Boribor ', 'បរិបូរ', 1, '0000-00-00 00:00:00', '2016-03-01 08:34:53', 0, 0),
(125, 6, 'Chol Kiri ', 'ជលគិរី', 1, '0000-00-00 00:00:00', '2016-03-01 08:35:16', 0, 0),
(126, 6, 'Kampong Chhnang', 'កំពង់ឆ្នាំង', 1, '0000-00-00 00:00:00', '2016-03-01 08:35:34', 0, 0),
(127, 6, 'Kampong Leaeng', 'កំពង់ជួល', 1, '0000-00-00 00:00:00', '2016-03-01 08:35:57', 0, 0),
(128, 6, 'Kampong Tralach ', 'កំពង់ត្រឡាច', 1, '0000-00-00 00:00:00', '2016-03-01 08:36:17', 0, 0),
(129, 6, 'Rolea B''ier', 'រលាផែ ', 1, '0000-00-00 00:00:00', '2016-03-01 08:41:58', 0, 0),
(130, 6, 'Samakki Mean Chey', 'សាមគ្គីមានជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 08:42:37', 0, 0),
(131, 6, 'Tuek Phos', 'ទឹកផុស', 1, '0000-00-00 00:00:00', '2016-03-01 08:43:18', 0, 0),
(132, 5, 'Batheay', 'បាធាយ', 1, '0000-00-00 00:00:00', '2016-03-01 08:44:13', 0, 0),
(133, 5, 'Chamkar Leu ', 'ចំការលើ', 1, '0000-00-00 00:00:00', '2016-03-01 08:44:40', 0, 0),
(134, 5, 'Cheung Prey ', 'ជើងព្រៃ', 1, '0000-00-00 00:00:00', '2016-03-01 08:45:06', 0, 0),
(135, 5, 'Krong Kampong Cham ', 'ក្រុងកំពង់ចាម', 1, '0000-00-00 00:00:00', '2016-03-01 08:45:28', 0, 0),
(136, 5, 'Kampong Siem', 'កំពង់សៀម', 1, '0000-00-00 00:00:00', '2016-03-01 08:45:50', 0, 0),
(137, 5, 'Kang Meas', 'កងមាស', 1, '0000-00-00 00:00:00', '2016-03-01 08:46:08', 0, 0),
(138, 5, 'Koh Sotin', 'កោះសូទិន', 1, '0000-00-00 00:00:00', '2016-03-01 08:46:27', 0, 0),
(139, 5, 'Prey Chhor', 'ព្រៃឈរ', 1, '0000-00-00 00:00:00', '2016-03-01 08:46:45', 0, 0),
(140, 5, 'Srey Santhor', 'ស្រីសន្ធរ', 1, '0000-00-00 00:00:00', '2016-03-01 08:47:06', 0, 0),
(141, 5, 'Stueng Trang ', 'ស្ទឹងស្ទឹងត្រែង', 1, '0000-00-00 00:00:00', '2016-03-01 08:47:28', 0, 0),
(142, 4, 'Banan', 'ចេក', 1, '0000-00-00 00:00:00', '2016-03-01 08:48:15', 0, 0),
(143, 4, 'Thma Koul (', 'ថ្មគោល', 1, '0000-00-00 00:00:00', '2016-03-01 08:48:36', 0, 0),
(144, 4, 'Krong Battambang', 'ក្រុងបាត់ដំបង', 1, '0000-00-00 00:00:00', '2016-03-01 08:48:54', 0, 0),
(145, 4, 'Bavel', 'បវេល', 1, '0000-00-00 00:00:00', '2016-03-01 08:49:16', 0, 0),
(146, 4, 'Ek Phnom ', 'ឯកភ្នំ', 1, '0000-00-00 00:00:00', '2016-03-01 08:49:35', 0, 0),
(147, 4, 'Moung Ruesy', 'មោងឬស្សី', 1, '0000-00-00 00:00:00', '2016-03-01 08:51:07', 0, 0),
(148, 4, 'Rotanak Mondol ', 'រតនមណ្ឌល', 1, '0000-00-00 00:00:00', '2016-03-01 08:51:30', 0, 0),
(149, 4, 'Sangkae ', 'សង្កែ', 1, '0000-00-00 00:00:00', '2016-03-01 08:51:50', 0, 0),
(150, 4, 'Samlout ', 'សំឡូត', 1, '0000-00-00 00:00:00', '2016-03-01 08:52:12', 0, 0),
(151, 4, 'Sampov Loun', 'សំពៅលូន', 1, '0000-00-00 00:00:00', '2016-03-01 08:52:34', 0, 0),
(152, 4, 'Phnum Proek ', 'ភ្នំព្រឹក្ស', 1, '0000-00-00 00:00:00', '2016-03-01 08:52:56', 0, 0),
(153, 4, 'Kamrieng ', 'កំរៀង', 1, '0000-00-00 00:00:00', '2016-03-01 08:53:15', 0, 0),
(154, 4, 'Koas Krala ', 'គាស់ក្រឡ', 1, '0000-00-00 00:00:00', '2016-03-01 08:53:38', 0, 0),
(155, 4, 'Rokhak Kiri', 'រុកខៈគីរី', 1, '0000-00-00 00:00:00', '2016-03-01 08:54:16', 0, 0),
(156, 3, 'Mongkol Borei', 'មង្គលបុរី', 1, '0000-00-00 00:00:00', '2016-03-01 08:55:02', 0, 0),
(157, 3, 'Phnum Srok', 'ភ្នំស្រុក', 1, '0000-00-00 00:00:00', '2016-03-01 08:55:20', 0, 0),
(158, 3, 'Preah Netr Preah', 'ព្រះនេត្រព្រះ', 1, '0000-00-00 00:00:00', '2016-03-01 08:55:39', 0, 0),
(159, 3, 'Ou Chrov', 'អូរជ្រៅ', 1, '0000-00-00 00:00:00', '2016-03-01 08:55:57', 0, 0),
(160, 3, 'Krong Serei Saophoan ', 'ក្រុងសិរីសោភ័ណ្ឌ', 1, '0000-00-00 00:00:00', '2016-03-01 08:56:19', 0, 0),
(161, 3, 'Thma Puok ', 'ថ្មពួក', 1, '0000-00-00 00:00:00', '2016-03-01 08:56:49', 0, 0),
(162, 3, 'Svay Chek', 'ស្វាយចេក', 1, '0000-00-00 00:00:00', '2016-03-01 08:57:07', 0, 0),
(163, 3, 'Malai ', 'ស្រុកម៉ាឡៃ', 1, '0000-00-00 00:00:00', '2016-03-01 08:57:26', 0, 0),
(164, 3, 'Krong Paoy Paet', 'ក្រុងប៉ោយប៉ែត', 1, '0000-00-00 00:00:00', '2016-03-01 08:57:55', 0, 0),
(165, 2, 'Chamkar Mon', 'ចំការមន', 1, '0000-00-00 00:00:00', '2016-03-01 08:58:59', 0, 0),
(166, 2, 'Doun Penh ', 'ដូនពេញ', 1, '0000-00-00 00:00:00', '2016-03-01 08:59:31', 0, 0),
(167, 2, 'Prampir Meakkakra', 'ប្រាំពីរខណ្ឌមករា', 1, '0000-00-00 00:00:00', '2016-03-01 09:01:10', 0, 0),
(168, 2, 'Tuol Kouk ', 'ទួលគោក', 1, '0000-00-00 00:00:00', '2016-03-01 09:01:33', 0, 0),
(169, 2, 'Dangkao ', 'ដង្កោ', 1, '0000-00-00 00:00:00', '2016-03-01 09:01:52', 0, 0),
(170, 2, 'Mean Chey', 'មានជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 09:02:11', 0, 0),
(171, 2, 'Ruessey Kev', 'ឬស្សីកែវ', 1, '0000-00-00 00:00:00', '2016-03-01 09:02:58', 0, 0),
(172, 2, 'Pou Senchey', 'ខណ្ឌពោធិ៍សែនជ័យ', 1, '0000-00-00 00:00:00', '2016-03-01 09:03:43', 0, 0),
(173, 2, 'Chrouy Changvar ', 'ជ្រោយចង្វារ', 1, '0000-00-00 00:00:00', '2016-03-01 09:04:02', 0, 0),
(174, 2, 'Preaek Pnov', 'ព្រែកព្នៅ', 1, '0000-00-00 00:00:00', '2016-03-01 09:04:22', 0, 0),
(175, 2, 'Chbar Ampov', 'ច្បារអំពៅ', 1, '0000-00-00 00:00:00', '2016-03-01 09:04:43', 0, 0),
(176, 1, 'Chhloung', 'ឆ្លូង', 1, '0000-00-00 00:00:00', '2016-03-01 09:06:24', 0, 0),
(177, 1, 'Kracheh ', 'ក្រចេះ', 1, '0000-00-00 00:00:00', '2016-03-01 09:06:43', 0, 0),
(178, 1, 'Preaek Prasat', 'ព្រែកប្រាសាទ', 1, '0000-00-00 00:00:00', '2016-03-01 09:07:28', 0, 0),
(179, 1, 'Sambour', 'សំបូរ', 1, '0000-00-00 00:00:00', '2016-03-01 09:07:48', 0, 0),
(180, 1, 'Snuol', 'ស្នួល', 1, '0000-00-00 00:00:00', '2016-03-01 09:08:15', 0, 0),
(181, 1, 'Chit Borey ', 'ចិត្តបូរី', 1, '0000-00-00 00:00:00', '2016-03-01 09:09:13', 0, 0),
(182, 22, 'Damnak Chang''aeur', 'ដំណាក់ចាន់អឺរ៉ូ', 1, '0000-00-00 00:00:00', '2016-03-02 20:06:32', 0, 0),
(183, 22, 'Kep ', 'កែប', 1, '0000-00-00 00:00:00', '2016-03-02 20:06:56', 0, 0),
(184, 23, 'Dambe', 'ស្រុកតំបែរ', 1, '0000-00-00 00:00:00', '2016-03-02 20:09:35', 0, 0),
(185, 23, 'Krouch Chhmar ', 'ក្រូចឆ្មារ', 1, '0000-00-00 00:00:00', '2016-03-02 20:09:58', 0, 0),
(186, 23, 'Memot ', 'មេមត់', 1, '0000-00-00 00:00:00', '2016-03-02 20:10:19', 0, 0),
(187, 23, 'Ou Reang Ov', 'អូររាំងឪ', 1, '0000-00-00 00:00:00', '2016-03-02 20:10:40', 0, 0),
(188, 23, 'Ponhea Kraek ', 'ពញាក្រែក', 1, '0000-00-00 00:00:00', '2016-03-02 20:11:01', 0, 0),
(189, 23, 'Tboung Khmum', 'ត្បូងឃ្មុំ', 1, '0000-00-00 00:00:00', '2016-03-02 20:11:23', 0, 0),
(190, 23, 'Krong Suong', 'ក្រុងសួង', 1, '0000-00-00 00:00:00', '2016-03-02 20:11:47', 0, 0),
(191, 24, 'Krong Preah Sihanouk', 'ក្រុងព្រះសីហនុ', 1, '0000-00-00 00:00:00', '2016-03-02 20:13:37', 0, 0),
(192, 24, 'Prey Nob', 'ព្រៃនប់', 1, '0000-00-00 00:00:00', '2016-03-02 20:13:59', 0, 0),
(193, 24, 'Stueng Hav', 'ស្ទឹងហាវ', 1, '0000-00-00 00:00:00', '2016-03-02 20:14:22', 0, 0),
(194, 24, 'Kampong Seila ', 'កំពង់សិលា', 1, '0000-00-00 00:00:00', '2016-03-02 20:14:45', 0, 0),
(195, 25, 'Pailin ', 'ប៉ៃលិន', 1, '0000-00-00 00:00:00', '2016-03-02 20:16:11', 0, 0),
(196, 25, 'Sala Kra', 'សាលាក្រៈ', 1, '0000-00-00 00:00:00', '2016-03-02 20:17:38', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctors`
--

CREATE TABLE IF NOT EXISTS `tbl_doctors` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_sex` int(11) NOT NULL,
  `en_degree` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_degree` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_specialist` int(10) NOT NULL,
  `id_province` int(10) NOT NULL,
  `id_distrit` int(10) NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) NOT NULL,
  `en_background` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_background` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_experien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_experien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `data_order` int(10) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  PRIMARY KEY (`id`,`id_specialist`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_doctors`
--

INSERT INTO `tbl_doctors` (`id`, `en_name`, `kh_name`, `en_title`, `kh_title`, `id_sex`, `en_degree`, `kh_degree`, `id_specialist`, `id_province`, `id_distrit`, `phone`, `email`, `slug`, `en_background`, `kh_background`, `en_experien`, `kh_experien`, `image`, `is_published`, `is_featured`, `created_dt`, `data_order`, `modified_dt`, `lat`, `lon`) VALUES
(1, 'A7', 'គីម ហេង', 'Dr. Kim Heng', 'Dr. គីម ហេង', 1, 'Doctor', 'Doctor', 50, 21, 5, '213213', 'a@f.v', '1-1-A7', 'qweqwqwe', 'qwertsdfdsf', 'sadas', 'asdsad', 'uploads/doctors/doctor567ea60cd9843.jpg', 1, 1, '0000-00-00 00:00:00', 1, '2016-03-18 03:33:09', 0, 0),
(2, 'A6', 'សុខ ចាន់', 'Dr. Sok chan ', 'Dr. សុខ ចាន់', 2, 'Doctor', 'Doctor', 33, 2, 2, '3243242', 'a@f.v', '2-2-A6', 'ER', 'ER', 'asd', 'aSDASDAaal;lk', 'uploads/doctors/doctor567e98383b86c.jpg', 1, 1, '0000-00-00 00:00:00', 6, '2016-03-18 03:32:17', 0, 0),
(3, 'A5', 'ហេង ហុង', 'Dr. Heng Hong', 'Dr. ហេង ហុង', 1, 'Doctor', 'Doctor', 50, 21, 1, '012345678', 'A@b.c', '3-3-A5', '', '', '', '', 'uploads/doctors/doctor567ea50132c0a.jpg', 1, 1, '0000-00-00 00:00:00', 5, '2016-03-18 03:32:44', 0, 0),
(4, 'A4', 'ចាន់ តារា', 'Dr. Chan Tara', 'Dr. ចាន់ តារា', 2, 'Doctor', 'Doctor', 40, 2, 4, 'N/A', 'koeun_math@yahoo.com', '4-4-A4', '', '', '', '', 'uploads/doctors/doctor567eab64611aa.jpg', 1, 1, '0000-00-00 00:00:00', 4, '2016-03-18 03:31:39', 0, 0),
(5, 'A3', 'ស៊ន ម៉ាឡា', 'Dr. Sorn Mala', 'Dr. ស៊ន ម៉ាឡា', 2, 'Doctor', 'Doctor', 61, 2, 3, 'N/A', 'koeun_math@yahoo.com', '5-5-A3', '', '', '', '', 'uploads/doctors/doctor567ea9a46b489.jpg', 1, 1, '0000-00-00 00:00:00', 1, '2016-03-14 14:25:03', 0, 0),
(6, 'A2', 'លី សាលី', 'Dr', 'Dr', 2, 'Doctor', 'Doctor', 50, 21, 1, 'N/A', 'koeun_math@yahoo.com', '6-6-A2', '<p>Background</p>', '<p>Background</p>', '<p>Ex</p>', '<p>Ex</p>', 'uploads/doctors/doctor567eaa9c834d0.jpg', 1, 1, '0000-00-00 00:00:00', 3, '2016-03-18 03:31:21', 0, 0),
(7, 'A1', 'ស៊ីមេង', 'Dr. simeng', 'Dr. simeng', 1, 'Doctor', 'Doctor', 50, 21, 1, '0', 'koeun_math@yahoo.com', '7-7-A1', '', '', '', '', 'uploads/doctors/doctor567f4f91e58a9.jpg', 1, 1, '0000-00-00 00:00:00', 3, '2016-03-18 03:30:58', 0, 0),
(8, 'abc', 'abc', 'Dr.', 'វេជ្ជបណ្ឌិត', 2, 'Doctor', 'Doctor', 46, 2, 3, '017 567 099', 'contact@krupet.com', '8-8-abc', '<p>xdfsdfdsfdsf</p>', '<p>sdfsdf</p>', '<p>sdfsdfsdf</p>', '<p>sdfdsf</p>', 'uploads/doctors/doctor567f50692fe3a.jpg', 1, 1, '0000-00-00 00:00:00', 2, '2016-03-14 14:24:13', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_services`
--

CREATE TABLE IF NOT EXISTS `tbl_doctor_services` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_doctor` int(12) NOT NULL,
  `id_service` int(12) NOT NULL,
  `price` varchar(122) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_note` text NOT NULL,
  `kh_note` text NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_doctor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_doctor_services`
--

INSERT INTO `tbl_doctor_services` (`id`, `id_doctor`, `id_service`, `price`, `en_note`, `kh_note`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 2, 2, '231', '', '', 0, '2015-12-24 15:59:10', '0000-00-00 00:00:00'),
(2, 6, 9, '12 $', '333', '33', 0, '2016-01-22 13:17:44', '0000-00-00 00:00:00'),
(3, 8, 3, '200$', 'sdf', 'sdf', 0, '2016-01-22 13:30:33', '0000-00-00 00:00:00'),
(4, 8, 2, '22$', '23', 'dsf', 0, '2016-01-22 13:31:35', '0000-00-00 00:00:00'),
(5, 8, 1, '200$', '', '', 0, '2016-01-22 13:32:13', '0000-00-00 00:00:00'),
(6, 7, 9, '111', '', '', 0, '2016-03-14 14:22:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_specialists`
--

CREATE TABLE IF NOT EXISTS `tbl_doctor_specialists` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_doctor` int(12) NOT NULL,
  `id_specialist` int(12) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_doctor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_doctor_specialists`
--

INSERT INTO `tbl_doctor_specialists` (`id`, `id_doctor`, `id_specialist`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 2, 2, 0, '2015-12-24 15:44:51', '0000-00-00 00:00:00'),
(2, 3, 63, 0, '2015-12-26 15:34:08', '0000-00-00 00:00:00'),
(3, 4, 60, 0, '2015-12-26 15:45:59', '0000-00-00 00:00:00'),
(4, 5, 59, 0, '2015-12-26 15:49:39', '0000-00-00 00:00:00'),
(5, 6, 55, 0, '2015-12-26 15:56:54', '0000-00-00 00:00:00'),
(6, 1, 62, 0, '2015-12-26 16:00:57', '0000-00-00 00:00:00'),
(7, 6, 63, 0, '2015-12-26 17:12:01', '0000-00-00 00:00:00'),
(8, 7, 50, 0, '2015-12-27 03:35:27', '0000-00-00 00:00:00'),
(9, 8, 7, 0, '2015-12-27 03:39:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE IF NOT EXISTS `tbl_faqs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_question` varchar(100) NOT NULL,
  `kh_question` varchar(100) NOT NULL,
  `en_answer` varchar(100) NOT NULL,
  `kh_answer` varchar(100) NOT NULL,
  `is_published` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_faqs`
--

INSERT INTO `tbl_faqs` (`id`, `en_question`, `kh_question`, `en_answer`, `kh_answer`, `is_published`, `created_dt`, `modified_dt`) VALUES
(2, 'Do you like our website?', 'Do you like our website?', 'Yes,I do.', 'Yes,I do.', 1, '0000-00-00 00:00:00', '2016-01-03 16:30:02'),
(3, 'What does Smart provide to new SmartLuy registered customer?', 'What does Smart provide to new SmartLuy registered customer?', '<h4><strong>If you register to SmartLuy,</strong> a private electronic wallet will be provided to yo', '<p><strong>If you register to SmartLuy</strong>, a private electronic wallet will be provided to you', 1, '0000-00-00 00:00:00', '2016-01-21 18:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_featured_aside_ads`
--

CREATE TABLE IF NOT EXISTS `tbl_featured_aside_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `page-alais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_featured` int(10) NOT NULL,
  `num_of_click` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedbacks`
--

CREATE TABLE IF NOT EXISTS `tbl_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is_published refers to the visible of comment',
  `review` text,
  `created_dt` datetime DEFAULT NULL,
  `id_facebook` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tbl_feedbacks`
--

INSERT INTO `tbl_feedbacks` (`id`, `review`, `created_dt`, `id_facebook`) VALUES
(16, 'A', '2016-02-28 03:36:09', NULL),
(17, 'B', '2016-02-28 03:36:21', NULL),
(18, 'D', '2016-02-28 03:36:42', NULL),
(19, 'F', '2016-02-28 03:37:09', NULL),
(20, 'D', '2016-02-28 03:37:24', NULL),
(21, 'D', '2016-02-28 03:37:36', NULL),
(22, 'COMMENT', '2016-02-28 03:37:59', NULL),
(23, 'COMMENT', '2016-02-28 03:38:11', NULL),
(24, 'COMMENT', '2016-02-28 03:38:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `en_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kh_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_feedback_questions`
--

INSERT INTO `tbl_feedback_questions` (`id`, `en_name`, `kh_name`, `en_question`, `kh_question`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 'Effective', 'Effective', 'Die?', 'Die?', 1, '0000-00-00 00:00:00', '2016-02-28 06:39:40'),
(2, 'Fee', 'Fee', 'Expensive?', 'Expensive?', 1, '0000-00-00 00:00:00', '2016-02-28 06:40:07'),
(3, 'Service', 'Service', 'Bad?', 'Bad', 1, '0000-00-00 00:00:00', '2016-02-28 06:40:58'),
(4, 'ABC', 'sdf', 'How you satisfy this hospital?', 'How you satisfy this hospital?', 1, '0000-00-00 00:00:00', '2016-02-28 08:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback_scores`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_feedback` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `tbl_feedback_scores`
--

INSERT INTO `tbl_feedback_scores` (`id`, `id_feedback`, `id_question`, `score`) VALUES
(45, 16, 1, 2),
(46, 16, 2, 4),
(47, 16, 3, 4),
(48, 16, 4, 2),
(49, 17, 1, 4),
(50, 17, 2, 5),
(51, 17, 3, 4),
(52, 17, 4, 2),
(53, 18, 1, 5),
(54, 18, 2, 5),
(55, 18, 3, 5),
(56, 18, 4, 5),
(57, 19, 1, 5),
(58, 19, 2, 3),
(59, 19, 3, 2),
(60, 19, 4, 2),
(61, 20, 1, 5),
(62, 20, 2, 3),
(63, 20, 3, 2),
(64, 20, 4, 3),
(65, 21, 1, 5),
(66, 21, 2, 4),
(67, 21, 3, 5),
(68, 21, 4, 5),
(69, 22, 1, 2),
(70, 22, 2, 4),
(71, 22, 3, 5),
(72, 22, 4, 3),
(73, 23, 1, 4),
(74, 23, 2, 4),
(75, 23, 3, 5),
(76, 23, 4, 4),
(77, 24, 1, 2),
(78, 24, 2, 4),
(79, 24, 3, 5),
(80, 24, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_health_consultants`
--

CREATE TABLE IF NOT EXISTS `tbl_health_consultants` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `symtom` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `place_of_living` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `seen_dt` datetime NOT NULL,
  `accepted_dt` datetime NOT NULL,
  `deleted_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_health_consultants`
--

INSERT INTO `tbl_health_consultants` (`id`, `name`, `sex`, `age`, `phone`, `email`, `symtom`, `weight`, `created_dt`, `modified_dt`, `place_of_living`, `description`, `is_seen`, `is_accepted`, `is_deleted`, `seen_dt`, `accepted_dt`, `deleted_dt`) VALUES
(1, 'Dara Sambath', 'M', '32', '098343334443', 'xxx@asdf.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', 'M', '', '', '', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:48:43'),
(3, 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Please help me', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Please help me', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:49:57'),
(5, 'Tekly', 'M', '12', '098343334443', 'sathyayoeun02@gmail.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'kmk', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 1, 1, 0, '2016-03-10 16:36:46', '2016-03-10 16:36:46', '0000-00-00 00:00:00'),
(9, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:12:01', '2016-03-04 05:12:01', 'Lou teak souy', 'XXXX', 1, 1, 0, '2016-03-10 15:26:35', '2016-03-10 15:26:35', '0000-00-00 00:00:00'),
(10, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:15:40', '2016-03-04 05:15:40', 'Lou teak souy', 'XXXX', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:18:32', '2016-03-04 05:18:32', 'Lou teak souy', 'XXXX', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:20:23', '2016-03-04 05:20:23', 'Lou teak souy', 'XXXX', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:22:21', '2016-03-04 05:22:21', 'xx', 'yy', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:23:12', '2016-03-04 05:23:12', 'xx', 'yy', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_horizontal_ads_dispays`
--

CREATE TABLE IF NOT EXISTS `tbl_horizontal_ads_dispays` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_page` int(10) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1=doctor; 3=hospital; 3=ad',
  `id_featured` int(10) NOT NULL,
  `note` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `data_order` int(10) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_horizontal_ads_dispays`
--

INSERT INTO `tbl_horizontal_ads_dispays` (`id`, `id_page`, `type`, `id_featured`, `note`, `is_published`, `data_order`, `created_dt`, `modified_dt`) VALUES
(1, 11, 1, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-02-03 02:58:17'),
(2, 11, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-02-03 03:05:09'),
(3, 11, 2, 4, '', 0, 0, '0000-00-00 00:00:00', '2016-02-04 17:43:18'),
(4, 11, 1, 5, '', 1, 0, '0000-00-00 00:00:00', '2016-02-04 17:45:04'),
(5, 2, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-02-04 18:20:16'),
(6, 3, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-02-04 18:23:15'),
(7, 2, 1, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-12 17:28:10'),
(8, 15, 1, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-12 17:33:00'),
(9, 15, 2, 43, '', 1, 0, '0000-00-00 00:00:00', '2016-03-12 17:34:32'),
(10, 2, 2, 43, '', 1, 0, '0000-00-00 00:00:00', '2016-03-12 17:35:32'),
(12, 21, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-12 20:20:26'),
(13, 12, 1, 1, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:34:54'),
(14, 4, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:35:43'),
(15, 5, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:36:19'),
(16, 16, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:37:33'),
(17, 14, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:38:48'),
(18, 22, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 01:39:40'),
(19, 19, 3, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 02:12:21'),
(20, 7, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 02:15:29'),
(21, 9, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 02:23:54'),
(22, 8, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 02:29:24'),
(23, 6, 3, 2, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 04:57:26'),
(24, 20, 1, 3, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 05:02:13'),
(25, 18, 1, 6, '', 1, 0, '0000-00-00 00:00:00', '2016-03-13 05:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospitals`
--

CREATE TABLE IF NOT EXISTS `tbl_hospitals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_director` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_director` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_background` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_background` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_hospital_category` int(10) NOT NULL,
  `id_distrit` int(10) NOT NULL,
  `id_hospital_type` int(10) NOT NULL,
  `id_province` int(10) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `data_order` int(10) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_rating_code_required` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_hospitals`
--

INSERT INTO `tbl_hospitals` (`id`, `en_name`, `kh_name`, `en_director`, `kh_director`, `en_background`, `kh_background`, `id_hospital_category`, `id_distrit`, `id_hospital_type`, `id_province`, `slug`, `image`, `is_published`, `data_order`, `is_featured`, `created_dt`, `modified_dt`, `is_rating_code_required`) VALUES
(1, 'Cha rey ', 'ចារី', 'b', 'asdf', '<p>asd</p>', '<p>b</p>', 1, 2, 13, 2, '1-Cha-rey-', 'uploads/hostpitals/hostpital567eb590bea11.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-02-26 17:00:47', 0),
(3, 'kalemeth', 'កាលម៉ែត', 'a', 'asdf', '<p>sdaf</p>', '<p>asdf</p>', 1, 2, 13, 2, '3-kalemeth', 'uploads/hostpitals/hostpital567eb291a46d8.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-02-28 02:55:43', 0),
(4, 'Ong Doung', 'អង្គដួង', 'z', '', 'z', 'z', 1, 2, 13, 2, '4-Ong-Doung', 'uploads/hostpitals/hostpital567eb64e77713.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-26 16:46:22', 0),
(5, 'Rusia', 'រូស៊ី', 'a', '', 'a', 'a', 1, 2, 13, 2, '5-Rusia', 'uploads/hostpitals/hostpital567eb6b9d4935.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 12:57:21', 0),
(6, 'khemara', 'រូស៊ី khemara', 'a', 'Ma', '<p style="text-align: justify;">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style="text-align: justify;">CORE VALUES</p>\r\n<ul>\r\n<li style="text-align: justify;">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style="text-align: justify;">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style="text-align: justify;">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style="text-align: justify;">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style="text-align: justify;">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style="text-align: justify;">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style="text-align: justify;">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '<p style="text-align: justify;">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style="text-align: justify;">CORE VALUES</p>\r\n<ul>\r\n<li style="text-align: justify;">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style="text-align: justify;">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style="text-align: justify;">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style="text-align: justify;">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style="text-align: justify;">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style="text-align: justify;">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style="text-align: justify;">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', 1, 2, 13, 2, '6-khemara', 'uploads/hostpitals/hostpital567eb74771b46.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-22 16:02:13', 0),
(7, 'Japen', 'ជប៉ុន', 'c', 'a', 'c', 'c', 1, 2, 14, 2, '7-Japen', 'uploads/hostpitals/hostpital567eb792755fe.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-03-13 10:38:31', 0),
(8, 'Veathnam', 'វៀតណាមVeathnam', 'v', '', 'v', 'v', 1, 2, 13, 2, '8-Veathnam', 'uploads/hostpitals/hostpital567eb7e59dba2.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-01 12:31:10', 0),
(9, 'china', 'មន្ទីពេទ្យchina', 'c', '', 'c', 'c', 1, 2, 13, 2, '9-china', 'uploads/hostpitals/hostpital567eb85501eef.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 08:53:31', 0),
(10, 'Brazil', 'មន្ទីពេទ្យBrazil', 'z', '', 'z', 'z', 1, 2, 13, 2, '10-Brazil', 'uploads/hostpitals/hostpital567eb88c7391a.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 08:49:42', 0),
(11, 'Thailand', 'មន្ទីពេទ្យThailand', 't', '', 't', 't', 1, 2, 13, 2, '11-Thailand', 'uploads/hostpitals/hostpital567eb8bfc3215.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 08:42:23', 0),
(12, 'Vathanak', 'មន្ទីពេទ្យVathanak', 'v', '', 'v', 'v', 1, 2, 13, 2, '12-Vathanak', 'uploads/hostpitals/hostpital567eb8f29e1ac.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 08:06:58', 0),
(13, 'baka', 'មន្ទីពេទ្យbaka', 'b', 'ss', '<p>b</p>', '<p>b</p>', 1, 2, 13, 2, '13-baka', 'uploads/hostpitals/hostpital567eb9209609f.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-02-04 13:44:04', 0),
(14, 'Mama', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', 1, 2, 13, 2, '14-Mama', 'uploads/hostpitals/hostpital567eb94c64b87.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:10', 0),
(15, 'Seyha', 'មន្ទីពេទ្យseyha', 's', '', 's', 's', 1, 2, 13, 2, '15-Seyha', 'uploads/hostpitals/hostpital567eb97881b2b.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:46', 0),
(16, 'Digo', 'មន្ទីពេទ្យDigo', 'Mr Tekly', 'Tekly', '<p>d</p>', '<p>d</p>', 1, 2, 13, 2, '16-Digo', 'uploads/hostpitals/hostpital567eb9af56f47.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-02-14 08:27:00', 0),
(17, 'Java', 'មន្ទីពេទ្យjava', 'j', '', 'j', 'j', 1, 2, 13, 2, '17-Java', 'uploads/hostpitals/hostpital567eba115501f.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 07:54:11', 0),
(18, 'Kakan', 'មន្ទីពេទ្យkakan', 'k', '', 'k', 'k', 1, 2, 13, 2, '18-Kakan', 'uploads/hostpitals/hostpital567eba5082d43.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 07:51:37', 0),
(19, 'lala', 'មន្ទីពេទ្យlala', 'l', '', 'l', 'l', 1, 2, 13, 2, '19-lala', 'uploads/hostpitals/hostpital567ebb8bbda16.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 07:50:26', 0),
(20, 'pippo', 'មន្ទីពេទ្យpippo', 'p', 's', '<p>p</p>', '<p>p</p>', 1, 2, 13, 2, '20-pippo', 'uploads/hostpitals/hostpital567ebbbc8f732.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-02-26 02:17:33', 0),
(21, 'yoyo', 'មន្ទីពេទ្យyoyo', 'y', 'abc', 'y', 'y', 1, 2, 14, 2, '21-yoyo', 'uploads/hostpitals/hostpital567ebbf373176.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-03-24 17:49:58', 1),
(22, 'tata', 'មន្ទីពេទ្យtata', 'a', '', 'a', 'a', 1, 2, 13, 2, '22-tata', 'uploads/hostpitals/hostpital567ebc28d264f.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:52', 0),
(23, 'rara', 'មន្ទីពេទ្យ', 'a', 'a', '', '', 1, 2, 13, 2, '23-rara', 'uploads/hostpitals/hostpital567ebc56d9f2d.jpg', 1, 2, 1, '0000-00-00 00:00:00', '2016-03-12 19:54:19', 0),
(24, 'dadad', 'មន្ទីពេទ្យdadad', 'd', '', 'd', 'd', 1, 2, 13, 2, '24-dadad', 'uploads/hostpitals/hostpital567ebc7e94049.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:54', 0),
(25, 'vavaha', 'មន្ទីពេទ្យvavaha', 'v', '', 'v', 'v', 1, 2, 13, 2, '25-vavaha', 'uploads/hostpitals/hostpital567ebcf145939.jpg', 1, 3, 1, '0000-00-00 00:00:00', '2015-12-29 05:32:00', 0),
(26, 'virak', 'មន្ទីពេទ្យvirak', 'b', '', 'b', 'b', 1, 2, 13, 2, '26-virak', 'uploads/hostpitals/hostpital567ebd42c7a15.jpg', 1, 1, 1, '0000-00-00 00:00:00', '2015-12-29 05:30:48', 0),
(27, 'nana', 'មន្ទីពេទ្យnana', 'b', '', 'b', 'b', 1, 2, 13, 2, '27-nana', 'uploads/hostpitals/hostpital567ebd6e8d3b5.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 05:27:46', 0),
(28, 'domo', 'មន្ទីពេទ្យdomo', 'v', '', 'v', 'v', 1, 2, 13, 2, '28-domo', 'uploads/hostpitals/hostpital567ebdac70aa0.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 05:27:14', 0),
(29, 'baza', 'មន្ទីពេទ្យbaza', 'z', '', 'z', 'z', 1, 2, 13, 2, '29-baza', 'uploads/hostpitals/hostpital567ebe1e3f0f8.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2015-12-29 05:24:19', 0),
(30, 'neymar', 'មន្ទីពេទ្យneymar', 'n', '', 'n', 'n', 1, 2, 13, 2, '30-neymar', 'uploads/hostpitals/hostpital567ebe625e332.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:39', 0),
(31, 'modo', 'មន្ទីពេទ្យmodo', 'f', '', 'f', 'f', 1, 2, 13, 2, '31-modo', 'uploads/hostpitals/hostpital567ebe946bde8.jpg', 1, 5, 1, '0000-00-00 00:00:00', '2015-12-29 05:19:59', 0),
(32, 'mili', 'មន្ទីពេទ្យmili', 'f', '', 'n', 'a', 1, 2, 13, 2, '32-mili', 'uploads/hostpitals/hostpital567ebec789876.jpg', 1, 4, 1, '0000-00-00 00:00:00', '2015-12-29 05:21:33', 0),
(33, 'momo', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', 1, 2, 13, 2, '33-momo', 'uploads/hostpitals/hostpital567ebefc626ce.jpg', 1, 7, 1, '0000-00-00 00:00:00', '2015-12-26 17:23:24', 0),
(34, 'sokkema', 'មន្ទីពេទ្យ', 'k', '', 'k', 'k', 1, 2, 13, 2, '34-sokkema', 'uploads/hostpitals/hostpital567f494516128.jpg', 1, 6, 1, '0000-00-00 00:00:00', '2015-12-27 03:13:25', 0),
(35, 'Z8', 'Z8', 'c', 'C', '<p>c</p>', '<p>v</p>', 1, 2, 14, 2, '35-Z8', 'uploads/hostpitals/hostpital567f499cbdda1.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-03-24 13:35:05', 1),
(36, 'ZJ', 'ZJ', 'sa', 'SA', '<p>sa</p>\r\n', '<p>sa</p>\r\n', 1, 2, 13, 2, '36-ZJ', 'uploads/hostpitals/hostpital567f49dec9ae1.jpg', 1, 2, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:12', 0),
(37, 'ZI', 'ZI', 'ra', 'RA', '<p>ra</p>\r\n', '<p>ra</p>\r\n', 1, 2, 13, 2, '37-ZI', 'uploads/hostpitals/hostpital567f4a2007a6d.jpg', 1, 1, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:15', 0),
(38, 'ZH', 'ZH', 'c', 'C', '<p>c</p>\r\n', '<p>c</p>\r\n', 1, 2, 13, 2, '38-ZH', 'uploads/hostpitals/hostpital567f4a54bc65a.jpg', 1, 3, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:17', 0),
(39, 'ZG', 'ZG', 'v', 'V', '<p>v</p>\r\n', '<p>v</p>\r\n', 1, 2, 13, 2, '39-ZG', 'uploads/hostpitals/hostpital567f4a886d3b9.jpg', 1, 4, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:19', 0),
(40, 'ZF', 'ZF', 'ch', 'CH', '<p>ch</p>\r\n', '<p>ch</p>\r\n', 1, 2, 13, 2, '40-ZF', 'uploads/hostpitals/hostpital567f4ad206da2.jpg', 1, 5, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:22', 0),
(41, 'ZE', 'ZE', 'k', 'K', '<p>k</p>\r\n', '<p>k</p>\r\n', 1, 2, 13, 2, '41-ZE', 'uploads/hostpitals/hostpital567f4b347cc90.jpg', 1, 6, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:24', 0),
(42, 'ZD', 'ZD', 'vi', 'VI', '<p>vi</p>', '<p>vi</p>', 1, 2, 13, 2, '42-ZD', 'uploads/hostpitals/hostpital567f4b6edbaf7.jpg', 1, 7, 1, '0000-00-00 00:00:00', '2016-03-04 05:34:07', 0),
(43, 'ZC', 'ZC', 'gi', 'GI', '<p>gi</p>', '<p>gi</p>', 1, 2, 14, 2, '43-ZC', 'uploads/hostpitals/hostpital567f4ba3aa320.jpg', 1, 8, 1, '0000-00-00 00:00:00', '2016-03-13 10:01:40', 0),
(44, 'ZB', 'ZB', 'af', 'AF', '<p>af</p>', '<p>af</p>', 1, 2, 14, 2, '44-ZB', 'uploads/hostpitals/hostpital567f4bdd8c814.jpg', 1, 9, 1, '0000-00-00 00:00:00', '2016-03-13 10:01:32', 0),
(45, 'ZA', 'ZA', 'as', 'Mr XXXX', '<p>as</p>', '<p>as</p>', 1, 2, 14, 2, '45-ZA', 'uploads/hostpitals/hostpital567f4c24b8f36.jpg', 1, 10, 1, '0000-00-00 00:00:00', '2016-03-13 10:01:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_branches`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_branches` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(10) NOT NULL,
  `en_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `working_hours` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `en_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `id_province` int(10) DEFAULT NULL,
  `id_distrit` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tbl_hospital_branches`
--

INSERT INTO `tbl_hospital_branches` (`id`, `id_hospital`, `en_name`, `kh_name`, `is_default`, `working_hours`, `phone`, `email`, `en_address`, `kh_address`, `website`, `facebook_link`, `lat`, `lon`, `is_published`, `created_dt`, `modified_dt`, `id_province`, `id_distrit`) VALUES
(1, 45, 'Head Hoffice', 'Head Hoffice', 1, 'N/A', '09533343434', 'koeun_math@yahoo.com', 'Phnom Penh', 'Phnom Penh', '', '', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-02-28 12:50:18', 2, 2),
(7, 44, 'Sample Test', 'Sample', 1, 'N/A', 'NA', 'a@f.v', 'XXXXXX', 'XXX', '', '', 10.932152, 104.798771, 1, '0000-00-00 00:00:00', '2016-02-28 09:23:55', 21, 6),
(8, 43, 'Takeo', 'Takeo', 1, 'XXX', '011111', 'takeo@xxx.com', 'Takeo', 'Takoe', '', '', 11.585263, 104.90025, 1, '0000-00-00 00:00:00', '2016-02-28 04:37:46', 2, 2),
(9, 42, 'Head Office', 'Head Office', 1, 'N/A', 'N/A', 'koeun_math@yahoo.com', 'Sen Sok', 'Sen Sok', '', '', 11.588374, 104.915357, 1, '0000-00-00 00:00:00', '2016-02-28 04:36:33', 2, 3),
(10, 1, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(11, 3, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(12, 4, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(13, 5, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(14, 6, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(15, 7, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(16, 8, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(17, 9, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(18, 10, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(19, 11, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(20, 12, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(21, 13, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(22, 14, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(23, 15, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(24, 16, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(25, 17, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(26, 18, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(27, 19, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(28, 20, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(29, 21, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(30, 22, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(31, 23, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(32, 24, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(33, 25, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(34, 26, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(35, 27, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(36, 28, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(37, 29, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(38, 30, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(39, 31, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(40, 32, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(41, 33, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(42, 34, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(43, 35, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(44, 36, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(45, 37, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:08', 2, 2),
(46, 38, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(47, 39, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(48, 40, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(49, 41, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(50, 42, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(51, 43, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(52, 44, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(53, 45, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT '0',
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_hospital_categories`
--

INSERT INTO `tbl_hospital_categories` (`id`, `en_name`, `kh_name`, `is_published`, `modified_dt`) VALUES
(1, 'Public', 'សធារណ', 1, NULL),
(2, 'Private', 'Private', 1, NULL),
(3, 'NGO', 'NGO', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_codes`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '0',
  `disabled_dt` datetime DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4322 ;

--
-- Dumping data for table `tbl_hospital_codes`
--

INSERT INTO `tbl_hospital_codes` (`id`, `id_hospital`, `code`, `is_active`, `disabled_dt`, `created_dt`) VALUES
(14, 43, 'A', 1, '2016-02-28 03:36:09', '2016-02-28 15:33:58'),
(15, 43, 'B', 1, '2016-02-28 03:36:20', '2016-02-28 15:34:03'),
(16, 43, 'C', 1, '2016-02-28 03:36:42', '2016-02-28 15:34:07'),
(17, 43, 'D', 1, '2016-02-28 03:37:09', '2016-02-28 15:34:11'),
(18, 43, 'E', 1, '2016-02-28 03:37:24', '2016-02-28 15:34:14'),
(19, 43, 'F', 1, '2016-02-28 03:37:36', '2016-02-28 15:34:17'),
(20, 43, 'G', 1, '2016-02-28 03:37:59', '2016-02-28 15:34:20'),
(21, 43, 'H', 1, '2016-02-28 03:38:11', '2016-02-28 15:34:23'),
(22, 43, 'I', 1, '2016-02-28 03:38:25', '2016-02-28 15:34:28'),
(23, 45, 'fd', NULL, NULL, '2016-03-04 08:18:44'),
(1621, 1, '100020160313', 0, NULL, NULL),
(1622, 1, '100120160313', 0, NULL, NULL),
(1623, 1, '100220160313', 0, NULL, NULL),
(1624, 1, '100320160313', 0, NULL, NULL),
(1625, 1, '100420160313', 0, NULL, NULL),
(1626, 1, '100520160313', 0, NULL, NULL),
(1627, 1, '100620160313', 0, NULL, NULL),
(1628, 1, '100720160313', 0, NULL, NULL),
(1629, 1, '100820160313', 0, NULL, NULL),
(1630, 1, '100920160313', 0, NULL, NULL),
(1631, 1, '101020160313', 0, NULL, NULL),
(1632, 1, '101120160313', 0, NULL, NULL),
(1633, 1, '101220160313', 0, NULL, NULL),
(1634, 1, '101320160313', 0, NULL, NULL),
(1635, 1, '101420160313', 0, NULL, NULL),
(1636, 1, '101520160313', 0, NULL, NULL),
(1637, 1, '101620160313', 0, NULL, NULL),
(1638, 1, '101720160313', 0, NULL, NULL),
(1639, 1, '101820160313', 0, NULL, NULL),
(1640, 1, '101920160313', 0, NULL, NULL),
(1641, 1, '102020160313', 0, NULL, NULL),
(1642, 1, '102120160313', 0, NULL, NULL),
(1643, 1, '102220160313', 0, NULL, NULL),
(1644, 1, '102320160313', 0, NULL, NULL),
(1645, 1, '102420160313', 0, NULL, NULL),
(1646, 1, '102520160313', 0, NULL, NULL),
(1647, 1, '102620160313', 0, NULL, NULL),
(1648, 1, '102720160313', 0, NULL, NULL),
(1649, 1, '102820160313', 0, NULL, NULL),
(1650, 1, '102920160313', 0, NULL, NULL),
(1651, 1, '103020160313', 0, NULL, NULL),
(1652, 1, '103120160313', 0, NULL, NULL),
(1653, 1, '103220160313', 0, NULL, NULL),
(1654, 1, '103320160313', 0, NULL, NULL),
(1655, 1, '103420160313', 0, NULL, NULL),
(1656, 1, '103520160313', 0, NULL, NULL),
(1657, 1, '103620160313', 0, NULL, NULL),
(1658, 1, '103720160313', 0, NULL, NULL),
(1659, 1, '103820160313', 0, NULL, NULL),
(1660, 1, '103920160313', 0, NULL, NULL),
(1661, 1, '104020160313', 0, NULL, NULL),
(1662, 1, '104120160313', 0, NULL, NULL),
(1663, 1, '104220160313', 0, NULL, NULL),
(1664, 1, '104320160313', 0, NULL, NULL),
(1665, 1, '104420160313', 0, NULL, NULL),
(1666, 1, '104520160313', 0, NULL, NULL),
(1667, 1, '104620160313', 0, NULL, NULL),
(1668, 1, '104720160313', 0, NULL, NULL),
(1669, 1, '104820160313', 0, NULL, NULL),
(1670, 1, '104920160313', 0, NULL, NULL),
(1671, 3, '300020160313', 0, NULL, NULL),
(1672, 3, '300120160313', 0, NULL, NULL),
(1673, 3, '300220160313', 0, NULL, NULL),
(1674, 3, '300320160313', 0, NULL, NULL),
(1675, 3, '300420160313', 0, NULL, NULL),
(1676, 3, '300520160313', 0, NULL, NULL),
(1677, 3, '300620160313', 0, NULL, NULL),
(1678, 3, '300720160313', 0, NULL, NULL),
(1679, 3, '300820160313', 0, NULL, NULL),
(1680, 3, '300920160313', 0, NULL, NULL),
(1681, 3, '301020160313', 0, NULL, NULL),
(1682, 3, '301120160313', 0, NULL, NULL),
(1683, 3, '301220160313', 0, NULL, NULL),
(1684, 3, '301320160313', 0, NULL, NULL),
(1685, 3, '301420160313', 0, NULL, NULL),
(1686, 3, '301520160313', 0, NULL, NULL),
(1687, 3, '301620160313', 0, NULL, NULL),
(1688, 3, '301720160313', 0, NULL, NULL),
(1689, 3, '301820160313', 0, NULL, NULL),
(1690, 3, '301920160313', 0, NULL, NULL),
(1691, 3, '302020160313', 0, NULL, NULL),
(1692, 3, '302120160313', 0, NULL, NULL),
(1693, 3, '302220160313', 0, NULL, NULL),
(1694, 3, '302320160313', 0, NULL, NULL),
(1695, 3, '302420160313', 0, NULL, NULL),
(1696, 3, '302520160313', 0, NULL, NULL),
(1697, 3, '302620160313', 0, NULL, NULL),
(1698, 3, '302720160313', 0, NULL, NULL),
(1699, 3, '302820160313', 0, NULL, NULL),
(1700, 3, '302920160313', 0, NULL, NULL),
(1701, 3, '303020160313', 0, NULL, NULL),
(1702, 3, '303120160313', 0, NULL, NULL),
(1703, 3, '303220160313', 0, NULL, NULL),
(1704, 3, '303320160313', 0, NULL, NULL),
(1705, 3, '303420160313', 0, NULL, NULL),
(1706, 3, '303520160313', 0, NULL, NULL),
(1707, 3, '303620160313', 0, NULL, NULL),
(1708, 3, '303720160313', 0, NULL, NULL),
(1709, 3, '303820160313', 0, NULL, NULL),
(1710, 3, '303920160313', 0, NULL, NULL),
(1711, 3, '304020160313', 0, NULL, NULL),
(1712, 3, '304120160313', 0, NULL, NULL),
(1713, 3, '304220160313', 0, NULL, NULL),
(1714, 3, '304320160313', 0, NULL, NULL),
(1715, 3, '304420160313', 0, NULL, NULL),
(1716, 3, '304520160313', 0, NULL, NULL),
(1717, 3, '304620160313', 0, NULL, NULL),
(1718, 3, '304720160313', 0, NULL, NULL),
(1719, 3, '304820160313', 0, NULL, NULL),
(1720, 3, '304920160313', 0, NULL, NULL),
(1721, 4, '400020160313', 0, NULL, NULL),
(1722, 4, '400120160313', 0, NULL, NULL),
(1723, 4, '400220160313', 0, NULL, NULL),
(1724, 4, '400320160313', 0, NULL, NULL),
(1725, 4, '400420160313', 0, NULL, NULL),
(1726, 4, '400520160313', 0, NULL, NULL),
(1727, 4, '400620160313', 0, NULL, NULL),
(1728, 4, '400720160313', 0, NULL, NULL),
(1729, 4, '400820160313', 0, NULL, NULL),
(1730, 4, '400920160313', 0, NULL, NULL),
(1731, 4, '401020160313', 0, NULL, NULL),
(1732, 4, '401120160313', 0, NULL, NULL),
(1733, 4, '401220160313', 0, NULL, NULL),
(1734, 4, '401320160313', 0, NULL, NULL),
(1735, 4, '401420160313', 0, NULL, NULL),
(1736, 4, '401520160313', 0, NULL, NULL),
(1737, 4, '401620160313', 0, NULL, NULL),
(1738, 4, '401720160313', 0, NULL, NULL),
(1739, 4, '401820160313', 0, NULL, NULL),
(1740, 4, '401920160313', 0, NULL, NULL),
(1741, 4, '402020160313', 0, NULL, NULL),
(1742, 4, '402120160313', 0, NULL, NULL),
(1743, 4, '402220160313', 0, NULL, NULL),
(1744, 4, '402320160313', 0, NULL, NULL),
(1745, 4, '402420160313', 0, NULL, NULL),
(1746, 4, '402520160313', 0, NULL, NULL),
(1747, 4, '402620160313', 0, NULL, NULL),
(1748, 4, '402720160313', 0, NULL, NULL),
(1749, 4, '402820160313', 0, NULL, NULL),
(1750, 4, '402920160313', 0, NULL, NULL),
(1751, 4, '403020160313', 0, NULL, NULL),
(1752, 4, '403120160313', 0, NULL, NULL),
(1753, 4, '403220160313', 0, NULL, NULL),
(1754, 4, '403320160313', 0, NULL, NULL),
(1755, 4, '403420160313', 0, NULL, NULL),
(1756, 4, '403520160313', 0, NULL, NULL),
(1757, 4, '403620160313', 0, NULL, NULL),
(1758, 4, '403720160313', 0, NULL, NULL),
(1759, 4, '403820160313', 0, NULL, NULL),
(1760, 4, '403920160313', 0, NULL, NULL),
(1761, 4, '404020160313', 0, NULL, NULL),
(1762, 4, '404120160313', 0, NULL, NULL),
(1763, 4, '404220160313', 0, NULL, NULL),
(1764, 4, '404320160313', 0, NULL, NULL),
(1765, 4, '404420160313', 0, NULL, NULL),
(1766, 4, '404520160313', 0, NULL, NULL),
(1767, 4, '404620160313', 0, NULL, NULL),
(1768, 4, '404720160313', 0, NULL, NULL),
(1769, 4, '404820160313', 0, NULL, NULL),
(1770, 4, '404920160313', 0, NULL, NULL),
(1771, 5, '500020160313', 0, NULL, NULL),
(1772, 5, '500120160313', 0, NULL, NULL),
(1773, 5, '500220160313', 0, NULL, NULL),
(1774, 5, '500320160313', 0, NULL, NULL),
(1775, 5, '500420160313', 0, NULL, NULL),
(1776, 5, '500520160313', 0, NULL, NULL),
(1777, 5, '500620160313', 0, NULL, NULL),
(1778, 5, '500720160313', 0, NULL, NULL),
(1779, 5, '500820160313', 0, NULL, NULL),
(1780, 5, '500920160313', 0, NULL, NULL),
(1781, 5, '501020160313', 0, NULL, NULL),
(1782, 5, '501120160313', 0, NULL, NULL),
(1783, 5, '501220160313', 0, NULL, NULL),
(1784, 5, '501320160313', 0, NULL, NULL),
(1785, 5, '501420160313', 0, NULL, NULL),
(1786, 5, '501520160313', 0, NULL, NULL),
(1787, 5, '501620160313', 0, NULL, NULL),
(1788, 5, '501720160313', 0, NULL, NULL),
(1789, 5, '501820160313', 0, NULL, NULL),
(1790, 5, '501920160313', 0, NULL, NULL),
(1791, 5, '502020160313', 0, NULL, NULL),
(1792, 5, '502120160313', 0, NULL, NULL),
(1793, 5, '502220160313', 0, NULL, NULL),
(1794, 5, '502320160313', 0, NULL, NULL),
(1795, 5, '502420160313', 0, NULL, NULL),
(1796, 5, '502520160313', 0, NULL, NULL),
(1797, 5, '502620160313', 0, NULL, NULL),
(1798, 5, '502720160313', 0, NULL, NULL),
(1799, 5, '502820160313', 0, NULL, NULL),
(1800, 5, '502920160313', 0, NULL, NULL),
(1801, 5, '503020160313', 0, NULL, NULL),
(1802, 5, '503120160313', 0, NULL, NULL),
(1803, 5, '503220160313', 0, NULL, NULL),
(1804, 5, '503320160313', 0, NULL, NULL),
(1805, 5, '503420160313', 0, NULL, NULL),
(1806, 5, '503520160313', 0, NULL, NULL),
(1807, 5, '503620160313', 0, NULL, NULL),
(1808, 5, '503720160313', 0, NULL, NULL),
(1809, 5, '503820160313', 0, NULL, NULL),
(1810, 5, '503920160313', 0, NULL, NULL),
(1811, 5, '504020160313', 0, NULL, NULL),
(1812, 5, '504120160313', 0, NULL, NULL),
(1813, 5, '504220160313', 0, NULL, NULL),
(1814, 5, '504320160313', 0, NULL, NULL),
(1815, 5, '504420160313', 0, NULL, NULL),
(1816, 5, '504520160313', 0, NULL, NULL),
(1817, 5, '504620160313', 0, NULL, NULL),
(1818, 5, '504720160313', 0, NULL, NULL),
(1819, 5, '504820160313', 0, NULL, NULL),
(1820, 5, '504920160313', 0, NULL, NULL),
(1821, 6, '600020160313', 0, NULL, NULL),
(1822, 6, '600120160313', 0, NULL, NULL),
(1823, 6, '600220160313', 0, NULL, NULL),
(1824, 6, '600320160313', 0, NULL, NULL),
(1825, 6, '600420160313', 0, NULL, NULL),
(1826, 6, '600520160313', 0, NULL, NULL),
(1827, 6, '600620160313', 0, NULL, NULL),
(1828, 6, '600720160313', 0, NULL, NULL),
(1829, 6, '600820160313', 0, NULL, NULL),
(1830, 6, '600920160313', 0, NULL, NULL),
(1831, 6, '601020160313', 0, NULL, NULL),
(1832, 6, '601120160313', 0, NULL, NULL),
(1833, 6, '601220160313', 0, NULL, NULL),
(1834, 6, '601320160313', 0, NULL, NULL),
(1835, 6, '601420160313', 0, NULL, NULL),
(1836, 6, '601520160313', 0, NULL, NULL),
(1837, 6, '601620160313', 0, NULL, NULL),
(1838, 6, '601720160313', 0, NULL, NULL),
(1839, 6, '601820160313', 0, NULL, NULL),
(1840, 6, '601920160313', 0, NULL, NULL),
(1841, 6, '602020160313', 0, NULL, NULL),
(1842, 6, '602120160313', 0, NULL, NULL),
(1843, 6, '602220160313', 0, NULL, NULL),
(1844, 6, '602320160313', 0, NULL, NULL),
(1845, 6, '602420160313', 0, NULL, NULL),
(1846, 6, '602520160313', 0, NULL, NULL),
(1847, 6, '602620160313', 0, NULL, NULL),
(1848, 6, '602720160313', 0, NULL, NULL),
(1849, 6, '602820160313', 0, NULL, NULL),
(1850, 6, '602920160313', 0, NULL, NULL),
(1851, 6, '603020160313', 0, NULL, NULL),
(1852, 6, '603120160313', 0, NULL, NULL),
(1853, 6, '603220160313', 0, NULL, NULL),
(1854, 6, '603320160313', 0, NULL, NULL),
(1855, 6, '603420160313', 0, NULL, NULL),
(1856, 6, '603520160313', 0, NULL, NULL),
(1857, 6, '603620160313', 0, NULL, NULL),
(1858, 6, '603720160313', 0, NULL, NULL),
(1859, 6, '603820160313', 0, NULL, NULL),
(1860, 6, '603920160313', 0, NULL, NULL),
(1861, 6, '604020160313', 0, NULL, NULL),
(1862, 6, '604120160313', 0, NULL, NULL),
(1863, 6, '604220160313', 0, NULL, NULL),
(1864, 6, '604320160313', 0, NULL, NULL),
(1865, 6, '604420160313', 0, NULL, NULL),
(1866, 6, '604520160313', 0, NULL, NULL),
(1867, 6, '604620160313', 0, NULL, NULL),
(1868, 6, '604720160313', 0, NULL, NULL),
(1869, 6, '604820160313', 0, NULL, NULL),
(1870, 6, '604920160313', 0, NULL, NULL),
(1871, 7, '700020160313', 0, NULL, NULL),
(1872, 7, '700120160313', 0, NULL, NULL),
(1873, 7, '700220160313', 0, NULL, NULL),
(1874, 7, '700320160313', 0, NULL, NULL),
(1875, 7, '700420160313', 0, NULL, NULL),
(1876, 7, '700520160313', 0, NULL, NULL),
(1877, 7, '700620160313', 0, NULL, NULL),
(1878, 7, '700720160313', 0, NULL, NULL),
(1879, 7, '700820160313', 0, NULL, NULL),
(1880, 7, '700920160313', 0, NULL, NULL),
(1881, 7, '701020160313', 0, NULL, NULL),
(1882, 7, '701120160313', 0, NULL, NULL),
(1883, 7, '701220160313', 0, NULL, NULL),
(1884, 7, '701320160313', 0, NULL, NULL),
(1885, 7, '701420160313', 0, NULL, NULL),
(1886, 7, '701520160313', 0, NULL, NULL),
(1887, 7, '701620160313', 0, NULL, NULL),
(1888, 7, '701720160313', 0, NULL, NULL),
(1889, 7, '701820160313', 0, NULL, NULL),
(1890, 7, '701920160313', 0, NULL, NULL),
(1891, 7, '702020160313', 0, NULL, NULL),
(1892, 7, '702120160313', 0, NULL, NULL),
(1893, 7, '702220160313', 0, NULL, NULL),
(1894, 7, '702320160313', 0, NULL, NULL),
(1895, 7, '702420160313', 0, NULL, NULL),
(1896, 7, '702520160313', 0, NULL, NULL),
(1897, 7, '702620160313', 0, NULL, NULL),
(1898, 7, '702720160313', 0, NULL, NULL),
(1899, 7, '702820160313', 0, NULL, NULL),
(1900, 7, '702920160313', 0, NULL, NULL),
(1901, 7, '703020160313', 0, NULL, NULL),
(1902, 7, '703120160313', 0, NULL, NULL),
(1903, 7, '703220160313', 0, NULL, NULL),
(1904, 7, '703320160313', 0, NULL, NULL),
(1905, 7, '703420160313', 0, NULL, NULL),
(1906, 7, '703520160313', 0, NULL, NULL),
(1907, 7, '703620160313', 0, NULL, NULL),
(1908, 7, '703720160313', 0, NULL, NULL),
(1909, 7, '703820160313', 0, NULL, NULL),
(1910, 7, '703920160313', 0, NULL, NULL),
(1911, 7, '704020160313', 0, NULL, NULL),
(1912, 7, '704120160313', 0, NULL, NULL),
(1913, 7, '704220160313', 0, NULL, NULL),
(1914, 7, '704320160313', 0, NULL, NULL),
(1915, 7, '704420160313', 0, NULL, NULL),
(1916, 7, '704520160313', 0, NULL, NULL),
(1917, 7, '704620160313', 0, NULL, NULL),
(1918, 7, '704720160313', 0, NULL, NULL),
(1919, 7, '704820160313', 0, NULL, NULL),
(1920, 7, '704920160313', 0, NULL, NULL),
(1921, 8, '800020160313', 0, NULL, NULL),
(1922, 8, '800120160313', 0, NULL, NULL),
(1923, 8, '800220160313', 0, NULL, NULL),
(1924, 8, '800320160313', 0, NULL, NULL),
(1925, 8, '800420160313', 0, NULL, NULL),
(1926, 8, '800520160313', 0, NULL, NULL),
(1927, 8, '800620160313', 0, NULL, NULL),
(1928, 8, '800720160313', 0, NULL, NULL),
(1929, 8, '800820160313', 0, NULL, NULL),
(1930, 8, '800920160313', 0, NULL, NULL),
(1931, 8, '801020160313', 0, NULL, NULL),
(1932, 8, '801120160313', 0, NULL, NULL),
(1933, 8, '801220160313', 0, NULL, NULL),
(1934, 8, '801320160313', 0, NULL, NULL),
(1935, 8, '801420160313', 0, NULL, NULL),
(1936, 8, '801520160313', 0, NULL, NULL),
(1937, 8, '801620160313', 0, NULL, NULL),
(1938, 8, '801720160313', 0, NULL, NULL),
(1939, 8, '801820160313', 0, NULL, NULL),
(1940, 8, '801920160313', 0, NULL, NULL),
(1941, 8, '802020160313', 0, NULL, NULL),
(1942, 8, '802120160313', 0, NULL, NULL),
(1943, 8, '802220160313', 0, NULL, NULL),
(1944, 8, '802320160313', 0, NULL, NULL),
(1945, 8, '802420160313', 0, NULL, NULL),
(1946, 8, '802520160313', 0, NULL, NULL),
(1947, 8, '802620160313', 0, NULL, NULL),
(1948, 8, '802720160313', 0, NULL, NULL),
(1949, 8, '802820160313', 0, NULL, NULL),
(1950, 8, '802920160313', 0, NULL, NULL),
(1951, 8, '803020160313', 0, NULL, NULL),
(1952, 8, '803120160313', 0, NULL, NULL),
(1953, 8, '803220160313', 0, NULL, NULL),
(1954, 8, '803320160313', 0, NULL, NULL),
(1955, 8, '803420160313', 0, NULL, NULL),
(1956, 8, '803520160313', 0, NULL, NULL),
(1957, 8, '803620160313', 0, NULL, NULL),
(1958, 8, '803720160313', 0, NULL, NULL),
(1959, 8, '803820160313', 0, NULL, NULL),
(1960, 8, '803920160313', 0, NULL, NULL),
(1961, 8, '804020160313', 0, NULL, NULL),
(1962, 8, '804120160313', 0, NULL, NULL),
(1963, 8, '804220160313', 0, NULL, NULL),
(1964, 8, '804320160313', 0, NULL, NULL),
(1965, 8, '804420160313', 0, NULL, NULL),
(1966, 8, '804520160313', 0, NULL, NULL),
(1967, 8, '804620160313', 0, NULL, NULL),
(1968, 8, '804720160313', 0, NULL, NULL),
(1969, 8, '804820160313', 0, NULL, NULL),
(1970, 8, '804920160313', 0, NULL, NULL),
(1971, 9, '900020160313', 0, NULL, NULL),
(1972, 9, '900120160313', 0, NULL, NULL),
(1973, 9, '900220160313', 0, NULL, NULL),
(1974, 9, '900320160313', 0, NULL, NULL),
(1975, 9, '900420160313', 0, NULL, NULL),
(1976, 9, '900520160313', 0, NULL, NULL),
(1977, 9, '900620160313', 0, NULL, NULL),
(1978, 9, '900720160313', 0, NULL, NULL),
(1979, 9, '900820160313', 0, NULL, NULL),
(1980, 9, '900920160313', 0, NULL, NULL),
(1981, 9, '901020160313', 0, NULL, NULL),
(1982, 9, '901120160313', 0, NULL, NULL),
(1983, 9, '901220160313', 0, NULL, NULL),
(1984, 9, '901320160313', 0, NULL, NULL),
(1985, 9, '901420160313', 0, NULL, NULL),
(1986, 9, '901520160313', 0, NULL, NULL),
(1987, 9, '901620160313', 0, NULL, NULL),
(1988, 9, '901720160313', 0, NULL, NULL),
(1989, 9, '901820160313', 0, NULL, NULL),
(1990, 9, '901920160313', 0, NULL, NULL),
(1991, 9, '902020160313', 0, NULL, NULL),
(1992, 9, '902120160313', 0, NULL, NULL),
(1993, 9, '902220160313', 0, NULL, NULL),
(1994, 9, '902320160313', 0, NULL, NULL),
(1995, 9, '902420160313', 0, NULL, NULL),
(1996, 9, '902520160313', 0, NULL, NULL),
(1997, 9, '902620160313', 0, NULL, NULL),
(1998, 9, '902720160313', 0, NULL, NULL),
(1999, 9, '902820160313', 0, NULL, NULL),
(2000, 9, '902920160313', 0, NULL, NULL),
(2001, 9, '903020160313', 0, NULL, NULL),
(2002, 9, '903120160313', 0, NULL, NULL),
(2003, 9, '903220160313', 0, NULL, NULL),
(2004, 9, '903320160313', 0, NULL, NULL),
(2005, 9, '903420160313', 0, NULL, NULL),
(2006, 9, '903520160313', 0, NULL, NULL),
(2007, 9, '903620160313', 0, NULL, NULL),
(2008, 9, '903720160313', 0, NULL, NULL),
(2009, 9, '903820160313', 0, NULL, NULL),
(2010, 9, '903920160313', 0, NULL, NULL),
(2011, 9, '904020160313', 0, NULL, NULL),
(2012, 9, '904120160313', 0, NULL, NULL),
(2013, 9, '904220160313', 0, NULL, NULL),
(2014, 9, '904320160313', 0, NULL, NULL),
(2015, 9, '904420160313', 0, NULL, NULL),
(2016, 9, '904520160313', 0, NULL, NULL),
(2017, 9, '904620160313', 0, NULL, NULL),
(2018, 9, '904720160313', 0, NULL, NULL),
(2019, 9, '904820160313', 0, NULL, NULL),
(2020, 9, '904920160313', 0, NULL, NULL),
(2021, 10, '1000020160313', 0, NULL, NULL),
(2022, 10, '1000120160313', 0, NULL, NULL),
(2023, 10, '1000220160313', 0, NULL, NULL),
(2024, 10, '1000320160313', 0, NULL, NULL),
(2025, 10, '1000420160313', 0, NULL, NULL),
(2026, 10, '1000520160313', 0, NULL, NULL),
(2027, 10, '1000620160313', 0, NULL, NULL),
(2028, 10, '1000720160313', 0, NULL, NULL),
(2029, 10, '1000820160313', 0, NULL, NULL),
(2030, 10, '1000920160313', 0, NULL, NULL),
(2031, 10, '1001020160313', 0, NULL, NULL),
(2032, 10, '1001120160313', 0, NULL, NULL),
(2033, 10, '1001220160313', 0, NULL, NULL),
(2034, 10, '1001320160313', 0, NULL, NULL),
(2035, 10, '1001420160313', 0, NULL, NULL),
(2036, 10, '1001520160313', 0, NULL, NULL),
(2037, 10, '1001620160313', 0, NULL, NULL),
(2038, 10, '1001720160313', 0, NULL, NULL),
(2039, 10, '1001820160313', 0, NULL, NULL),
(2040, 10, '1001920160313', 0, NULL, NULL),
(2041, 10, '1002020160313', 0, NULL, NULL),
(2042, 10, '1002120160313', 0, NULL, NULL),
(2043, 10, '1002220160313', 0, NULL, NULL),
(2044, 10, '1002320160313', 0, NULL, NULL),
(2045, 10, '1002420160313', 0, NULL, NULL),
(2046, 10, '1002520160313', 0, NULL, NULL),
(2047, 10, '1002620160313', 0, NULL, NULL),
(2048, 10, '1002720160313', 0, NULL, NULL),
(2049, 10, '1002820160313', 0, NULL, NULL),
(2050, 10, '1002920160313', 0, NULL, NULL),
(2051, 10, '1003020160313', 0, NULL, NULL),
(2052, 10, '1003120160313', 0, NULL, NULL),
(2053, 10, '1003220160313', 0, NULL, NULL),
(2054, 10, '1003320160313', 0, NULL, NULL),
(2055, 10, '1003420160313', 0, NULL, NULL),
(2056, 10, '1003520160313', 0, NULL, NULL),
(2057, 10, '1003620160313', 0, NULL, NULL),
(2058, 10, '1003720160313', 0, NULL, NULL),
(2059, 10, '1003820160313', 0, NULL, NULL),
(2060, 10, '1003920160313', 0, NULL, NULL),
(2061, 10, '1004020160313', 0, NULL, NULL),
(2062, 10, '1004120160313', 0, NULL, NULL),
(2063, 10, '1004220160313', 0, NULL, NULL),
(2064, 10, '1004320160313', 0, NULL, NULL),
(2065, 10, '1004420160313', 0, NULL, NULL),
(2066, 10, '1004520160313', 0, NULL, NULL),
(2067, 10, '1004620160313', 0, NULL, NULL),
(2068, 10, '1004720160313', 0, NULL, NULL),
(2069, 10, '1004820160313', 0, NULL, NULL),
(2070, 10, '1004920160313', 0, NULL, NULL),
(2071, 11, '1100020160313', 0, NULL, NULL),
(2072, 11, '1100120160313', 0, NULL, NULL),
(2073, 11, '1100220160313', 0, NULL, NULL),
(2074, 11, '1100320160313', 0, NULL, NULL),
(2075, 11, '1100420160313', 0, NULL, NULL),
(2076, 11, '1100520160313', 0, NULL, NULL),
(2077, 11, '1100620160313', 0, NULL, NULL),
(2078, 11, '1100720160313', 0, NULL, NULL),
(2079, 11, '1100820160313', 0, NULL, NULL),
(2080, 11, '1100920160313', 0, NULL, NULL),
(2081, 11, '1101020160313', 0, NULL, NULL),
(2082, 11, '1101120160313', 0, NULL, NULL),
(2083, 11, '1101220160313', 0, NULL, NULL),
(2084, 11, '1101320160313', 0, NULL, NULL),
(2085, 11, '1101420160313', 0, NULL, NULL),
(2086, 11, '1101520160313', 0, NULL, NULL),
(2087, 11, '1101620160313', 0, NULL, NULL),
(2088, 11, '1101720160313', 0, NULL, NULL),
(2089, 11, '1101820160313', 0, NULL, NULL),
(2090, 11, '1101920160313', 0, NULL, NULL),
(2091, 11, '1102020160313', 0, NULL, NULL),
(2092, 11, '1102120160313', 0, NULL, NULL),
(2093, 11, '1102220160313', 0, NULL, NULL),
(2094, 11, '1102320160313', 0, NULL, NULL),
(2095, 11, '1102420160313', 0, NULL, NULL),
(2096, 11, '1102520160313', 0, NULL, NULL),
(2097, 11, '1102620160313', 0, NULL, NULL),
(2098, 11, '1102720160313', 0, NULL, NULL),
(2099, 11, '1102820160313', 0, NULL, NULL),
(2100, 11, '1102920160313', 0, NULL, NULL),
(2101, 11, '1103020160313', 0, NULL, NULL),
(2102, 11, '1103120160313', 0, NULL, NULL),
(2103, 11, '1103220160313', 0, NULL, NULL),
(2104, 11, '1103320160313', 0, NULL, NULL),
(2105, 11, '1103420160313', 0, NULL, NULL),
(2106, 11, '1103520160313', 0, NULL, NULL),
(2107, 11, '1103620160313', 0, NULL, NULL),
(2108, 11, '1103720160313', 0, NULL, NULL),
(2109, 11, '1103820160313', 0, NULL, NULL),
(2110, 11, '1103920160313', 0, NULL, NULL),
(2111, 11, '1104020160313', 0, NULL, NULL),
(2112, 11, '1104120160313', 0, NULL, NULL),
(2113, 11, '1104220160313', 0, NULL, NULL),
(2114, 11, '1104320160313', 0, NULL, NULL),
(2115, 11, '1104420160313', 0, NULL, NULL),
(2116, 11, '1104520160313', 0, NULL, NULL),
(2117, 11, '1104620160313', 0, NULL, NULL),
(2118, 11, '1104720160313', 0, NULL, NULL),
(2119, 11, '1104820160313', 0, NULL, NULL),
(2120, 11, '1104920160313', 0, NULL, NULL),
(2121, 12, '1200020160313', 0, NULL, NULL),
(2122, 12, '1200120160313', 0, NULL, NULL),
(2123, 12, '1200220160313', 0, NULL, NULL),
(2124, 12, '1200320160313', 0, NULL, NULL),
(2125, 12, '1200420160313', 0, NULL, NULL),
(2126, 12, '1200520160313', 0, NULL, NULL),
(2127, 12, '1200620160313', 0, NULL, NULL),
(2128, 12, '1200720160313', 0, NULL, NULL),
(2129, 12, '1200820160313', 0, NULL, NULL),
(2130, 12, '1200920160313', 0, NULL, NULL),
(2131, 12, '1201020160313', 0, NULL, NULL),
(2132, 12, '1201120160313', 0, NULL, NULL),
(2133, 12, '1201220160313', 0, NULL, NULL),
(2134, 12, '1201320160313', 0, NULL, NULL),
(2135, 12, '1201420160313', 0, NULL, NULL),
(2136, 12, '1201520160313', 0, NULL, NULL),
(2137, 12, '1201620160313', 0, NULL, NULL),
(2138, 12, '1201720160313', 0, NULL, NULL),
(2139, 12, '1201820160313', 0, NULL, NULL),
(2140, 12, '1201920160313', 0, NULL, NULL),
(2141, 12, '1202020160313', 0, NULL, NULL),
(2142, 12, '1202120160313', 0, NULL, NULL),
(2143, 12, '1202220160313', 0, NULL, NULL),
(2144, 12, '1202320160313', 0, NULL, NULL),
(2145, 12, '1202420160313', 0, NULL, NULL),
(2146, 12, '1202520160313', 0, NULL, NULL),
(2147, 12, '1202620160313', 0, NULL, NULL),
(2148, 12, '1202720160313', 0, NULL, NULL),
(2149, 12, '1202820160313', 0, NULL, NULL),
(2150, 12, '1202920160313', 0, NULL, NULL),
(2151, 12, '1203020160313', 0, NULL, NULL),
(2152, 12, '1203120160313', 0, NULL, NULL),
(2153, 12, '1203220160313', 0, NULL, NULL),
(2154, 12, '1203320160313', 0, NULL, NULL),
(2155, 12, '1203420160313', 0, NULL, NULL),
(2156, 12, '1203520160313', 0, NULL, NULL),
(2157, 12, '1203620160313', 0, NULL, NULL),
(2158, 12, '1203720160313', 0, NULL, NULL),
(2159, 12, '1203820160313', 0, NULL, NULL),
(2160, 12, '1203920160313', 0, NULL, NULL),
(2161, 12, '1204020160313', 0, NULL, NULL),
(2162, 12, '1204120160313', 0, NULL, NULL),
(2163, 12, '1204220160313', 0, NULL, NULL),
(2164, 12, '1204320160313', 0, NULL, NULL),
(2165, 12, '1204420160313', 0, NULL, NULL),
(2166, 12, '1204520160313', 0, NULL, NULL),
(2167, 12, '1204620160313', 0, NULL, NULL),
(2168, 12, '1204720160313', 0, NULL, NULL),
(2169, 12, '1204820160313', 0, NULL, NULL),
(2170, 12, '1204920160313', 0, NULL, NULL),
(2171, 13, '1300020160313', 0, NULL, NULL),
(2172, 13, '1300120160313', 0, NULL, NULL),
(2173, 13, '1300220160313', 0, NULL, NULL),
(2174, 13, '1300320160313', 0, NULL, NULL),
(2175, 13, '1300420160313', 0, NULL, NULL),
(2176, 13, '1300520160313', 0, NULL, NULL),
(2177, 13, '1300620160313', 0, NULL, NULL),
(2178, 13, '1300720160313', 0, NULL, NULL),
(2179, 13, '1300820160313', 0, NULL, NULL),
(2180, 13, '1300920160313', 0, NULL, NULL),
(2181, 13, '1301020160313', 0, NULL, NULL),
(2182, 13, '1301120160313', 0, NULL, NULL),
(2183, 13, '1301220160313', 0, NULL, NULL),
(2184, 13, '1301320160313', 0, NULL, NULL),
(2185, 13, '1301420160313', 0, NULL, NULL),
(2186, 13, '1301520160313', 0, NULL, NULL),
(2187, 13, '1301620160313', 0, NULL, NULL),
(2188, 13, '1301720160313', 0, NULL, NULL),
(2189, 13, '1301820160313', 0, NULL, NULL),
(2190, 13, '1301920160313', 0, NULL, NULL),
(2191, 13, '1302020160313', 0, NULL, NULL),
(2192, 13, '1302120160313', 0, NULL, NULL),
(2193, 13, '1302220160313', 0, NULL, NULL),
(2194, 13, '1302320160313', 0, NULL, NULL),
(2195, 13, '1302420160313', 0, NULL, NULL),
(2196, 13, '1302520160313', 0, NULL, NULL),
(2197, 13, '1302620160313', 0, NULL, NULL),
(2198, 13, '1302720160313', 0, NULL, NULL),
(2199, 13, '1302820160313', 0, NULL, NULL),
(2200, 13, '1302920160313', 0, NULL, NULL),
(2201, 13, '1303020160313', 0, NULL, NULL),
(2202, 13, '1303120160313', 0, NULL, NULL),
(2203, 13, '1303220160313', 0, NULL, NULL),
(2204, 13, '1303320160313', 0, NULL, NULL),
(2205, 13, '1303420160313', 0, NULL, NULL),
(2206, 13, '1303520160313', 0, NULL, NULL),
(2207, 13, '1303620160313', 0, NULL, NULL),
(2208, 13, '1303720160313', 0, NULL, NULL),
(2209, 13, '1303820160313', 0, NULL, NULL),
(2210, 13, '1303920160313', 0, NULL, NULL),
(2211, 13, '1304020160313', 0, NULL, NULL),
(2212, 13, '1304120160313', 0, NULL, NULL),
(2213, 13, '1304220160313', 0, NULL, NULL),
(2214, 13, '1304320160313', 0, NULL, NULL),
(2215, 13, '1304420160313', 0, NULL, NULL),
(2216, 13, '1304520160313', 0, NULL, NULL),
(2217, 13, '1304620160313', 0, NULL, NULL),
(2218, 13, '1304720160313', 0, NULL, NULL),
(2219, 13, '1304820160313', 0, NULL, NULL),
(2220, 13, '1304920160313', 0, NULL, NULL),
(2221, 14, '1400020160313', 0, NULL, NULL),
(2222, 14, '1400120160313', 0, NULL, NULL),
(2223, 14, '1400220160313', 0, NULL, NULL),
(2224, 14, '1400320160313', 0, NULL, NULL),
(2225, 14, '1400420160313', 0, NULL, NULL),
(2226, 14, '1400520160313', 0, NULL, NULL),
(2227, 14, '1400620160313', 0, NULL, NULL),
(2228, 14, '1400720160313', 0, NULL, NULL),
(2229, 14, '1400820160313', 0, NULL, NULL),
(2230, 14, '1400920160313', 0, NULL, NULL),
(2231, 14, '1401020160313', 0, NULL, NULL),
(2232, 14, '1401120160313', 0, NULL, NULL),
(2233, 14, '1401220160313', 0, NULL, NULL),
(2234, 14, '1401320160313', 0, NULL, NULL),
(2235, 14, '1401420160313', 0, NULL, NULL),
(2236, 14, '1401520160313', 0, NULL, NULL),
(2237, 14, '1401620160313', 0, NULL, NULL),
(2238, 14, '1401720160313', 0, NULL, NULL),
(2239, 14, '1401820160313', 0, NULL, NULL),
(2240, 14, '1401920160313', 0, NULL, NULL),
(2241, 14, '1402020160313', 0, NULL, NULL),
(2242, 14, '1402120160313', 0, NULL, NULL),
(2243, 14, '1402220160313', 0, NULL, NULL),
(2244, 14, '1402320160313', 0, NULL, NULL),
(2245, 14, '1402420160313', 0, NULL, NULL),
(2246, 14, '1402520160313', 0, NULL, NULL),
(2247, 14, '1402620160313', 0, NULL, NULL),
(2248, 14, '1402720160313', 0, NULL, NULL),
(2249, 14, '1402820160313', 0, NULL, NULL),
(2250, 14, '1402920160313', 0, NULL, NULL),
(2251, 14, '1403020160313', 0, NULL, NULL),
(2252, 14, '1403120160313', 0, NULL, NULL),
(2253, 14, '1403220160313', 0, NULL, NULL),
(2254, 14, '1403320160313', 0, NULL, NULL),
(2255, 14, '1403420160313', 0, NULL, NULL),
(2256, 14, '1403520160313', 0, NULL, NULL),
(2257, 14, '1403620160313', 0, NULL, NULL),
(2258, 14, '1403720160313', 0, NULL, NULL),
(2259, 14, '1403820160313', 0, NULL, NULL),
(2260, 14, '1403920160313', 0, NULL, NULL),
(2261, 14, '1404020160313', 0, NULL, NULL),
(2262, 14, '1404120160313', 0, NULL, NULL),
(2263, 14, '1404220160313', 0, NULL, NULL),
(2264, 14, '1404320160313', 0, NULL, NULL),
(2265, 14, '1404420160313', 0, NULL, NULL),
(2266, 14, '1404520160313', 0, NULL, NULL),
(2267, 14, '1404620160313', 0, NULL, NULL),
(2268, 14, '1404720160313', 0, NULL, NULL),
(2269, 14, '1404820160313', 0, NULL, NULL),
(2270, 14, '1404920160313', 0, NULL, NULL),
(2271, 15, '1500020160313', 0, NULL, NULL),
(2272, 15, '1500120160313', 0, NULL, NULL),
(2273, 15, '1500220160313', 0, NULL, NULL),
(2274, 15, '1500320160313', 0, NULL, NULL),
(2275, 15, '1500420160313', 0, NULL, NULL),
(2276, 15, '1500520160313', 0, NULL, NULL),
(2277, 15, '1500620160313', 0, NULL, NULL),
(2278, 15, '1500720160313', 0, NULL, NULL),
(2279, 15, '1500820160313', 0, NULL, NULL),
(2280, 15, '1500920160313', 0, NULL, NULL),
(2281, 15, '1501020160313', 0, NULL, NULL),
(2282, 15, '1501120160313', 0, NULL, NULL),
(2283, 15, '1501220160313', 0, NULL, NULL),
(2284, 15, '1501320160313', 0, NULL, NULL),
(2285, 15, '1501420160313', 0, NULL, NULL),
(2286, 15, '1501520160313', 0, NULL, NULL),
(2287, 15, '1501620160313', 0, NULL, NULL),
(2288, 15, '1501720160313', 0, NULL, NULL),
(2289, 15, '1501820160313', 0, NULL, NULL),
(2290, 15, '1501920160313', 0, NULL, NULL),
(2291, 15, '1502020160313', 0, NULL, NULL),
(2292, 15, '1502120160313', 0, NULL, NULL),
(2293, 15, '1502220160313', 0, NULL, NULL),
(2294, 15, '1502320160313', 0, NULL, NULL),
(2295, 15, '1502420160313', 0, NULL, NULL),
(2296, 15, '1502520160313', 0, NULL, NULL),
(2297, 15, '1502620160313', 0, NULL, NULL),
(2298, 15, '1502720160313', 0, NULL, NULL),
(2299, 15, '1502820160313', 0, NULL, NULL),
(2300, 15, '1502920160313', 0, NULL, NULL),
(2301, 15, '1503020160313', 0, NULL, NULL),
(2302, 15, '1503120160313', 0, NULL, NULL),
(2303, 15, '1503220160313', 0, NULL, NULL),
(2304, 15, '1503320160313', 0, NULL, NULL),
(2305, 15, '1503420160313', 0, NULL, NULL),
(2306, 15, '1503520160313', 0, NULL, NULL),
(2307, 15, '1503620160313', 0, NULL, NULL),
(2308, 15, '1503720160313', 0, NULL, NULL),
(2309, 15, '1503820160313', 0, NULL, NULL),
(2310, 15, '1503920160313', 0, NULL, NULL),
(2311, 15, '1504020160313', 0, NULL, NULL),
(2312, 15, '1504120160313', 0, NULL, NULL),
(2313, 15, '1504220160313', 0, NULL, NULL),
(2314, 15, '1504320160313', 0, NULL, NULL),
(2315, 15, '1504420160313', 0, NULL, NULL),
(2316, 15, '1504520160313', 0, NULL, NULL),
(2317, 15, '1504620160313', 0, NULL, NULL),
(2318, 15, '1504720160313', 0, NULL, NULL),
(2319, 15, '1504820160313', 0, NULL, NULL),
(2320, 15, '1504920160313', 0, NULL, NULL),
(2321, 16, '1600020160313', 0, NULL, NULL),
(2322, 16, '1600120160313', 0, NULL, NULL),
(2323, 16, '1600220160313', 0, NULL, NULL),
(2324, 16, '1600320160313', 0, NULL, NULL),
(2325, 16, '1600420160313', 0, NULL, NULL),
(2326, 16, '1600520160313', 0, NULL, NULL),
(2327, 16, '1600620160313', 0, NULL, NULL),
(2328, 16, '1600720160313', 0, NULL, NULL),
(2329, 16, '1600820160313', 0, NULL, NULL),
(2330, 16, '1600920160313', 0, NULL, NULL),
(2331, 16, '1601020160313', 0, NULL, NULL),
(2332, 16, '1601120160313', 0, NULL, NULL),
(2333, 16, '1601220160313', 0, NULL, NULL),
(2334, 16, '1601320160313', 0, NULL, NULL),
(2335, 16, '1601420160313', 0, NULL, NULL),
(2336, 16, '1601520160313', 0, NULL, NULL),
(2337, 16, '1601620160313', 0, NULL, NULL),
(2338, 16, '1601720160313', 0, NULL, NULL),
(2339, 16, '1601820160313', 0, NULL, NULL),
(2340, 16, '1601920160313', 0, NULL, NULL),
(2341, 16, '1602020160313', 0, NULL, NULL),
(2342, 16, '1602120160313', 0, NULL, NULL),
(2343, 16, '1602220160313', 0, NULL, NULL),
(2344, 16, '1602320160313', 0, NULL, NULL),
(2345, 16, '1602420160313', 0, NULL, NULL),
(2346, 16, '1602520160313', 0, NULL, NULL),
(2347, 16, '1602620160313', 0, NULL, NULL),
(2348, 16, '1602720160313', 0, NULL, NULL),
(2349, 16, '1602820160313', 0, NULL, NULL),
(2350, 16, '1602920160313', 0, NULL, NULL),
(2351, 16, '1603020160313', 0, NULL, NULL),
(2352, 16, '1603120160313', 0, NULL, NULL),
(2353, 16, '1603220160313', 0, NULL, NULL),
(2354, 16, '1603320160313', 0, NULL, NULL),
(2355, 16, '1603420160313', 0, NULL, NULL),
(2356, 16, '1603520160313', 0, NULL, NULL),
(2357, 16, '1603620160313', 0, NULL, NULL),
(2358, 16, '1603720160313', 0, NULL, NULL),
(2359, 16, '1603820160313', 0, NULL, NULL),
(2360, 16, '1603920160313', 0, NULL, NULL),
(2361, 16, '1604020160313', 0, NULL, NULL),
(2362, 16, '1604120160313', 0, NULL, NULL),
(2363, 16, '1604220160313', 0, NULL, NULL),
(2364, 16, '1604320160313', 0, NULL, NULL),
(2365, 16, '1604420160313', 0, NULL, NULL),
(2366, 16, '1604520160313', 0, NULL, NULL),
(2367, 16, '1604620160313', 0, NULL, NULL),
(2368, 16, '1604720160313', 0, NULL, NULL),
(2369, 16, '1604820160313', 0, NULL, NULL),
(2370, 16, '1604920160313', 0, NULL, NULL),
(2371, 17, '1700020160313', 0, NULL, NULL),
(2372, 17, '1700120160313', 0, NULL, NULL),
(2373, 17, '1700220160313', 0, NULL, NULL),
(2374, 17, '1700320160313', 0, NULL, NULL),
(2375, 17, '1700420160313', 0, NULL, NULL),
(2376, 17, '1700520160313', 0, NULL, NULL),
(2377, 17, '1700620160313', 0, NULL, NULL),
(2378, 17, '1700720160313', 0, NULL, NULL),
(2379, 17, '1700820160313', 0, NULL, NULL),
(2380, 17, '1700920160313', 0, NULL, NULL),
(2381, 17, '1701020160313', 0, NULL, NULL),
(2382, 17, '1701120160313', 0, NULL, NULL),
(2383, 17, '1701220160313', 0, NULL, NULL),
(2384, 17, '1701320160313', 0, NULL, NULL),
(2385, 17, '1701420160313', 0, NULL, NULL),
(2386, 17, '1701520160313', 0, NULL, NULL),
(2387, 17, '1701620160313', 0, NULL, NULL),
(2388, 17, '1701720160313', 0, NULL, NULL),
(2389, 17, '1701820160313', 0, NULL, NULL),
(2390, 17, '1701920160313', 0, NULL, NULL),
(2391, 17, '1702020160313', 0, NULL, NULL),
(2392, 17, '1702120160313', 0, NULL, NULL),
(2393, 17, '1702220160313', 0, NULL, NULL),
(2394, 17, '1702320160313', 0, NULL, NULL),
(2395, 17, '1702420160313', 0, NULL, NULL),
(2396, 17, '1702520160313', 0, NULL, NULL),
(2397, 17, '1702620160313', 0, NULL, NULL),
(2398, 17, '1702720160313', 0, NULL, NULL),
(2399, 17, '1702820160313', 0, NULL, NULL),
(2400, 17, '1702920160313', 0, NULL, NULL),
(2401, 17, '1703020160313', 0, NULL, NULL),
(2402, 17, '1703120160313', 0, NULL, NULL),
(2403, 17, '1703220160313', 0, NULL, NULL),
(2404, 17, '1703320160313', 0, NULL, NULL),
(2405, 17, '1703420160313', 0, NULL, NULL),
(2406, 17, '1703520160313', 0, NULL, NULL),
(2407, 17, '1703620160313', 0, NULL, NULL),
(2408, 17, '1703720160313', 0, NULL, NULL),
(2409, 17, '1703820160313', 0, NULL, NULL),
(2410, 17, '1703920160313', 0, NULL, NULL),
(2411, 17, '1704020160313', 0, NULL, NULL),
(2412, 17, '1704120160313', 0, NULL, NULL),
(2413, 17, '1704220160313', 0, NULL, NULL),
(2414, 17, '1704320160313', 0, NULL, NULL),
(2415, 17, '1704420160313', 0, NULL, NULL),
(2416, 17, '1704520160313', 0, NULL, NULL),
(2417, 17, '1704620160313', 0, NULL, NULL),
(2418, 17, '1704720160313', 0, NULL, NULL),
(2419, 17, '1704820160313', 0, NULL, NULL),
(2420, 17, '1704920160313', 0, NULL, NULL),
(2421, 18, '1800020160313', 0, NULL, NULL),
(2422, 18, '1800120160313', 0, NULL, NULL),
(2423, 18, '1800220160313', 0, NULL, NULL),
(2424, 18, '1800320160313', 0, NULL, NULL),
(2425, 18, '1800420160313', 0, NULL, NULL),
(2426, 18, '1800520160313', 0, NULL, NULL),
(2427, 18, '1800620160313', 0, NULL, NULL),
(2428, 18, '1800720160313', 0, NULL, NULL),
(2429, 18, '1800820160313', 0, NULL, NULL),
(2430, 18, '1800920160313', 0, NULL, NULL),
(2431, 18, '1801020160313', 0, NULL, NULL),
(2432, 18, '1801120160313', 0, NULL, NULL),
(2433, 18, '1801220160313', 0, NULL, NULL),
(2434, 18, '1801320160313', 0, NULL, NULL),
(2435, 18, '1801420160313', 0, NULL, NULL),
(2436, 18, '1801520160313', 0, NULL, NULL),
(2437, 18, '1801620160313', 0, NULL, NULL),
(2438, 18, '1801720160313', 0, NULL, NULL),
(2439, 18, '1801820160313', 0, NULL, NULL),
(2440, 18, '1801920160313', 0, NULL, NULL),
(2441, 18, '1802020160313', 0, NULL, NULL),
(2442, 18, '1802120160313', 0, NULL, NULL),
(2443, 18, '1802220160313', 0, NULL, NULL),
(2444, 18, '1802320160313', 0, NULL, NULL),
(2445, 18, '1802420160313', 0, NULL, NULL),
(2446, 18, '1802520160313', 0, NULL, NULL),
(2447, 18, '1802620160313', 0, NULL, NULL),
(2448, 18, '1802720160313', 0, NULL, NULL),
(2449, 18, '1802820160313', 0, NULL, NULL),
(2450, 18, '1802920160313', 0, NULL, NULL),
(2451, 18, '1803020160313', 0, NULL, NULL),
(2452, 18, '1803120160313', 0, NULL, NULL),
(2453, 18, '1803220160313', 0, NULL, NULL),
(2454, 18, '1803320160313', 0, NULL, NULL),
(2455, 18, '1803420160313', 0, NULL, NULL),
(2456, 18, '1803520160313', 0, NULL, NULL),
(2457, 18, '1803620160313', 0, NULL, NULL),
(2458, 18, '1803720160313', 0, NULL, NULL),
(2459, 18, '1803820160313', 0, NULL, NULL),
(2460, 18, '1803920160313', 0, NULL, NULL),
(2461, 18, '1804020160313', 0, NULL, NULL),
(2462, 18, '1804120160313', 0, NULL, NULL),
(2463, 18, '1804220160313', 0, NULL, NULL),
(2464, 18, '1804320160313', 0, NULL, NULL),
(2465, 18, '1804420160313', 0, NULL, NULL),
(2466, 18, '1804520160313', 0, NULL, NULL),
(2467, 18, '1804620160313', 0, NULL, NULL),
(2468, 18, '1804720160313', 0, NULL, NULL),
(2469, 18, '1804820160313', 0, NULL, NULL),
(2470, 18, '1804920160313', 0, NULL, NULL),
(2471, 19, '1900020160313', 0, NULL, NULL),
(2472, 19, '1900120160313', 0, NULL, NULL),
(2473, 19, '1900220160313', 0, NULL, NULL),
(2474, 19, '1900320160313', 0, NULL, NULL),
(2475, 19, '1900420160313', 0, NULL, NULL),
(2476, 19, '1900520160313', 0, NULL, NULL),
(2477, 19, '1900620160313', 0, NULL, NULL),
(2478, 19, '1900720160313', 0, NULL, NULL),
(2479, 19, '1900820160313', 0, NULL, NULL),
(2480, 19, '1900920160313', 0, NULL, NULL),
(2481, 19, '1901020160313', 0, NULL, NULL),
(2482, 19, '1901120160313', 0, NULL, NULL),
(2483, 19, '1901220160313', 0, NULL, NULL),
(2484, 19, '1901320160313', 0, NULL, NULL),
(2485, 19, '1901420160313', 0, NULL, NULL),
(2486, 19, '1901520160313', 0, NULL, NULL),
(2487, 19, '1901620160313', 0, NULL, NULL),
(2488, 19, '1901720160313', 0, NULL, NULL),
(2489, 19, '1901820160313', 0, NULL, NULL),
(2490, 19, '1901920160313', 0, NULL, NULL),
(2491, 19, '1902020160313', 0, NULL, NULL),
(2492, 19, '1902120160313', 0, NULL, NULL),
(2493, 19, '1902220160313', 0, NULL, NULL),
(2494, 19, '1902320160313', 0, NULL, NULL),
(2495, 19, '1902420160313', 0, NULL, NULL),
(2496, 19, '1902520160313', 0, NULL, NULL),
(2497, 19, '1902620160313', 0, NULL, NULL),
(2498, 19, '1902720160313', 0, NULL, NULL),
(2499, 19, '1902820160313', 0, NULL, NULL),
(2500, 19, '1902920160313', 0, NULL, NULL),
(2501, 19, '1903020160313', 0, NULL, NULL),
(2502, 19, '1903120160313', 0, NULL, NULL),
(2503, 19, '1903220160313', 0, NULL, NULL),
(2504, 19, '1903320160313', 0, NULL, NULL),
(2505, 19, '1903420160313', 0, NULL, NULL),
(2506, 19, '1903520160313', 0, NULL, NULL),
(2507, 19, '1903620160313', 0, NULL, NULL),
(2508, 19, '1903720160313', 0, NULL, NULL),
(2509, 19, '1903820160313', 0, NULL, NULL),
(2510, 19, '1903920160313', 0, NULL, NULL),
(2511, 19, '1904020160313', 0, NULL, NULL),
(2512, 19, '1904120160313', 0, NULL, NULL),
(2513, 19, '1904220160313', 0, NULL, NULL),
(2514, 19, '1904320160313', 0, NULL, NULL),
(2515, 19, '1904420160313', 0, NULL, NULL),
(2516, 19, '1904520160313', 0, NULL, NULL),
(2517, 19, '1904620160313', 0, NULL, NULL),
(2518, 19, '1904720160313', 0, NULL, NULL),
(2519, 19, '1904820160313', 0, NULL, NULL),
(2520, 19, '1904920160313', 0, NULL, NULL),
(2521, 20, '2000020160313', 0, NULL, NULL),
(2522, 20, '2000120160313', 0, NULL, NULL),
(2523, 20, '2000220160313', 0, NULL, NULL),
(2524, 20, '2000320160313', 0, NULL, NULL),
(2525, 20, '2000420160313', 0, NULL, NULL),
(2526, 20, '2000520160313', 0, NULL, NULL),
(2527, 20, '2000620160313', 0, NULL, NULL),
(2528, 20, '2000720160313', 0, NULL, NULL),
(2529, 20, '2000820160313', 0, NULL, NULL),
(2530, 20, '2000920160313', 0, NULL, NULL),
(2531, 20, '2001020160313', 0, NULL, NULL),
(2532, 20, '2001120160313', 0, NULL, NULL),
(2533, 20, '2001220160313', 0, NULL, NULL),
(2534, 20, '2001320160313', 0, NULL, NULL),
(2535, 20, '2001420160313', 0, NULL, NULL),
(2536, 20, '2001520160313', 0, NULL, NULL),
(2537, 20, '2001620160313', 0, NULL, NULL),
(2538, 20, '2001720160313', 0, NULL, NULL),
(2539, 20, '2001820160313', 0, NULL, NULL),
(2540, 20, '2001920160313', 0, NULL, NULL),
(2541, 20, '2002020160313', 0, NULL, NULL),
(2542, 20, '2002120160313', 0, NULL, NULL),
(2543, 20, '2002220160313', 0, NULL, NULL),
(2544, 20, '2002320160313', 0, NULL, NULL),
(2545, 20, '2002420160313', 0, NULL, NULL),
(2546, 20, '2002520160313', 0, NULL, NULL),
(2547, 20, '2002620160313', 0, NULL, NULL),
(2548, 20, '2002720160313', 0, NULL, NULL),
(2549, 20, '2002820160313', 0, NULL, NULL),
(2550, 20, '2002920160313', 0, NULL, NULL),
(2551, 20, '2003020160313', 0, NULL, NULL),
(2552, 20, '2003120160313', 0, NULL, NULL),
(2553, 20, '2003220160313', 0, NULL, NULL),
(2554, 20, '2003320160313', 0, NULL, NULL),
(2555, 20, '2003420160313', 0, NULL, NULL),
(2556, 20, '2003520160313', 0, NULL, NULL),
(2557, 20, '2003620160313', 0, NULL, NULL),
(2558, 20, '2003720160313', 0, NULL, NULL),
(2559, 20, '2003820160313', 0, NULL, NULL),
(2560, 20, '2003920160313', 0, NULL, NULL),
(2561, 20, '2004020160313', 0, NULL, NULL),
(2562, 20, '2004120160313', 0, NULL, NULL),
(2563, 20, '2004220160313', 0, NULL, NULL),
(2564, 20, '2004320160313', 0, NULL, NULL),
(2565, 20, '2004420160313', 0, NULL, NULL),
(2566, 20, '2004520160313', 0, NULL, NULL),
(2567, 20, '2004620160313', 0, NULL, NULL),
(2568, 20, '2004720160313', 0, NULL, NULL),
(2569, 20, '2004820160313', 0, NULL, NULL),
(2570, 20, '2004920160313', 0, NULL, NULL),
(2571, 21, '2100020160313', 0, NULL, NULL),
(2572, 21, '2100120160313', 0, NULL, NULL),
(2573, 21, '2100220160313', 0, NULL, NULL),
(2574, 21, '2100320160313', 0, NULL, NULL),
(2575, 21, '2100420160313', 0, NULL, NULL),
(2576, 21, '2100520160313', 0, NULL, NULL),
(2577, 21, '2100620160313', 0, NULL, NULL),
(2578, 21, '2100720160313', 0, NULL, NULL),
(2579, 21, '2100820160313', 0, NULL, NULL),
(2580, 21, '2100920160313', 0, NULL, NULL),
(2581, 21, '2101020160313', 0, NULL, NULL),
(2582, 21, '2101120160313', 0, NULL, NULL),
(2583, 21, '2101220160313', 0, NULL, NULL),
(2584, 21, '2101320160313', 0, NULL, NULL),
(2585, 21, '2101420160313', 0, NULL, NULL),
(2586, 21, '2101520160313', 0, NULL, NULL),
(2587, 21, '2101620160313', 0, NULL, NULL),
(2588, 21, '2101720160313', 0, NULL, NULL),
(2589, 21, '2101820160313', 0, NULL, NULL),
(2590, 21, '2101920160313', 0, NULL, NULL),
(2591, 21, '2102020160313', 0, NULL, NULL),
(2592, 21, '2102120160313', 0, NULL, NULL),
(2593, 21, '2102220160313', 0, NULL, NULL),
(2594, 21, '2102320160313', 0, NULL, NULL),
(2595, 21, '2102420160313', 0, NULL, NULL),
(2596, 21, '2102520160313', 0, NULL, NULL),
(2597, 21, '2102620160313', 0, NULL, NULL),
(2598, 21, '2102720160313', 0, NULL, NULL),
(2599, 21, '2102820160313', 0, NULL, NULL),
(2600, 21, '2102920160313', 0, NULL, NULL),
(2601, 21, '2103020160313', 0, NULL, NULL),
(2602, 21, '2103120160313', 0, NULL, NULL),
(2603, 21, '2103220160313', 0, NULL, NULL),
(2604, 21, '2103320160313', 0, NULL, NULL),
(2605, 21, '2103420160313', 0, NULL, NULL),
(2606, 21, '2103520160313', 0, NULL, NULL),
(2607, 21, '2103620160313', 0, NULL, NULL),
(2608, 21, '2103720160313', 0, NULL, NULL),
(2609, 21, '2103820160313', 0, NULL, NULL),
(2610, 21, '2103920160313', 0, NULL, NULL),
(2611, 21, '2104020160313', 0, NULL, NULL),
(2612, 21, '2104120160313', 0, NULL, NULL),
(2613, 21, '2104220160313', 0, NULL, NULL),
(2614, 21, '2104320160313', 0, NULL, NULL),
(2615, 21, '2104420160313', 0, NULL, NULL),
(2616, 21, '2104520160313', 0, NULL, NULL),
(2617, 21, '2104620160313', 0, NULL, NULL),
(2618, 21, '2104720160313', 0, NULL, NULL),
(2619, 21, '2104820160313', 0, NULL, NULL),
(2620, 21, '2104920160313', 1, '2016-03-24 05:51:10', NULL),
(2621, 22, '2200020160313', 0, NULL, NULL),
(2622, 22, '2200120160313', 0, NULL, NULL),
(2623, 22, '2200220160313', 0, NULL, NULL),
(2624, 22, '2200320160313', 0, NULL, NULL),
(2625, 22, '2200420160313', 0, NULL, NULL),
(2626, 22, '2200520160313', 0, NULL, NULL),
(2627, 22, '2200620160313', 0, NULL, NULL),
(2628, 22, '2200720160313', 0, NULL, NULL),
(2629, 22, '2200820160313', 0, NULL, NULL),
(2630, 22, '2200920160313', 0, NULL, NULL),
(2631, 22, '2201020160313', 0, NULL, NULL),
(2632, 22, '2201120160313', 0, NULL, NULL),
(2633, 22, '2201220160313', 0, NULL, NULL),
(2634, 22, '2201320160313', 0, NULL, NULL),
(2635, 22, '2201420160313', 0, NULL, NULL),
(2636, 22, '2201520160313', 0, NULL, NULL),
(2637, 22, '2201620160313', 0, NULL, NULL),
(2638, 22, '2201720160313', 0, NULL, NULL),
(2639, 22, '2201820160313', 0, NULL, NULL),
(2640, 22, '2201920160313', 0, NULL, NULL),
(2641, 22, '2202020160313', 0, NULL, NULL),
(2642, 22, '2202120160313', 0, NULL, NULL),
(2643, 22, '2202220160313', 0, NULL, NULL),
(2644, 22, '2202320160313', 0, NULL, NULL),
(2645, 22, '2202420160313', 0, NULL, NULL),
(2646, 22, '2202520160313', 0, NULL, NULL),
(2647, 22, '2202620160313', 0, NULL, NULL),
(2648, 22, '2202720160313', 0, NULL, NULL),
(2649, 22, '2202820160313', 0, NULL, NULL),
(2650, 22, '2202920160313', 0, NULL, NULL),
(2651, 22, '2203020160313', 0, NULL, NULL),
(2652, 22, '2203120160313', 0, NULL, NULL),
(2653, 22, '2203220160313', 0, NULL, NULL),
(2654, 22, '2203320160313', 0, NULL, NULL),
(2655, 22, '2203420160313', 0, NULL, NULL),
(2656, 22, '2203520160313', 0, NULL, NULL),
(2657, 22, '2203620160313', 0, NULL, NULL),
(2658, 22, '2203720160313', 0, NULL, NULL),
(2659, 22, '2203820160313', 0, NULL, NULL),
(2660, 22, '2203920160313', 0, NULL, NULL),
(2661, 22, '2204020160313', 0, NULL, NULL),
(2662, 22, '2204120160313', 0, NULL, NULL),
(2663, 22, '2204220160313', 0, NULL, NULL),
(2664, 22, '2204320160313', 0, NULL, NULL),
(2665, 22, '2204420160313', 0, NULL, NULL),
(2666, 22, '2204520160313', 0, NULL, NULL),
(2667, 22, '2204620160313', 0, NULL, NULL),
(2668, 22, '2204720160313', 0, NULL, NULL),
(2669, 22, '2204820160313', 0, NULL, NULL),
(2670, 22, '2204920160313', 0, NULL, NULL),
(2671, 23, '2300020160313', 0, NULL, NULL),
(2672, 23, '2300120160313', 0, NULL, NULL),
(2673, 23, '2300220160313', 0, NULL, NULL),
(2674, 23, '2300320160313', 0, NULL, NULL),
(2675, 23, '2300420160313', 0, NULL, NULL),
(2676, 23, '2300520160313', 0, NULL, NULL),
(2677, 23, '2300620160313', 0, NULL, NULL),
(2678, 23, '2300720160313', 0, NULL, NULL),
(2679, 23, '2300820160313', 0, NULL, NULL),
(2680, 23, '2300920160313', 0, NULL, NULL),
(2681, 23, '2301020160313', 0, NULL, NULL),
(2682, 23, '2301120160313', 0, NULL, NULL),
(2683, 23, '2301220160313', 0, NULL, NULL),
(2684, 23, '2301320160313', 0, NULL, NULL),
(2685, 23, '2301420160313', 0, NULL, NULL),
(2686, 23, '2301520160313', 0, NULL, NULL),
(2687, 23, '2301620160313', 0, NULL, NULL),
(2688, 23, '2301720160313', 0, NULL, NULL),
(2689, 23, '2301820160313', 0, NULL, NULL),
(2690, 23, '2301920160313', 0, NULL, NULL),
(2691, 23, '2302020160313', 0, NULL, NULL),
(2692, 23, '2302120160313', 0, NULL, NULL),
(2693, 23, '2302220160313', 0, NULL, NULL),
(2694, 23, '2302320160313', 0, NULL, NULL),
(2695, 23, '2302420160313', 0, NULL, NULL),
(2696, 23, '2302520160313', 0, NULL, NULL),
(2697, 23, '2302620160313', 0, NULL, NULL),
(2698, 23, '2302720160313', 0, NULL, NULL),
(2699, 23, '2302820160313', 0, NULL, NULL),
(2700, 23, '2302920160313', 0, NULL, NULL),
(2701, 23, '2303020160313', 0, NULL, NULL),
(2702, 23, '2303120160313', 0, NULL, NULL),
(2703, 23, '2303220160313', 0, NULL, NULL),
(2704, 23, '2303320160313', 0, NULL, NULL),
(2705, 23, '2303420160313', 0, NULL, NULL),
(2706, 23, '2303520160313', 0, NULL, NULL),
(2707, 23, '2303620160313', 0, NULL, NULL),
(2708, 23, '2303720160313', 0, NULL, NULL),
(2709, 23, '2303820160313', 0, NULL, NULL),
(2710, 23, '2303920160313', 0, NULL, NULL),
(2711, 23, '2304020160313', 0, NULL, NULL),
(2712, 23, '2304120160313', 0, NULL, NULL),
(2713, 23, '2304220160313', 0, NULL, NULL),
(2714, 23, '2304320160313', 0, NULL, NULL),
(2715, 23, '2304420160313', 0, NULL, NULL),
(2716, 23, '2304520160313', 0, NULL, NULL),
(2717, 23, '2304620160313', 0, NULL, NULL),
(2718, 23, '2304720160313', 0, NULL, NULL),
(2719, 23, '2304820160313', 0, NULL, NULL),
(2720, 23, '2304920160313', 0, NULL, NULL),
(2721, 24, '2400020160313', 0, NULL, NULL),
(2722, 24, '2400120160313', 0, NULL, NULL),
(2723, 24, '2400220160313', 0, NULL, NULL),
(2724, 24, '2400320160313', 0, NULL, NULL),
(2725, 24, '2400420160313', 0, NULL, NULL),
(2726, 24, '2400520160313', 0, NULL, NULL),
(2727, 24, '2400620160313', 0, NULL, NULL),
(2728, 24, '2400720160313', 0, NULL, NULL),
(2729, 24, '2400820160313', 0, NULL, NULL),
(2730, 24, '2400920160313', 0, NULL, NULL),
(2731, 24, '2401020160313', 0, NULL, NULL),
(2732, 24, '2401120160313', 0, NULL, NULL),
(2733, 24, '2401220160313', 0, NULL, NULL),
(2734, 24, '2401320160313', 0, NULL, NULL),
(2735, 24, '2401420160313', 0, NULL, NULL),
(2736, 24, '2401520160313', 0, NULL, NULL),
(2737, 24, '2401620160313', 0, NULL, NULL),
(2738, 24, '2401720160313', 0, NULL, NULL),
(2739, 24, '2401820160313', 0, NULL, NULL),
(2740, 24, '2401920160313', 0, NULL, NULL),
(2741, 24, '2402020160313', 0, NULL, NULL),
(2742, 24, '2402120160313', 0, NULL, NULL),
(2743, 24, '2402220160313', 0, NULL, NULL),
(2744, 24, '2402320160313', 0, NULL, NULL),
(2745, 24, '2402420160313', 0, NULL, NULL),
(2746, 24, '2402520160313', 0, NULL, NULL),
(2747, 24, '2402620160313', 0, NULL, NULL),
(2748, 24, '2402720160313', 0, NULL, NULL),
(2749, 24, '2402820160313', 0, NULL, NULL),
(2750, 24, '2402920160313', 0, NULL, NULL),
(2751, 24, '2403020160313', 0, NULL, NULL),
(2752, 24, '2403120160313', 0, NULL, NULL),
(2753, 24, '2403220160313', 0, NULL, NULL),
(2754, 24, '2403320160313', 0, NULL, NULL),
(2755, 24, '2403420160313', 0, NULL, NULL),
(2756, 24, '2403520160313', 0, NULL, NULL),
(2757, 24, '2403620160313', 0, NULL, NULL),
(2758, 24, '2403720160313', 0, NULL, NULL),
(2759, 24, '2403820160313', 0, NULL, NULL),
(2760, 24, '2403920160313', 0, NULL, NULL),
(2761, 24, '2404020160313', 0, NULL, NULL),
(2762, 24, '2404120160313', 0, NULL, NULL),
(2763, 24, '2404220160313', 0, NULL, NULL),
(2764, 24, '2404320160313', 0, NULL, NULL),
(2765, 24, '2404420160313', 0, NULL, NULL),
(2766, 24, '2404520160313', 0, NULL, NULL),
(2767, 24, '2404620160313', 0, NULL, NULL),
(2768, 24, '2404720160313', 0, NULL, NULL),
(2769, 24, '2404820160313', 0, NULL, NULL),
(2770, 24, '2404920160313', 0, NULL, NULL),
(2771, 25, '2500020160313', 0, NULL, NULL),
(2772, 25, '2500120160313', 0, NULL, NULL),
(2773, 25, '2500220160313', 0, NULL, NULL),
(2774, 25, '2500320160313', 0, NULL, NULL),
(2775, 25, '2500420160313', 0, NULL, NULL),
(2776, 25, '2500520160313', 0, NULL, NULL),
(2777, 25, '2500620160313', 0, NULL, NULL),
(2778, 25, '2500720160313', 0, NULL, NULL),
(2779, 25, '2500820160313', 0, NULL, NULL),
(2780, 25, '2500920160313', 0, NULL, NULL),
(2781, 25, '2501020160313', 0, NULL, NULL),
(2782, 25, '2501120160313', 0, NULL, NULL),
(2783, 25, '2501220160313', 0, NULL, NULL),
(2784, 25, '2501320160313', 0, NULL, NULL),
(2785, 25, '2501420160313', 0, NULL, NULL),
(2786, 25, '2501520160313', 0, NULL, NULL),
(2787, 25, '2501620160313', 0, NULL, NULL),
(2788, 25, '2501720160313', 0, NULL, NULL),
(2789, 25, '2501820160313', 0, NULL, NULL),
(2790, 25, '2501920160313', 0, NULL, NULL),
(2791, 25, '2502020160313', 0, NULL, NULL),
(2792, 25, '2502120160313', 0, NULL, NULL),
(2793, 25, '2502220160313', 0, NULL, NULL),
(2794, 25, '2502320160313', 0, NULL, NULL),
(2795, 25, '2502420160313', 0, NULL, NULL),
(2796, 25, '2502520160313', 0, NULL, NULL),
(2797, 25, '2502620160313', 0, NULL, NULL),
(2798, 25, '2502720160313', 0, NULL, NULL),
(2799, 25, '2502820160313', 0, NULL, NULL),
(2800, 25, '2502920160313', 0, NULL, NULL),
(2801, 25, '2503020160313', 0, NULL, NULL),
(2802, 25, '2503120160313', 0, NULL, NULL),
(2803, 25, '2503220160313', 0, NULL, NULL),
(2804, 25, '2503320160313', 0, NULL, NULL),
(2805, 25, '2503420160313', 0, NULL, NULL),
(2806, 25, '2503520160313', 0, NULL, NULL),
(2807, 25, '2503620160313', 0, NULL, NULL),
(2808, 25, '2503720160313', 0, NULL, NULL),
(2809, 25, '2503820160313', 0, NULL, NULL),
(2810, 25, '2503920160313', 0, NULL, NULL),
(2811, 25, '2504020160313', 0, NULL, NULL),
(2812, 25, '2504120160313', 0, NULL, NULL);
INSERT INTO `tbl_hospital_codes` (`id`, `id_hospital`, `code`, `is_active`, `disabled_dt`, `created_dt`) VALUES
(2813, 25, '2504220160313', 0, NULL, NULL),
(2814, 25, '2504320160313', 0, NULL, NULL),
(2815, 25, '2504420160313', 0, NULL, NULL),
(2816, 25, '2504520160313', 0, NULL, NULL),
(2817, 25, '2504620160313', 0, NULL, NULL),
(2818, 25, '2504720160313', 0, NULL, NULL),
(2819, 25, '2504820160313', 0, NULL, NULL),
(2820, 25, '2504920160313', 0, NULL, NULL),
(2821, 26, '2600020160313', 0, NULL, NULL),
(2822, 26, '2600120160313', 0, NULL, NULL),
(2823, 26, '2600220160313', 0, NULL, NULL),
(2824, 26, '2600320160313', 0, NULL, NULL),
(2825, 26, '2600420160313', 0, NULL, NULL),
(2826, 26, '2600520160313', 0, NULL, NULL),
(2827, 26, '2600620160313', 0, NULL, NULL),
(2828, 26, '2600720160313', 0, NULL, NULL),
(2829, 26, '2600820160313', 0, NULL, NULL),
(2830, 26, '2600920160313', 0, NULL, NULL),
(2831, 26, '2601020160313', 0, NULL, NULL),
(2832, 26, '2601120160313', 0, NULL, NULL),
(2833, 26, '2601220160313', 0, NULL, NULL),
(2834, 26, '2601320160313', 0, NULL, NULL),
(2835, 26, '2601420160313', 0, NULL, NULL),
(2836, 26, '2601520160313', 0, NULL, NULL),
(2837, 26, '2601620160313', 0, NULL, NULL),
(2838, 26, '2601720160313', 0, NULL, NULL),
(2839, 26, '2601820160313', 0, NULL, NULL),
(2840, 26, '2601920160313', 0, NULL, NULL),
(2841, 26, '2602020160313', 0, NULL, NULL),
(2842, 26, '2602120160313', 0, NULL, NULL),
(2843, 26, '2602220160313', 0, NULL, NULL),
(2844, 26, '2602320160313', 0, NULL, NULL),
(2845, 26, '2602420160313', 0, NULL, NULL),
(2846, 26, '2602520160313', 0, NULL, NULL),
(2847, 26, '2602620160313', 0, NULL, NULL),
(2848, 26, '2602720160313', 0, NULL, NULL),
(2849, 26, '2602820160313', 0, NULL, NULL),
(2850, 26, '2602920160313', 0, NULL, NULL),
(2851, 26, '2603020160313', 0, NULL, NULL),
(2852, 26, '2603120160313', 0, NULL, NULL),
(2853, 26, '2603220160313', 0, NULL, NULL),
(2854, 26, '2603320160313', 0, NULL, NULL),
(2855, 26, '2603420160313', 0, NULL, NULL),
(2856, 26, '2603520160313', 0, NULL, NULL),
(2857, 26, '2603620160313', 0, NULL, NULL),
(2858, 26, '2603720160313', 0, NULL, NULL),
(2859, 26, '2603820160313', 0, NULL, NULL),
(2860, 26, '2603920160313', 0, NULL, NULL),
(2861, 26, '2604020160313', 0, NULL, NULL),
(2862, 26, '2604120160313', 0, NULL, NULL),
(2863, 26, '2604220160313', 0, NULL, NULL),
(2864, 26, '2604320160313', 0, NULL, NULL),
(2865, 26, '2604420160313', 0, NULL, NULL),
(2866, 26, '2604520160313', 0, NULL, NULL),
(2867, 26, '2604620160313', 0, NULL, NULL),
(2868, 26, '2604720160313', 0, NULL, NULL),
(2869, 26, '2604820160313', 0, NULL, NULL),
(2870, 26, '2604920160313', 0, NULL, NULL),
(2871, 27, '2700020160313', 0, NULL, NULL),
(2872, 27, '2700120160313', 0, NULL, NULL),
(2873, 27, '2700220160313', 0, NULL, NULL),
(2874, 27, '2700320160313', 0, NULL, NULL),
(2875, 27, '2700420160313', 0, NULL, NULL),
(2876, 27, '2700520160313', 0, NULL, NULL),
(2877, 27, '2700620160313', 0, NULL, NULL),
(2878, 27, '2700720160313', 0, NULL, NULL),
(2879, 27, '2700820160313', 0, NULL, NULL),
(2880, 27, '2700920160313', 0, NULL, NULL),
(2881, 27, '2701020160313', 0, NULL, NULL),
(2882, 27, '2701120160313', 0, NULL, NULL),
(2883, 27, '2701220160313', 0, NULL, NULL),
(2884, 27, '2701320160313', 0, NULL, NULL),
(2885, 27, '2701420160313', 0, NULL, NULL),
(2886, 27, '2701520160313', 0, NULL, NULL),
(2887, 27, '2701620160313', 0, NULL, NULL),
(2888, 27, '2701720160313', 0, NULL, NULL),
(2889, 27, '2701820160313', 0, NULL, NULL),
(2890, 27, '2701920160313', 0, NULL, NULL),
(2891, 27, '2702020160313', 0, NULL, NULL),
(2892, 27, '2702120160313', 0, NULL, NULL),
(2893, 27, '2702220160313', 0, NULL, NULL),
(2894, 27, '2702320160313', 0, NULL, NULL),
(2895, 27, '2702420160313', 0, NULL, NULL),
(2896, 27, '2702520160313', 0, NULL, NULL),
(2897, 27, '2702620160313', 0, NULL, NULL),
(2898, 27, '2702720160313', 0, NULL, NULL),
(2899, 27, '2702820160313', 0, NULL, NULL),
(2900, 27, '2702920160313', 0, NULL, NULL),
(2901, 27, '2703020160313', 0, NULL, NULL),
(2902, 27, '2703120160313', 0, NULL, NULL),
(2903, 27, '2703220160313', 0, NULL, NULL),
(2904, 27, '2703320160313', 0, NULL, NULL),
(2905, 27, '2703420160313', 0, NULL, NULL),
(2906, 27, '2703520160313', 0, NULL, NULL),
(2907, 27, '2703620160313', 0, NULL, NULL),
(2908, 27, '2703720160313', 0, NULL, NULL),
(2909, 27, '2703820160313', 0, NULL, NULL),
(2910, 27, '2703920160313', 0, NULL, NULL),
(2911, 27, '2704020160313', 0, NULL, NULL),
(2912, 27, '2704120160313', 0, NULL, NULL),
(2913, 27, '2704220160313', 0, NULL, NULL),
(2914, 27, '2704320160313', 0, NULL, NULL),
(2915, 27, '2704420160313', 0, NULL, NULL),
(2916, 27, '2704520160313', 0, NULL, NULL),
(2917, 27, '2704620160313', 0, NULL, NULL),
(2918, 27, '2704720160313', 0, NULL, NULL),
(2919, 27, '2704820160313', 0, NULL, NULL),
(2920, 27, '2704920160313', 0, NULL, NULL),
(2921, 28, '2800020160313', 0, NULL, NULL),
(2922, 28, '2800120160313', 0, NULL, NULL),
(2923, 28, '2800220160313', 0, NULL, NULL),
(2924, 28, '2800320160313', 0, NULL, NULL),
(2925, 28, '2800420160313', 0, NULL, NULL),
(2926, 28, '2800520160313', 0, NULL, NULL),
(2927, 28, '2800620160313', 0, NULL, NULL),
(2928, 28, '2800720160313', 0, NULL, NULL),
(2929, 28, '2800820160313', 0, NULL, NULL),
(2930, 28, '2800920160313', 0, NULL, NULL),
(2931, 28, '2801020160313', 0, NULL, NULL),
(2932, 28, '2801120160313', 0, NULL, NULL),
(2933, 28, '2801220160313', 0, NULL, NULL),
(2934, 28, '2801320160313', 0, NULL, NULL),
(2935, 28, '2801420160313', 0, NULL, NULL),
(2936, 28, '2801520160313', 0, NULL, NULL),
(2937, 28, '2801620160313', 0, NULL, NULL),
(2938, 28, '2801720160313', 0, NULL, NULL),
(2939, 28, '2801820160313', 0, NULL, NULL),
(2940, 28, '2801920160313', 0, NULL, NULL),
(2941, 28, '2802020160313', 0, NULL, NULL),
(2942, 28, '2802120160313', 0, NULL, NULL),
(2943, 28, '2802220160313', 0, NULL, NULL),
(2944, 28, '2802320160313', 0, NULL, NULL),
(2945, 28, '2802420160313', 0, NULL, NULL),
(2946, 28, '2802520160313', 0, NULL, NULL),
(2947, 28, '2802620160313', 0, NULL, NULL),
(2948, 28, '2802720160313', 0, NULL, NULL),
(2949, 28, '2802820160313', 0, NULL, NULL),
(2950, 28, '2802920160313', 0, NULL, NULL),
(2951, 28, '2803020160313', 0, NULL, NULL),
(2952, 28, '2803120160313', 0, NULL, NULL),
(2953, 28, '2803220160313', 0, NULL, NULL),
(2954, 28, '2803320160313', 0, NULL, NULL),
(2955, 28, '2803420160313', 0, NULL, NULL),
(2956, 28, '2803520160313', 0, NULL, NULL),
(2957, 28, '2803620160313', 0, NULL, NULL),
(2958, 28, '2803720160313', 0, NULL, NULL),
(2959, 28, '2803820160313', 0, NULL, NULL),
(2960, 28, '2803920160313', 0, NULL, NULL),
(2961, 28, '2804020160313', 0, NULL, NULL),
(2962, 28, '2804120160313', 0, NULL, NULL),
(2963, 28, '2804220160313', 0, NULL, NULL),
(2964, 28, '2804320160313', 0, NULL, NULL),
(2965, 28, '2804420160313', 0, NULL, NULL),
(2966, 28, '2804520160313', 0, NULL, NULL),
(2967, 28, '2804620160313', 0, NULL, NULL),
(2968, 28, '2804720160313', 0, NULL, NULL),
(2969, 28, '2804820160313', 0, NULL, NULL),
(2970, 28, '2804920160313', 0, NULL, NULL),
(2971, 29, '2900020160313', 0, NULL, NULL),
(2972, 29, '2900120160313', 0, NULL, NULL),
(2973, 29, '2900220160313', 0, NULL, NULL),
(2974, 29, '2900320160313', 0, NULL, NULL),
(2975, 29, '2900420160313', 0, NULL, NULL),
(2976, 29, '2900520160313', 0, NULL, NULL),
(2977, 29, '2900620160313', 0, NULL, NULL),
(2978, 29, '2900720160313', 0, NULL, NULL),
(2979, 29, '2900820160313', 0, NULL, NULL),
(2980, 29, '2900920160313', 0, NULL, NULL),
(2981, 29, '2901020160313', 0, NULL, NULL),
(2982, 29, '2901120160313', 0, NULL, NULL),
(2983, 29, '2901220160313', 0, NULL, NULL),
(2984, 29, '2901320160313', 0, NULL, NULL),
(2985, 29, '2901420160313', 0, NULL, NULL),
(2986, 29, '2901520160313', 0, NULL, NULL),
(2987, 29, '2901620160313', 0, NULL, NULL),
(2988, 29, '2901720160313', 0, NULL, NULL),
(2989, 29, '2901820160313', 0, NULL, NULL),
(2990, 29, '2901920160313', 0, NULL, NULL),
(2991, 29, '2902020160313', 0, NULL, NULL),
(2992, 29, '2902120160313', 0, NULL, NULL),
(2993, 29, '2902220160313', 0, NULL, NULL),
(2994, 29, '2902320160313', 0, NULL, NULL),
(2995, 29, '2902420160313', 0, NULL, NULL),
(2996, 29, '2902520160313', 0, NULL, NULL),
(2997, 29, '2902620160313', 0, NULL, NULL),
(2998, 29, '2902720160313', 0, NULL, NULL),
(2999, 29, '2902820160313', 0, NULL, NULL),
(3000, 29, '2902920160313', 0, NULL, NULL),
(3001, 29, '2903020160313', 0, NULL, NULL),
(3002, 29, '2903120160313', 0, NULL, NULL),
(3003, 29, '2903220160313', 0, NULL, NULL),
(3004, 29, '2903320160313', 0, NULL, NULL),
(3005, 29, '2903420160313', 0, NULL, NULL),
(3006, 29, '2903520160313', 0, NULL, NULL),
(3007, 29, '2903620160313', 0, NULL, NULL),
(3008, 29, '2903720160313', 0, NULL, NULL),
(3009, 29, '2903820160313', 0, NULL, NULL),
(3010, 29, '2903920160313', 0, NULL, NULL),
(3011, 29, '2904020160313', 0, NULL, NULL),
(3012, 29, '2904120160313', 0, NULL, NULL),
(3013, 29, '2904220160313', 0, NULL, NULL),
(3014, 29, '2904320160313', 0, NULL, NULL),
(3015, 29, '2904420160313', 0, NULL, NULL),
(3016, 29, '2904520160313', 0, NULL, NULL),
(3017, 29, '2904620160313', 0, NULL, NULL),
(3018, 29, '2904720160313', 0, NULL, NULL),
(3019, 29, '2904820160313', 0, NULL, NULL),
(3020, 29, '2904920160313', 0, NULL, NULL),
(3021, 30, '3000020160313', 0, NULL, NULL),
(3022, 30, '3000120160313', 0, NULL, NULL),
(3023, 30, '3000220160313', 0, NULL, NULL),
(3024, 30, '3000320160313', 0, NULL, NULL),
(3025, 30, '3000420160313', 0, NULL, NULL),
(3026, 30, '3000520160313', 0, NULL, NULL),
(3027, 30, '3000620160313', 0, NULL, NULL),
(3028, 30, '3000720160313', 0, NULL, NULL),
(3029, 30, '3000820160313', 0, NULL, NULL),
(3030, 30, '3000920160313', 0, NULL, NULL),
(3031, 30, '3001020160313', 0, NULL, NULL),
(3032, 30, '3001120160313', 0, NULL, NULL),
(3033, 30, '3001220160313', 0, NULL, NULL),
(3034, 30, '3001320160313', 0, NULL, NULL),
(3035, 30, '3001420160313', 0, NULL, NULL),
(3036, 30, '3001520160313', 0, NULL, NULL),
(3037, 30, '3001620160313', 0, NULL, NULL),
(3038, 30, '3001720160313', 0, NULL, NULL),
(3039, 30, '3001820160313', 0, NULL, NULL),
(3040, 30, '3001920160313', 0, NULL, NULL),
(3041, 30, '3002020160313', 0, NULL, NULL),
(3042, 30, '3002120160313', 0, NULL, NULL),
(3043, 30, '3002220160313', 0, NULL, NULL),
(3044, 30, '3002320160313', 0, NULL, NULL),
(3045, 30, '3002420160313', 0, NULL, NULL),
(3046, 30, '3002520160313', 0, NULL, NULL),
(3047, 30, '3002620160313', 0, NULL, NULL),
(3048, 30, '3002720160313', 0, NULL, NULL),
(3049, 30, '3002820160313', 0, NULL, NULL),
(3050, 30, '3002920160313', 0, NULL, NULL),
(3051, 30, '3003020160313', 0, NULL, NULL),
(3052, 30, '3003120160313', 0, NULL, NULL),
(3053, 30, '3003220160313', 0, NULL, NULL),
(3054, 30, '3003320160313', 0, NULL, NULL),
(3055, 30, '3003420160313', 0, NULL, NULL),
(3056, 30, '3003520160313', 0, NULL, NULL),
(3057, 30, '3003620160313', 0, NULL, NULL),
(3058, 30, '3003720160313', 0, NULL, NULL),
(3059, 30, '3003820160313', 0, NULL, NULL),
(3060, 30, '3003920160313', 0, NULL, NULL),
(3061, 30, '3004020160313', 0, NULL, NULL),
(3062, 30, '3004120160313', 0, NULL, NULL),
(3063, 30, '3004220160313', 0, NULL, NULL),
(3064, 30, '3004320160313', 0, NULL, NULL),
(3065, 30, '3004420160313', 0, NULL, NULL),
(3066, 30, '3004520160313', 0, NULL, NULL),
(3067, 30, '3004620160313', 0, NULL, NULL),
(3068, 30, '3004720160313', 0, NULL, NULL),
(3069, 30, '3004820160313', 0, NULL, NULL),
(3070, 30, '3004920160313', 0, NULL, NULL),
(3071, 31, '3100020160313', 0, NULL, NULL),
(3072, 31, '3100120160313', 0, NULL, NULL),
(3073, 31, '3100220160313', 0, NULL, NULL),
(3074, 31, '3100320160313', 0, NULL, NULL),
(3075, 31, '3100420160313', 0, NULL, NULL),
(3076, 31, '3100520160313', 0, NULL, NULL),
(3077, 31, '3100620160313', 0, NULL, NULL),
(3078, 31, '3100720160313', 0, NULL, NULL),
(3079, 31, '3100820160313', 0, NULL, NULL),
(3080, 31, '3100920160313', 0, NULL, NULL),
(3081, 31, '3101020160313', 0, NULL, NULL),
(3082, 31, '3101120160313', 0, NULL, NULL),
(3083, 31, '3101220160313', 0, NULL, NULL),
(3084, 31, '3101320160313', 0, NULL, NULL),
(3085, 31, '3101420160313', 0, NULL, NULL),
(3086, 31, '3101520160313', 0, NULL, NULL),
(3087, 31, '3101620160313', 0, NULL, NULL),
(3088, 31, '3101720160313', 0, NULL, NULL),
(3089, 31, '3101820160313', 0, NULL, NULL),
(3090, 31, '3101920160313', 0, NULL, NULL),
(3091, 31, '3102020160313', 0, NULL, NULL),
(3092, 31, '3102120160313', 0, NULL, NULL),
(3093, 31, '3102220160313', 0, NULL, NULL),
(3094, 31, '3102320160313', 0, NULL, NULL),
(3095, 31, '3102420160313', 0, NULL, NULL),
(3096, 31, '3102520160313', 0, NULL, NULL),
(3097, 31, '3102620160313', 0, NULL, NULL),
(3098, 31, '3102720160313', 0, NULL, NULL),
(3099, 31, '3102820160313', 0, NULL, NULL),
(3100, 31, '3102920160313', 0, NULL, NULL),
(3101, 31, '3103020160313', 0, NULL, NULL),
(3102, 31, '3103120160313', 0, NULL, NULL),
(3103, 31, '3103220160313', 0, NULL, NULL),
(3104, 31, '3103320160313', 0, NULL, NULL),
(3105, 31, '3103420160313', 0, NULL, NULL),
(3106, 31, '3103520160313', 0, NULL, NULL),
(3107, 31, '3103620160313', 0, NULL, NULL),
(3108, 31, '3103720160313', 0, NULL, NULL),
(3109, 31, '3103820160313', 0, NULL, NULL),
(3110, 31, '3103920160313', 0, NULL, NULL),
(3111, 31, '3104020160313', 0, NULL, NULL),
(3112, 31, '3104120160313', 0, NULL, NULL),
(3113, 31, '3104220160313', 0, NULL, NULL),
(3114, 31, '3104320160313', 0, NULL, NULL),
(3115, 31, '3104420160313', 0, NULL, NULL),
(3116, 31, '3104520160313', 0, NULL, NULL),
(3117, 31, '3104620160313', 0, NULL, NULL),
(3118, 31, '3104720160313', 0, NULL, NULL),
(3119, 31, '3104820160313', 0, NULL, NULL),
(3120, 31, '3104920160313', 0, NULL, NULL),
(3121, 32, '3200020160313', 0, NULL, NULL),
(3122, 32, '3200120160313', 0, NULL, NULL),
(3123, 32, '3200220160313', 0, NULL, NULL),
(3124, 32, '3200320160313', 0, NULL, NULL),
(3125, 32, '3200420160313', 0, NULL, NULL),
(3126, 32, '3200520160313', 0, NULL, NULL),
(3127, 32, '3200620160313', 0, NULL, NULL),
(3128, 32, '3200720160313', 0, NULL, NULL),
(3129, 32, '3200820160313', 0, NULL, NULL),
(3130, 32, '3200920160313', 0, NULL, NULL),
(3131, 32, '3201020160313', 0, NULL, NULL),
(3132, 32, '3201120160313', 0, NULL, NULL),
(3133, 32, '3201220160313', 0, NULL, NULL),
(3134, 32, '3201320160313', 0, NULL, NULL),
(3135, 32, '3201420160313', 0, NULL, NULL),
(3136, 32, '3201520160313', 0, NULL, NULL),
(3137, 32, '3201620160313', 0, NULL, NULL),
(3138, 32, '3201720160313', 0, NULL, NULL),
(3139, 32, '3201820160313', 0, NULL, NULL),
(3140, 32, '3201920160313', 0, NULL, NULL),
(3141, 32, '3202020160313', 0, NULL, NULL),
(3142, 32, '3202120160313', 0, NULL, NULL),
(3143, 32, '3202220160313', 0, NULL, NULL),
(3144, 32, '3202320160313', 0, NULL, NULL),
(3145, 32, '3202420160313', 0, NULL, NULL),
(3146, 32, '3202520160313', 0, NULL, NULL),
(3147, 32, '3202620160313', 0, NULL, NULL),
(3148, 32, '3202720160313', 0, NULL, NULL),
(3149, 32, '3202820160313', 0, NULL, NULL),
(3150, 32, '3202920160313', 0, NULL, NULL),
(3151, 32, '3203020160313', 0, NULL, NULL),
(3152, 32, '3203120160313', 0, NULL, NULL),
(3153, 32, '3203220160313', 0, NULL, NULL),
(3154, 32, '3203320160313', 0, NULL, NULL),
(3155, 32, '3203420160313', 0, NULL, NULL),
(3156, 32, '3203520160313', 0, NULL, NULL),
(3157, 32, '3203620160313', 0, NULL, NULL),
(3158, 32, '3203720160313', 0, NULL, NULL),
(3159, 32, '3203820160313', 0, NULL, NULL),
(3160, 32, '3203920160313', 0, NULL, NULL),
(3161, 32, '3204020160313', 0, NULL, NULL),
(3162, 32, '3204120160313', 0, NULL, NULL),
(3163, 32, '3204220160313', 0, NULL, NULL),
(3164, 32, '3204320160313', 0, NULL, NULL),
(3165, 32, '3204420160313', 0, NULL, NULL),
(3166, 32, '3204520160313', 0, NULL, NULL),
(3167, 32, '3204620160313', 0, NULL, NULL),
(3168, 32, '3204720160313', 0, NULL, NULL),
(3169, 32, '3204820160313', 0, NULL, NULL),
(3170, 32, '3204920160313', 0, NULL, NULL),
(3171, 33, '3300020160313', 0, NULL, NULL),
(3172, 33, '3300120160313', 0, NULL, NULL),
(3173, 33, '3300220160313', 0, NULL, NULL),
(3174, 33, '3300320160313', 0, NULL, NULL),
(3175, 33, '3300420160313', 0, NULL, NULL),
(3176, 33, '3300520160313', 0, NULL, NULL),
(3177, 33, '3300620160313', 0, NULL, NULL),
(3178, 33, '3300720160313', 0, NULL, NULL),
(3179, 33, '3300820160313', 0, NULL, NULL),
(3180, 33, '3300920160313', 0, NULL, NULL),
(3181, 33, '3301020160313', 0, NULL, NULL),
(3182, 33, '3301120160313', 0, NULL, NULL),
(3183, 33, '3301220160313', 0, NULL, NULL),
(3184, 33, '3301320160313', 0, NULL, NULL),
(3185, 33, '3301420160313', 0, NULL, NULL),
(3186, 33, '3301520160313', 0, NULL, NULL),
(3187, 33, '3301620160313', 0, NULL, NULL),
(3188, 33, '3301720160313', 0, NULL, NULL),
(3189, 33, '3301820160313', 0, NULL, NULL),
(3190, 33, '3301920160313', 0, NULL, NULL),
(3191, 33, '3302020160313', 0, NULL, NULL),
(3192, 33, '3302120160313', 0, NULL, NULL),
(3193, 33, '3302220160313', 0, NULL, NULL),
(3194, 33, '3302320160313', 0, NULL, NULL),
(3195, 33, '3302420160313', 0, NULL, NULL),
(3196, 33, '3302520160313', 0, NULL, NULL),
(3197, 33, '3302620160313', 0, NULL, NULL),
(3198, 33, '3302720160313', 0, NULL, NULL),
(3199, 33, '3302820160313', 0, NULL, NULL),
(3200, 33, '3302920160313', 0, NULL, NULL),
(3201, 33, '3303020160313', 0, NULL, NULL),
(3202, 33, '3303120160313', 0, NULL, NULL),
(3203, 33, '3303220160313', 0, NULL, NULL),
(3204, 33, '3303320160313', 0, NULL, NULL),
(3205, 33, '3303420160313', 0, NULL, NULL),
(3206, 33, '3303520160313', 0, NULL, NULL),
(3207, 33, '3303620160313', 0, NULL, NULL),
(3208, 33, '3303720160313', 0, NULL, NULL),
(3209, 33, '3303820160313', 0, NULL, NULL),
(3210, 33, '3303920160313', 0, NULL, NULL),
(3211, 33, '3304020160313', 0, NULL, NULL),
(3212, 33, '3304120160313', 0, NULL, NULL),
(3213, 33, '3304220160313', 0, NULL, NULL),
(3214, 33, '3304320160313', 0, NULL, NULL),
(3215, 33, '3304420160313', 0, NULL, NULL),
(3216, 33, '3304520160313', 0, NULL, NULL),
(3217, 33, '3304620160313', 0, NULL, NULL),
(3218, 33, '3304720160313', 0, NULL, NULL),
(3219, 33, '3304820160313', 0, NULL, NULL),
(3220, 33, '3304920160313', 0, NULL, NULL),
(3221, 34, '3400020160313', 0, NULL, NULL),
(3222, 34, '3400120160313', 0, NULL, NULL),
(3223, 34, '3400220160313', 0, NULL, NULL),
(3224, 34, '3400320160313', 0, NULL, NULL),
(3225, 34, '3400420160313', 0, NULL, NULL),
(3226, 34, '3400520160313', 0, NULL, NULL),
(3227, 34, '3400620160313', 0, NULL, NULL),
(3228, 34, '3400720160313', 0, NULL, NULL),
(3229, 34, '3400820160313', 0, NULL, NULL),
(3230, 34, '3400920160313', 0, NULL, NULL),
(3231, 34, '3401020160313', 0, NULL, NULL),
(3232, 34, '3401120160313', 0, NULL, NULL),
(3233, 34, '3401220160313', 0, NULL, NULL),
(3234, 34, '3401320160313', 0, NULL, NULL),
(3235, 34, '3401420160313', 0, NULL, NULL),
(3236, 34, '3401520160313', 0, NULL, NULL),
(3237, 34, '3401620160313', 0, NULL, NULL),
(3238, 34, '3401720160313', 0, NULL, NULL),
(3239, 34, '3401820160313', 0, NULL, NULL),
(3240, 34, '3401920160313', 0, NULL, NULL),
(3241, 34, '3402020160313', 0, NULL, NULL),
(3242, 34, '3402120160313', 0, NULL, NULL),
(3243, 34, '3402220160313', 0, NULL, NULL),
(3244, 34, '3402320160313', 0, NULL, NULL),
(3245, 34, '3402420160313', 0, NULL, NULL),
(3246, 34, '3402520160313', 0, NULL, NULL),
(3247, 34, '3402620160313', 0, NULL, NULL),
(3248, 34, '3402720160313', 0, NULL, NULL),
(3249, 34, '3402820160313', 0, NULL, NULL),
(3250, 34, '3402920160313', 0, NULL, NULL),
(3251, 34, '3403020160313', 0, NULL, NULL),
(3252, 34, '3403120160313', 0, NULL, NULL),
(3253, 34, '3403220160313', 0, NULL, NULL),
(3254, 34, '3403320160313', 0, NULL, NULL),
(3255, 34, '3403420160313', 0, NULL, NULL),
(3256, 34, '3403520160313', 0, NULL, NULL),
(3257, 34, '3403620160313', 0, NULL, NULL),
(3258, 34, '3403720160313', 0, NULL, NULL),
(3259, 34, '3403820160313', 0, NULL, NULL),
(3260, 34, '3403920160313', 0, NULL, NULL),
(3261, 34, '3404020160313', 0, NULL, NULL),
(3262, 34, '3404120160313', 0, NULL, NULL),
(3263, 34, '3404220160313', 0, NULL, NULL),
(3264, 34, '3404320160313', 0, NULL, NULL),
(3265, 34, '3404420160313', 0, NULL, NULL),
(3266, 34, '3404520160313', 0, NULL, NULL),
(3267, 34, '3404620160313', 0, NULL, NULL),
(3268, 34, '3404720160313', 0, NULL, NULL),
(3269, 34, '3404820160313', 0, NULL, NULL),
(3270, 34, '3404920160313', 0, NULL, NULL),
(3271, 35, '3500020160313', 0, NULL, NULL),
(3272, 35, '3500120160313', 0, NULL, NULL),
(3273, 35, '3500220160313', 0, NULL, NULL),
(3274, 35, '3500320160313', 0, NULL, NULL),
(3275, 35, '3500420160313', 0, NULL, NULL),
(3276, 35, '3500520160313', 0, NULL, NULL),
(3277, 35, '3500620160313', 0, NULL, NULL),
(3278, 35, '3500720160313', 0, NULL, NULL),
(3279, 35, '3500820160313', 0, NULL, NULL),
(3280, 35, '3500920160313', 0, NULL, NULL),
(3281, 35, '3501020160313', 0, NULL, NULL),
(3282, 35, '3501120160313', 0, NULL, NULL),
(3283, 35, '3501220160313', 0, NULL, NULL),
(3284, 35, '3501320160313', 0, NULL, NULL),
(3285, 35, '3501420160313', 0, NULL, NULL),
(3286, 35, '3501520160313', 0, NULL, NULL),
(3287, 35, '3501620160313', 0, NULL, NULL),
(3288, 35, '3501720160313', 0, NULL, NULL),
(3289, 35, '3501820160313', 0, NULL, NULL),
(3290, 35, '3501920160313', 0, NULL, NULL),
(3291, 35, '3502020160313', 0, NULL, NULL),
(3292, 35, '3502120160313', 0, NULL, NULL),
(3293, 35, '3502220160313', 0, NULL, NULL),
(3294, 35, '3502320160313', 0, NULL, NULL),
(3295, 35, '3502420160313', 0, NULL, NULL),
(3296, 35, '3502520160313', 0, NULL, NULL),
(3297, 35, '3502620160313', 0, NULL, NULL),
(3298, 35, '3502720160313', 0, NULL, NULL),
(3299, 35, '3502820160313', 0, NULL, NULL),
(3300, 35, '3502920160313', 0, NULL, NULL),
(3301, 35, '3503020160313', 0, NULL, NULL),
(3302, 35, '3503120160313', 0, NULL, NULL),
(3303, 35, '3503220160313', 0, NULL, NULL),
(3304, 35, '3503320160313', 0, NULL, NULL),
(3305, 35, '3503420160313', 0, NULL, NULL),
(3306, 35, '3503520160313', 0, NULL, NULL),
(3307, 35, '3503620160313', 0, NULL, NULL),
(3308, 35, '3503720160313', 0, NULL, NULL),
(3309, 35, '3503820160313', 0, NULL, NULL),
(3310, 35, '3503920160313', 0, NULL, NULL),
(3311, 35, '3504020160313', 0, NULL, NULL),
(3312, 35, '3504120160313', 0, NULL, NULL),
(3313, 35, '3504220160313', 0, NULL, NULL),
(3314, 35, '3504320160313', 0, NULL, NULL),
(3315, 35, '3504420160313', 0, NULL, NULL),
(3316, 35, '3504520160313', 0, NULL, NULL),
(3317, 35, '3504620160313', 0, NULL, NULL),
(3318, 35, '3504720160313', 0, NULL, NULL),
(3319, 35, '3504820160313', 0, NULL, NULL),
(3320, 35, '3504920160313', 0, NULL, NULL),
(3321, 36, '3600020160313', 0, NULL, NULL),
(3322, 36, '3600120160313', 0, NULL, NULL),
(3323, 36, '3600220160313', 0, NULL, NULL),
(3324, 36, '3600320160313', 0, NULL, NULL),
(3325, 36, '3600420160313', 0, NULL, NULL),
(3326, 36, '3600520160313', 0, NULL, NULL),
(3327, 36, '3600620160313', 0, NULL, NULL),
(3328, 36, '3600720160313', 0, NULL, NULL),
(3329, 36, '3600820160313', 0, NULL, NULL),
(3330, 36, '3600920160313', 0, NULL, NULL),
(3331, 36, '3601020160313', 0, NULL, NULL),
(3332, 36, '3601120160313', 0, NULL, NULL),
(3333, 36, '3601220160313', 0, NULL, NULL),
(3334, 36, '3601320160313', 0, NULL, NULL),
(3335, 36, '3601420160313', 0, NULL, NULL),
(3336, 36, '3601520160313', 0, NULL, NULL),
(3337, 36, '3601620160313', 0, NULL, NULL),
(3338, 36, '3601720160313', 0, NULL, NULL),
(3339, 36, '3601820160313', 0, NULL, NULL),
(3340, 36, '3601920160313', 0, NULL, NULL),
(3341, 36, '3602020160313', 0, NULL, NULL),
(3342, 36, '3602120160313', 0, NULL, NULL),
(3343, 36, '3602220160313', 0, NULL, NULL),
(3344, 36, '3602320160313', 0, NULL, NULL),
(3345, 36, '3602420160313', 0, NULL, NULL),
(3346, 36, '3602520160313', 0, NULL, NULL),
(3347, 36, '3602620160313', 0, NULL, NULL),
(3348, 36, '3602720160313', 0, NULL, NULL),
(3349, 36, '3602820160313', 0, NULL, NULL),
(3350, 36, '3602920160313', 0, NULL, NULL),
(3351, 36, '3603020160313', 0, NULL, NULL),
(3352, 36, '3603120160313', 0, NULL, NULL),
(3353, 36, '3603220160313', 0, NULL, NULL),
(3354, 36, '3603320160313', 0, NULL, NULL),
(3355, 36, '3603420160313', 0, NULL, NULL),
(3356, 36, '3603520160313', 0, NULL, NULL),
(3357, 36, '3603620160313', 0, NULL, NULL),
(3358, 36, '3603720160313', 0, NULL, NULL),
(3359, 36, '3603820160313', 0, NULL, NULL),
(3360, 36, '3603920160313', 0, NULL, NULL),
(3361, 36, '3604020160313', 0, NULL, NULL),
(3362, 36, '3604120160313', 0, NULL, NULL),
(3363, 36, '3604220160313', 0, NULL, NULL),
(3364, 36, '3604320160313', 0, NULL, NULL),
(3365, 36, '3604420160313', 0, NULL, NULL),
(3366, 36, '3604520160313', 0, NULL, NULL),
(3367, 36, '3604620160313', 0, NULL, NULL),
(3368, 36, '3604720160313', 0, NULL, NULL),
(3369, 36, '3604820160313', 0, NULL, NULL),
(3370, 36, '3604920160313', 0, NULL, NULL),
(3371, 37, '3700020160313', 0, NULL, NULL),
(3372, 37, '3700120160313', 0, NULL, NULL),
(3373, 37, '3700220160313', 0, NULL, NULL),
(3374, 37, '3700320160313', 0, NULL, NULL),
(3375, 37, '3700420160313', 0, NULL, NULL),
(3376, 37, '3700520160313', 0, NULL, NULL),
(3377, 37, '3700620160313', 0, NULL, NULL),
(3378, 37, '3700720160313', 0, NULL, NULL),
(3379, 37, '3700820160313', 0, NULL, NULL),
(3380, 37, '3700920160313', 0, NULL, NULL),
(3381, 37, '3701020160313', 0, NULL, NULL),
(3382, 37, '3701120160313', 0, NULL, NULL),
(3383, 37, '3701220160313', 0, NULL, NULL),
(3384, 37, '3701320160313', 0, NULL, NULL),
(3385, 37, '3701420160313', 0, NULL, NULL),
(3386, 37, '3701520160313', 0, NULL, NULL),
(3387, 37, '3701620160313', 0, NULL, NULL),
(3388, 37, '3701720160313', 0, NULL, NULL),
(3389, 37, '3701820160313', 0, NULL, NULL),
(3390, 37, '3701920160313', 0, NULL, NULL),
(3391, 37, '3702020160313', 0, NULL, NULL),
(3392, 37, '3702120160313', 0, NULL, NULL),
(3393, 37, '3702220160313', 0, NULL, NULL),
(3394, 37, '3702320160313', 0, NULL, NULL),
(3395, 37, '3702420160313', 0, NULL, NULL),
(3396, 37, '3702520160313', 0, NULL, NULL),
(3397, 37, '3702620160313', 0, NULL, NULL),
(3398, 37, '3702720160313', 0, NULL, NULL),
(3399, 37, '3702820160313', 0, NULL, NULL),
(3400, 37, '3702920160313', 0, NULL, NULL),
(3401, 37, '3703020160313', 0, NULL, NULL),
(3402, 37, '3703120160313', 0, NULL, NULL),
(3403, 37, '3703220160313', 0, NULL, NULL),
(3404, 37, '3703320160313', 0, NULL, NULL),
(3405, 37, '3703420160313', 0, NULL, NULL),
(3406, 37, '3703520160313', 0, NULL, NULL),
(3407, 37, '3703620160313', 0, NULL, NULL),
(3408, 37, '3703720160313', 0, NULL, NULL),
(3409, 37, '3703820160313', 0, NULL, NULL),
(3410, 37, '3703920160313', 0, NULL, NULL),
(3411, 37, '3704020160313', 0, NULL, NULL),
(3412, 37, '3704120160313', 0, NULL, NULL),
(3413, 37, '3704220160313', 0, NULL, NULL),
(3414, 37, '3704320160313', 0, NULL, NULL),
(3415, 37, '3704420160313', 0, NULL, NULL),
(3416, 37, '3704520160313', 0, NULL, NULL),
(3417, 37, '3704620160313', 0, NULL, NULL),
(3418, 37, '3704720160313', 0, NULL, NULL),
(3419, 37, '3704820160313', 0, NULL, NULL),
(3420, 37, '3704920160313', 0, NULL, NULL),
(3421, 38, '3800020160313', 0, NULL, NULL),
(3422, 38, '3800120160313', 0, NULL, NULL),
(3423, 38, '3800220160313', 0, NULL, NULL),
(3424, 38, '3800320160313', 0, NULL, NULL),
(3425, 38, '3800420160313', 0, NULL, NULL),
(3426, 38, '3800520160313', 0, NULL, NULL),
(3427, 38, '3800620160313', 0, NULL, NULL),
(3428, 38, '3800720160313', 0, NULL, NULL),
(3429, 38, '3800820160313', 0, NULL, NULL),
(3430, 38, '3800920160313', 0, NULL, NULL),
(3431, 38, '3801020160313', 0, NULL, NULL),
(3432, 38, '3801120160313', 0, NULL, NULL),
(3433, 38, '3801220160313', 0, NULL, NULL),
(3434, 38, '3801320160313', 0, NULL, NULL),
(3435, 38, '3801420160313', 0, NULL, NULL),
(3436, 38, '3801520160313', 0, NULL, NULL),
(3437, 38, '3801620160313', 0, NULL, NULL),
(3438, 38, '3801720160313', 0, NULL, NULL),
(3439, 38, '3801820160313', 0, NULL, NULL),
(3440, 38, '3801920160313', 0, NULL, NULL),
(3441, 38, '3802020160313', 0, NULL, NULL),
(3442, 38, '3802120160313', 0, NULL, NULL),
(3443, 38, '3802220160313', 0, NULL, NULL),
(3444, 38, '3802320160313', 0, NULL, NULL),
(3445, 38, '3802420160313', 0, NULL, NULL),
(3446, 38, '3802520160313', 0, NULL, NULL),
(3447, 38, '3802620160313', 0, NULL, NULL),
(3448, 38, '3802720160313', 0, NULL, NULL),
(3449, 38, '3802820160313', 0, NULL, NULL),
(3450, 38, '3802920160313', 0, NULL, NULL),
(3451, 38, '3803020160313', 0, NULL, NULL),
(3452, 38, '3803120160313', 0, NULL, NULL),
(3453, 38, '3803220160313', 0, NULL, NULL),
(3454, 38, '3803320160313', 0, NULL, NULL),
(3455, 38, '3803420160313', 0, NULL, NULL),
(3456, 38, '3803520160313', 0, NULL, NULL),
(3457, 38, '3803620160313', 0, NULL, NULL),
(3458, 38, '3803720160313', 0, NULL, NULL),
(3459, 38, '3803820160313', 0, NULL, NULL),
(3460, 38, '3803920160313', 0, NULL, NULL),
(3461, 38, '3804020160313', 0, NULL, NULL),
(3462, 38, '3804120160313', 0, NULL, NULL),
(3463, 38, '3804220160313', 0, NULL, NULL),
(3464, 38, '3804320160313', 0, NULL, NULL),
(3465, 38, '3804420160313', 0, NULL, NULL),
(3466, 38, '3804520160313', 0, NULL, NULL),
(3467, 38, '3804620160313', 0, NULL, NULL),
(3468, 38, '3804720160313', 0, NULL, NULL),
(3469, 38, '3804820160313', 0, NULL, NULL),
(3470, 38, '3804920160313', 0, NULL, NULL),
(3471, 39, '3900020160313', 0, NULL, NULL),
(3472, 39, '3900120160313', 0, NULL, NULL),
(3473, 39, '3900220160313', 0, NULL, NULL),
(3474, 39, '3900320160313', 0, NULL, NULL),
(3475, 39, '3900420160313', 0, NULL, NULL),
(3476, 39, '3900520160313', 0, NULL, NULL),
(3477, 39, '3900620160313', 0, NULL, NULL),
(3478, 39, '3900720160313', 0, NULL, NULL),
(3479, 39, '3900820160313', 0, NULL, NULL),
(3480, 39, '3900920160313', 0, NULL, NULL),
(3481, 39, '3901020160313', 0, NULL, NULL),
(3482, 39, '3901120160313', 0, NULL, NULL),
(3483, 39, '3901220160313', 0, NULL, NULL),
(3484, 39, '3901320160313', 0, NULL, NULL),
(3485, 39, '3901420160313', 0, NULL, NULL),
(3486, 39, '3901520160313', 0, NULL, NULL),
(3487, 39, '3901620160313', 0, NULL, NULL),
(3488, 39, '3901720160313', 0, NULL, NULL),
(3489, 39, '3901820160313', 0, NULL, NULL),
(3490, 39, '3901920160313', 0, NULL, NULL),
(3491, 39, '3902020160313', 0, NULL, NULL),
(3492, 39, '3902120160313', 0, NULL, NULL),
(3493, 39, '3902220160313', 0, NULL, NULL),
(3494, 39, '3902320160313', 0, NULL, NULL),
(3495, 39, '3902420160313', 0, NULL, NULL),
(3496, 39, '3902520160313', 0, NULL, NULL),
(3497, 39, '3902620160313', 0, NULL, NULL),
(3498, 39, '3902720160313', 0, NULL, NULL),
(3499, 39, '3902820160313', 0, NULL, NULL),
(3500, 39, '3902920160313', 0, NULL, NULL),
(3501, 39, '3903020160313', 0, NULL, NULL),
(3502, 39, '3903120160313', 0, NULL, NULL),
(3503, 39, '3903220160313', 0, NULL, NULL),
(3504, 39, '3903320160313', 0, NULL, NULL),
(3505, 39, '3903420160313', 0, NULL, NULL),
(3506, 39, '3903520160313', 0, NULL, NULL),
(3507, 39, '3903620160313', 0, NULL, NULL),
(3508, 39, '3903720160313', 0, NULL, NULL),
(3509, 39, '3903820160313', 0, NULL, NULL),
(3510, 39, '3903920160313', 0, NULL, NULL),
(3511, 39, '3904020160313', 0, NULL, NULL),
(3512, 39, '3904120160313', 0, NULL, NULL),
(3513, 39, '3904220160313', 0, NULL, NULL),
(3514, 39, '3904320160313', 0, NULL, NULL),
(3515, 39, '3904420160313', 0, NULL, NULL),
(3516, 39, '3904520160313', 0, NULL, NULL),
(3517, 39, '3904620160313', 0, NULL, NULL),
(3518, 39, '3904720160313', 0, NULL, NULL),
(3519, 39, '3904820160313', 0, NULL, NULL),
(3520, 39, '3904920160313', 0, NULL, NULL),
(3521, 40, '4000020160313', 0, NULL, NULL),
(3522, 40, '4000120160313', 0, NULL, NULL),
(3523, 40, '4000220160313', 0, NULL, NULL),
(3524, 40, '4000320160313', 0, NULL, NULL),
(3525, 40, '4000420160313', 0, NULL, NULL),
(3526, 40, '4000520160313', 0, NULL, NULL),
(3527, 40, '4000620160313', 0, NULL, NULL),
(3528, 40, '4000720160313', 0, NULL, NULL),
(3529, 40, '4000820160313', 0, NULL, NULL),
(3530, 40, '4000920160313', 0, NULL, NULL),
(3531, 40, '4001020160313', 0, NULL, NULL),
(3532, 40, '4001120160313', 0, NULL, NULL),
(3533, 40, '4001220160313', 0, NULL, NULL),
(3534, 40, '4001320160313', 0, NULL, NULL),
(3535, 40, '4001420160313', 0, NULL, NULL),
(3536, 40, '4001520160313', 0, NULL, NULL),
(3537, 40, '4001620160313', 0, NULL, NULL),
(3538, 40, '4001720160313', 0, NULL, NULL),
(3539, 40, '4001820160313', 0, NULL, NULL),
(3540, 40, '4001920160313', 0, NULL, NULL),
(3541, 40, '4002020160313', 0, NULL, NULL),
(3542, 40, '4002120160313', 0, NULL, NULL),
(3543, 40, '4002220160313', 0, NULL, NULL),
(3544, 40, '4002320160313', 0, NULL, NULL),
(3545, 40, '4002420160313', 0, NULL, NULL),
(3546, 40, '4002520160313', 0, NULL, NULL),
(3547, 40, '4002620160313', 0, NULL, NULL),
(3548, 40, '4002720160313', 0, NULL, NULL),
(3549, 40, '4002820160313', 0, NULL, NULL),
(3550, 40, '4002920160313', 0, NULL, NULL),
(3551, 40, '4003020160313', 0, NULL, NULL),
(3552, 40, '4003120160313', 0, NULL, NULL),
(3553, 40, '4003220160313', 0, NULL, NULL),
(3554, 40, '4003320160313', 0, NULL, NULL),
(3555, 40, '4003420160313', 0, NULL, NULL),
(3556, 40, '4003520160313', 0, NULL, NULL),
(3557, 40, '4003620160313', 0, NULL, NULL),
(3558, 40, '4003720160313', 0, NULL, NULL),
(3559, 40, '4003820160313', 0, NULL, NULL),
(3560, 40, '4003920160313', 0, NULL, NULL),
(3561, 40, '4004020160313', 0, NULL, NULL),
(3562, 40, '4004120160313', 0, NULL, NULL),
(3563, 40, '4004220160313', 0, NULL, NULL),
(3564, 40, '4004320160313', 0, NULL, NULL),
(3565, 40, '4004420160313', 0, NULL, NULL),
(3566, 40, '4004520160313', 0, NULL, NULL),
(3567, 40, '4004620160313', 0, NULL, NULL),
(3568, 40, '4004720160313', 0, NULL, NULL),
(3569, 40, '4004820160313', 0, NULL, NULL),
(3570, 40, '4004920160313', 0, NULL, NULL),
(3571, 41, '4100020160313', 0, NULL, NULL),
(3572, 41, '4100120160313', 0, NULL, NULL),
(3573, 41, '4100220160313', 0, NULL, NULL),
(3574, 41, '4100320160313', 0, NULL, NULL),
(3575, 41, '4100420160313', 0, NULL, NULL),
(3576, 41, '4100520160313', 0, NULL, NULL),
(3577, 41, '4100620160313', 0, NULL, NULL),
(3578, 41, '4100720160313', 0, NULL, NULL),
(3579, 41, '4100820160313', 0, NULL, NULL),
(3580, 41, '4100920160313', 0, NULL, NULL),
(3581, 41, '4101020160313', 0, NULL, NULL),
(3582, 41, '4101120160313', 0, NULL, NULL),
(3583, 41, '4101220160313', 0, NULL, NULL),
(3584, 41, '4101320160313', 0, NULL, NULL),
(3585, 41, '4101420160313', 0, NULL, NULL),
(3586, 41, '4101520160313', 0, NULL, NULL),
(3587, 41, '4101620160313', 0, NULL, NULL),
(3588, 41, '4101720160313', 0, NULL, NULL),
(3589, 41, '4101820160313', 0, NULL, NULL),
(3590, 41, '4101920160313', 0, NULL, NULL),
(3591, 41, '4102020160313', 0, NULL, NULL),
(3592, 41, '4102120160313', 0, NULL, NULL),
(3593, 41, '4102220160313', 0, NULL, NULL),
(3594, 41, '4102320160313', 0, NULL, NULL),
(3595, 41, '4102420160313', 0, NULL, NULL),
(3596, 41, '4102520160313', 0, NULL, NULL),
(3597, 41, '4102620160313', 0, NULL, NULL),
(3598, 41, '4102720160313', 0, NULL, NULL),
(3599, 41, '4102820160313', 0, NULL, NULL),
(3600, 41, '4102920160313', 0, NULL, NULL),
(3601, 41, '4103020160313', 0, NULL, NULL),
(3602, 41, '4103120160313', 0, NULL, NULL),
(3603, 41, '4103220160313', 0, NULL, NULL),
(3604, 41, '4103320160313', 0, NULL, NULL),
(3605, 41, '4103420160313', 0, NULL, NULL),
(3606, 41, '4103520160313', 0, NULL, NULL),
(3607, 41, '4103620160313', 0, NULL, NULL),
(3608, 41, '4103720160313', 0, NULL, NULL),
(3609, 41, '4103820160313', 0, NULL, NULL),
(3610, 41, '4103920160313', 0, NULL, NULL),
(3611, 41, '4104020160313', 0, NULL, NULL),
(3612, 41, '4104120160313', 0, NULL, NULL),
(3613, 41, '4104220160313', 0, NULL, NULL),
(3614, 41, '4104320160313', 0, NULL, NULL),
(3615, 41, '4104420160313', 0, NULL, NULL),
(3616, 41, '4104520160313', 0, NULL, NULL),
(3617, 41, '4104620160313', 0, NULL, NULL),
(3618, 41, '4104720160313', 0, NULL, NULL),
(3619, 41, '4104820160313', 0, NULL, NULL),
(3620, 41, '4104920160313', 0, NULL, NULL),
(3621, 42, '4200020160313', 0, NULL, NULL),
(3622, 42, '4200120160313', 0, NULL, NULL),
(3623, 42, '4200220160313', 0, NULL, NULL),
(3624, 42, '4200320160313', 0, NULL, NULL),
(3625, 42, '4200420160313', 0, NULL, NULL),
(3626, 42, '4200520160313', 0, NULL, NULL),
(3627, 42, '4200620160313', 0, NULL, NULL),
(3628, 42, '4200720160313', 0, NULL, NULL),
(3629, 42, '4200820160313', 0, NULL, NULL),
(3630, 42, '4200920160313', 0, NULL, NULL),
(3631, 42, '4201020160313', 0, NULL, NULL),
(3632, 42, '4201120160313', 0, NULL, NULL),
(3633, 42, '4201220160313', 0, NULL, NULL),
(3634, 42, '4201320160313', 0, NULL, NULL),
(3635, 42, '4201420160313', 0, NULL, NULL),
(3636, 42, '4201520160313', 0, NULL, NULL),
(3637, 42, '4201620160313', 0, NULL, NULL),
(3638, 42, '4201720160313', 0, NULL, NULL),
(3639, 42, '4201820160313', 0, NULL, NULL),
(3640, 42, '4201920160313', 0, NULL, NULL),
(3641, 42, '4202020160313', 0, NULL, NULL),
(3642, 42, '4202120160313', 0, NULL, NULL),
(3643, 42, '4202220160313', 0, NULL, NULL),
(3644, 42, '4202320160313', 0, NULL, NULL),
(3645, 42, '4202420160313', 0, NULL, NULL),
(3646, 42, '4202520160313', 0, NULL, NULL),
(3647, 42, '4202620160313', 0, NULL, NULL),
(3648, 42, '4202720160313', 0, NULL, NULL),
(3649, 42, '4202820160313', 0, NULL, NULL),
(3650, 42, '4202920160313', 0, NULL, NULL),
(3651, 42, '4203020160313', 0, NULL, NULL),
(3652, 42, '4203120160313', 0, NULL, NULL),
(3653, 42, '4203220160313', 0, NULL, NULL),
(3654, 42, '4203320160313', 0, NULL, NULL),
(3655, 42, '4203420160313', 0, NULL, NULL),
(3656, 42, '4203520160313', 0, NULL, NULL),
(3657, 42, '4203620160313', 0, NULL, NULL),
(3658, 42, '4203720160313', 0, NULL, NULL),
(3659, 42, '4203820160313', 0, NULL, NULL),
(3660, 42, '4203920160313', 0, NULL, NULL),
(3661, 42, '4204020160313', 0, NULL, NULL),
(3662, 42, '4204120160313', 0, NULL, NULL),
(3663, 42, '4204220160313', 0, NULL, NULL),
(3664, 42, '4204320160313', 0, NULL, NULL),
(3665, 42, '4204420160313', 0, NULL, NULL),
(3666, 42, '4204520160313', 0, NULL, NULL),
(3667, 42, '4204620160313', 0, NULL, NULL),
(3668, 42, '4204720160313', 0, NULL, NULL),
(3669, 42, '4204820160313', 0, NULL, NULL),
(3670, 42, '4204920160313', 0, NULL, NULL),
(3671, 43, '4300020160313', 0, NULL, NULL),
(3672, 43, '4300120160313', 0, NULL, NULL),
(3673, 43, '4300220160313', 0, NULL, NULL),
(3674, 43, '4300320160313', 0, NULL, NULL),
(3675, 43, '4300420160313', 0, NULL, NULL),
(3676, 43, '4300520160313', 0, NULL, NULL),
(3677, 43, '4300620160313', 0, NULL, NULL),
(3678, 43, '4300720160313', 0, NULL, NULL),
(3679, 43, '4300820160313', 0, NULL, NULL),
(3680, 43, '4300920160313', 0, NULL, NULL),
(3681, 43, '4301020160313', 0, NULL, NULL),
(3682, 43, '4301120160313', 0, NULL, NULL),
(3683, 43, '4301220160313', 0, NULL, NULL),
(3684, 43, '4301320160313', 0, NULL, NULL),
(3685, 43, '4301420160313', 0, NULL, NULL),
(3686, 43, '4301520160313', 0, NULL, NULL),
(3687, 43, '4301620160313', 0, NULL, NULL),
(3688, 43, '4301720160313', 0, NULL, NULL),
(3689, 43, '4301820160313', 0, NULL, NULL),
(3690, 43, '4301920160313', 0, NULL, NULL),
(3691, 43, '4302020160313', 0, NULL, NULL),
(3692, 43, '4302120160313', 0, NULL, NULL),
(3693, 43, '4302220160313', 0, NULL, NULL),
(3694, 43, '4302320160313', 0, NULL, NULL),
(3695, 43, '4302420160313', 0, NULL, NULL),
(3696, 43, '4302520160313', 0, NULL, NULL),
(3697, 43, '4302620160313', 0, NULL, NULL),
(3698, 43, '4302720160313', 0, NULL, NULL),
(3699, 43, '4302820160313', 0, NULL, NULL),
(3700, 43, '4302920160313', 0, NULL, NULL),
(3701, 43, '4303020160313', 0, NULL, NULL),
(3702, 43, '4303120160313', 0, NULL, NULL),
(3703, 43, '4303220160313', 0, NULL, NULL),
(3704, 43, '4303320160313', 0, NULL, NULL),
(3705, 43, '4303420160313', 0, NULL, NULL),
(3706, 43, '4303520160313', 0, NULL, NULL),
(3707, 43, '4303620160313', 0, NULL, NULL),
(3708, 43, '4303720160313', 0, NULL, NULL),
(3709, 43, '4303820160313', 0, NULL, NULL),
(3710, 43, '4303920160313', 0, NULL, NULL),
(3711, 43, '4304020160313', 0, NULL, NULL),
(3712, 43, '4304120160313', 0, NULL, NULL),
(3713, 43, '4304220160313', 0, NULL, NULL),
(3714, 43, '4304320160313', 0, NULL, NULL),
(3715, 43, '4304420160313', 0, NULL, NULL),
(3716, 43, '4304520160313', 0, NULL, NULL),
(3717, 43, '4304620160313', 0, NULL, NULL),
(3718, 43, '4304720160313', 0, NULL, NULL),
(3719, 43, '4304820160313', 0, NULL, NULL),
(3720, 43, '4304920160313', 0, NULL, NULL),
(3721, 44, '4400020160313', 0, NULL, NULL),
(3722, 44, '4400120160313', 0, NULL, NULL),
(3723, 44, '4400220160313', 0, NULL, NULL),
(3724, 44, '4400320160313', 0, NULL, NULL),
(3725, 44, '4400420160313', 0, NULL, NULL),
(3726, 44, '4400520160313', 0, NULL, NULL),
(3727, 44, '4400620160313', 0, NULL, NULL),
(3728, 44, '4400720160313', 0, NULL, NULL),
(3729, 44, '4400820160313', 0, NULL, NULL),
(3730, 44, '4400920160313', 0, NULL, NULL),
(3731, 44, '4401020160313', 0, NULL, NULL),
(3732, 44, '4401120160313', 0, NULL, NULL),
(3733, 44, '4401220160313', 0, NULL, NULL),
(3734, 44, '4401320160313', 0, NULL, NULL),
(3735, 44, '4401420160313', 0, NULL, NULL),
(3736, 44, '4401520160313', 0, NULL, NULL),
(3737, 44, '4401620160313', 0, NULL, NULL),
(3738, 44, '4401720160313', 0, NULL, NULL),
(3739, 44, '4401820160313', 0, NULL, NULL),
(3740, 44, '4401920160313', 0, NULL, NULL),
(3741, 44, '4402020160313', 0, NULL, NULL),
(3742, 44, '4402120160313', 0, NULL, NULL),
(3743, 44, '4402220160313', 0, NULL, NULL),
(3744, 44, '4402320160313', 0, NULL, NULL),
(3745, 44, '4402420160313', 0, NULL, NULL),
(3746, 44, '4402520160313', 0, NULL, NULL),
(3747, 44, '4402620160313', 0, NULL, NULL),
(3748, 44, '4402720160313', 0, NULL, NULL),
(3749, 44, '4402820160313', 0, NULL, NULL),
(3750, 44, '4402920160313', 0, NULL, NULL),
(3751, 44, '4403020160313', 0, NULL, NULL),
(3752, 44, '4403120160313', 0, NULL, NULL),
(3753, 44, '4403220160313', 0, NULL, NULL),
(3754, 44, '4403320160313', 0, NULL, NULL),
(3755, 44, '4403420160313', 0, NULL, NULL),
(3756, 44, '4403520160313', 0, NULL, NULL),
(3757, 44, '4403620160313', 0, NULL, NULL),
(3758, 44, '4403720160313', 0, NULL, NULL),
(3759, 44, '4403820160313', 0, NULL, NULL),
(3760, 44, '4403920160313', 0, NULL, NULL),
(3761, 44, '4404020160313', 0, NULL, NULL),
(3762, 44, '4404120160313', 0, NULL, NULL),
(3763, 44, '4404220160313', 0, NULL, NULL),
(3764, 44, '4404320160313', 0, NULL, NULL),
(3765, 44, '4404420160313', 0, NULL, NULL),
(3766, 44, '4404520160313', 0, NULL, NULL),
(3767, 44, '4404620160313', 0, NULL, NULL),
(3768, 44, '4404720160313', 0, NULL, NULL),
(3769, 44, '4404820160313', 0, NULL, NULL),
(3770, 44, '4404920160313', 0, NULL, NULL),
(3771, 45, '4500020160313', 0, NULL, NULL),
(3772, 45, '4500120160313', 0, NULL, NULL),
(3773, 45, '4500220160313', 0, NULL, NULL),
(3774, 45, '4500320160313', 0, NULL, NULL),
(3775, 45, '4500420160313', 0, NULL, NULL),
(3776, 45, '4500520160313', 0, NULL, NULL),
(3777, 45, '4500620160313', 0, NULL, NULL),
(3778, 45, '4500720160313', 0, NULL, NULL),
(3779, 45, '4500820160313', 0, NULL, NULL),
(3780, 45, '4500920160313', 0, NULL, NULL),
(3781, 45, '4501020160313', 0, NULL, NULL),
(3782, 45, '4501120160313', 0, NULL, NULL),
(3783, 45, '4501220160313', 0, NULL, NULL),
(3784, 45, '4501320160313', 0, NULL, NULL),
(3785, 45, '4501420160313', 0, NULL, NULL),
(3786, 45, '4501520160313', 0, NULL, NULL),
(3787, 45, '4501620160313', 0, NULL, NULL),
(3788, 45, '4501720160313', 0, NULL, NULL),
(3789, 45, '4501820160313', 0, NULL, NULL),
(3790, 45, '4501920160313', 0, NULL, NULL),
(3791, 45, '4502020160313', 0, NULL, NULL),
(3792, 45, '4502120160313', 0, NULL, NULL),
(3793, 45, '4502220160313', 0, NULL, NULL),
(3794, 45, '4502320160313', 0, NULL, NULL),
(3795, 45, '4502420160313', 0, NULL, NULL),
(3796, 45, '4502520160313', 0, NULL, NULL),
(3797, 45, '4502620160313', 0, NULL, NULL),
(3798, 45, '4502720160313', 0, NULL, NULL),
(3799, 45, '4502820160313', 0, NULL, NULL),
(3800, 45, '4502920160313', 0, NULL, NULL),
(3801, 45, '4503020160313', 0, NULL, NULL),
(3802, 45, '4503120160313', 0, NULL, NULL),
(3803, 45, '4503220160313', 0, NULL, NULL),
(3804, 45, '4503320160313', 0, NULL, NULL),
(3805, 45, '4503420160313', 0, NULL, NULL),
(3806, 45, '4503520160313', 0, NULL, NULL),
(3807, 45, '4503620160313', 0, NULL, NULL),
(3808, 45, '4503720160313', 0, NULL, NULL),
(3809, 45, '4503820160313', 0, NULL, NULL),
(3810, 45, '4503920160313', 0, NULL, NULL),
(3811, 45, '4504020160313', 0, NULL, NULL),
(3812, 45, '4504120160313', 0, NULL, NULL),
(3813, 45, '4504220160313', 0, NULL, NULL),
(3814, 45, '4504320160313', 0, NULL, NULL),
(3815, 45, '4504420160313', 0, NULL, NULL),
(3816, 45, '4504520160313', 0, NULL, NULL),
(3817, 45, '4504620160313', 0, NULL, NULL),
(3818, 45, '4504720160313', 0, NULL, NULL),
(3819, 45, '4504820160313', 0, NULL, NULL),
(3820, 45, '4504920160313', 0, NULL, NULL),
(3821, 1, '100020160313', 0, NULL, NULL),
(3822, 1, '100120160313', 0, NULL, NULL),
(3823, 1, '100220160313', 0, NULL, NULL),
(3824, 1, '100320160313', 0, NULL, NULL),
(3825, 1, '100420160313', 0, NULL, NULL),
(3826, 1, '100520160313', 0, NULL, NULL),
(3827, 1, '100620160313', 0, NULL, NULL),
(3828, 1, '100720160313', 0, NULL, NULL),
(3829, 1, '100820160313', 0, NULL, NULL),
(3830, 1, '100920160313', 0, NULL, NULL),
(3831, 1, '101020160313', 0, NULL, NULL),
(3832, 1, '101120160313', 0, NULL, NULL),
(3833, 1, '101220160313', 0, NULL, NULL),
(3834, 1, '101320160313', 0, NULL, NULL),
(3835, 1, '101420160313', 0, NULL, NULL),
(3836, 1, '101520160313', 0, NULL, NULL),
(3837, 1, '101620160313', 0, NULL, NULL),
(3838, 1, '101720160313', 0, NULL, NULL),
(3839, 1, '101820160313', 0, NULL, NULL),
(3840, 1, '101920160313', 0, NULL, NULL),
(3841, 1, '102020160313', 0, NULL, NULL),
(3842, 1, '102120160313', 0, NULL, NULL),
(3843, 1, '102220160313', 0, NULL, NULL),
(3844, 1, '102320160313', 0, NULL, NULL),
(3845, 1, '102420160313', 0, NULL, NULL),
(3846, 1, '102520160313', 0, NULL, NULL),
(3847, 1, '102620160313', 0, NULL, NULL),
(3848, 1, '102720160313', 0, NULL, NULL),
(3849, 1, '102820160313', 0, NULL, NULL),
(3850, 1, '102920160313', 0, NULL, NULL),
(3851, 1, '103020160313', 0, NULL, NULL),
(3852, 1, '103120160313', 0, NULL, NULL),
(3853, 1, '103220160313', 0, NULL, NULL),
(3854, 1, '103320160313', 0, NULL, NULL),
(3855, 1, '103420160313', 0, NULL, NULL),
(3856, 1, '103520160313', 0, NULL, NULL),
(3857, 1, '103620160313', 0, NULL, NULL),
(3858, 1, '103720160313', 0, NULL, NULL),
(3859, 1, '103820160313', 0, NULL, NULL),
(3860, 1, '103920160313', 0, NULL, NULL),
(3861, 1, '104020160313', 0, NULL, NULL),
(3862, 1, '104120160313', 0, NULL, NULL),
(3863, 1, '104220160313', 0, NULL, NULL),
(3864, 1, '104320160313', 0, NULL, NULL),
(3865, 1, '104420160313', 0, NULL, NULL),
(3866, 1, '104520160313', 0, NULL, NULL),
(3867, 1, '104620160313', 0, NULL, NULL),
(3868, 1, '104720160313', 0, NULL, NULL),
(3869, 1, '104820160313', 0, NULL, NULL),
(3870, 1, '104920160313', 0, NULL, NULL),
(3871, 3, '300020160313', 0, NULL, NULL),
(3872, 3, '300120160313', 0, NULL, NULL),
(3873, 3, '300220160313', 0, NULL, NULL),
(3874, 3, '300320160313', 0, NULL, NULL),
(3875, 3, '300420160313', 0, NULL, NULL),
(3876, 3, '300520160313', 0, NULL, NULL),
(3877, 3, '300620160313', 0, NULL, NULL),
(3878, 3, '300720160313', 0, NULL, NULL),
(3879, 3, '300820160313', 0, NULL, NULL),
(3880, 3, '300920160313', 0, NULL, NULL),
(3881, 3, '301020160313', 0, NULL, NULL),
(3882, 3, '301120160313', 0, NULL, NULL),
(3883, 3, '301220160313', 0, NULL, NULL),
(3884, 3, '301320160313', 0, NULL, NULL),
(3885, 3, '301420160313', 0, NULL, NULL),
(3886, 3, '301520160313', 0, NULL, NULL),
(3887, 3, '301620160313', 0, NULL, NULL),
(3888, 3, '301720160313', 0, NULL, NULL),
(3889, 3, '301820160313', 0, NULL, NULL),
(3890, 3, '301920160313', 0, NULL, NULL),
(3891, 3, '302020160313', 0, NULL, NULL),
(3892, 3, '302120160313', 0, NULL, NULL),
(3893, 3, '302220160313', 0, NULL, NULL),
(3894, 3, '302320160313', 0, NULL, NULL),
(3895, 3, '302420160313', 0, NULL, NULL),
(3896, 3, '302520160313', 0, NULL, NULL),
(3897, 3, '302620160313', 0, NULL, NULL),
(3898, 3, '302720160313', 0, NULL, NULL),
(3899, 3, '302820160313', 0, NULL, NULL),
(3900, 3, '302920160313', 0, NULL, NULL),
(3901, 3, '303020160313', 0, NULL, NULL),
(3902, 3, '303120160313', 0, NULL, NULL),
(3903, 3, '303220160313', 0, NULL, NULL),
(3904, 3, '303320160313', 0, NULL, NULL),
(3905, 3, '303420160313', 0, NULL, NULL),
(3906, 3, '303520160313', 0, NULL, NULL),
(3907, 3, '303620160313', 0, NULL, NULL),
(3908, 3, '303720160313', 0, NULL, NULL),
(3909, 3, '303820160313', 0, NULL, NULL),
(3910, 3, '303920160313', 0, NULL, NULL),
(3911, 3, '304020160313', 0, NULL, NULL),
(3912, 3, '304120160313', 0, NULL, NULL),
(3913, 3, '304220160313', 0, NULL, NULL),
(3914, 3, '304320160313', 0, NULL, NULL),
(3915, 3, '304420160313', 0, NULL, NULL),
(3916, 3, '304520160313', 0, NULL, NULL),
(3917, 3, '304620160313', 0, NULL, NULL),
(3918, 3, '304720160313', 0, NULL, NULL),
(3919, 3, '304820160313', 0, NULL, NULL),
(3920, 3, '304920160313', 0, NULL, NULL),
(3921, 4, '400020160313', 0, NULL, NULL),
(3922, 4, '400120160313', 0, NULL, NULL),
(3923, 4, '400220160313', 0, NULL, NULL),
(3924, 4, '400320160313', 0, NULL, NULL),
(3925, 4, '400420160313', 0, NULL, NULL),
(3926, 4, '400520160313', 0, NULL, NULL),
(3927, 4, '400620160313', 0, NULL, NULL),
(3928, 4, '400720160313', 0, NULL, NULL),
(3929, 4, '400820160313', 0, NULL, NULL),
(3930, 4, '400920160313', 0, NULL, NULL),
(3931, 4, '401020160313', 0, NULL, NULL),
(3932, 4, '401120160313', 0, NULL, NULL),
(3933, 4, '401220160313', 0, NULL, NULL),
(3934, 4, '401320160313', 0, NULL, NULL),
(3935, 4, '401420160313', 0, NULL, NULL),
(3936, 4, '401520160313', 0, NULL, NULL),
(3937, 4, '401620160313', 0, NULL, NULL),
(3938, 4, '401720160313', 0, NULL, NULL),
(3939, 4, '401820160313', 0, NULL, NULL),
(3940, 4, '401920160313', 0, NULL, NULL),
(3941, 4, '402020160313', 0, NULL, NULL),
(3942, 4, '402120160313', 0, NULL, NULL),
(3943, 4, '402220160313', 0, NULL, NULL),
(3944, 4, '402320160313', 0, NULL, NULL),
(3945, 4, '402420160313', 0, NULL, NULL),
(3946, 4, '402520160313', 0, NULL, NULL),
(3947, 4, '402620160313', 0, NULL, NULL),
(3948, 4, '402720160313', 0, NULL, NULL),
(3949, 4, '402820160313', 0, NULL, NULL),
(3950, 4, '402920160313', 0, NULL, NULL),
(3951, 4, '403020160313', 0, NULL, NULL),
(3952, 4, '403120160313', 0, NULL, NULL),
(3953, 4, '403220160313', 0, NULL, NULL),
(3954, 4, '403320160313', 0, NULL, NULL),
(3955, 4, '403420160313', 0, NULL, NULL),
(3956, 4, '403520160313', 0, NULL, NULL),
(3957, 4, '403620160313', 0, NULL, NULL),
(3958, 4, '403720160313', 0, NULL, NULL),
(3959, 4, '403820160313', 0, NULL, NULL),
(3960, 4, '403920160313', 0, NULL, NULL),
(3961, 4, '404020160313', 0, NULL, NULL),
(3962, 4, '404120160313', 0, NULL, NULL),
(3963, 4, '404220160313', 0, NULL, NULL),
(3964, 4, '404320160313', 0, NULL, NULL),
(3965, 4, '404420160313', 0, NULL, NULL),
(3966, 4, '404520160313', 0, NULL, NULL),
(3967, 4, '404620160313', 0, NULL, NULL),
(3968, 4, '404720160313', 0, NULL, NULL),
(3969, 4, '404820160313', 0, NULL, NULL),
(3970, 4, '404920160313', 0, NULL, NULL),
(3971, 5, '500020160313', 0, NULL, NULL),
(3972, 5, '500120160313', 0, NULL, NULL),
(3973, 5, '500220160313', 0, NULL, NULL),
(3974, 5, '500320160313', 0, NULL, NULL),
(3975, 5, '500420160313', 0, NULL, NULL),
(3976, 5, '500520160313', 0, NULL, NULL),
(3977, 5, '500620160313', 0, NULL, NULL),
(3978, 5, '500720160313', 0, NULL, NULL),
(3979, 5, '500820160313', 0, NULL, NULL),
(3980, 5, '500920160313', 0, NULL, NULL),
(3981, 5, '501020160313', 0, NULL, NULL),
(3982, 5, '501120160313', 0, NULL, NULL),
(3983, 5, '501220160313', 0, NULL, NULL),
(3984, 5, '501320160313', 0, NULL, NULL),
(3985, 5, '501420160313', 0, NULL, NULL),
(3986, 5, '501520160313', 0, NULL, NULL),
(3987, 5, '501620160313', 0, NULL, NULL),
(3988, 5, '501720160313', 0, NULL, NULL),
(3989, 5, '501820160313', 0, NULL, NULL),
(3990, 5, '501920160313', 0, NULL, NULL),
(3991, 5, '502020160313', 0, NULL, NULL),
(3992, 5, '502120160313', 0, NULL, NULL),
(3993, 5, '502220160313', 0, NULL, NULL),
(3994, 5, '502320160313', 0, NULL, NULL),
(3995, 5, '502420160313', 0, NULL, NULL),
(3996, 5, '502520160313', 0, NULL, NULL),
(3997, 5, '502620160313', 0, NULL, NULL),
(3998, 5, '502720160313', 0, NULL, NULL),
(3999, 5, '502820160313', 0, NULL, NULL),
(4000, 5, '502920160313', 0, NULL, NULL),
(4001, 5, '503020160313', 0, NULL, NULL),
(4002, 5, '503120160313', 0, NULL, NULL),
(4003, 5, '503220160313', 0, NULL, NULL),
(4004, 5, '503320160313', 0, NULL, NULL),
(4005, 5, '503420160313', 0, NULL, NULL),
(4006, 5, '503520160313', 0, NULL, NULL),
(4007, 5, '503620160313', 0, NULL, NULL),
(4008, 5, '503720160313', 0, NULL, NULL);
INSERT INTO `tbl_hospital_codes` (`id`, `id_hospital`, `code`, `is_active`, `disabled_dt`, `created_dt`) VALUES
(4009, 5, '503820160313', 0, NULL, NULL),
(4010, 5, '503920160313', 0, NULL, NULL),
(4011, 5, '504020160313', 0, NULL, NULL),
(4012, 5, '504120160313', 0, NULL, NULL),
(4013, 5, '504220160313', 0, NULL, NULL),
(4014, 5, '504320160313', 0, NULL, NULL),
(4015, 5, '504420160313', 0, NULL, NULL),
(4016, 5, '504520160313', 0, NULL, NULL),
(4017, 5, '504620160313', 0, NULL, NULL),
(4018, 5, '504720160313', 0, NULL, NULL),
(4019, 5, '504820160313', 0, NULL, NULL),
(4020, 5, '504920160313', 0, NULL, NULL),
(4021, 6, '600020160313', 0, NULL, NULL),
(4022, 6, '600120160313', 0, NULL, NULL),
(4023, 6, '600220160313', 0, NULL, NULL),
(4024, 6, '600320160313', 0, NULL, NULL),
(4025, 6, '600420160313', 0, NULL, NULL),
(4026, 6, '600520160313', 0, NULL, NULL),
(4027, 6, '600620160313', 0, NULL, NULL),
(4028, 6, '600720160313', 0, NULL, NULL),
(4029, 6, '600820160313', 0, NULL, NULL),
(4030, 6, '600920160313', 0, NULL, NULL),
(4031, 6, '601020160313', 0, NULL, NULL),
(4032, 6, '601120160313', 0, NULL, NULL),
(4033, 6, '601220160313', 0, NULL, NULL),
(4034, 6, '601320160313', 0, NULL, NULL),
(4035, 6, '601420160313', 0, NULL, NULL),
(4036, 6, '601520160313', 0, NULL, NULL),
(4037, 6, '601620160313', 0, NULL, NULL),
(4038, 6, '601720160313', 0, NULL, NULL),
(4039, 6, '601820160313', 0, NULL, NULL),
(4040, 6, '601920160313', 0, NULL, NULL),
(4041, 6, '602020160313', 0, NULL, NULL),
(4042, 6, '602120160313', 0, NULL, NULL),
(4043, 6, '602220160313', 0, NULL, NULL),
(4044, 6, '602320160313', 0, NULL, NULL),
(4045, 6, '602420160313', 0, NULL, NULL),
(4046, 6, '602520160313', 0, NULL, NULL),
(4047, 6, '602620160313', 0, NULL, NULL),
(4048, 6, '602720160313', 0, NULL, NULL),
(4049, 6, '602820160313', 0, NULL, NULL),
(4050, 6, '602920160313', 0, NULL, NULL),
(4051, 6, '603020160313', 0, NULL, NULL),
(4052, 6, '603120160313', 0, NULL, NULL),
(4053, 6, '603220160313', 0, NULL, NULL),
(4054, 6, '603320160313', 0, NULL, NULL),
(4055, 6, '603420160313', 0, NULL, NULL),
(4056, 6, '603520160313', 0, NULL, NULL),
(4057, 6, '603620160313', 0, NULL, NULL),
(4058, 6, '603720160313', 0, NULL, NULL),
(4059, 6, '603820160313', 0, NULL, NULL),
(4060, 6, '603920160313', 0, NULL, NULL),
(4061, 6, '604020160313', 0, NULL, NULL),
(4062, 6, '604120160313', 0, NULL, NULL),
(4063, 6, '604220160313', 0, NULL, NULL),
(4064, 6, '604320160313', 0, NULL, NULL),
(4065, 6, '604420160313', 0, NULL, NULL),
(4066, 6, '604520160313', 0, NULL, NULL),
(4067, 6, '604620160313', 0, NULL, NULL),
(4068, 6, '604720160313', 0, NULL, NULL),
(4069, 6, '604820160313', 0, NULL, NULL),
(4070, 6, '604920160313', 0, NULL, NULL),
(4071, 7, '700020160313', 0, NULL, NULL),
(4072, 7, '700120160313', 0, NULL, NULL),
(4073, 7, '700220160313', 0, NULL, NULL),
(4074, 7, '700320160313', 0, NULL, NULL),
(4075, 7, '700420160313', 0, NULL, NULL),
(4076, 7, '700520160313', 0, NULL, NULL),
(4077, 7, '700620160313', 0, NULL, NULL),
(4078, 7, '700720160313', 0, NULL, NULL),
(4079, 7, '700820160313', 0, NULL, NULL),
(4080, 7, '700920160313', 0, NULL, NULL),
(4081, 7, '701020160313', 0, NULL, NULL),
(4082, 7, '701120160313', 0, NULL, NULL),
(4083, 7, '701220160313', 0, NULL, NULL),
(4084, 7, '701320160313', 0, NULL, NULL),
(4085, 7, '701420160313', 0, NULL, NULL),
(4086, 7, '701520160313', 0, NULL, NULL),
(4087, 7, '701620160313', 0, NULL, NULL),
(4088, 7, '701720160313', 0, NULL, NULL),
(4089, 7, '701820160313', 0, NULL, NULL),
(4090, 7, '701920160313', 0, NULL, NULL),
(4091, 7, '702020160313', 0, NULL, NULL),
(4092, 7, '702120160313', 0, NULL, NULL),
(4093, 7, '702220160313', 0, NULL, NULL),
(4094, 7, '702320160313', 0, NULL, NULL),
(4095, 7, '702420160313', 0, NULL, NULL),
(4096, 7, '702520160313', 0, NULL, NULL),
(4097, 7, '702620160313', 0, NULL, NULL),
(4098, 7, '702720160313', 0, NULL, NULL),
(4099, 7, '702820160313', 0, NULL, NULL),
(4100, 7, '702920160313', 0, NULL, NULL),
(4101, 7, '703020160313', 0, NULL, NULL),
(4102, 7, '703120160313', 0, NULL, NULL),
(4103, 7, '703220160313', 0, NULL, NULL),
(4104, 7, '703320160313', 0, NULL, NULL),
(4105, 7, '703420160313', 0, NULL, NULL),
(4106, 7, '703520160313', 0, NULL, NULL),
(4107, 7, '703620160313', 0, NULL, NULL),
(4108, 7, '703720160313', 0, NULL, NULL),
(4109, 7, '703820160313', 0, NULL, NULL),
(4110, 7, '703920160313', 0, NULL, NULL),
(4111, 7, '704020160313', 0, NULL, NULL),
(4112, 7, '704120160313', 0, NULL, NULL),
(4113, 7, '704220160313', 0, NULL, NULL),
(4114, 7, '704320160313', 0, NULL, NULL),
(4115, 7, '704420160313', 0, NULL, NULL),
(4116, 7, '704520160313', 0, NULL, NULL),
(4117, 7, '704620160313', 0, NULL, NULL),
(4118, 7, '704720160313', 0, NULL, NULL),
(4119, 7, '704820160313', 0, NULL, NULL),
(4120, 7, '704920160313', 0, NULL, NULL),
(4121, 8, '800020160313', 0, NULL, NULL),
(4122, 8, '800120160313', 0, NULL, NULL),
(4123, 8, '800220160313', 0, NULL, NULL),
(4124, 8, '800320160313', 0, NULL, NULL),
(4125, 8, '800420160313', 0, NULL, NULL),
(4126, 8, '800520160313', 0, NULL, NULL),
(4127, 8, '800620160313', 0, NULL, NULL),
(4128, 8, '800720160313', 0, NULL, NULL),
(4129, 8, '800820160313', 0, NULL, NULL),
(4130, 8, '800920160313', 0, NULL, NULL),
(4131, 8, '801020160313', 0, NULL, NULL),
(4132, 8, '801120160313', 0, NULL, NULL),
(4133, 8, '801220160313', 0, NULL, NULL),
(4134, 8, '801320160313', 0, NULL, NULL),
(4135, 8, '801420160313', 0, NULL, NULL),
(4136, 8, '801520160313', 0, NULL, NULL),
(4137, 8, '801620160313', 0, NULL, NULL),
(4138, 8, '801720160313', 0, NULL, NULL),
(4139, 8, '801820160313', 0, NULL, NULL),
(4140, 8, '801920160313', 0, NULL, NULL),
(4141, 8, '802020160313', 0, NULL, NULL),
(4142, 8, '802120160313', 0, NULL, NULL),
(4143, 8, '802220160313', 0, NULL, NULL),
(4144, 8, '802320160313', 0, NULL, NULL),
(4145, 8, '802420160313', 0, NULL, NULL),
(4146, 8, '802520160313', 0, NULL, NULL),
(4147, 8, '802620160313', 0, NULL, NULL),
(4148, 8, '802720160313', 0, NULL, NULL),
(4149, 8, '802820160313', 0, NULL, NULL),
(4150, 8, '802920160313', 0, NULL, NULL),
(4151, 8, '803020160313', 0, NULL, NULL),
(4152, 8, '803120160313', 0, NULL, NULL),
(4153, 8, '803220160313', 0, NULL, NULL),
(4154, 8, '803320160313', 0, NULL, NULL),
(4155, 8, '803420160313', 0, NULL, NULL),
(4156, 8, '803520160313', 0, NULL, NULL),
(4157, 8, '803620160313', 0, NULL, NULL),
(4158, 8, '803720160313', 0, NULL, NULL),
(4159, 8, '803820160313', 0, NULL, NULL),
(4160, 8, '803920160313', 0, NULL, NULL),
(4161, 8, '804020160313', 0, NULL, NULL),
(4162, 8, '804120160313', 0, NULL, NULL),
(4163, 8, '804220160313', 0, NULL, NULL),
(4164, 8, '804320160313', 0, NULL, NULL),
(4165, 8, '804420160313', 0, NULL, NULL),
(4166, 8, '804520160313', 0, NULL, NULL),
(4167, 8, '804620160313', 0, NULL, NULL),
(4168, 8, '804720160313', 0, NULL, NULL),
(4169, 8, '804820160313', 0, NULL, NULL),
(4170, 8, '804920160313', 0, NULL, NULL),
(4171, 9, '900020160313', 0, NULL, NULL),
(4172, 9, '900120160313', 0, NULL, NULL),
(4173, 9, '900220160313', 0, NULL, NULL),
(4174, 9, '900320160313', 0, NULL, NULL),
(4175, 9, '900420160313', 0, NULL, NULL),
(4176, 9, '900520160313', 0, NULL, NULL),
(4177, 9, '900620160313', 0, NULL, NULL),
(4178, 9, '900720160313', 0, NULL, NULL),
(4179, 9, '900820160313', 0, NULL, NULL),
(4180, 9, '900920160313', 0, NULL, NULL),
(4181, 9, '901020160313', 0, NULL, NULL),
(4182, 9, '901120160313', 0, NULL, NULL),
(4183, 9, '901220160313', 0, NULL, NULL),
(4184, 9, '901320160313', 0, NULL, NULL),
(4185, 9, '901420160313', 0, NULL, NULL),
(4186, 9, '901520160313', 0, NULL, NULL),
(4187, 9, '901620160313', 0, NULL, NULL),
(4188, 9, '901720160313', 0, NULL, NULL),
(4189, 9, '901820160313', 0, NULL, NULL),
(4190, 9, '901920160313', 0, NULL, NULL),
(4191, 9, '902020160313', 0, NULL, NULL),
(4192, 9, '902120160313', 0, NULL, NULL),
(4193, 9, '902220160313', 0, NULL, NULL),
(4194, 9, '902320160313', 0, NULL, NULL),
(4195, 9, '902420160313', 0, NULL, NULL),
(4196, 9, '902520160313', 0, NULL, NULL),
(4197, 9, '902620160313', 0, NULL, NULL),
(4198, 9, '902720160313', 0, NULL, NULL),
(4199, 9, '902820160313', 0, NULL, NULL),
(4200, 9, '902920160313', 0, NULL, NULL),
(4201, 9, '903020160313', 0, NULL, NULL),
(4202, 9, '903120160313', 0, NULL, NULL),
(4203, 9, '903220160313', 0, NULL, NULL),
(4204, 9, '903320160313', 0, NULL, NULL),
(4205, 9, '903420160313', 0, NULL, NULL),
(4206, 9, '903520160313', 0, NULL, NULL),
(4207, 9, '903620160313', 0, NULL, NULL),
(4208, 9, '903720160313', 0, NULL, NULL),
(4209, 9, '903820160313', 0, NULL, NULL),
(4210, 9, '903920160313', 0, NULL, NULL),
(4211, 9, '904020160313', 0, NULL, NULL),
(4212, 9, '904120160313', 0, NULL, NULL),
(4213, 9, '904220160313', 0, NULL, NULL),
(4214, 9, '904320160313', 0, NULL, NULL),
(4215, 9, '904420160313', 0, NULL, NULL),
(4216, 9, '904520160313', 0, NULL, NULL),
(4217, 9, '904620160313', 0, NULL, NULL),
(4218, 9, '904720160313', 0, NULL, NULL),
(4219, 9, '904820160313', 0, NULL, NULL),
(4220, 9, '904920160313', 0, NULL, NULL),
(4221, 10, '1000020160313', 0, NULL, NULL),
(4222, 10, '1000120160313', 0, NULL, NULL),
(4223, 10, '1000220160313', 0, NULL, NULL),
(4224, 10, '1000320160313', 0, NULL, NULL),
(4225, 10, '1000420160313', 0, NULL, NULL),
(4226, 10, '1000520160313', 0, NULL, NULL),
(4227, 10, '1000620160313', 0, NULL, NULL),
(4228, 10, '1000720160313', 0, NULL, NULL),
(4229, 10, '1000820160313', 0, NULL, NULL),
(4230, 10, '1000920160313', 0, NULL, NULL),
(4231, 10, '1001020160313', 0, NULL, NULL),
(4232, 10, '1001120160313', 0, NULL, NULL),
(4233, 10, '1001220160313', 0, NULL, NULL),
(4234, 10, '1001320160313', 0, NULL, NULL),
(4235, 10, '1001420160313', 0, NULL, NULL),
(4236, 10, '1001520160313', 0, NULL, NULL),
(4237, 10, '1001620160313', 0, NULL, NULL),
(4238, 10, '1001720160313', 0, NULL, NULL),
(4239, 10, '1001820160313', 0, NULL, NULL),
(4240, 10, '1001920160313', 0, NULL, NULL),
(4241, 10, '1002020160313', 0, NULL, NULL),
(4242, 10, '1002120160313', 0, NULL, NULL),
(4243, 10, '1002220160313', 0, NULL, NULL),
(4244, 10, '1002320160313', 0, NULL, NULL),
(4245, 10, '1002420160313', 0, NULL, NULL),
(4246, 10, '1002520160313', 0, NULL, NULL),
(4247, 10, '1002620160313', 0, NULL, NULL),
(4248, 10, '1002720160313', 0, NULL, NULL),
(4249, 10, '1002820160313', 0, NULL, NULL),
(4250, 10, '1002920160313', 0, NULL, NULL),
(4251, 10, '1003020160313', 0, NULL, NULL),
(4252, 10, '1003120160313', 0, NULL, NULL),
(4253, 10, '1003220160313', 0, NULL, NULL),
(4254, 10, '1003320160313', 0, NULL, NULL),
(4255, 10, '1003420160313', 0, NULL, NULL),
(4256, 10, '1003520160313', 0, NULL, NULL),
(4257, 10, '1003620160313', 0, NULL, NULL),
(4258, 10, '1003720160313', 0, NULL, NULL),
(4259, 10, '1003820160313', 0, NULL, NULL),
(4260, 10, '1003920160313', 0, NULL, NULL),
(4261, 10, '1004020160313', 0, NULL, NULL),
(4262, 10, '1004120160313', 0, NULL, NULL),
(4263, 10, '1004220160313', 0, NULL, NULL),
(4264, 10, '1004320160313', 0, NULL, NULL),
(4265, 10, '1004420160313', 0, NULL, NULL),
(4266, 10, '1004520160313', 0, NULL, NULL),
(4267, 10, '1004620160313', 0, NULL, NULL),
(4268, 10, '1004720160313', 0, NULL, NULL),
(4269, 10, '1004820160313', 0, NULL, NULL),
(4270, 10, '1004920160313', 0, NULL, NULL),
(4271, 11, '1100020160313', 0, NULL, NULL),
(4272, 11, '1100120160313', 0, NULL, NULL),
(4273, 11, '1100220160313', 0, NULL, NULL),
(4274, 11, '1100320160313', 0, NULL, NULL),
(4275, 11, '1100420160313', 0, NULL, NULL),
(4276, 11, '1100520160313', 0, NULL, NULL),
(4277, 11, '1100620160313', 0, NULL, NULL),
(4278, 11, '1100720160313', 0, NULL, NULL),
(4279, 11, '1100820160313', 0, NULL, NULL),
(4280, 11, '1100920160313', 0, NULL, NULL),
(4281, 11, '1101020160313', 0, NULL, NULL),
(4282, 11, '1101120160313', 0, NULL, NULL),
(4283, 11, '1101220160313', 0, NULL, NULL),
(4284, 11, '1101320160313', 0, NULL, NULL),
(4285, 11, '1101420160313', 0, NULL, NULL),
(4286, 11, '1101520160313', 0, NULL, NULL),
(4287, NULL, 'adfdf100', 0, NULL, NULL),
(4288, NULL, 'adfdf101', 0, NULL, NULL),
(4289, NULL, 'adfdf102', 0, NULL, NULL),
(4290, NULL, 'adfdf100', 0, NULL, NULL),
(4291, NULL, 'adfdf101', 0, NULL, NULL),
(4292, NULL, 'adfdf102', 0, NULL, NULL),
(4293, NULL, 'abc20160', 0, NULL, '2016-03-15 00:00:00'),
(4294, NULL, 'abc20161', 0, NULL, '2016-03-15 00:00:00'),
(4295, NULL, 'abc20162', 0, NULL, '2016-03-15 00:00:00'),
(4296, NULL, 'abc20160', 0, NULL, '2016-03-15 00:00:00'),
(4297, NULL, 'abc20161', 0, NULL, '2016-03-15 00:00:00'),
(4298, 45, 'a120', 0, NULL, '2016-03-15 00:00:00'),
(4299, 45, 'a121', 0, NULL, '2016-03-15 00:00:00'),
(4300, 45, 'Kl12', 0, NULL, '2016-03-15 00:00:00'),
(4301, 45, 'Kl12', 0, NULL, '2016-03-15 00:00:00'),
(4302, 45, 'KL201611', 0, NULL, '2016-03-15 00:00:00'),
(4303, 45, 'KL201613', 0, NULL, '2016-03-15 00:00:00'),
(4304, 45, 'KL20169', 0, NULL, '2016-03-15 00:00:00'),
(4305, 45, 'TA12312', 0, NULL, '2016-03-15 00:00:00'),
(4306, 45, 'TA12314', 0, NULL, '2016-03-15 00:00:00'),
(4307, 45, 'DA12513', 0, NULL, '2016-03-15 00:00:00'),
(4308, 45, 'DA1253', 0, NULL, '2016-03-15 00:00:00'),
(4309, 21, 'yoyo20165', 0, NULL, '2016-03-24 00:00:00'),
(4310, 21, 'yoyo201613', 0, NULL, '2016-03-24 00:00:00'),
(4311, 21, 'yoyo201610', 0, NULL, '2016-03-24 00:00:00'),
(4312, 21, 'yoyo201612', 0, NULL, '2016-03-24 00:00:00'),
(4313, 21, 'yoyo20166', 0, NULL, '2016-03-24 00:00:00'),
(4314, 21, 'yoyo201613', 0, NULL, '2016-03-24 00:00:00'),
(4315, 21, 'yoyo20168', 0, NULL, '2016-03-24 00:00:00'),
(4316, 21, 'yoyo20164', 1, '2016-03-24 05:58:04', '2016-03-24 00:00:00'),
(4317, 21, 'yoyo20168', 0, NULL, '2016-03-24 00:00:00'),
(4318, 21, 'yoyo201614', 1, '2016-03-24 05:52:27', '2016-03-24 00:00:00'),
(4319, 21, 'a2016377021446', 0, NULL, '2016-03-24 06:26:58'),
(4320, 21, 'abc2016890483318', 0, NULL, '2016-03-24 06:27:56'),
(4321, 21, 'abc2016825804846', 0, NULL, '2016-03-24 06:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_departments`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=183 ;

--
-- Dumping data for table `tbl_hospital_departments`
--

INSERT INTO `tbl_hospital_departments` (`id`, `id_hospital`, `id_department`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 43, 1, 1, NULL, NULL),
(2, 43, 2, 1, NULL, NULL),
(3, 43, 3, 1, NULL, NULL),
(4, 43, 4, 1, NULL, NULL),
(5, 42, 4, NULL, '2016-03-04 05:34:45', NULL),
(6, 42, 3, NULL, '2016-03-04 05:34:50', NULL),
(7, 1, 1, 1, NULL, NULL),
(8, 3, 1, 1, NULL, NULL),
(9, 4, 1, 1, NULL, NULL),
(10, 5, 1, 1, NULL, NULL),
(11, 6, 1, 1, NULL, NULL),
(12, 7, 1, 1, NULL, NULL),
(13, 8, 1, 1, NULL, NULL),
(14, 9, 1, 1, NULL, NULL),
(15, 10, 1, 1, NULL, NULL),
(16, 11, 1, 1, NULL, NULL),
(17, 12, 1, 1, NULL, NULL),
(18, 13, 1, 1, NULL, NULL),
(19, 14, 1, 1, NULL, NULL),
(20, 15, 1, 1, NULL, NULL),
(21, 16, 1, 1, NULL, NULL),
(22, 17, 1, 1, NULL, NULL),
(23, 18, 1, 1, NULL, NULL),
(24, 19, 1, 1, NULL, NULL),
(25, 20, 1, 1, NULL, NULL),
(26, 21, 1, 1, NULL, NULL),
(27, 22, 1, 1, NULL, NULL),
(28, 23, 1, 1, NULL, NULL),
(29, 24, 1, 1, NULL, NULL),
(30, 25, 1, 1, NULL, NULL),
(31, 26, 1, 1, NULL, NULL),
(32, 27, 1, 1, NULL, NULL),
(33, 28, 1, 1, NULL, NULL),
(34, 29, 1, 1, NULL, NULL),
(35, 30, 1, 1, NULL, NULL),
(36, 31, 1, 1, NULL, NULL),
(37, 32, 1, 1, NULL, NULL),
(38, 33, 1, 1, NULL, NULL),
(39, 34, 1, 1, NULL, NULL),
(40, 35, 1, 1, NULL, NULL),
(41, 36, 1, 1, NULL, NULL),
(42, 37, 1, 1, NULL, NULL),
(43, 38, 1, 1, NULL, NULL),
(44, 39, 1, 1, NULL, NULL),
(45, 40, 1, 1, NULL, NULL),
(46, 41, 1, 1, NULL, NULL),
(47, 42, 1, 1, NULL, NULL),
(48, 43, 1, 1, NULL, NULL),
(49, 44, 1, 1, NULL, NULL),
(50, 45, 1, 1, NULL, NULL),
(51, 1, 2, 1, NULL, NULL),
(52, 3, 2, 1, NULL, NULL),
(53, 4, 2, 1, NULL, NULL),
(54, 5, 2, 1, NULL, NULL),
(55, 6, 2, 1, NULL, NULL),
(56, 7, 2, 1, NULL, NULL),
(57, 8, 2, 1, NULL, NULL),
(58, 9, 2, 1, NULL, NULL),
(59, 10, 2, 1, NULL, NULL),
(60, 11, 2, 1, NULL, NULL),
(61, 12, 2, 1, NULL, NULL),
(62, 13, 2, 1, NULL, NULL),
(63, 14, 2, 1, NULL, NULL),
(64, 15, 2, 1, NULL, NULL),
(65, 16, 2, 1, NULL, NULL),
(66, 17, 2, 1, NULL, NULL),
(67, 18, 2, 1, NULL, NULL),
(68, 19, 2, 1, NULL, NULL),
(69, 20, 2, 1, NULL, NULL),
(70, 21, 2, 1, NULL, NULL),
(71, 22, 2, 1, NULL, NULL),
(72, 23, 2, 1, NULL, NULL),
(73, 24, 2, 1, NULL, NULL),
(74, 25, 2, 1, NULL, NULL),
(75, 26, 2, 1, NULL, NULL),
(76, 27, 2, 1, NULL, NULL),
(77, 28, 2, 1, NULL, NULL),
(78, 29, 2, 1, NULL, NULL),
(79, 30, 2, 1, NULL, NULL),
(80, 31, 2, 1, NULL, NULL),
(81, 32, 2, 1, NULL, NULL),
(82, 33, 2, 1, NULL, NULL),
(83, 34, 2, 1, NULL, NULL),
(84, 35, 2, 1, NULL, NULL),
(85, 36, 2, 1, NULL, NULL),
(86, 37, 2, 1, NULL, NULL),
(87, 38, 2, 1, NULL, NULL),
(88, 39, 2, 1, NULL, NULL),
(89, 40, 2, 1, NULL, NULL),
(90, 41, 2, 1, NULL, NULL),
(91, 42, 2, 1, NULL, NULL),
(92, 43, 2, 1, NULL, NULL),
(93, 44, 2, 1, NULL, NULL),
(94, 45, 2, 1, NULL, NULL),
(95, 1, 3, 1, NULL, NULL),
(96, 3, 3, 1, NULL, NULL),
(97, 4, 3, 1, NULL, NULL),
(98, 5, 3, 1, NULL, NULL),
(99, 6, 3, 1, NULL, NULL),
(100, 7, 3, 1, NULL, NULL),
(101, 8, 3, 1, NULL, NULL),
(102, 9, 3, 1, NULL, NULL),
(103, 10, 3, 1, NULL, NULL),
(104, 11, 3, 1, NULL, NULL),
(105, 12, 3, 1, NULL, NULL),
(106, 13, 3, 1, NULL, NULL),
(107, 14, 3, 1, NULL, NULL),
(108, 15, 3, 1, NULL, NULL),
(109, 16, 3, 1, NULL, NULL),
(110, 17, 3, 1, NULL, NULL),
(111, 18, 3, 1, NULL, NULL),
(112, 19, 3, 1, NULL, NULL),
(113, 20, 3, 1, NULL, NULL),
(114, 21, 3, 1, NULL, NULL),
(115, 22, 3, 1, NULL, NULL),
(116, 23, 3, 1, NULL, NULL),
(117, 24, 3, 1, NULL, NULL),
(118, 25, 3, 1, NULL, NULL),
(119, 26, 3, 1, NULL, NULL),
(120, 27, 3, 1, NULL, NULL),
(121, 28, 3, 1, NULL, NULL),
(122, 29, 3, 1, NULL, NULL),
(123, 30, 3, 1, NULL, NULL),
(124, 31, 3, 1, NULL, NULL),
(125, 32, 3, 1, NULL, NULL),
(126, 33, 3, 1, NULL, NULL),
(127, 34, 3, 1, NULL, NULL),
(128, 35, 3, 1, NULL, NULL),
(129, 36, 3, 1, NULL, NULL),
(130, 37, 3, 1, NULL, NULL),
(131, 38, 3, 1, NULL, NULL),
(132, 39, 3, 1, NULL, NULL),
(133, 40, 3, 1, NULL, NULL),
(134, 41, 3, 1, NULL, NULL),
(135, 42, 3, 1, NULL, NULL),
(136, 43, 3, 1, NULL, NULL),
(137, 44, 3, 1, NULL, NULL),
(138, 45, 3, 1, NULL, NULL),
(139, 1, 4, 1, NULL, NULL),
(140, 3, 4, 1, NULL, NULL),
(141, 4, 4, 1, NULL, NULL),
(142, 5, 4, 1, NULL, NULL),
(143, 6, 4, 1, NULL, NULL),
(144, 7, 4, 1, NULL, NULL),
(145, 8, 4, 1, NULL, NULL),
(146, 9, 4, 1, NULL, NULL),
(147, 10, 4, 1, NULL, NULL),
(148, 11, 4, 1, NULL, NULL),
(149, 12, 4, 1, NULL, NULL),
(150, 13, 4, 1, NULL, NULL),
(151, 14, 4, 1, NULL, NULL),
(152, 15, 4, 1, NULL, NULL),
(153, 16, 4, 1, NULL, NULL),
(154, 17, 4, 1, NULL, NULL),
(155, 18, 4, 1, NULL, NULL),
(156, 19, 4, 1, NULL, NULL),
(157, 20, 4, 1, NULL, NULL),
(158, 21, 4, 1, NULL, NULL),
(159, 22, 4, 1, NULL, NULL),
(160, 23, 4, 1, NULL, NULL),
(161, 24, 4, 1, NULL, NULL),
(162, 25, 4, 1, NULL, NULL),
(163, 26, 4, 1, NULL, NULL),
(164, 27, 4, 1, NULL, NULL),
(165, 28, 4, 1, NULL, NULL),
(166, 29, 4, 1, NULL, NULL),
(167, 30, 4, 1, NULL, NULL),
(168, 31, 4, 1, NULL, NULL),
(169, 32, 4, 1, NULL, NULL),
(170, 33, 4, 1, NULL, NULL),
(171, 34, 4, 1, NULL, NULL),
(172, 35, 4, 1, NULL, NULL),
(173, 36, 4, 1, NULL, NULL),
(174, 37, 4, 1, NULL, NULL),
(175, 38, 4, 1, NULL, NULL),
(176, 39, 4, 1, NULL, NULL),
(177, 40, 4, 1, NULL, NULL),
(178, 41, 4, 1, NULL, NULL),
(179, 42, 4, 1, NULL, NULL),
(180, 43, 4, 1, NULL, NULL),
(181, 44, 4, 1, NULL, NULL),
(182, 45, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_doctors`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_doctors` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(12) NOT NULL,
  `id_doctor` int(12) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_hospital_doctors`
--

INSERT INTO `tbl_hospital_doctors` (`id`, `id_hospital`, `id_doctor`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 3, 2, 0, '2015-12-23 16:18:11', '0000-00-00 00:00:00'),
(2, 3, 8, 0, '2016-01-15 10:00:10', '0000-00-00 00:00:00'),
(4, 10, 7, 0, '2015-12-27 10:23:33', '0000-00-00 00:00:00'),
(5, 10, 6, 0, '2015-12-27 10:23:48', '0000-00-00 00:00:00'),
(6, 10, 4, 0, '2015-12-27 10:24:08', '0000-00-00 00:00:00'),
(7, 10, 1, 0, '2016-01-03 07:21:50', '0000-00-00 00:00:00'),
(8, 12, 8, 0, '2016-01-15 09:59:53', '0000-00-00 00:00:00'),
(9, 45, 7, 0, '2016-01-10 03:23:01', '0000-00-00 00:00:00'),
(10, 45, 4, 0, '2016-01-10 06:32:12', '0000-00-00 00:00:00'),
(11, 37, 4, 0, '2016-01-10 06:35:56', '0000-00-00 00:00:00'),
(12, 46, 8, 0, '2016-01-14 10:29:25', '0000-00-00 00:00:00'),
(13, 46, 4, 0, '2016-01-14 10:30:27', '0000-00-00 00:00:00'),
(14, 47, 9, 0, '2016-01-19 03:44:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_galleries`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) NOT NULL,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `tbl_hospital_galleries`
--

INSERT INTO `tbl_hospital_galleries` (`id`, `id_hospital`, `en_name`, `kh_name`, `image`, `is_published`, `created_dt`, `modified_dt`) VALUES
(10, 3, 'kalemeth', 'កាលម៉ែត', 'uploads/hospital_galleries/hospital_gallery_568241e2b508f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:18:42'),
(12, 46, 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_569780e7518e7.jpg', 1, '0000-00-00 00:00:00', '2016-01-14 11:05:41'),
(13, 45, 'Asernal ', 'Asernal មន្ទីពេទ្យ ', 'uploads/hospital_galleries/hospital_gallery_568201a79e989.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:44:39'),
(14, 44, 'Africa', ' មន្ទីពេទ្យ  Africa', 'uploads/hospital_galleries/hospital_gallery_5682026ec39a0.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:47:58'),
(15, 43, 'Gigago', 'មន្ទីពេទ្យ gigago', 'uploads/hospital_galleries/hospital_gallery_568202fee1249.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:50:22'),
(16, 42, 'Vimean', 'មន្ទីពេទ្យ vimean', 'uploads/hospital_galleries/hospital_gallery_568203ae09a78.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:53:18'),
(17, 41, 'kavany', 'មន្ទីពេទ្យ kavany', 'uploads/hospital_galleries/hospital_gallery_56820418d22c6.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:55:04'),
(18, 40, 'cholalongkorn', 'មន្ទីពេទ្យ cholalongkorn', 'uploads/hospital_galleries/hospital_gallery_568204d829425.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 04:58:16'),
(19, 39, 'chivith', 'មន្ទីពេទ្យ chivith', 'uploads/hospital_galleries/hospital_gallery_5682057b1a1aa.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:00:59'),
(20, 38, 'kanha', 'មន្ទីពេទ្យ kanha', 'uploads/hospital_galleries/hospital_gallery_56820607c6e7a.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:03:19'),
(21, 37, 'Dararoth', 'មន្ទីពេទ្យ Dararoth', 'uploads/hospital_galleries/hospital_gallery_5691f9f5c452f.jpg', 1, '0000-00-00 00:00:00', '2016-01-10 06:28:05'),
(22, 36, 'sovantha', 'មន្ទីពេទ្យ sovantha', 'uploads/hospital_galleries/hospital_gallery_5682072751876.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:08:07'),
(23, 35, 'vathanaksok', 'មន្ទីពេទ្យ A', 'uploads/hospital_galleries/hospital_gallery_56820861e1fea.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:13:21'),
(24, 34, 'sokkema', 'មន្ទីពេទ្យ sokkema', 'uploads/hospital_galleries/hospital_gallery_5682092e3cfd1.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:16:46'),
(25, 33, 'momo', 'មន្ទីពេទ្យ momo', 'uploads/hospital_galleries/hospital_gallery_5682099b39b9f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:18:35'),
(26, 32, 'mili', 'មន្ទីពេទ្យ mili', 'uploads/hospital_galleries/hospital_gallery_56820a1683f80.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:20:38'),
(27, 31, 'modo', 'មន្ទីពេទ្យ modo', 'uploads/hospital_galleries/hospital_gallery_56820a8d864a9.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:22:37'),
(28, 30, 'neymar', 'មន្ទីពេទ្យ neymar', 'uploads/hospital_galleries/hospital_gallery_56820b47d858e.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:25:43'),
(29, 29, 'baza', 'មន្ទីពេទ្យ baza', 'uploads/hospital_galleries/hospital_gallery_56820b7fc0104.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:26:39'),
(30, 28, 'domo', 'មន្ទីពេទ្យ domo', 'uploads/hospital_galleries/hospital_gallery_56820c2e71fb8.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:29:34'),
(31, 27, 'nana', 'មន្ទីពេទ្យ nana', 'uploads/hospital_galleries/hospital_gallery_56820c504e25c.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:30:08'),
(32, 26, 'virak', 'មន្ទីពេទ្យ virak', 'uploads/hospital_galleries/hospital_gallery_56820d2b8991d.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:33:47'),
(33, 25, 'vavaha', 'មន្ទីពេទ្យ vavaha', 'uploads/hospital_galleries/hospital_gallery_56820d6b16f7a.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:34:51'),
(34, 23, 'rara', 'មន្ទីពេទ្យ rara', 'uploads/hospital_galleries/hospital_gallery_56820e200a2ac.jpg', 1, '0000-00-00 00:00:00', '2016-01-22 14:29:40'),
(35, 24, 'dadad', 'មន្ទីពេទ្យ dadad', 'uploads/hospital_galleries/hospital_gallery_56820e3610877.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:38:14'),
(36, 22, 'tata', 'មន្ទីពេទ្យ tata', 'uploads/hospital_galleries/hospital_gallery_56820f3eb9109.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:42:38'),
(37, 21, 'yoyo', 'មន្ទីពេទ្យ yoyo', 'uploads/hospital_galleries/hospital_gallery_56820f7cf18ac.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 05:43:40'),
(38, 20, 'pippo', 'មន្ទីពេទ្យ pippo', 'uploads/hospital_galleries/hospital_gallery_56822d1502732.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 07:49:57'),
(39, 19, 'lala', 'មន្ទីពេទ្យ lala', 'uploads/hospital_galleries/hospital_gallery_56822dc74d40f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 07:52:55'),
(40, 18, 'kakan', 'មន្ទីពេទ្យ kakan', 'uploads/hospital_galleries/hospital_gallery_56822dfdf3a54.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 07:53:49'),
(41, 17, 'Digo', 'មន្ទីពេទ្យDigo', 'uploads/hospital_galleries/hospital_gallery_56822ea6a31fa.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 07:56:38'),
(42, 16, 'Digo', 'មន្ទីពេទ្យDigo', 'uploads/hospital_galleries/hospital_gallery_56822ef704c7f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 07:57:59'),
(43, 15, 'seyha', 'មន្ទីពេទ្យseyha', 'uploads/hospital_galleries/hospital_gallery_56822fc7981bf.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:01:27'),
(44, 14, 'mama', 'មន្ទីពេទ្យMama', 'uploads/hospital_galleries/hospital_gallery_5682305d74656.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:03:57'),
(45, 14, 'mama', 'មន្ទីពេទ្យMama', 'uploads/hospital_galleries/hospital_gallery_5682305f1ecfd.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:03:59'),
(46, 13, 'baka', 'មន្ទីពេទ្យbaka', 'uploads/hospital_galleries/hospital_gallery_568230dea397f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:06:06'),
(47, 12, 'Vathanak', 'មន្ទីពេទ្យVathanak', 'uploads/hospital_galleries/hospital_gallery_568231a8dbf37.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:09:28'),
(48, 11, 'Thailand', 'មន្ទីពេទ្យThaland', 'uploads/hospital_galleries/hospital_gallery_56823a94a7d2a.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:47:32'),
(50, 9, 'china', 'មន្ទីពេទ្យchina', 'uploads/hospital_galleries/hospital_gallery_56823cec1ba71.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 08:57:32'),
(51, 8, 'Veathnam', 'វៀតណាម', 'uploads/hospital_galleries/hospital_gallery_56823dfad269a.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:02:02'),
(52, 7, 'japen', 'ជប៉ុន', 'uploads/hospital_galleries/hospital_gallery_56823e65b8d8c.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:03:49'),
(53, 6, ' khemara', 'រូស៊ី khemara', 'uploads/hospital_galleries/hospital_gallery_56823f22dbff5.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:06:58'),
(54, 5, 'Rusia', 'រូស៊ី', 'uploads/hospital_galleries/hospital_gallery_56823fa5afc67.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:09:09'),
(55, 4, 'Ong Doung', 'អង្គដួង', 'uploads/hospital_galleries/hospital_gallery_56824095e93b1.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:13:09'),
(56, 1, 'cha rey', 'ចារី', 'uploads/hospital_galleries/hospital_gallery_568242906954f.jpg', 1, '0000-00-00 00:00:00', '2015-12-29 09:21:36'),
(58, 10, 'a', 'v', 'uploads/hospital_galleries/hospital_gallery_568e3d02a3297.jpg', 1, '0000-00-00 00:00:00', '2016-01-07 11:25:06'),
(59, 46, 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_56978129c4b15.jpg', 1, '0000-00-00 00:00:00', '2016-01-14 11:06:17'),
(60, 46, 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_56978146e8d85.jpg', 1, '0000-00-00 00:00:00', '2016-01-14 11:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_ratings`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is_published refers to the visible of comment',
  `id_hospital` int(11) DEFAULT NULL,
  `id_rater` int(11) NOT NULL DEFAULT '0',
  `code` varchar(30) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `arrived_date` date DEFAULT NULL,
  `review` text,
  `created_dt` datetime DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT '0',
  `is_published` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=558 ;

--
-- Dumping data for table `tbl_hospital_ratings`
--

INSERT INTO `tbl_hospital_ratings` (`id`, `id_hospital`, `id_rater`, `code`, `id_department`, `arrived_date`, `review`, `created_dt`, `is_recommended`, `is_published`) VALUES
(16, 43, 0, 'A', 1, '2016-02-01', 'A', '2016-02-28 03:36:09', 0, 0),
(17, 43, 0, 'B', 1, '2016-02-01', 'B', '2016-02-28 03:36:21', 1, 0),
(18, 43, 0, 'C', 3, '2016-02-23', 'D', '2016-02-28 03:36:42', 1, 0),
(19, 43, 0, 'D', 2, '2016-02-06', 'F', '2016-02-28 03:37:09', 0, 0),
(20, 43, 0, 'E', 1, '2016-02-18', 'D', '2016-02-28 03:37:24', 0, 0),
(21, 43, 0, 'F', 4, '2016-02-18', 'D', '2016-02-28 03:37:36', 0, 0),
(22, 43, 0, 'G', 3, '2016-02-16', 'COMMENT', '2016-02-28 03:37:59', 0, 0),
(23, 43, 0, 'H', 3, '2016-02-16', 'COMMENT', '2016-02-28 03:38:11', 1, 0),
(24, 43, 0, 'I', 3, '2016-02-16', 'COMMENT', '2016-02-28 03:38:25', 0, 0),
(201, 1, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(202, 1, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(203, 1, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(204, 1, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(205, 3, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(206, 3, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(207, 3, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(208, 3, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(209, 4, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(210, 4, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(211, 4, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(212, 4, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(213, 5, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(214, 5, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(215, 5, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(216, 5, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(217, 6, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(218, 6, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(219, 6, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(220, 6, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(221, 7, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(222, 7, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(223, 7, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(224, 7, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(225, 8, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(226, 8, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(227, 8, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(228, 8, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(229, 9, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(230, 9, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(231, 9, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(232, 9, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(233, 10, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(234, 10, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(235, 10, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(236, 10, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(237, 11, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(238, 11, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(239, 11, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(240, 11, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(241, 12, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(242, 12, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(243, 12, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(244, 12, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(245, 13, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(246, 13, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(247, 13, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(248, 13, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(249, 14, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(250, 14, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(251, 14, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(252, 14, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(253, 15, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(254, 15, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(255, 15, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(256, 15, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(257, 16, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(258, 16, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(259, 16, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(260, 16, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(261, 17, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(262, 17, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(263, 17, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(264, 17, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(265, 18, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(266, 18, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(267, 18, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(268, 18, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(269, 19, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(270, 19, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(271, 19, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(272, 19, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(273, 20, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(274, 20, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(275, 20, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(276, 20, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(277, 21, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(278, 21, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(279, 21, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(280, 21, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(281, 22, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(282, 22, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(283, 22, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(284, 22, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(285, 23, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(286, 23, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(287, 23, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(288, 23, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(289, 24, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(290, 24, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(291, 24, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(292, 24, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(293, 25, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(294, 25, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(295, 25, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(296, 25, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(297, 26, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(298, 26, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(299, 26, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(300, 26, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(301, 27, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(302, 27, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(303, 27, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(304, 27, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(305, 28, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(306, 28, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(307, 28, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(308, 28, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(309, 29, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(310, 29, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(311, 29, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(312, 29, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(313, 30, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(314, 30, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(315, 30, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(316, 30, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(317, 31, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(318, 31, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(319, 31, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(320, 31, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(321, 32, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(322, 32, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(323, 32, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(324, 32, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(325, 33, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(326, 33, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(327, 33, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(328, 33, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(329, 34, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(330, 34, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(331, 34, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(332, 34, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(333, 35, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(334, 35, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(335, 35, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(336, 35, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(337, 36, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(338, 36, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(339, 36, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(340, 36, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(341, 37, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(342, 37, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(343, 37, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(344, 37, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(345, 38, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(346, 38, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(347, 38, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(348, 38, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(349, 39, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(350, 39, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(351, 39, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(352, 39, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(353, 40, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(354, 40, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(355, 40, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(356, 40, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(357, 41, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(358, 41, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(359, 41, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(360, 41, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(361, 42, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(362, 42, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(363, 42, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(364, 42, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(365, 43, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(366, 43, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(367, 43, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(368, 43, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(369, 44, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(370, 44, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(371, 44, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(372, 44, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(373, 45, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(374, 45, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(375, 45, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(376, 45, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(377, 1, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(378, 1, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(379, 1, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(380, 1, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(381, 3, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(382, 3, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(383, 3, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(384, 3, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(385, 4, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(386, 4, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(387, 4, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(388, 4, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(389, 5, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(390, 5, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(391, 5, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(392, 5, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(393, 6, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(394, 6, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(395, 6, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(396, 6, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(397, 7, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(398, 7, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(399, 7, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(400, 7, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(401, 8, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(402, 8, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(403, 8, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(404, 8, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(405, 9, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(406, 9, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(407, 9, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(408, 9, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(409, 10, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(410, 10, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(411, 10, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(412, 10, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(413, 11, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(414, 11, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(415, 11, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(416, 11, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(417, 12, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(418, 12, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(419, 12, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(420, 12, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(421, 13, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(422, 13, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(423, 13, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(424, 13, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(425, 14, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(426, 14, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(427, 14, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(428, 14, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(429, 15, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(430, 15, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(431, 15, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(432, 15, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(433, 16, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(434, 16, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(435, 16, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(436, 16, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(437, 17, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(438, 17, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(439, 17, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(440, 17, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(441, 18, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(442, 18, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(443, 18, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(444, 18, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(445, 19, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(446, 19, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(447, 19, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(448, 19, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(449, 20, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(450, 20, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(451, 20, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(452, 20, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(453, 21, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(454, 21, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(455, 21, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(456, 21, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(457, 22, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(458, 22, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(459, 22, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(460, 22, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(461, 23, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(462, 23, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(463, 23, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(464, 23, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(465, 24, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(466, 24, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(467, 24, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(468, 24, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(469, 25, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(470, 25, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(471, 25, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(472, 25, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(473, 26, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(474, 26, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(475, 26, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(476, 26, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(477, 27, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(478, 27, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(479, 27, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(480, 27, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(481, 28, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(482, 28, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(483, 28, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(484, 28, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(485, 29, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(486, 29, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(487, 29, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(488, 29, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(489, 30, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(490, 30, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(491, 30, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(492, 30, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(493, 31, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(494, 31, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(495, 31, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(496, 31, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(497, 32, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(498, 32, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(499, 32, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(500, 32, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(501, 33, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(502, 33, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(503, 33, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(504, 33, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(505, 34, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(506, 34, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(507, 34, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(508, 34, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(509, 35, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(510, 35, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(511, 35, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(512, 35, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(513, 36, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(514, 36, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(515, 36, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(516, 36, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(517, 37, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(518, 37, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(519, 37, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(520, 37, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(521, 38, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(522, 38, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(523, 38, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(524, 38, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(525, 39, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(526, 39, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(527, 39, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(528, 39, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(529, 40, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(530, 40, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(531, 40, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(532, 40, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(533, 41, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(534, 41, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(535, 41, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(536, 41, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(537, 42, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(538, 42, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(539, 42, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(540, 42, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(541, 43, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(542, 43, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(543, 43, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(544, 43, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(545, 44, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(546, 44, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(547, 44, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(548, 44, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(549, 45, 0, '120160313', 1, '2016-03-13', '', NULL, 1, 1),
(550, 45, 0, '220160313', 1, '2016-03-13', '', NULL, 1, 1),
(551, 45, 0, '320160313', 1, '2016-03-13', '', NULL, 1, 1),
(552, 45, 0, '420160313', 1, '2016-03-13', '', NULL, 1, 1),
(555, 21, 3, '2104920160313', 1, '2016-03-16', 'abc', '2016-03-24 05:51:11', 1, 0),
(556, 12, 3, '', 1, '2016-03-25', 'sdf', '2016-03-25 03:08:41', 0, 0),
(557, 6, 3, '', 1, '2016-03-17', 'adf', '2016-03-25 03:09:35', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_rating_scores`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_rating_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital_rating` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1509 ;

--
-- Dumping data for table `tbl_hospital_rating_scores`
--

INSERT INTO `tbl_hospital_rating_scores` (`id`, `id_hospital_rating`, `id_question`, `score`) VALUES
(45, 16, 1, 2),
(46, 16, 2, 4),
(47, 16, 3, 4),
(48, 16, 4, 2),
(49, 17, 1, 4),
(50, 17, 2, 5),
(51, 17, 3, 4),
(52, 17, 4, 2),
(53, 18, 1, 5),
(54, 18, 2, 5),
(55, 18, 3, 5),
(56, 18, 4, 5),
(57, 19, 1, 5),
(58, 19, 2, 3),
(59, 19, 3, 2),
(60, 19, 4, 2),
(61, 20, 1, 5),
(62, 20, 2, 3),
(63, 20, 3, 2),
(64, 20, 4, 3),
(65, 21, 1, 5),
(66, 21, 2, 4),
(67, 21, 3, 5),
(68, 21, 4, 5),
(69, 22, 1, 2),
(70, 22, 2, 4),
(71, 22, 3, 5),
(72, 22, 4, 3),
(73, 23, 1, 4),
(74, 23, 2, 4),
(75, 23, 3, 5),
(76, 23, 4, 4),
(77, 24, 1, 2),
(78, 24, 2, 4),
(79, 24, 3, 5),
(80, 24, 4, 4),
(81, 201, 1, 1),
(82, 201, 2, 2),
(83, 201, 3, 3),
(84, 201, 4, 4),
(85, 202, 1, 1),
(86, 202, 2, 2),
(87, 202, 3, 3),
(88, 202, 4, 4),
(89, 203, 1, 1),
(90, 203, 2, 2),
(91, 203, 3, 3),
(92, 203, 4, 4),
(93, 204, 1, 1),
(94, 204, 2, 2),
(95, 204, 3, 3),
(96, 204, 4, 4),
(97, 205, 1, 1),
(98, 205, 2, 2),
(99, 205, 3, 3),
(100, 205, 4, 4),
(101, 206, 1, 1),
(102, 206, 2, 2),
(103, 206, 3, 3),
(104, 206, 4, 4),
(105, 207, 1, 1),
(106, 207, 2, 2),
(107, 207, 3, 3),
(108, 207, 4, 4),
(109, 208, 1, 1),
(110, 208, 2, 2),
(111, 208, 3, 3),
(112, 208, 4, 4),
(113, 209, 1, 1),
(114, 209, 2, 2),
(115, 209, 3, 3),
(116, 209, 4, 4),
(117, 210, 1, 1),
(118, 210, 2, 2),
(119, 210, 3, 3),
(120, 210, 4, 4),
(121, 211, 1, 1),
(122, 211, 2, 2),
(123, 211, 3, 3),
(124, 211, 4, 4),
(125, 212, 1, 1),
(126, 212, 2, 2),
(127, 212, 3, 3),
(128, 212, 4, 4),
(129, 213, 1, 1),
(130, 213, 2, 2),
(131, 213, 3, 3),
(132, 213, 4, 4),
(133, 214, 1, 1),
(134, 214, 2, 2),
(135, 214, 3, 3),
(136, 214, 4, 4),
(137, 215, 1, 1),
(138, 215, 2, 2),
(139, 215, 3, 3),
(140, 215, 4, 4),
(141, 216, 1, 1),
(142, 216, 2, 2),
(143, 216, 3, 3),
(144, 216, 4, 4),
(145, 217, 1, 1),
(146, 217, 2, 2),
(147, 217, 3, 3),
(148, 217, 4, 4),
(149, 218, 1, 1),
(150, 218, 2, 2),
(151, 218, 3, 3),
(152, 218, 4, 4),
(153, 219, 1, 1),
(154, 219, 2, 2),
(155, 219, 3, 3),
(156, 219, 4, 4),
(157, 220, 1, 1),
(158, 220, 2, 2),
(159, 220, 3, 3),
(160, 220, 4, 4),
(161, 221, 1, 1),
(162, 221, 2, 2),
(163, 221, 3, 3),
(164, 221, 4, 4),
(165, 222, 1, 1),
(166, 222, 2, 2),
(167, 222, 3, 3),
(168, 222, 4, 4),
(169, 223, 1, 1),
(170, 223, 2, 2),
(171, 223, 3, 3),
(172, 223, 4, 4),
(173, 224, 1, 1),
(174, 224, 2, 2),
(175, 224, 3, 3),
(176, 224, 4, 4),
(177, 225, 1, 1),
(178, 225, 2, 2),
(179, 225, 3, 3),
(180, 225, 4, 4),
(181, 226, 1, 1),
(182, 226, 2, 2),
(183, 226, 3, 3),
(184, 226, 4, 4),
(185, 227, 1, 1),
(186, 227, 2, 2),
(187, 227, 3, 3),
(188, 227, 4, 4),
(189, 228, 1, 1),
(190, 228, 2, 2),
(191, 228, 3, 3),
(192, 228, 4, 4),
(193, 229, 1, 1),
(194, 229, 2, 2),
(195, 229, 3, 3),
(196, 229, 4, 4),
(197, 230, 1, 1),
(198, 230, 2, 2),
(199, 230, 3, 3),
(200, 230, 4, 4),
(201, 231, 1, 1),
(202, 231, 2, 2),
(203, 231, 3, 3),
(204, 231, 4, 4),
(205, 232, 1, 1),
(206, 232, 2, 2),
(207, 232, 3, 3),
(208, 232, 4, 4),
(209, 233, 1, 1),
(210, 233, 2, 2),
(211, 233, 3, 3),
(212, 233, 4, 4),
(213, 234, 1, 1),
(214, 234, 2, 2),
(215, 234, 3, 3),
(216, 234, 4, 4),
(217, 235, 1, 1),
(218, 235, 2, 2),
(219, 235, 3, 3),
(220, 235, 4, 4),
(221, 236, 1, 1),
(222, 236, 2, 2),
(223, 236, 3, 3),
(224, 236, 4, 4),
(225, 237, 1, 1),
(226, 237, 2, 2),
(227, 237, 3, 3),
(228, 237, 4, 4),
(229, 238, 1, 1),
(230, 238, 2, 2),
(231, 238, 3, 3),
(232, 238, 4, 4),
(233, 239, 1, 1),
(234, 239, 2, 2),
(235, 239, 3, 3),
(236, 239, 4, 4),
(237, 240, 1, 1),
(238, 240, 2, 2),
(239, 240, 3, 3),
(240, 240, 4, 4),
(241, 241, 1, 1),
(242, 241, 2, 2),
(243, 241, 3, 3),
(244, 241, 4, 4),
(245, 242, 1, 1),
(246, 242, 2, 2),
(247, 242, 3, 3),
(248, 242, 4, 4),
(249, 243, 1, 1),
(250, 243, 2, 2),
(251, 243, 3, 3),
(252, 243, 4, 4),
(253, 244, 1, 1),
(254, 244, 2, 2),
(255, 244, 3, 3),
(256, 244, 4, 4),
(257, 245, 1, 1),
(258, 245, 2, 2),
(259, 245, 3, 3),
(260, 245, 4, 4),
(261, 246, 1, 1),
(262, 246, 2, 2),
(263, 246, 3, 3),
(264, 246, 4, 4),
(265, 247, 1, 1),
(266, 247, 2, 2),
(267, 247, 3, 3),
(268, 247, 4, 4),
(269, 248, 1, 1),
(270, 248, 2, 2),
(271, 248, 3, 3),
(272, 248, 4, 4),
(273, 249, 1, 1),
(274, 249, 2, 2),
(275, 249, 3, 3),
(276, 249, 4, 4),
(277, 250, 1, 1),
(278, 250, 2, 2),
(279, 250, 3, 3),
(280, 250, 4, 4),
(281, 251, 1, 1),
(282, 251, 2, 2),
(283, 251, 3, 3),
(284, 251, 4, 4),
(285, 252, 1, 1),
(286, 252, 2, 2),
(287, 252, 3, 3),
(288, 252, 4, 4),
(289, 253, 1, 1),
(290, 253, 2, 2),
(291, 253, 3, 3),
(292, 253, 4, 4),
(293, 254, 1, 1),
(294, 254, 2, 2),
(295, 254, 3, 3),
(296, 254, 4, 4),
(297, 255, 1, 1),
(298, 255, 2, 2),
(299, 255, 3, 3),
(300, 255, 4, 4),
(301, 256, 1, 1),
(302, 256, 2, 2),
(303, 256, 3, 3),
(304, 256, 4, 4),
(305, 257, 1, 1),
(306, 257, 2, 2),
(307, 257, 3, 3),
(308, 257, 4, 4),
(309, 258, 1, 1),
(310, 258, 2, 2),
(311, 258, 3, 3),
(312, 258, 4, 4),
(313, 259, 1, 1),
(314, 259, 2, 2),
(315, 259, 3, 3),
(316, 259, 4, 4),
(317, 260, 1, 1),
(318, 260, 2, 2),
(319, 260, 3, 3),
(320, 260, 4, 4),
(321, 261, 1, 1),
(322, 261, 2, 2),
(323, 261, 3, 3),
(324, 261, 4, 4),
(325, 262, 1, 1),
(326, 262, 2, 2),
(327, 262, 3, 3),
(328, 262, 4, 4),
(329, 263, 1, 1),
(330, 263, 2, 2),
(331, 263, 3, 3),
(332, 263, 4, 4),
(333, 264, 1, 1),
(334, 264, 2, 2),
(335, 264, 3, 3),
(336, 264, 4, 4),
(337, 265, 1, 1),
(338, 265, 2, 2),
(339, 265, 3, 3),
(340, 265, 4, 4),
(341, 266, 1, 1),
(342, 266, 2, 2),
(343, 266, 3, 3),
(344, 266, 4, 4),
(345, 267, 1, 1),
(346, 267, 2, 2),
(347, 267, 3, 3),
(348, 267, 4, 4),
(349, 268, 1, 1),
(350, 268, 2, 2),
(351, 268, 3, 3),
(352, 268, 4, 4),
(353, 269, 1, 1),
(354, 269, 2, 2),
(355, 269, 3, 3),
(356, 269, 4, 4),
(357, 270, 1, 1),
(358, 270, 2, 2),
(359, 270, 3, 3),
(360, 270, 4, 4),
(361, 271, 1, 1),
(362, 271, 2, 2),
(363, 271, 3, 3),
(364, 271, 4, 4),
(365, 272, 1, 1),
(366, 272, 2, 2),
(367, 272, 3, 3),
(368, 272, 4, 4),
(369, 273, 1, 1),
(370, 273, 2, 2),
(371, 273, 3, 3),
(372, 273, 4, 4),
(373, 274, 1, 1),
(374, 274, 2, 2),
(375, 274, 3, 3),
(376, 274, 4, 4),
(377, 275, 1, 1),
(378, 275, 2, 2),
(379, 275, 3, 3),
(380, 275, 4, 4),
(381, 276, 1, 1),
(382, 276, 2, 2),
(383, 276, 3, 3),
(384, 276, 4, 4),
(385, 277, 1, 1),
(386, 277, 2, 2),
(387, 277, 3, 3),
(388, 277, 4, 4),
(389, 278, 1, 1),
(390, 278, 2, 2),
(391, 278, 3, 3),
(392, 278, 4, 4),
(393, 279, 1, 1),
(394, 279, 2, 2),
(395, 279, 3, 3),
(396, 279, 4, 4),
(397, 280, 1, 1),
(398, 280, 2, 2),
(399, 280, 3, 3),
(400, 280, 4, 4),
(401, 281, 1, 1),
(402, 281, 2, 2),
(403, 281, 3, 3),
(404, 281, 4, 4),
(405, 282, 1, 1),
(406, 282, 2, 2),
(407, 282, 3, 3),
(408, 282, 4, 4),
(409, 283, 1, 1),
(410, 283, 2, 2),
(411, 283, 3, 3),
(412, 283, 4, 4),
(413, 284, 1, 1),
(414, 284, 2, 2),
(415, 284, 3, 3),
(416, 284, 4, 4),
(417, 285, 1, 1),
(418, 285, 2, 2),
(419, 285, 3, 3),
(420, 285, 4, 4),
(421, 286, 1, 1),
(422, 286, 2, 2),
(423, 286, 3, 3),
(424, 286, 4, 4),
(425, 287, 1, 1),
(426, 287, 2, 2),
(427, 287, 3, 3),
(428, 287, 4, 4),
(429, 288, 1, 1),
(430, 288, 2, 2),
(431, 288, 3, 3),
(432, 288, 4, 4),
(433, 289, 1, 1),
(434, 289, 2, 2),
(435, 289, 3, 3),
(436, 289, 4, 4),
(437, 290, 1, 1),
(438, 290, 2, 2),
(439, 290, 3, 3),
(440, 290, 4, 4),
(441, 291, 1, 1),
(442, 291, 2, 2),
(443, 291, 3, 3),
(444, 291, 4, 4),
(445, 292, 1, 1),
(446, 292, 2, 2),
(447, 292, 3, 3),
(448, 292, 4, 4),
(449, 293, 1, 1),
(450, 293, 2, 2),
(451, 293, 3, 3),
(452, 293, 4, 4),
(453, 294, 1, 1),
(454, 294, 2, 2),
(455, 294, 3, 3),
(456, 294, 4, 4),
(457, 295, 1, 1),
(458, 295, 2, 2),
(459, 295, 3, 3),
(460, 295, 4, 4),
(461, 296, 1, 1),
(462, 296, 2, 2),
(463, 296, 3, 3),
(464, 296, 4, 4),
(465, 297, 1, 1),
(466, 297, 2, 2),
(467, 297, 3, 3),
(468, 297, 4, 4),
(469, 298, 1, 1),
(470, 298, 2, 2),
(471, 298, 3, 3),
(472, 298, 4, 4),
(473, 299, 1, 1),
(474, 299, 2, 2),
(475, 299, 3, 3),
(476, 299, 4, 4),
(477, 300, 1, 1),
(478, 300, 2, 2),
(479, 300, 3, 3),
(480, 300, 4, 4),
(481, 301, 1, 1),
(482, 301, 2, 2),
(483, 301, 3, 3),
(484, 301, 4, 4),
(485, 302, 1, 1),
(486, 302, 2, 2),
(487, 302, 3, 3),
(488, 302, 4, 4),
(489, 303, 1, 1),
(490, 303, 2, 2),
(491, 303, 3, 3),
(492, 303, 4, 4),
(493, 304, 1, 1),
(494, 304, 2, 2),
(495, 304, 3, 3),
(496, 304, 4, 4),
(497, 305, 1, 1),
(498, 305, 2, 2),
(499, 305, 3, 3),
(500, 305, 4, 4),
(501, 306, 1, 1),
(502, 306, 2, 2),
(503, 306, 3, 3),
(504, 306, 4, 4),
(505, 307, 1, 1),
(506, 307, 2, 2),
(507, 307, 3, 3),
(508, 307, 4, 4),
(509, 308, 1, 1),
(510, 308, 2, 2),
(511, 308, 3, 3),
(512, 308, 4, 4),
(513, 309, 1, 1),
(514, 309, 2, 2),
(515, 309, 3, 3),
(516, 309, 4, 4),
(517, 310, 1, 1),
(518, 310, 2, 2),
(519, 310, 3, 3),
(520, 310, 4, 4),
(521, 311, 1, 1),
(522, 311, 2, 2),
(523, 311, 3, 3),
(524, 311, 4, 4),
(525, 312, 1, 1),
(526, 312, 2, 2),
(527, 312, 3, 3),
(528, 312, 4, 4),
(529, 313, 1, 1),
(530, 313, 2, 2),
(531, 313, 3, 3),
(532, 313, 4, 4),
(533, 314, 1, 1),
(534, 314, 2, 2),
(535, 314, 3, 3),
(536, 314, 4, 4),
(537, 315, 1, 1),
(538, 315, 2, 2),
(539, 315, 3, 3),
(540, 315, 4, 4),
(541, 316, 1, 1),
(542, 316, 2, 2),
(543, 316, 3, 3),
(544, 316, 4, 4),
(545, 317, 1, 1),
(546, 317, 2, 2),
(547, 317, 3, 3),
(548, 317, 4, 4),
(549, 318, 1, 1),
(550, 318, 2, 2),
(551, 318, 3, 3),
(552, 318, 4, 4),
(553, 319, 1, 1),
(554, 319, 2, 2),
(555, 319, 3, 3),
(556, 319, 4, 4),
(557, 320, 1, 1),
(558, 320, 2, 2),
(559, 320, 3, 3),
(560, 320, 4, 4),
(561, 321, 1, 1),
(562, 321, 2, 2),
(563, 321, 3, 3),
(564, 321, 4, 4),
(565, 322, 1, 1),
(566, 322, 2, 2),
(567, 322, 3, 3),
(568, 322, 4, 4),
(569, 323, 1, 1),
(570, 323, 2, 2),
(571, 323, 3, 3),
(572, 323, 4, 4),
(573, 324, 1, 1),
(574, 324, 2, 2),
(575, 324, 3, 3),
(576, 324, 4, 4),
(577, 325, 1, 1),
(578, 325, 2, 2),
(579, 325, 3, 3),
(580, 325, 4, 4),
(581, 326, 1, 1),
(582, 326, 2, 2),
(583, 326, 3, 3),
(584, 326, 4, 4),
(585, 327, 1, 1),
(586, 327, 2, 2),
(587, 327, 3, 3),
(588, 327, 4, 4),
(589, 328, 1, 1),
(590, 328, 2, 2),
(591, 328, 3, 3),
(592, 328, 4, 4),
(593, 329, 1, 1),
(594, 329, 2, 2),
(595, 329, 3, 3),
(596, 329, 4, 4),
(597, 330, 1, 1),
(598, 330, 2, 2),
(599, 330, 3, 3),
(600, 330, 4, 4),
(601, 331, 1, 1),
(602, 331, 2, 2),
(603, 331, 3, 3),
(604, 331, 4, 4),
(605, 332, 1, 1),
(606, 332, 2, 2),
(607, 332, 3, 3),
(608, 332, 4, 4),
(609, 333, 1, 1),
(610, 333, 2, 2),
(611, 333, 3, 3),
(612, 333, 4, 4),
(613, 334, 1, 1),
(614, 334, 2, 2),
(615, 334, 3, 3),
(616, 334, 4, 4),
(617, 335, 1, 1),
(618, 335, 2, 2),
(619, 335, 3, 3),
(620, 335, 4, 4),
(621, 336, 1, 1),
(622, 336, 2, 2),
(623, 336, 3, 3),
(624, 336, 4, 4),
(625, 337, 1, 1),
(626, 337, 2, 2),
(627, 337, 3, 3),
(628, 337, 4, 4),
(629, 338, 1, 1),
(630, 338, 2, 2),
(631, 338, 3, 3),
(632, 338, 4, 4),
(633, 339, 1, 1),
(634, 339, 2, 2),
(635, 339, 3, 3),
(636, 339, 4, 4),
(637, 340, 1, 1),
(638, 340, 2, 2),
(639, 340, 3, 3),
(640, 340, 4, 4),
(641, 341, 1, 1),
(642, 341, 2, 2),
(643, 341, 3, 3),
(644, 341, 4, 4),
(645, 342, 1, 1),
(646, 342, 2, 2),
(647, 342, 3, 3),
(648, 342, 4, 4),
(649, 343, 1, 1),
(650, 343, 2, 2),
(651, 343, 3, 3),
(652, 343, 4, 4),
(653, 344, 1, 1),
(654, 344, 2, 2),
(655, 344, 3, 3),
(656, 344, 4, 4),
(657, 345, 1, 1),
(658, 345, 2, 2),
(659, 345, 3, 3),
(660, 345, 4, 4),
(661, 346, 1, 1),
(662, 346, 2, 2),
(663, 346, 3, 3),
(664, 346, 4, 4),
(665, 347, 1, 1),
(666, 347, 2, 2),
(667, 347, 3, 3),
(668, 347, 4, 4),
(669, 348, 1, 1),
(670, 348, 2, 2),
(671, 348, 3, 3),
(672, 348, 4, 4),
(673, 349, 1, 1),
(674, 349, 2, 2),
(675, 349, 3, 3),
(676, 349, 4, 4),
(677, 350, 1, 1),
(678, 350, 2, 2),
(679, 350, 3, 3),
(680, 350, 4, 4),
(681, 351, 1, 1),
(682, 351, 2, 2),
(683, 351, 3, 3),
(684, 351, 4, 4),
(685, 352, 1, 1),
(686, 352, 2, 2),
(687, 352, 3, 3),
(688, 352, 4, 4),
(689, 353, 1, 1),
(690, 353, 2, 2),
(691, 353, 3, 3),
(692, 353, 4, 4),
(693, 354, 1, 1),
(694, 354, 2, 2),
(695, 354, 3, 3),
(696, 354, 4, 4),
(697, 355, 1, 1),
(698, 355, 2, 2),
(699, 355, 3, 3),
(700, 355, 4, 4),
(701, 356, 1, 1),
(702, 356, 2, 2),
(703, 356, 3, 3),
(704, 356, 4, 4),
(705, 357, 1, 1),
(706, 357, 2, 2),
(707, 357, 3, 3),
(708, 357, 4, 4),
(709, 358, 1, 1),
(710, 358, 2, 2),
(711, 358, 3, 3),
(712, 358, 4, 4),
(713, 359, 1, 1),
(714, 359, 2, 2),
(715, 359, 3, 3),
(716, 359, 4, 4),
(717, 360, 1, 1),
(718, 360, 2, 2),
(719, 360, 3, 3),
(720, 360, 4, 4),
(721, 361, 1, 1),
(722, 361, 2, 2),
(723, 361, 3, 3),
(724, 361, 4, 4),
(725, 362, 1, 1),
(726, 362, 2, 2),
(727, 362, 3, 3),
(728, 362, 4, 4),
(729, 363, 1, 1),
(730, 363, 2, 2),
(731, 363, 3, 3),
(732, 363, 4, 4),
(733, 364, 1, 1),
(734, 364, 2, 2),
(735, 364, 3, 3),
(736, 364, 4, 4),
(737, 365, 1, 1),
(738, 365, 2, 2),
(739, 365, 3, 3),
(740, 365, 4, 4),
(741, 366, 1, 1),
(742, 366, 2, 2),
(743, 366, 3, 3),
(744, 366, 4, 4),
(745, 367, 1, 1),
(746, 367, 2, 2),
(747, 367, 3, 3),
(748, 367, 4, 4),
(749, 368, 1, 1),
(750, 368, 2, 2),
(751, 368, 3, 3),
(752, 368, 4, 4),
(753, 369, 1, 1),
(754, 369, 2, 2),
(755, 369, 3, 3),
(756, 369, 4, 4),
(757, 370, 1, 1),
(758, 370, 2, 2),
(759, 370, 3, 3),
(760, 370, 4, 4),
(761, 371, 1, 1),
(762, 371, 2, 2),
(763, 371, 3, 3),
(764, 371, 4, 4),
(765, 372, 1, 1),
(766, 372, 2, 2),
(767, 372, 3, 3),
(768, 372, 4, 4),
(769, 373, 1, 1),
(770, 373, 2, 2),
(771, 373, 3, 3),
(772, 373, 4, 4),
(773, 374, 1, 1),
(774, 374, 2, 2),
(775, 374, 3, 3),
(776, 374, 4, 4),
(777, 375, 1, 1),
(778, 375, 2, 2),
(779, 375, 3, 3),
(780, 375, 4, 4),
(781, 376, 1, 1),
(782, 376, 2, 2),
(783, 376, 3, 3),
(784, 376, 4, 4),
(785, 377, 1, 1),
(786, 377, 2, 2),
(787, 377, 3, 3),
(788, 377, 4, 4),
(789, 378, 1, 1),
(790, 378, 2, 2),
(791, 378, 3, 3),
(792, 378, 4, 4),
(793, 379, 1, 1),
(794, 379, 2, 2),
(795, 379, 3, 3),
(796, 379, 4, 4),
(797, 380, 1, 1),
(798, 380, 2, 2),
(799, 380, 3, 3),
(800, 380, 4, 4),
(801, 381, 1, 1),
(802, 381, 2, 2),
(803, 381, 3, 3),
(804, 381, 4, 4),
(805, 382, 1, 1),
(806, 382, 2, 2),
(807, 382, 3, 3),
(808, 382, 4, 4),
(809, 383, 1, 1),
(810, 383, 2, 2),
(811, 383, 3, 3),
(812, 383, 4, 4),
(813, 384, 1, 1),
(814, 384, 2, 2),
(815, 384, 3, 3),
(816, 384, 4, 4),
(817, 385, 1, 1),
(818, 385, 2, 2),
(819, 385, 3, 3),
(820, 385, 4, 4),
(821, 386, 1, 1),
(822, 386, 2, 2),
(823, 386, 3, 3),
(824, 386, 4, 4),
(825, 387, 1, 1),
(826, 387, 2, 2),
(827, 387, 3, 3),
(828, 387, 4, 4),
(829, 388, 1, 1),
(830, 388, 2, 2),
(831, 388, 3, 3),
(832, 388, 4, 4),
(833, 389, 1, 1),
(834, 389, 2, 2),
(835, 389, 3, 3),
(836, 389, 4, 4),
(837, 390, 1, 1),
(838, 390, 2, 2),
(839, 390, 3, 3),
(840, 390, 4, 4),
(841, 391, 1, 1),
(842, 391, 2, 2),
(843, 391, 3, 3),
(844, 391, 4, 4),
(845, 392, 1, 1),
(846, 392, 2, 2),
(847, 392, 3, 3),
(848, 392, 4, 4),
(849, 393, 1, 1),
(850, 393, 2, 2),
(851, 393, 3, 3),
(852, 393, 4, 4),
(853, 394, 1, 1),
(854, 394, 2, 2),
(855, 394, 3, 3),
(856, 394, 4, 4),
(857, 395, 1, 1),
(858, 395, 2, 2),
(859, 395, 3, 3),
(860, 395, 4, 4),
(861, 396, 1, 1),
(862, 396, 2, 2),
(863, 396, 3, 3),
(864, 396, 4, 4),
(865, 397, 1, 1),
(866, 397, 2, 2),
(867, 397, 3, 3),
(868, 397, 4, 4),
(869, 398, 1, 1),
(870, 398, 2, 2),
(871, 398, 3, 3),
(872, 398, 4, 4),
(873, 399, 1, 1),
(874, 399, 2, 2),
(875, 399, 3, 3),
(876, 399, 4, 4),
(877, 400, 1, 1),
(878, 400, 2, 2),
(879, 400, 3, 3),
(880, 400, 4, 4),
(881, 401, 1, 1),
(882, 401, 2, 2),
(883, 401, 3, 3),
(884, 401, 4, 4),
(885, 402, 1, 1),
(886, 402, 2, 2),
(887, 402, 3, 3),
(888, 402, 4, 4),
(889, 403, 1, 1),
(890, 403, 2, 2),
(891, 403, 3, 3),
(892, 403, 4, 4),
(893, 404, 1, 1),
(894, 404, 2, 2),
(895, 404, 3, 3),
(896, 404, 4, 4),
(897, 405, 1, 1),
(898, 405, 2, 2),
(899, 405, 3, 3),
(900, 405, 4, 4),
(901, 406, 1, 1),
(902, 406, 2, 2),
(903, 406, 3, 3),
(904, 406, 4, 4),
(905, 407, 1, 1),
(906, 407, 2, 2),
(907, 407, 3, 3),
(908, 407, 4, 4),
(909, 408, 1, 1),
(910, 408, 2, 2),
(911, 408, 3, 3),
(912, 408, 4, 4),
(913, 409, 1, 1),
(914, 409, 2, 2),
(915, 409, 3, 3),
(916, 409, 4, 4),
(917, 410, 1, 1),
(918, 410, 2, 2),
(919, 410, 3, 3),
(920, 410, 4, 4),
(921, 411, 1, 1),
(922, 411, 2, 2),
(923, 411, 3, 3),
(924, 411, 4, 4),
(925, 412, 1, 1),
(926, 412, 2, 2),
(927, 412, 3, 3),
(928, 412, 4, 4),
(929, 413, 1, 1),
(930, 413, 2, 2),
(931, 413, 3, 3),
(932, 413, 4, 4),
(933, 414, 1, 1),
(934, 414, 2, 2),
(935, 414, 3, 3),
(936, 414, 4, 4),
(937, 415, 1, 1),
(938, 415, 2, 2),
(939, 415, 3, 3),
(940, 415, 4, 4),
(941, 416, 1, 1),
(942, 416, 2, 2),
(943, 416, 3, 3),
(944, 416, 4, 4),
(945, 417, 1, 1),
(946, 417, 2, 2),
(947, 417, 3, 3),
(948, 417, 4, 4),
(949, 418, 1, 1),
(950, 418, 2, 2),
(951, 418, 3, 3),
(952, 418, 4, 4),
(953, 419, 1, 1),
(954, 419, 2, 2),
(955, 419, 3, 3),
(956, 419, 4, 4),
(957, 420, 1, 1),
(958, 420, 2, 2),
(959, 420, 3, 3),
(960, 420, 4, 4),
(961, 421, 1, 1),
(962, 421, 2, 2),
(963, 421, 3, 3),
(964, 421, 4, 4),
(965, 422, 1, 1),
(966, 422, 2, 2),
(967, 422, 3, 3),
(968, 422, 4, 4),
(969, 423, 1, 1),
(970, 423, 2, 2),
(971, 423, 3, 3),
(972, 423, 4, 4),
(973, 424, 1, 1),
(974, 424, 2, 2),
(975, 424, 3, 3),
(976, 424, 4, 4),
(977, 425, 1, 1),
(978, 425, 2, 2),
(979, 425, 3, 3),
(980, 425, 4, 4),
(981, 426, 1, 1),
(982, 426, 2, 2),
(983, 426, 3, 3),
(984, 426, 4, 4),
(985, 427, 1, 1),
(986, 427, 2, 2),
(987, 427, 3, 3),
(988, 427, 4, 4),
(989, 428, 1, 1),
(990, 428, 2, 2),
(991, 428, 3, 3),
(992, 428, 4, 4),
(993, 429, 1, 1),
(994, 429, 2, 2),
(995, 429, 3, 3),
(996, 429, 4, 4),
(997, 430, 1, 1),
(998, 430, 2, 2),
(999, 430, 3, 3),
(1000, 430, 4, 4),
(1001, 431, 1, 1),
(1002, 431, 2, 2),
(1003, 431, 3, 3),
(1004, 431, 4, 4),
(1005, 432, 1, 1),
(1006, 432, 2, 2),
(1007, 432, 3, 3),
(1008, 432, 4, 4),
(1009, 433, 1, 1),
(1010, 433, 2, 2),
(1011, 433, 3, 3),
(1012, 433, 4, 4),
(1013, 434, 1, 1),
(1014, 434, 2, 2),
(1015, 434, 3, 3),
(1016, 434, 4, 4),
(1017, 435, 1, 1),
(1018, 435, 2, 2),
(1019, 435, 3, 3),
(1020, 435, 4, 4),
(1021, 436, 1, 1),
(1022, 436, 2, 2),
(1023, 436, 3, 3),
(1024, 436, 4, 4),
(1025, 437, 1, 1),
(1026, 437, 2, 2),
(1027, 437, 3, 3),
(1028, 437, 4, 4),
(1029, 438, 1, 1),
(1030, 438, 2, 2),
(1031, 438, 3, 3),
(1032, 438, 4, 4),
(1033, 439, 1, 1),
(1034, 439, 2, 2),
(1035, 439, 3, 3),
(1036, 439, 4, 4),
(1037, 440, 1, 1),
(1038, 440, 2, 2),
(1039, 440, 3, 3),
(1040, 440, 4, 4),
(1041, 441, 1, 1),
(1042, 441, 2, 2),
(1043, 441, 3, 3),
(1044, 441, 4, 4),
(1045, 442, 1, 1),
(1046, 442, 2, 2),
(1047, 442, 3, 3),
(1048, 442, 4, 4),
(1049, 443, 1, 1),
(1050, 443, 2, 2),
(1051, 443, 3, 3),
(1052, 443, 4, 4),
(1053, 444, 1, 1),
(1054, 444, 2, 2),
(1055, 444, 3, 3),
(1056, 444, 4, 4),
(1057, 445, 1, 1),
(1058, 445, 2, 2),
(1059, 445, 3, 3),
(1060, 445, 4, 4),
(1061, 446, 1, 1),
(1062, 446, 2, 2),
(1063, 446, 3, 3),
(1064, 446, 4, 4),
(1065, 447, 1, 1),
(1066, 447, 2, 2),
(1067, 447, 3, 3),
(1068, 447, 4, 4),
(1069, 448, 1, 1),
(1070, 448, 2, 2),
(1071, 448, 3, 3),
(1072, 448, 4, 4),
(1073, 449, 1, 1),
(1074, 449, 2, 2),
(1075, 449, 3, 3),
(1076, 449, 4, 4),
(1077, 450, 1, 1),
(1078, 450, 2, 2),
(1079, 450, 3, 3),
(1080, 450, 4, 4),
(1081, 451, 1, 1),
(1082, 451, 2, 2),
(1083, 451, 3, 3),
(1084, 451, 4, 4),
(1085, 452, 1, 1),
(1086, 452, 2, 2),
(1087, 452, 3, 3),
(1088, 452, 4, 4),
(1089, 453, 1, 1),
(1090, 453, 2, 2),
(1091, 453, 3, 3),
(1092, 453, 4, 4),
(1093, 454, 1, 1),
(1094, 454, 2, 2),
(1095, 454, 3, 3),
(1096, 454, 4, 4),
(1097, 455, 1, 1),
(1098, 455, 2, 2),
(1099, 455, 3, 3),
(1100, 455, 4, 4),
(1101, 456, 1, 1),
(1102, 456, 2, 2),
(1103, 456, 3, 3),
(1104, 456, 4, 4),
(1105, 457, 1, 1),
(1106, 457, 2, 2),
(1107, 457, 3, 3),
(1108, 457, 4, 4),
(1109, 458, 1, 1),
(1110, 458, 2, 2),
(1111, 458, 3, 3),
(1112, 458, 4, 4),
(1113, 459, 1, 1),
(1114, 459, 2, 2),
(1115, 459, 3, 3),
(1116, 459, 4, 4),
(1117, 460, 1, 1),
(1118, 460, 2, 2),
(1119, 460, 3, 3),
(1120, 460, 4, 4),
(1121, 461, 1, 1),
(1122, 461, 2, 2),
(1123, 461, 3, 3),
(1124, 461, 4, 4),
(1125, 462, 1, 1),
(1126, 462, 2, 2),
(1127, 462, 3, 3),
(1128, 462, 4, 4),
(1129, 463, 1, 1),
(1130, 463, 2, 2),
(1131, 463, 3, 3),
(1132, 463, 4, 4),
(1133, 464, 1, 1),
(1134, 464, 2, 2),
(1135, 464, 3, 3),
(1136, 464, 4, 4),
(1137, 465, 1, 1),
(1138, 465, 2, 2),
(1139, 465, 3, 3),
(1140, 465, 4, 4),
(1141, 466, 1, 1),
(1142, 466, 2, 2),
(1143, 466, 3, 3),
(1144, 466, 4, 4),
(1145, 467, 1, 1),
(1146, 467, 2, 2),
(1147, 467, 3, 3),
(1148, 467, 4, 4),
(1149, 468, 1, 1),
(1150, 468, 2, 2),
(1151, 468, 3, 3),
(1152, 468, 4, 4),
(1153, 469, 1, 1),
(1154, 469, 2, 2),
(1155, 469, 3, 3),
(1156, 469, 4, 4),
(1157, 470, 1, 1),
(1158, 470, 2, 2),
(1159, 470, 3, 3),
(1160, 470, 4, 4),
(1161, 471, 1, 1),
(1162, 471, 2, 2),
(1163, 471, 3, 3),
(1164, 471, 4, 4),
(1165, 472, 1, 1),
(1166, 472, 2, 2),
(1167, 472, 3, 3),
(1168, 472, 4, 4),
(1169, 473, 1, 1),
(1170, 473, 2, 2),
(1171, 473, 3, 3),
(1172, 473, 4, 4),
(1173, 474, 1, 1),
(1174, 474, 2, 2),
(1175, 474, 3, 3),
(1176, 474, 4, 4),
(1177, 475, 1, 1),
(1178, 475, 2, 2),
(1179, 475, 3, 3),
(1180, 475, 4, 4),
(1181, 476, 1, 1),
(1182, 476, 2, 2),
(1183, 476, 3, 3),
(1184, 476, 4, 4),
(1185, 477, 1, 1),
(1186, 477, 2, 2),
(1187, 477, 3, 3),
(1188, 477, 4, 4),
(1189, 478, 1, 1),
(1190, 478, 2, 2),
(1191, 478, 3, 3),
(1192, 478, 4, 4),
(1193, 479, 1, 1),
(1194, 479, 2, 2),
(1195, 479, 3, 3),
(1196, 479, 4, 4),
(1197, 480, 1, 1),
(1198, 480, 2, 2),
(1199, 480, 3, 3),
(1200, 480, 4, 4),
(1201, 481, 1, 1),
(1202, 481, 2, 2),
(1203, 481, 3, 3),
(1204, 481, 4, 4),
(1205, 482, 1, 1),
(1206, 482, 2, 2),
(1207, 482, 3, 3),
(1208, 482, 4, 4),
(1209, 483, 1, 1),
(1210, 483, 2, 2),
(1211, 483, 3, 3),
(1212, 483, 4, 4),
(1213, 484, 1, 1),
(1214, 484, 2, 2),
(1215, 484, 3, 3),
(1216, 484, 4, 4),
(1217, 485, 1, 1),
(1218, 485, 2, 2),
(1219, 485, 3, 3),
(1220, 485, 4, 4),
(1221, 486, 1, 1),
(1222, 486, 2, 2),
(1223, 486, 3, 3),
(1224, 486, 4, 4),
(1225, 487, 1, 1),
(1226, 487, 2, 2),
(1227, 487, 3, 3),
(1228, 487, 4, 4),
(1229, 488, 1, 1),
(1230, 488, 2, 2),
(1231, 488, 3, 3),
(1232, 488, 4, 4),
(1233, 489, 1, 1),
(1234, 489, 2, 2),
(1235, 489, 3, 3),
(1236, 489, 4, 4),
(1237, 490, 1, 1),
(1238, 490, 2, 2),
(1239, 490, 3, 3),
(1240, 490, 4, 4),
(1241, 491, 1, 1),
(1242, 491, 2, 2),
(1243, 491, 3, 3),
(1244, 491, 4, 4),
(1245, 492, 1, 1),
(1246, 492, 2, 2),
(1247, 492, 3, 3),
(1248, 492, 4, 4),
(1249, 493, 1, 1),
(1250, 493, 2, 2),
(1251, 493, 3, 3),
(1252, 493, 4, 4),
(1253, 494, 1, 1),
(1254, 494, 2, 2),
(1255, 494, 3, 3),
(1256, 494, 4, 4),
(1257, 495, 1, 1),
(1258, 495, 2, 2),
(1259, 495, 3, 3),
(1260, 495, 4, 4),
(1261, 496, 1, 1),
(1262, 496, 2, 2),
(1263, 496, 3, 3),
(1264, 496, 4, 4),
(1265, 497, 1, 1),
(1266, 497, 2, 2),
(1267, 497, 3, 3),
(1268, 497, 4, 4),
(1269, 498, 1, 1),
(1270, 498, 2, 2),
(1271, 498, 3, 3),
(1272, 498, 4, 4),
(1273, 499, 1, 1),
(1274, 499, 2, 2),
(1275, 499, 3, 3),
(1276, 499, 4, 4),
(1277, 500, 1, 1),
(1278, 500, 2, 2),
(1279, 500, 3, 3),
(1280, 500, 4, 4),
(1281, 501, 1, 1),
(1282, 501, 2, 2),
(1283, 501, 3, 3),
(1284, 501, 4, 4),
(1285, 502, 1, 1),
(1286, 502, 2, 2),
(1287, 502, 3, 3),
(1288, 502, 4, 4),
(1289, 503, 1, 1),
(1290, 503, 2, 2),
(1291, 503, 3, 3),
(1292, 503, 4, 4),
(1293, 504, 1, 1),
(1294, 504, 2, 2),
(1295, 504, 3, 3),
(1296, 504, 4, 4),
(1297, 505, 1, 1),
(1298, 505, 2, 2),
(1299, 505, 3, 3),
(1300, 505, 4, 4),
(1301, 506, 1, 1),
(1302, 506, 2, 2),
(1303, 506, 3, 3),
(1304, 506, 4, 4),
(1305, 507, 1, 1),
(1306, 507, 2, 2),
(1307, 507, 3, 3),
(1308, 507, 4, 4),
(1309, 508, 1, 1),
(1310, 508, 2, 2),
(1311, 508, 3, 3),
(1312, 508, 4, 4),
(1313, 509, 1, 1),
(1314, 509, 2, 2),
(1315, 509, 3, 3),
(1316, 509, 4, 4),
(1317, 510, 1, 1),
(1318, 510, 2, 2),
(1319, 510, 3, 3),
(1320, 510, 4, 4),
(1321, 511, 1, 1),
(1322, 511, 2, 2),
(1323, 511, 3, 3),
(1324, 511, 4, 4),
(1325, 512, 1, 1),
(1326, 512, 2, 2),
(1327, 512, 3, 3),
(1328, 512, 4, 4),
(1329, 513, 1, 1),
(1330, 513, 2, 2),
(1331, 513, 3, 3),
(1332, 513, 4, 4),
(1333, 514, 1, 1),
(1334, 514, 2, 2),
(1335, 514, 3, 3),
(1336, 514, 4, 4),
(1337, 515, 1, 1),
(1338, 515, 2, 2),
(1339, 515, 3, 3),
(1340, 515, 4, 4),
(1341, 516, 1, 1),
(1342, 516, 2, 2),
(1343, 516, 3, 3),
(1344, 516, 4, 4),
(1345, 517, 1, 1),
(1346, 517, 2, 2),
(1347, 517, 3, 3),
(1348, 517, 4, 4),
(1349, 518, 1, 1),
(1350, 518, 2, 2),
(1351, 518, 3, 3),
(1352, 518, 4, 4),
(1353, 519, 1, 1),
(1354, 519, 2, 2),
(1355, 519, 3, 3),
(1356, 519, 4, 4),
(1357, 520, 1, 1),
(1358, 520, 2, 2),
(1359, 520, 3, 3),
(1360, 520, 4, 4),
(1361, 521, 1, 1),
(1362, 521, 2, 2),
(1363, 521, 3, 3),
(1364, 521, 4, 4),
(1365, 522, 1, 1),
(1366, 522, 2, 2),
(1367, 522, 3, 3),
(1368, 522, 4, 4),
(1369, 523, 1, 1),
(1370, 523, 2, 2),
(1371, 523, 3, 3),
(1372, 523, 4, 4),
(1373, 524, 1, 1),
(1374, 524, 2, 2),
(1375, 524, 3, 3),
(1376, 524, 4, 4),
(1377, 525, 1, 1),
(1378, 525, 2, 2),
(1379, 525, 3, 3),
(1380, 525, 4, 4),
(1381, 526, 1, 1),
(1382, 526, 2, 2),
(1383, 526, 3, 3),
(1384, 526, 4, 4),
(1385, 527, 1, 1),
(1386, 527, 2, 2),
(1387, 527, 3, 3),
(1388, 527, 4, 4),
(1389, 528, 1, 1),
(1390, 528, 2, 2),
(1391, 528, 3, 3),
(1392, 528, 4, 4),
(1393, 529, 1, 1),
(1394, 529, 2, 2),
(1395, 529, 3, 3),
(1396, 529, 4, 4),
(1397, 530, 1, 1),
(1398, 530, 2, 2),
(1399, 530, 3, 3),
(1400, 530, 4, 4),
(1401, 531, 1, 1),
(1402, 531, 2, 2),
(1403, 531, 3, 3),
(1404, 531, 4, 4),
(1405, 532, 1, 1),
(1406, 532, 2, 2),
(1407, 532, 3, 3),
(1408, 532, 4, 4),
(1409, 533, 1, 1),
(1410, 533, 2, 2),
(1411, 533, 3, 3),
(1412, 533, 4, 4),
(1413, 534, 1, 1),
(1414, 534, 2, 2),
(1415, 534, 3, 3),
(1416, 534, 4, 4),
(1417, 535, 1, 1),
(1418, 535, 2, 2),
(1419, 535, 3, 3),
(1420, 535, 4, 4),
(1421, 536, 1, 1),
(1422, 536, 2, 2),
(1423, 536, 3, 3),
(1424, 536, 4, 4),
(1425, 537, 1, 1),
(1426, 537, 2, 2),
(1427, 537, 3, 3),
(1428, 537, 4, 4),
(1429, 538, 1, 1),
(1430, 538, 2, 2),
(1431, 538, 3, 3),
(1432, 538, 4, 4),
(1433, 539, 1, 1),
(1434, 539, 2, 2),
(1435, 539, 3, 3),
(1436, 539, 4, 4),
(1437, 540, 1, 1),
(1438, 540, 2, 2),
(1439, 540, 3, 3),
(1440, 540, 4, 4),
(1441, 541, 1, 1),
(1442, 541, 2, 2),
(1443, 541, 3, 3),
(1444, 541, 4, 4),
(1445, 542, 1, 1),
(1446, 542, 2, 2),
(1447, 542, 3, 3),
(1448, 542, 4, 4),
(1449, 543, 1, 1),
(1450, 543, 2, 2),
(1451, 543, 3, 3),
(1452, 543, 4, 4),
(1453, 544, 1, 1),
(1454, 544, 2, 2),
(1455, 544, 3, 3),
(1456, 544, 4, 4),
(1457, 545, 1, 1),
(1458, 545, 2, 2),
(1459, 545, 3, 3),
(1460, 545, 4, 4),
(1461, 546, 1, 1),
(1462, 546, 2, 2),
(1463, 546, 3, 3),
(1464, 546, 4, 4),
(1465, 547, 1, 1),
(1466, 547, 2, 2),
(1467, 547, 3, 3),
(1468, 547, 4, 4),
(1469, 548, 1, 1),
(1470, 548, 2, 2),
(1471, 548, 3, 3),
(1472, 548, 4, 4),
(1473, 549, 1, 1),
(1474, 549, 2, 2),
(1475, 549, 3, 3),
(1476, 549, 4, 4),
(1477, 550, 1, 1),
(1478, 550, 2, 2),
(1479, 550, 3, 3),
(1480, 550, 4, 4),
(1481, 551, 1, 1),
(1482, 551, 2, 2),
(1483, 551, 3, 3),
(1484, 551, 4, 4),
(1485, 552, 1, 1),
(1486, 552, 2, 2),
(1487, 552, 3, 3),
(1488, 552, 4, 4),
(1489, 553, 1, 2),
(1490, 553, 2, 5),
(1491, 553, 3, 3),
(1492, 553, 4, 3),
(1493, 554, 1, 3),
(1494, 554, 2, 5),
(1495, 554, 3, 4),
(1496, 554, 4, 5),
(1497, 555, 1, 2),
(1498, 555, 2, 4),
(1499, 555, 3, 4),
(1500, 555, 4, 4),
(1501, 556, 1, 2),
(1502, 556, 2, 4),
(1503, 556, 3, 3),
(1504, 556, 4, 4),
(1505, 557, 1, 3),
(1506, 557, 2, 2),
(1507, 557, 3, 2),
(1508, 557, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_services`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(10) NOT NULL,
  `id_service` int(10) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_note` text NOT NULL,
  `kh_note` text NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`,`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `tbl_hospital_services`
--

INSERT INTO `tbl_hospital_services` (`id`, `id_hospital`, `id_service`, `price`, `en_note`, `kh_note`, `is_published`, `created_dt`, `modified_dt`) VALUES
(4, 0, 1, '3333', '', '', 1, '0000-00-00 00:00:00', '2015-12-20 07:49:54'),
(8, 1, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:22:17'),
(9, 3, 2, '125$', '', '', 0, '0000-00-00 00:00:00', '2015-12-21 07:26:28'),
(10, 1, 1, '10$', '', '', 0, '0000-00-00 00:00:00', '2015-12-21 07:31:13'),
(11, 46, 4, 'USD 500 ', '', '', 0, '0000-00-00 00:00:00', '2016-01-14 10:17:24'),
(12, 45, 3, '$200', 'Sathya ', 'Sathya ', 0, '0000-00-00 00:00:00', '2016-01-04 16:21:45'),
(13, 44, 2, '$300', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 04:46:56'),
(14, 43, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 04:49:33'),
(15, 42, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 04:52:25'),
(16, 41, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 04:54:28'),
(17, 40, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 04:57:20'),
(18, 39, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:00:05'),
(19, 38, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:02:27'),
(20, 37, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:05:32'),
(21, 36, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:07:08'),
(22, 35, 1, '10$', '', '', 0, '0000-00-00 00:00:00', '2016-02-05 14:25:58'),
(23, 34, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:15:48'),
(24, 33, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:17:59'),
(25, 32, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:19:39'),
(26, 31, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:21:53'),
(27, 30, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:24:44'),
(28, 29, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:26:02'),
(29, 28, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:29:02'),
(30, 27, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:29:41'),
(31, 26, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:32:58'),
(32, 25, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:33:54'),
(33, 24, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:37:06'),
(34, 22, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:40:49'),
(35, 22, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:40:55'),
(36, 21, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 05:41:13'),
(37, 20, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 07:49:17'),
(38, 19, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 07:51:51'),
(39, 18, 2, 'kakan', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 07:53:14'),
(40, 17, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 07:55:41'),
(41, 16, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 07:57:02'),
(42, 15, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:00:05'),
(43, 14, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:02:37'),
(44, 13, 7, '12$', 's', '', 0, '0000-00-00 00:00:00', '2016-01-22 13:22:06'),
(45, 12, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:08:34'),
(46, 11, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:45:49'),
(47, 10, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:50:48'),
(48, 9, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:55:29'),
(49, 8, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 08:59:58'),
(50, 7, 1, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:02:43'),
(51, 6, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:06:10'),
(52, 5, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:08:26'),
(53, 4, 3, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:11:31'),
(54, 3, 2, '$200', '', '', 0, '0000-00-00 00:00:00', '2015-12-29 09:16:37'),
(55, 10, 3, '11$', '', '', 0, '0000-00-00 00:00:00', '2016-01-03 07:22:58'),
(56, 37, 3, '100$', 'dfdf', 'hgh', 0, '0000-00-00 00:00:00', '2016-01-10 06:27:20'),
(57, 46, 5, 'USD 450 ', '27/7', '27/7', 0, '0000-00-00 00:00:00', '2016-01-14 10:26:37'),
(58, 46, 7, 'USD 600', '', '', 0, '0000-00-00 00:00:00', '2016-01-14 10:24:27'),
(59, 46, 8, 'USD 100', '', '', 0, '0000-00-00 00:00:00', '2016-01-14 10:25:09'),
(60, 46, 9, 'USD 600', '', '', 0, '0000-00-00 00:00:00', '2016-01-14 10:25:51'),
(61, 13, 3, '1', '1', '1', 0, '0000-00-00 00:00:00', '2016-01-22 13:28:50'),
(62, 13, 9, '11', '11', '1', 0, '0000-00-00 00:00:00', '2016-01-22 13:29:34'),
(63, 6, 9, '12', '', '', 0, '0000-00-00 00:00:00', '2016-01-22 15:21:50'),
(64, 35, 2, '125$', '', '', 0, '0000-00-00 00:00:00', '2016-02-05 14:23:50'),
(65, 35, 4, '12$', '', '', 0, '0000-00-00 00:00:00', '2016-02-05 14:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_specialists`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_specialists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(10) NOT NULL,
  `id_specialist` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`,`id_specialist`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_hospital_specialists`
--

INSERT INTO `tbl_hospital_specialists` (`id`, `id_hospital`, `id_specialist`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 1, 1, 1, '2015-12-02 06:09:11', '2015-12-08 08:18:24'),
(2, 3, 1, 0, '2015-12-21 18:12:10', '0000-00-00 00:00:00'),
(3, 46, 62, 0, '2016-01-09 17:18:13', '0000-00-00 00:00:00'),
(4, 46, 60, 0, '2016-01-09 17:18:22', '0000-00-00 00:00:00'),
(5, 46, 59, 0, '2016-01-09 17:18:29', '0000-00-00 00:00:00'),
(7, 37, 56, 0, '2016-01-10 06:25:34', '0000-00-00 00:00:00'),
(8, 37, 22, 0, '2016-01-10 06:25:46', '0000-00-00 00:00:00'),
(9, 44, 53, 0, '2016-01-19 09:55:44', '0000-00-00 00:00:00'),
(10, 43, 53, 0, '2016-01-19 09:56:26', '0000-00-00 00:00:00'),
(11, 42, 44, 0, '2016-01-19 09:57:20', '0000-00-00 00:00:00'),
(12, 41, 45, 0, '2016-01-19 09:57:48', '0000-00-00 00:00:00'),
(13, 40, 55, 0, '2016-01-19 09:59:32', '0000-00-00 00:00:00'),
(14, 39, 49, 0, '2016-01-19 10:00:03', '0000-00-00 00:00:00'),
(15, 38, 53, 0, '2016-01-19 10:00:30', '0000-00-00 00:00:00'),
(16, 36, 16, 0, '2016-01-19 10:01:02', '0000-00-00 00:00:00'),
(17, 35, 37, 0, '2016-01-19 10:04:53', '0000-00-00 00:00:00'),
(19, 45, 40, 0, '2016-02-26 06:48:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_types`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) unsigned DEFAULT '0',
  `en_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `kh_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_hospital_types`
--

INSERT INTO `tbl_hospital_types` (`id`, `id_category`, `en_name`, `kh_name`, `is_published`) VALUES
(7, 3, 'Type A', 'ប្រភេទ ក', 1),
(8, 3, 'NGO Type B', 'NGO Type B', 1),
(9, 8, 'NGO Type C', 'NGO Type C', 1),
(10, 2, 'Private A', 'Private A', 1),
(11, 2, 'Private B', 'Private B', 1),
(12, 2, 'Private C', 'Private C', 1),
(13, 1, 'Public A', 'Public A', 1),
(14, 1, 'Public B', 'Public C', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ideas`
--

CREATE TABLE IF NOT EXISTS `tbl_ideas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_ideas`
--

INSERT INTO `tbl_ideas` (`id`, `name`, `sex`, `age`, `email`, `phone`, `comment`, `is_deleted`, `created_dt`, `modified_dt`) VALUES
(1, 'Dara Sambath', 'M', '12', 'a@f.v', '1234', 'Sathya', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Khouch Koeun', 'M', '23', 'keoun_math@yahoo.com', '098343334443', 'sdf', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alais` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `en` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kh` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_modifier` int(10) NOT NULL DEFAULT '1',
  `modified_dt` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `alais`, `en`, `kh`, `id_modifier`, `modified_dt`, `is_deleted`) VALUES
(1, 'hospital', 'Health Hub ', 'មន្ទីរពេទ្យ', 0, '0000-00-00 00:00:00', 0),
(2, 'doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, '2015-08-17 00:00:00', 0),
(3, 'clinics', 'Clinics', 'គ្លីនិក', 1, '2015-08-17 00:00:00', 0),
(4, 'public', 'Public', 'សាធារណៈ', 1, '2015-08-17 00:00:00', 0),
(5, 'private', 'Private', 'ឯកជន', 1, '2015-08-17 00:00:00', 0),
(6, 'hospital Profile', 'Hospital Profile', 'ទម្រង់មន្ទីរពេទ្យ', 1, '2015-08-17 00:00:00', 0),
(7, 'emercency', 'Emercency', 'សង្រ្គោះបន្ទាន់', 1, '2015-08-17 00:00:00', 0),
(8, 'international Planes', 'International Planes', 'យន្តហោះអន្ដរជាតិ', 1, '2015-08-17 00:00:00', 0),
(9, 'messages', 'Messages', 'សារ', 1, '2015-08-17 00:00:00', 0),
(10, 'laboratories', 'Laboratories', 'មន្ទីរពិសោធន៍', 1, '2015-08-17 00:00:00', 0),
(12, 'health update', 'Health Topics ', 'អត្ថបទសុខភាព', 1, '2015-08-17 00:00:00', 0),
(13, 'announcement', 'Announcement', 'សេចក្ដីជុនដំនឺង', 1, '2015-08-17 00:00:00', 0),
(14, 'other_events', 'Other Events', 'សកម្មភាភផ្សេងទៀត', 1, '2015-08-17 00:00:00', 0),
(15, 'company_events', 'Company''s Events', 'សកម្មភាក្រុមហុន', 1, '2015-08-17 00:00:00', 0),
(16, 'social_events', 'Social Events', 'សកម្នភាពសង្គម', 1, '2015-08-17 00:00:00', 0),
(17, 'product', 'Product', 'ផលិតផល', 1, '2015-08-17 00:00:00', 0),
(18, 'name', 'Name', 'ឈ្មោះ', 1, '2015-09-15 00:00:00', 0),
(19, 'news', 'News', 'ពត៍មាន', 1, '2015-09-15 00:00:00', 0),
(20, 'tips', 'Tips', 'គន្លឹះ', 1, '2015-09-15 00:00:00', 0),
(21, 'ngo', 'NGO', 'អង្គការមិនមែនរដ្ឋាភិបាល', 1, '2015-09-15 00:00:00', 0),
(22, 'new hospitals', 'News Hospitals', 'មន្ទីរពេទ្យព័ត៍មាន', 1, '2015-09-15 00:00:00', 0),
(23, 'new doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, '0000-00-00 00:00:00', 0),
(24, 'latest news', 'Health Topics ', 'អត្ថបទសុខភាព', 1, '2016-01-04 00:00:00', 0),
(25, 'show all', 'Show All', 'បង្ហាញ​ទាំងអស់', 1, '2016-01-04 00:00:00', 0),
(26, 'health new & tips', 'Health New & Tips', 'សុខភាពគន្លឹះថ្មី', 1, '2016-01-13 00:00:00', 0),
(27, 'recently posts', 'Recently Posts', 'ប្រកាសថ្មី', 1, '2016-01-13 00:00:00', 0),
(28, 'read more', 'Read More', 'អាន​បន្ថែម', 1, '2016-01-01 00:00:00', 0),
(29, 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', 1, '2016-01-20 00:00:00', 0),
(30, 'kandal', 'Kandal', 'កណ្តាល', 1, '2016-01-06 00:00:00', 0),
(31, 'phnom penh', 'Phnom Penh', 'រាជធានីភ្នំពេញ', 1, '2016-01-20 00:00:00', 0),
(32, 'seam reap', 'Seam Reap', 'សៀមរាប', 1, '2016-01-01 00:00:00', 0),
(33, 'find a doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, '2016-01-20 00:00:00', 0),
(34, 'drop your idea', 'Drop Your Idea', 'ទម្លាក់គំនិតរបស់អ្នក', 1, '2016-01-06 00:00:00', 0),
(35, 'your comment', 'Your Comment', 'យោបល់របស់អ្នក', 1, '2016-01-20 00:00:00', 0),
(36, 'male', 'Male', 'ប្រុស', 1, '2016-01-19 00:00:00', 0),
(37, 'female', 'Female', '\r\nស្រី', 1, '2016-01-12 00:00:00', 0),
(38, 'submit', 'Submit', 'ដាក់ស្នើ', 1, '2016-01-09 00:00:00', 0),
(39, 'find a hospital', 'Find A Hospital', 'សែ្វងរកមន្ទីរពេទ្យ', 1, '2016-01-21 00:00:00', 0),
(40, 'health tips', 'Health Topics', 'អត្ថបទសុខភាព', 1, '2016-01-06 00:00:00', 0),
(41, 'doctor-profile', 'Doctors'' Profile', 'ទម្រង់គ្រូពេទ្យ', 1, '2016-01-21 00:00:00', 0),
(42, 'degree', 'Degree', 'សញ្ញាប័ត្រ', 1, '2016-01-07 00:00:00', 0),
(43, 'university', 'University', 'សាកលវិទ្យាល័យ', 1, '2016-01-28 00:00:00', 0),
(44, 'year', 'Year', 'ឆ្នាំ', 1, '2016-01-15 00:00:00', 0),
(46, 'work at', 'Workplace', 'កន្លែងធ្វើការ', 1, '2016-01-07 00:00:00', 0),
(47, 'director', 'Director', 'ឯកទេស', 1, '2016-01-26 00:00:00', 0),
(48, 'type', 'Type', 'ប្រភេទ', 1, '2016-01-07 00:00:00', 0),
(49, 'address', 'Address  ', 'អាសយដ្ឋាន', 1, '2016-01-19 00:00:00', 0),
(50, 'open hour', 'Working Hour  ', 'ម៉ោងធ្វើការ', 1, '2016-01-06 00:00:00', 0),
(51, 'phone number', 'Phone Number ', 'លេខទូរស័ព្ទ', 1, '2016-01-07 00:00:00', 0),
(52, 'email', 'Email  ', 'រអ៊ីម៉ែល', 1, '2016-01-07 00:00:00', 0),
(53, 'website', 'Website  ', 'វេបសាយ', 1, '2016-01-27 00:00:00', 0),
(54, 'drop your idea to this hospital', 'Drop your idea to this hospital', 'ទម្លាក់គំនិតរបស់អ្នកទៅកាន់មន្ទីរពេទ្យនេះ', 1, '2016-01-07 00:00:00', 0),
(55, 'background-hospital', 'Background', 'ប្រវត្តមន្ទីពេទ្យ', 1, '2016-01-14 00:00:00', 0),
(56, 'if you wish to recive news update from our team, please subscribe', 'Please subscribe with us', 'Please subscribe with us', 1, '2016-01-01 00:00:00', 0),
(57, 'newsletter', 'Subscribe ', 'Subscribe ', 1, '2016-01-28 00:00:00', 0),
(58, 'subscribe', 'Subscribe', 'Subscribe', 1, '2016-01-06 00:00:00', 0),
(59, 'social media', 'Social media', 'ប្រព័ន្ធ​ផ្សព្វផ្សាយ​សង្គម', 1, '2016-01-21 00:00:00', 0),
(60, 'faq', 'FAQ', 'សំណួរគេសួរញឹកញាប់', 1, '2016-01-07 00:00:00', 0),
(61, 'copyright 2015 krupet.com | all rights reserved', 'Copyright @ 2015 Krupet.com | All Rights Reserved', 'រក្សា​សិទ្ឋិ ដោយ Krupet.com ឆ្នាំ ២០១៥', 1, '2016-01-27 00:00:00', 0),
(62, 'about-us', 'About Us', 'អំពី​​យើង', 1, '2016-01-01 00:00:00', 0),
(63, 'term', 'Term', 'លក្ខន្តិក', 1, '2016-01-13 00:00:00', 0),
(64, 'toggle navigation', 'Toggle navigation', 'ការរុករកបិទបើក', 1, '2016-01-01 00:00:00', 0),
(65, 'pediatric clinic', 'Pediatric Clinic', 'គ្លីនិកកុមារ', 1, '2016-01-24 00:00:00', 0),
(66, 'health hub', 'Health Hub', 'មន្ទីរពេទ្យ', 1, '2016-01-01 00:00:00', 0),
(67, 'specialization', 'Specialization', 'ឯកទេស', 1, '2016-01-14 00:00:00', 0),
(68, 'drop your ideas', 'Drop Your Ideas', 'មតិយោបល់', 1, '2016-01-01 00:00:00', 0),
(70, 'call us today! +0965767970  |    contact@krupet.com ', '(+855) 17 567 099  |  contact@krupet.com ', '(+855) 17 567 099  |  contact@krupet.com', 1, '2016-01-08 00:00:00', 0),
(71, 'news hospitals', 'Hospital', 'មន្ទីរពេទ្យ', 1, '2016-01-01 00:00:00', 0),
(72, 'what do you think about kalmet?', 'What do you think about Kalmet?', 'តើអ្នកគិតអ្វីខ្លះអំពីការ Kalmet?', 1, '2016-01-08 00:00:00', 0),
(73, 'no.', 'No.', 'លេខ', 1, '2016-01-01 00:00:00', 0),
(74, 'price', 'Fees ', 'តម្លៃ', 1, '2016-01-22 00:00:00', 0),
(75, 'note', 'Note', 'ចំណាំ', 1, '2016-01-09 00:00:00', 0),
(76, 'view map', 'View Map', 'មើលផែនទី', 1, '2016-01-15 00:00:00', 0),
(77, 'work & experience', 'Work & Experience', 'បទពិសោធន៍​ការងារ', 1, '2016-01-08 00:00:00', 0),
(78, 'service & price', 'Service & Price', 'សេវានិងតំលៃ', 1, '2016-01-26 00:00:00', 0),
(79, 'other doctors', 'Other Doctors', 'ក្រុមវេជ្ជបណ្ឌិតផ្សេងទៀត', 1, '2016-01-15 00:00:00', 0),
(80, 'please select A speicalist', 'Please Select A speicalist', 'សូមជ្រើសរើស A អ្នកឯកទេស', 1, '2016-01-27 00:00:00', 0),
(81, 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', 1, '2016-01-18 00:00:00', 0),
(82, 'view detail', 'View Detail', 'លម្អិត', 1, '2016-01-27 00:00:00', 0),
(83, 'sort by', 'Sort By', 'តម្រៀបតាម', 1, '2016-01-22 00:00:00', 0),
(84, 'how you satify with the service prodied?', 'How you satify with the service prodied?', 'របៀបដែលអ្នក satify មួយនឹងសេវានេះ prodied?', 1, '2016-01-15 00:00:00', 0),
(85, 'not satify', 'Not Satify', 'មិនពេញចិត្ត', 1, '2016-01-27 00:00:00', 0),
(86, 'fair', 'Fair', 'ពិព័រណ៍', 1, '2016-01-14 00:00:00', 0),
(87, 'good', 'Good', 'ល្អ', 1, '2016-01-31 00:00:00', 0),
(88, 'quantity', 'Quantity', 'បរិមាណដែលត្រូវទទួលទាន', 1, '2016-01-25 00:00:00', 0),
(89, 'submit', 'Submit', 'ដាក់ស្នើ', 1, '2016-01-31 00:00:00', 0),
(90, 'service', 'Services', 'សេវា', 1, '2016-01-25 00:00:00', 0),
(91, 'galleries', 'Galleries', 'វិចិត្រសាល', 1, '2016-01-28 00:00:00', 0),
(92, 'home', 'Home', 'ទំព័រដើម', 1, '2016-01-12 00:00:00', 0),
(94, 'service-&-price', 'Service & Price', 'Service & Price', 1, '0000-00-00 00:00:00', 0),
(95, 'featured-doctors', 'Featured Doctors', 'Featured Doctors', 1, '0000-00-00 00:00:00', 0),
(96, 'contact-us', 'Contact Us', 'ទំនាក់ទំនង', 1, '0000-00-00 00:00:00', 0),
(97, 'career', 'Career', 'អាជីព', 1, '0000-00-00 00:00:00', 0),
(98, 'type', 'Type', 'Type', 1, '0000-00-00 00:00:00', 0),
(99, 'please-select-a-category', 'Please Select A Category', 'Please Select A Category', 1, '0000-00-00 00:00:00', 0),
(100, 'please-select-a-province', 'Please Select A Province', 'ជ្រើរើសខេត្ត', 1, '0000-00-00 00:00:00', 0),
(101, 'type-a-specification', 'Type A Specification', 'Type A Specification', 1, '0000-00-00 00:00:00', 0),
(102, 'place-a-keyword-here', 'Place A Keyword Here', 'Place A Keyword Here', 1, '0000-00-00 00:00:00', 0),
(103, 'what-do-you-want-to-find-?', 'What Do You Want To Find?', 'What Do You Want To Find?', 1, '0000-00-00 00:00:00', 0),
(104, 'what-is-your-illness-?', 'What is your illness?', 'What is your illness?', 1, '0000-00-00 00:00:00', 0),
(105, 'doctors', 'Doctors', 'Doctors', 1, '0000-00-00 00:00:00', 0),
(106, 'facebook-like', 'Please Like Us', 'Please Like Us', 1, '0000-00-00 00:00:00', 0),
(107, 'xxxxx', 'Background', 'ប្រវត្តិDoctor', 1, '0000-00-00 00:00:00', 0),
(108, 'partners', 'Partners', 'partners', 1, '0000-00-00 00:00:00', 0),
(109, 'department', 'Department', 'ដេបាតម៉ង', 1, '0000-00-00 00:00:00', 0),
(110, 'pharmacy', 'Pharmacy', 'ឱសថស្ថាន', 1, '0000-00-00 00:00:00', 0),
(111, 'map', 'Map', 'ផែនទី', 1, '0000-00-00 00:00:00', 0),
(112, 'drop-your-idea', 'Drop Your Idea', 'គំនិតរបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(113, 'pharmacy-profile', 'Pharmacy''s Profile', 'Pharmacy''s Profile', 1, '0000-00-00 00:00:00', 0),
(114, 'tip-detail', 'Tip Detail', 'គន្លឹះសុខភាពលំអិត', 1, '0000-00-00 00:00:00', 0),
(115, 'news-detail', 'News Detail', 'ព័ត៍មានលំអិត', 1, '0000-00-00 00:00:00', 0),
(116, 'health-consultant', 'Health Consultant', 'ទីប្រឹក្សាសុខភាព', 1, '0000-00-00 00:00:00', 0),
(117, 'hospital-rating', 'Hospital Rating', 'ការវាយតម្លៃមន្ទីរពេទ្យ', 1, '0000-00-00 00:00:00', 0),
(118, 'urgent', 'Urgent Phone Numbers', 'លេខទូរស័ព្ទបន្ទាន់', 1, '0000-00-00 00:00:00', 0),
(119, 'p-partner', 'Potential Partners', 'Potential Partners', 1, '0000-00-00 00:00:00', 0),
(120, 'o-partner', 'Official Partners', 'Official Partners', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_layouts`
--

CREATE TABLE IF NOT EXISTS `tbl_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_layouts`
--

INSERT INTO `tbl_layouts` (`id`, `alais`, `name`) VALUES
(1, 'ads-h', 'Horizontal Ads'),
(2, 'ads-v', 'Vertical Ads'),
(3, 'featured-doctors', 'Featured Doctors'),
(4, 'featured-hospitals', 'Featured Hospital'),
(5, 'featured-pharmacies', 'Featured Pharmacies'),
(6, 'featured-blogs', 'Featured Blogs'),
(7, 'feedback', 'Feedback Link'),
(8, 'fact-report', 'Fact Report'),
(9, 'hotlines', 'Hotlines'),
(10, 'partners', 'Partners'),
(11, 'programes', 'Programes'),
(12, 'health-consultant', 'Health Consultant');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_layout_appears`
--

CREATE TABLE IF NOT EXISTS `tbl_layout_appears` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `id_layout` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=242 ;

--
-- Dumping data for table `tbl_layout_appears`
--

INSERT INTO `tbl_layout_appears` (`id`, `id_page`, `id_layout`, `is_published`, `modified_dt`) VALUES
(2, 1, 2, 1, '0000-00-00 00:00:00'),
(3, 1, 3, 1, '0000-00-00 00:00:00'),
(4, 1, 4, 1, '0000-00-00 00:00:00'),
(5, 1, 5, 1, '0000-00-00 00:00:00'),
(6, 1, 6, 1, '0000-00-00 00:00:00'),
(7, 1, 7, 1, '0000-00-00 00:00:00'),
(8, 1, 8, 1, '0000-00-00 00:00:00'),
(9, 1, 9, 1, '0000-00-00 00:00:00'),
(10, 1, 10, 1, '0000-00-00 00:00:00'),
(12, 1, 12, 1, '0000-00-00 00:00:00'),
(13, 2, 1, 0, '0000-00-00 00:00:00'),
(14, 2, 2, 0, '0000-00-00 00:00:00'),
(15, 2, 3, 0, '0000-00-00 00:00:00'),
(16, 2, 4, 0, '0000-00-00 00:00:00'),
(17, 2, 5, 0, '0000-00-00 00:00:00'),
(18, 2, 6, 0, '0000-00-00 00:00:00'),
(19, 2, 7, 0, '0000-00-00 00:00:00'),
(20, 2, 8, 0, '0000-00-00 00:00:00'),
(21, 2, 9, 0, '0000-00-00 00:00:00'),
(22, 2, 10, 0, '0000-00-00 00:00:00'),
(23, 2, 11, 0, '0000-00-00 00:00:00'),
(24, 2, 12, 0, '0000-00-00 00:00:00'),
(25, 3, 1, 0, '0000-00-00 00:00:00'),
(26, 3, 2, 0, '0000-00-00 00:00:00'),
(27, 3, 3, 0, '0000-00-00 00:00:00'),
(28, 3, 4, 0, '0000-00-00 00:00:00'),
(29, 3, 5, 0, '0000-00-00 00:00:00'),
(30, 3, 6, 0, '0000-00-00 00:00:00'),
(31, 3, 7, 0, '0000-00-00 00:00:00'),
(32, 3, 8, 0, '0000-00-00 00:00:00'),
(33, 3, 9, 0, '0000-00-00 00:00:00'),
(34, 3, 10, 0, '0000-00-00 00:00:00'),
(35, 3, 11, 0, '0000-00-00 00:00:00'),
(36, 3, 12, 0, '0000-00-00 00:00:00'),
(37, 4, 1, 1, '0000-00-00 00:00:00'),
(38, 4, 2, 0, '0000-00-00 00:00:00'),
(39, 4, 3, 1, '0000-00-00 00:00:00'),
(40, 4, 4, 0, '0000-00-00 00:00:00'),
(41, 4, 5, 0, '0000-00-00 00:00:00'),
(42, 4, 6, 1, '0000-00-00 00:00:00'),
(43, 4, 7, 0, '0000-00-00 00:00:00'),
(44, 4, 8, 1, '0000-00-00 00:00:00'),
(45, 4, 9, 0, '0000-00-00 00:00:00'),
(46, 4, 10, 0, '0000-00-00 00:00:00'),
(47, 4, 11, 0, '0000-00-00 00:00:00'),
(48, 4, 12, 0, '0000-00-00 00:00:00'),
(49, 5, 1, 0, '0000-00-00 00:00:00'),
(50, 5, 2, 0, '0000-00-00 00:00:00'),
(51, 5, 3, 0, '0000-00-00 00:00:00'),
(52, 5, 4, 0, '0000-00-00 00:00:00'),
(53, 5, 5, 0, '0000-00-00 00:00:00'),
(54, 5, 6, 0, '0000-00-00 00:00:00'),
(55, 5, 7, 0, '0000-00-00 00:00:00'),
(56, 5, 8, 0, '0000-00-00 00:00:00'),
(57, 5, 9, 0, '0000-00-00 00:00:00'),
(58, 5, 10, 0, '0000-00-00 00:00:00'),
(59, 5, 11, 0, '0000-00-00 00:00:00'),
(60, 5, 12, 0, '0000-00-00 00:00:00'),
(61, 6, 1, 0, '0000-00-00 00:00:00'),
(62, 6, 2, 0, '0000-00-00 00:00:00'),
(63, 6, 3, 0, '0000-00-00 00:00:00'),
(64, 6, 4, 0, '0000-00-00 00:00:00'),
(65, 6, 5, 0, '0000-00-00 00:00:00'),
(66, 6, 6, 0, '0000-00-00 00:00:00'),
(67, 6, 7, 0, '0000-00-00 00:00:00'),
(68, 6, 8, 0, '0000-00-00 00:00:00'),
(69, 6, 9, 0, '0000-00-00 00:00:00'),
(70, 6, 10, 0, '0000-00-00 00:00:00'),
(71, 6, 11, 0, '0000-00-00 00:00:00'),
(72, 6, 12, 0, '0000-00-00 00:00:00'),
(73, 7, 1, 0, '0000-00-00 00:00:00'),
(74, 7, 2, 0, '0000-00-00 00:00:00'),
(75, 7, 3, 0, '0000-00-00 00:00:00'),
(76, 7, 4, 0, '0000-00-00 00:00:00'),
(77, 7, 5, 0, '0000-00-00 00:00:00'),
(78, 7, 6, 0, '0000-00-00 00:00:00'),
(79, 7, 7, 0, '0000-00-00 00:00:00'),
(80, 7, 8, 0, '0000-00-00 00:00:00'),
(81, 7, 9, 0, '0000-00-00 00:00:00'),
(82, 7, 10, 0, '0000-00-00 00:00:00'),
(83, 7, 11, 0, '0000-00-00 00:00:00'),
(84, 7, 12, 0, '0000-00-00 00:00:00'),
(85, 8, 1, 0, '0000-00-00 00:00:00'),
(86, 8, 2, 0, '0000-00-00 00:00:00'),
(87, 8, 3, 0, '0000-00-00 00:00:00'),
(88, 8, 4, 0, '0000-00-00 00:00:00'),
(90, 8, 6, 0, '0000-00-00 00:00:00'),
(92, 8, 8, 0, '0000-00-00 00:00:00'),
(94, 8, 10, 0, '0000-00-00 00:00:00'),
(97, 9, 1, 0, '0000-00-00 00:00:00'),
(98, 9, 2, 0, '0000-00-00 00:00:00'),
(99, 9, 3, 0, '0000-00-00 00:00:00'),
(100, 9, 4, 0, '0000-00-00 00:00:00'),
(101, 9, 5, 0, '0000-00-00 00:00:00'),
(102, 9, 6, 0, '0000-00-00 00:00:00'),
(103, 9, 7, 0, '0000-00-00 00:00:00'),
(104, 9, 8, 0, '0000-00-00 00:00:00'),
(105, 9, 9, 0, '0000-00-00 00:00:00'),
(106, 9, 10, 0, '0000-00-00 00:00:00'),
(107, 9, 11, 0, '0000-00-00 00:00:00'),
(108, 9, 12, 0, '0000-00-00 00:00:00'),
(109, 11, 1, 1, '0000-00-00 00:00:00'),
(110, 11, 2, 1, '0000-00-00 00:00:00'),
(111, 11, 3, 0, '0000-00-00 00:00:00'),
(112, 11, 4, 1, '0000-00-00 00:00:00'),
(114, 11, 6, 0, '0000-00-00 00:00:00'),
(115, 11, 7, 1, '0000-00-00 00:00:00'),
(118, 11, 10, 1, '0000-00-00 00:00:00'),
(121, 12, 1, 0, '0000-00-00 00:00:00'),
(122, 12, 2, 0, '0000-00-00 00:00:00'),
(123, 12, 3, 0, '0000-00-00 00:00:00'),
(124, 12, 4, 0, '0000-00-00 00:00:00'),
(125, 12, 5, 0, '0000-00-00 00:00:00'),
(126, 12, 6, 0, '0000-00-00 00:00:00'),
(127, 12, 7, 0, '0000-00-00 00:00:00'),
(128, 12, 8, 0, '0000-00-00 00:00:00'),
(129, 12, 9, 0, '0000-00-00 00:00:00'),
(130, 12, 10, 0, '0000-00-00 00:00:00'),
(131, 12, 11, 0, '0000-00-00 00:00:00'),
(132, 12, 12, 0, '0000-00-00 00:00:00'),
(133, 14, 1, 0, '0000-00-00 00:00:00'),
(134, 14, 2, 0, '0000-00-00 00:00:00'),
(135, 14, 3, 0, '0000-00-00 00:00:00'),
(136, 14, 4, 0, '0000-00-00 00:00:00'),
(137, 14, 5, 0, '0000-00-00 00:00:00'),
(138, 14, 6, 0, '0000-00-00 00:00:00'),
(139, 14, 7, 0, '0000-00-00 00:00:00'),
(140, 14, 8, 0, '0000-00-00 00:00:00'),
(141, 14, 9, 0, '0000-00-00 00:00:00'),
(142, 14, 10, 0, '0000-00-00 00:00:00'),
(143, 14, 11, 0, '0000-00-00 00:00:00'),
(144, 14, 12, 0, '0000-00-00 00:00:00'),
(145, 15, 1, 0, '0000-00-00 00:00:00'),
(146, 15, 2, 0, '0000-00-00 00:00:00'),
(147, 15, 3, 0, '0000-00-00 00:00:00'),
(148, 15, 4, 0, '0000-00-00 00:00:00'),
(149, 15, 5, 0, '0000-00-00 00:00:00'),
(150, 15, 6, 0, '0000-00-00 00:00:00'),
(151, 15, 7, 0, '0000-00-00 00:00:00'),
(152, 15, 8, 0, '0000-00-00 00:00:00'),
(153, 15, 9, 0, '0000-00-00 00:00:00'),
(154, 15, 10, 0, '0000-00-00 00:00:00'),
(155, 15, 11, 0, '0000-00-00 00:00:00'),
(156, 15, 12, 0, '0000-00-00 00:00:00'),
(157, 16, 1, 0, '0000-00-00 00:00:00'),
(158, 16, 2, 0, '0000-00-00 00:00:00'),
(159, 16, 3, 0, '0000-00-00 00:00:00'),
(160, 16, 4, 0, '0000-00-00 00:00:00'),
(161, 16, 5, 0, '0000-00-00 00:00:00'),
(162, 16, 6, 0, '0000-00-00 00:00:00'),
(163, 16, 7, 0, '0000-00-00 00:00:00'),
(164, 16, 8, 0, '0000-00-00 00:00:00'),
(165, 16, 9, 0, '0000-00-00 00:00:00'),
(166, 16, 10, 0, '0000-00-00 00:00:00'),
(167, 16, 11, 0, '0000-00-00 00:00:00'),
(168, 16, 12, 0, '0000-00-00 00:00:00'),
(169, 17, 1, 0, '0000-00-00 00:00:00'),
(170, 17, 2, 0, '0000-00-00 00:00:00'),
(171, 17, 3, 0, '0000-00-00 00:00:00'),
(172, 17, 4, 1, '0000-00-00 00:00:00'),
(173, 17, 5, 0, '0000-00-00 00:00:00'),
(174, 17, 6, 0, '0000-00-00 00:00:00'),
(175, 17, 7, 0, '0000-00-00 00:00:00'),
(176, 17, 8, 0, '0000-00-00 00:00:00'),
(177, 17, 9, 0, '0000-00-00 00:00:00'),
(178, 17, 10, 0, '0000-00-00 00:00:00'),
(179, 17, 11, 0, '0000-00-00 00:00:00'),
(180, 17, 12, 0, '0000-00-00 00:00:00'),
(181, 18, 1, 0, '0000-00-00 00:00:00'),
(182, 18, 2, 1, '0000-00-00 00:00:00'),
(183, 18, 3, 1, '0000-00-00 00:00:00'),
(184, 18, 4, 0, '0000-00-00 00:00:00'),
(185, 18, 5, 0, '0000-00-00 00:00:00'),
(186, 18, 6, 1, '0000-00-00 00:00:00'),
(187, 18, 7, 0, '0000-00-00 00:00:00'),
(188, 18, 8, 0, '0000-00-00 00:00:00'),
(189, 18, 9, 0, '0000-00-00 00:00:00'),
(190, 18, 10, 0, '0000-00-00 00:00:00'),
(191, 18, 11, 0, '0000-00-00 00:00:00'),
(192, 18, 12, 0, '0000-00-00 00:00:00'),
(193, 19, 1, 0, '0000-00-00 00:00:00'),
(194, 19, 2, 0, '0000-00-00 00:00:00'),
(195, 19, 3, 0, '0000-00-00 00:00:00'),
(196, 19, 4, 0, '0000-00-00 00:00:00'),
(197, 19, 5, 0, '0000-00-00 00:00:00'),
(198, 19, 6, 0, '0000-00-00 00:00:00'),
(199, 19, 7, 0, '0000-00-00 00:00:00'),
(200, 19, 8, 0, '0000-00-00 00:00:00'),
(201, 19, 9, 0, '0000-00-00 00:00:00'),
(202, 19, 10, 0, '0000-00-00 00:00:00'),
(203, 19, 11, 0, '0000-00-00 00:00:00'),
(204, 19, 12, 0, '0000-00-00 00:00:00'),
(205, 20, 1, 0, '0000-00-00 00:00:00'),
(206, 20, 2, 0, '0000-00-00 00:00:00'),
(207, 20, 3, 0, '0000-00-00 00:00:00'),
(208, 20, 4, 0, '0000-00-00 00:00:00'),
(209, 20, 5, 0, '0000-00-00 00:00:00'),
(210, 20, 6, 0, '0000-00-00 00:00:00'),
(211, 20, 7, 0, '0000-00-00 00:00:00'),
(212, 20, 8, 0, '0000-00-00 00:00:00'),
(213, 20, 9, 0, '0000-00-00 00:00:00'),
(214, 20, 10, 0, '0000-00-00 00:00:00'),
(215, 20, 11, 0, '0000-00-00 00:00:00'),
(216, 20, 12, 0, '0000-00-00 00:00:00'),
(217, 21, 1, 1, '0000-00-00 00:00:00'),
(218, 21, 2, 1, '0000-00-00 00:00:00'),
(219, 21, 3, 0, '0000-00-00 00:00:00'),
(220, 21, 4, 0, '0000-00-00 00:00:00'),
(221, 21, 5, 0, '0000-00-00 00:00:00'),
(222, 21, 6, 1, '0000-00-00 00:00:00'),
(223, 21, 7, 0, '0000-00-00 00:00:00'),
(224, 21, 8, 1, '0000-00-00 00:00:00'),
(225, 21, 9, 0, '0000-00-00 00:00:00'),
(226, 21, 10, 0, '0000-00-00 00:00:00'),
(227, 21, 11, 0, '0000-00-00 00:00:00'),
(228, 21, 12, 0, '0000-00-00 00:00:00'),
(229, 22, 1, 0, '0000-00-00 00:00:00'),
(230, 22, 2, 0, '0000-00-00 00:00:00'),
(231, 22, 3, 0, '0000-00-00 00:00:00'),
(232, 22, 4, 0, '0000-00-00 00:00:00'),
(233, 22, 5, 0, '0000-00-00 00:00:00'),
(234, 22, 6, 0, '0000-00-00 00:00:00'),
(235, 22, 7, 0, '0000-00-00 00:00:00'),
(236, 22, 8, 0, '0000-00-00 00:00:00'),
(237, 22, 9, 0, '0000-00-00 00:00:00'),
(238, 22, 10, 0, '0000-00-00 00:00:00'),
(239, 22, 11, 0, '0000-00-00 00:00:00'),
(240, 22, 12, 0, '0000-00-00 00:00:00'),
(241, 1, 11, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletters`
--

CREATE TABLE IF NOT EXISTS `tbl_newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` datetime NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `sent_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_blogs`
--

CREATE TABLE IF NOT EXISTS `tbl_newsletter_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_banner_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `alais`, `name`, `banner`, `is_banner_published`, `modified_dt`) VALUES
(1, 'homepage', 'Homepage', 'uploads/banners/banner_56a64fd3475f1.jpg', 0, '0000-00-00 00:00:00'),
(2, 'hospitals', 'Hospitals', 'uploads/banners/banner_56a64fabb6623.jpg', 1, '2016-03-12 18:08:57'),
(3, 'view-hospital', 'View hospital', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 20:28:29'),
(4, 'doctors', 'Doctors', 'uploads/banners/banner_56ee45130c8f7.jpg', 1, '2016-03-20 07:37:07'),
(5, 'view-doctor', 'View Doctor', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:33:46'),
(6, 'specialists', 'Specialists', 'uploads/banners/banner_56a64fabb6623.jpg', 1, '2016-03-13 04:57:56'),
(7, 'news', 'News', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '0000-00-00 00:00:00'),
(8, 'blog-detail', 'Blog Detail', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '0000-00-00 00:00:00'),
(9, 'tip', 'Tip', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:47:14'),
(11, 'about-us', 'About Us', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:57:50'),
(12, 'contact-us', 'Contact Us', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:57:11'),
(14, 'feedback', 'Feedback', 'uploads/banners/banner_56a64fd3475f1.jpg', 0, '0000-00-00 00:00:00'),
(15, 'career', 'Career', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:57:28'),
(16, 'faqs', 'FAQs', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 20:11:47'),
(17, 'term', 'Term', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-12 19:58:05'),
(18, 'pharmaciesx', 'Pharmacies', 'uploads/banners/banner_56a64fabb6623.jpg', 1, '2016-03-12 18:18:43'),
(19, 'mapx', 'Map', 'uploads/banners/banner_56a64fabb6623.jpg', 1, '2016-03-12 19:39:44'),
(20, 'view-pharmacy', 'View Pharmacy', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '0000-00-00 00:00:00'),
(21, 'health-consultant', 'Health Consultant', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '0000-00-00 00:00:00'),
(22, 'hospital-rating', 'Hospital Rating', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partners`
--

CREATE TABLE IF NOT EXISTS `tbl_partners` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(120) NOT NULL,
  `is_published` tinyint(4) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  `data_order` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_partners`
--

INSERT INTO `tbl_partners` (`id`, `type`, `name`, `url`, `description`, `image`, `is_published`, `modified_dt`, `created_dt`, `data_order`) VALUES
(15, 1, 'sa', 'asdf', 'a', 'uploads/partners/partner_56cc4f6ce2af6.jpg', 0, '2016-02-23 13:24:12', '0000-00-00 00:00:00', 0),
(9, 1, 'asd', 'a.c', 'aa', 'uploads/partners/partner_56cac01faf243.jpg', 1, '2016-02-22 09:00:31', '0000-00-00 00:00:00', 1),
(10, 2, 'ssa', 'a.c', 'aaa', 'uploads/partners/partner_56cb10ec01a39.jpg', 0, '2016-02-22 14:45:16', '0000-00-00 00:00:00', 0),
(11, 1, 'Sat', 'Sat', 'Sathya', 'uploads/partners/partner_56cc489a41935.jpg', 0, '2016-02-23 12:55:06', '0000-00-00 00:00:00', 0),
(12, 1, 'ty', 'ty', 'sa', 'uploads/partners/partner_56cc48ae2fa90.jpg', 0, '2016-02-23 12:55:26', '0000-00-00 00:00:00', 0),
(13, 2, 'Da', 'Da', 'Re', 'uploads/partners/partner_56cc48cf30f02.jpg', 0, '2016-02-23 12:55:59', '0000-00-00 00:00:00', 0),
(14, 2, 'Rahaya', 'Rahya', 'DDAA', 'uploads/partners/partner_56cc490ac254d.jpg', 0, '2016-02-23 12:56:58', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phamacies`
--

CREATE TABLE IF NOT EXISTS `tbl_phamacies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `en_address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `kh_address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `en_background` text COLLATE utf8_unicode_ci NOT NULL,
  `kh_background` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `working_hour` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_distrit` int(10) NOT NULL,
  `id_province` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_phamacies`
--

INSERT INTO `tbl_phamacies` (`id`, `en_name`, `kh_name`, `en_address`, `kh_address`, `en_background`, `kh_background`, `phone`, `working_hour`, `website`, `email`, `image`, `lat`, `lon`, `is_published`, `created_dt`, `modified_dt`, `slug`, `id_distrit`, `id_province`) VALUES
(1, 'asd', 'asd', 'asdf', 'asdf', '<p>a</p>', '<p>a</p>', 'as', 'a', 'adf.com', 'sreynouch09@gmail.com', 'uploads/phamacies/phamacy56cc7d90456d8.jpg', 0, 0, 1, '0000-00-00 00:00:00', '2016-02-26 02:55:32', '1-asd', 6, 21),
(5, 'Sathya', 'Sathya', 'aa', 'aa', '<p>aaaa</p>', '<p>aaa</p>', 'aa', 'aa', 'aaa', 'saya@yahoo.com', 'uploads/phamacies/phamacy56cd81f4b2166.jpg', 0, 0, 1, '0000-00-00 00:00:00', '2016-02-26 02:54:43', '5-Sathya', 2, 2),
(6, 'Lucky', 'Lucky', 'Lucky', 'Lucky', '<p>Lucky</p>', '<p>Lucky</p>', 'Lucky', 'Lucky', 'Lucky', 'a@f.v', 'uploads/phamacies/phamacy56cd85e08fbb7.jpg', 11.556, 0, 1, '0000-00-00 00:00:00', '2016-02-26 02:53:38', '6-Lucky', 5, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phamacy_galleries`
--

CREATE TABLE IF NOT EXISTS `tbl_phamacy_galleries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_phamacy` int(10) NOT NULL,
  `en_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_phamacy_galleries`
--

INSERT INTO `tbl_phamacy_galleries` (`id`, `id_phamacy`, `en_title`, `kh_title`, `image`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 4, 'asdf', 'asd', 'uploads/phamacy-galleries/phamacy_gallery_56cc832711c92.jpg', 1, '0000-00-00 00:00:00', '2016-02-23 17:04:55'),
(2, 5, 'sadf', 'sada', 'uploads/phamacy-galleries/phamacy_gallery_56cd85096198c.jpg', 1, '0000-00-00 00:00:00', '2016-02-24 11:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phones`
--

CREATE TABLE IF NOT EXISTS `tbl_phones` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_type` int(10) NOT NULL,
  `id_province` int(10) NOT NULL,
  `id_distrit` int(10) NOT NULL,
  `en_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  `is_featured` bigint(20) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_phones`
--

INSERT INTO `tbl_phones` (`id`, `id_type`, `id_province`, `id_distrit`, `en_name`, `kh_name`, `phone`, `is_published`, `modified_dt`, `created_dt`, `is_featured`) VALUES
(2, 5, 2, 171, 'police Ruessey Kev', 'police Ruessey Kev', '097 778 0029', 1, '2016-03-18 05:55:33', '0000-00-00 00:00:00', 1),
(3, 5, 2, 168, 'police Tuol Kouk', 'police Tuol Kouk', '097 778 0028', 1, '2016-03-18 05:53:28', '0000-00-00 00:00:00', 1),
(4, 5, 2, 171, 'Police Roeusy Keo', 'Police Roeusy Keo', '0977780030', 1, '2016-03-18 03:43:20', '0000-00-00 00:00:00', 1),
(5, 5, 2, 167, '7 Makara', '7 Makara', '097 778 0027', 1, '2016-03-18 03:44:34', '0000-00-00 00:00:00', 1),
(6, 5, 2, 3, 'Police Doun Penh', 'Police Doun Penh', '012 999 999', 1, '2016-03-18 03:47:25', '0000-00-00 00:00:00', 1),
(7, 5, 2, 169, 'Police Dangkao', 'Police Dangkao', '097 778 0030', 1, '2016-03-18 05:56:45', '0000-00-00 00:00:00', 1),
(8, 7, 2, 165, 'Police Chamkar Mon', 'Police Chamkar Mon', '097 778 0031', 1, '2016-03-18 05:57:36', '0000-00-00 00:00:00', 1),
(9, 5, 2, 4, 'Police Sen sok', 'Police Sen sok ', '097 778 0033', 1, '2016-03-18 05:58:29', '0000-00-00 00:00:00', 1),
(10, 6, 2, 2, 'Health service Tek Thla', 'Health service Tek Thla', '012 587 344 / 012 718 324', 1, '2016-03-18 06:02:04', '0000-00-00 00:00:00', 1),
(11, 6, 2, 166, 'Health service Doun Pemh ', 'Health service Doun Penh', '012 788 430 / 011 770 786', 1, '2016-03-18 06:03:57', '0000-00-00 00:00:00', 1),
(12, 6, 2, 165, 'Health service Chamkar Mon', 'Health service Chamkar Mon', '012 830 271 / 012 838 619', 1, '2016-03-18 06:05:18', '0000-00-00 00:00:00', 1),
(13, 6, 2, 172, 'Health service cambodai''s hope', 'Health service cambodai''s hope', '023 986 715 / 012 844 449 / 011 657 148', 1, '2016-03-18 06:12:54', '0000-00-00 00:00:00', 1),
(14, 6, 2, 169, 'Clinical Mariscob International cambodai', 'Clinical Mariscob International cambodai', '077 959 170 / 023 720 125', 1, '2016-03-18 06:21:01', '0000-00-00 00:00:00', 1),
(15, 6, 2, 167, 'RHAC', 'RHAC', '023 881 621 ', 1, '2016-03-18 06:23:44', '0000-00-00 00:00:00', 1),
(16, 6, 2, 171, 'RHAC', 'RHAC', '023 990 773', 1, '2016-03-18 06:24:28', '0000-00-00 00:00:00', 1),
(17, 6, 2, 4, 'RHAC', 'RHAC', '023 216 504 / 023 883 026', 1, '2016-03-18 06:25:32', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phone_types`
--

CREATE TABLE IF NOT EXISTS `tbl_phone_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_phone_types`
--

INSERT INTO `tbl_phone_types` (`id`, `en_name`, `kh_name`, `is_published`, `created_dt`, `modified_dt`) VALUES
(2, 'Ambulance', 'Ambulance', 1, '0000-00-00 00:00:00', '2016-03-18 03:36:06'),
(3, 'Hospital', 'Hospital', 1, '0000-00-00 00:00:00', '2016-03-18 03:36:31'),
(4, 'Fire Fighter', 'Fire Fighter', 1, '0000-00-00 00:00:00', '2016-03-18 03:36:50'),
(5, 'Traffic Police', 'Traffic Police', 1, '0000-00-00 00:00:00', '2016-03-18 03:37:22'),
(6, 'Health Service', 'Health Service', 1, '0000-00-00 00:00:00', '2016-03-18 05:05:49'),
(7, 'Law Consultant', 'Law Consultant', 1, '0000-00-00 00:00:00', '2016-03-18 05:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programes`
--

CREATE TABLE IF NOT EXISTS `tbl_programes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `data_order` int(10) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_programes`
--

INSERT INTO `tbl_programes` (`id`, `en_name`, `kh_name`, `url`, `image`, `is_published`, `modified_dt`, `data_order`, `created_dt`) VALUES
(1, 'sadfasd', 'sdafasd', 'https://www.facebook.com/Krupetcom-137344823272389/', 'uploads/programes/programe_567f9536c51c9.jpg', 1, '2016-01-12 04:36:16', 2, '0000-00-00 00:00:00'),
(4, 'a', 'b', '#', 'uploads/programes/programe_56a0be7502abe.jpg', 0, '2016-01-21 12:18:13', 3, '0000-00-00 00:00:00'),
(5, 'x', 'x', '#', 'uploads/programes/programe_56a0c10556da0.jpg', 1, '2016-01-21 12:29:09', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE IF NOT EXISTS `tbl_provinces` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) NOT NULL,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `lat` float NOT NULL,
  `lon` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_provinces`
--

INSERT INTO `tbl_provinces` (`id`, `alias`, `en_name`, `kh_name`, `en_description`, `kh_description`, `is_published`, `created_dt`, `modified_dt`, `lat`, `lon`) VALUES
(1, 'kratie', 'Kratie', 'ក្រចេះ', 'adslfj', 'asdfas', 1, '0000-00-00 00:00:00', '2015-12-31 16:04:51', 0, 0),
(2, 'phnom penh', 'Phnom Penh', 'ភ្នំពេញ', '', '', 1, '2015-12-23 01:37:18', '2015-12-22 01:37:24', 0, 0),
(3, '', 'Banteay Meanchey', 'បន្ទាយមានជ័យ', 'asr', 'a', 1, '0000-00-00 00:00:00', '2015-12-27 17:58:12', 0, 0),
(4, '', 'Battambang', 'បាត់ដំបង', 'a', 'a', 1, '0000-00-00 00:00:00', '2015-12-27 17:58:43', 0, 0),
(5, '', 'Kampong Cham', 'ខេត្តកំពង់ចាម', 'df', 'd', 1, '0000-00-00 00:00:00', '2015-12-27 17:59:07', 0, 0),
(6, '', 'Kampong Chhnang', 'កំពង់ឆ្នាំង', 'a', 'd', 1, '0000-00-00 00:00:00', '2015-12-27 17:59:35', 0, 0),
(7, '', 'Kampong Speu', 'កំពង់ស្ពឺ', 'a', 'za', 1, '0000-00-00 00:00:00', '2015-12-27 18:00:01', 0, 0),
(8, '', 'Kampong Thom', 'កំពង់ធំ', 'a', 's', 1, '0000-00-00 00:00:00', '2015-12-27 18:00:24', 0, 0),
(9, '', 'Kampot', 'កំពត', 'q', 'q', 1, '0000-00-00 00:00:00', '2015-12-27 18:00:55', 0, 0),
(10, '', 'Kandal', 'កណ្តាល', '1', '1', 1, '0000-00-00 00:00:00', '2015-12-27 18:01:22', 0, 0),
(11, '', 'Koh Kong', 'កោះកុង', 'q', 'w', 1, '0000-00-00 00:00:00', '2015-12-27 18:01:47', 0, 0),
(12, '', 'Mondul Kiri', 'មណ្ឌលគិរី', 'e', 'e', 1, '0000-00-00 00:00:00', '2015-12-27 18:02:13', 0, 0),
(13, '', 'Ouddar Meanchey', 'ឧត្តរមានជ័យ', '1', '2', 1, '0000-00-00 00:00:00', '2015-12-27 18:02:40', 0, 0),
(14, '', 'Preah Vihear', 'ព្រះវិហារ', '33', '3', 1, '0000-00-00 00:00:00', '2015-12-27 18:03:03', 0, 0),
(15, '', 'Prey Veng', 'ព្រៃវែង', 'v', 'v', 1, '0000-00-00 00:00:00', '2015-12-27 18:03:28', 0, 0),
(16, '', 'Pursat', 'ពោធិសាត់', 'Pursat', 'Pursat', 1, '0000-00-00 00:00:00', '2015-12-27 18:03:54', 0, 0),
(17, '', 'Ratanak Kiri', 'រតនគិរី', 'Ratanak Kiri', 'Ratanak Kiri', 1, '0000-00-00 00:00:00', '2015-12-27 18:04:17', 0, 0),
(18, '', 'Siem Reap', 'សៀមរាប', 'Siem Reap', 'Siem Reap', 1, '0000-00-00 00:00:00', '2015-12-27 18:04:44', 0, 0),
(19, '', 'Stung Treng', 'ស្ទឹងត្រែង', 'Stung Treng', 'Stung TrengStung Treng', 1, '0000-00-00 00:00:00', '2015-12-27 18:05:04', 0, 0),
(20, '', 'Svay Rieng', 'ស្វាយរៀង', 'Svay Rieng', 'Svay Rieng', 1, '0000-00-00 00:00:00', '2015-12-27 18:05:25', 0, 0),
(21, '', 'Takeo', 'តាកែវ', 'Takeo', 'Takeo', 1, '0000-00-00 00:00:00', '2016-02-25 09:45:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_raters`
--

CREATE TABLE IF NOT EXISTS `tbl_raters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fb_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` datetime NOT NULL,
  `gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_raters`
--

INSERT INTO `tbl_raters` (`id`, `name`, `email`, `fb_id`, `profile`, `created_dt`, `gender`) VALUES
(3, 'Khouch Koeun', 'koeun_math@yahoo.com', '791351847636392', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlf1/v/t1.0-1/p50x50/94403…f8cb5f0b8e&oe=579281EB&__gda__=1467679386_682267c1515838b5f11ce927b1591cb4', '2016-03-24 05:51:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_servay_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_servay_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) NOT NULL,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `en_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kh_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_servay_questions`
--

INSERT INTO `tbl_servay_questions` (`id`, `type`, `en_name`, `kh_name`, `en_question`, `kh_question`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 1, 'Effective', 'Effective', 'Die?', 'Die?', 1, '0000-00-00 00:00:00', '2016-02-28 06:39:40'),
(2, 1, 'Fee', 'Fee', 'Expensive?', 'Expensive?', 1, '0000-00-00 00:00:00', '2016-02-28 06:40:07'),
(3, 1, 'Service', 'Service', 'Bad?', 'Bad', 1, '0000-00-00 00:00:00', '2016-02-28 06:40:58'),
(4, 1, 'ABC', 'sdf', 'How you satisfy this hospital?', 'How you satisfy this hospital?', 1, '0000-00-00 00:00:00', '2016-02-28 08:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE IF NOT EXISTS `tbl_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_service_category` int(10) NOT NULL,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `id_service_category`, `en_name`, `kh_name`, `en_description`, `kh_description`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 1, 'Service C', 'Service C', 'sad', 'sad', 1, '0000-00-00 00:00:00', '2016-02-05 14:14:17'),
(2, 2, 'Service B', 'Service B', 'df', 'fgh', 1, '0000-00-00 00:00:00', '2016-02-05 14:13:51'),
(3, 2, 'Service A', 'Service A', 'x', 'x', 1, '0000-00-00 00:00:00', '2016-02-05 14:14:08'),
(4, 2, 'Cardiology ', 'Cardiology ', '123', '123', 1, '0000-00-00 00:00:00', '2016-02-05 14:27:52'),
(5, 0, 'Emergency Ambulance', 'Emergency Ambulance', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:11:11'),
(7, 0, 'Gastroenterology', 'Gastroenterology', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:12:15'),
(8, 0, 'General & Internal Medicine', 'General & Internal Medicine', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:12:44'),
(9, 0, 'General Surgery', 'General Surgery', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:13:08'),
(10, 2, 'Ear, Nose and Throat', 'Ear, Nose and Throat', '123', '123', 1, '0000-00-00 00:00:00', '2016-02-05 14:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_categores`
--

CREATE TABLE IF NOT EXISTS `tbl_service_categores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_service_categores`
--

INSERT INTO `tbl_service_categores` (`id`, `en_name`, `kh_name`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 'Category B', 'Category B', 1, '0000-00-00 00:00:00', '2016-02-05 05:52:49'),
(2, 'Category A', 'Category A', 1, '0000-00-00 00:00:00', '2016-02-05 05:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sex`
--

CREATE TABLE IF NOT EXISTS `tbl_sex` (
  `id` int(11) NOT NULL DEFAULT '0',
  `en_name` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sex`
--

INSERT INTO `tbl_sex` (`id`, `en_name`, `kh_name`, `is_published`) VALUES
(1, 'Male', 'Male', 1),
(2, 'Femal', 'Female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialists`
--

CREATE TABLE IF NOT EXISTS `tbl_specialists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `tbl_specialists`
--

INSERT INTO `tbl_specialists` (`id`, `en_name`, `kh_name`, `en_description`, `kh_description`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 'Addiction psychiatrist', 'Addiction psychiatrist', '', '', 1, '2015-12-15 08:11:19', '2015-12-26 14:58:24'),
(3, 'Adolescent medicine specialist', 'Adolescent medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 14:58:51'),
(4, 'Allergist (immunologist)', 'Allergist (immunologist)', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 14:59:21'),
(5, 'Anesthesiologist', 'Anesthesiologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:00:55'),
(6, 'Cardiac electrophysiologist', 'Cardiac electrophysiologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:01:29'),
(7, 'Cardiologist', 'Cardiologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:02:14'),
(8, 'Cardiovascular surgeon', 'Cardiovascular surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:02:32'),
(9, 'Colon and rectal surgeon', 'Colon and rectal surgeon', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:03:06'),
(10, 'Critical care medicine specialist', 'Critical care medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:03:31'),
(11, 'Dermatologist', 'Dermatologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:03:54'),
(12, 'Developmental pediatrician', 'Developmental pediatrician', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:04:10'),
(13, 'Emergency medicine specialist', 'Emergency medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:04:37'),
(14, 'Endocrinologist', 'Endocrinologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:04:55'),
(15, 'Family medicine physician', 'Family medicine physician', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:05:22'),
(16, 'Forensic pathologist', 'Forensic pathologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:05:45'),
(17, 'Gastroenterologist', 'Gastroenterologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:06:07'),
(18, 'Geriatric medicine specialist', 'Geriatric medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:07:01'),
(19, 'Gynecologist', 'Gynecologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:07:14'),
(20, 'Gynecologic oncologist', 'Gynecologic oncologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:07:52'),
(21, 'Hand surgeon', 'Hand surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:08:27'),
(22, 'Hematologist', 'Hematologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:08:47'),
(23, 'Hepatologist', 'Hepatologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:09:07'),
(24, 'Hospitalist', 'Hospitalist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:09:24'),
(25, 'Hospice and palliative medicine specialist', 'Hospice and palliative medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:00'),
(26, 'Hyperbaric physician', 'Hyperbaric physician', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:10:11'),
(27, 'Infectious disease specialist', 'Infectious disease specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:34'),
(28, 'Internist', 'Internist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:10:52'),
(29, 'Interventional cardiologist', 'Interventional cardiologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:11:16'),
(30, 'Medical examiner', 'Medical examiner', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:12:33'),
(31, 'Medical geneticist', 'Medical geneticist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:13:59'),
(32, 'Neonatologist', 'Neonatologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:15:06'),
(33, 'Nephrologist', 'Nephrologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:15:38'),
(34, 'Neurological surgeon', 'Neurological surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:15:51'),
(35, 'Neurologist', 'Neurologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:16:13'),
(36, 'Nuclear medicine specialist', 'Nuclear medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:16:32'),
(37, 'Obstetrician', 'Obstetrician', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:16:55'),
(38, 'Occupational medicine specialist', 'Occupational medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:17:14'),
(39, 'Oncologist', 'Oncologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:17:44'),
(40, 'Ophthalmologist', 'Ophthalmologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:17:57'),
(41, 'Oral surgeon (maxillofacial surgeon)', 'Oral surgeon (maxillofacial surgeon)', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:18:16'),
(42, 'Orthopedic surgeon', 'Orthopedic surgeon', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:18:34'),
(43, 'Otolaryngologist (ear, nose, and throat specialist)', 'Otolaryngologist (ear, nose, and throat specialist)', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:18:53'),
(44, 'Pain management specialist', 'Pain management specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:19:07'),
(45, 'Pathologist', 'Pathologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:19:36'),
(46, 'Pediatrician', 'Pediatrician', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:19:49'),
(47, 'Perinatologist', 'Perinatologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:20:22'),
(48, 'Physiatrist', 'Physiatrist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:20:34'),
(49, 'Plastic surgeon', 'Plastic surgeon', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:21:04'),
(50, 'Psychiatrist', 'Psychiatrist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:21:13'),
(51, 'Pulmonologist', 'Pulmonologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:21:29'),
(52, 'Radiation oncologist', 'Radiation oncologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:21:47'),
(53, 'Radiologist', 'Radiologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:22:03'),
(54, 'Reproductive endocrinologist', 'Reproductive endocrinologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:22:20'),
(55, 'Rheumatologist', 'Rheumatologist', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:22:45'),
(56, 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:23:05'),
(57, 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:23:27'),
(58, 'Spinal cord injury specialist', 'Spinal cord injury specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:24:24'),
(59, 'Sports medicine specialist', 'Sports medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:25:09'),
(60, 'Surgeon', 'Surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:26:09'),
(61, 'Thoracic surgeon', 'Thoracic surgeon', '', '', 1, '0000-00-00 00:00:00', '2015-12-26 15:26:27'),
(62, 'Urologist', 'Urologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:26:48'),
(63, 'Vascular surgeon', 'Vascular surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:27:04'),
(64, 'Gynecologist and Obstetrician ', 'Gynecologist and Obstetrician ', '', '', 0, '0000-00-00 00:00:00', '2016-01-19 03:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE IF NOT EXISTS `tbl_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lan` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `email` varchar(59) NOT NULL,
  `created_dt` datetime NOT NULL,
  `unactive_dt` datetime NOT NULL,
  `unactive_code` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`id`, `lan`, `is_active`, `email`, `created_dt`, `unactive_dt`, `unactive_code`) VALUES
(13, 'kh', 1, 'dara@yahoo.com', '2016-03-25 15:56:50', '0000-00-00 00:00:00', 'dara@yahoo.com-56f551b2e6cb7'),
(12, 'kh', 1, 'koeun_math@yahoo.com', '2016-03-25 15:48:11', '0000-00-00 00:00:00', 'koeun_math@yahoo.com-56f54fab0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tags`
--

CREATE TABLE IF NOT EXISTS `tbl_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_tags`
--

INSERT INTO `tbl_tags` (`id`, `en_name`, `kh_name`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 'D', 'D', 1, '0000-00-00 00:00:00', '2016-02-26 17:16:31'),
(2, 'C', 'C', 1, '0000-00-00 00:00:00', '2016-02-26 17:16:19'),
(3, 'B', 'B', 1, '0000-00-00 00:00:00', '2016-02-26 17:16:03'),
(4, 'Cofee', 'Cofee', 1, '0000-00-00 00:00:00', '2016-02-28 09:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vertical_ads_displays`
--

CREATE TABLE IF NOT EXISTS `tbl_vertical_ads_displays` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_page` int(10) NOT NULL,
  `id_ad` int(10) NOT NULL,
  `is_next` tinyint(1) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_vertical_ads_displays`
--

INSERT INTO `tbl_vertical_ads_displays` (`id`, `id_page`, `id_ad`, `is_next`, `note`, `is_published`, `created_dt`, `modified_dt`) VALUES
(12, 1, 2, 0, '', 0, '0000-00-00 00:00:00', '2016-03-13 02:54:52'),
(13, 1, 3, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 02:57:35'),
(14, 1, 2, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 04:10:34'),
(15, 2, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 04:38:22'),
(16, 2, 2, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 04:40:34'),
(17, 3, 2, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 04:42:42'),
(18, 22, 2, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 04:45:43'),
(19, 4, 2, 0, '', 0, '0000-00-00 00:00:00', '2016-03-13 04:48:31'),
(20, 4, 3, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 04:50:04'),
(21, 5, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 04:52:17'),
(22, 6, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 04:56:18'),
(23, 18, 2, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:01:47'),
(24, 20, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:04:09'),
(25, 19, 3, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 05:06:51'),
(26, 9, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:11:16'),
(27, 7, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:11:25'),
(28, 8, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:12:31'),
(29, 11, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:14:22'),
(30, 12, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:16:55'),
(31, 15, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:17:28'),
(32, 17, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:17:57'),
(33, 16, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:20:46');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_blog_for_search`
--
CREATE TABLE IF NOT EXISTS `view_blog_for_search` (
`slug` varchar(100)
,`id_category` int(10)
,`en_title` varchar(100)
,`kh_title` varchar(100)
,`en_pre_content` varchar(250)
,`kh_pre_content` varchar(250)
,`image` varchar(100)
,`created_dt` datetime
,`en_tag` varchar(150)
,`kh_tag` varchar(150)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_doctors_for_searching`
--
CREATE TABLE IF NOT EXISTS `view_doctors_for_searching` (
`id` int(10)
,`slug` varchar(100)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`en_title` varchar(250)
,`kh_title` varchar(250)
,`en_degree` text
,`kh_degree` text
,`phone` varchar(100)
,`email` varchar(100)
,`en_background` text
,`kh_background` text
,`en_experience` text
,`kh_experience` text
,`image` varchar(250)
,`en_specification` varchar(100)
,`kh_specification` varchar(100)
,`en_province` varchar(100)
,`kh_province` varchar(100)
,`en_distrit` varchar(150)
,`kh_distrit` varchar(150)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_doctor_hospitals`
--
CREATE TABLE IF NOT EXISTS `view_doctor_hospitals` (
`id_hospital` int(12)
,`id_doctor` int(12)
,`en_name` varchar(100)
,`slug` varchar(100)
,`kh_name` varchar(100)
,`en_province` varchar(100)
,`kh_province` varchar(100)
,`en_background` text
,`kh_background` text
,`image` varchar(250)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_doctor_services`
--
CREATE TABLE IF NOT EXISTS `view_doctor_services` (
`id_doctor` int(12)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`price` varchar(122)
,`en_note` text
,`kh_note` text
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospitals_for_searhing`
--
CREATE TABLE IF NOT EXISTS `view_hospitals_for_searhing` (
`id` int(10)
,`slug` varchar(100)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`en_background` text
,`kh_background` text
,`image` varchar(250)
,`en_cat` varchar(20)
,`kh_cat` varchar(20)
,`en_type` varchar(50)
,`kh_type` varchar(50)
,`en_specification` varchar(100)
,`kh_specification` varchar(100)
,`phone` varchar(100)
,`email` varchar(30)
,`en_address` varchar(100)
,`kh_address` varchar(100)
,`lat` double
,`lon` double
,`en_province` varchar(100)
,`kh_province` varchar(100)
,`en_distrit` varchar(150)
,`kh_distrit` varchar(150)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospital_doctors`
--
CREATE TABLE IF NOT EXISTS `view_hospital_doctors` (
`id_hospital` int(12)
,`id_doctor` int(12)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`en_specialist` varchar(100)
,`kh_specialist` varchar(100)
,`en_background` text
,`kh_background` text
,`image` varchar(250)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospital_info`
--
CREATE TABLE IF NOT EXISTS `view_hospital_info` (
`id` int(10)
,`slug` varchar(100)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`en_director` varchar(100)
,`kh_director` varchar(100)
,`en_background` text
,`kh_background` text
,`image` varchar(250)
,`id_hospital_category` int(10)
,`phone` varchar(100)
,`email` varchar(30)
,`en_address` varchar(100)
,`kh_address` varchar(100)
,`website` varchar(50)
,`lat` double
,`lon` double
,`working_hours` varchar(250)
,`en_cat` varchar(20)
,`kh_cat` varchar(20)
,`kh_type` varchar(50)
,`en_type` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospital_rating_score`
--
CREATE TABLE IF NOT EXISTS `view_hospital_rating_score` (
`name` varchar(100)
,`question` varchar(200)
,`score` int(5)
,`id_hospital_rating` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospital_services`
--
CREATE TABLE IF NOT EXISTS `view_hospital_services` (
`id_hospital` int(10)
,`en_department` varchar(100)
,`kh_department` varchar(100)
,`en_name` varchar(100)
,`kh_name` varchar(100)
,`price` varchar(100)
,`en_note` text
,`kh_note` text
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_phamacy_for_search`
--
CREATE TABLE IF NOT EXISTS `view_phamacy_for_search` (
`id` int(10)
,`slug` varchar(100)
,`image` varchar(150)
,`en_name` varchar(150)
,`kh_name` varchar(150)
,`email` varchar(150)
,`phone` varchar(100)
,`en_province_name` varchar(100)
,`kh_province_name` varchar(100)
,`en_distrit_name` varchar(150)
,`kh_distrit_name` varchar(150)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_rating_data`
--
CREATE TABLE IF NOT EXISTS `view_rating_data` (
`code` varchar(30)
,`is_recommended` tinyint(1)
,`total_score` decimal(32,0)
,`num_of_score_divider` bigint(21)
,`id_hospital` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `view_blog_for_search`
--
DROP TABLE IF EXISTS `view_blog_for_search`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog_for_search` AS select `b`.`slug` AS `slug`,`b`.`id_category` AS `id_category`,`b`.`en_title` AS `en_title`,`b`.`kh_title` AS `kh_title`,`b`.`en_pre_content` AS `en_pre_content`,`b`.`kh_pre_content` AS `kh_pre_content`,`b`.`image` AS `image`,`b`.`created_dt` AS `created_dt`,`t`.`en_name` AS `en_tag`,`t`.`kh_name` AS `kh_tag` from ((`tbl_blogs` `b` join `tbl_blog_tags` `b_t` on((`b_t`.`id_blog` = `b`.`id`))) join `tbl_tags` `t` on((`t`.`id` = `b_t`.`id_tag`))) where ((`b`.`is_published` = 1) and (`t`.`is_published` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_doctors_for_searching`
--
DROP TABLE IF EXISTS `view_doctors_for_searching`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctors_for_searching` AS select `d`.`id` AS `id`,`d`.`slug` AS `slug`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`d`.`en_title` AS `en_title`,`d`.`kh_title` AS `kh_title`,`d`.`en_degree` AS `en_degree`,`d`.`kh_degree` AS `kh_degree`,`d`.`phone` AS `phone`,`d`.`email` AS `email`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`en_experien` AS `en_experience`,`d`.`kh_experien` AS `kh_experience`,`d`.`image` AS `image`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`di`.`en_name` AS `en_distrit`,`di`.`kh_name` AS `kh_distrit` from (((`tbl_doctors` `d` join `tbl_specialists` `s` on((`s`.`id` = `d`.`id_specialist`))) join `tbl_provinces` `p` on((`p`.`id` = `d`.`id_province`))) join `tbl_distrits` `di` on((`di`.`id` = `d`.`id_distrit`))) where ((`d`.`is_published` = 1) and (`s`.`is_published` = 1) and (`di`.`is_published` = 1) and (`p`.`is_published` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_doctor_hospitals`
--
DROP TABLE IF EXISTS `view_doctor_hospitals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctor_hospitals` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`h`.`en_name` AS `en_name`,`h`.`slug` AS `slug`,`h`.`kh_name` AS `kh_name`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_hospitals` `h` on((`h_d`.`id_hospital` = `h`.`id`))) join `tbl_provinces` `p` on((`h`.`id_province` = `p`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_doctor_services`
--
DROP TABLE IF EXISTS `view_doctor_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctor_services` AS select `d_s`.`id_doctor` AS `id_doctor`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`d_s`.`price` AS `price`,`d_s`.`en_note` AS `en_note`,`d_s`.`kh_note` AS `kh_note` from (`tbl_doctor_services` `d_s` join `tbl_services` `s` on((`s`.`id` = `d_s`.`id_service`)));

-- --------------------------------------------------------

--
-- Structure for view `view_hospitals_for_searhing`
--
DROP TABLE IF EXISTS `view_hospitals_for_searhing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospitals_for_searhing` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `en_type`,`t`.`kh_name` AS `kh_type`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`d`.`en_name` AS `en_distrit`,`d`.`kh_name` AS `kh_distrit` from (((((((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_specialists` `h_s` on((`h`.`id` = `h_s`.`id_hospital`))) join `tbl_specialists` `s` on((`h_s`.`id_specialist` = `s`.`id`))) join `tbl_hospital_branches` `b` on((`h`.`id` = `b`.`id_hospital`))) join `tbl_provinces` `p` on((`b`.`id_province` = `p`.`id`))) join `tbl_distrits` `d` on((`b`.`id_distrit` = `d`.`id`))) where ((`h`.`is_published` = 1) and (`p`.`is_published` = 1) and (`d`.`is_published` = 1) and (`b`.`is_default` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_doctors`
--
DROP TABLE IF EXISTS `view_hospital_doctors`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_doctors` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`s`.`en_name` AS `en_specialist`,`s`.`kh_name` AS `kh_specialist`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_doctors` `d` on((`h_d`.`id_doctor` = `d`.`id`))) join `tbl_specialists` `s` on((`d`.`id_specialist` = `s`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_info`
--
DROP TABLE IF EXISTS `view_hospital_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_info` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_director` AS `en_director`,`h`.`kh_director` AS `kh_director`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`h`.`id_hospital_category` AS `id_hospital_category`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`website` AS `website`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`b`.`working_hours` AS `working_hours`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `kh_type`,`t`.`kh_name` AS `en_type` from (((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h`.`id`))) where ((`h`.`is_published` = 1) and (`b`.`is_default` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_rating_score`
--
DROP TABLE IF EXISTS `view_hospital_rating_score`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_rating_score` AS select `q`.`en_name` AS `name`,`q`.`en_question` AS `question`,`h_r_s`.`score` AS `score`,`h_r_s`.`id_hospital_rating` AS `id_hospital_rating` from (`tbl_servay_questions` `q` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_question` = `q`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_services`
--
DROP TABLE IF EXISTS `view_hospital_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_services` AS select `h_s`.`id_hospital` AS `id_hospital`,`d`.`en_name` AS `en_department`,`d`.`kh_name` AS `kh_department`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`h_s`.`price` AS `price`,`h_s`.`en_note` AS `en_note`,`h_s`.`kh_note` AS `kh_note` from ((`tbl_hospital_services` `h_s` join `tbl_services` `s` on((`s`.`id` = `h_s`.`id_service`))) join `tbl_service_categores` `d` on((`d`.`id` = `s`.`id_service_category`)));

-- --------------------------------------------------------

--
-- Structure for view `view_phamacy_for_search`
--
DROP TABLE IF EXISTS `view_phamacy_for_search`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_phamacy_for_search` AS select `ph`.`id` AS `id`,`ph`.`slug` AS `slug`,`ph`.`image` AS `image`,`ph`.`en_name` AS `en_name`,`ph`.`kh_name` AS `kh_name`,`ph`.`email` AS `email`,`ph`.`phone` AS `phone`,`pr`.`en_name` AS `en_province_name`,`pr`.`kh_name` AS `kh_province_name`,`d`.`en_name` AS `en_distrit_name`,`d`.`kh_name` AS `kh_distrit_name` from ((`tbl_phamacies` `ph` join `tbl_provinces` `pr` on((`pr`.`id` = `ph`.`id_province`))) join `tbl_distrits` `d` on((`d`.`id` = `ph`.`id_distrit`))) where ((`ph`.`is_published` = 1) and (`pr`.`is_published` = 1) and (`d`.`is_published` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_rating_data`
--
DROP TABLE IF EXISTS `view_rating_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rating_data` AS select `h_r`.`code` AS `code`,`h_r`.`is_recommended` AS `is_recommended`,sum(`h_r_s`.`score`) AS `total_score`,count(`h_r_s`.`id`) AS `num_of_score_divider`,`h_r`.`id_hospital` AS `id_hospital` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r`.`id_hospital`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
