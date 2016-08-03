-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2016 at 03:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `krupet`
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
(2, 'Ads 1', '#', 'uploads/advertisments/advertisment_56af7cb2c3252.jpg', 'uploads/advertisments/advertisment_56af7cb2c571b.jpg', 0, 0, '0000-00-00 00:00:00', '2016-02-04 17:23:28'),
(3, 'Ads 2', '#', 'uploads/advertisments/advertisment_56b20eddbd09b.jpg', 'uploads/advertisments/advertisment_56b20f030119b.jpg', 0, 0, '0000-00-00 00:00:00', '2016-02-03 15:30:27');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(12, 2, 'Tobacco Companies Sued Over Cancer-Causing Substances in E-Cigarettes', 'ក្រុមហ៊ុនថ្នាំជក់ប្តឹងបង្កជំងឺមហារីកក្នុងអ៊ីបារី', 'A lawsuit by environmental watchdog group CEH targets tobacco and e-cigarette companies whose products the group says emit two toxic chemicals.\r\n', 'ពាក្យបណ្តឹងដោយក្រុមអង្គការឃ្លាំមើលបរិស្ថានបាន CEH មួយផ្តោតសំខាន់លើក្រុមហ៊ុនថ្នាំជក់និង e-បារីដែលផលិតផលរបស់ក្រុមនេះបាននិយាយថាបញ្ចេញសារធាតុគីមីពុលទាំងពីរនាក់។', '<p>Several brands of electronic cigarettes, e-liquids, and other vaping products give off high levels of two cancer-causing chemicals even during normal use, according to tests commissioned by the Center for Environmental Health (CEH).</p>\r\n<p>“More than half of the products we tested had levels above the California safety standard,” Charles Margulis, media director for CEH, told Healthline, and “many of the products were quite high.”</p>\r\n<p>The tests prompted the nonprofit to file lawsuits against tobacco and other e-cigarette companies for failing to warn consumers about these chemicals, as required by Proposition 65, California’s consumer protection law.</p>\r\n<p>CEH’s announcement comes on the same day as the American Cancer Society’s Great American Smokeout, an event designed to help people give up tobacco.</p>', '<p>មានម៉ាកបារីអេឡិចត្រូនិជាច្រើន, អ៊ីរាវនិងផលិតផល vaping ដទៃទៀតផ្តល់ឱ្យបិទកម្រិតខ្ពស់នៃសារធាតុគីមីបង្កមហារីកទាំងពីរនាក់សូម្បីតែក្នុងការប្រើប្រាស់ធម្មតានេះបើយោងតាមការធ្វើតេស្តបានទទួលបន្ទុកដោយមជ្ឈមណ្ឌលសុខភាពបរិស្ថាន (CEH) ។</p>\r\n<p>"ជាងពាក់កណ្តានៃផលិតផលដែលយើងបានធ្វើតេស្តមានកម្រិតស្ដង់ដារសុវត្ថិភាពនៅខាងលើកាលីហ្វញ៉ា" លោក Charles Margulis នាយកប្រព័ន្ធផ្សព្វផ្សាយសម្រាប់ CEH បានថ្លែងប្រាប់ Healthline និង«មនុស្សជាច្រើននៃផលិតផលក្នុងចំនួនយ៉ាងខ្ពស់»។</p>\r\n<p>ការធ្វើតេស្តនេះបានជំរុញមិនរកកម្រៃដើម្បីដាក់ពាក្យបណ្តឹងប្រឆាំងនឹងថ្នាំជក់និងក្រុមហ៊ុនអេឡិចត្រូនិបារីផ្សេងទៀតសម្រាប់ការបរាជ័យក្នុងការព្រមានអតិថិជនអំពីសារធាតុគីមីទាំងនេះដូចដែលតម្រូវដោយសំណើ 65, ច្បាប់ការពារអតិថិជនរបស់រដ្ឋ California ។</p>\r\n<p>សេចក្តីប្រកាស CEH មកនៅថ្ងៃដដែលនោះជាការសមាគមន៍ជំងឺមហារីកអាមេរិករបស់មហាអាមេរិច Smokeout ព្រឹត្តិការណ៍ដែលបានរចនាឡើងដើម្បីជួយប្រជាជនឱ្យឡើងថ្នាំជក់មួយ។</p>', '2016-03-12-Tobacco-Companies-Sued-Over-Cancer-Causing-Substances-in-E-Cigarettes', 'uploads/blogs/blog_567f63d867ff6.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:15:08', 1),
(13, 2, 'Measles Vaccine Has Saved 17 Million Lives Since the Year 2000', 'ថ្នាំបង្ការជំងឺកញ្ជ្រឹលបានរក្សាទុក 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000', 'Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).\r\n', 'កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។', '<p>Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).</p>\r\n\r\n<p>Measles is one of the most contagious diseases ever known. A sick person will infect 90 percent of the unimmunized people with whom he or she comes into contact.</p>\r\n\r\n<p>Though it only rarely kills, children are especially vulnerable.</p>\r\n\r\n<p>Measles<br />\r\nIn 2001, WHO, the CDC, the American Red Cross, the United Nations Foundation, and UNICEF launched the Measles &amp; Rubella Initiative. The goal of the program was to cut deaths by 95 percent by 2015 and to eliminate measles altogether in five of six global regions by 2020.<br />\r\n&nbsp;</p>\r\n', '<p>កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។</p>\r\n\r\n<p>ក្ឹលជាផ្នែកមួយនៃជំងឺឆ្លងបំផុតដែលបានធ្លាប់បានដឹង។ អ្នកជំងឺនឹងឆ្លងបាន 90 ភាគរយនៃប្រជាជន unimmunized ដែលគាត់ឬនាងមានទំនាក់ទំនងជាមួយនរណា។</p>\r\n\r\n<p>ទោះបីជាវាតែកម្រសម្លាប់កុមារដែលងាយរងគ្រោះជាពិសេស។</p>\r\n\r\n<p>ក្ឹល<br />\r\nក្នុងឆ្នាំ 2001 អង្គការសុខភាពពិភពលោកដែលជារបស់ CDC អាមេរិកកាកបាទក្រហមមូលនិធិអង្គការសហប្រជាជាតិនិងអង្គការ UNICEF បានចាប់ផ្តើមគំនិតផ្តួចផ្តើកញ្ជ្រឹលនិងស្អូច។ គោលដៅនៃកម្មវិធីនេះគឺដើម្បីកាត់បន្ថយការស្លាប់ដោយ 95 ភាគរយនៅឆ្នាំ 2015 និងដើម្បីលុបបំបាត់ជំងឺកញ្ជ្រិលទាំងអស់គ្នាក្នុងប្រាំប្រាំមួយតាមតំបន់ជាសកលនៅឆ្នាំ 2020 ។</p>\r\n', '', 'uploads/blogs/blog_567f62fb68bf2.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:03:07', 7),
(14, 2, '9 Misconceptions You Probably Have About HIV/AIDS', '9 យល់ខុសអ្នកប្រហែលជាមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍', 'HIV/AIDS doesn’t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren’t even aware of it.', 'មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។', '<p>HIV/AIDS doesn&rsquo;t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren&rsquo;t even aware of it.</p>\r\n\r\n<p>But while the World Health Organization says that the virus has killed some 39 million people since 1981, HIV (human immunodeficiency virus) and AIDS (acquired immunodeficiency syndrome) continue to be plagued by misinformation.</p>\r\n\r\n<p>We reached out to several experts to get their opinions on what the most glaring misconceptions people in the United States have about HIV/AIDS. They treat people, educate medical students, and provide support to patients coping with the disease. Here are the top nine myths and misconceptions that they, and people with HIV or AIDS, continue to combat:</p>\r\n', '<p>មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។</p>\r\n\r\n<p>ប៉ុន្តែខណៈដែលអង្គការសុខភាពពិភពលោកនិយាយថាវីរុសនេះបានសម្លាប់មនុស្សប្រហែល 39 លាននាក់ចាប់តាំងពីឆ្នាំ 1981 មេរោគអេដស៍ (មេរោគមនុស្ស) និងជំងឺអេដស៍ (បណ្តុំរោគសញ្ញាហ៊ីបានទិញ) បន្តត្រូវបានញាំញីដោយការយល់ច្រឡំ។</p>\r\n\r\n<p>យើងបានឈានដល់ចេញទៅជាអ្នកជំនាញជាច្រើនដើម្បីទទួលបានមតិរបស់ខ្លួននៅលើអ្វីដែលជាការយល់ច្រឡំប្រលោះបំផុតនៅក្នុងការដែលមនុស្សសហរដ្ឋអាមេរិកមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍។ ពួកគេបានព្យាបាលមនុស្ស, អប់រំសិស្សនិស្សិតវេជ្ជសាស្រ្តនិងផ្តល់ការគាំទ្រដល់អ្នកជំងឺតស៊ូជាមួយនឹងជំងឺនេះ។ ខាងក្រោមនេះជារឿងព្រេងកំពូលនិងប្រាំបួនដែលថាពួកគេយល់ច្រឡំនិងអ្នកដែលមានផ្ទុកមេរោគអេដស៍ឬជំងឺអេដស៍នៅតែបន្តការប្រយុទ្ធគឺ:</p>\r\n', '', 'uploads/blogs/blog_567f649613b57.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:09:58', 6),
(15, 2, 'The Best ADHD Podcasts of 2015', 'នេះផតខាស់ ADHD ល្អបំផុតនៃឆ្នាំ 2015', 'Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Research', 'យកចិត្តទុកដាក់ភាពមិនប្រក្រតីឱនភាព (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ', '<p>Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Researchers still aren&rsquo;t sure exactly what causes it, but both genetic and environmental factors are believed to play major roles.</p>\r\n<p>Living with ADHD isn&rsquo;t easy. People with ADHD have trouble focusing on one task. They may fidget or get bored easily. The disorder can make it more difficult to accomplish goals at work or at school, and potentially interfere with your daily life.</p>\r\n<p><br /> Treatments for ADHD include medications, therapy, and educational programs that focus on keeping symptoms under control. While there is no cure, it can be more manageable with understanding and the right coping tools.</p>\r\n<p>These podcasts certainly fit the bill, and might offer some helpful strategies that you can apply in your daily life.</p>', '<p>ឱនភាពយកចិត្តទុកដាក់ជំងឺផ្ចង់អារម្មណ៍ (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ្វីនោះទេប៉ុន្តែកត្តាទាំងពីរហ្សែននិងបរិស្ថានត្រូវបានគេជឿថាដើម្បីដើរតួនាទីសំខាន់មួយ។</p>\r\n<p>ការរស់នៅជាមួយ ADHD គឺមិនមែនជាការងាយស្រួល។ មនុស្សដែលមាន ADHD មានបញ្ហាក្នុងការផ្តោតជាសំខាន់នៅលើភារកិច្ចតែមួយ។ ពួកគេអាចនោមិនសុខឬធុញទ្រាន់យ៉ាងងាយស្រួល។ ជំងឺនេះអាចធ្វើឱ្យវាមានការលំបាកបន្ថែមទៀតដើម្បីសម្រេចបានគោលដៅនៅកន្លែងធ្វើការឬនៅសាលានិងមានសក្តានុពលជ្រៀតជ្រែកជាមួយនឹងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>\r\n<p><br /> ការព្យាបាលសម្រាប់ ADHD រួមមានការប្រើថ្នាំ, ការព្យាបាល, និងកម្មវិធីអប់រំដែលផ្តោតជាសំខាន់នៅលើការរក្សារោគសញ្ញាមួយដែលស្ថិតនៅក្រោមការត្រួតពិនិត្យ។ ខណៈពេលដែលមានគឺជាការព្យាបាលនោះទេ, វាអាចត្រូវបានគ្រប់គ្រងដោយការយល់ដឹងនិងសិទ្ធិតស៊ូឧបករណ៍។</p>\r\n<p>ផតខាស់ទាំងនេះពិតជាសមនឹងវិក័យប័ត្រនិងអាចផ្តល់នូវយុទ្ធសាស្រ្តដែលមានប្រយោជន៍មួយចំនួនដែលអ្នកអាចអនុវត្តនៅក្នុងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>', '2016-02-04-The-Best-ADHD-Podcasts-of-2015', 'uploads/blogs/blog_567f655f6a8c8.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-02-04 12:29:57', 5),
(16, 1, 'Sad Songs Say So Much: The Music You Choose May Say Something About Your Mental Health', 'ចម្រៀងសោកស្តាយនិយាយថាដូច្នេះច្រើន: តន្រ្តីអ្នកជ្រើសអាចនិយាយអ្វីមួយអំពីសុខភាពផ្លូវចិត្តរបស់អ្នក', 'Researchers look into what different types of music do to listeners’ mental state as well as if music can help calm down those who are anxious.', 'អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។', '<p>Researchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p><br />\r\nResearchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p>Music Mental<br />\r\n&ldquo;Help! I need somebody. Help!&rdquo;</p>\r\n\r\n<p>The Beatles blasted out that well-known tune in 1965.</p>\r\n\r\n<p>Whether you prefer pop, heavy metal, or hip-hop, the songs you choose may provide a glimpse into the state of your mental health.</p>\r\n\r\n<p>They may also have long-lasting effects on your mood.</p>\r\n\r\n<p>Can sad songs cheer you up? Do aggressive songs put you on edge? That depends on which expert you are tuning in to.</p>\r\n', '<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p><br />\r\nអ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>តន្ត្រីផ្លូវចិត្ត<br />\r\n&quot;ជួយ! ខ្ញុំ​ត្រូវ​ការ​នរណា​ម្នាក់។ ជំនួយ! &quot;</p>\r\n\r\n<p>ក្រុម Beatles បានផ្ទុះចេញបទភ្លេងល្បីថានៅក្នុងឆ្នាំ 1965 ។</p>\r\n\r\n<p>ថាតើអ្នកចូលចិត្តការលេចលោហៈធ្ងន់ឬហ៊ីបហបចម្រៀងដែលអ្នកបានជ្រើសអាចផ្តល់ឃើញចូលទៅក្នុងស្ថានភាពនៃសុខភាពផ្លូវចិត្តរបស់អ្នក។</p>\r\n\r\n<p>ពួកគេអាចមានឥទ្ធិពលយូរអង្វែងលើអារម្មណ៍របស់អ្នក។</p>\r\n\r\n<p>ច្រៀងបទកម្សត់អាចស្រែកហ៊ោអ្នកឡើង? តើបទចម្រៀងឈ្លានពានដាក់អ្នកនៅលើគែម? ដែលអាស្រ័យទៅលើការដែលជាអ្នកជំនាញដែលអ្នកត្រូវបានបើកនៅក្នុងការទៅ។</p>\r\n', '', 'uploads/blogs/blog_567f6643c2aed.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:14:48', 3),
(17, 1, 'Stage 4 Renal Cell Carcinoma: Treatment and Prognosis', 'ដំណាក់កាលទី 4 ជំងឺមហារីកកោសិកា Renal: ការព្យាបាលនិងការព្យាករណ៍', 'Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including', 'កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាប្រឈមនឹងគ្រោះថ្នាក់ជាច្រើនសម្រាប់ការអភិវឌ្ឍ RCC រួមទាំងការគឺមាន', '<p>Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including:</p>\r\n<p>a family history of the disease<br /> smoking<br /> obesity<br /> polycystic kidney disease<br /> The earlier it’s detected, the greater your chance for effective treatment.</p>\r\n<p>RCC Staging<br /> Doctors who diagnose and treat RCC and other types of cancer use a staging system. Each RCC patient’s cancer is given a number designation ranging from 1 to 4. Stage 1 is the earliest stage of the disease and 4 is the latest and most advanced.</p>', '<p>កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាហានិភ័យក្នុងការវិវត្តទៅ RCC រួមទាំងការគឺ:</p>\r\n<p>ប្រវត្តិគ្រួសារនៃជំងឺនេះ<br /> ការជក់បារី<br /> ការធាត់<br /> ជំងឺតម្រងនោម polycystic<br /> នេះជាឱកាសរបស់អ្នកសំរាប់ការព្យាបាលដែលមានប្រសិទ្ធិភាពកាលពីមុនវាត្រូវបានរកឃើញកាន់តែច្រើន។</p>\r\n<p>ដំណាក់កាល RCC<br /> គ្រូពេទ្យដែលធ្វើរោគវិនិច្ឆ័យនិងព្យាបាល RCC និងប្រភេទដទៃទៀតនៃជំងឺមហារីកប្រើប្រព័ន្ធឆាក។ ជំងឺមហារីកអ្នកជំងឺ RCC នីមួយគឺត្រូវបានផ្តល់ឱ្យមួយចំនួនរាប់ចាប់រចនាពី 1 ទៅ 4 ដំណាក់កាលទី 1 នេះគឺជាដំណាក់កាលដំបូងនៃជំងឺនេះនិងទី 4 គឺជាចុងក្រោយនិងទំនើបបំផុត។</p>', '2016-03-12-Stage-4-Renal-Cell-Carcinoma:-Treatment-and-Prognosis', 'uploads/blogs/blog_567f671894641.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:14:53', 2),
(18, 1, 'What Does It Feel Like When You Have a Blood Clot?', 'តើវាមានអារម្មណ៍ដូចជាពេលដែលអ្នកមានកំណកឈាមមួយ?', 'When a blood clot occurs in one of your veins, it’s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 peop', 'នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបាន', '<p><br />\r\nWhen a blood clot occurs in one of your veins, it&rsquo;s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 people in the United States are affected by this condition annually. The CDC further estimates that 60,000 to 100,000 people die from this condition annually.</p>\r\n\r\n<p>If you&rsquo;re even slightly concerned you might have a blood clot, you should call your doctor right away. Symptoms of blood clots can vary, and it&rsquo;s possible to have a blood clot with no symptoms.</p>\r\n\r\n<p>Learn more about some of the symptoms that may indicate a blood clot.</p>\r\n', '<p>នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបានរងផលប៉ះពាល់ដោយជំងឺនេះជារៀងរាល់ឆ្នាំ។ CDC បានបន្តទៀតបានប៉ាន់ប្រមាណថា 60,000 ទៅ 100,000 នាក់ស្លាប់ដោយសារជំងឺនេះជារៀងរាល់ឆ្នាំ។</p>\r\n\r\n<p>ប្រសិនបើអ្នកកំពុងសូម្បីតែមានការព្រួយបារម្ភបន្តិចអ្នកអាចមានដុំកំណកឈាម, អ្នកគួរហៅទូរស័ព្ទទៅវេជ្ជបណ្ឌិតរបស់អ្នកស្តាំទៅឆ្ងាយ។ រោគសញ្ញានៃកំណកឈាមអាចប្រែប្រួល, ហើយវាជាការដែលអាចធ្វើឱ្យមានកំណកឈាមដែលមានរោគសញ្ញានោះទេ។</p>\r\n\r\n<p>ស្វែងយល់បន្ថែមអំពីរោគសញ្ញាមួយចំនួនដែលអាចបង្ហាញដុំកំណកឈាមនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f67d468fd8.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:23:48', 10),
(19, 1, 'Can Cycling Cause Erectile Dysfunction?', 'ប្រណាំងកង់អាចបង្កឱ្យលិង្គងាប់?', 'Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and othe', 'ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្ស', '<p>Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and other people are more serious riders who spend hours a day on a bike.</p>\r\n<p>Men who bike can experience erection problems as an unintended consequence of spending too much time on a bike seat. The link between riding and erection problems isn&rsquo;t new. In fact, the Greek physician Hippocrates identified sexual issues in male horseback riders when he said &ldquo;The constant jolting on their horses unfits them for intercourse.&rdquo;</p>\r\n<p>Here&rsquo;s why riding a bike can affect your ability to achieve an erection and how to prevent cycling from putting the brakes on your sex life.</p>', '<p>ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្សេងទៀតមានអ្នកជិះកង់ធ្ងន់ធ្ងរដែលបានចំណាយពេលម៉ោងក្នុងមួយថ្ងៃនៅលើកង់មួយ។</p>\r\n<p>បុរសដែលជិះកង់អាចជួបប្រទះបញ្ហាក្នុងការឡើងរឹងរបស់លិង្គដែលជាផលវិបាកនៃការចំណាយពេលវេលាច្រើនពេកនៅលើកៅអីកង់មួយ។ ការផ្សារភ្ជាប់គ្នារវាងបញ្ហាក្នុងការធ្វើដំណើរការនិងការឡើងរឹងរបស់លិង្គនោះគឺមិនមែនថ្មីទេ។ នៅក្នុងការពិតដែលគ្រូពេទ្យក្រិក Hippocrates បានកំណត់អត្តសញ្ញាណពីបញ្ហាផ្លូវភេទនៅក្នុងអ្នកជិះកង់នៅពេលដែលគាត់ជាប្រុសខ្នងសេះបាននិយាយថា "ការបណ្ដាច់មិត្ដថេរនៅលើសេះរបស់ពួកគេឱ្យពួកគេសម្រាប់ការរួមភេទ unfits &raquo;។</p>\r\n<p>ខាងក្រោមនេះជាមូលហេតុដែលជាការជិះកង់អាចប៉ះពាល់ដល់សមត្ថភាពរបស់អ្នកក្នុងការសម្រេចបាននូវការឡើងរឹងរបស់លិង្គនិងរបៀបការពារការប្រណាំងកង់មកពីការដាក់ហ្វ្រាំងលើជីវិតផ្លូវភេទរបស់អ្នក។</p>', 'can-cycling-cause-erectile-dysfunction', 'uploads/blogs/blog_567f6889759ea.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-04-17 08:09:14', 10),
(20, 1, 'Show Us Your Mastectomy Tattoos!', 'បង្ហាញយើងពីការចាក់សាក់ទំហំរបស់អ្នក!', 'Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed', 'ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬ', '<p>Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed, while others use the surgery as a preventative measure.&nbsp;</p>\r\n\r\n<p>Losing a part of yourself is a life-altering experience, and some women are expressing that with art, covering up their scars with tattoos. Powerful as well as beautiful, they inspire us all.</p>\r\n\r\n<p>Do you have a mastectomy tattoo? Share it with us at social@healthline.com so that you can inspire others! In your email, please include 1) a clear photo of your tattoo, 2) a short description of what your tattoo means to you and 3) whether you would like your name to be included with your submission.</p>\r\n', '<p>ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬពីរដងដោយ msterctomy នៅពេលដែលពួកគេត្រូវបានគេធ្វើរោគវិនិច្ឆ័យឃើញខណៈពេលដែលអ្នកផ្សេងទៀតប្រើការវះកាត់ជាវិធានការបង្ការ។</p>\r\n\r\n<p>ការបាត់បង់ផ្នែកមួយនៃខ្លួនឯងមួយគឺជាបទពិសោធជីវិតការផ្លាស់ប្ដូរនិងស្ត្រីមួយចំនួនកំពុងសម្តែងថាជាមួយនឹងសិល្បៈ, គ្របដណ្តប់របស់ខ្លួនជាមួយនឹងស្នាមឡើងការចាក់សាក់។ ដែលមានឥទ្ធិពលដូចជាស្រស់ស្អាត, ដែលពួកគេបានជម្រុញឱ្យយើងទាំងអស់។</p>\r\n\r\n<p>តើអ្នកមានសាក់រូបដោយ msterctomy មួយ? ចែករំលែកវាជាមួយពួកយើងនៅ social@healthline.com ដូច្នេះអ្នកអាចជម្រុញឱ្យអ្នកផ្សេង! ក្នុងអ៊ីមែលរបស់អ្នកសូមបញ្ចូលទី 1) រូបថតច្បាស់លាស់នៃការសាក់របស់អ្នក, 2) សេចក្ដីសង្ខេបនៃអ្វីដែលការសាក់របស់អ្នកដែលមានន័យថាដើម្បីអ្នកនិង 3) តើអ្នកចង់ឱ្យឈ្មោះរបស់អ្នកត្រូវបានរួមបញ្ចូលជាមួយនឹងការស្នើរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6adf6e671.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:48', 9),
(21, 1, 'The Top 8 Products to Help You Quit Smoking', 'កំពូលផលិតផល 8 ដើម្បីជួយអ្នកឈប់ជក់បារី', 'Almost 18 percent of American adults smoke cigarettes, according to the Centers for Disease Control and Prevention (CDC). And nearly 70 percent of those smokers admit to wanting to quit.', 'ស្ទើរតែ 18 ភាគរយនៃមនុស្សពេញវ័យជនជាតិអាមេរិកជក់បារីនេះបើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ។ និងជិត 70 ភាគរយនៃអ្នកជក់បារីអ្នកដែលបានទទួលស្គាល់ថាដើម្បីចង់ឈប់។', '<p>More Americans are addicted to nicotine &mdash; the drug in cigarettes &mdash; than any other drug. And because nicotine is so addictive, it isn&rsquo;t a drug you can just put down. Quitting can take several attempts. But the benefits are many. Quitters reduce their risk for several types of cancer, as well as heart disease, vascular disease, respiratory problems, infertility, and lung diseases like COPD.</p>\r\n\r\n<p>So where can those who want to quit find help? There are numerous services and products that can help smokers put down their cigarettes for good. We&rsquo;ve rounded up some of the best.</p>\r\n', '<p>ជនជាតិអាមេរិកកាន់តែច្រើនញៀននីកូទីន - គ្រឿងញៀននៅក្នុងបារី - ជាងថ្នាំដទៃទៀតណាមួយទេ។ ហើយដោយសារតែជាតិនីកូទីនជាគ្រឿងញៀនបានដូច្នេះវាមិនមែនជាថ្នាំដែលអ្នកអាចគ្រាន់តែដាក់ចុះ។ * ការឈប់ជក់បារីអាចយកជាការប៉ុនប៉ងមួយចំនួន។ ប៉ុន្តែការទទួលបានផលប្រយោជន៍ជាច្រើន។ ឈប់ជក់បន្ថយហានិភ័យរបស់ពួកគេសម្រាប់ប្រភេទជាច្រើននៃជំងឺមហារីកដូចជាជំងឺបេះដូង, ជំងឺសរសៃឈាម, បញ្ហាផ្លូវដង្ហើម, ការគ្មានកូននិងជំងឺសួតដូចជាការជំងឺផ្លូវដង្ហើមធ្ងន់ធ្ងរ។</p>\r\n\r\n<p>ដូច្នេះតើពួកអ្នកដែលចង់ឈប់ជក់បារីអាចរកជំនួយ? មានសេវានិងផលិតផលដែលអាចជួយអ្នកជក់បារីអោយដាក់ចុះបារីរបស់ពួកគេសម្រាប់ការល្អច្រើន។ យើងបានបង្គត់ឡើងមួយចំនួននៃការល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f6c3b7c87e.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:42:35', 8),
(23, 2, '6 Unique Elliptical Exercises to Burn More Calories', '6 លំហាត់រាងពងក្រពើមានតែមួយគត់ក្នុងការដុតកម្ទេចកាឡូរីច្រើនជាង', 'When it comes to cardio, the elliptical machine may be one of the best machines out there.', 'នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។', '<p>When it comes to cardio, the elliptical machine may be one of the best machines out there.</p>\r\n\r\n<p>Safe and efficient, the low-impact workout is easier on the joints than running, which makes it a fantastic cardio option for people with knee, hip, or ankle problems. If done properly, sweating it out on an elliptical can also can be effective, working the arms, legs, and core.</p>\r\n\r\n<p>In fact, studies show that elliptical workouts can be just as effective as the treadmill or stair climber for improving or maintaining your aerobic endurance. Using the moving arms available on most machines allows you to engage your upper body, and adjusting the incline and resistance can really help engage your glutes, calves, and hamstrings.</p>\r\n', '<p>នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។</p>\r\n\r\n<p>មានសុវត្ថិភាពនិងមានប្រសិទ្ធិភាព, ការសាកល្បងទាបនិងផលប៉ះពាល់គឺមានភាពងាយស្រួលនៅលើសន្លាក់ជាងការរត់ដែលធ្វើឱ្យវាជាជម្រើសបេះដូងអស្ចារ្យសម្រាប់មនុស្សដែលមានបញ្ហាជង្គង់ត្រគាកឬកជើង។ ប្រសិនបើធ្វើបានត្រឹមត្រូវ, បែកញើសវាចេញនៅលើពងក្រពើមួយដែលអាចអាចមានប្រសិទ្ធិភាព, ធ្វើការលើដៃ, ជើង, និងការស្នូល។</p>\r\n\r\n<p>ជាការពិតការសិក្សាបានបង្ហាញថាការហាត់ប្រាណគឺអាចមានរាងអេលីបមានប្រសិទ្ធភាពដូចគ្រាន់តែឬជណ្តើរហាត់ប្រាណឡើងភ្នំសម្រាប់ការកែលម្អឬរក្សាចិត្ដស៊ូទ្រាំប្រាណរបស់អ្នក។ ការប្រើប្រាស់អាវុធការផ្លាស់ប្តូរនេះអាចរកបាននៅលើម៉ាស៊ីនភាគច្រើនបំផុតដែលអនុញ្ញាតឱ្យអ្នកចូលរួមរាងកាយផ្នែកខាងលើរបស់អ្នកនិងលៃតម្រូវផាបតេរនិងភាពធន់ទ្រាំពិតជាអាចជួយចូលរួមរបស់អ្នក glutes, calves និងសរសៃពួរគន្លាក់ជើង។</p>\r\n', '', 'uploads/blogs/blog_567f6dfa7072b.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2015-12-27 05:50:02', 4);
INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(25, 1, 'Cholesterol Control: 5 Heart-Healthy Scallops Recipes', 'ការត្រួតពិនិត្យកូឡេស្តេរ៉ុល: 5 សុខភាពបេះដូង scallop បង្កាន់ដៃ', 'Seafood is good for you, right? It’s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you’re minding your cholesterol levels, you can never be too cautious. As you’ll see in the case of scal', 'អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នក', '<p><br />\r\nSeafood is good for you, right? It&rsquo;s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you&rsquo;re minding your cholesterol levels, you can never be too cautious. As you&rsquo;ll see in the case of scallops, the devil is in the preparation details.</p>\r\n\r\n<p>Scallops have a mild flavor and you&rsquo;ll often find them on a plate swimming in a sea of butter. In this case, scallops would not be a wise menu choice if you&rsquo;re watching your cholesterol, but it&rsquo;s not due to the scallops themselves.</p>\r\n', '<p>អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នកនឹងឃើញនៅក្នុងករណីនៃការខ្យង, អារក្សគឺនៅក្នុងសេចក្ដីលម្អិតរៀបចំខ្លួន។</p>\r\n\r\n<p>មានរសជាតិស្រាល scallops និងច្រើនអ្នកនឹងរកឃើញពួកវានៅលើចានមួយនៅក្នុងការហែលទឹកសមុទ្រនៃ butter មួយ។ ក្នុងករណីនេះ scallops នឹងមិនត្រូវម៉ឺនុយឱ្យជ្រើសរើសប្រាជ្ញាបើអ្នកកំពុងមើលកូឡេស្តេរ៉ុលរបស់អ្នកប៉ុន្តែវាមិនមែនដោយសារការខ្យងខ្លួនឯង។</p>\r\n', '', 'uploads/blogs/blog_5683ef68c747d.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:14:11', 6),
(26, 2, '9 Nut-Free Holiday Dessert Recipes', '9 ថ្ងៃឈប់សម្រាកបង្អែមបង្កាន់ដៃដោយឥតគិតថ្លៃយចន', 'Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, “Are there nuts in this?”', 'ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង "តើមានគ្រាប់នៅក្នុងនេះ?"', '<p>Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, &ldquo;Are there nuts in this?&rdquo;</p>\r\n\r\n<p>Fortunately, there are many nut-free dessert options that you can make and eat, worry-free. Just be sure to check each ingredient&rsquo;s label to be sure they are nut-free as well. Some ingredients are nut-free but may be made in a factory that processes nuts, such as most commercial chocolate. Luckily, nut-free chocolate is now available at most grocery stores.</p>\r\n\r\n<p>Here, we&rsquo;ve rounded up some of the best recipes.</p>\r\n', '<p>ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង &quot;តើមានគ្រាប់នៅក្នុងនេះ?&quot;</p>\r\n\r\n<p>ជាសំណាងល្អមានជម្រើសបង្អែមដោយឥតគិតថ្លៃជាច្រើនយចនដែលអ្នកអាចធ្វើឱ្យមាននិងញ៉ាំព្រួយបារម្ភដោយឥតគិតថ្លៃគឺ។ គ្រាន់តែត្រូវប្រាកដថាដើម្បីពិនិត្យមើលស្លាកធាតុផ្សំគ្នាដើម្បីឱ្យប្រាកដថាពួកគេគឺជាប្រភេទណាត់ដោយឥតគិតថ្លៃផងដែរ។ គ្រឿងផ្សំដែលមនុស្សមួយចំនួនមានចន-ឥតគិតថ្លៃប៉ុន្តែអាចត្រូវបានធ្វើឡើងនៅក្នុងរោងចក្រកែច្នៃគ្រាប់ដូចជាសូកូឡាពាណិជ្ជកម្មភាគច្រើនបំផុត។ សំណាងល្អ, សូកូឡាចនដោយឥតគិតថ្លៃឥឡូវអាចប្រើបាននៅតាមហាងលក់គ្រឿងទេសភាគច្រើនបំផុត។</p>\r\n\r\n<p>នៅទីនេះយើងបានបង្គត់ឡើងមួយចំនួននៃរូបមន្តល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f7846f0b06.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:46', 3),
(27, 1, 'How to Celebrate Their First Lost Tooth', 'តើធ្វើដូចម្តេចដើម្បីប្រារព្ធលើកដំបូងរបស់ពួកគេបានបាត់បង់ធ្មេញ', 'The first lost tooth is a major milestone.\r\n\r\n\r\nAlthough most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, ', 'នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។\r\n\r\n\r\nទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជា', '<p>The first lost tooth is a major milestone.</p>\r\n\r\n<p>Although most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, before eventually shedding it, is a feeling like no other.</p>\r\n\r\n<p>Before you get all teary eyed, remember that this is a cause for celebration, and how you celebrate the loss of a tooth is entirely up to you and your child. From the American tooth fairy to France&rsquo;s La Petite Souris, there are all sorts of fun traditions that will help you say goodbye to baby teeth and baby days.</p>\r\n', '<p>នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។</p>\r\n\r\n<p>ទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជាមួយអណ្តាតរបស់ពួកគេមុនពេលដែលនៅទីបំផុតការបង្ហូរវាគឺជាអារម្មណ៍ដូចផ្សេងទៀតទេ។</p>\r\n\r\n<p>មុនពេលអ្នកទទួលភ្នែកស្រក់ទឹកទាំងអស់, ចាំបានថានេះគឺជាហេតុមួយសម្រាប់ការសំដែងនិងរបៀបដែលអ្នកអបអរការបាត់បង់នៃធ្មេញមួយនោះគឺទាំងស្រុងឡើងទៅអ្នកនិងកូនរបស់អ្នក។ ពីទេពអប្សរឡាធ្មេញអាមេរិចរបស់ប្រទេសបារាំងញត្តិ Souris, មានគ្រប់ប្រភេទទាំងអស់នៃប្រពៃណីភាពសប្បាយរីករាយដែលនឹងជួយអ្នកក្នុងការនិយាយថាលាធ្មេញរបស់ទារកនិងថ្ងៃទារកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f78d6bd9e8.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:14:43', 5),
(28, 2, '6 Tips to Create Lasting Christmas Traditions for Kids', '6 គន្លឹះដើម្បីបង្កើតស្ថិតស្ថេរប្រពៃណីបុណ្យណូអែលសម្រាប់កុមារ', 'Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.', 'ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។', '<p>Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.</p>\r\n\r\n<p>From decorating sugar cookies, to caroling, to trimming the tree, much of the magic of Christmas comes from our family traditions.</p>\r\n\r\n<p>We&rsquo;ve rounded up different ideas from around the web so you can start your own Christmas traditions with your family this year.</p>\r\n', '<p>ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។</p>\r\n\r\n<p>ចាប់តាំងពីការតុបតែងខូឃីស៍ស្ករ Carol ដើម្បីកាត់បន្ថយការមែកធាងច្រើននៃមន្តអាគមនៃបុណ្យគ្រីស្ទបានមកពីទំនៀមទំលាប់គ្រួសាររបស់យើង។</p>\r\n\r\n<p>យើងបានប្រមូលគំនិតប្លែកគ្នាពីជុំវិញតំបន់បណ្តាញដូច្នេះអ្នកអាចចាប់ផ្តើមទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលរបស់អ្នកផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកនៅឆ្នាំនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f798cd45a1.jpg', 0, 1, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:44', 2),
(29, 1, 'The Cutest First Day of School Photo Ideas', 'នៅថ្ងៃដំបូងនៃគំនិតរូបថត Cutest សាលា', 'Despite what you’ll find on Pinterest, there aren’t a lot of moms out there who’ve managed to thoughtfully chronicle their children’s lives.', 'បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។', '<p>Despite what you&rsquo;ll find on Pinterest, there aren&rsquo;t a lot of moms out there who&rsquo;ve managed to thoughtfully chronicle their children&rsquo;s lives.</p>\r\n\r\n<p>Take me, for example: I have nothing close to a baby book. I have a trash bag filled with art projects and school assignments that I plan to organize, someday. The only reason I remember my kids&rsquo; first words is because I forced myself to (they were &ldquo;cat&rdquo; and &ldquo;ball&rdquo; by the way &mdash; I need to show off this knowledge whenever I get the chance).</p>\r\n\r\n<p>But one ritual I&rsquo;ve been able to stick to, despite my laziness, is the first day of school picture. Every year on that first day, I make my kids stand in front of our front door and take their picture. There are no fancy signs and I don&rsquo;t make them get dressed up.</p>\r\n\r\n<p>But if you are moderately more together than me, there are a lot of great ideas out there for how to make your child&rsquo;s first day of school photo special.</p>\r\n\r\n<p>Here are 10 ideas to get you started.</p>\r\n', '<p>បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។</p>\r\n\r\n<p>យកខ្ញុំឧទាហរណ៍: ខ្ញុំមិនមានអ្វីដែលស្និទ្ធនឹងសៀវភៅទារក។ ខ្ញុំមានថង់សំរាមមួយដែលពោរពេញទៅដោយគម្រោងជាសិល្បៈនិងកិច្ចការសាលាដែលខ្ញុំមានគម្រោងរៀបចំនៅថ្ងៃមួយ។ មូលហេតុតែមួយគត់ដែលខ្ញុំបានចាំពាក្យដំបូងកូនរបស់ខ្ញុំគឺដោយសារតែខ្ញុំត្រូវបង្ខំចិត្ត (ពួកគេត្រូវបាន &quot;ឆ្មា&quot; និង &quot;កូនបាល់&quot; ដោយវិធីនេះ - ខ្ញុំត្រូវការដើម្បីបង្ហាញពីចំណេះដឹងនេះនៅពេលណាខ្ញុំទទួលបានឱកាសនេះ) ។</p>\r\n\r\n<p>ប៉ុន្តែពិធីសាសនាមួយដែលខ្ញុំបានអាចបិទបើទោះជាខ្ជិលរបស់ខ្ញុំជាថ្ងៃដំបូងនៃរូបភាពសាលា។ ជារៀងរាល់ឆ្នាំនៅថ្ងៃដំបូងដែលខ្ញុំបានធ្វើឱ្យកូនរបស់ខ្ញុំឈរនៅពីមុខទ្វារខាងមុខរបស់យើងនិងយករូបភាពរបស់ពួកគេ។ វាមិនមានសញ្ញាពុម្ពអក្សរក្បូរក្បាច់គឺជាអ្នកហើយខ្ញុំមិនបានធ្វើឱ្យពួកគេទទួលបានស្លៀកពាក់ឡើង។</p>\r\n\r\n<p>ប៉ុន្តែប្រសិនបើអ្នកគឺជាអ្នកសមល្មមទៀតជាជាងខ្ញុំនោះមានគំនិតយ៉ាងច្រើនកុះករនៅទីនោះសម្រាប់របៀបដើម្បីធ្វើឱ្យថ្ងៃដំបូងរបស់កូនអ្នករូបថតសាលាពិសេសគឺ។</p>\r\n\r\n<p>ខាងក្រោមនេះជាគំនិតយោបល់ក្នុងការទទួលបានចំនួន 10 បានចាប់ផ្តើមជាអ្នកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f7a56a632a.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-31 00:14:19', 4),
(30, 1, 'Loneliness Can Make You Sick, But Don’t Blame the Internet', 'ភាពឯកោអាចធ្វើអោយអ្នកឈឺ, ប៉ុន្តែមិនបន្ទោសអ៊ិនធឺណិ', 'A new study has found that feeling socially isolated is linked to cellular changes that weaken the immune system and increase inflammation in the body.', 'ការសិក្សាថ្មីមួយបានរកឃើញថាមានអារម្មណ៍ដាច់ឆ្ងាយពីសង្គមត្រូវបានផ្សារភ្ជាប់ទៅនឹងការផ្លាស់ប្តូរកោសិកាដែលចុះខ្សោយប្រព័ន្ធភាពស៊ាំនិងការបង្កើនការរលាកក្នុងរាងកាយ។', '<p>Ah, solitude. What feels refreshing to some can be crippling for others.</p>\r\n<p>Feeling isolated from other people when we wish we weren&rsquo;t isn&rsquo;t just unpleasant. It&rsquo;s also bad for us.</p>\r\n<p>Whether it strikes late at night when we are alone, or in the form of feeling like you don&rsquo;t belong in the middle of a crowded party, the sharp sting of social isolation is unmistakable.</p>\r\n<p>And it&rsquo;s not just in our heads; the effects of that sensation are felt deep inside our bodies, at the level of our cells and DNA.</p>\r\n<p>These kinds of physiological changes, say the authors of a new study, help explain the link seen in earlier studies between social isolation and poor health. This includes an increased risk of early death among the chronically lonely.</p>\r\n<p>&nbsp;</p>', '<p><img style="height: 378px; width: 800px;" src="/uploads/finder/NewFolder/14460-illustration-of-a-key-pv.png" alt="" />Ah, នៅតែឯង។ តើអ្វីទៅជាមានអារម្មណ៍ថាមានកម្លាំងចិត្ដមួយចំនួនអាចត្រូវបានយ៉ាងខ្លាំងសម្រាប់អ្នកដទៃ។</p>\r\n<p>មានអារម្មណ៍ដាច់ឆ្ងាយពីប្រជាជនផ្សេងទៀតនៅពេលដែលយើងប្រាថ្នាថាយើងមិនត្រូវបានគេគឺមិនមែនគ្រាន់តែមិនរីករាយ។ វាជាការអាក្រក់ផងដែរសម្រាប់ពួកយើង។</p>\r\n<p>មិនថាវាកើតនៅពេលយប់នៅពេលដែលយើងនៅម្នាក់ឯងឬនៅក្នុងសំណុំបែបបទនៃការមានអារម្មណ៍ដូចជាអ្នកមិនមែនជារបស់នៅកណ្តាលនៃគណបក្សដែលមានមនុស្សច្រើនដែលជាទ្រនិចយ៉ាងខ្លាំងនៃភាពឯកោសង្គមគឺច្បាស់លាស់។</p>\r\n<p>ហើយវាមិនមែនគ្រាន់តែនៅក្នុងក្បាលរបស់យើង; ផលប៉ះពាល់នៃអារម្មណ៍ដែលត្រូវបានមានអារម្មណ៍យ៉ាងជ្រាលជ្រៅនៅក្នុងរាងកាយរបស់យើង, នៅក្នុងកម្រិតនៃកោសិកានិង DNA របស់យើងនោះទេ។</p>\r\n<p>ប្រភេទនៃការផ្លាស់ប្តូរសរីរវិទ្យាទាំងនេះបាននិយាយថាអ្នកនិពន្ធនៃការសិក្សាថ្មីមួយនេះជួយពន្យល់តំណឃើញនៅក្នុងការសិក្សានានាពីមុនរវាងភាពឯកោសង្គមនិងសុខភាពប្រជាជនក្រីក្រ។ នេះរួមបញ្ចូលទាំងការកើនឡើងហានិភ័យនៃការស្លាប់មុនអាយុក្នុងចំណោមឯកោរ៉ៃ។</p>', '2016-02-05-Loneliness-Can-Make-You-Sick,-But-Don’t-Blame-the-Internet', 'uploads/blogs/blog_567f7afe1d175.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-03-12 13:42:39', 1),
(31, 1, 'Lose Weight with Eggplant', 'ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់', 'Lose Weight with Eggplant', 'ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់', '<p><strong>Lose Weight with Eggplant</strong><br />Eggplants are one of those vegetables that have a lot of culinary uses; they are delicious and people love using them as accompaniments in several dishes. What&rsquo;s more, you may not have known about their weight loss properties, but thanks to their high water content, fiber, and scant calories, eggplants are transformed into an excellent ally for your diet.<br /><strong>Benefits of Eggplant</strong><br />- This vegetable aids in digestion, leading simultaneously to a reduction of body fat, thanks to the saponin it contains, which prevents fat absorption.<br />- Fights cellulitis<br />- Is an anti-inflammatory<br />- Reduces free radicals that attack cells<br />- Thanks to the fiber in its seeds, it in an excellent laxative<br />- Is great for the liver and gallbladder<br />- Regulates cholesterol<br />- Provides the body with calcium, potassium, sodium, phosphorus, iron&hellip;<br />How does eggplant aid in weight loss?<br />As previously mentioned, eggplant contains an element called saponin, that noticeably decreases the absorption of fat. Nutritionists recommend drinking eggplant water, or juice, whichever you prefer. This juice will detoxify the body, simultaneously improving kidney function by also acting as a diuretic. In addition to this, and thanks to the fiber in their seeds, it improves intestinal function preventing problems with constipation and irritable bowel syndrome. Drinking one glass of eggplant juice is recommended just before your primary meal so the fats will not be absorbed. That begin as it may, you should follow a diet that does not contain too much fat, in order to lose weight, and also do at least half an hour of exercise a day. Eggplant juice is an excellent ally for losing weight, but it won&rsquo;t work by itself if you don&rsquo;t eat a balanced diet.<br />Weight loss recipe with eggplant juice<br />Before anything else, you must know that eggplant cannot be eaten raw. You must cook it because inside, it contains an alkaloid known as solanine, which is toxic to the body. If you eat it raw you will experience stomach aches and headaches. When you&rsquo;re choosing one at the market, lean towards those that are on the firm side.<br />Ingredients<br />- One fairly large eggplant<br />- Half a liter of water<br />- Juice of one lemon<br />Directions<br />1. Begin by peeling the eggplant and cutting in into small pieces.<br />2. Then, place them in a bowl with cold water (half a liter), and let it soak for a few hours. If you want to, you can do this the day before so it can be ready in the morning. Once it has soaked, heat it so it cooks, and bring the water to a boil. Let boil for at least 15 minutes.<br />3. Once the water is boiling, add lemon juice.<br />4. Then, lower heat and let set for 10 minutes.<br />5. Then add to a blender so that the pulp and water are well blended and uniform, making a balanced juice.<br />Remember that this eggplant juice must be drank 15 minutes before your primary meal, and on the days you want to do your diet. Lemon could be added frequently, because the taste is a little bitter, and could be a little uncomfortable to drink. The citrus combination will make it a lot more pleasant.<br />You should also know that if you drink this juice every day, you will lower your cholesterol. Remember that eggplant helps decrease fat absorption, but to lose weight faster, you must accompany this with a low-calories diet and exercise.</p>', '<p><strong>ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់</strong><br />ផ្លែទ្រាប់ជាប្រភេទបន្លែដែលត្រូវបានគេយកទៅចម្អិនជាប្រចាំ។ វាមានរសជាតិឆ្ងាញ់ ហើយវាត្រូវបានគេយកទៅដាក់ផ្ទាប់ជាមួយនឹងមុខម្ងូបមួយចំនួន។ ទន្ទឹមនឹងនេះ អ្នកប្រហែលជាមិនដឹងពីផលប្រយោជន៍របស់វាទាក់ទងនឹងការសម្រកទម្ងន់ទេ។ ផ្លែទ្រាប់មានជាតិទឹក និង ជាតិសសៃហ្វាយប័រខ្ពស់ ដោយរួមផ្សំនឹងកាឡូរីតិច ដែលជាហេតុធ្វើឲ្យវាសាកសមជាអាហារសម្រកទម្ងន់យ៉ាងឥតខ្ចោះ។<br />អត្ថប្រយោជន៍របស់ផ្លែទ្រាប់<br />- ផ្លែទ្រាប់ជួយក្នុងការរំលាយអាហារ ដែលជួយកាត់បន្ថយជាតិខ្លាញ់ក្នុងខ្លួន ដោយសារវាមានជាតិសាប៉ូនីន ដែលអាចជួយការពារមិនឲ្យរាងកាយស្រូបយកជាតិខ្លាញ់។<br />- ការរលាកស្រទាប់ស្បែកដោយសារមេរោគបាក់តេរី<br />- ការប្រឆាំងការរលាក<br />- កាត់បន្ថយរ៉ាឌីកាល់សេរីដែលប៉ះពាល់ដល់កោសិកា<br />- ជាតិសសៃហ្វាយប័រដែលមានក្នុងគ្រាប់ ជាសារធាតុដ៏ល្អប្រសើរក្នុងការបញ្ចេញកាកសំណល់កខ្វក់ក្នុងពោះវៀន<br />- ជាជីវជាតិដ៏ល្អសម្រាប់ថ្លើម និងថង់ទឹកប្រម៉ាត់<br />- គ្រប់គ្រងកម្រិតខូឡេស្តេរ៉ូល<br />- ផ្តល់នូវជាតិកាល់ស្យូម ប៉ូតាស្យ៉ូម សូដ្យូម ផូស្វ័រ និង ជាតិដែកក្នុងខ្លួន<br />តើផ្លែទ្រាប់ជួយយើងស្រកទម្ងន់ដោយរបៀបណា?<br /> ដូចដែលបានរៀបរាប់ខាងលើ ផ្លែទ្រាប់មានផ្ទុកសារធាតុសាប៉ូនីន ដែលជាសារធាតុអាចជួយកាត់បន្ថយការស្រូបយកជាខ្លាញ់របស់រាងកាយ។ អ្នកជំនាញផ្នែកអាហារូបត្ថម្ភ ណែនាំឲ្យទទួលទានទឹកផ្លែទ្រាប់ ព្រោះវាជួយដល់ដំណើរអុកស៊ីតកម្មក្នុងខ្លួនដែលជួយដល់តម្រង់នោមឲ្យដំណើរការល្អ។ ជាងនេះទៅទៀត សារធាតុសសៃហ្វាយប័រដែលមានក្នុងគ្រាប់ ជួយបញ្ចៀសការក្តៀនលាមក និងការពារមិនឲ្យរលាកពោះវៀនធំ។ ដើម្បីសម្រកទម្ងន់ អ្នកគួរផឹកទឹកផ្លែទ្រាប់មួយកែវ មុនពេលអាហារពេលព្រឹក នោះក្នុងខ្លួនអ្នកមិនស្រូបយកជាតិខ្លាញ់ឡើយ ប៉ុន្តែក្នុងករណីដែលអ្នកញ៉ាំរបបអាហារដែលគ្មានជាតិខ្លាញ់ហួស និងផឹកមុនពេលហាត់ប្រាណកន្លះម៉ោងប៉ុណ្ណោះ។<br />រូបមន្តសម្រកទម្ងន់ជាមួយទឹកផ្លែទ្រាប់<br />អ្នកគួរដឹងថាផ្លែទ្រាប់មិនអាចញ៉ាំឆៅបានទេ។ អ្នកត្រូវចម្អិនវាព្រោះវាមានជាតិពុលដែលប្រឆាំងនឹងរាងកាយយើង។ បើអ្នកញ៉ាំវាទាំងឆៅ អ្នកអាចប្រឈមនឹងការឈីពោះ ឬឈឺក្បាល។ ពេលអ្នកទិញផ្លែទ្រាប់ពីផ្សារ សូមជ្រើសរើសផ្លែដែលមានសាច់ហាប់ខាងក្នុង។<br />គ្រឿងផ្សំ<br />- ផ្លែទ្រាប់ធំល្មមមួយ<br />- ទឹកកន្លះលីត្រ<br />- ទឹកក្រូចឆ្មាមួយផ្លែ<br />វិធីធ្វើទឹកផ្លែទ្រាប់<br />1. ចិតសម្បកវាចេញឲ្យស្អាត ហើយកាត់វាជាចំណែកតូចៗ<br />2. បន្ទាប់មក ត្រាំវាក្នុងទឹកត្រជាក់កន្លះលីត្រ ដោយទុកវាឲ្យជក់ទឹកក្នុងរយៈពេល ២ឬ៣ម៉ោង។ ដើម្បីងាយស្រួល លោកអ្នកអាចត្រាំវាពេលល្ងាច នោះព្រឹកឡើងអ្នកអាចយកចំនិតទ្រាប់ដែលជក់ទឹកទាំងនោះទៅចម្អិន។ ទុកឲ្យទឹកពុះក្នុងរយៈពេល ១៥នាទី។<br />3. ពេលទឹកពុះហើយ ថែមទឹកក្រូចឆ្មាចូល<br />4. បន្ទាប់មកទៀត យើងត្រូវបន្ថយភ្លើង ហើយទុកវា១០នាទីទៀត<br />5. ក្រោយមក ចាក់ល្បាយនេះចូលក្នុងម៉ាស៊ីនទឹកក្រឡុកដើម្បីឲ្យវាក្លាយជាល្បយស្មើសាច់ល្អចូលជាតិគ្នា<br />ចូរចងចាំថា ទឹកផ្លែទ្រាប់នេះត្រូវតែផឹកយ៉ាងហោចណាស់ ១៥នាទីមុនពេលអាហារអ្វីទាំងអស់។ ដោយសារតែវាមានរសជាតិល្វីង លោកអ្នកអាចថែមទឹកក្រូចឆ្មាតាមតម្រូវការ។<br />អ្នកគួរតែដឹងទៀតថា ប្រសិនបើអ្នកផឹកទឹកផ្លែទ្រាប់នេះរាល់ថ្ងៃ កូឡេសស្តេរ៉ូលក្នុងខ្លួនអ្នកនឹងត្រូវបានកាត់បន្ថយ។ បើទោះជាផ្លែទ្រាប់មានលក្ខណៈពិសេសក្នុងការកាត់បន្ថយការស្រូបជាតិខ្លាញ់ អ្នកត្រូវតែញ៉ាំរបបអាហារមានកាឡូរីតិច និងធ្វើលំហាត់ប្រាណជាប្រចាំ ដើម្បីសម្រកទម្ងន់បានរហ័ស។</p>', '2016-03-27-Lose-Weight-with-Eggplant', 'uploads/blogs/blog_56f7a06bb8528.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-05-31 06:48:33', 0),
(32, 1, 'Anti-Aging Tips', 'វិធីសាស្រ្តការពារភាពចាស់', 'Anti-Aging Tips', 'វិធីសាស្រ្តការពារភាពចាស់', '<p><strong>Anti-Aging Tips</strong></p>\r\n<p><strong>Maintain a Healthy Weight</strong></p>\r\n<p>Most of us fret about wrinkles as we reach middle age, yet carrying an extra dress size ages a person much more than a few wrinkles ever could. Managing weight is also a more realistic goal than getting rid of wrinkles.</p>\r\n<h3>Don''t Smoke</h3>\r\n<p>According to the&nbsp;<a href="http://www.mayoclinic.org/healthy-living/quit-smoking/expert-answers/smoking/faq-20058153">Mayo Clinic</a>, smoking can accelerate the skin&rsquo;s aging process. The more you smoke and the longer you smoke, the more likely you are to have wrinkling of the skin.</p>\r\n<p>Quitting smoking improves your circulation, lowers your risk of developing varicose veins, reduces the likelihood of obesity, and makes exercise easier and more enjoyable. You''ll also have a better sense of taste and smell as you age, and the smell of smoke won&rsquo;t cling to your hair and clothing.</p>\r\n<h3>Follow a Nutritious Diet</h3>\r\n<p>Eat a low-fat, high-fiber diet rich in fruits, vegetables, and leafy greens. It is also important to stay hydrated. Drinking plenty of water is the one of the easiest, most effective ways to keep your skin looking healthy.</p>\r\n<h3>Stay Active</h3>\r\n<p>Participate in sports, dancing, or other activities you enjoy. Follow the federal government''s most recent&nbsp;<a href="http://www.health.gov/paguidelines/">Physical Activity Guidelines for Americans</a>, which recommends that adults ages 18 to 64 should engage in two hours and 30 minutes of moderate aerobic activity per week, combined with strength-training exercises two days a week.</p>\r\n<h3>Avoid Sun Exposure</h3>\r\n<p>Use sunscreen on your face and exposed skin every day. Wear a hat and use sunglasses to protect your eyes, since some evidence links sun exposure to later formation of cataracts. Exposure to sun also increases your risk of wrinkles or &ldquo;leathery&rdquo; skin.</p>\r\n<h3>Get Enough Sleep</h3>\r\n<p>Lack of sleep is responsible for the development of&nbsp;&ldquo;dark circles under the eyes&rdquo; and can result in other issues like weight gain and depression. Adequate sleep is important for skin cell rejuvenation.</p>\r\n<h3>Consider Facial Cosmetic Enhancements</h3>\r\n<p>You may think about having a facial rejuvenation procedure like Botox or pursuing a surgical option such as a facelift, brow lift, or neck lift. These procedures can tighten or remove sagging skin beneath the chin, at the jawline, or around the eyes or remove puffy fat pads beneath the eyes that give you a prematurely aged look. However, these enhancements can be obvious to the trained eye if the outcome is not as good as you expected. There are also potentially very serious risk associated with these procedures. Your money might be better spent on a gym membership and healthy foods.</p>', '<p><strong>វិធីសាស្រ្តការពារភាពចាស់</strong></p>\r\n<p><strong>ថែរក្សាទម្ងន់ឲ្យមានសុខភាពល្អ</strong></p>\r\n<p>មនុស្សជាច្រើនបារម្ភនឹងស្នាមជ្រួញ នៅពេលដែលចូលដល់វ័យកណ្ដាល ប៉ុន្តែការស្លៀកសំលៀកបំពាក់ដែលមានទំហំធំ អាចធ្វើឲ្យមនុស្សម្នាក់ចាស់ជាងសមានស្នាមជ្រួញបន្តិចបន្តួចនៅលើមុខទៅទៀត។ ការរក្សាទម្ងន់គឺជាគោលដៅដែលមានលក្ខណៈប្រាកដនិយមជាងការបញ្ជៀសនូវភាពជ្រៀវជ្រួញទៅទៀត។</p>\r\n<p><strong>មិនត្រូវជក់បារី</strong></p>\r\n<p>យោងតាមគ្លីនីក ម៉ាយូ ការជក់បារីអាចបង្កើនល្បឿនដំណើរការធ្វើឲ្យស្បែកចាស់លឿន។ នៅពេលដែលអ្នកជក់កាន់តែច្រើន&nbsp; និងជក់កាន់តែយូរ នោះអ្នកនឹងមានស្នាមជ្រៀវជ្រួញនៅលើស្បែកកាន់តែច្រើន។ ឈប់ជក់បារីអាចជួយបង្កើនចលនាឈាមរត់ កាត់បន្ថយហានិភ័យនៃការវិវត្តសរសៃឈាមប៉ោង កាត់បន្ថយភាពធាត់លើសទម្ងន់ និងជួយឲ្យការធ្វើលំហាត់ប្រាណបានងាយស្រួល និងស្រស់ស្រាយ។ អ្នកនឹងមានជីវហាវិញ្ញាណ និងឃានវិញ្ញាណប្រសើរឡើង។ លើសពីនេះក្លិនបារីនឹងមិនជាប់តោងសក់ក៏ដូចជាសំលៀកបំពាក់របស់អ្នកផងដែរ។</p>\r\n<p><strong>ទទួលទានអាហារមានសារធាតុចិញ្ចឹម</strong></p>\r\n<p>បរិភោគអាហារដែលមានសារធាតុខ្លាញតិច តែមានជាតិសរសៃច្រើនដូចជាមានផ្លែឈើ បន្លែ និងរុក្ខជាតិដែលមានស្លឹកព៌ណបៃតង។ លើសពីនេះវាក៏មានសារៈសំខាន់ក្នុងការផ្ទុកសារធាតុទឹកក្នុងខ្លួនផងដែរ។ ការទទួលទានទឹកច្រើនគឺជាវិធីសាស្រ្តមួយដែលងាយស្រួល និងមានប្រសិទ្ធភាពខ្ពស់ក្នុងកាថែរក្សាស្បែកឲ្យមានសុខភាពល្អ។</p>\r\n<p><strong>រក្សាភាពសកម្ម</strong></p>\r\n<p>ចូលរួមក្នុងកីឡា រាំ ឬ សកម្មភាពផ្សេងទៀតដែលអ្នកចូលចិត្ត។ សូមធ្វើតាម<a href="http://health.gov/paguidelines/">សៀវភៅណែនាំទៅលើសកម្មភាពសម្រាប់រាងកាយរបស់សហរដ្ឋអាមេរិក</a> ដែលណែនាំឲ្យមនុស្សវ័យជំទង់ចន្លោះពី១៨ឆ្នាំ ទៅ ៦៤ឆ្នាំ គួរតែចូលរួមក្នុងការធ្វើលំហាត់ប្រាណលក្ខណៈអារ៉ូប៊ីកឲ្យបាន២ម៉ោងកន្លះក្នុងមួយសប្ដាហ៍ ហើយរួមផ្សំនឹងការធ្វើលំហាត់ប្រាណយកំលាំងកាយឲ្យបាន២ថ្ងៃក្នុងមួយសប្ដាហ៍។</p>\r\n<p><strong>ជៀសវាងការប៉ះពាល់ពីពន្លឺព្រះអាទិត្យ</strong></p>\r\n<p>ប្រើប្រាស់លេការពារកំដៅថ្ងៃនៅលើមុខ និង ស្បែករបស់អ្នកជារៀងរាល់ថ្ងៃ។ ត្រូវពាក់មួក ជាមួយនឹងវែនតាការពារកំដៅថ្ងៃដើម្បីការពារភ្នែក ព្រោះថាផលប៉ះពាល់ពីព្រះអាទិត្យអាចនាំឲ្យមានជំងីភ្នែលឡើងបាយនៅពេលក្រោយ។</p>\r\n<p><strong>ទទួលទានដំណេកឲ្យបានគ្រប់គ្រាន់</strong></p>\r\n<p>ការទទួលទានដំណេកមិនគ្រប់គ្រាន់ អាចធ្វើឲ្យមានការកើតឡើងនូវរង្វង់ខ្មៅក្រោមភ្នែក ហើយក៏អាចបណ្ដាលឲ្យមានបញ្ហាផ្សេងទៀតដែរ ដូចជាឡើងទម្ងន់ និង ទប់ប្រមល់ក្នុងចិត្ត។ ការទទួលទានដំណេកគ្រប់គ្រាន់សារៈសំខាន់ក្នុងធ្វើឲ្យកោសិកាស្បែកកើតមានជាថ្មី។</p>\r\n<p><strong>ពិចារណាលើការបន្ថែមការកែសម្ផស្សលើមុខ</strong></p>\r\n<p>អ្នកប្រហែលជាគិតអំពីវិធីសាស្រ្តក្នុងធ្វើទំរង់មុខជាថ្មីដូចជា ការចាក់ Botox ឬ វះកាត់យកស្នាមជ្រៀវជ្រួញនៅលើមុខ ចិញ្ចើម ឬ កជាដើម។ វិធីសាស្រ្តបែបនេះអាចជួយបន្តឹង ឬ ជម្រុសចោលស្បែកដែលយានៅក្រោមចង្កា នៅថ្គាម ឬនៅជុំវិញភ្នែក ឬក៏កាត់បន្ថយការហើមនៅខាងក្រោមភ្នែកដែលធ្វើឲ្យអ្នកមើលក្មេងជាងវ័យ។ ប៉ុន្តែការធ្វើរបៀបនេះអាចបណ្ដាលឲ្យមានបញ្ហា បើសិនជាលទ្ធផលដែលទទួលបានមិនដូចនឹងអ្នកដែលប្រាថ្នា។ ម្យ៉ាងវិញទៀត វាក៏ប្រឈមនឹងហានិភ័យខ្ពស់ផងដែរក្នុងការប្រើប្រាស់វិធីសាស្រ្តនេះ។ ដូចនេះអ្នកគួរតែចំណាយថវិការបស់អ្នកទៅលើថ្លៃចូលជាសមាជិកក្លឹបហាត់ប្រាណ និងអាហារសុខភាពល្អជាង។</p>', '2016-03-27-Anti-Aging-Tips', 'uploads/blogs/blog_56f7ab098b21b.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-03-27 09:42:33', 0);
INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(33, 1, '3 Unhealthy Habits That Cause Bloating, Indigestion & Acid Reflux', 'ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ ហើមពោះ រំលាយអាហារមិនល្អ និងច្រាលអាស៊ីតមកលើ', '3 Unhealthy Habits That Cause Bloating, Indigestion & Acid Reflux', 'ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ ហើមពោះ រំលាយអាហារមិនល្អ និងច្រាលអាស៊ីតមកលើ', '<p style="text-align: justify;"><strong>3 Unhealthy Habits That Cause Bloating, Indigestion &amp; Acid Reflux</strong></p>\r\n<p style="text-align: justify;">The food coma is something we all experience now and again, but if you&rsquo;re experiencing it every time you go out to a restaurant or every weekend, then something&rsquo;s got to change. It&rsquo;s not normal to feel sleepy, sluggish and bloated after every meal.</p>\r\n<p style="text-align: justify;">But what about when it&rsquo;s not? What if you&rsquo;re eating healthy, not overeating and yet you still feel sluggish and bloated afterwards? That&rsquo;s where digestion comes in. Unfortunately, most of us aren&rsquo;t even aware that the eating habits we&rsquo;ve developed as a society are causing us to feel this way.</p>\r\n<p style="text-align: justify;">Here are the top 3 unhealthy habits experts recommend avoiding in your next meal:</p>\r\n<p style="text-align: justify;"><strong style="color: #828282;">1. Eathing lots of starch and protein together</strong></p>\r\n<p style="text-align: justify;">Steak and mashed potato. Burger and fries. Eggs Benedict. All the glorious combinations that make us want to pass out on the couch after. Eating large amounts of starch (e.g. bread, pasta, rice, potatoes) and protein (e.g. fish, chicken, beef, eggs) at the same time can cause indigestion and acid reflux.</p>\r\n<p style="text-align: justify;">This is because protein has a much slower rate of digestion, and starches digest much faster into simple sugars. Technically speaking, starches should be saying &ldquo;hasta la vista&rdquo; to the stomach pretty quickly and entering the next stage of digestion in the small intestine. But because they&rsquo;re all mushed up with the protein in the stomach, they have to hang around and wait for hours until the protein finsihes digestion too. And when starches hang around too long, they ferment i.e. release gas which causes us to belch every so eloquently</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;"><strong>Solution:</strong></p>\r\n<p style="text-align: justify;">Eat your starch first, follow it up with protein afterwards. Don&rsquo;t sweat it if you&rsquo;re having a small portion of starch alongside your protein, the key is not to overdo the rice and potatoes. P.S. you can eat your veggies with starch and protein, either combo works well!</p>\r\n<p style="text-align: justify;"><strong style="color: #828282;">2. Having ice-cold water with your meal</strong></p>\r\n<p style="text-align: justify;">When it comes to temperature of drinking water at a meal, opt for room temperature instead of cold. Ice-cold water constricts blood vessels, so it hinders the body&rsquo;s ability to digest food and absorb nutrients.</p>\r\n<p style="text-align: justify;">Ice-cold water will also solidify any fats that are being eaten making them difficult to digest as well. Plus, your body&rsquo;s energy is going to get diverted from trying to digest food to trying to regulate your body&rsquo;s temperature. So much unnecessary exhaustion.</p>\r\n<p style="text-align: justify;"><strong>Solution:</strong></p>\r\n<p style="text-align: justify;">Think Japanese. Order some hot water (with lemon, optional) or green tea before the start of your meal and slowly sip on it to prime your gut for optimal digestion. Always tell the server &ldquo;no ice&rdquo; and &ldquo;room temperature&rdquo;.</p>\r\n<p style="text-align: justify;">Keep in mind that these tips are for optimal digestion. If you suffer from weak digestion, these are far more applicable to you than someone who rarely suffers from feeling bloated or sluggish after a meal. These tips are also more crucial when you have a big brunch or celebratory meal coming up &ndash; basically, when you know a food coma is just around the corner.</p>\r\n<ol style="text-align: justify;" start="3">\r\n<li><strong> Drinking lots of water with your meal</strong></li>\r\n</ol>\r\n<p style="text-align: justify;">Feeling confused already? Water is wonderful. And it&rsquo;s great to have with your meal in small sips, for the purpose of helping the food along the digestive tract. But drowning your meals with multiple glasses of water is just going to give you indigestion and make you feel bloated afterwards.</p>\r\n<p style="text-align: justify;">When food enters your stomach, a substance called hydrochloric acid (HCL) is secreted from the stomach lining to help begin the process of digestion. HCL is super acidic &ndash; after all, it needs to be in order to break big chunks of food into tiny, absorbable nutrients. So, if you start chugging back water with your meal, you&rsquo;re going to dilute the hy drochloric acid and thereby dampen its efforts.</p>\r\n<p style="text-align: justify;"><strong>Solution:</strong></p>\r\n<p style="text-align: justify;">Drinks lots of water either an hour before or after your meals. Only sip on a glass of water throughout your meal.</p>', '<p style="text-align: justify;"><strong>ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ</strong> <strong>ហើមពោះ</strong> <strong>រំលាយអាហារមិនល្អ</strong> <strong>និងច្រាលអាស៊ីតមកលើ</strong></p>\r\n<p style="text-align: justify;">ជាធម្មតាទេ អ្នកតែងតែមានអារម្មណ៏ថា ងងុយគេង តឹងពោះ បន្ទាប់ពីញុំាអាហារច្រើន។ ក៏ប៉ុន្តែ ប្រសិនបើអ្នកមានបញ្ហា ងងុយគេង តឹងពោះ រឺក៏ ច្អុលពោះរាល់ពេលអ្នកញុំាអាហាររួច មានន័យថា មានរឿងមិនប្រក្រតីអាចមានឡើងហើយ។</p>\r\n<p style="text-align: justify;">ប្រសិនបើអ្នកញុំាអាហារដែលមានសុខភាពល្អមិនញុំាច្រើនពេកហើយមានបញ្ហា ងងុយ គេង តឹងពោះ រឺក៏ច្អុលពោះ នេះបញ្ជាក់ថា ប្រព័ន្ធរំលាយអាហាររបស់អ្នក អាច មានបញ្ហា។ ជាអកុសលមនុស្សភាគច្រើនមិនបានដឹងពីទំលាប់នៃការញុំា ដោយសារតែសង្គម ជាអ្នកកំណត់អោយគេមានទំលាប់បែបនេះ។</p>\r\n<p style="text-align: justify;">ខាងក្រោមនេះជាទំលាប់មិនល្អបីយ៉ាងដែលអ្នកគួរតែជៀសវាងនៅពេលញុំាអាហារ</p>\r\n<p style="text-align: justify;"><strong>១</strong><strong>. </strong><strong>ការញុំារបស់មានជាតិម្សៅនិងប្រូតេអ៊ីនច្រើនក្នុងពេលតែមួយ</strong></p>\r\n<p style="text-align: justify;">ឧទាហរណ៏ សាច់គោនិងដំឡូងម៉ត់ burgerនិងដំឡូងចៀន ។ ការញុំាបរិមាណច្រើននៃរបស់មានជាតិម្សៅដូចជា នំបុ័ង pasta បាយ ដំឡូង និង ប្រុតេអ៊ីនដូចជា សាច់ត្រី សាច់មាន់ សាច់គោ ស៊ុត ក្នុងពេលតែមួយអាចធ្វើអោយអ្នកមានមានបញ្ហា ក្នុងការរំលាយ អាហារ និង ការច្រាលអាស៊ីតមកលើ។</p>\r\n<p style="text-align: justify;">នេះដោយសារតែប្រូតេអ៊ីនមានការរលាយយឺត ហើយម្ហូបមានជាតិម្សៅមានការរលាយលឿនទៅជាស្ករ។ និយាយអោយចំទៅ អាហារមានជាតិម្សៅរលាយយ៉ាងរហ័សនៅក្នុងពោះរបស់យើង ហើយបន្តរលាយនៅក្នុងប្រព័ន្ធរំលាយអាហារតូចៗ ក្នុងខ្លួនរបស់ យើង ។ ដោយសារតែអាហារមានជាតិម្សៅរួមផ្សំជាមួយប្រូតេអ៊ីននៅក្នុងពោះរបស់យើង អាហារមានជាតិម្សៅ ត្រូវរងចាំរាប់ម៉ោង ទំរាំតែប្រូតេអ៊ីនរលាយអស់។ ការ ត្រូវរងចាំរាប់ម៉ោងបែបនេះ ដែលធ្វើអោយយើងផើ។</p>\r\n<p style="text-align: justify;"><strong>ដំណោះស្រាយ</strong></p>\r\n<p style="text-align: justify;">គួរញុំាអាហារមានជាតិម្សៅមុនសិន រួចទើបញុំាអាហារប្រុតេអ៊ីនតាមក្រោយ ។ គន្លឹះសំខាន់គឺកុំញុំាបាយ រឺដំឡូងច្រើនពេក អ្នកអាច ញុំាបន្លែជាមួយ អាហារមានជាតិម្សៅ រឺក៏ជាមួយ អាហារមានប្រូតេអ៊ីន។</p>\r\n<p style="text-align: justify;"><strong>២</strong><strong>. </strong><strong>ញុំាទឹកត្រជាក់ជាមួយអាហាររបស់អ្នក</strong></p>\r\n<p style="text-align: justify;">បើនិយាយពីសីតុណ្ហភាពសមរម្យនៅពេលញុំាអាហារ ទឹកធម្មតាប្រសើរជាងទឹកត្រជាក់។ ទឹកត្រជាក់ធ្វើអោយសរសៃឈាមរួមតួច ដូចនេះហើយ វារារាំងរាងកាយយើងក្នុងការរំលាយអាហារនិងស្រូបយកសារធាតុចិញ្ចឹម។</p>\r\n<p style="text-align: justify;">ទឹកត្រជាក់បង្កកជាតិខ្លាញ់ដែលធ្វើអោយរយើងពិបាកក្នុងការរំលាយជាតិខ្លាញ់ទាំងនុះ។ លើសពីនេះទៅទៀត ថាមពលរាងកាយ របស់យើងនឹងប្តូរតួនាទីពី ព្យាយាមរំលាយអាហារទៅជារក្សាសីតុណ្ហភាពក្នុងខ្លួនយើងវិញ។</p>\r\n<p style="text-align: justify;"><strong>ដំណោះស្រាយ</strong></p>\r\n<p style="text-align: justify;">កម៉ង់ទឹកក្តៅជាមួយក្រូចឆ្មារ តែបើមិនមានក្រូចឆ្មារក៏បាន ឬតែបៃតង មុនពេលចាប់ផ្តើមញុំាអាហារ ហើយញុំាទឹកក្តៅសន្សឹមៗ ដើម្បីអោយងាយស្រួលក្នុងការរំលាយអាហារ។</p>\r\n<p style="text-align: justify;">ត្រូវចងចាំថា tips ទាំងនេះគឺសំរាប់សម្រួលដល់ការរំលាយអាហារ ។ ប្រសិនបើអ្នកមានបញ្ហានូវការរំលាយអាហារខ្សោយ Tips ទាំងនេះ គឺជាគន្លឹះយ៉ាងសំខាន់ក្នុងការជួយដល់អ្នក ។ រឹតតែពិសេសជាងនេះទៅទៀត គឺសំរាប់អ្នកដែលមានបញ្ហាចង់ផើអាហារ មកវិញពេលញុំាអាហាររួច។</p>\r\n<p style="text-align: justify;"><strong>៣</strong><strong>. </strong><strong>ញុំាទឹកច្រើនពេកជាមួយអាហាររបស់អ្នក</strong></p>\r\n<p style="text-align: justify;">ទឹកគឺមានសារ:ប្រយោជន៏យ៉ាងសំខាន់ ហើយវាជាការល្អប្រសិនបើអ្នកញុំាទឹកតិចៗនៅពេលដែលអ្នកកំពុងញុំាអាហារ ព្រោះទឹក ជួយអោយមានការរំលាយអាហារបានលឿន ។ ក៏ប៉ុន្តែ ការញុំាទឹកច្រើនពេកនៅពេលដែលអ្នកកំពុងតែញុំាអាហារ ធ្វើអោយអាហារ មិនរលាយនិងធ្វើអោយអ្នកផើឡើង។</p>\r\n<p style="text-align: justify;">នៅពេលដែលអាហារចួលទៅក្នុងពោះ មានសារធាតុម្យាងឈ្មោះ hydrochloric acid (HCL) ជាអ្នកចាប់ផ្តើមជួយរំលាយអាហារ។ HCL មានជាតិអាស៊ីតក្លាំង បន្ទាប់មក វាធ្វើការតាមលំដាប់លំដោយក្នុងការរំលាយអាហារពីបំនែកធំៗទៅជាបំនែកតួចៗ និងស្រូប យកសារធាតុចិញ្ចឹម ។ ដូច្នេះ ប្រសិនបើអ្នកញុំាទឹកច្រើនជាមួយអាហាររបស់អ្នក អ្នកនឹងធ្វើអោយជាតិអាស៊ីតខ្សោយ ជាហេតុធ្វើ អោយការរំលាយអាហារមិនបានល្អ។</p>\r\n<p style="text-align: justify;"><strong>ដំណោះស្រាយ</strong></p>\r\n<p style="text-align: justify;">ញុំាទឹកអោយច្រើនមួយម៉ោងមុន ឬក្រោយពេលញុំាអាហារ ។ ប្រសិនបើអ្នកញុំាទឹកពេលកំពុងញុំាអាហារ សូមញុំាតិចៗបាន ហើយ៕</p>', '3-unhealthy-habits-that-cause-bloating-indigestion-acid-reflux', 'uploads/blogs/blog_5709c3b9a757a.jpg', 0, 0, 0, 0, '0000-00-00 00:00:00', '2016-07-24 17:13:01', 0),
(34, 1, 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', '<p><strong>Endometriosis Linked to Heart Disease in Study</strong></p>\r\n<p><strong>Gynecological condition may boost heart risk 60 percent; even more in young women, research suggests</strong></p>\r\n<p>Tuesday, March 29, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>TUESDAY, March 29, 2016 (HealthDay News) -- Women who have endometriosis, the abnormal growth of uterine tissue outside the uterus, may face a 60 percent higher risk of developing heart disease than women without the disorder, a new study suggests.</p>\r\n<p>The potential risk was especially high for women who were 40 or younger: they were three times more likely to have heart disease than women in the same age range without the gynecological condition, the researchers found.</p>\r\n<p>That finding could be partly explained by the endometriosis treatments themselves. These treatments, such as removal of the uterus and ovaries, have been linked in other studies to potential heart disease risk, the study authors said.</p>\r\n<p>"Women with endometriosis should be thinking about lifestyle changes and discussion with their doctor about steps they can take to prevent heart disease," said Stacey Missmer, the study''s senior author. Missmer is director of epidemiologic research in reproductive medicine at Brigham and Women''s Hospital in Boston.</p>\r\n<p>Missmer said the study found an association between endometriosis and the risk of heart disease, but can''t prove a cause-and-effect relationship. She believes this is the first study to follow people over time, noting, "I would argue that no first study is clear evidence of cause and effect."</p>\r\n<p>However, other studies support the link between endometriosis and heart issues, she said.</p>\r\n<p>"We knew that women with endometriosis have a chronic inflammation. There was one study previously that suggests women with endometriosis have a poor lipid profile -- high ''bad'' cholesterol and low ''good'' cholesterol," Missmer said. These patients also have high levels of oxidative stress. All of those conditions are tied to heart disease risk, she said.</p>\r\n<p>Endometriosis affects about 10 percent of women of reproductive age in the United States, according to background information in the study. Symptoms include pelvic pain and painful periods. The condition is known to reduce fertility.</p>\r\n<p>The study, published online March 29 in&nbsp;<em>Circulation: Cardiovascular Quality and Outcomes</em>, looked at more than 116,000 women enrolled in the Nurses'' Health Study II. The researchers found nearly 12,000 women who received a diagnosis of endometriosis during the 20-year follow-up, which ended in 2009.</p>\r\n<p>In addition to looking at heart disease, Missmer''s team found that women with endometriosis were 1.35 times more likely to need surgery or stents to unblock arteries. These patients were also 1.5 times more likely to have a heart attack, and nearly two times as likely to have chest pain, or angina.</p>\r\n<p>Younger women had an even higher risk of heart disease, the researchers found. Those 40 and younger with endometriosis were three times as likely to have a heart attack, need surgery for a blocked artery or have chest pain (angina) compared to those of the same ages without endometriosis.</p>\r\n<p>Other studies have found that removal of the uterus and ovaries may increase the risk of heart disease, according to the researchers. As women in the study aged, Missmer said, the influence of the endometriosis on their heart disease risk went down, probably because other risk factors -- such as high cholesterol or high blood pressure -- came into play, explaining much of the risk.</p>\r\n<p>The study finding "is not a surprise to me," said Dr. Tamer Seckin, a New York City-based endometriosis surgeon and gynecologist who co-founded the Endometriosis Foundation of America.</p>\r\n<p>"This is significant, that they have statistically found an important link between endometriosis and coronary heart disease," Seckin said. The study is strong for several reasons, including its length of follow-up, he added.</p>\r\n<p>Based on the new study findings, Seckin said, he plans to pay more attention to his patients'' risk of coronary heart disease, asking about family history and other risk factors.</p>\r\n<p>Seckin advocates treating endometriosis, whenever possible, with conservative surgery that removes the lesions, but not the uterus or ovaries.</p>\r\n<p>Missmer stressed that "the take-home message here is that heart disease is the leading killer of women in the U.S. One in three women will experience heart disease, and women need to understand that whether you have endometriosis or not, you should be paying attention to healthy lifestyle choices, even if you are young."</p>', '<p><strong>Endometriosis Linked to Heart Disease in Study</strong></p>\r\n<p><strong>Gynecological condition may boost heart risk 60 percent; even more in young women, research suggests</strong></p>\r\n<p>Tuesday, March 29, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>TUESDAY, March 29, 2016 (HealthDay News) -- Women who have endometriosis, the abnormal growth of uterine tissue outside the uterus, may face a 60 percent higher risk of developing heart disease than women without the disorder, a new study suggests.</p>\r\n<p>The potential risk was especially high for women who were 40 or younger: they were three times more likely to have heart disease than women in the same age range without the gynecological condition, the researchers found.</p>\r\n<p>That finding could be partly explained by the endometriosis treatments themselves. These treatments, such as removal of the uterus and ovaries, have been linked in other studies to potential heart disease risk, the study authors said.</p>\r\n<p>"Women with endometriosis should be thinking about lifestyle changes and discussion with their doctor about steps they can take to prevent heart disease," said Stacey Missmer, the study''s senior author. Missmer is director of epidemiologic research in reproductive medicine at Brigham and Women''s Hospital in Boston.</p>\r\n<p>Missmer said the study found an association between endometriosis and the risk of heart disease, but can''t prove a cause-and-effect relationship. She believes this is the first study to follow people over time, noting, "I would argue that no first study is clear evidence of cause and effect."</p>\r\n<p>However, other studies support the link between endometriosis and heart issues, she said.</p>\r\n<p>"We knew that women with endometriosis have a chronic inflammation. There was one study previously that suggests women with endometriosis have a poor lipid profile -- high ''bad'' cholesterol and low ''good'' cholesterol," Missmer said. These patients also have high levels of oxidative stress. All of those conditions are tied to heart disease risk, she said.</p>\r\n<p>Endometriosis affects about 10 percent of women of reproductive age in the United States, according to background information in the study. Symptoms include pelvic pain and painful periods. The condition is known to reduce fertility.</p>\r\n<p>The study, published online March 29 in&nbsp;<em>Circulation: Cardiovascular Quality and Outcomes</em>, looked at more than 116,000 women enrolled in the Nurses'' Health Study II. The researchers found nearly 12,000 women who received a diagnosis of endometriosis during the 20-year follow-up, which ended in 2009.</p>\r\n<p>In addition to looking at heart disease, Missmer''s team found that women with endometriosis were 1.35 times more likely to need surgery or stents to unblock arteries. These patients were also 1.5 times more likely to have a heart attack, and nearly two times as likely to have chest pain, or angina.</p>\r\n<p>Younger women had an even higher risk of heart disease, the researchers found. Those 40 and younger with endometriosis were three times as likely to have a heart attack, need surgery for a blocked artery or have chest pain (angina) compared to those of the same ages without endometriosis.</p>\r\n<p>Other studies have found that removal of the uterus and ovaries may increase the risk of heart disease, according to the researchers. As women in the study aged, Missmer said, the influence of the endometriosis on their heart disease risk went down, probably because other risk factors -- such as high cholesterol or high blood pressure -- came into play, explaining much of the risk.</p>\r\n<p>The study finding "is not a surprise to me," said Dr. Tamer Seckin, a New York City-based endometriosis surgeon and gynecologist who co-founded the Endometriosis Foundation of America.</p>\r\n<p>"This is significant, that they have statistically found an important link between endometriosis and coronary heart disease," Seckin said. The study is strong for several reasons, including its length of follow-up, he added.</p>\r\n<p>Based on the new study findings, Seckin said, he plans to pay more attention to his patients'' risk of coronary heart disease, asking about family history and other risk factors.</p>\r\n<p>Seckin advocates treating endometriosis, whenever possible, with conservative surgery that removes the lesions, but not the uterus or ovaries.</p>\r\n<p>Missmer stressed that "the take-home message here is that heart disease is the leading killer of women in the U.S. One in three women will experience heart disease, and women need to understand that whether you have endometriosis or not, you should be paying attention to healthy lifestyle choices, even if you are young."</p>', 'endometriosis-linked-to-heart-disease-in-study', 'uploads/blogs/blog_5700cfc62c944.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-05-13 13:08:05', 0),
(35, 1, 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', '<p>Obstructive Sleep Apnea: 5 Self-Care Strategies</p>\r\n<p>Reviewed by Jennifer Robinson, MD&nbsp;on October 27, 2015</p>\r\n<p>Your doctor can help you find a sleep apnea treatment that makes a big difference in how you feel. But you can also do things at home to improve your symptoms. Some of them will even boost your health overall, and lower your chances of getting other medical problems.</p>\r\n<p>Tip 1: Lose Weight if You Need To</p>\r\n<p>Not all people with sleep apnea are overweight or obese, but many are. Weight loss &ndash; even a modest amount -- can improve your symptoms.</p>\r\n<p>In one study, 71 people with the disorder got either lifestyle counseling or joined a program that included a 12-week low-calorie diet. On average, those in the diet group shed 16 pounds. After 2 years, sleep apnea was much less severe for them than it was for the people who got lifestyle counseling only.</p>\r\n<p>Another study looked at how weight loss affected obstructive sleep apnea among obese people with type 2 diabetes. The people in the study joined either a weight loss group or a diabetes management group for 1 year. On average, those in the weight loss group lost nearly 24 pounds, while those in the other group lost 1.3 pounds.</p>\r\n<p>The effects of losing weight were even more dramatic in this study. Three times as many people in the weight loss group wound up with no symptoms of sleep apnea at all. And among the people in that group who still had the disorder, it was much less severe after they slimmed down.</p>\r\n<p>Tip 2: Limit Alcohol and Stop Smoking</p>\r\n<p>You already know that smoking and drinking too much alcohol aren&rsquo;t the healthiest moves you can make. Did you know they can also make your sleep apnea symptoms worse? Cigarette smoking increases the swelling in your upper airway. That can aggravate symptoms like snoring and pauses in breathing.</p>\r\n<p>Alcohol decreases the muscle tone in the back of the throat, which can interfere with air flow -- the last thing you need when you already have breathing problems.</p>\r\n<p>Tip 3: Eat Healthy</p>\r\n<p>This is great advice for everyone. But some research shows that having sleep apnea may mean you''re more likely to consider making unhealthy food choices. When you don&rsquo;t get enough sleep, you might be more likely to crave carbs. Lack of Zzz''s and fatigue have also been linked with changes in the hormones leptin and ghrelin, which control your feelings of hunger and fullness. When you&rsquo;re tired, you may want to eat more and feel less satisfied when you do.</p>\r\n<p>You don&rsquo;t need to be overweight to have an unhealthy diet. In a study of 320 adults, those with more-severe sleep apnea ate more protein, fat, and saturated fatty acids than those who had a less-severe problem, regardless of how much they weighed.</p>\r\n<p>Tip 4: Tend to Your Allergies</p>\r\n<p>It&rsquo;s no surprise that sleeping and breathing are harder when you&rsquo;re stuffed up from nasal allergies.</p>\r\n<p>Picture your airway as a long, muscular tube running from your nose to your windpipe. If your allergies aren&rsquo;t under control, the tissues of your upper throat swell and make the airway narrow. With less space for air, breathing gets harder.</p>\r\n<p>If you have nasal allergies, talk to your doctor about how to get them under control. It may help to use a Neti pot or a saline nasal spray before bed.</p>\r\n<p>Tip 5: Build a Good Sleep Routine</p>\r\n<p>Shut-eye is an important part of good health. The catch, of course, is that sleep apnea makes it hard to get enough.&nbsp;</p>\r\n<p>About half of people with the condition have most of their breathing problems when they sleep on their backs. So most doctors encourage people to try to stay in other positions. But how can you get into the habit? Some doctors suggest a simple trick: Put two tennis balls into a tube sock and pin it to the back of your nightshirt.</p>\r\n<p>Devices that improve breathing for people with the disorder -- including a CPAP (continuous positive airway pressure) machine -- can also help. Talk to your doctor about whether you should start using one.</p>', '<p>Obstructive Sleep Apnea: 5 Self-Care Strategies</p>\r\n<p>Reviewed by Jennifer Robinson, MD&nbsp;on October 27, 2015</p>\r\n<p>Your doctor can help you find a sleep apnea treatment that makes a big difference in how you feel. But you can also do things at home to improve your symptoms. Some of them will even boost your health overall, and lower your chances of getting other medical problems.</p>\r\n<p>Tip 1: Lose Weight if You Need To</p>\r\n<p>Not all people with sleep apnea are overweight or obese, but many are. Weight loss &ndash; even a modest amount -- can improve your symptoms.</p>\r\n<p>In one study, 71 people with the disorder got either lifestyle counseling or joined a program that included a 12-week low-calorie diet. On average, those in the diet group shed 16 pounds. After 2 years, sleep apnea was much less severe for them than it was for the people who got lifestyle counseling only.</p>\r\n<p>Another study looked at how weight loss affected obstructive sleep apnea among obese people with type 2 diabetes. The people in the study joined either a weight loss group or a diabetes management group for 1 year. On average, those in the weight loss group lost nearly 24 pounds, while those in the other group lost 1.3 pounds.</p>\r\n<p>The effects of losing weight were even more dramatic in this study. Three times as many people in the weight loss group wound up with no symptoms of sleep apnea at all. And among the people in that group who still had the disorder, it was much less severe after they slimmed down.</p>\r\n<p>Tip 2: Limit Alcohol and Stop Smoking</p>\r\n<p>You already know that smoking and drinking too much alcohol aren&rsquo;t the healthiest moves you can make. Did you know they can also make your sleep apnea symptoms worse? Cigarette smoking increases the swelling in your upper airway. That can aggravate symptoms like snoring and pauses in breathing.</p>\r\n<p>Alcohol decreases the muscle tone in the back of the throat, which can interfere with air flow -- the last thing you need when you already have breathing problems.</p>\r\n<p>Tip 3: Eat Healthy</p>\r\n<p>This is great advice for everyone. But some research shows that having sleep apnea may mean you''re more likely to consider making unhealthy food choices. When you don&rsquo;t get enough sleep, you might be more likely to crave carbs. Lack of Zzz''s and fatigue have also been linked with changes in the hormones leptin and ghrelin, which control your feelings of hunger and fullness. When you&rsquo;re tired, you may want to eat more and feel less satisfied when you do.</p>\r\n<p>You don&rsquo;t need to be overweight to have an unhealthy diet. In a study of 320 adults, those with more-severe sleep apnea ate more protein, fat, and saturated fatty acids than those who had a less-severe problem, regardless of how much they weighed.</p>\r\n<p>Tip 4: Tend to Your Allergies</p>\r\n<p>It&rsquo;s no surprise that sleeping and breathing are harder when you&rsquo;re stuffed up from nasal allergies.</p>\r\n<p>Picture your airway as a long, muscular tube running from your nose to your windpipe. If your allergies aren&rsquo;t under control, the tissues of your upper throat swell and make the airway narrow. With less space for air, breathing gets harder.</p>\r\n<p>If you have nasal allergies, talk to your doctor about how to get them under control. It may help to use a Neti pot or a saline nasal spray before bed.</p>\r\n<p>Tip 5: Build a Good Sleep Routine</p>\r\n<p>Shut-eye is an important part of good health. The catch, of course, is that sleep apnea makes it hard to get enough.&nbsp;</p>\r\n<p>About half of people with the condition have most of their breathing problems when they sleep on their backs. So most doctors encourage people to try to stay in other positions. But how can you get into the habit? Some doctors suggest a simple trick: Put two tennis balls into a tube sock and pin it to the back of your nightshirt.</p>\r\n<p>Devices that improve breathing for people with the disorder -- including a CPAP (continuous positive airway pressure) machine -- can also help. Talk to your doctor about whether you should start using one.</p>', '2016-03-31-Obstructive-Sleep-Apnea:-5-Self-Care-Strategies', 'uploads/blogs/blog_56fd212124a37.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-05-13 13:08:12', 0),
(36, 1, 'Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke', '<p><strong>Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke</strong><strong>: </strong></p>\r\n<p><strong>Study </strong><strong>Fatal strokes seven times more likely if drugs to control blood pressure, cholesterol aren''t taken as prescribed</strong></p>\r\n<p>Monday, March 28, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>MONDAY, March 28, 2016 (HealthDay News) -- People at risk for heart disease are much more likely to die from a stroke if they don''t take cholesterol-lowering statin drugs and blood pressure medications as prescribed, a new study reports.</p>\r\n<p>Folks with high blood pressure and high cholesterol had a seven times greater risk of suffering a fatal stroke if they didn''t follow their drug regimen to lower cholesterol and blood pressure.</p>\r\n<p>The study findings were published online March 28 in the&nbsp;<em>Journal of the American College of Cardiology</em>.</p>\r\n<p>Fatal stroke risk also increased if these patients stuck to one type of medication but not both, the researchers found.</p>\r\n<p>For example, if patients kept taking blood pressure medication but dropped their statins, their risk of dying from a stroke increased by 82 percent. Turning the tables, they had a 30 percent added risk of stroke if they took their statins but didn''t take their blood pressure medications.</p>\r\n<p>"High blood pressure and high cholesterol concentration are key risk factors for stroke for which effective medication is available," said study lead author Kimmo Herttua, head researcher for the Center of Maritime Health and Society at the University of Southern Denmark. "A major obstacle for the full benefits of lipid-lowering and antihypertensive treatments is the non-adherence of patients to drug therapy."</p>\r\n<p>Stroke is responsible for 12 percent of all deaths worldwide, and it is the second leading cause of death after heart disease, the researchers said.</p>\r\n<p>In this study, Herttua and colleagues tracked data on more than 58,000 patients in Finland with high cholesterol levels. During an average 5.5 years of follow-up, 532 died of stroke.</p>\r\n<p>The researchers used prescription records to track whether people were taking medications as their doctors ordered. They found that only six out of 10 people took statins as prescribed.</p>\r\n<p>Experts cited a number of reasons patients might find it tough to keep up with all their medications.</p>\r\n<p>Doctors struggle to get patients to stick to any sort of health-improving regimen, noted Dr. Nieca Goldberg, a cardiologist and medical director of NYU Langone''s Joan H. Tisch Center for Women''s Health.</p>\r\n<p>"One of the challenges in taking care of patients is getting them to start a program and get them to continue it, whether it''s getting them to exercise, cut down on their sugar intake or take their medicine," she said.</p>\r\n<p>Doctors may not be properly explaining the role of these drugs in their health, and the necessity of taking them as prescribed, Goldberg and Herttua said.</p>\r\n<p>"People need to understand the connection between taking those medicines and preventing a heart attack or stroke," Goldberg said. "Face-to-face time being limited in the doctor''s office, that is kind of getting lost in the visit."</p>\r\n<p>Patients also might be struggling to keep up with all of the medications they need to take in a day. "The more medication recommended, the less likely a patient is to remember to take them," Herttua said.</p>\r\n<p>Drug costs also might play a role.</p>\r\n<p>"Generics aren''t as cheap anymore. There are rising prices for generics," Goldberg said. "Sometimes instead of not taking the pill at all, a patient may cut the dose. It''s important not to do that, because you want to make sure you have the most effective dose."</p>\r\n<p>Finally, people might simply burn out, throwing up their hands in despair at all the steps they must take to maintain their health.</p>\r\n<p>"It''s a drag," Goldberg said. "People don''t want to feel like a patient. They want to feel like themselves."</p>\r\n<p>New technologies might help people stay on top of their medications, Herttua said. For example, daily text messages could remind patients to take their statins and blood pressure pills.</p>\r\n<p>Medical science also could help by combining different medications into a single "polypill," cutting down on the number of prescriptions a patient has to manage, Herttua said.</p>\r\n<p>Doctors also can help patients by emphasizing the importance of these medications to their brain health, said Dr. Gayatri Devi, a neurologist and memory loss specialist at Lenox Hill Hospital in New York City.</p>\r\n<p>"The best way to improve compliance in chronic illness is through education about the benefits of doing so," Devi said. "People often ask me how to keep their brains functional as they age. I tell them one of the most effective things they can do is promote cardiovascular health."</p>\r\n<p>How?</p>\r\n<p>"By exercising, following a good Mediterranean diet and adhering to an appropriate medication regimen necessary to control their diabetes, hypertension and high cholesterol, if they have these conditions," Devi said.</p>', '<p><strong>Skipping Meds Greatly Ups Heart Patients'' Risk of Stroke</strong><strong>: </strong></p>\r\n<p><strong>Study </strong><strong>Fatal strokes seven times more likely if drugs to control blood pressure, cholesterol aren''t taken as prescribed</strong></p>\r\n<p>Monday, March 28, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>MONDAY, March 28, 2016 (HealthDay News) -- People at risk for heart disease are much more likely to die from a stroke if they don''t take cholesterol-lowering statin drugs and blood pressure medications as prescribed, a new study reports.</p>\r\n<p>Folks with high blood pressure and high cholesterol had a seven times greater risk of suffering a fatal stroke if they didn''t follow their drug regimen to lower cholesterol and blood pressure.</p>\r\n<p>The study findings were published online March 28 in the&nbsp;<em>Journal of the American College of Cardiology</em>.</p>\r\n<p>Fatal stroke risk also increased if these patients stuck to one type of medication but not both, the researchers found.</p>\r\n<p>For example, if patients kept taking blood pressure medication but dropped their statins, their risk of dying from a stroke increased by 82 percent. Turning the tables, they had a 30 percent added risk of stroke if they took their statins but didn''t take their blood pressure medications.</p>\r\n<p>"High blood pressure and high cholesterol concentration are key risk factors for stroke for which effective medication is available," said study lead author Kimmo Herttua, head researcher for the Center of Maritime Health and Society at the University of Southern Denmark. "A major obstacle for the full benefits of lipid-lowering and antihypertensive treatments is the non-adherence of patients to drug therapy."</p>\r\n<p>Stroke is responsible for 12 percent of all deaths worldwide, and it is the second leading cause of death after heart disease, the researchers said.</p>\r\n<p>In this study, Herttua and colleagues tracked data on more than 58,000 patients in Finland with high cholesterol levels. During an average 5.5 years of follow-up, 532 died of stroke.</p>\r\n<p>The researchers used prescription records to track whether people were taking medications as their doctors ordered. They found that only six out of 10 people took statins as prescribed.</p>\r\n<p>Experts cited a number of reasons patients might find it tough to keep up with all their medications.</p>\r\n<p>Doctors struggle to get patients to stick to any sort of health-improving regimen, noted Dr. Nieca Goldberg, a cardiologist and medical director of NYU Langone''s Joan H. Tisch Center for Women''s Health.</p>\r\n<p>"One of the challenges in taking care of patients is getting them to start a program and get them to continue it, whether it''s getting them to exercise, cut down on their sugar intake or take their medicine," she said.</p>\r\n<p>Doctors may not be properly explaining the role of these drugs in their health, and the necessity of taking them as prescribed, Goldberg and Herttua said.</p>\r\n<p>"People need to understand the connection between taking those medicines and preventing a heart attack or stroke," Goldberg said. "Face-to-face time being limited in the doctor''s office, that is kind of getting lost in the visit."</p>\r\n<p>Patients also might be struggling to keep up with all of the medications they need to take in a day. "The more medication recommended, the less likely a patient is to remember to take them," Herttua said.</p>\r\n<p>Drug costs also might play a role.</p>\r\n<p>"Generics aren''t as cheap anymore. There are rising prices for generics," Goldberg said. "Sometimes instead of not taking the pill at all, a patient may cut the dose. It''s important not to do that, because you want to make sure you have the most effective dose."</p>\r\n<p>Finally, people might simply burn out, throwing up their hands in despair at all the steps they must take to maintain their health.</p>\r\n<p>"It''s a drag," Goldberg said. "People don''t want to feel like a patient. They want to feel like themselves."</p>\r\n<p>New technologies might help people stay on top of their medications, Herttua said. For example, daily text messages could remind patients to take their statins and blood pressure pills.</p>\r\n<p>Medical science also could help by combining different medications into a single "polypill," cutting down on the number of prescriptions a patient has to manage, Herttua said.</p>\r\n<p>Doctors also can help patients by emphasizing the importance of these medications to their brain health, said Dr. Gayatri Devi, a neurologist and memory loss specialist at Lenox Hill Hospital in New York City.</p>\r\n<p>"The best way to improve compliance in chronic illness is through education about the benefits of doing so," Devi said. "People often ask me how to keep their brains functional as they age. I tell them one of the most effective things they can do is promote cardiovascular health."</p>\r\n<p>How?</p>\r\n<p>"By exercising, following a good Mediterranean diet and adhering to an appropriate medication regimen necessary to control their diabetes, hypertension and high cholesterol, if they have these conditions," Devi said.</p>', '2016-03-31-Skipping-Meds-Greatly-Ups-Heart-Patients-Risk-of-Stroke', 'uploads/blogs/blog_56fd2157db541.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-04-10 03:09:44', 0);
INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(37, 1, 'Health risks of obesity', 'Health risks of obesity', 'Health risks of obesity', 'Health risks of obesity', '<p><strong><u>Health risks of obesity</u></strong></p>\r\n<p>Obesity is a medical condition in which a high amount of body fat increases the chance of developing medical problems.</p>\r\n<p>People with obesity have a higher chance of developing these health problems:</p>\r\n<ul>\r\n<li>High blood glucose (sugar) or diabetes.</li>\r\n<li>High blood pressure (hypertension).</li>\r\n<li>High blood cholesterol and triglycerides (dyslipidemia or high blood fats).</li>\r\n<li>Heart attacks due to coronary heart disease, heart failure, and stroke.</li>\r\n<li>Bone and joint problems, more weight puts pressure on the bones and joints. This can lead to osteoarthritis, a disease that causes joint pain and stiffness.</li>\r\n<li>Stopping breathing during sleep (sleep apnea). This can cause daytime fatigue or sleepiness, poor attention, and problems at work.</li>\r\n<li>Gallstones and liver problems.</li>\r\n<li>Some cancers</li>\r\n</ul>\r\n<p>Three things can be used to determine if a person''s body fat gives them a higher chance of developing obesity-related diseases:</p>\r\n<ul>\r\n<li>Body mass index (BMI)</li>\r\n<li>Waist size</li>\r\n<li>Other risk factors the person has (a risk factor is anything that increases your chance of getting a disease.)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Body Mass Index</strong></p>\r\n<p>Body mass index (BMI) is calculated using height and weight. It is used to estimate body fat.</p>\r\n<p>Starting at 25.0, the higher your BMI, the greater is your risk of developing obesity-related health problems. These ranges of BMI are used to describe levels of risk:</p>\r\n<ul>\r\n<li>Overweight (not obese), if BMI is 25.0 to 29.9</li>\r\n<li>Class 1 (low-risk) obesity, if BMI is 30.0 to 34.9</li>\r\n<li>Class 2 (moderate-risk) obesity, if BMI is 35.0 to 39.9</li>\r\n<li>Class 3 (high-risk) obesity, if BMI is equal to or greater than 40.0</li>\r\n</ul>\r\n<p><strong>Waist Size</strong></p>\r\n<p>Women with a waist size greater than 35 inches and men with a waist size greater than 40 inches have an increased risk of heart disease and type 2 diabetes. People with "apple-shaped" bodies (waist is bigger than the hips) also have an increased risk of these conditions.</p>\r\n<p><strong>Risk Factors</strong></p>\r\n<p>Having a risk factor does not mean that you will get the disease. But it does increase the chance that you will. Some risk factors, like age, race, or family history cannot be changed.</p>\r\n<p>The more risk factors you have, the more likely it is that you will develop the disease or health problem.</p>\r\n<p>Your risk of developing health problems such as heart disease, stroke, and kidney problems increases if you are obese and have these risk factors:</p>\r\n<ul>\r\n<li>High blood pressure (hypertension)</li>\r\n<li>High blood cholesterol or triglycerides</li>\r\n<li>High blood glucose (sugar), a sign of type 2 diabetes</li>\r\n</ul>\r\n<p>These other risk factors for heart disease and stroke are not caused by obesity:</p>\r\n<ul>\r\n<li>Having a family member under the age of 50 with heart disease</li>\r\n<li>Being physically inactive or having a sedentary lifestyle</li>\r\n<li>Smoking or using tobacco products of any kind</li>\r\n</ul>\r\n<p><strong>Summing it up</strong></p>\r\n<p>You can control many of these risk factors by changing your lifestyle. If you have obesity, your doctor can help you begin a weight-loss program. A starting goal of losing 5 to 10% of your current weight will reduce your risk of developing obesity-related diseases.</p>', '<p><strong><u>Health risks of obesity</u></strong></p>\r\n<p>Obesity is a medical condition in which a high amount of body fat increases the chance of developing medical problems.</p>\r\n<p>People with obesity have a higher chance of developing these health problems:</p>\r\n<ul>\r\n<li>High blood glucose (sugar) or diabetes.</li>\r\n<li>High blood pressure (hypertension).</li>\r\n<li>High blood cholesterol and triglycerides (dyslipidemia or high blood fats).</li>\r\n<li>Heart attacks due to coronary heart disease, heart failure, and stroke.</li>\r\n<li>Bone and joint problems, more weight puts pressure on the bones and joints. This can lead to osteoarthritis, a disease that causes joint pain and stiffness.</li>\r\n<li>Stopping breathing during sleep (sleep apnea). This can cause daytime fatigue or sleepiness, poor attention, and problems at work.</li>\r\n<li>Gallstones and liver problems.</li>\r\n<li>Some cancers</li>\r\n</ul>\r\n<p>Three things can be used to determine if a person''s body fat gives them a higher chance of developing obesity-related diseases:</p>\r\n<ul>\r\n<li>Body mass index (BMI)</li>\r\n<li>Waist size</li>\r\n<li>Other risk factors the person has (a risk factor is anything that increases your chance of getting a disease.)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Body Mass Index</strong></p>\r\n<p>Body mass index (BMI) is calculated using height and weight. It is used to estimate body fat.</p>\r\n<p>Starting at 25.0, the higher your BMI, the greater is your risk of developing obesity-related health problems. These ranges of BMI are used to describe levels of risk:</p>\r\n<ul>\r\n<li>Overweight (not obese), if BMI is 25.0 to 29.9</li>\r\n<li>Class 1 (low-risk) obesity, if BMI is 30.0 to 34.9</li>\r\n<li>Class 2 (moderate-risk) obesity, if BMI is 35.0 to 39.9</li>\r\n<li>Class 3 (high-risk) obesity, if BMI is equal to or greater than 40.0</li>\r\n</ul>\r\n<p><strong>Waist Size</strong></p>\r\n<p>Women with a waist size greater than 35 inches and men with a waist size greater than 40 inches have an increased risk of heart disease and type 2 diabetes. People with "apple-shaped" bodies (waist is bigger than the hips) also have an increased risk of these conditions.</p>\r\n<p><strong>Risk Factors</strong></p>\r\n<p>Having a risk factor does not mean that you will get the disease. But it does increase the chance that you will. Some risk factors, like age, race, or family history cannot be changed.</p>\r\n<p>The more risk factors you have, the more likely it is that you will develop the disease or health problem.</p>\r\n<p>Your risk of developing health problems such as heart disease, stroke, and kidney problems increases if you are obese and have these risk factors:</p>\r\n<ul>\r\n<li>High blood pressure (hypertension)</li>\r\n<li>High blood cholesterol or triglycerides</li>\r\n<li>High blood glucose (sugar), a sign of type 2 diabetes</li>\r\n</ul>\r\n<p>These other risk factors for heart disease and stroke are not caused by obesity:</p>\r\n<ul>\r\n<li>Having a family member under the age of 50 with heart disease</li>\r\n<li>Being physically inactive or having a sedentary lifestyle</li>\r\n<li>Smoking or using tobacco products of any kind</li>\r\n</ul>\r\n<p><strong>Summing it up</strong></p>\r\n<p>You can control many of these risk factors by changing your lifestyle. If you have obesity, your doctor can help you begin a weight-loss program. A starting goal of losing 5 to 10% of your current weight will reduce your risk of developing obesity-related diseases.</p>', '2016-03-31-Health-risks-of-obesity', 'uploads/blogs/blog_56fd219e777cf.jpg', 0, 1, 0, 1, '0000-00-00 00:00:00', '2016-05-13 13:08:19', 0),
(38, 1, 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', '<p><strong>Brain Stimulation May Help People With Anorexia</strong></p>\r\n<p><strong>Depression treatment cut urge to restrict food, study says</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Friday, March 25, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>FRIDAY, March 25, 2016 (HealthDay News) -- Brain stimulation may ease major symptoms of the eating disorder anorexia nervosa, a typically hard-to-treat condition, a new study suggests.</p>\r\n<p>British researchers evaluated anorexia patients before and after they underwent repetitive transcranial stimulation (rTMS), a treatment approved for depression.</p>\r\n<p>"With rTMS we targeted ... an area of the brain thought to be involved in some of the self-regulation difficulties associated with anorexia," study first author Jessica McClelland, a postdoctoral researcher at King''s College London, said in a school news release.</p>\r\n<p>The treatment delivers magnetic pulses to specific areas of the brain. It feels like a gentle tapping sensation on the side of the head, McClelland explained. The treatment alters the activity of the nerve cells in the brain, she said.</p>\r\n<p>"We found that one session of [brain stimulation] reduced the urge to restrict food intake, levels of feeling full and levels of feeling fat, as well as encouraging more prudent decision-making. Taken together, these findings suggest that brain stimulation may reduce symptoms of anorexia by improving cognitive control over compulsive features of the disorder," McClelland said.</p>\r\n<p>The study was published March 23 in the journal&nbsp;<em>PLoS One</em>.</p>\r\n<p>"Anorexia nervosa is thought to affect up to 4 percent of women in their lifetime. With increasing illness duration, anorexia becomes entrenched in the brain and increasingly difficult to treat. Our preliminary findings support the potential of novel brain-directed treatments for anorexia, which are desperately needed," study senior author Ulrike Schmidt, a professor from Kings College London, said in the news release.</p>\r\n<p>Because of the promising findings, the researchers are testing brain stimulation to see if it offers longer-term benefits for people with anorexia nervosa, Schmidt added.</p>\r\n<p>Up to 20 percent of anorexia patients die prematurely from the condition, the researchers said.</p>', '<p><strong>Brain Stimulation May Help People With Anorexia</strong></p>\r\n<p><strong>Depression treatment cut urge to restrict food, study says</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Friday, March 25, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>FRIDAY, March 25, 2016 (HealthDay News) -- Brain stimulation may ease major symptoms of the eating disorder anorexia nervosa, a typically hard-to-treat condition, a new study suggests.</p>\r\n<p>British researchers evaluated anorexia patients before and after they underwent repetitive transcranial stimulation (rTMS), a treatment approved for depression.</p>\r\n<p>"With rTMS we targeted ... an area of the brain thought to be involved in some of the self-regulation difficulties associated with anorexia," study first author Jessica McClelland, a postdoctoral researcher at King''s College London, said in a school news release.</p>\r\n<p>The treatment delivers magnetic pulses to specific areas of the brain. It feels like a gentle tapping sensation on the side of the head, McClelland explained. The treatment alters the activity of the nerve cells in the brain, she said.</p>\r\n<p>"We found that one session of [brain stimulation] reduced the urge to restrict food intake, levels of feeling full and levels of feeling fat, as well as encouraging more prudent decision-making. Taken together, these findings suggest that brain stimulation may reduce symptoms of anorexia by improving cognitive control over compulsive features of the disorder," McClelland said.</p>\r\n<p>The study was published March 23 in the journal&nbsp;<em>PLoS One</em>.</p>\r\n<p>"Anorexia nervosa is thought to affect up to 4 percent of women in their lifetime. With increasing illness duration, anorexia becomes entrenched in the brain and increasingly difficult to treat. Our preliminary findings support the potential of novel brain-directed treatments for anorexia, which are desperately needed," study senior author Ulrike Schmidt, a professor from Kings College London, said in the news release.</p>\r\n<p>Because of the promising findings, the researchers are testing brain stimulation to see if it offers longer-term benefits for people with anorexia nervosa, Schmidt added.</p>\r\n<p>Up to 20 percent of anorexia patients die prematurely from the condition, the researchers said.</p>', 'brain-stimulation-may-help-people', 'uploads/blogs/blog_56fd21f217be0.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-06-01 08:48:06', 0),
(39, 1, 'Daytime Sleepiness Long Naps Linked to Heart Risks', 'Daytime Sleepiness Long Naps Linked to Heart Risks', 'Daytime Sleepiness, Long Naps Linked to Heart Risks', 'Daytime Sleepiness, Long Naps Linked to Heart Risks', '<p><strong>Daytime Sleepiness, Long Naps Linked to Heart Risks: Study</strong></p>\r\n<p><strong>People who nap more than 1 hour a day also more likely to develop type 2 diabetes, researchers say</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Thursday, March 24, 2016</p>\r\n<p>THURSDAY, March 24, 2016 (HealthDay News) -- While getting enough sleep is key to health, a new study suggests that long daytime naps may not be doing your heart any favors.</p>\r\n<p>The researchers found that long naps and excessive daytime sleepiness were associated with an increased risk for a combination of health problems that are collectively known as metabolic syndrome. And that can boost the risk of heart disease and diabetes.</p>\r\n<p>Metabolic syndrome includes conditions such as high blood pressure, high cholesterol, high blood sugar and excess fat around the waist.</p>\r\n<p>The investigators analyzed the findings of 21 studies that included a total of more than 307,000 people. The research showed that people who napped for less than 40 minutes were not at increased risk for metabolic syndrome. In fact, those who napped less than 30 minutes had a slight decrease in risk.</p>\r\n<p>But there was a sharp rise in risk among those who napped for more than 40 minutes, the study authors said. For example, napping for more than 90 minutes appeared to increase the risk of metabolic syndrome by as much as 50 percent, as did excessive daytime sleepiness.</p>\r\n<p>The review also found that napping for more than an hour or being overly tired during the day were both linked with a 50 percent higher risk for type 2 diabetes.</p>\r\n<p>However, the study only found an association between these factors, and did not prove that excessive sleepiness and long naps actually cause metabolic syndrome or diabetes.</p>\r\n<p>The findings are to be presented April 3 at an American College of Cardiology (ACC) meeting in Chicago. Research presented at meetings is typically considered preliminary until published in a peer-reviewed journal.</p>\r\n<p>"Taking naps is widely prevalent around the world," study author Dr. Tomohide Yamada, a diabetologist at the University of Tokyo, said in an ACC news release. "So, clarifying the relationship between naps and metabolic disease might offer a new strategy of treatment, especially as metabolic disease has been increasing steadily all over the world," he added.</p>\r\n<p>About one-third of American adults do not get enough sleep, according to the U.S. Centers for Disease Control and Prevention. The National Sleep Foundation recommends naps of 20 to 30 minutes to boost alertness.</p>\r\n<p>"Sleep is an important component of our healthy lifestyle, as well as diet and exercise," Yamada said. "Short naps might have a beneficial effect on our health, but we don''t yet know the strength of that effect or the mechanism by which it works."</p>', '<p><strong>Daytime Sleepiness, Long Naps Linked to Heart Risks: Study</strong></p>\r\n<p><strong>People who nap more than 1 hour a day also more likely to develop type 2 diabetes, researchers say</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Thursday, March 24, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>THURSDAY, March 24, 2016 (HealthDay News) -- While getting enough sleep is key to health, a new study suggests that long daytime naps may not be doing your heart any favors.</p>\r\n<p>The researchers found that long naps and excessive daytime sleepiness were associated with an increased risk for a combination of health problems that are collectively known as metabolic syndrome. And that can boost the risk of heart disease and diabetes.</p>\r\n<p>Metabolic syndrome includes conditions such as high blood pressure, high cholesterol, high blood sugar and excess fat around the waist.</p>\r\n<p>The investigators analyzed the findings of 21 studies that included a total of more than 307,000 people. The research showed that people who napped for less than 40 minutes were not at increased risk for metabolic syndrome. In fact, those who napped less than 30 minutes had a slight decrease in risk.</p>\r\n<p>But there was a sharp rise in risk among those who napped for more than 40 minutes, the study authors said. For example, napping for more than 90 minutes appeared to increase the risk of metabolic syndrome by as much as 50 percent, as did excessive daytime sleepiness.</p>\r\n<p>The review also found that napping for more than an hour or being overly tired during the day were both linked with a 50 percent higher risk for type 2 diabetes.</p>\r\n<p>However, the study only found an association between these factors, and did not prove that excessive sleepiness and long naps actually cause metabolic syndrome or diabetes.</p>\r\n<p>The findings are to be presented April 3 at an American College of Cardiology (ACC) meeting in Chicago. Research presented at meetings is typically considered preliminary until published in a peer-reviewed journal.</p>\r\n<p>"Taking naps is widely prevalent around the world," study author Dr. Tomohide Yamada, a diabetologist at the University of Tokyo, said in an ACC news release. "So, clarifying the relationship between naps and metabolic disease might offer a new strategy of treatment, especially as metabolic disease has been increasing steadily all over the world," he added.</p>\r\n<p>About one-third of American adults do not get enough sleep, according to the U.S. Centers for Disease Control and Prevention. The National Sleep Foundation recommends naps of 20 to 30 minutes to boost alertness.</p>\r\n<p>"Sleep is an important component of our healthy lifestyle, as well as diet and exercise," Yamada said. "Short naps might have a beneficial effect on our health, but we don''t yet know the strength of that effect or the mechanism by which it works."</p>', 'daytime-sleepiness-long-naps-linked-to-heart-risks', 'uploads/blogs/blog_56fe3574888ba.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-07-19 01:43:34', 0),
(40, 1, 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', '<p>Habits That May Cause Constipation</p>\r\n<p>By Brenda Conaway<br /> WebMD Feature</p>\r\n<p>Reviewed by&nbsp;<a href="http://www.webmd.com/michael-w-smith">Michael W. Smith, MD</a></p>\r\n<p>If you''ve ever been constipated, you know how uncomfortable it can be. Although laxatives can provide a short-term fix, making certain lifestyle changes can help solve the problem for good. Below, medical experts weigh in on seven habits you should avoid to improve your digestive health.</p>\r\n<ol>\r\n<li><strong> Inactivity and Constipation</strong></li>\r\n</ol>\r\n<p>Lack of exercise not only causes weight gain and other health problems, it can also affect digestion. "Sedentary lifestyle is the thing that I would worry most about," says G. Richard Locke III, MD, gastroenterologist with the Mayo Clinic in Rochester, MN. No one knows exactly why, he says, but being inactive can cause constipation.</p>\r\n<p><strong>What you can do:&nbsp;</strong>"The best thing you can do to move your bowels is wake up, eat a real meal, and do some low-level activity," Locke tells WebMD. It doesn''t have to be rigorous exercise, he says. Moving your body every day will improve your digestive health.</p>\r\n<ol start="2">\r\n<li><strong> A Low-Fiber Diet Slows Digestion</strong></li>\r\n</ol>\r\n<p>Fiber is the material in plant foods that your body can''t digest, and it''s important for good digestion. "It goes through you and gives you something to form a stool around," says Locke. When you don''t have enough fiber in your diet, stools can become small, dry, and hard.</p>\r\n<p><strong>What you can do:</strong>&nbsp;Eating more fiber adds bulk to stools, making them softer and easier to pass. To get more fiber in your diet, eat more fruits and vegetables, legumes and beans, and whole grains. A simple rule of thumb is to fill half your plate with fruits and vegetables at each meal. Also, always choose whole-grain breads and cereals and include one or two meals a week with beans or legumes. Gradually adding fiber to your diet (and be sure to drink plenty of water) will help prevent bloating and gas. Consider fiber supplements if the methods mentioned above don&rsquo;t seem to help.</p>\r\n<ol start="3">\r\n<li><strong> Not Drinking Enough Fluids Causes Constipation</strong></li>\r\n</ol>\r\n<p>When you''re dehydrated, your body has less fluid available to keep stools soft. You can become dehydrated and not know it -- especially in hot weather.</p>\r\n<p>"People don''t really understand the symptoms of dehydration," says Faten Aberra, MD, MSCE, assistant professor of medicine at the University of Pennsylvania Health System. "It can be as simple as fatigue -- not necessarily this dying thirst to have water. It can be very subtle."</p>\r\n<p><strong>What you can do:</strong>&nbsp;You don''t necessarily have to drink 6 glasses of water a day to prevent constipation, Aberra says. The key is to drink enough so you don''t feel thirsty. You can also tell you''re getting enough fluids if your urine is clear or light yellow. And it doesn''t have to be water, juice is fine as long as you keep an eye on how many calories you take in, she says. Aberra also suggests limiting alcohol and caffeine because they can cause you to lose fluid through urination.</p>\r\n<ol start="4">\r\n<li><strong> Junk Food and Your Digestive Health</strong></li>\r\n</ol>\r\n<p>When you eat junk food, you spend your calorie capital on foods that are low in fiber and nutrients and high in fat and sugar. And all that fat and too little fiber can cause digestive woes. "We know that fat tends to slow the gut down, because the gut is trying its best to get all the calories it can from fat," says Locke.</p>\r\n<p><strong>What you can do:&nbsp;</strong>You don''t have to give up favorite foods -- the trick is to come up with healthy substitutes. Instead of ordering pizza out, make your own with a store-bought whole-wheat crust topped by low-fat cheese and plenty of veggies. Replace the fast-food burger and fries with roasted sweet potato fries and turkey or black bean burgers on a whole-wheat bun.</p>\r\n<ol start="5">\r\n<li><strong> OTC Supplements: A Surprising Cause of Constipation</strong></li>\r\n</ol>\r\n<p>Did you know that OTC supplements can affect your digestive health? Iron and calcium are the top two culprits according to Aberra.</p>\r\n<p><strong>What you can do:&nbsp;</strong>Eating balanced, healthy meals helps you get all the vitamins and minerals you need from food. However, that may not be enough for people with anemia or for women looking to prevent bone loss. To counter the constipating effect of iron or calcium supplements, Aberra suggests a workaround. Try adding things to your diet that make you more prone to having bowel movements, such as prune juice and high-fiber foods.</p>\r\n<ol start="6">\r\n<li><strong> Overusing Laxatives Can Cause Hard-to-Treat Constipation</strong></li>\r\n</ol>\r\n<p>Overusing stimulant laxatives can lead to dependence, says Ira Hanan, MD, associate professor of medicine at the University of Chicago Medical Center. Using these laxatives every day can cause the colon to lose its ability to move things through, he says. Overusing enemas can have the same effect, so avoid using stimulant laxatives and enemas chronically. "They will eventually cause complete dependency and the constipation can be very hard to treat," he says.</p>\r\n<p><strong>What you can do:&nbsp;</strong>First of all, consider whether you really need laxatives. "A lot of people think that the daily bowel movement is the norm. We would consider anything from three bowel movements a week to three a day to be normal," Locke tells WebMD. If diet and exercise changes haven''t helped, talk with your doctor about using fiber supplements. The problem with fiber for some people is that it may cause bloating and gas. Laxatives containing polyethylene glycol can also be used safely on a more regular basis, he says.</p>\r\n<ol start="7">\r\n<li><strong> "Holding It" Is Bad for Your Digestion</strong><br /> Feel shy about using the office bathroom? Not a fan of public restrooms? You''re not alone, according to Ellen Stein, MD. "A lot of people would prefer to go at home," says Stein, an assistant professor of medicine at Johns Hopkins Hospital in Baltimore, MD. Unfortunately, ignoring the urge is bad for your digestive health. "Holding or keeping things longer than you''re supposed to can have a negative effect. The natural signals that you hear to tell you when you have to go can be extinguished," she says.</li>\r\n</ol>\r\n<p><strong>What you can do:</strong>&nbsp;Stein advises trying to find a place and time to have a bowel movement. For example, use the bathroom down the hall, rather than the one next to the boss''s office.</p>', '<p>Habits That May Cause Constipation</p>\r\n<p>By Brenda Conaway<br /> WebMD Feature</p>\r\n<p>Reviewed by&nbsp;<a href="http://www.webmd.com/michael-w-smith">Michael W. Smith, MD</a></p>\r\n<p>If you''ve ever been constipated, you know how uncomfortable it can be. Although laxatives can provide a short-term fix, making certain lifestyle changes can help solve the problem for good. Below, medical experts weigh in on seven habits you should avoid to improve your digestive health.</p>\r\n<ol>\r\n<li><strong> Inactivity and Constipation</strong></li>\r\n</ol>\r\n<p>Lack of exercise not only causes weight gain and other health problems, it can also affect digestion. "Sedentary lifestyle is the thing that I would worry most about," says G. Richard Locke III, MD, gastroenterologist with the Mayo Clinic in Rochester, MN. No one knows exactly why, he says, but being inactive can cause constipation.</p>\r\n<p><strong>What you can do:&nbsp;</strong>"The best thing you can do to move your bowels is wake up, eat a real meal, and do some low-level activity," Locke tells WebMD. It doesn''t have to be rigorous exercise, he says. Moving your body every day will improve your digestive health.</p>\r\n<ol start="2">\r\n<li><strong> A Low-Fiber Diet Slows Digestion</strong></li>\r\n</ol>\r\n<p>Fiber is the material in plant foods that your body can''t digest, and it''s important for good digestion. "It goes through you and gives you something to form a stool around," says Locke. When you don''t have enough fiber in your diet, stools can become small, dry, and hard.</p>\r\n<p><strong>What you can do:</strong>&nbsp;Eating more fiber adds bulk to stools, making them softer and easier to pass. To get more fiber in your diet, eat more fruits and vegetables, legumes and beans, and whole grains. A simple rule of thumb is to fill half your plate with fruits and vegetables at each meal. Also, always choose whole-grain breads and cereals and include one or two meals a week with beans or legumes. Gradually adding fiber to your diet (and be sure to drink plenty of water) will help prevent bloating and gas. Consider fiber supplements if the methods mentioned above don&rsquo;t seem to help.</p>\r\n<ol start="3">\r\n<li><strong> Not Drinking Enough Fluids Causes Constipation</strong></li>\r\n</ol>\r\n<p>When you''re dehydrated, your body has less fluid available to keep stools soft. You can become dehydrated and not know it -- especially in hot weather.</p>\r\n<p>"People don''t really understand the symptoms of dehydration," says Faten Aberra, MD, MSCE, assistant professor of medicine at the University of Pennsylvania Health System. "It can be as simple as fatigue -- not necessarily this dying thirst to have water. It can be very subtle."</p>\r\n<p><strong>What you can do:</strong>&nbsp;You don''t necessarily have to drink 6 glasses of water a day to prevent constipation, Aberra says. The key is to drink enough so you don''t feel thirsty. You can also tell you''re getting enough fluids if your urine is clear or light yellow. And it doesn''t have to be water, juice is fine as long as you keep an eye on how many calories you take in, she says. Aberra also suggests limiting alcohol and caffeine because they can cause you to lose fluid through urination.</p>\r\n<ol start="4">\r\n<li><strong> Junk Food and Your Digestive Health</strong></li>\r\n</ol>\r\n<p>When you eat junk food, you spend your calorie capital on foods that are low in fiber and nutrients and high in fat and sugar. And all that fat and too little fiber can cause digestive woes. "We know that fat tends to slow the gut down, because the gut is trying its best to get all the calories it can from fat," says Locke.</p>\r\n<p><strong>What you can do:&nbsp;</strong>You don''t have to give up favorite foods -- the trick is to come up with healthy substitutes. Instead of ordering pizza out, make your own with a store-bought whole-wheat crust topped by low-fat cheese and plenty of veggies. Replace the fast-food burger and fries with roasted sweet potato fries and turkey or black bean burgers on a whole-wheat bun.</p>\r\n<ol start="5">\r\n<li><strong> OTC Supplements: A Surprising Cause of Constipation</strong></li>\r\n</ol>\r\n<p>Did you know that OTC supplements can affect your digestive health? Iron and calcium are the top two culprits according to Aberra.</p>\r\n<p><strong>What you can do:&nbsp;</strong>Eating balanced, healthy meals helps you get all the vitamins and minerals you need from food. However, that may not be enough for people with anemia or for women looking to prevent bone loss. To counter the constipating effect of iron or calcium supplements, Aberra suggests a workaround. Try adding things to your diet that make you more prone to having bowel movements, such as prune juice and high-fiber foods.</p>\r\n<ol start="6">\r\n<li><strong> Overusing Laxatives Can Cause Hard-to-Treat Constipation</strong></li>\r\n</ol>\r\n<p>Overusing stimulant laxatives can lead to dependence, says Ira Hanan, MD, associate professor of medicine at the University of Chicago Medical Center. Using these laxatives every day can cause the colon to lose its ability to move things through, he says. Overusing enemas can have the same effect, so avoid using stimulant laxatives and enemas chronically. "They will eventually cause complete dependency and the constipation can be very hard to treat," he says.</p>\r\n<p><strong>What you can do:&nbsp;</strong>First of all, consider whether you really need laxatives. "A lot of people think that the daily bowel movement is the norm. We would consider anything from three bowel movements a week to three a day to be normal," Locke tells WebMD. If diet and exercise changes haven''t helped, talk with your doctor about using fiber supplements. The problem with fiber for some people is that it may cause bloating and gas. Laxatives containing polyethylene glycol can also be used safely on a more regular basis, he says.</p>\r\n<ol start="7">\r\n<li><strong> "Holding It" Is Bad for Your Digestion</strong><br /> Feel shy about using the office bathroom? Not a fan of public restrooms? You''re not alone, according to Ellen Stein, MD. "A lot of people would prefer to go at home," says Stein, an assistant professor of medicine at Johns Hopkins Hospital in Baltimore, MD. Unfortunately, ignoring the urge is bad for your digestive health. "Holding or keeping things longer than you''re supposed to can have a negative effect. The natural signals that you hear to tell you when you have to go can be extinguished," she says.</li>\r\n</ol>\r\n<p><strong>What you can do:</strong>&nbsp;Stein advises trying to find a place and time to have a bowel movement. For example, use the bathroom down the hall, rather than the one next to the boss''s office.</p>', '2016-04-01-Habits-That-May-Cause-Constipation', 'uploads/blogs/blog_56fe35d15849f.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-05-13 13:08:38', 0),
(41, 1, 'Hormones and Oral Health', 'Hormones and Oral Health', 'Hormones and Oral Health', 'Hormones and Oral Health', '<p style="text-align: justify;">Hormones and Oral Health</p>\r\n<p style="text-align: justify;">In this article</p>\r\n<p style="text-align: justify;">When Are Women More at Risk for Oral Health Problems?<br />Tips to Prevent Oral Health Problems<br />Women may be more susceptible to oral health problems because of the unique hormonal changes they experience. Hormones affect not only the blood supply to the gum tissue but also the body''s response to the toxins (poisons) that result from plaque buildup. As a result of these changes, women are more prone to the development of periodontal disease at certain stages of their lives, as well as to other oral health problems.</p>\r\n<p style="text-align: justify;">When Are Women More at Risk for Oral Health Problems?</p>\r\n<p style="text-align: justify;">There are five situations in a women''s life during which hormone fluctuations make them more susceptible to oral health problems &ndash; during puberty, at certain points in the monthly menstrual cycle, when using birth control pills, during pregnancy, and at menopause.</p>\r\n<ul>\r\n<li style="text-align: justify;">Puberty</li>\r\n</ul>\r\n<p style="text-align: justify;">The surge in production of the female hormones estrogen and progesterone that occurs during puberty can increase the blood flow to the gums and change the way gum tissue reacts to irritants in plaque, causing the gum tissue to become red, tender, swollen, and more likely to bleed during brushing and flossing.</p>\r\n<ul>\r\n<li style="text-align: justify;">The monthly menstrual cycle</li>\r\n</ul>\r\n<p style="text-align: justify;">Due to the hormonal changes (particularly the increase in progesterone) that occur during the menstrual cycle, some women experience oral changes that can include bright red swollen gums, swollen salivary glands, development of canker sores, or bleeding gums. Menstruation gingivitis usually occurs a day or two before the start of the period and clears up shortly after the period has started.</p>\r\n<ul>\r\n<li style="text-align: justify;">Use of birth control pills</li>\r\n</ul>\r\n<p style="text-align: justify;">Women who take certain birth control pills that contain progesterone, which increases the level of that hormone in the body, may experience inflamed gum tissues due to the body''s exaggerated reaction to the toxins produced from plaque. Tell your dentist if you are taking an oral contraceptive.</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<ul>\r\n<li style="text-align: justify;">Pregnancy</li>\r\n</ul>\r\n<p style="text-align: justify;">Hormone levels change considerably during pregnancy. An increased level of progesterone, in particular, can cause gum disease any time during the second to eighth month of pregnancy &ndash; a condition called pregnancy gingivitis. Your dentist may recommend more frequent professional cleanings during your second or early third trimester to help reduce the chance of developing gingivitis. Tell your dentist if you are pregnant.</p>\r\n<ul>\r\n<li style="text-align: justify;">Menopause</li>\r\n</ul>\r\n<p style="text-align: justify;">Numerous oral changes can occur as a consequence of advanced age, the medications taken to combat diseases, and hormonal changes due to menopause. These oral changes can include altered taste, burning sensations in the mouth, greater sensitivity to hot and cold foods and beverages, and decreased salivary flow that can result in dry mouth.</p>\r\n<p style="text-align: justify;">Dry mouth, in turn, can result in the development of tooth decay and gum disease, because saliva is not available to moisten and cleanse the mouth by neutralizing acids produced by plaque. Dry mouth can also result from many prescription and over-the-counter medications that are commonly prescribed to older adults.</p>\r\n<p style="text-align: justify;">The decline in estrogen that occurs with menopause also puts women at greater risk for loss of bone density. Loss of bone, specifically in the jaw, can lead to tooth loss. Receding gums can be a sign of bone loss in the jawbone. Receding gums also expose more of the tooth surface to potential tooth decay.</p>\r\n<p style="text-align: justify;">Tips to Prevent Oral Health Problems</p>\r\n<p style="text-align: justify;">Some tips for preventing oral health problems like gum disease and tooth decay include:</p>\r\n<p style="text-align: justify;">Brush your teeth at least twice a day with a fluoride-containing toothpaste. Floss and rinse with an antiseptic mouthwash at least once a day.<br />Visit your dentist twice a year for a professional oral examination and cleaning.<br />Eat a well-balanced.<br />Avoid sugary or starchy snacks.<br />Ask your dentist if he or she thinks you should use an antimicrobial mouth<br />If you have dry mouth, ask your dentist about treatments for this condition, such as artificial saliva. Biotene is one such product and is available over the counter.</p>', '<p>Hormones and Oral Health</p>\r\n<p>In this article</p>\r\n<ul>\r\n<li><a href="http://www.webmd.com/oral-health/hormones-oral-health?ecd=wnl_wmh_032616&amp;ctr=wnl-wmh-032616_nsl-promo-4_title&amp;mb=e%2fESIa2cJe1185wCmW6qthXFE73IOX1cf%402QjKFqvQM%3d#1">When Are Women More at Risk for Oral Health Problems?</a></li>\r\n<li><a href="http://www.webmd.com/oral-health/hormones-oral-health?page=2#2">Tips to Prevent Oral Health Problems</a></li>\r\n</ul>\r\n<p>Women may be more susceptible to&nbsp;<a href="http://www.webmd.com/oral-health/default.htm">oral health</a>&nbsp;problems because of the unique hormonal changes they experience. Hormones affect not only the&nbsp;<a href="http://www.webmd.com/heart/anatomy-picture-of-blood">blood</a>&nbsp;supply to the gum tissue but also the body''s response to the toxins (poisons) that result from&nbsp;<a href="http://www.webmd.com/oral-health/guide/plaque-and-your-teeth">plaque</a>&nbsp;buildup. As a result of these changes, women are more prone to the development of&nbsp;<a href="http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease">periodontal disease</a>&nbsp;at certain stages of their lives, as well as to other&nbsp;<a href="http://www.webmd.com/oral-health/ss/slideshow-tooth-problems">oral health</a> problems.</p>\r\n<p>When Are Women More at Risk for Oral Health Problems?</p>\r\n<p>There are five situations in a women''s life during which hormone fluctuations make them more susceptible to oral health problems &ndash; during puberty, at certain points in the monthly menstrual cycle, when using&nbsp;<a href="http://www.webmd.com/sex/birth-control/birth-control-pills">birth control pills</a>, during&nbsp;<a href="http://www.webmd.com/baby/default.htm">pregnancy</a>, and at&nbsp;<a href="http://www.webmd.com/menopause/default.htm">menopause</a>.</p>\r\n<p><strong><em>Puberty</em></strong></p>\r\n<p>The surge in production of the female hormones&nbsp;<a href="http://www.webmd.com/women/guide/normal-testosterone-and-estrogen-levels-in-women">estrogen</a>&nbsp;and <a href="http://www.webmd.com/vitamins-and-supplements/progesterone-uses-and-risks">progesterone</a>&nbsp;that occurs during puberty can increase the&nbsp;<a href="http://www.webmd.com/a-to-z-guides/rm-quiz-blood-basics">blood</a> flow to the gums and change the way gum tissue reacts to irritants in plaque, causing the gum tissue to become red, tender, swollen, and more likely to bleed during brushing and flossing.</p>\r\n<p><strong><em>The monthly menstrual cycle</em></strong></p>\r\n<p>Due to the hormonal changes (particularly the increase in progesterone) that occur during the menstrual cycle, some women experience oral changes that can include bright red swollen gums, <a href="http://www.webmd.com/pain-management/swollen-glands">swollen salivary glands</a>, development of&nbsp;<a href="http://www.webmd.com/oral-health/guide/canker-sores">canker sores</a>, or&nbsp;<a href="http://www.webmd.com/oral-health/guide/gum-problem-basics-sore-swollen-and-bleeding-gums">bleeding gums</a>.&nbsp;<a href="http://www.webmd.com/women/tc/normal-menstrual-cycle-topic-overview">Menstruation</a>&nbsp;<a href="http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease">gingivitis</a>&nbsp;usually occurs a day or two before the start of the period and clears up shortly after the period has started.</p>\r\n<p><strong><em>Use of&nbsp;</em></strong><a href="http://www.webmd.com/sex/birth-control/ss/slideshow-birth-control-options"><strong><em>birth control pills</em></strong></a><strong><em>&nbsp;</em></strong></p>\r\n<p>Women who take certain birth control pills that contain progesterone, which increases the level of that hormone in the body, may experience inflamed gum tissues due to the body''s exaggerated reaction to the toxins produced from plaque. Tell your dentist if you are taking an oral contraceptive.</p>\r\n<p><strong><em>&nbsp;</em></strong></p>\r\n<p><strong><em>Pregnancy</em></strong></p>\r\n<p>Hormone levels change considerably during pregnancy. An increased level of progesterone, in particular, can cause&nbsp;<a href="http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease">gum disease</a>&nbsp;any time during the second to eighth month of pregnancy &ndash; a condition called pregnancy gingivitis. Your dentist may recommend more frequent professional cleanings during your second or early&nbsp;<a href="http://www.webmd.com/baby/guide/third-trimester-of-pregnancy">third trimester</a>&nbsp;to help reduce the chance of developing gingivitis. Tell your dentist if you are pregnant.</p>\r\n<p><a href="http://www.webmd.com/menopause/ss/slideshow-menopause-overview"><strong><em>Menopause</em></strong></a><strong><em>&nbsp;</em></strong></p>\r\n<p>Numerous oral changes can occur as a consequence of advanced age, the&nbsp;<a href="http://www.webmd.com/drugs/index-drugs.aspx">medications</a>&nbsp;taken to combat diseases, and hormonal changes due to menopause. These oral changes can include altered taste, burning sensations in the&nbsp;<a href="http://www.webmd.com/oral-health/anatomy-of-the-mouth">mouth</a>, greater sensitivity to hot and cold foods and beverages, and decreased salivary flow that can result in&nbsp;<a href="http://www.webmd.com/oral-health/guide/dental-health-dry-mouth">dry mouth</a>.</p>\r\n<p><a href="http://www.webmd.com/oral-health/ss/slideshow-dry-mouth">Dry mouth</a>, in turn, can result in the development of&nbsp;<a href="http://www.webmd.com/oral-health/picture-of-the-teeth">tooth</a>&nbsp;decay and&nbsp;<a href="http://www.webmd.com/oral-health/video/dangers-gum-disease">gum disease</a>, because&nbsp;<a href="http://www.webmd.com/oral-health/what-is-saliva">saliva</a>&nbsp;is not available to moisten and cleanse the&nbsp;<a href="http://www.webmd.com/oral-health/ss/slideshow-mouth-problems">mouth</a>&nbsp;by neutralizing acids produced by plaque. Dry mouth can also result from many prescription and over-the-counter medications that are commonly prescribed to older adults.</p>\r\n<p>The decline in&nbsp;<a href="http://www.webmd.com/drugs/2/drug-6028/esterified+estrogens+oral/details">estrogen</a>&nbsp;that occurs with menopause also puts women at greater risk for loss of bone density. Loss of bone, specifically in the jaw, can lead to&nbsp;<a href="http://www.webmd.com/oral-health/dental-care-smile-10/slideshow-pretty-teeth">tooth</a>&nbsp;loss.&nbsp;<a href="http://www.webmd.com/oral-health/guide/receding_gums_causes-treatments">Receding gums</a>&nbsp;can be a sign of&nbsp;<a href="http://www.webmd.com/osteoporosis/guide/osteopenia-early-signs-of-bone-loss">bone loss</a> in the jawbone. Receding gums also expose more of the&nbsp;<a href="http://www.webmd.com/oral-health/rm-quiz-what-do-you-know-about-your-teeth">tooth</a> surface to potential&nbsp;<a href="http://www.webmd.com/oral-health/guide/tooth-decay-prevention">tooth decay</a>.</p>\r\n<p>Tips to Prevent Oral Health Problems</p>\r\n<p>Some tips for preventing oral health problems like gum disease and tooth decay include:</p>\r\n<ul>\r\n<li>Brush your teeth at least twice a day with a fluoride-containing <a href="http://www.webmd.com/oral-health/guide/weighing-your-toothpaste-options">toothpaste</a>. Floss and rinse with an antiseptic mouthwash at least once a day.</li>\r\n<li>Visit your dentist twice a year for a professional oral examination and cleaning.</li>\r\n<li>Eat a well-balanced.</li>\r\n<li>Avoid sugary or starchy snacks.</li>\r\n<li>Ask your dentist if he or she thinks you should use an antimicrobial <a href="http://www.webmd.com/oral-health/rm-quiz-mouth-myths">mouth</a></li>\r\n<li>If you have dry mouth, ask your dentist about treatments for this condition, such as artificial saliva. Biotene is one such product and is available over the counter.</li>\r\n</ul>', 'hormones-and-oral-health', 'uploads/blogs/blog_56fe361b3f192.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-05-13 13:08:48', 0);
INSERT INTO `tbl_blogs` (`id`, `id_category`, `en_title`, `kh_title`, `en_pre_content`, `kh_pre_content`, `en_main_content`, `kh_main_content`, `slug`, `image`, `num_of_views`, `is_published`, `is_featured`, `is_specialed`, `created_dt`, `modified_dt`, `data_order`) VALUES
(42, 1, 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', '<p>Prostate Cancer: The Basics</p>\r\n<p>Reviewed by&nbsp;<a href="http://www.webmd.com/stuart-bergman">Stuart Bergman, MD</a>&nbsp;on February 05, 2016</p>\r\n<p>The&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-prostate">prostate</a>&nbsp;is a muscular, walnut-sized gland that makes chemicals that affect or control what other cells or organs do. It&rsquo;s part of the&nbsp;<a href="http://www.webmd.com/sex-relationships/guide/male-reproductive-system">male reproductive system</a>. Its main job is to make seminal fluid, the milky substance that transports&nbsp;<a href="http://www.webmd.com/infertility-and-reproduction/guide/sperm-and-semen-faq">sperm</a>.</p>\r\n<p>The prostate wraps around part of your urethra, the tube that moves urine and semen out of your body.</p>\r\n<p>During an orgasm, muscles in your prostate contract to push semen through your urethra and out your&nbsp;<a href="http://www.webmd.com/men/picture-of-the-penis">penis</a>. The urethra also carries urine, a waste product made by the&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-kidneys">kidneys</a>and stored in the&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-bladder">bladder</a>. When the&nbsp;<a href="http://www.webmd.com/men/rm-quiz-is-my-penis-normal">penis</a>&nbsp;is erect during sexual intercourse, the flow of urine is blocked from the urethra, allowing only semen to be ejaculated at orgasm.</p>\r\n<p>&nbsp;</p>\r\n<p>Where Is It Located?</p>\r\n<p>It sits directly beneath your&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/oab-13/slideshow-bladder-myths-and-facts">bladder</a>&nbsp;and in front of your rectum. Because the first portion of the urethra passes through the prostate, the passage of urine or semen through the urethra can be blocked if the gland is enlarged.</p>\r\n<p>&nbsp;</p>\r\n<p>What Is Prostate Cancer?</p>\r\n<p><a href="http://www.webmd.com/prostate-cancer/default.htm">Prostate cancer</a>&nbsp;is the most common&nbsp;<a href="http://www.webmd.com/cancer/default.htm">cancer</a>, excluding&nbsp;<a href="http://www.webmd.com/skin-problems-and-treatments/picture-of-the-skin">skin</a>&nbsp;cancers, in American men. It is a malignant tumor of the prostate. In most men, the&nbsp;<a href="http://www.webmd.com/cancer/ss/does-this-cause-cancer">cancer</a>&nbsp;grows very slowly. Many men with the disease will never know they have it. Early&nbsp;<a href="http://www.webmd.com/prostate-cancer/ss/slideshow-prostate-cancer-overview">prostate cancer</a>&nbsp;is confined to the prostate gland itself. Most men with this type of&nbsp;<a href="http://www.webmd.com/cancer/rm-quiz-cancer-myths-facts">cancer</a>&nbsp;can live for years with no problems.</p>\r\n<p>Doctors talk about prostate cancer in terms of a "grade" and a "stage." The grade is given to indicate how the&nbsp;<a href="http://www.webmd.com/cancer/health-check-cancer-risk/default.htm">cancer</a>&nbsp;cells look under the microscope when a&nbsp;<a href="http://www.webmd.com/cancer/what-is-a-biopsy">biopsy</a>&nbsp;is analyzed. The grade often predicts how quickly a cancer is growing and will spread -- the higher the grade, the more likely it is that the cancer will grow and spread rapidly. The size and extent of the tumor when first detected determine its stage.</p>\r\n<p>&nbsp;</p>\r\n<p>What Causes Prostate Cancer?</p>\r\n<p>As with many cancers, it isn&rsquo;t known. But doctors do know you''re more likely to get it if you''re African-American or have a family history of the disease. The male&nbsp;<a href="http://www.webmd.com/sex-relationships/default.htm">sex</a>&nbsp;hormone<a href="http://www.webmd.com/men/testosterone-15738">testosterone</a>&nbsp;also contributes to its growth.</p>\r\n<p>&nbsp;</p>\r\n<p>How Many Men Have It?</p>\r\n<p>In 2015, the American Cancer Society estimated about 220,000 U.S. men would be diagnosed with prostate cancer and nearly 28,000 would die from it. About 80% of men who live to be 80 have prostate cancer.</p>\r\n<p>What''s the Outlook?</p>\r\n<p>While the number of men diagnosed with prostate cancer remains high, so does the number of men who get it and live. Survival rates after diagnosis of common&nbsp;<a href="http://www.webmd.com/prostate-cancer/guide/understanding-prostate-cancer-symptoms">types of prostate cancer</a>&nbsp;are:</p>\r\n<ul>\r\n<li>5 years: nearly 100%</li>\r\n<li>10 years: 99%</li>\r\n<li>15+ years: 94%</li>\r\n</ul>\r\n<p>Prostate cancer is a slow-growing disease. You&rsquo;re far more likely to die from other causes before you die from prostate cancer. You&rsquo;re also more likely to catch it earlier if you get annual screening tests.</p>', '<p>Prostate Cancer: The Basics</p>\r\n<p>Reviewed by&nbsp;<a href="http://www.webmd.com/stuart-bergman">Stuart Bergman, MD</a>&nbsp;on February 05, 2016</p>\r\n<p>The&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-prostate">prostate</a>&nbsp;is a muscular, walnut-sized gland that makes chemicals that affect or control what other cells or organs do. It&rsquo;s part of the&nbsp;<a href="http://www.webmd.com/sex-relationships/guide/male-reproductive-system">male reproductive system</a>. Its main job is to make seminal fluid, the milky substance that transports&nbsp;<a href="http://www.webmd.com/infertility-and-reproduction/guide/sperm-and-semen-faq">sperm</a>.</p>\r\n<p>The prostate wraps around part of your urethra, the tube that moves urine and semen out of your body.</p>\r\n<p>During an orgasm, muscles in your prostate contract to push semen through your urethra and out your&nbsp;<a href="http://www.webmd.com/men/picture-of-the-penis">penis</a>. The urethra also carries urine, a waste product made by the&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-kidneys">kidneys</a>and stored in the&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/picture-of-the-bladder">bladder</a>. When the&nbsp;<a href="http://www.webmd.com/men/rm-quiz-is-my-penis-normal">penis</a>&nbsp;is erect during sexual intercourse, the flow of urine is blocked from the urethra, allowing only semen to be ejaculated at orgasm.</p>\r\n<p>&nbsp;</p>\r\n<p>Where Is It Located?</p>\r\n<p>It sits directly beneath your&nbsp;<a href="http://www.webmd.com/urinary-incontinence-oab/oab-13/slideshow-bladder-myths-and-facts">bladder</a>&nbsp;and in front of your rectum. Because the first portion of the urethra passes through the prostate, the passage of urine or semen through the urethra can be blocked if the gland is enlarged.</p>\r\n<p>&nbsp;</p>\r\n<p>What Is Prostate Cancer?</p>\r\n<p><a href="http://www.webmd.com/prostate-cancer/default.htm">Prostate cancer</a>&nbsp;is the most common&nbsp;<a href="http://www.webmd.com/cancer/default.htm">cancer</a>, excluding&nbsp;<a href="http://www.webmd.com/skin-problems-and-treatments/picture-of-the-skin">skin</a>&nbsp;cancers, in American men. It is a malignant tumor of the prostate. In most men, the&nbsp;<a href="http://www.webmd.com/cancer/ss/does-this-cause-cancer">cancer</a>&nbsp;grows very slowly. Many men with the disease will never know they have it. Early&nbsp;<a href="http://www.webmd.com/prostate-cancer/ss/slideshow-prostate-cancer-overview">prostate cancer</a>&nbsp;is confined to the prostate gland itself. Most men with this type of&nbsp;<a href="http://www.webmd.com/cancer/rm-quiz-cancer-myths-facts">cancer</a>&nbsp;can live for years with no problems.</p>\r\n<p>Doctors talk about prostate cancer in terms of a "grade" and a "stage." The grade is given to indicate how the&nbsp;<a href="http://www.webmd.com/cancer/health-check-cancer-risk/default.htm">cancer</a>&nbsp;cells look under the microscope when a&nbsp;<a href="http://www.webmd.com/cancer/what-is-a-biopsy">biopsy</a>&nbsp;is analyzed. The grade often predicts how quickly a cancer is growing and will spread -- the higher the grade, the more likely it is that the cancer will grow and spread rapidly. The size and extent of the tumor when first detected determine its stage.</p>\r\n<p>&nbsp;</p>\r\n<p>What Causes Prostate Cancer?</p>\r\n<p>As with many cancers, it isn&rsquo;t known. But doctors do know you''re more likely to get it if you''re African-American or have a family history of the disease. The male&nbsp;<a href="http://www.webmd.com/sex-relationships/default.htm">sex</a>&nbsp;hormone<a href="http://www.webmd.com/men/testosterone-15738">testosterone</a>&nbsp;also contributes to its growth.</p>\r\n<p>&nbsp;</p>\r\n<p>How Many Men Have It?</p>\r\n<p>In 2015, the American Cancer Society estimated about 220,000 U.S. men would be diagnosed with prostate cancer and nearly 28,000 would die from it. About 80% of men who live to be 80 have prostate cancer.</p>\r\n<p>What''s the Outlook?</p>\r\n<p>While the number of men diagnosed with prostate cancer remains high, so does the number of men who get it and live. Survival rates after diagnosis of common&nbsp;<a href="http://www.webmd.com/prostate-cancer/guide/understanding-prostate-cancer-symptoms">types of prostate cancer</a>&nbsp;are:</p>\r\n<ul>\r\n<li>5 years: nearly 100%</li>\r\n<li>10 years: 99%</li>\r\n<li>15+ years: 94%</li>\r\n</ul>\r\n<p>Prostate cancer is a slow-growing disease. You&rsquo;re far more likely to die from other causes before you die from prostate cancer. You&rsquo;re also more likely to catch it earlier if you get annual screening tests.</p>', '2016-04-01-Prostate-Cancer:-The-Basics', 'uploads/blogs/blog_56fe36589830f.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-04-01 08:50:32', 0),
(43, 1, 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', '<p>Vaginal Discharge: What&rsquo;s Abnormal?</p>\r\n<p><a href="https://www.youtube.com/watch?v=w86h_l1WCwk">https://www.youtube.com/watch?v=w86h_l1WCwk</a></p>\r\n<p>In this article</p>\r\n<p><a href="http://www.webmd.com/video/corio-vaginal-discharge">Vaginal discharge</a>&nbsp;serves an important housekeeping function in the <a href="http://www.webmd.com/infertility-and-reproduction/guide/female-reproductive-system-overview">female reproductive system</a>. Fluid made by glands inside the&nbsp;<a href="http://www.webmd.com/women/picture-of-the-vagina">vagina</a>&nbsp;and <a href="http://www.webmd.com/women/picture-of-the-cervix">cervix</a>&nbsp;carries away dead cells and bacteria. This keeps the&nbsp;<a href="http://www.webmd.com/women/rm-quiz-vagina">vagina</a> clean and helps prevent infection.</p>\r\n<p>Most of the time,&nbsp;<a href="http://www.webmd.com/women/guide/vaginal-discharge-whats-abnormal">vaginal discharge</a>&nbsp;is perfectly normal. The amount can vary, as can odor and hue (its color can range from clear to a milky white-ish), depending on the time in your&nbsp;<a href="http://women.webmd.com/tc/normal-menstrual-cycle-topic-overview">menstrual cycle</a>. For example, there will be more discharge if you are&nbsp;<a href="http://www.webmd.com/medical_information/health_tools/interactive/ovu_calendar">ovulating</a>,&nbsp;<a href="http://www.webmd.com/parenting/baby/breastfeeding-9/nursing-basics">breastfeeding</a>, or are sexually aroused. The smell may be different if you are&nbsp;<a href="http://www.webmd.com/baby/default.htm">pregnant</a>&nbsp;or you haven''t been diligent about your personal hygiene.</p>\r\n<p>None of those changes is cause for alarm. However, if the color, smell, or consistency seems significantly unusual, especially if it accompanied by vaginal&nbsp;<a href="http://www.webmd.com/skin-problems-and-treatments/guide/default.htm">itching</a>&nbsp;or burning, you could be noticing an infection or other condition.</p>\r\n<p>What causes abnormal discharge?</p>\r\n<p>Any change in the vagina''s balance of normal bacteria can affect the smell, color, or discharge texture. These are a few of the things that can upset that balance:</p>\r\n<ul>\r\n<li>Antibiotic or steroid use</li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/tc/bacterial-vaginosis-topic-overview">Bacterial vaginosis</a>, a&nbsp;<a href="http://www.webmd.com/a-to-z-guides/bacterial-and-viral-infections">bacterial infection</a>more common in&nbsp;<a href="http://www.webmd.com/baby/default.htm">pregnant</a> women or women who have multiple sexual partners</li>\r\n<li><a href="http://www.webmd.com/sex/birth-control/birth-control-pills">Birth control pills</a></li>\r\n<li><a href="http://www.webmd.com/cancer/cervical-cancer/default.htm">Cervical cancer</a></li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/guide/chlamydia">Chlamydia</a>or&nbsp;<a href="http://www.webmd.com/sexual-conditions/guide/gonorrhea">gonorrhea</a>&nbsp;(<a href="http://www.webmd.com/sexual-conditions/default.htm">STDs</a>), sexually transmitted infections</li>\r\n<li><a href="http://diabetes.webmd.com/default.htm">Diabetes</a></li>\r\n<li>Douches, scented soaps or lotions, bubble bath</li>\r\n<li>Pelvic infection after surgery</li>\r\n<li><a href="http://www.webmd.com/women/guide/sexual-health-your-guide-to-pelvic-inflammatory-disease">Pelvic inflammatory disease</a>(PID)</li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/trichomoniasis">Trichomoniasis</a>, a parasitic infection typically contracted and caused by having unprotected&nbsp;<a href="http://www.webmd.com/sex-relationships/default.htm">sex</a></li>\r\n<li>Vaginal atrophy, the thinning and drying out of the vaginal walls during&nbsp;<a href="http://www.webmd.com/menopause/default.htm">menopause</a></li>\r\n<li><a href="http://www.webmd.com/women/vaginal-infections">Vaginitis</a>, irritation in or around the vagina</li>\r\n<li><a href="http://www.webmd.com/skin-problems-and-treatments/candidiasis-yeast-infection">Yeast infections</a></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>How is abnormal discharge treated?</p>\r\n<p>How you are treated will depend on what&rsquo;s causing the problem. For example,&nbsp;<a href="http://www.webmd.com/a-to-z-guides/candidiasis-yeast-infection">yeast infections</a>&nbsp;are usually treated with antifungal <a href="http://www.webmd.com/drugs/index-drugs.aspx">medications</a>&nbsp;inserted into the vagina in cream or gel form. Bacterial vaginosis is treated with antibiotic pills or creams. Trichomoniasis is usually treated with the drug&nbsp;<a href="http://www.webmd.com/drugs/drug-6426-Metronidazole+Oral.aspx?drugid=6426&amp;drugname=Metronidazole+Oral">metronidazole</a>&nbsp;(<a href="http://www.webmd.com/drugs/drug-7644-Flagyl+Oral.aspx?drugid=7644&amp;drugname=Flagyl+Oral">Flagyl</a>) or&nbsp;<a href="http://www.webmd.com/drugs/drug-91258-tinidazole+oral.aspx">tinidazole</a>(<a href="http://www.webmd.com/drugs/drug-91341-tindamax+oral.aspx">Tindamax</a>).</p>\r\n<p>Here are some tips for preventing&nbsp;<a href="http://www.webmd.com/women/guide/sexual-health-vaginal-infections">vaginal infections</a>&nbsp;that can lead to abnormal discharge:</p>\r\n<ul>\r\n<li>Keep the vagina clean by washing regularly with a gentle, mild soap and warm water.</li>\r\n<li>Never use scented soaps and feminine products or douche. Also avoid feminine sprays and bubble baths.</li>\r\n<li>After going to the bathroom, always wipe from front to back to prevent bacteria from getting into the vagina and causing an infection.</li>\r\n<li>Wear 100% cotton underpants, and avoid overly tight clothing.</li>\r\n</ul>', '<p>Vaginal Discharge: What&rsquo;s Abnormal?</p>\r\n<p>In this article</p>\r\n<p><a href="http://www.webmd.com/video/corio-vaginal-discharge">Vaginal discharge</a>&nbsp;serves an important housekeeping function in the <a href="http://www.webmd.com/infertility-and-reproduction/guide/female-reproductive-system-overview">female reproductive system</a>. Fluid made by glands inside the&nbsp;<a href="http://www.webmd.com/women/picture-of-the-vagina">vagina</a>&nbsp;and <a href="http://www.webmd.com/women/picture-of-the-cervix">cervix</a>&nbsp;carries away dead cells and bacteria. This keeps the&nbsp;<a href="http://www.webmd.com/women/rm-quiz-vagina">vagina</a> clean and helps prevent infection.</p>\r\n<p>Most of the time,&nbsp;<a href="http://www.webmd.com/women/guide/vaginal-discharge-whats-abnormal">vaginal discharge</a>&nbsp;is perfectly normal. The amount can vary, as can odor and hue (its color can range from clear to a milky white-ish), depending on the time in your&nbsp;<a href="http://women.webmd.com/tc/normal-menstrual-cycle-topic-overview">menstrual cycle</a>. For example, there will be more discharge if you are&nbsp;<a href="http://www.webmd.com/medical_information/health_tools/interactive/ovu_calendar">ovulating</a>,&nbsp;<a href="http://www.webmd.com/parenting/baby/breastfeeding-9/nursing-basics">breastfeeding</a>, or are sexually aroused. The smell may be different if you are&nbsp;<a href="http://www.webmd.com/baby/default.htm">pregnant</a>&nbsp;or you haven''t been diligent about your personal hygiene.</p>\r\n<p>None of those changes is cause for alarm. However, if the color, smell, or consistency seems significantly unusual, especially if it accompanied by vaginal&nbsp;<a href="http://www.webmd.com/skin-problems-and-treatments/guide/default.htm">itching</a>&nbsp;or burning, you could be noticing an infection or other condition.</p>\r\n<p>What causes abnormal discharge?</p>\r\n<p>Any change in the vagina''s balance of normal bacteria can affect the smell, color, or discharge texture. These are a few of the things that can upset that balance:</p>\r\n<ul>\r\n<li>Antibiotic or steroid use</li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/tc/bacterial-vaginosis-topic-overview">Bacterial vaginosis</a>, a&nbsp;<a href="http://www.webmd.com/a-to-z-guides/bacterial-and-viral-infections">bacterial infection</a>more common in&nbsp;<a href="http://www.webmd.com/baby/default.htm">pregnant</a> women or women who have multiple sexual partners</li>\r\n<li><a href="http://www.webmd.com/sex/birth-control/birth-control-pills">Birth control pills</a></li>\r\n<li><a href="http://www.webmd.com/cancer/cervical-cancer/default.htm">Cervical cancer</a></li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/guide/chlamydia">Chlamydia</a>or&nbsp;<a href="http://www.webmd.com/sexual-conditions/guide/gonorrhea">gonorrhea</a>&nbsp;(<a href="http://www.webmd.com/sexual-conditions/default.htm">STDs</a>), sexually transmitted infections</li>\r\n<li><a href="http://diabetes.webmd.com/default.htm">Diabetes</a></li>\r\n<li>Douches, scented soaps or lotions, bubble bath</li>\r\n<li>Pelvic infection after surgery</li>\r\n<li><a href="http://www.webmd.com/women/guide/sexual-health-your-guide-to-pelvic-inflammatory-disease">Pelvic inflammatory disease</a>(PID)</li>\r\n<li><a href="http://www.webmd.com/sexual-conditions/trichomoniasis">Trichomoniasis</a>, a parasitic infection typically contracted and caused by having unprotected&nbsp;<a href="http://www.webmd.com/sex-relationships/default.htm">sex</a></li>\r\n<li>Vaginal atrophy, the thinning and drying out of the vaginal walls during&nbsp;<a href="http://www.webmd.com/menopause/default.htm">menopause</a></li>\r\n<li><a href="http://www.webmd.com/women/vaginal-infections">Vaginitis</a>, irritation in or around the vagina</li>\r\n<li><a href="http://www.webmd.com/skin-problems-and-treatments/candidiasis-yeast-infection">Yeast infections</a></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>How is abnormal discharge treated?</p>\r\n<p>How you are treated will depend on what&rsquo;s causing the problem. For example,&nbsp;<a href="http://www.webmd.com/a-to-z-guides/candidiasis-yeast-infection">yeast infections</a>&nbsp;are usually treated with antifungal <a href="http://www.webmd.com/drugs/index-drugs.aspx">medications</a>&nbsp;inserted into the vagina in cream or gel form. Bacterial vaginosis is treated with antibiotic pills or creams. Trichomoniasis is usually treated with the drug&nbsp;<a href="http://www.webmd.com/drugs/drug-6426-Metronidazole+Oral.aspx?drugid=6426&amp;drugname=Metronidazole+Oral">metronidazole</a>&nbsp;(<a href="http://www.webmd.com/drugs/drug-7644-Flagyl+Oral.aspx?drugid=7644&amp;drugname=Flagyl+Oral">Flagyl</a>) or&nbsp;<a href="http://www.webmd.com/drugs/drug-91258-tinidazole+oral.aspx">tinidazole</a>(<a href="http://www.webmd.com/drugs/drug-91341-tindamax+oral.aspx">Tindamax</a>).</p>\r\n<p>Here are some tips for preventing&nbsp;<a href="http://www.webmd.com/women/guide/sexual-health-vaginal-infections">vaginal infections</a>&nbsp;that can lead to abnormal discharge:</p>\r\n<ul>\r\n<li>Keep the vagina clean by washing regularly with a gentle, mild soap and warm water.</li>\r\n<li>Never use scented soaps and feminine products or douche. Also avoid feminine sprays and bubble baths.</li>\r\n<li>After going to the bathroom, always wipe from front to back to prevent bacteria from getting into the vagina and causing an infection.</li>\r\n<li>Wear 100% cotton underpants, and avoid overly tight clothing.</li>\r\n</ul>', 'vaginal-discharge-what-s-abnormal', 'uploads/blogs/blog_56fe3694de12a.jpg', 0, 1, 1, 1, '0000-00-00 00:00:00', '2016-07-24 16:04:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `data_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_blog_categories`
--

INSERT INTO `tbl_blog_categories` (`id`, `en_name`, `kh_name`, `slug`, `is_published`, `created_dt`, `modified_dt`, `data_order`) VALUES
(1, 'News', 'News', 'news', 1, '2016-07-01 23:19:43', '2016-07-13 09:19:14', 3),
(2, 'Tips', 'Tips', 'tips', 1, '2016-07-01 23:20:17', '2016-07-01 23:20:21', 1),
(3, 'Video', 'Video', 'video', 1, '2016-07-01 23:20:57', '2016-07-01 23:21:00', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_consultant_images`
--

INSERT INTO `tbl_consultant_images` (`id`, `image`, `modified_dt`, `is_active`) VALUES
(1, 'uploads/consultant-images/consultant_image_56edf6c5588ab.jpg', '2016-03-20 02:03:01', 0),
(2, 'uploads/consultant-images/consultant_image_56e50dc46b112.jpg', '2016-03-15 15:31:52', 0),
(5, 'uploads/consultant-images/consultant_image_5700c8523386b.jpg', '2016-04-03 07:37:54', 0),
(6, 'uploads/consultant-images/consultant_image_570bb824a8fba.jpg', '2016-04-11 14:43:48', 0),
(7, 'uploads/consultant-images/consultant_image_57208162e3bed.jpg', '2016-04-27 09:07:46', 1),
(8, 'uploads/consultant-images/consultant_image_57207f42c1911.jpg', '2016-04-27 08:58:42', 0);

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
(1, 'about-us', 'About Us', 'About us', '<p style="text-align: justify;"><strong>Krupet.com</strong> aims to become a leading health website in Cambodia and would like to help the audience search for reliable health institutions. The audience are able to convieniently search for reliable information of hospitals and specialized clinics in Phnom Penh and useful health news/tips. Health institutions on Krupet.com are not only equipped with high tech medical equipment but also have professionals with high technical skills. All the institutions have been approved and recognized by the Ministry of Health in Cambodia. Health news/tips are extracted from both local or international reliable sources with translation into either Khmer or English and simplified information to provide readers with convinience of readings and understandings.</p>\r\n<p style="text-align: justify;"><strong>Krupet.com</strong> will facilitate to patience to communicate with specialists easier and better as well as help Cambodia people to get accurate health information. Moreover, we recommend the audience to consult with the specialists before taking any tips or information on our or other website to implement due to the fact that each person might have different aspect in term of health.</p>', '<p style="text-align: justify;"><strong>Krupet.com</strong> មានគោលបំណង ក្លាយជាវិបសាយ សុខភាពនាំមុខគេក្នុងប្រទេសកម្ពុជា។ លើសពីនេះ គេហទំព័ររបស់យើង ចង់ជួយឲ្យលោកអ្នកស្វែងរកស្ថាបនថែទាំសុខភាពប្រកបដោយទំនុកចិត្តខ្ពស់។ លោកអ្នកអាចស្វែងរកមន្ទីរពេទ្យ ឬគ្លីនិកឯកទេសទូទាំងរាជធានីភ្នំពេញ និងពត៌មានអប់រំពីសុខភាពដែលគួរឲ្យទុកចិត្តបំផុត។ គ្រប់ស្ថាប័នសុខភាពដែលបង្ហាញនៅក្នុងគេហទំព័រនេះ សុទ្ធតែមានវិជ្ជាជីវៈត្រឹមត្រូវប្រកបដោយបច្ចេកទេសច្បាស់លាស់ និងត្រូវបានទទួលស្គាល់ពីក្រសួងសុខាភិបាលនៃព្រះរាជាណាចក្រកម្ពុជា។ រីឯពត៌មានស្តីពីសុខភាព ត្រូវបានយកចេញពីប្រភពផ្លូវការទាំងក្នុង និងក្រៅប្រទេស ព្រមទាំងមានកែសម្រួលដើម្បីឲ្យមិត្តអ្នកអានងាយយល់ និង អាចទទួលបានពត៌មានបានរហ័ស ។</p>\r\n<p style="text-align: justify;">គេហទំព័រ <strong>Krupet.com</strong> នឹងជួយសម្រួលដល់ទំនាក់ទំនងរវាងអ្នកដែលមានបញ្ហាសុខភាព និងអ្នកជំនាញឲ្យកាន់តែងាយស្រួល និងប្រសើរជាងមុន ហើយទស្សនៈវិស័យរបស់យើងគឺចង់ធ្វើឲ្យប្រជាជនកម្ពុជាទទួលបាននូវពត៌មានសុខភាពយ៉ាងសុក្រិត។ ទន្ទឹមនឹងភាពងាយស្រួលក្នុងការទទួលយកពត៌មានសុខភាព យើងជម្រុញលើកទឹកចិត្តឲ្យអ្នកអានទាំងអស់ធ្វើការពិគ្រោះជាមួយគ្រូពេទ្យជំនាញច្បាស់លាស់ជាមុនសិន មុននឹងយកពត៌មានដែលទទួលបានពី Krupet.com ឬគេហទំព័រដទៃទៅ អនុវត្តជាក់ស្តែង ដោយហេតុថា មនុស្សម្នាក់ៗមានលក្ខណៈមិនដូចគ្នានោះទេ។</p>', 0, 0, '2016-07-19 16:22:33', 0, '0000-00-00 00:00:00'),
(2, 'term', 'Term', 'Term in Khmer', '<p>Term</p>\r\n<p>An unerring eye for what''s next in fashion. A relentless drive to exceed expectations. For more than 100 years, Nordstrom has worked to deliver the best possible shopping experience, helping customers possess style&mdash;not just buy fashion.&nbsp;</p>\r\n<p>Nordstrom, Inc. is a leading fashion specialty retailer offering compelling clothing, shoes and accessories for men, women and children. Since 1901, we''ve been committed to providing our customers with the best possible service&mdash;and to improving it every day.</p>\r\n<p>An unerring eye for what''s next in fashion. A relentless drive to exceed expectations. For more than 100 years, Nordstrom has worked to deliver the best possible shopping experience, helping customers possess style&mdash;not just buy fashion.&nbsp;</p>\r\n<p>Nordstrom, Inc. is a leading fashion specialty retailer offering compelling clothing, shoes and accessories for men, women and children. Since 1901, we''ve been committed to providing our customers with the best possible service&mdash;and to improving it every day.</p>', '<p>Term</p>\r\n<p>An unerring eye for what''s next in fashion. A relentless drive to exceed expectations. For more than 100 years, Nordstrom has worked to deliver the best possible shopping experience, helping customers possess style&mdash;not just buy fashion.&nbsp;</p>\r\n<p>Nordstrom, Inc. is a leading fashion specialty retailer offering compelling clothing, shoes and accessories for men, women and children. Since 1901, we''ve been committed to providing our customers with the best possible service&mdash;and to improving it every day.</p>\r\n<p>An unerring eye for what''s next in fashion. A relentless drive to exceed expectations. For more than 100 years, Nordstrom has worked to deliver the best possible shopping experience, helping customers possess style&mdash;not just buy fashion.&nbsp;</p>\r\n<p>Nordstrom, Inc. is a leading fashion specialty retailer offering compelling clothing, shoes and accessories for men, women and children. Since 1901, we''ve been committed to providing our customers with the best possible service&mdash;and to improving it every day.</p>', 0, 0, '2016-07-24 11:02:17', 0, '0000-00-00 00:00:00'),
(3, 'career', 'Career', 'Career', '<p>Krupet believes in finding the right people to work hand in hand to achieve our mission and vision. We are looking for people who are passionate about our business, hard-working, and possess wiling-to-learn spirits. If you have a strong passion in social enterprises and would like to be part of Krupet, please send your application to our recruitment team at <a href="mailto:contact@krupet.com">contact@krupet.com</a></p>\r\n<p>Note: Krupet currently has no job openings. However, if you are interested in krupet, feel free to drop your application via our email. Our recruitment team will contact you as soon as possible if there are openings that fit your qualifications.</p>', '', 0, 0, '2016-07-19 15:59:19', 0, '0000-00-00 00:00:00'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_doctors`
--

INSERT INTO `tbl_doctors` (`id`, `en_name`, `kh_name`, `en_title`, `kh_title`, `id_sex`, `en_degree`, `kh_degree`, `id_specialist`, `id_province`, `id_distrit`, `phone`, `email`, `slug`, `en_background`, `kh_background`, `en_experien`, `kh_experien`, `image`, `is_published`, `is_featured`, `created_dt`, `data_order`, `modified_dt`, `lat`, `lon`) VALUES
(9, 'AZ', 'អេZ', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, 'Doctor ', 'វេជ្ជបណ្ឌិត', 1, 2, 166, '(+855) 17 567 099', 'love@krupet.com', 'az', '<p>a</p>', '<p>a</p>', '<p>a</p>', '<p>a</p>', 'uploads/doctors/doctors_5795e465a9818.jpg', 1, 1, '0000-00-00 00:00:00', 0, '2016-07-25 10:05:25', 0, 0),
(10, 'Sathya', 'Sathya', 'sathya', 'Sathya', 1, 'sa', 'sa', 1, 2, 166, '', '', 'sathya', '<p>asda</p>', '<p>sadas</p>', '<p>sadas</p>', '<p>sadas</p>', 'uploads/doctors/doctors_57860a2514ad5.jpg', 1, 1, '0000-00-00 00:00:00', 0, '2016-07-13 09:30:13', 11.5847, 1),
(11, 'Tekly Sun', 'ស៊ុន តេកលី', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, 'Doctor', 'វេជ្ជបណ្ឌិត', 6, 5, 140, '010 222 150 /  017 567 099\r\n012 123 456  /  011 123 456 ', 'tekly@gmail.com', 'tekly-sun', '<p>;sdnfsndf</p>\r\n<p>jkdlkjdlkfjkjdlfjf</p>', '<p>;sdnfsndf</p>\r\n<p>jkdlkjdlkfjkjdlfjf</p>', '<p>djkjskdjjsd</p>', '<p>djkjskdjjsd</p>', 'uploads/doctors/doctors_5794e096bfb92.jpg', 1, 1, '0000-00-00 00:00:00', 0, '2016-07-24 15:36:54', 104.855, 11.5627);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_doctor_services`
--

INSERT INTO `tbl_doctor_services` (`id`, `id_doctor`, `id_service`, `price`, `en_note`, `kh_note`, `is_published`, `modified_dt`, `created_dt`) VALUES
(1, 2, 2, '231', '', '', 0, '2015-12-24 15:59:10', '0000-00-00 00:00:00'),
(2, 6, 9, '12 $', '333', '33', 0, '2016-01-22 13:17:44', '0000-00-00 00:00:00'),
(3, 8, 3, '200$', 'sdf', 'sdf', 0, '2016-01-22 13:30:33', '0000-00-00 00:00:00'),
(4, 8, 2, '22$', '23', 'dsf', 0, '2016-01-22 13:31:35', '0000-00-00 00:00:00'),
(5, 8, 1, '200$', '', '', 0, '2016-01-22 13:32:13', '0000-00-00 00:00:00'),
(6, 7, 9, '111', '', '', 0, '2016-03-14 14:22:50', '0000-00-00 00:00:00'),
(7, 11, 4, 'N/A', '', '', 0, '2016-07-24 15:50:36', '0000-00-00 00:00:00');

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
  `id_rater` int(11) DEFAULT NULL,
  `review` text,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_feedbacks`
--

INSERT INTO `tbl_feedbacks` (`id`, `id_rater`, `review`, `created_dt`) VALUES
(27, 3, 'ccccc', '2016-04-24 03:05:22'),
(28, 4, 'aa', '2016-04-24 03:05:28'),
(29, 3, '', '2016-07-09 05:18:48');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `tbl_feedback_scores`
--

INSERT INTO `tbl_feedback_scores` (`id`, `id_feedback`, `id_question`, `score`) VALUES
(81, 25, 1, 4),
(82, 25, 2, 5),
(83, 25, 3, 5),
(84, 25, 4, 3),
(85, 26, 1, 4),
(86, 26, 2, 4),
(87, 26, 3, 4),
(88, 26, 4, 4),
(89, 27, 1, 4),
(90, 27, 2, 4),
(91, 27, 3, 4),
(92, 27, 4, 5),
(93, 28, 1, 2),
(94, 28, 2, 3),
(95, 28, 3, 3),
(96, 28, 4, 3),
(97, 29, 1, 5),
(98, 29, 2, 4),
(99, 29, 3, 3),
(100, 29, 4, 5);

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
(1, 'Dara Sambath', 'M', '32', '098343334443', 'xxx@asdf.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 1, 1, 0, '2016-07-07 07:51:27', '2016-07-07 07:51:27', '0000-00-00 00:00:00'),
(2, '', 'M', '', '', '', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, '', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:48:43'),
(3, 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Please help me', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Please help me', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:49:57'),
(5, 'Tekly', 'M', '12', '098343334443', 'sathyayoeun02@gmail.com', 'Headach', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'kmk', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'I do not know', 1, 1, 0, '2016-07-07 06:46:48', '2016-07-07 06:46:48', '0000-00-00 00:00:00'),
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
(2, 11, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-02-03 03:05:09'),
(3, 11, 2, 4, '', 0, 0, '0000-00-00 00:00:00', '2016-02-04 17:43:18'),
(4, 11, 1, 5, '', 0, 0, '0000-00-00 00:00:00', '2016-02-04 17:45:04'),
(5, 2, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-02-04 18:20:16'),
(6, 3, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-02-04 18:23:15'),
(7, 2, 1, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-12 17:28:10'),
(8, 15, 1, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-12 17:33:00'),
(9, 15, 2, 43, '', 0, 0, '0000-00-00 00:00:00', '2016-03-12 17:34:32'),
(10, 2, 2, 43, '', 0, 0, '0000-00-00 00:00:00', '2016-03-12 17:35:32'),
(12, 21, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-12 20:20:26'),
(13, 12, 1, 1, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:34:54'),
(14, 4, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:35:43'),
(15, 5, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:36:19'),
(16, 16, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:37:33'),
(17, 14, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:38:48'),
(18, 22, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 01:39:40'),
(19, 19, 3, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 02:12:21'),
(20, 7, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 02:15:29'),
(21, 9, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 02:23:54'),
(22, 8, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 02:29:24'),
(23, 6, 3, 2, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 04:57:26'),
(24, 20, 1, 3, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 05:02:13'),
(25, 18, 1, 6, '', 0, 0, '0000-00-00 00:00:00', '2016-03-13 05:02:55');

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
  `id_hospital_type` int(10) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `data_order` int(10) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_rating_code_required` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `tbl_hospitals`
--

INSERT INTO `tbl_hospitals` (`id`, `en_name`, `kh_name`, `en_director`, `kh_director`, `en_background`, `kh_background`, `id_hospital_category`, `id_hospital_type`, `slug`, `image`, `is_published`, `data_order`, `is_featured`, `created_dt`, `modified_dt`, `is_rating_code_required`) VALUES
(1, 'ABC Clinic ', 'គ្លីនិក ABC', 'General', 'ទូទៅ', '<p>asd</p>', '<p>b</p>', 2, 12, '1-abc-clinic', 'uploads/hostpitals/hostpital56fd178d620c5.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-04-05 04:53:41', 0),
(3, 'Calmet Hospital', 'មន្ទីរពេទ្យកាល់ម៉ែត', 'Ear, Nose, Throat', 'ត្រចៀក ច្រមុះ បំពង់ក', '<p>sdaf</p>', '<p>asdf</p>', 1, 14, '3-calmet-hospital', 'uploads/hostpitals/hostpital56fd166a4aa42.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-04-05 04:53:14', 1),
(4, 'Ong Doung', 'អង្គដួង', 'z', '', 'z', 'z', 1, 13, '4-Ong-Doung', 'uploads/hostpitals/hostpital567eb64e77713.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-26 16:46:22', 0),
(5, 'Rusia', 'រូស៊ី', 'a', 'a', '<p>a</p>', '<p>a</p>', 1, 14, 'rusia', 'uploads/hostpitals/hostpital567eb6b9d4935.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-04-05 05:56:56', 1),
(6, 'khemara', 'រូស៊ី khemara', 'a', 'Ma', '<p style="text-align: justify;">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style="text-align: justify;">CORE VALUES</p>\r\n<ul>\r\n<li style="text-align: justify;">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style="text-align: justify;">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style="text-align: justify;">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style="text-align: justify;">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style="text-align: justify;">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style="text-align: justify;">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style="text-align: justify;">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '<p style="text-align: justify;">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style="text-align: justify;">CORE VALUES</p>\r\n<ul>\r\n<li style="text-align: justify;">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style="text-align: justify;">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style="text-align: justify;">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style="text-align: justify;">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style="text-align: justify;">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style="text-align: justify;">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style="text-align: justify;">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', 1, 13, '6-khemara', 'uploads/hostpitals/hostpital567eb74771b46.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-22 16:02:13', 0),
(7, 'Japen', 'ជប៉ុន', 'c', 'a', 'c', 'c', 1, 14, '7-Japen', 'uploads/hostpitals/hostpital567eb792755fe.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-03-13 10:38:31', 0),
(8, 'Veathnam', 'វៀតណាមVeathnam', 'v', '', 'v', 'v', 1, 13, '8-Veathnam', 'uploads/hostpitals/hostpital567eb7e59dba2.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-01 12:31:10', 0),
(9, 'china', 'មន្ទីពេទ្យchina', 'c', '', 'c', 'c', 1, 13, '9-china', 'uploads/hostpitals/hostpital567eb85501eef.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 08:53:31', 0),
(10, 'Brazil', 'មន្ទីពេទ្យBrazil', 'z', '', 'z', 'z', 1, 13, '10-Brazil', 'uploads/hostpitals/hostpital567eb88c7391a.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 08:49:42', 0),
(11, 'Thailand', 'មន្ទីពេទ្យThailand', 't', '', 't', 't', 1, 13, '11-Thailand', 'uploads/hostpitals/hostpital567eb8bfc3215.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 08:42:23', 0),
(12, 'Vathanak', 'មន្ទីពេទ្យVathanak', 'v', '', 'v', 'v', 1, 13, '12-Vathanak', 'uploads/hostpitals/hostpital567eb8f29e1ac.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 08:06:58', 0),
(13, 'baka', 'មន្ទីពេទ្យbaka', 'b', 'ss', '<p>b</p>', '<p>b</p>', 1, 13, '13-baka', 'uploads/hostpitals/hostpital567eb9209609f.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-02-04 13:44:04', 0),
(14, 'Mama', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', 1, 13, '14-Mama', 'uploads/hostpitals/hostpital567eb94c64b87.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-01-21 13:04:10', 0),
(15, 'Seyha', 'មន្ទីពេទ្យseyha', 's', '', 's', 's', 1, 13, '15-Seyha', 'uploads/hostpitals/hostpital567eb97881b2b.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:46', 0),
(16, 'Digo', 'មន្ទីពេទ្យDigo', 'Mr Tekly', 'Tekly', '<p>d</p>', '<p>d</p>', 1, 13, '16-Digo', 'uploads/hostpitals/hostpital567eb9af56f47.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-02-14 08:27:00', 0),
(17, 'Java', 'មន្ទីពេទ្យjava', 'j', '', 'j', 'j', 1, 13, '17-Java', 'uploads/hostpitals/hostpital567eba115501f.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 07:54:11', 0),
(18, 'Kakan', 'មន្ទីពេទ្យkakan', 'k', '', 'k', 'k', 1, 13, '18-Kakan', 'uploads/hostpitals/hostpital567eba5082d43.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 07:51:37', 0),
(19, 'lala', 'មន្ទីពេទ្យlala', 'l', '', 'l', 'l', 1, 13, '19-lala', 'uploads/hostpitals/hostpital567ebb8bbda16.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 07:50:26', 0),
(20, 'pippo', 'មន្ទីពេទ្យpippo', 'p', 's', '<p>p</p>', '<p>p</p>', 1, 13, '20-pippo', 'uploads/hostpitals/hostpital567ebbbc8f732.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-02-26 02:17:33', 0),
(21, 'yoyo', 'មន្ទីពេទ្យyoyo', 'y', 'abc', 'y', 'y', 1, 14, '21-yoyo', 'uploads/hostpitals/hostpital567ebbf373176.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-03-24 17:49:58', 1),
(22, 'tata', 'មន្ទីពេទ្យtata', 'a', '', 'a', 'a', 1, 13, '22-tata', 'uploads/hostpitals/hostpital567ebc28d264f.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:52', 0),
(23, 'rara', 'មន្ទីពេទ្យ', 'a', 'a', '', '', 1, 13, '23-rara', 'uploads/hostpitals/hostpital567ebc56d9f2d.jpg', 1, 2, 0, '0000-00-00 00:00:00', '2016-03-12 19:54:19', 0),
(24, 'dadad', 'មន្ទីពេទ្យdadad', 'd', '', 'd', 'd', 1, 13, '24-dadad', 'uploads/hostpitals/hostpital567ebc7e94049.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:54', 0),
(25, 'vavaha', 'មន្ទីពេទ្យvavaha', 'v', '', 'v', 'v', 1, 13, '25-vavaha', 'uploads/hostpitals/hostpital567ebcf145939.jpg', 1, 3, 0, '0000-00-00 00:00:00', '2015-12-29 05:32:00', 0),
(26, 'virak', 'មន្ទីពេទ្យvirak', 'b', '', 'b', 'b', 1, 13, '26-virak', 'uploads/hostpitals/hostpital567ebd42c7a15.jpg', 1, 1, 0, '0000-00-00 00:00:00', '2015-12-29 05:30:48', 0),
(27, 'nana', 'មន្ទីពេទ្យnana', 'b', '', 'b', 'b', 1, 13, '27-nana', 'uploads/hostpitals/hostpital567ebd6e8d3b5.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 05:27:46', 0),
(28, 'domo', 'មន្ទីពេទ្យdomo', 'v', '', 'v', 'v', 1, 13, '28-domo', 'uploads/hostpitals/hostpital567ebdac70aa0.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 05:27:14', 0),
(29, 'baza', 'មន្ទីពេទ្យbaza', 'z', '', 'z', 'z', 1, 13, '29-baza', 'uploads/hostpitals/hostpital567ebe1e3f0f8.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2015-12-29 05:24:19', 0),
(30, 'neymar', 'មន្ទីពេទ្យneymar', 'n', '', 'n', 'n', 1, 13, '30-neymar', 'uploads/hostpitals/hostpital567ebe625e332.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:39', 0),
(31, 'modo', 'មន្ទីពេទ្យmodo', 'f', '', 'f', 'f', 1, 13, '31-modo', 'uploads/hostpitals/hostpital567ebe946bde8.jpg', 1, 5, 0, '0000-00-00 00:00:00', '2015-12-29 05:19:59', 0),
(32, 'mili', 'មន្ទីពេទ្យmili', 'f', '', 'n', 'a', 1, 13, '32-mili', 'uploads/hostpitals/hostpital567ebec789876.jpg', 1, 4, 0, '0000-00-00 00:00:00', '2015-12-29 05:21:33', 0),
(33, 'momo', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', 1, 13, '33-momo', 'uploads/hostpitals/hostpital567ebefc626ce.jpg', 1, 7, 0, '0000-00-00 00:00:00', '2015-12-26 17:23:24', 0),
(34, 'sokkema', 'មន្ទីពេទ្យ', 'k', '', 'k', 'k', 1, 13, '34-sokkema', 'uploads/hostpitals/hostpital567f494516128.jpg', 1, 6, 0, '0000-00-00 00:00:00', '2015-12-27 03:13:25', 0),
(35, 'Z8', 'Z8', 'c', 'C', '<p>c</p>', '<p>v</p>', 1, 14, '35-Z8', 'uploads/hostpitals/hostpital567f499cbdda1.jpg', 1, 0, 0, '0000-00-00 00:00:00', '2016-03-24 13:35:05', 1),
(36, 'ZJ', 'ZJ', 'sa', 'SA', '<p>sa</p>\r\n', '<p>sa</p>\r\n', 1, 13, '36-ZJ', 'uploads/hostpitals/hostpital567f49dec9ae1.jpg', 1, 2, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:12', 0),
(37, 'ZI', 'ZI', 'ra', 'RA', '<p>ra</p>\r\n', '<p>ra</p>\r\n', 1, 13, '37-ZI', 'uploads/hostpitals/hostpital567f4a2007a6d.jpg', 1, 1, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:15', 0),
(38, 'ZH', 'ZH', 'c', 'C', '<p>c</p>\r\n', '<p>c</p>\r\n', 1, 13, '38-ZH', 'uploads/hostpitals/hostpital567f4a54bc65a.jpg', 1, 3, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:17', 0),
(39, 'XYZ Health Center ', 'មណ្ឌលសុខភាព XYZ', 'v', 'V', '<p>v</p>', '<p>v</p>', 1, 13, 'xyz-health-center', 'uploads/hostpitals/hostpital567f4a886d3b9.jpg', 1, 4, 0, '0000-00-00 00:00:00', '2016-04-05 05:43:59', 0),
(40, 'ZF', 'ZF', 'ch', 'CH', '<p>ch</p>\r\n', '<p>ch</p>\r\n', 1, 13, '40-ZF', 'uploads/hostpitals/hostpital567f4ad206da2.jpg', 1, 5, 0, '0000-00-00 00:00:00', '2016-01-21 13:04:22', 0),
(41, 'ABCDEFGHILKJMNO ', 'ABCDEFGHILKJMNO ', 'k', 'K', '<p>k</p>', '<p>k</p>', 3, 7, 'abcdefghilkjmno', 'uploads/hostpitals/hostpital56fd191a862cb.jpg', 1, 6, 0, '0000-00-00 00:00:00', '2016-04-05 05:45:16', 0),
(42, 'ZD', 'ZD', 'vi', 'VI', '<p>vi</p>', '<p>vi</p>', 1, 13, '42-ZD', 'uploads/hostpitals/hostpital567f4b6edbaf7.jpg', 1, 7, 0, '0000-00-00 00:00:00', '2016-03-04 05:34:07', 0),
(43, 'ZC', 'ZC', 'gi', 'GI', '<p>gi</p>', '<p>gi</p>', 1, 14, '43-ZC', 'uploads/hostpitals/hostpital567f4ba3aa320.jpg', 1, 8, 0, '0000-00-00 00:00:00', '2016-03-13 10:01:40', 0),
(44, 'ZB', 'ZB', 'af', 'AF', '<p>af</p>', '<p>af</p>', 1, 14, '44-ZB', 'uploads/hostpitals/hostpital567f4bdd8c814.jpg', 1, 9, 0, '0000-00-00 00:00:00', '2016-03-13 10:01:32', 0),
(45, 'ZA', 'ZA', 'as', 'Mr XXXX', '<p>as</p>', '<p>as</p>', 1, 14, 'za', 'uploads/hostpitals/hostpital567f4c24b8f36.jpg', 1, 10, 0, '0000-00-00 00:00:00', '2016-04-07 11:43:55', 1),
(46, 'a', 'A', 'k', 'k', '<p>k</p>', '<p>k</p>', 2, 12, '', 'uploads/hospitals/hospitals_578ce383e338a.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-07-19 06:33:53', 1),
(47, 'Central Hospital ', 'មន្ទីរពេទ្យ សង់ត្រាល់', 'Doctor', 'វេជ្ជបណ្ឌិត', '<p>១</p>', '<p>១</p>', 2, 14, '47-central-hospital', 'uploads/hospitals/hospitals_578da39c50746.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-07-19 07:31:20', 1),
(49, 'Pachem Dental Clinic', 'មន្ទីរព្យាបាលធ្មេញបស្ចិម', 'Doctor', 'វេជ្ជបណ្ឌិត', '<p>Widely recognized for its excellent customer service, competitive prices, and innovative value-added solutions, the company is dedicated to helping its customers succeed in overcoming any dental problems by offering the products and services needed to operate an efficient practice and deliver high-quality dental care.</p>\r\n<p>From modest inception in 1999, with a small ofﬁ ce space and limited number of dental chairs, Pachem Dental Clinic has, in collaboration with Japan&rsquo;s Aishikai Shimazu dental group, grown into a regional clinic that today offers the most creative solutions in oral care. It has a combination of highly experienced Cambodian and foreign dentists with postgraduate, master&rsquo;s and doctoral degrees in their areas of specialization from prestigious local and overseas dental schools. With more than 35 dental chairs, it now has three branches in Phnom Penh and one in Siem Reap province.</p>\r\n<p>Our clients are drawn from Cambodia and from all corners of the globe, including the U.S., Europe, Australia and Asia.</p>\r\n<p>Pachem Dental Clinic is committed to offering excellence in service in response to the individual needs of a diverse range of clients. No requirement is too small or too complex for us; the treatments below are just some of the services we are able to offer.</p>\r\n<p>&nbsp;</p>', '<p>ការទទួលស្គាល់យ៉ាងទូលំទូលាយសម្រាប់សេវាកម្មបំរើអតិថិជនដ៏ល្អឥតខ្ចោះតម្លៃនៃការប្រកួតប្រជែងនិងដំណោះស្រាយបន្ថែមដោយមានភាពច្នៃប្រឌិតថ្មីដូច្នេះក្រុមហ៊ុនបានជួយដល់អតិថិជនរបស់ខ្លួនអោយទទួលបានជោគជ័យក្នុងការជំនះលើបញ្ហាធ្មេញណាមួយដោយផ្តល់នូវផលិតផលនិងសេវាកម្មដែលចាំបាច់ក្នុងដំណើរការនៃការអនុវត្តអោយមានប្រសិទ្ធិភាពនិងការផ្តល់នូវគុណភាពខ្ពស់ក្នុងការថែរក្សារធ្មេញ។<br />ការចាប់ផ្តើមតិចតួចនៅក្នុងឆ្នាំ1999ដោយមានការិយាល័យតូចនិងមានកំណត់ចំនួនកៅអីព្យាបាលធ្មេញមន្ទីរព្យាបាលធ្មេញបស្ចឹមបានសហការជាមួយក្រុមធ្មេញAishikaiShimazuរបស់ប្រទេសជប៉ុនបានលូតលាស់ក្លាយជាគ្លីនិចក្នុងតំបន់មួយដែលសព្វថ្ងៃបានផ្តល់នូវដំណោះស្រាយប្រកបដោយភាពច្នៃប្រឌិតក្នុងការថែទាំមាត់ធ្នេញ។មានការរួមបញ្ចូលគ្នានៃការទន្តពេទ្យកម្ពុជានិងបរទេសដែលមានបទពិសោធខ្ពស់ជាមួយនឹងថ្នាក់ក្រោយបរិញ្ញានឹងសញ្ញាបត្រថ្នាក់បណ្ឌិតនៅក្នុងតំបន់នៃជំនាញរបស់ពួកគេពីសាលាក្នុងស្រុកនិងបរទេសផ្នែកទន្តពេទ្យ។ជាមួយនឹងកៅអីធ្វើធ្មេញជាង35ឥឡូវនេះមន្ទីរព្យាបាលធ្មេញបស្ចឹមមានបីសាខានៅក្នុងរាជធានីភ្នំពេញនិងមួយទៀតនៅខេត្តសៀមរាប។<br />អតិថិជនរបស់មន្ទីរព្យាបាលធ្មេញបស្ចឹមមានមកពីប្រទេសកម្ពុជានិងពីជ្រុងទាំងអស់នៃពិភពលោករួមទាំងសហរដ្ឋអាមេរិកអឺរ៉ុបអូស្រ្តាលីនិងអាស៊ី។<br />មន្ទីរព្យាបាលធ្មេញបស្ចឹមបានប្តេជ្ញាចិត្តផ្តល់ការបម្រើដ៏ប្រសើរក្នុងការឆ្លើយតបទៅនឹងតម្រូវការរបស់អតិថិជន។មិនមានតម្រូវការតូចពេកឬស្មុគស្មាញពេកសម្រាប់ពួកយើង!ការព្យាបាលដូចខាងក្រោមនេះគឺគ្រាន់តែជាផ្នែកខ្លះនៃការផ្តល់សេវាដែលយើងអាចផ្តល់ជូននូវ</p>', 2, 12, 'pachem-dental-clinic', 'uploads/hospitals/hospitals_578dc5e0b97b9.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-07-19 07:08:08', 1),
(50, 'Fertility Clinic of Cambodia', 'មន្ទីរសម្រាកព្យាបាលកម្ពុជា', 'Dr. Neil R. Stoddart, Ph.D. ( IVF Laboratory Director)', 'Dr. Neil R. Stoddart, Ph.D. ( IVF Laboratory Director)', '<p><strong>Fertility Clinic of Cambodia (FCC), formerly known as Sok Teang Cabinet, </strong>is the first Fertility Clinic offering state-of-the-art services in assisted conception and women&rsquo;s health in Cambodia.</p>\r\n<p>As the only pioneer fertility services provider in Cambodia, our highly-specialized and multidisciplinary team aims at offering exceptional patient-centered care for individuals and couples in all aspects of fertility treatment and women&rsquo;s health.</p>', '<p><strong>មន្ទីរសម្រាកព្យាបាលកម្ពុជា ដែលពីមុនមកត្រូវបានគេស្គាល់ថាបន្ទប់ពិគ្រោះជំងឺ សុខ ទៀង</strong> គឺជាមន្ទីរសម្រាកព្យាបាលដំបូងគេដែលផ្តល់សេវាជំនួយការបង្កកំណើត និងសុខភាពស្ត្រីដ៏ទំនើបបំផុតនៅក្នុងប្រទេសកម្ពុជា។</p>\r\n<p>ជាមន្ទីរសម្រាកព្យាបាលឈានមុខគេខាងសេវាជួយអ្នកលំបាកមានកូនក្នុងប្រទេសកម្ពុជា FCC ជាក្រុមគ្រូពេទ្យពហុជំនាញ ដែលមានសមត្ថភាពខ្ពស់ក្នុងការផ្តល់ការថែទាំសុខភាពគ្រប់ផ្នែកទាំងអស់ដល់គូស្វាមីភរិយាដែលជួបការលំបាកមានកូន និងសុខភាពស្ត្រីទូទៅ។</p>', 2, 14, 'fertility-clinic-of-cambodia', 'uploads/hospitals/hospitals_578ddf1c8edc9.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-07-19 08:04:44', 0),
(51, 'International SOS', 'International SOS', 'Doctor', 'វេជ្ជបណ្ឌិត', '<p>In August 1998, International SOS established its operations in Cambodia with the Phnom Penh medical clinic in response to client requirements. The Phnom Penh clinic offered international standards of personalised medical care and assistance to individuals and their families, groups, as well as private sector and non-governmental organisations.</p>\r\n<p>For more information on any of our services, please call or email us.</p>\r\n<p>In October 2015, International SOS formed a joint venture with Raffles Medical Group to enhance and expand the services of its 10 clinics in China, Vietnam and Cambodia. These clinics will gradually be branded and operated by Raffles Medical Group.<br /> <br />The joint venture clinics will provide privileged access to International SOS members which include:<br />&bull; Dedicated members-only reception with executives knowledgeable in International SOS&rsquo; benefits and protocol to assist and minimise waiting time. <br />&bull; Priority appointment with members&rsquo; preferred doctors when available.<br />&bull; Preferential rates on consultation, procedures, medicine and health checks.<br />&bull; Cashless transaction for existing clients with direct billing arrangements with insurers or corporate credit facility. New direct billing arrangements may also be established with a wider range of insurance providers.<br />&bull; Multilingual support in English, Japanese and Chinese by an international team of doctors, nurses and medical specialists or up to 99 languages supported by our Assistance Centres.<br />&bull; A client liaison executive to assist members with any requests or enquiries, e.g. medical reports, billing and invoicing etc. <br />Members will also enjoy privileged access benefits at Raffles Medical Clinics in Shanghai and Hong Kong. </p>', '<p>International SOS គឹជាប្រព័ន្ធផ្តល់ការធានារ៉ាប់រងសុខភាព ដែលបានចាប់ផ្តើមប្រតិបត្តិការនៅកម្ពុជានៅខែ សីហា ឆ្នាំ ១៩៩៨ នឹងបានបង្កើតការិយាល័យមួយ និងគ្លីនិកផ្តល់សេវាសុខាភិបាលស្តង់ដារអន្តរជាតិមួយកន្លែងនៅរាជធានីភ្នំពេញដើម្បីឆ្លើយតបទៅនឹងតម្រូវការរបស់អតិថិជនដូចជា បុគ្គល គ្រួសារ ក្រុម ព្រមទាំងវិស័យឯកជន និងអង្គការមិនមែនរដ្ឋាភិបាល។</p>\r\n<p><br /> នាខែតុលា ឆ្នាំ ២០១៥ International SOS បានចាប់ដៃគូជាមួយ Raffles Medical Group ដើម្បីពង្រឹង និងពង្រីកសេវាកម្មក្នុងគ្លីនិកចំនួន ១០ កន្លែងក្នុងប្រទេសចិន វៀតណាម និងកម្ពុជា ដែលគ្លីនិកទាំងនេះនឹងត្រូវផ្ទេរការគ្រប់គ្រង និងប្តូរនិម្មិតសញ្ញាពាណិជ្ជកម្មបណ្តើរៗ តាម Raffles Medical Group ។ </p>', 2, 12, 'international-sos', 'uploads/hospitals/hospitals_578df09c88f7a.jpg', 1, 0, 1, '0000-00-00 00:00:00', '2016-07-19 09:19:24', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tbl_hospital_branches`
--

INSERT INTO `tbl_hospital_branches` (`id`, `id_hospital`, `en_name`, `kh_name`, `is_default`, `working_hours`, `phone`, `email`, `en_address`, `kh_address`, `website`, `facebook_link`, `lat`, `lon`, `is_published`, `created_dt`, `modified_dt`, `id_province`, `id_distrit`) VALUES
(1, 45, 'Head Hoffice', 'Head Hoffice', 0, 'N/A', '09533343434', 'koeun_math@yahoo.com', 'Phnom Penh', 'Phnom Penh', '', '', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-02-28 12:50:18', 2, 2),
(7, 44, 'Sample Test', 'Sample', 1, 'N/A', 'NA', 'a@f.v', 'XXXXXX', 'XXX', '', '', 10.932152, 104.798771, 1, '0000-00-00 00:00:00', '2016-02-28 09:23:55', 21, 6),
(8, 43, 'Takeo', 'Takeo', 1, 'XXX', '011111', 'takeo@xxx.com', 'Takeo', 'Takoe', '', '', 11.585263, 104.90025, 1, '0000-00-00 00:00:00', '2016-02-28 04:37:46', 2, 2),
(9, 42, 'Head Office', 'Head Office', 1, 'N/A', 'N/A', 'koeun_math@yahoo.com', 'Sen Sok', 'Sen Sok', '', '', 11.588374, 104.915357, 1, '0000-00-00 00:00:00', '2016-02-28 04:36:33', 2, 3),
(10, 1, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:07', 2, 2),
(11, 3, 'Calmet', 'កាល់ម៉ែត', 1, 'Monday - Friday : 6:00 AM to 10:00 PM \r\n<br/>    Saturday - Sunday : 7:00 AM to 8:00 PM', '855 010 222 150, 855 010 123456\r\n<br /> &nbsp;&nbsp;855 017 567 099', 'contact@krupet.com', '# 123, St. 123, Sangkat Monorom, Khan 7 Makara,   Phnom Penh.', 'Phnom Penh', 'http://krupet.com/', '#', 11.575431, 104.920104, 1, '0000-00-00 00:00:00', '2016-06-19 06:09:34', 2, 168),
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
(53, 45, 'EN Name', 'KH Name', 1, '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', 11.585431, 104.926944, 1, '0000-00-00 00:00:00', '2016-03-13 09:59:09', 2, 2),
(54, 49, 'Pachem Dental Clinic', 'មន្ទីរព្យាបាលធ្មេញបស្ចិម', 1, 'MON - Sun : 7:00 AM - 8:00 PM', '(855) 017-300', 'info@pachemdental.com', '#170ABC, Norodom Blvd.,\r\nNorth of Chamkarmorn traffic light', '#170ABC, Norodom Blvd.,\r\nNorth of Chamkarmorn traffic light', 'http://pachemdental.com/', 'https://www.facebook.com/pachemdentalclinic/?fref=ts', 11.547515, 104.92837, 1, '0000-00-00 00:00:00', '2016-07-19 07:03:39', 2, 168),
(55, 47, 'Central Hospital', 'Central Hospital', 0, 'MON - SUN : 7:00 AM - 8:00 PM', '(855) 23 214955 / 214966', 'info@central-hospital.com', '82A, STREET 154, PHNOM PENH', '82A, STREET 154, PHNOM PENH', 'http://www.central-hospital.com/', '', 11.566897, 104.922411, 1, '0000-00-00 00:00:00', '2016-07-19 07:30:54', 2, 168),
(56, 48, 'Central Hospital ', 'មន្ទីរពេទ្យ សង់ត្រាល់', 1, 'MON - SUN : 7:00 AM - 6:00 PM', '(855) 23 214955 / 214966', 'info@central-hospital.com', '82A, STREET 154, PHNOM PENH', '82A, STREET 154, PHNOM PENH', 'http://www.central-hospital.com/', '', 11.566897, 104.922411, 1, '0000-00-00 00:00:00', '2016-07-19 07:47:33', 2, 166),
(57, 50, 'Central Hospital ', 'មន្ទីរពេទ្យ សង់ត្រាល់', 1, 'MON - SUN : 7:00 AM - 6:00 PM', '(855) 23 214955 / 214966', 'info@central-hospital.com', '82A, STREET 154, PHNOM PENH', '82A, STREET 154, PHNOM PENH', 'http://www.central-hospital.com/', '', 11.566897, 104.922411, 1, '0000-00-00 00:00:00', '2016-07-19 08:29:13', 4, 143),
(58, 51, 'International SOS ', 'International SOS ', 1, 'Monday to Friday 8am to 5.30pm \r\nSaturday 8am to 12.00pm', '+855 12 816 911 /  23 216 911', 'info.cambodia@internationalsos', 'House 161, Street 51, Phnom Penh  \r\n', 'House 161, Street 51, ភ្នំពេញ, កម្ពុជា \r\nផ្ទះលេខ ១៦១, ផ្លូវ ៥១, ភ្នំពេញ កម្ពុជា\r\n', 'https://www.internationalsos.com/locations/asia-pa', '', 11.559655, 104.925003, 1, '0000-00-00 00:00:00', '2016-07-19 09:25:02', 2, 166);

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
(1, 'Public Institution ', 'ស្ថាប័នសាធារណៈ', 1, NULL),
(2, 'Private Institution ', 'ស្ថាប័នឯកជន', 1, NULL),
(3, 'NGOs', 'អង្គការសុខភាព', 1, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4352 ;

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
(4306, 45, 'TA12314', 1, '2016-04-24 06:52:43', '2016-03-15 00:00:00'),
(4307, 45, 'DA12513', 1, '2016-04-24 06:51:55', '2016-03-15 00:00:00'),
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
(4321, 21, 'abc2016825804846', 0, NULL, '2016-03-24 06:27:56'),
(4322, 3, 'kalemeth201687404619419', 0, NULL, '2016-03-27 01:13:37'),
(4323, 3, 'kalemeth201665385474563', 0, NULL, '2016-03-27 01:13:37'),
(4324, 3, 'kalemeth201654877616800', 0, NULL, '2016-03-27 01:13:37'),
(4325, 3, 'kalemeth201620855392031', 0, NULL, '2016-03-27 01:13:37'),
(4326, 3, 'kalemeth201623068121746', 0, NULL, '2016-03-27 01:13:37'),
(4327, 3, 'kalemeth201614167254976', 0, NULL, '2016-03-27 01:13:37'),
(4328, 3, 'kalemeth201618267140984', 1, '2016-03-27 01:42:28', '2016-03-27 01:13:37'),
(4329, 3, 'kalemeth201612528232783', 1, '2016-03-27 01:17:14', '2016-03-27 01:13:37'),
(4330, 3, 'kalemeth201620708740688', 1, '2016-03-27 01:14:14', '2016-03-27 01:13:37'),
(4331, 3, 'kalemeth201638113347068', 0, NULL, '2016-03-27 01:13:37'),
(4332, 3, 'ka201653908493072', 0, NULL, '2016-03-27 06:24:43'),
(4333, 3, 'ka201618280861154', 0, NULL, '2016-03-27 06:24:43'),
(4334, 3, 'ka201663985731304', 0, NULL, '2016-03-27 06:24:43'),
(4335, 3, 'ka201666234757230', 0, NULL, '2016-03-27 06:24:43'),
(4336, 3, 'ka201629219015054', 0, NULL, '2016-03-27 06:24:43'),
(4337, 3, 'ka201640954017453', 0, NULL, '2016-03-27 06:24:43'),
(4338, 3, 'ka201620394747071', 0, NULL, '2016-03-27 06:24:43'),
(4339, 3, 'ka201648459271155', 0, NULL, '2016-03-27 06:24:43'),
(4340, 3, 'ka201669605358877', 0, NULL, '2016-03-27 06:24:43'),
(4341, 3, 'ka201646064974405', 0, NULL, '2016-03-27 06:24:43'),
(4342, 3, 'kal1073538860865', 0, NULL, '2016-03-27 06:26:24'),
(4343, 3, 'kal1067400728278', 0, NULL, '2016-03-27 06:26:24'),
(4344, 3, 'kal1019438492655', 0, NULL, '2016-03-27 06:26:24'),
(4345, 3, 'kal1018981127105', 0, NULL, '2016-03-27 06:26:24'),
(4346, 3, 'kal1022528712973', 0, NULL, '2016-03-27 06:26:24'),
(4347, 3, 'kal1083385131322', 0, NULL, '2016-03-27 06:26:24'),
(4348, 3, 'kal1065067997948', 0, NULL, '2016-03-27 06:26:24'),
(4349, 3, 'kal1042433615476', 1, '2016-03-27 06:29:23', '2016-03-27 06:26:24'),
(4350, 3, 'kal1042677015476', 1, '2016-03-27 06:28:32', '2016-03-27 06:26:24'),
(4351, 3, 'kal1023497209698', 0, NULL, '2016-03-27 06:26:24');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=184 ;

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
(182, 45, 4, 1, NULL, NULL),
(183, 49, 1, NULL, '2016-07-19 06:31:14', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(14, 47, 9, 0, '2016-01-19 03:44:08', '0000-00-00 00:00:00'),
(15, 3, 9, 0, '2016-05-24 01:59:39', '0000-00-00 00:00:00'),
(16, 49, 9, 0, '2016-07-19 06:36:40', '0000-00-00 00:00:00'),
(17, 1, 11, 0, '2016-07-24 15:50:14', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

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
(60, 46, 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_56978146e8d85.jpg', 1, '0000-00-00 00:00:00', '2016-01-14 11:06:46'),
(61, 47, 'Central Hospital', 'Central Hospital', 'uploads/hospitals/hospitals_578dd7dfb0685.jpg', 1, '0000-00-00 00:00:00', '2016-07-19 07:33:51');

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
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=576 ;

--
-- Dumping data for table `tbl_hospital_ratings`
--

INSERT INTO `tbl_hospital_ratings` (`id`, `id_hospital`, `id_rater`, `code`, `id_department`, `arrived_date`, `review`, `created_dt`, `is_recommended`, `is_published`) VALUES
(561, 3, 3, '', 1, '2016-03-25', '', '2016-01-01 08:09:14', 0, 1),
(562, 3, 3, '', 1, '2016-03-23', 'no comment', '2015-12-06 08:11:37', 1, 1),
(563, 3, 3, 'kalemeth201612528232783', 1, '2016-03-26', 'This hospital is not good', '2016-03-27 01:17:14', 0, 1),
(564, 3, 4, 'kalemeth201618267140984', 1, '2016-03-17', 'i do not like this hospital', '2016-03-27 01:42:28', 0, 1),
(565, 1, 3, '', 1, '2016-03-18', 'no', '2016-03-27 02:01:51', 0, 0),
(566, 1, 5, '', 1, '2007-07-11', 'This is comment', '2016-03-27 03:25:16', 1, 0),
(567, 41, 3, '', 1, '1993-02-08', 'I love it', '2016-03-27 03:49:37', 1, 0),
(568, 3, 6, 'kal1042677015476', 2, '2016-03-15', 'Cambodia ', '2016-03-27 06:28:32', 1, 1),
(569, 1, 6, '', 1, '2016-03-16', 'ថថ', '2016-03-27 06:39:37', 0, 0),
(570, 39, 7, '', 3, '0000-00-00', 'Good service', '2016-04-03 06:57:13', 1, 0),
(571, 42, 4, '', 3, '2016-04-05', 'i can rate', '2016-04-10 04:48:57', 0, 0),
(572, 40, 3, '', 1, '2016-04-18', 'abc', '2016-04-24 06:10:29', 1, 1),
(573, 40, 5, '', 1, '2016-04-14', 'kjhkjh', '2016-04-24 06:15:14', 1, 0),
(574, 45, 6, 'DA12513', 2, '2015-05-03', '', '2016-04-24 06:51:55', 1, 0),
(575, 39, 8, '', 1, '2016-05-26', 'Good', '2016-05-26 11:04:54', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1589 ;

--
-- Dumping data for table `tbl_hospital_rating_scores`
--

INSERT INTO `tbl_hospital_rating_scores` (`id`, `id_hospital_rating`, `id_question`, `score`) VALUES
(1521, 561, 1, 4),
(1522, 561, 2, 4),
(1523, 561, 3, 5),
(1524, 561, 4, 5),
(1525, 562, 1, 5),
(1526, 562, 2, 5),
(1527, 562, 3, 5),
(1528, 562, 4, 5),
(1529, 563, 1, 4),
(1530, 563, 2, 3),
(1531, 563, 3, 3),
(1532, 563, 4, 4),
(1533, 564, 1, 4),
(1534, 564, 2, 2),
(1535, 564, 3, 1),
(1536, 564, 4, 1),
(1537, 565, 1, 5),
(1538, 565, 2, 5),
(1539, 565, 3, 4),
(1540, 565, 4, 5),
(1541, 566, 1, 4),
(1542, 566, 2, 3),
(1543, 566, 3, 5),
(1544, 566, 4, 4),
(1545, 567, 1, 3),
(1546, 567, 2, 4),
(1547, 567, 3, 5),
(1548, 567, 4, 4),
(1549, 568, 1, 1),
(1550, 568, 2, 2),
(1551, 568, 3, 3),
(1552, 568, 4, 3),
(1553, 569, 1, 5),
(1554, 569, 2, 0),
(1555, 569, 3, 2),
(1556, 569, 4, 3),
(1557, 570, 1, 4),
(1558, 570, 2, 0),
(1559, 570, 3, 4),
(1560, 570, 4, 4),
(1561, 570, 5, 1),
(1562, 571, 1, 3),
(1563, 571, 2, 3),
(1564, 571, 3, 3),
(1565, 571, 4, 3),
(1566, 571, 5, 1),
(1567, 572, 1, 4),
(1568, 572, 2, 5),
(1569, 572, 3, 5),
(1570, 572, 4, 2),
(1571, 572, 5, 1),
(1572, 573, 1, 5),
(1573, 573, 2, 5),
(1574, 573, 3, 5),
(1575, 573, 4, 4),
(1576, 573, 5, 3),
(1577, 574, 1, 3),
(1578, 574, 2, 3),
(1579, 574, 3, 3),
(1580, 574, 4, 3),
(1581, 574, 5, 3),
(1582, 575, 1, 5),
(1583, 575, 2, 5),
(1584, 575, 3, 5),
(1585, 575, 4, 5),
(1586, 575, 5, 5),
(1587, 575, 6, 5),
(1588, 575, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_services`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(10) NOT NULL,
  `id_department` int(11) NOT NULL,
  `id_service` int(10) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_note` text NOT NULL,
  `kh_note` text NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`,`id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `tbl_hospital_services`
--

INSERT INTO `tbl_hospital_services` (`id`, `id_hospital`, `id_department`, `id_service`, `price`, `en_note`, `kh_note`, `is_published`, `created_dt`, `modified_dt`) VALUES
(71, 3, 1, 4, '12$', '', '', 1, '0000-00-00 00:00:00', '2016-04-09 19:17:17'),
(72, 3, 4, 10, '13$', 'k', 'l', 1, '0000-00-00 00:00:00', '2016-04-09 19:49:25'),
(73, 6, 0, 2, '43$', '', '', 1, '0000-00-00 00:00:00', '2016-07-14 07:51:53'),
(74, 42, 0, 1, '34$', '', '', 1, '0000-00-00 00:00:00', '2016-07-14 08:01:13'),
(75, 49, 183, 11, '10', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 06:31:39');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
(19, 45, 40, 0, '2016-02-26 06:48:02', '0000-00-00 00:00:00'),
(20, 49, 11, 0, '2016-07-19 06:32:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hospital_types`
--

CREATE TABLE IF NOT EXISTS `tbl_hospital_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital_category` int(10) unsigned DEFAULT '0',
  `en_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `kh_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_hospital_types`
--

INSERT INTO `tbl_hospital_types` (`id`, `id_hospital_category`, `en_name`, `kh_name`, `is_published`, `modified_dt`) VALUES
(7, 3, 'Type A', 'ប្រភេទ ក', 0, '0000-00-00 00:00:00'),
(8, 3, 'NGO Type B', 'NGO Type B', 0, '0000-00-00 00:00:00'),
(9, 8, 'NGO Type C', 'NGO Type C', 1, '0000-00-00 00:00:00'),
(10, 2, 'Laboratory', 'មន្ទីរពិសោធន៍', 1, '0000-00-00 00:00:00'),
(11, 2, 'Hospital', 'មន្ទីរពេទ្យ', 1, '0000-00-00 00:00:00'),
(12, 2, 'Clinic', 'គ្លីនិក', 1, '0000-00-00 00:00:00'),
(13, 1, 'Health Center ', 'មណ្ឌលសុខភាព', 1, '2016-07-07 08:32:33'),
(14, 1, 'Hospital', 'មន្ទីរពេទ្យ', 1, '0000-00-00 00:00:00'),
(15, 2, 'Sport Club', ' ក្លឹបកីឡា', 1, '2016-07-24 16:16:01');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=180 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `alais`, `en`, `kh`, `id_modifier`, `modified_dt`, `is_deleted`) VALUES
(1, 'hospital', 'Health Hub ', 'ស្ថាប័នសុខភាព', 0, '0000-00-00 00:00:00', 0),
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
(14, 'other_events', 'Other Events', 'សកម្មភាភផ្សេងទៀត', 1, '2015-08-17 00:00:00', 0),
(18, 'name', 'Name', 'ឈ្មោះ', 1, '2015-09-15 00:00:00', 0),
(19, 'news', 'News', 'ពត៌មាន', 1, '2015-09-15 00:00:00', 0),
(20, 'tips', 'Tips', 'គន្លឹះ', 1, '2015-09-15 00:00:00', 0),
(21, 'ngo', 'NGO', 'អង្គការមិនមែនរដ្ឋាភិបាល', 1, '2015-09-15 00:00:00', 0),
(22, 'new hospitals', 'News Hospitals', 'មន្ទីរពេទ្យព័ត៍មាន', 1, '2015-09-15 00:00:00', 0),
(23, 'new doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', 1, '0000-00-00 00:00:00', 0),
(24, 'latest news', 'Health Topics ', 'អត្ថបទសុខភាព', 1, '2016-01-04 00:00:00', 0),
(25, 'show all', 'Show All', 'បង្ហាញ​ទាំងអស់', 1, '2016-01-04 00:00:00', 0),
(26, 'health new & tips', 'Health New & Tips', 'សុខភាពគន្លឹះថ្មី', 1, '2016-01-13 00:00:00', 0),
(28, 'read more', 'Read More', 'អាន​បន្ថែម', 1, '2016-01-01 00:00:00', 0),
(29, 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', 1, '2016-01-20 00:00:00', 0),
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
(47, 'director', 'Specialization', 'ឯកទេស', 1, '2016-01-26 00:00:00', 0),
(48, 'type', 'Type', 'ប្រភេទ', 1, '2016-01-07 00:00:00', 0),
(49, 'address', 'Address  ', 'អាសយដ្ឋាន', 1, '2016-01-19 00:00:00', 0),
(50, 'open hour', 'Working Hour  ', 'ម៉ោងធ្វើការ', 1, '2016-01-06 00:00:00', 0),
(51, 'phone_number', 'Phone Number ', 'លេខទូរស័ព្ទ', 1, '2016-01-07 00:00:00', 0),
(52, 'email', 'Email  ', 'សារអេឡិចត្រូនិច', 1, '2016-01-07 00:00:00', 0),
(53, 'website', 'Website  ', 'វេបសាយ', 1, '2016-01-27 00:00:00', 0),
(54, 'drop your idea to this hospital', 'Drop your idea to this hospital', 'ទម្លាក់គំនិតរបស់អ្នកទៅកាន់មន្ទីរពេទ្យនេះ', 1, '2016-01-07 00:00:00', 0),
(55, 'background-hospital', 'Background', 'ប្រវត្តិរូប', 1, '2016-01-14 00:00:00', 0),
(56, 'if you wish to recive news update from our team, please subscribe', 'Please subscribe with us', 'Please subscribe with us', 1, '2016-01-01 00:00:00', 0),
(57, 'newsletter', 'Subscribe ', 'Subscribe ', 1, '2016-01-28 00:00:00', 0),
(58, 'subscribe', 'Subscribe', 'Subscribe', 1, '2016-01-06 00:00:00', 0),
(59, 'social media', 'Follow us on', 'Follow us on', 1, '2016-01-21 00:00:00', 0),
(60, 'faq', 'FAQ', 'FAQ', 1, '2016-01-07 00:00:00', 0),
(61, 'copyright 2015 krupet.com | all rights reserved', 'Copyright © 2016 Krupet.com | All Rights Reserved', 'Copyright © 2016 Krupet.com | All Rights Reserved', 1, '2016-01-27 00:00:00', 0),
(62, 'about-us', 'About Us', 'អំពី​​យើង', 1, '2016-01-01 00:00:00', 0),
(63, 'term', 'Term', 'លក្ខន្តិក', 1, '2016-01-13 00:00:00', 0),
(65, 'pediatric clinic', 'Pediatric Clinic', 'គ្លីនិកកុមារ', 1, '2016-01-24 00:00:00', 0),
(66, 'health hub', 'Health Hub', 'ស្ថាប័នសុខភាព', 1, '2016-01-01 00:00:00', 0),
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
(81, 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', 1, '2016-01-18 00:00:00', 0),
(82, 'view detail', 'View Detail', 'លម្អិត', 1, '2016-01-27 00:00:00', 0),
(84, 'how you satify with the service prodied?', 'How you satify with the service prodied?', 'របៀបដែលអ្នក satify មួយនឹងសេវានេះ prodied?', 1, '2016-01-15 00:00:00', 0),
(85, 'not satify', 'Not Satify', 'មិនពេញចិត្ត', 1, '2016-01-27 00:00:00', 0),
(86, 'fair', 'Fair', 'ពិព័រណ៍', 1, '2016-01-14 00:00:00', 0),
(87, 'good', 'Good', 'ល្អ', 1, '2016-01-31 00:00:00', 0),
(88, 'quantity', 'Quantity', 'បរិមាណដែលត្រូវទទួលទាន', 1, '2016-01-25 00:00:00', 0),
(89, 'submit', 'Submit', 'ដាក់ស្នើ', 1, '2016-01-31 00:00:00', 0),
(90, 'service', 'Services', 'សេវា', 1, '2016-01-25 00:00:00', 0),
(91, 'galleries', 'Galleries', 'រូបភាព', 1, '2016-01-28 00:00:00', 0),
(92, 'home', 'Home', 'ទំព័រដើម', 1, '2016-01-12 00:00:00', 0),
(94, 'service-&-price', 'Service & Price', 'Service & Price', 1, '0000-00-00 00:00:00', 0),
(95, 'featured-doctors', 'Featured Doctors', 'Featured Doctors', 1, '0000-00-00 00:00:00', 0),
(96, 'contact-us', 'Contact Us', 'ទំនាក់ទំនង', 1, '0000-00-00 00:00:00', 0),
(97, 'career', 'Career', 'អាជីព', 1, '0000-00-00 00:00:00', 0),
(98, 'type', 'Type', 'Type', 1, '0000-00-00 00:00:00', 0),
(101, 'type-a-specification', 'Type A Specification', 'Type A Specification', 1, '0000-00-00 00:00:00', 0),
(102, 'place-a-keyword-here', 'Place A Keyword Here', 'សូមវាយបញ្ចូលពាក្យទីនេះ', 1, '0000-00-00 00:00:00', 0),
(103, 'what-do-you-want-to-find-?', 'What Do You Want To Find?', 'What Do You Want To Find?', 1, '0000-00-00 00:00:00', 0),
(104, 'what-is-your-illness-?', 'What is your illness?', 'What is your illness?', 1, '0000-00-00 00:00:00', 0),
(105, 'doctors', 'Doctors', 'Doctors', 1, '0000-00-00 00:00:00', 0),
(106, 'facebook-like', 'Please Like Us', 'Please Like Us', 1, '0000-00-00 00:00:00', 0),
(107, 'xxxxx', 'Background', 'ប្រវត្តិរូប', 1, '0000-00-00 00:00:00', 0),
(108, 'partners', 'Partners', 'partners', 1, '0000-00-00 00:00:00', 0),
(109, 'department', 'Department', 'ដេបាតម៉ង', 1, '0000-00-00 00:00:00', 0),
(110, 'pharmacy', 'Pharmacy', 'ឱសថស្ថាន', 1, '0000-00-00 00:00:00', 0),
(111, 'map', 'Map', 'ផែនទី', 1, '0000-00-00 00:00:00', 0),
(112, 'drop-your-idea', 'Health Hub Reviews ', 'ការស្ទង់មតិលេីស្ថាប័នសុខភាព', 1, '0000-00-00 00:00:00', 0),
(113, 'pharmacy-profile', 'Pharmacy''s Profile', 'Pharmacy''s Profile', 1, '0000-00-00 00:00:00', 0),
(114, 'tip-detail', 'Tip Detail', 'គន្លឹះសុខភាពលំអិត', 1, '0000-00-00 00:00:00', 0),
(115, 'news-detail', 'News Detail', 'ព័ត៍មានលំអិត', 1, '0000-00-00 00:00:00', 0),
(116, 'health-consultant', 'Health Consultant', 'ទីប្រឹក្សាសុខភាព', 1, '0000-00-00 00:00:00', 0),
(117, 'hospital-rating', 'Hospital Rating', 'ការវាយតម្លៃមន្ទីរពេទ្យ', 1, '0000-00-00 00:00:00', 0),
(118, 'urgent', 'Hotlines ', 'Hotlines ', 1, '0000-00-00 00:00:00', 0),
(119, 'p-partner', 'POTENTIAL PARTNERS', 'POTENTIAL PARTNERS', 1, '0000-00-00 00:00:00', 0),
(120, 'o-partner', 'OFFICIAL SPONSORS ', 'OFFICIAL SPONSORS ', 1, '0000-00-00 00:00:00', 0),
(121, 'drop_ideas', 'Please select a hospital to be rated', 'សូមជ្រើសរើសមន្ទីរពេទ្យមួយដើម្បីវាយតម្លៃ', 1, '0000-00-00 00:00:00', 0),
(122, 'what_patients_say_about_this_hospital', 'What_patients say about this hospital', 'មតិរបស់អ្នកជម្ងឺ', 1, '0000-00-00 00:00:00', 0),
(123, 'search_by_map', 'Search By map', 'ស្វែរកតាមរយះផែនទី', 1, '0000-00-00 00:00:00', 0),
(125, 'view_as_search_result', 'View As Search Result', 'បង្ហាញពត៌មានជាក់លាក់', 1, '0000-00-00 00:00:00', 0),
(126, 'search', 'Search', 'ស្វែងរក', 1, '0000-00-00 00:00:00', 0),
(127, 'weight', 'Weight', 'ទម្ងន់', 1, '0000-00-00 00:00:00', 0),
(128, 'place_of_living', 'Place Of Living ', 'ទីកន្លែងរស់នៅ', 1, '0000-00-00 00:00:00', 0),
(129, 'tell_your_symtom', 'Tell your symtom', 'រៀបរាប់អំពីរោគសញ្ញារបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(130, 'age', 'Age', 'អាយុ', 1, '0000-00-00 00:00:00', 0),
(131, 'your_information', 'Your information', 'ពត៌មានរបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(132, 'pharmacies_can_be_searched', '', '', 1, '0000-00-00 00:00:00', 0),
(133, 'we_found_doctors', 'WE FOUND 234 DOCTORS', 'យើងបានរក234វិជ្ជបណ្ឌិត', 1, '0000-00-00 00:00:00', 0),
(134, 'view_on_map', 'View on map', 'បង្ហាញលើផែនទី', 1, '0000-00-00 00:00:00', 0),
(135, 'no_data', 'There is no data avaiable for this search', 'ពុំមានទន្និយដែលនឹងត្រូវបង្ហាញ', 1, '0000-00-00 00:00:00', 0),
(136, 'hospital_information', 'Hospital information', 'ពត៌មានមន្ទីពេទ្រ', 1, '0000-00-00 00:00:00', 0),
(137, 'when_did_you_go_there', 'When did you go there', 'តើអ្នកទៅទីនោះពេលណា', 1, '0000-00-00 00:00:00', 0),
(138, 'your_code', 'Your Code', 'លេខកូដរបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(139, 'your_rating_optional', 'Your rating optional', 'ការដាក់ពិន្ទុរបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(140, 'recommendation', 'recommendation', 'ការផ្ដល់មតិ', 1, '0000-00-00 00:00:00', 0),
(141, 'your_review', 'Your Review', 'ការពិនិត្យរបស់អ្នក', 1, '0000-00-00 00:00:00', 0),
(142, 'your_opinion', 'Give your opinion', 'បង្ងាញអារម្មណ៏របស់អ្នកនៅទីនេះ', 1, '0000-00-00 00:00:00', 0),
(143, 'max_charators', 'Max 100 charators', 'ចំនួនពាក្យអតិបរមា', 1, '0000-00-00 00:00:00', 0),
(144, 'hospital_name', 'Hospital Name', 'ឈ្មោះមន្ទិពេទ្យ', 1, '0000-00-00 00:00:00', 0),
(145, 'remcommend_to', 'Do you want to recommen? ', 'Do you want to recommen? ', 1, '0000-00-00 00:00:00', 0),
(146, 'how_likely_are_you_to_recommend', 'How like you recommend?', 'How like you recommend?', 1, '0000-00-00 00:00:00', 0),
(149, 'no_comment_to_be_shown', 'No comment to be shown', 'មិនមានcommentត្រូវបង្ហាញ', 1, '0000-00-00 00:00:00', 0),
(150, '404', '404', '៤០៤', 1, '0000-00-00 00:00:00', 0),
(151, 'page-not-found', 'Page Not Found!', 'មិនមានទំព័រនេះទេ!', 1, '0000-00-00 00:00:00', 0),
(152, 'application-submission', 'Your application request is being process! Please be patient.', 'សំណើរបស់កម្មវិធីរបស់អ្នកត្រូវបានកំពុងដំណើរការ! សូម​អត់ធ្មត់។', 1, '0000-00-00 00:00:00', 0),
(153, 'ok', 'OK', 'យល់ព្រម', 1, '0000-00-00 00:00:00', 0),
(154, 'information', 'Information', 'Information', 1, '0000-00-00 00:00:00', 0),
(155, 'rating-requirment', 'Hospital Rating Requiremen', 'តម្រូវការវាយតម្លៃមន្ទីរពេទ្យ', 1, '0000-00-00 00:00:00', 0),
(156, 'rating-instruction', 'To rate our hospital, we primary need your facebook verification. The information we need are your n', 'ដើម្បីវាយតម្លៃមន្ទីរពេទ្យរបស់អ្នក, Wi ត្រូវការផ្ទៀងផ្ទាត់បឋមហ្វេសប៊ុករបស់អ្នក។ ពដែលយើងត្រូវការគឺជាឈ្', 1, '0000-00-00 00:00:00', 0),
(157, 'rate-with-fb', 'Rate with Facebook', 'ការវាយតម្លៃដោយប្រើហ្វេសប៊ុក', 1, '0000-00-00 00:00:00', 0),
(158, 'cancel', 'Cancel', 'បោះបង់', 1, '0000-00-00 00:00:00', 0),
(159, 'very-bad', 'Very Bad', 'អាក្រក់​ណាស់', 1, '0000-00-00 00:00:00', 0),
(160, 'bad', 'Bad', 'អាក្រក់', 1, '0000-00-00 00:00:00', 0),
(161, 'fair', 'Fair', 'មធ្យម', 1, '0000-00-00 00:00:00', 0),
(162, 'good', 'Good', 'ល្អ', 1, '0000-00-00 00:00:00', 0),
(163, 'very-good', 'Very Good', 'ល្អ​ណាស់', 1, '0000-00-00 00:00:00', 0),
(164, 'enter-arrived-date', 'Please enter the date you arrived or left the hospital.', 'សូមបញ្ចូលកាលបរិច្ឆេទដែលអ្នកបានមកដល់ឬចាកចេញពីមន្ទីរពេទ្យ។', 1, '0000-00-00 00:00:00', 0),
(165, 'enter-your-code', 'Please enter your code.', 'សូមបញ្ចូលលេខកូដរបស់អ្នក។', 1, '0000-00-00 00:00:00', 0),
(166, 'feedback-requirment', 'Requirement', 'តម្រូវការ', 1, '0000-00-00 00:00:00', 0),
(167, 'feedback-rating-instruction', 'We would like to know who you are in order to geve up feedback. ', 'យើងចង់ដឹងថាអ្នកជានរណានៅក្នុងគោលបំណងដើម្បីផ្តល់ឱ្យឡើងមតិអ្នកប្រើ។', 1, '0000-00-00 00:00:00', 0),
(168, 'need-your-feedback', 'We value your FEEDBACK. Please help us improved!', 'We value your FEEDBACK. Please help us improved!', 1, '0000-00-00 00:00:00', 0),
(169, 'give-feedback', 'Give Feedback', 'សូមផ្តល់មតិ', 1, '0000-00-00 00:00:00', 0),
(170, 'select-distrit', 'Select District/Khan', 'ជ្រើសរើសស្រុក/ខណ្ឌ', 1, '0000-00-00 00:00:00', 0),
(171, 'select-specification', 'Select Specification', 'ជ្រើសរើសជំនាញ', 1, '0000-00-00 00:00:00', 0),
(172, 'hospital_can_be_searched', '', '', 1, '0000-00-00 00:00:00', 0),
(173, 'doctors_can_be_searched', '', '', 1, '0000-00-00 00:00:00', 0),
(174, 'select-province', 'Select Province/City', 'ជ្រើសរើសខេត្ត/ក្រុង', 1, '0000-00-00 00:00:00', 0),
(175, 'blog', 'Blog', 'ពត៍មាន', 1, '0000-00-00 00:00:00', 0),
(176, 'blog-detail', 'Blog Detail', 'ពត៏មានលម្អិត', 1, '0000-00-00 00:00:00', 0),
(177, 'videos', 'Videos', 'វីដីអូរ', 1, '0000-00-00 00:00:00', 0),
(178, 'video-detail', 'Video Detail ', 'វីឌីអូលំអិត', 1, '0000-00-00 00:00:00', 0),
(179, 'blog-caption', 'Sorry! There is not data to be shown here.', 'សុំទោស! មិនមានទិន្នន័យដែលនឹងត្រូវបង្ហាញនៅទីនេះ។', 1, '0000-00-00 00:00:00', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=242 ;

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
(12, 1, 12, 0, '0000-00-00 00:00:00'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_newsletters`
--

INSERT INTO `tbl_newsletters` (`id`, `name`, `created_dt`, `is_sent`, `sent_dt`) VALUES
(1, 'asd', '0000-00-00 00:00:00', 0, '2016-03-30 18:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_blogs`
--

CREATE TABLE IF NOT EXISTS `tbl_newsletter_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `id_newsletter` int(10) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_newsletter_blogs`
--

INSERT INTO `tbl_newsletter_blogs` (`id`, `id_blog`, `id_newsletter`, `created_dt`) VALUES
(1, 1, 1, '0000-00-00 00:00:00'),
(2, 2, 1, '0000-00-00 00:00:00'),
(3, 12, 1, '2016-04-01 15:15:57'),
(4, 30, 1, '2016-04-01 15:26:34');

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
(22, 'hospital-rating', 'Hospital Rating', 'uploads/banners/banner_56a64fd3475f1.jpg', 1, '2016-03-26 01:44:26');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_partners`
--

INSERT INTO `tbl_partners` (`id`, `type`, `name`, `url`, `description`, `image`, `is_published`, `modified_dt`, `created_dt`, `data_order`) VALUES
(15, 1, 'sa', 'asdf', 'a', 'uploads/partners/partner_56f7ab5fc52f7.jpg', 1, '2016-03-27 09:43:59', '0000-00-00 00:00:00', 0),
(9, 1, 'asd', 'a.c', 'aa', 'uploads/partners/partner_56cac01faf243.jpg', 0, '2016-02-22 09:00:31', '0000-00-00 00:00:00', 1),
(10, 2, 'ssa', 'a.c', 'aaa', 'uploads/partners/partner_56cb10ec01a39.jpg', 0, '2016-02-22 14:45:16', '0000-00-00 00:00:00', 0),
(11, 1, 'Sat', 'Sat', 'Sathya', 'uploads/partners/partner_56cc489a41935.jpg', 0, '2016-02-23 12:55:06', '0000-00-00 00:00:00', 0),
(12, 1, 'ty', 'ty', 'sa', 'uploads/partners/partner_56cc48ae2fa90.jpg', 0, '2016-02-23 12:55:26', '0000-00-00 00:00:00', 0),
(13, 2, 'Da', 'Da', 'Re', 'uploads/partners/partner_56cc48cf30f02.jpg', 0, '2016-02-23 12:55:59', '0000-00-00 00:00:00', 0),
(14, 2, 'Rahaya', 'Rahya', 'DDAA', 'uploads/partners/partner_56cc490ac254d.jpg', 0, '2016-02-23 12:56:58', '0000-00-00 00:00:00', 0),
(16, 2, '1', '1', '1', 'uploads/partners/partner_56f786d6424d0.jpg', 1, '2016-03-27 07:08:06', '0000-00-00 00:00:00', 0),
(17, 2, '1', '1', '1', 'uploads/partners/partner_56fd07a723ea1.jpg', 1, '2016-03-31 11:19:03', '0000-00-00 00:00:00', 0),
(18, 1, '1', '1', '1', 'uploads/partners/partner_56ff4253e9aca.jpg', 1, '2016-04-02 03:53:55', '0000-00-00 00:00:00', 0),
(19, 2, '2', '2', '2', 'uploads/partners/partner_56ff426db9759.jpg', 1, '2016-04-02 03:54:21', '0000-00-00 00:00:00', 0),
(20, 2, 'w', 'w', 'w', 'uploads/partners/partner_56ff429bdddfd.jpg', 1, '2016-04-02 03:55:07', '0000-00-00 00:00:00', 0);

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
(2, 5, 2, 171, 'police Ruessey Kev', 'police Ruessey Kev', '097 778 0029', 1, '2016-03-18 05:55:33', '0000-00-00 00:00:00', 0),
(3, 5, 2, 168, 'police Tuol Kouk', 'police Tuol Kouk', '097 778 0028', 1, '2016-03-18 05:53:28', '0000-00-00 00:00:00', 0),
(4, 5, 2, 171, 'Police Roeusy Keo', 'Police Roeusy Keo', '0977780030', 1, '2016-03-18 03:43:20', '0000-00-00 00:00:00', 0),
(5, 5, 2, 167, '7 Makara', '7 Makara', '097 778 0027', 1, '2016-03-18 03:44:34', '0000-00-00 00:00:00', 0),
(6, 5, 2, 3, 'Police Doun Penh', 'Police Doun Penh', '012 999 999', 1, '2016-03-18 03:47:25', '0000-00-00 00:00:00', 0),
(7, 5, 2, 169, 'Police Dangkao', 'Police Dangkao', '097 778 0030', 1, '2016-03-18 05:56:45', '0000-00-00 00:00:00', 0),
(8, 7, 2, 165, 'Police Chamkar Mon', 'Police Chamkar Mon', '097 778 0031', 1, '2016-03-18 05:57:36', '0000-00-00 00:00:00', 0),
(9, 5, 2, 4, 'Police Sen sok', 'Police Sen sok ', '097 778 0033', 1, '2016-03-18 05:58:29', '0000-00-00 00:00:00', 0),
(10, 6, 2, 2, 'Health service Tek Thla', 'Health service Tek Thla', '012 587 344 / 012 718 324', 1, '2016-03-18 06:02:04', '0000-00-00 00:00:00', 0),
(11, 6, 2, 166, 'Health service Doun Pemh ', 'Health service Doun Penh', '012 788 430 / 011 770 786', 1, '2016-03-18 06:03:57', '0000-00-00 00:00:00', 0),
(12, 6, 2, 165, 'Health service Chamkar Mon', 'Health service Chamkar Mon', '012 830 271 / 012 838 619', 1, '2016-03-18 06:05:18', '0000-00-00 00:00:00', 0),
(13, 6, 2, 172, 'Health service cambodai''s hope', 'Health service cambodai''s hope', '023 986 715 / 012 844 449 / 011 657 148', 0, '2016-03-18 06:12:54', '0000-00-00 00:00:00', 0),
(14, 7, 2, 169, 'Krupet', 'Krupet', '017 567 099', 1, '2016-04-03 08:03:07', '0000-00-00 00:00:00', 1),
(15, 7, 2, 167, 'Krupet', 'Krupet', '017 567 099', 1, '2016-04-03 08:02:37', '0000-00-00 00:00:00', 1),
(16, 7, 2, 171, 'Krupet', 'Krupet', '017 567 099', 1, '2016-04-03 08:02:06', '0000-00-00 00:00:00', 1),
(17, 7, 2, 4, 'Krupet', 'Krupet', '<br>111111111111111', 1, '2016-06-30 08:33:20', '0000-00-00 00:00:00', 1);

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
(3, 'Hospital', 'Hospital', 0, '0000-00-00 00:00:00', '2016-03-31 08:16:35'),
(4, 'Fire Fighter', 'Fire Fighter', 1, '0000-00-00 00:00:00', '2016-03-18 03:36:50'),
(5, 'Traffic Police', 'Traffic Police', 1, '0000-00-00 00:00:00', '2016-03-18 03:37:22'),
(6, 'Health Service', 'Health Service', 0, '0000-00-00 00:00:00', '2016-03-31 08:15:28'),
(7, 'NGOs', 'NGOs', 1, '0000-00-00 00:00:00', '2016-03-31 10:04:22');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_programes`
--

INSERT INTO `tbl_programes` (`id`, `en_name`, `kh_name`, `url`, `image`, `is_published`, `modified_dt`, `data_order`, `created_dt`) VALUES
(4, 'a', 'b', 'https://www.facebook.com/Krupetcom-137344823272389/?fref=ts', 'uploads/programes/programes_578df91fa94dc.jpg', 1, '2016-07-19 09:55:43', 5, '0000-00-00 00:00:00'),
(5, 'x', 'x', 'https://www.facebook.com/Krupetcom-137344823272389/?fref=ts', 'uploads/programes/programe_56f7a32964157.jpg', 0, '2016-04-02 04:03:11', 3, '0000-00-00 00:00:00'),
(7, 'a', 'a', 'a', 'uploads/programes/programe_572081ae0e0a7.jpg', 0, '2016-04-27 09:09:02', 2, '0000-00-00 00:00:00'),
(8, 'a', 'a', '#', 'uploads/programes/programes_5787aced78665.jpg', 0, '2016-07-14 15:17:01', 0, '0000-00-00 00:00:00');

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
(1, 'kratie', 'Kratie', 'ក្រចេះ', 'adslfj', 'asdfas', 1, '0000-00-00 00:00:00', '2016-07-19 06:51:47', 0, 0),
(2, 'phnom penh', 'Phnom Penh', 'ភ្នំពេញ', '', '', 1, '2015-12-23 01:37:18', '2015-12-22 01:37:24', 0, 0),
(3, '', 'Banteay Meanchey', 'បន្ទាយមានជ័យ', 'asr', 'a', 0, '0000-00-00 00:00:00', '2015-12-27 17:58:12', 0, 0),
(4, '', 'Battambang', 'បាត់ដំបង', 'a', 'a', 1, '0000-00-00 00:00:00', '2015-12-27 17:58:43', 0, 0),
(5, '', 'Kampong Cham', 'ខេត្តកំពង់ចាម', 'df', 'd', 0, '0000-00-00 00:00:00', '2015-12-27 17:59:07', 0, 0),
(6, '', 'Kampong Chhnang', 'កំពង់ឆ្នាំង', 'a', 'd', 0, '0000-00-00 00:00:00', '2015-12-27 17:59:35', 0, 0),
(7, '', 'Kampong Speu', 'កំពង់ស្ពឺ', 'a', 'za', 0, '0000-00-00 00:00:00', '2015-12-27 18:00:01', 0, 0),
(8, '', 'Kampong Thom', 'កំពង់ធំ', 'a', 's', 0, '0000-00-00 00:00:00', '2015-12-27 18:00:24', 0, 0),
(9, '', 'Kampot', 'កំពត', 'q', 'q', 0, '0000-00-00 00:00:00', '2015-12-27 18:00:55', 0, 0),
(10, '', 'Kandal', 'កណ្តាល', '1', '1', 1, '0000-00-00 00:00:00', '2015-12-27 18:01:22', 0, 0),
(11, '', 'Koh Kong', 'កោះកុង', 'q', 'w', 0, '0000-00-00 00:00:00', '2015-12-27 18:01:47', 0, 0),
(12, '', 'Mondul Kiri', 'មណ្ឌលគិរី', 'e', 'e', 0, '0000-00-00 00:00:00', '2015-12-27 18:02:13', 0, 0),
(13, '', 'Ouddar Meanchey', 'ឧត្តរមានជ័យ', '1', '2', 0, '0000-00-00 00:00:00', '2015-12-27 18:02:40', 0, 0),
(14, '', 'Preah Vihear', 'ព្រះវិហារ', '33', '3', 0, '0000-00-00 00:00:00', '2015-12-27 18:03:03', 0, 0),
(15, '', 'Prey Veng', 'ព្រៃវែង', 'v', 'v', 0, '0000-00-00 00:00:00', '2015-12-27 18:03:28', 0, 0),
(16, '', 'Pursat', 'ពោធិសាត់', 'Pursat', 'Pursat', 0, '0000-00-00 00:00:00', '2015-12-27 18:03:54', 0, 0),
(17, '', 'Ratanak Kiri', 'រតនគិរី', 'Ratanak Kiri', 'Ratanak Kiri', 0, '0000-00-00 00:00:00', '2015-12-27 18:04:17', 0, 0),
(18, '', 'Siem Reap', 'សៀមរាប', 'Siem Reap', 'Siem Reap', 1, '0000-00-00 00:00:00', '2015-12-27 18:04:44', 0, 0),
(19, '', 'Stung Treng', 'ស្ទឹងត្រែង', 'Stung Treng', 'Stung TrengStung Treng', 0, '0000-00-00 00:00:00', '2015-12-27 18:05:04', 0, 0),
(20, '', 'Svay Rieng', 'ស្វាយរៀង', 'Svay Rieng', 'Svay Rieng', 0, '0000-00-00 00:00:00', '2015-12-27 18:05:25', 0, 0),
(21, '', 'Takeo', 'តាកែវ', 'Takeo', 'Takeo', 0, '0000-00-00 00:00:00', '2016-02-25 09:45:20', 1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_raters`
--

INSERT INTO `tbl_raters` (`id`, `name`, `email`, `fb_id`, `profile`, `created_dt`, `gender`) VALUES
(3, 'Khouch Koeun', 'koeun_math@yahoo.com', '791351847636392', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlf1/v/t1.0-1/p50x50/94403…f8cb5f0b8e&oe=579281EB&__gda__=1467679386_682267c1515838b5f11ce927b1591cb4', '2016-03-24 05:51:11', ''),
(4, 'ToNon Oscar', 'sathyayoeun02@gmail.com', '491470497703747', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xta1/v/t1.0-1/p50x50/12249914_455992864584844_1517971928018909765_n.jpg?oh=e09756e66fdd4942c2a23cb4365c7e32&oe=577661AA&__gda__=1468975195_36fd7aa26ed88e90587dd3d7c7854f95', '2016-03-27 01:42:28', ''),
(5, 'Khun Seiha', 'seihakhun@gmail.com', '927957360586203', 'https://z-1-scontent.xx.fbcdn.net/hprofile-xtf1/v/t1.0-1/c8.0.50.50/p50x50/11270115_788101901238417_3813073539244436306_n.jpg?oh=fcf8c7de8a3d99058823aaef6757be21&oe=5779F527', '2016-03-27 03:25:16', ''),
(6, 'Tekly Sun', 'teklysun2222@gmail.com', '911315755655809', 'https://scontent.xx.fbcdn.net/hprofile-xtf1/v/t1.0-1/p50x50/936642_860490374071681_7526942316143763640_n.jpg?oh=20c6f34e88a6c719825cb4aea4a86802&oe=577628DA', '2016-03-27 06:28:32', ''),
(7, 'Sun Heng', 'sunhengim@gmail.com', '1109984822392392', 'https://scontent.xx.fbcdn.net/hprofile-xft1/v/t1.0-1/p50x50/1457601_1054735211250687_8943890589979703317_n.jpg?oh=83f3354538e2648122a0896527018340&oe=5772D154', '2016-04-03 06:57:13', ''),
(8, 'Kim Dean', 'kakoikim@gmail.com', '889625961149142', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13179399_883167421794996_6100331939937495549_n.jpg?oh=74bd770a190a6a56a0f01f5c69f42cd6&oe=57C63D22', '2016-05-26 11:04:54', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_servay_questions`
--

INSERT INTO `tbl_servay_questions` (`id`, `type`, `en_name`, `kh_name`, `en_question`, `kh_question`, `is_published`, `created_dt`, `modified_dt`) VALUES
(1, 1, 'Cleanliness ', 'អនាម័យ', 'How satisfied are you with the cleanliness of the area you were treated in?', 'How satisfied are you with the cleanliness of the area you were treated in?', 1, '0000-00-00 00:00:00', '2016-03-31 09:09:52'),
(2, 1, 'Staff Co-operation  ', 'Staff Co-operation  ', 'How satisfied are you that the hospital staff worked well together?', 'How satisfied are you that the hospital staff worked well together?', 1, '0000-00-00 00:00:00', '2016-03-31 09:11:18'),
(3, 1, 'Dignity & Respect ', 'សេចក្តីថ្លៃថ្នូរ និង ការគោរព', 'How satisfied are you that you were treated with dignity and respect by the staff?', 'How satisfied are you that you were treated with dignity and respect by the staff?', 1, '0000-00-00 00:00:00', '2016-03-31 09:12:32'),
(4, 1, 'Doctor Professionalism   ', 'វិជ្ជាជីវៈ', 'How satisfied are you that professionalism that you receive from doctor?', 'How satisfied are you that professionalism that you receive from doctor?', 1, '0000-00-00 00:00:00', '2016-03-31 09:13:53'),
(5, 1, 'Fee', 'ថ្លៃសេវា', 'How satisfied are you the fee charged from hospital ?', 'How satisfied are you the fee charged from hospital ?', 1, '0000-00-00 00:00:00', '2016-03-31 09:14:44'),
(6, 1, 'Waiting Time', 'Waiting Time', 'How satisfied are you with waiting time?', 'How satisfied are you with waiting time?', 1, '0000-00-00 00:00:00', '2016-04-24 08:16:10'),
(7, 1, 'Doctor Explanation ', 'Doctor Explanation ', 'How understandable are you with explanation? ', 'How understandable are you with explanation? ', 1, '0000-00-00 00:00:00', '2016-04-24 08:24:10');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `id_service_category`, `en_name`, `kh_name`, `en_description`, `kh_description`, `is_published`, `created_dt`, `modified_dt`) VALUES
(4, 2, 'Cardiology ', 'Cardiology ', '123', '123', 1, '0000-00-00 00:00:00', '2016-02-05 14:27:52'),
(5, 0, 'Emergency Ambulance', 'Emergency Ambulance', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:11:11'),
(7, 0, 'Gastroenterology', 'Gastroenterology', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:12:15'),
(8, 0, 'General & Internal Medicine', 'General & Internal Medicine', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:12:44'),
(9, 0, 'General Surgery', 'General Surgery', '123', '123', 1, '0000-00-00 00:00:00', '2016-01-14 10:13:08'),
(10, 2, 'Ear, Nose and Throat', 'Ear, Nose and Throat', '123', '123', 1, '0000-00-00 00:00:00', '2016-02-05 14:24:39'),
(11, 2, 'Dental Services', 'សេវាកម្មមាត់ធ្មេញ', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:57:08'),
(12, 1, 'Endodontics Dentistry ', 'ព្យាបាលរន្ធឬសធ្មេញ', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:58:02'),
(13, 1, 'Implantology ', 'ដាំបង្គោលធ្មេញ', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:58:39'),
(14, 1, 'Oral Surgery ', 'ការវះកាត់មាត់', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:59:11'),
(15, 1, 'Orthodontic', 'Orthodontic', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:59:30'),
(16, 1, 'Partial Denture', 'Partial Denture', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 05:59:54'),
(17, 1, 'Periodontics ', 'បញ្ហារាក់ស៊ីធ្មេញ', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 06:00:43'),
(18, 1, 'Prosthodontic Dentistry', 'Prosthodontic Dentistry', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 06:01:09'),
(19, 1, 'Restoration Dentistry', 'Restoration Dentistry', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 06:01:32'),
(20, 1, 'X-ray', 'X-ray', '', '', 1, '0000-00-00 00:00:00', '2016-07-19 06:02:04');

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
(1, 'Anesthesia and Urgency Medicine', 'ឯកទេសប្រពោធនកម្ម ថ្មាំសណ្តំ និងសង្គ្រោះបន្ទាន់', '', '', 1, '2015-12-15 08:11:19', '2016-07-20 16:01:50'),
(3, 'Cardiology', 'ឯកទេសជំងឺបេះដូង', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:02:29'),
(4, 'Dermatology', 'ឯកទេសជំងឺសើស្បែក', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:03:06'),
(5, 'Endocrinology', 'ឯកទេសជំងឺក្រពេញ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:04:02'),
(6, 'ENT ( Ear Nose Throat )', 'ឯកទេសត្រចៀក ច្រមុះ បំពង់ក', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:04:38'),
(7, 'Gastro-Entero-Hepatology', 'ឯកទេសជំងឺក្រពះ ពោះវៀន ថ្លើម', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:05:11'),
(8, 'General Surgery and Digestive', 'ឯកទេសសល្យសាស្រ្តទូទៅ និង ប្រព័ន្ធរំលាយអាហារ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:05:43'),
(9, 'Gynecology and Obstetric', 'ឯកទេសសម្ភព និង រោគស្រ្តី', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:06:18'),
(10, 'Neuro Surgery', 'ឯកទេសសល្យសាស្រ្តប្រព័ន្ធប្រសាទ [ វះកាត់ប្រព័ន្ធប្រសាទ ]', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:07:02'),
(11, 'Oncology', 'ឯកទេសជំងឺមហារីក', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:08:01'),
(12, 'Ophthalmology', 'ឯកទេសចក្ខុរោគ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:09:00'),
(13, 'Pediatric	', 'ឯកទេសជំងឺរោគកុមារ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:09:41'),
(14, 'Pediatric Surgery	', 'ឯកទេសសល្យសាស្ត្រកុមារ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:10:12'),
(15, 'Plastic Surgery	', 'ឯកទេសសោភ័ណសល្យសាស្រ្ត', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:10:42'),
(16, 'Pneumology	', 'ឯកទេសជំងឺសួត', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:11:17'),
(17, 'Psychiatric	', 'ឯកទេសជំងឺវិកលវិទ្យា', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:11:51'),
(18, 'Radiology	', 'ឯកទេសវិទ្យុសាស្រ្ត និង រូបភាពសាស្រ្ត', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:12:22'),
(19, 'Traumatology and Orthopedic Surgery	', 'ឯកទេសសល្យសា្រស្តជំងឺឆ្អឹង និង បាក់បែក', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:12:54'),
(20, 'Uro Surgery	', 'ឯកទេសសល្យសាស្ត្រប្រព័ន្ធម៉ូត្រសាស្ត្រ [ តំរងនោម ]', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:13:31'),
(21, 'Urology	', 'ឯកទេសប្រព័ន្ធម៉ូត្រសាស្ត្រ [ តំរងនោម ]', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:13:56'),
(22, 'Internal Medicine	', 'ឯកទេសជំងឺវេជ្ជសាស្រ្តទូទៅ', '', '', 1, '0000-00-00 00:00:00', '2016-07-20 16:14:29'),
(23, 'Hepatologist', 'Hepatologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:09:07'),
(24, 'Hospitalist', 'Hospitalist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:09:24'),
(25, 'Hospice and palliative medicine specialist', 'Hospice and palliative medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:00'),
(26, 'Hyperbaric physician', 'Hyperbaric physician', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:11'),
(27, 'Infectious disease specialist', 'Infectious disease specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:34'),
(28, 'Internist', 'Internist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:10:52'),
(29, 'Interventional cardiologist', 'Interventional cardiologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:11:16'),
(30, 'Medical examiner', 'Medical examiner', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:12:33'),
(31, 'Medical geneticist', 'Medical geneticist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:13:59'),
(32, 'Neonatologist', 'Neonatologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:15:06'),
(33, 'Nephrologist', 'Nephrologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:15:38'),
(34, 'Neurological surgeon', 'Neurological surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:15:51'),
(35, 'Neurologist', 'Neurologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:16:13'),
(36, 'Nuclear medicine specialist', 'Nuclear medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:16:32'),
(37, 'Obstetrician', 'Obstetrician', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:16:55'),
(38, 'Occupational medicine specialist', 'Occupational medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:17:14'),
(39, 'Oncologist', 'Oncologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:17:44'),
(40, 'Ophthalmologist', 'Ophthalmologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:17:57'),
(41, 'Oral surgeon (maxillofacial surgeon)', 'Oral surgeon (maxillofacial surgeon)', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:18:16'),
(42, 'Orthopedic surgeon', 'Orthopedic surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:18:34'),
(43, 'Otolaryngologist (ear, nose, and throat specialist)', 'Otolaryngologist (ear, nose, and throat specialist)', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:18:53'),
(44, 'Pain management specialist', 'Pain management specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:19:07'),
(45, 'Pathologist', 'Pathologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:19:36'),
(46, 'Pediatrician', 'Pediatrician', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:19:49'),
(47, 'Perinatologist', 'Perinatologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:20:22'),
(48, 'Physiatrist', 'Physiatrist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:20:34'),
(49, 'Plastic surgeon', 'Plastic surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:21:04'),
(50, 'Psychiatrist', 'Psychiatrist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:21:13'),
(51, 'Pulmonologist', 'Pulmonologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:21:29'),
(52, 'Radiation oncologist', 'Radiation oncologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:21:47'),
(53, 'Radiologist', 'Radiologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:22:03'),
(54, 'Reproductive endocrinologist', 'Reproductive endocrinologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:22:20'),
(55, 'Rheumatologist', 'Rheumatologist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:22:45'),
(56, 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:23:05'),
(57, 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:23:27'),
(58, 'Spinal cord injury specialist', 'Spinal cord injury specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:24:24'),
(59, 'Sports medicine specialist', 'Sports medicine specialist', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:25:09'),
(60, 'Surgeon', 'Surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:26:09'),
(61, 'Thoracic surgeon', 'Thoracic surgeon', '', '', 0, '0000-00-00 00:00:00', '2015-12-26 15:26:27'),
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`id`, `lan`, `is_active`, `email`, `created_dt`, `unactive_dt`, `unactive_code`) VALUES
(20, 'kh', 1, 'kljl@ykkj.com', '2016-03-26 18:47:49', '0000-00-00 00:00:00', '56f6cb4547ee2'),
(19, 'kh', 1, 'koeun_math@yhoo.com', '2016-03-26 18:45:15', '2016-03-26 18:48:28', '56f6caabb395e'),
(21, 'kh', 1, 'koeun_math@yahho.com', '2016-03-27 01:22:27', '0000-00-00 00:00:00', '56f735d3eb5e8'),
(22, 'kh', 1, 'jredd66@gmail.com', '2016-07-10 06:40:36', '0000-00-00 00:00:00', '5781ede47f039');

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
(25, 19, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:06:51'),
(26, 9, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:11:16'),
(27, 7, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:11:25'),
(28, 8, 3, 1, '', 1, '0000-00-00 00:00:00', '2016-03-13 05:12:31'),
(29, 11, 3, 1, '', 0, '0000-00-00 00:00:00', '2016-03-13 05:14:22'),
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
,`slug` varchar(100)
,`en_name` varchar(100)
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
-- Stand-in structure for view `view_feedback_rating_score`
--
CREATE TABLE IF NOT EXISTS `view_feedback_rating_score` (
`id` int(11)
,`id_feedback` int(11)
,`en_name` varchar(100)
,`en_question` varchar(200)
,`score` int(5)
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
,`slug` varchar(100)
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
,`en_type` varchar(50)
,`kh_type` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hospital_info2`
--
CREATE TABLE IF NOT EXISTS `view_hospital_info2` (
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
-- Stand-in structure for view `view_rating_for_hospital_search`
--
CREATE TABLE IF NOT EXISTS `view_rating_for_hospital_search` (
`id_hospital` int(11)
,`is_recommended` tinyint(1)
,`average` decimal(14,4)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctor_hospitals` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image` from (((`tbl_hospital_doctors` `h_d` join `tbl_hospitals` `h` on((`h`.`id` = `h_d`.`id_hospital`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h_d`.`id`))) join `tbl_provinces` `p` on((`p`.`id` = `b`.`id_province`))) where ((`b`.`is_default` = 1) and (`p`.`is_published` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_doctor_services`
--
DROP TABLE IF EXISTS `view_doctor_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctor_services` AS select `d_s`.`id_doctor` AS `id_doctor`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`d_s`.`price` AS `price`,`d_s`.`en_note` AS `en_note`,`d_s`.`kh_note` AS `kh_note` from (`tbl_doctor_services` `d_s` join `tbl_services` `s` on((`s`.`id` = `d_s`.`id_service`)));

-- --------------------------------------------------------

--
-- Structure for view `view_feedback_rating_score`
--
DROP TABLE IF EXISTS `view_feedback_rating_score`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_feedback_rating_score` AS select `f_s`.`id` AS `id`,`f_s`.`id_feedback` AS `id_feedback`,`f_q`.`en_name` AS `en_name`,`f_q`.`en_question` AS `en_question`,`f_s`.`score` AS `score` from (`tbl_feedback_scores` `f_s` join `tbl_feedback_questions` `f_q` on((`f_q`.`id` = `f_s`.`id_question`)));

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_doctors` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`d`.`slug` AS `slug`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`s`.`en_name` AS `en_specialist`,`s`.`kh_name` AS `kh_specialist`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_doctors` `d` on((`h_d`.`id_doctor` = `d`.`id`))) join `tbl_specialists` `s` on((`d`.`id_specialist` = `s`.`id`)));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_info`
--
DROP TABLE IF EXISTS `view_hospital_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_info` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_director` AS `en_director`,`h`.`kh_director` AS `kh_director`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`h`.`id_hospital_category` AS `id_hospital_category`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`website` AS `website`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`b`.`working_hours` AS `working_hours`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `en_type`,`t`.`kh_name` AS `kh_type` from (((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h`.`id`))) where ((`h`.`is_published` = 1) and (`b`.`is_default` = 1));

-- --------------------------------------------------------

--
-- Structure for view `view_hospital_info2`
--
DROP TABLE IF EXISTS `view_hospital_info2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_info2` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_director` AS `en_director`,`h`.`kh_director` AS `kh_director`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`h`.`id_hospital_category` AS `id_hospital_category`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`website` AS `website`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`b`.`working_hours` AS `working_hours`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `kh_type`,`t`.`kh_name` AS `en_type` from (((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h`.`id`))) where ((`h`.`is_published` = 1) and (`b`.`is_default` = 1));

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
-- Structure for view `view_rating_for_hospital_search`
--
DROP TABLE IF EXISTS `view_rating_for_hospital_search`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rating_for_hospital_search` AS select `h_r`.`id_hospital` AS `id_hospital`,`h_r`.`is_recommended` AS `is_recommended`,avg(`h_r_s`.`score`) AS `average` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r_s`.`id_hospital_rating`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
