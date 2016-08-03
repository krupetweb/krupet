/*
Navicat MySQL Data Transfer

Source Server         : CamCyber local
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : camcyber_krupet_2

Target Server Type    : MYSQL
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-06-27 18:59:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'a@b.c', 'c4ca4238a0b923820dcc509a6f75849b', '1');

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_ads
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ads`;
CREATE TABLE `tbl_ads` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ads
-- ----------------------------
INSERT INTO `tbl_ads` VALUES ('2', 'Ads 1', '#', 'uploads/advertisments/advertisment_56af7cb2c3252.jpg', 'uploads/advertisments/advertisment_56af7cb2c571b.jpg', '0', '1', '0000-00-00 00:00:00', '2016-02-04 17:23:28');
INSERT INTO `tbl_ads` VALUES ('3', 'Ads 2', '#', 'uploads/advertisments/advertisment_56b20eddbd09b.jpg', 'uploads/advertisments/advertisment_56b20f030119b.jpg', '0', '1', '0000-00-00 00:00:00', '2016-02-03 15:30:27');

-- ----------------------------
-- Table structure for tbl_blogs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_blogs`;
CREATE TABLE `tbl_blogs` (
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_blogs
-- ----------------------------
INSERT INTO `tbl_blogs` VALUES ('12', '2', 'Tobacco Companies Sued Over Cancer-Causing Substances in E-Cigarettes', 'ក្រុមហ៊ុនថ្នាំជក់ប្តឹងបង្កជំងឺមហារីកក្នុងអ៊ីបារី', 'A lawsuit by environmental watchdog group CEH targets tobacco and e-cigarette companies whose products the group says emit two toxic chemicals.\r\n', 'ពាក្យបណ្តឹងដោយក្រុមអង្គការឃ្លាំមើលបរិស្ថានបាន CEH មួយផ្តោតសំខាន់លើក្រុមហ៊ុនថ្នាំជក់និង e-បារីដែលផលិតផលរបស់ក្រុមនេះបាននិយាយថាបញ្ចេញសារធាតុគីមីពុលទាំងពីរនាក់។', '<p>Several brands of electronic cigarettes, e-liquids, and other vaping products give off high levels of two cancer-causing chemicals even during normal use, according to tests commissioned by the Center for Environmental Health (CEH).</p>\r\n<p>“More than half of the products we tested had levels above the California safety standard,” Charles Margulis, media director for CEH, told Healthline, and “many of the products were quite high.”</p>\r\n<p>The tests prompted the nonprofit to file lawsuits against tobacco and other e-cigarette companies for failing to warn consumers about these chemicals, as required by Proposition 65, California’s consumer protection law.</p>\r\n<p>CEH’s announcement comes on the same day as the American Cancer Society’s Great American Smokeout, an event designed to help people give up tobacco.</p>', '<p>មានម៉ាកបារីអេឡិចត្រូនិជាច្រើន, អ៊ីរាវនិងផលិតផល vaping ដទៃទៀតផ្តល់ឱ្យបិទកម្រិតខ្ពស់នៃសារធាតុគីមីបង្កមហារីកទាំងពីរនាក់សូម្បីតែក្នុងការប្រើប្រាស់ធម្មតានេះបើយោងតាមការធ្វើតេស្តបានទទួលបន្ទុកដោយមជ្ឈមណ្ឌលសុខភាពបរិស្ថាន (CEH) ។</p>\r\n<p>\"ជាងពាក់កណ្តានៃផលិតផលដែលយើងបានធ្វើតេស្តមានកម្រិតស្ដង់ដារសុវត្ថិភាពនៅខាងលើកាលីហ្វញ៉ា\" លោក Charles Margulis នាយកប្រព័ន្ធផ្សព្វផ្សាយសម្រាប់ CEH បានថ្លែងប្រាប់ Healthline និង«មនុស្សជាច្រើននៃផលិតផលក្នុងចំនួនយ៉ាងខ្ពស់»។</p>\r\n<p>ការធ្វើតេស្តនេះបានជំរុញមិនរកកម្រៃដើម្បីដាក់ពាក្យបណ្តឹងប្រឆាំងនឹងថ្នាំជក់និងក្រុមហ៊ុនអេឡិចត្រូនិបារីផ្សេងទៀតសម្រាប់ការបរាជ័យក្នុងការព្រមានអតិថិជនអំពីសារធាតុគីមីទាំងនេះដូចដែលតម្រូវដោយសំណើ 65, ច្បាប់ការពារអតិថិជនរបស់រដ្ឋ California ។</p>\r\n<p>សេចក្តីប្រកាស CEH មកនៅថ្ងៃដដែលនោះជាការសមាគមន៍ជំងឺមហារីកអាមេរិករបស់មហាអាមេរិច Smokeout ព្រឹត្តិការណ៍ដែលបានរចនាឡើងដើម្បីជួយប្រជាជនឱ្យឡើងថ្នាំជក់មួយ។</p>', '2016-03-12-Tobacco-Companies-Sued-Over-Cancer-Causing-Substances-in-E-Cigarettes', 'uploads/blogs/blog_567f63d867ff6.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2016-03-12 19:55:17', '1');
INSERT INTO `tbl_blogs` VALUES ('13', '2', 'Measles Vaccine Has Saved 17 Million Lives Since the Year 2000', 'ថ្នាំបង្ការជំងឺកញ្ជ្រឹលបានរក្សាទុក 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000', 'Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).\r\n', 'កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។', '<p>Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).</p>\r\n\r\n<p>Measles is one of the most contagious diseases ever known. A sick person will infect 90 percent of the unimmunized people with whom he or she comes into contact.</p>\r\n\r\n<p>Though it only rarely kills, children are especially vulnerable.</p>\r\n\r\n<p>Measles<br />\r\nIn 2001, WHO, the CDC, the American Red Cross, the United Nations Foundation, and UNICEF launched the Measles &amp; Rubella Initiative. The goal of the program was to cut deaths by 95 percent by 2015 and to eliminate measles altogether in five of six global regions by 2020.<br />\r\n&nbsp;</p>\r\n', '<p>កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។</p>\r\n\r\n<p>ក្ឹលជាផ្នែកមួយនៃជំងឺឆ្លងបំផុតដែលបានធ្លាប់បានដឹង។ អ្នកជំងឺនឹងឆ្លងបាន 90 ភាគរយនៃប្រជាជន unimmunized ដែលគាត់ឬនាងមានទំនាក់ទំនងជាមួយនរណា។</p>\r\n\r\n<p>ទោះបីជាវាតែកម្រសម្លាប់កុមារដែលងាយរងគ្រោះជាពិសេស។</p>\r\n\r\n<p>ក្ឹល<br />\r\nក្នុងឆ្នាំ 2001 អង្គការសុខភាពពិភពលោកដែលជារបស់ CDC អាមេរិកកាកបាទក្រហមមូលនិធិអង្គការសហប្រជាជាតិនិងអង្គការ UNICEF បានចាប់ផ្តើមគំនិតផ្តួចផ្តើកញ្ជ្រឹលនិងស្អូច។ គោលដៅនៃកម្មវិធីនេះគឺដើម្បីកាត់បន្ថយការស្លាប់ដោយ 95 ភាគរយនៅឆ្នាំ 2015 និងដើម្បីលុបបំបាត់ជំងឺកញ្ជ្រិលទាំងអស់គ្នាក្នុងប្រាំប្រាំមួយតាមតំបន់ជាសកលនៅឆ្នាំ 2020 ។</p>\r\n', '', 'uploads/blogs/blog_567f62fb68bf2.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:03:07', '7');
INSERT INTO `tbl_blogs` VALUES ('14', '2', '9 Misconceptions You Probably Have About HIV/AIDS', '9 យល់ខុសអ្នកប្រហែលជាមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍', 'HIV/AIDS doesn’t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren’t even aware of it.', 'មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។', '<p>HIV/AIDS doesn&rsquo;t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren&rsquo;t even aware of it.</p>\r\n\r\n<p>But while the World Health Organization says that the virus has killed some 39 million people since 1981, HIV (human immunodeficiency virus) and AIDS (acquired immunodeficiency syndrome) continue to be plagued by misinformation.</p>\r\n\r\n<p>We reached out to several experts to get their opinions on what the most glaring misconceptions people in the United States have about HIV/AIDS. They treat people, educate medical students, and provide support to patients coping with the disease. Here are the top nine myths and misconceptions that they, and people with HIV or AIDS, continue to combat:</p>\r\n', '<p>មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។</p>\r\n\r\n<p>ប៉ុន្តែខណៈដែលអង្គការសុខភាពពិភពលោកនិយាយថាវីរុសនេះបានសម្លាប់មនុស្សប្រហែល 39 លាននាក់ចាប់តាំងពីឆ្នាំ 1981 មេរោគអេដស៍ (មេរោគមនុស្ស) និងជំងឺអេដស៍ (បណ្តុំរោគសញ្ញាហ៊ីបានទិញ) បន្តត្រូវបានញាំញីដោយការយល់ច្រឡំ។</p>\r\n\r\n<p>យើងបានឈានដល់ចេញទៅជាអ្នកជំនាញជាច្រើនដើម្បីទទួលបានមតិរបស់ខ្លួននៅលើអ្វីដែលជាការយល់ច្រឡំប្រលោះបំផុតនៅក្នុងការដែលមនុស្សសហរដ្ឋអាមេរិកមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍។ ពួកគេបានព្យាបាលមនុស្ស, អប់រំសិស្សនិស្សិតវេជ្ជសាស្រ្តនិងផ្តល់ការគាំទ្រដល់អ្នកជំងឺតស៊ូជាមួយនឹងជំងឺនេះ។ ខាងក្រោមនេះជារឿងព្រេងកំពូលនិងប្រាំបួនដែលថាពួកគេយល់ច្រឡំនិងអ្នកដែលមានផ្ទុកមេរោគអេដស៍ឬជំងឺអេដស៍នៅតែបន្តការប្រយុទ្ធគឺ:</p>\r\n', '', 'uploads/blogs/blog_567f649613b57.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:09:58', '6');
INSERT INTO `tbl_blogs` VALUES ('15', '2', 'The Best ADHD Podcasts of 2015', 'នេះផតខាស់ ADHD ល្អបំផុតនៃឆ្នាំ 2015', 'Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Research', 'យកចិត្តទុកដាក់ភាពមិនប្រក្រតីឱនភាព (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ', '<p>Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Researchers still aren&rsquo;t sure exactly what causes it, but both genetic and environmental factors are believed to play major roles.</p>\r\n<p>Living with ADHD isn&rsquo;t easy. People with ADHD have trouble focusing on one task. They may fidget or get bored easily. The disorder can make it more difficult to accomplish goals at work or at school, and potentially interfere with your daily life.</p>\r\n<p><br /> Treatments for ADHD include medications, therapy, and educational programs that focus on keeping symptoms under control. While there is no cure, it can be more manageable with understanding and the right coping tools.</p>\r\n<p>These podcasts certainly fit the bill, and might offer some helpful strategies that you can apply in your daily life.</p>', '<p>ឱនភាពយកចិត្តទុកដាក់ជំងឺផ្ចង់អារម្មណ៍ (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ្វីនោះទេប៉ុន្តែកត្តាទាំងពីរហ្សែននិងបរិស្ថានត្រូវបានគេជឿថាដើម្បីដើរតួនាទីសំខាន់មួយ។</p>\r\n<p>ការរស់នៅជាមួយ ADHD គឺមិនមែនជាការងាយស្រួល។ មនុស្សដែលមាន ADHD មានបញ្ហាក្នុងការផ្តោតជាសំខាន់នៅលើភារកិច្ចតែមួយ។ ពួកគេអាចនោមិនសុខឬធុញទ្រាន់យ៉ាងងាយស្រួល។ ជំងឺនេះអាចធ្វើឱ្យវាមានការលំបាកបន្ថែមទៀតដើម្បីសម្រេចបានគោលដៅនៅកន្លែងធ្វើការឬនៅសាលានិងមានសក្តានុពលជ្រៀតជ្រែកជាមួយនឹងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>\r\n<p><br /> ការព្យាបាលសម្រាប់ ADHD រួមមានការប្រើថ្នាំ, ការព្យាបាល, និងកម្មវិធីអប់រំដែលផ្តោតជាសំខាន់នៅលើការរក្សារោគសញ្ញាមួយដែលស្ថិតនៅក្រោមការត្រួតពិនិត្យ។ ខណៈពេលដែលមានគឺជាការព្យាបាលនោះទេ, វាអាចត្រូវបានគ្រប់គ្រងដោយការយល់ដឹងនិងសិទ្ធិតស៊ូឧបករណ៍។</p>\r\n<p>ផតខាស់ទាំងនេះពិតជាសមនឹងវិក័យប័ត្រនិងអាចផ្តល់នូវយុទ្ធសាស្រ្តដែលមានប្រយោជន៍មួយចំនួនដែលអ្នកអាចអនុវត្តនៅក្នុងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>', '2016-02-04-The-Best-ADHD-Podcasts-of-2015', 'uploads/blogs/blog_567f655f6a8c8.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-04 12:29:57', '5');
INSERT INTO `tbl_blogs` VALUES ('16', '1', 'Sad Songs Say So Much: The Music You Choose May Say Something About Your Mental Health', 'ចម្រៀងសោកស្តាយនិយាយថាដូច្នេះច្រើន: តន្រ្តីអ្នកជ្រើសអាចនិយាយអ្វីមួយអំពីសុខភាពផ្លូវចិត្តរបស់អ្នក', 'Researchers look into what different types of music do to listeners’ mental state as well as if music can help calm down those who are anxious.', 'អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។', '<p>Researchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p><br />\r\nResearchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p>Music Mental<br />\r\n&ldquo;Help! I need somebody. Help!&rdquo;</p>\r\n\r\n<p>The Beatles blasted out that well-known tune in 1965.</p>\r\n\r\n<p>Whether you prefer pop, heavy metal, or hip-hop, the songs you choose may provide a glimpse into the state of your mental health.</p>\r\n\r\n<p>They may also have long-lasting effects on your mood.</p>\r\n\r\n<p>Can sad songs cheer you up? Do aggressive songs put you on edge? That depends on which expert you are tuning in to.</p>\r\n', '<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p><br />\r\nអ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>តន្ត្រីផ្លូវចិត្ត<br />\r\n&quot;ជួយ! ខ្ញុំ​ត្រូវ​ការ​នរណា​ម្នាក់។ ជំនួយ! &quot;</p>\r\n\r\n<p>ក្រុម Beatles បានផ្ទុះចេញបទភ្លេងល្បីថានៅក្នុងឆ្នាំ 1965 ។</p>\r\n\r\n<p>ថាតើអ្នកចូលចិត្តការលេចលោហៈធ្ងន់ឬហ៊ីបហបចម្រៀងដែលអ្នកបានជ្រើសអាចផ្តល់ឃើញចូលទៅក្នុងស្ថានភាពនៃសុខភាពផ្លូវចិត្តរបស់អ្នក។</p>\r\n\r\n<p>ពួកគេអាចមានឥទ្ធិពលយូរអង្វែងលើអារម្មណ៍របស់អ្នក។</p>\r\n\r\n<p>ច្រៀងបទកម្សត់អាចស្រែកហ៊ោអ្នកឡើង? តើបទចម្រៀងឈ្លានពានដាក់អ្នកនៅលើគែម? ដែលអាស្រ័យទៅលើការដែលជាអ្នកជំនាញដែលអ្នកត្រូវបានបើកនៅក្នុងការទៅ។</p>\r\n', '', 'uploads/blogs/blog_567f6643c2aed.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2015-12-27 05:17:07', '3');
INSERT INTO `tbl_blogs` VALUES ('17', '1', 'Stage 4 Renal Cell Carcinoma: Treatment and Prognosis', 'ដំណាក់កាលទី 4 ជំងឺមហារីកកោសិកា Renal: ការព្យាបាលនិងការព្យាករណ៍', 'Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including', 'កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាប្រឈមនឹងគ្រោះថ្នាក់ជាច្រើនសម្រាប់ការអភិវឌ្ឍ RCC រួមទាំងការគឺមាន', '<p>Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including:</p>\r\n<p>a family history of the disease<br /> smoking<br /> obesity<br /> polycystic kidney disease<br /> The earlier it’s detected, the greater your chance for effective treatment.</p>\r\n<p>RCC Staging<br /> Doctors who diagnose and treat RCC and other types of cancer use a staging system. Each RCC patient’s cancer is given a number designation ranging from 1 to 4. Stage 1 is the earliest stage of the disease and 4 is the latest and most advanced.</p>', '<p>កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាហានិភ័យក្នុងការវិវត្តទៅ RCC រួមទាំងការគឺ:</p>\r\n<p>ប្រវត្តិគ្រួសារនៃជំងឺនេះ<br /> ការជក់បារី<br /> ការធាត់<br /> ជំងឺតម្រងនោម polycystic<br /> នេះជាឱកាសរបស់អ្នកសំរាប់ការព្យាបាលដែលមានប្រសិទ្ធិភាពកាលពីមុនវាត្រូវបានរកឃើញកាន់តែច្រើន។</p>\r\n<p>ដំណាក់កាល RCC<br /> គ្រូពេទ្យដែលធ្វើរោគវិនិច្ឆ័យនិងព្យាបាល RCC និងប្រភេទដទៃទៀតនៃជំងឺមហារីកប្រើប្រព័ន្ធឆាក។ ជំងឺមហារីកអ្នកជំងឺ RCC នីមួយគឺត្រូវបានផ្តល់ឱ្យមួយចំនួនរាប់ចាប់រចនាពី 1 ទៅ 4 ដំណាក់កាលទី 1 នេះគឺជាដំណាក់កាលដំបូងនៃជំងឺនេះនិងទី 4 គឺជាចុងក្រោយនិងទំនើបបំផុត។</p>', '2016-03-12-Stage-4-Renal-Cell-Carcinoma:-Treatment-and-Prognosis', 'uploads/blogs/blog_567f671894641.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2016-03-12 19:48:25', '2');
INSERT INTO `tbl_blogs` VALUES ('18', '1', 'What Does It Feel Like When You Have a Blood Clot?', 'តើវាមានអារម្មណ៍ដូចជាពេលដែលអ្នកមានកំណកឈាមមួយ?', 'When a blood clot occurs in one of your veins, it’s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 peop', 'នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបាន', '<p><br />\r\nWhen a blood clot occurs in one of your veins, it&rsquo;s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 people in the United States are affected by this condition annually. The CDC further estimates that 60,000 to 100,000 people die from this condition annually.</p>\r\n\r\n<p>If you&rsquo;re even slightly concerned you might have a blood clot, you should call your doctor right away. Symptoms of blood clots can vary, and it&rsquo;s possible to have a blood clot with no symptoms.</p>\r\n\r\n<p>Learn more about some of the symptoms that may indicate a blood clot.</p>\r\n', '<p>នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបានរងផលប៉ះពាល់ដោយជំងឺនេះជារៀងរាល់ឆ្នាំ។ CDC បានបន្តទៀតបានប៉ាន់ប្រមាណថា 60,000 ទៅ 100,000 នាក់ស្លាប់ដោយសារជំងឺនេះជារៀងរាល់ឆ្នាំ។</p>\r\n\r\n<p>ប្រសិនបើអ្នកកំពុងសូម្បីតែមានការព្រួយបារម្ភបន្តិចអ្នកអាចមានដុំកំណកឈាម, អ្នកគួរហៅទូរស័ព្ទទៅវេជ្ជបណ្ឌិតរបស់អ្នកស្តាំទៅឆ្ងាយ។ រោគសញ្ញានៃកំណកឈាមអាចប្រែប្រួល, ហើយវាជាការដែលអាចធ្វើឱ្យមានកំណកឈាមដែលមានរោគសញ្ញានោះទេ។</p>\r\n\r\n<p>ស្វែងយល់បន្ថែមអំពីរោគសញ្ញាមួយចំនួនដែលអាចបង្ហាញដុំកំណកឈាមនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f67d468fd8.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:23:48', '10');
INSERT INTO `tbl_blogs` VALUES ('19', '1', 'Can Cycling Cause Erectile Dysfunction?', 'ប្រណាំងកង់អាចបង្កឱ្យលិង្គងាប់?', 'Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and othe', 'ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្ស', '<p>Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and other people are more serious riders who spend hours a day on a bike.</p>\r\n\r\n<p>Men who bike can experience erection problems as an unintended consequence of spending too much time on a bike seat. The link between riding and erection problems isn&rsquo;t new. In fact, the Greek physician Hippocrates identified sexual issues in male horseback riders when he said &ldquo;The constant jolting on their horses unfits them for intercourse.&rdquo;</p>\r\n\r\n<p>Here&rsquo;s why riding a bike can affect your ability to achieve an erection and how to prevent cycling from putting the brakes on your sex life.</p>\r\n', '<p>ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្សេងទៀតមានអ្នកជិះកង់ធ្ងន់ធ្ងរដែលបានចំណាយពេលម៉ោងក្នុងមួយថ្ងៃនៅលើកង់មួយ។</p>\r\n\r\n<p>បុរសដែលជិះកង់អាចជួបប្រទះបញ្ហាក្នុងការឡើងរឹងរបស់លិង្គដែលជាផលវិបាកនៃការចំណាយពេលវេលាច្រើនពេកនៅលើកៅអីកង់មួយ។ ការផ្សារភ្ជាប់គ្នារវាងបញ្ហាក្នុងការធ្វើដំណើរការនិងការឡើងរឹងរបស់លិង្គនោះគឺមិនមែនថ្មីទេ។ នៅក្នុងការពិតដែលគ្រូពេទ្យក្រិក Hippocrates បានកំណត់អត្តសញ្ញាណពីបញ្ហាផ្លូវភេទនៅក្នុងអ្នកជិះកង់នៅពេលដែលគាត់ជាប្រុសខ្នងសេះបាននិយាយថា &quot;ការបណ្ដាច់មិត្ដថេរនៅលើសេះរបស់ពួកគេឱ្យពួកគេសម្រាប់ការរួមភេទ unfits &raquo;។</p>\r\n\r\n<p>ខាងក្រោមនេះជាមូលហេតុដែលជាការជិះកង់អាចប៉ះពាល់ដល់សមត្ថភាពរបស់អ្នកក្នុងការសម្រេចបាននូវការឡើងរឹងរបស់លិង្គនិងរបៀបការពារការប្រណាំងកង់មកពីការដាក់ហ្វ្រាំងលើជីវិតផ្លូវភេទរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6889759ea.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:26:49', '10');
INSERT INTO `tbl_blogs` VALUES ('20', '1', 'Show Us Your Mastectomy Tattoos!', 'បង្ហាញយើងពីការចាក់សាក់ទំហំរបស់អ្នក!', 'Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed', 'ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬ', '<p>Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed, while others use the surgery as a preventative measure.&nbsp;</p>\r\n\r\n<p>Losing a part of yourself is a life-altering experience, and some women are expressing that with art, covering up their scars with tattoos. Powerful as well as beautiful, they inspire us all.</p>\r\n\r\n<p>Do you have a mastectomy tattoo? Share it with us at social@healthline.com so that you can inspire others! In your email, please include 1) a clear photo of your tattoo, 2) a short description of what your tattoo means to you and 3) whether you would like your name to be included with your submission.</p>\r\n', '<p>ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬពីរដងដោយ msterctomy នៅពេលដែលពួកគេត្រូវបានគេធ្វើរោគវិនិច្ឆ័យឃើញខណៈពេលដែលអ្នកផ្សេងទៀតប្រើការវះកាត់ជាវិធានការបង្ការ។</p>\r\n\r\n<p>ការបាត់បង់ផ្នែកមួយនៃខ្លួនឯងមួយគឺជាបទពិសោធជីវិតការផ្លាស់ប្ដូរនិងស្ត្រីមួយចំនួនកំពុងសម្តែងថាជាមួយនឹងសិល្បៈ, គ្របដណ្តប់របស់ខ្លួនជាមួយនឹងស្នាមឡើងការចាក់សាក់។ ដែលមានឥទ្ធិពលដូចជាស្រស់ស្អាត, ដែលពួកគេបានជម្រុញឱ្យយើងទាំងអស់។</p>\r\n\r\n<p>តើអ្នកមានសាក់រូបដោយ msterctomy មួយ? ចែករំលែកវាជាមួយពួកយើងនៅ social@healthline.com ដូច្នេះអ្នកអាចជម្រុញឱ្យអ្នកផ្សេង! ក្នុងអ៊ីមែលរបស់អ្នកសូមបញ្ចូលទី 1) រូបថតច្បាស់លាស់នៃការសាក់របស់អ្នក, 2) សេចក្ដីសង្ខេបនៃអ្វីដែលការសាក់របស់អ្នកដែលមានន័យថាដើម្បីអ្នកនិង 3) តើអ្នកចង់ឱ្យឈ្មោះរបស់អ្នកត្រូវបានរួមបញ្ចូលជាមួយនឹងការស្នើរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6adf6e671.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:48', '9');
INSERT INTO `tbl_blogs` VALUES ('21', '1', 'The Top 8 Products to Help You Quit Smoking', 'កំពូលផលិតផល 8 ដើម្បីជួយអ្នកឈប់ជក់បារី', 'Almost 18 percent of American adults smoke cigarettes, according to the Centers for Disease Control and Prevention (CDC). And nearly 70 percent of those smokers admit to wanting to quit.', 'ស្ទើរតែ 18 ភាគរយនៃមនុស្សពេញវ័យជនជាតិអាមេរិកជក់បារីនេះបើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ។ និងជិត 70 ភាគរយនៃអ្នកជក់បារីអ្នកដែលបានទទួលស្គាល់ថាដើម្បីចង់ឈប់។', '<p>More Americans are addicted to nicotine &mdash; the drug in cigarettes &mdash; than any other drug. And because nicotine is so addictive, it isn&rsquo;t a drug you can just put down. Quitting can take several attempts. But the benefits are many. Quitters reduce their risk for several types of cancer, as well as heart disease, vascular disease, respiratory problems, infertility, and lung diseases like COPD.</p>\r\n\r\n<p>So where can those who want to quit find help? There are numerous services and products that can help smokers put down their cigarettes for good. We&rsquo;ve rounded up some of the best.</p>\r\n', '<p>ជនជាតិអាមេរិកកាន់តែច្រើនញៀននីកូទីន - គ្រឿងញៀននៅក្នុងបារី - ជាងថ្នាំដទៃទៀតណាមួយទេ។ ហើយដោយសារតែជាតិនីកូទីនជាគ្រឿងញៀនបានដូច្នេះវាមិនមែនជាថ្នាំដែលអ្នកអាចគ្រាន់តែដាក់ចុះ។ * ការឈប់ជក់បារីអាចយកជាការប៉ុនប៉ងមួយចំនួន។ ប៉ុន្តែការទទួលបានផលប្រយោជន៍ជាច្រើន។ ឈប់ជក់បន្ថយហានិភ័យរបស់ពួកគេសម្រាប់ប្រភេទជាច្រើននៃជំងឺមហារីកដូចជាជំងឺបេះដូង, ជំងឺសរសៃឈាម, បញ្ហាផ្លូវដង្ហើម, ការគ្មានកូននិងជំងឺសួតដូចជាការជំងឺផ្លូវដង្ហើមធ្ងន់ធ្ងរ។</p>\r\n\r\n<p>ដូច្នេះតើពួកអ្នកដែលចង់ឈប់ជក់បារីអាចរកជំនួយ? មានសេវានិងផលិតផលដែលអាចជួយអ្នកជក់បារីអោយដាក់ចុះបារីរបស់ពួកគេសម្រាប់ការល្អច្រើន។ យើងបានបង្គត់ឡើងមួយចំនួននៃការល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f6c3b7c87e.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:42:35', '8');
INSERT INTO `tbl_blogs` VALUES ('23', '2', '6 Unique Elliptical Exercises to Burn More Calories', '6 លំហាត់រាងពងក្រពើមានតែមួយគត់ក្នុងការដុតកម្ទេចកាឡូរីច្រើនជាង', 'When it comes to cardio, the elliptical machine may be one of the best machines out there.', 'នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។', '<p>When it comes to cardio, the elliptical machine may be one of the best machines out there.</p>\r\n\r\n<p>Safe and efficient, the low-impact workout is easier on the joints than running, which makes it a fantastic cardio option for people with knee, hip, or ankle problems. If done properly, sweating it out on an elliptical can also can be effective, working the arms, legs, and core.</p>\r\n\r\n<p>In fact, studies show that elliptical workouts can be just as effective as the treadmill or stair climber for improving or maintaining your aerobic endurance. Using the moving arms available on most machines allows you to engage your upper body, and adjusting the incline and resistance can really help engage your glutes, calves, and hamstrings.</p>\r\n', '<p>នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។</p>\r\n\r\n<p>មានសុវត្ថិភាពនិងមានប្រសិទ្ធិភាព, ការសាកល្បងទាបនិងផលប៉ះពាល់គឺមានភាពងាយស្រួលនៅលើសន្លាក់ជាងការរត់ដែលធ្វើឱ្យវាជាជម្រើសបេះដូងអស្ចារ្យសម្រាប់មនុស្សដែលមានបញ្ហាជង្គង់ត្រគាកឬកជើង។ ប្រសិនបើធ្វើបានត្រឹមត្រូវ, បែកញើសវាចេញនៅលើពងក្រពើមួយដែលអាចអាចមានប្រសិទ្ធិភាព, ធ្វើការលើដៃ, ជើង, និងការស្នូល។</p>\r\n\r\n<p>ជាការពិតការសិក្សាបានបង្ហាញថាការហាត់ប្រាណគឺអាចមានរាងអេលីបមានប្រសិទ្ធភាពដូចគ្រាន់តែឬជណ្តើរហាត់ប្រាណឡើងភ្នំសម្រាប់ការកែលម្អឬរក្សាចិត្ដស៊ូទ្រាំប្រាណរបស់អ្នក។ ការប្រើប្រាស់អាវុធការផ្លាស់ប្តូរនេះអាចរកបាននៅលើម៉ាស៊ីនភាគច្រើនបំផុតដែលអនុញ្ញាតឱ្យអ្នកចូលរួមរាងកាយផ្នែកខាងលើរបស់អ្នកនិងលៃតម្រូវផាបតេរនិងភាពធន់ទ្រាំពិតជាអាចជួយចូលរួមរបស់អ្នក glutes, calves និងសរសៃពួរគន្លាក់ជើង។</p>\r\n', '', 'uploads/blogs/blog_567f6dfa7072b.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:50:02', '4');
INSERT INTO `tbl_blogs` VALUES ('24', '1', '10 Classic Christmas Movies to Watch with Your Kids', 'ភាពយន្តបុរាណបុណ្យណូអែល 10 ស៊ូទ្រាំប្រុងស្មារតីជាមួយកុមាររបស់អ្នក', 'Christmas is a festive time of year, and nothing puts people in the holiday mood like a quality Christmas movie.', 'បុណ្យណូអែលគឺជាពេលវេលាបុណ្យនៃឆ្នាំហើយគ្មានអ្វីដែលបានធ្វើឱ្យប្រជាជននៅក្នុងអារម្មណ៍ថ្ងៃឈប់សម្រាកដូចជាខ្សែភាពយន្តបុណ្យណូអែលដែលមានគុណភាព។', '<p>Christmas is a festive time of year, and nothing puts people in the holiday mood like a quality Christmas movie.</p>\r\n\r\n<p>New movies are made every year. But when you want to sit down and watch a Christmas movie with your kids, you want a tried and true classic.</p>\r\n\r\n<p>Here&rsquo;s a list of 10 classic Christmas movies to watch with your kid this year.</p>\r\n', '<p>បុណ្យណូអែលគឺជាពេលវេលាបុណ្យនៃឆ្នាំហើយគ្មានអ្វីដែលបានធ្វើឱ្យប្រជាជននៅក្នុងអារម្មណ៍ថ្ងៃឈប់សម្រាកដូចជាខ្សែភាពយន្តបុណ្យណូអែលដែលមានគុណភាព។</p>\r\n\r\n<p>ខ្សែភាពយន្ដថ្មីដែលត្រូវបានធ្វើឡើងជារៀងរាល់ឆ្នាំ។ ប៉ុន្តែនៅពេលដែលអ្នកចង់អង្គុយចុះនិងការមើលខ្សែភាពយន្ដបុណ្យណូអែលជាមួយនឹងកូនរបស់អ្នក, អ្នកចង់បានជាបុរាណព្យាយាមនិងការពិត។</p>\r\n\r\n<p>ខាងក្រោមនេះជាបញ្ជីនៃខ្សែភាពយន្តបុណ្យណូអែលបុរាណ 10 ទៅប្រុងស្មារតីជាមួយកូនរបស់អ្នកនៅឆ្នាំនេះនោះទេ។</p>\r\n', '', 'uploads/blogs/blog_5683eef746882.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-04 12:29:30', '7');
INSERT INTO `tbl_blogs` VALUES ('25', '1', 'Cholesterol Control: 5 Heart-Healthy Scallops Recipes', 'ការត្រួតពិនិត្យកូឡេស្តេរ៉ុល: 5 សុខភាពបេះដូង scallop បង្កាន់ដៃ', 'Seafood is good for you, right? It’s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you’re minding your cholesterol levels, you can never be too cautious. As you’ll see in the case of scal', 'អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នក', '<p><br />\r\nSeafood is good for you, right? It&rsquo;s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you&rsquo;re minding your cholesterol levels, you can never be too cautious. As you&rsquo;ll see in the case of scallops, the devil is in the preparation details.</p>\r\n\r\n<p>Scallops have a mild flavor and you&rsquo;ll often find them on a plate swimming in a sea of butter. In this case, scallops would not be a wise menu choice if you&rsquo;re watching your cholesterol, but it&rsquo;s not due to the scallops themselves.</p>\r\n', '<p>អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នកនឹងឃើញនៅក្នុងករណីនៃការខ្យង, អារក្សគឺនៅក្នុងសេចក្ដីលម្អិតរៀបចំខ្លួន។</p>\r\n\r\n<p>មានរសជាតិស្រាល scallops និងច្រើនអ្នកនឹងរកឃើញពួកវានៅលើចានមួយនៅក្នុងការហែលទឹកសមុទ្រនៃ butter មួយ។ ក្នុងករណីនេះ scallops នឹងមិនត្រូវម៉ឺនុយឱ្យជ្រើសរើសប្រាជ្ញាបើអ្នកកំពុងមើលកូឡេស្តេរ៉ុលរបស់អ្នកប៉ុន្តែវាមិនមែនដោយសារការខ្យងខ្លួនឯង។</p>\r\n', '', 'uploads/blogs/blog_5683ef68c747d.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2015-12-30 15:51:20', '6');
INSERT INTO `tbl_blogs` VALUES ('26', '2', '9 Nut-Free Holiday Dessert Recipes', '9 ថ្ងៃឈប់សម្រាកបង្អែមបង្កាន់ដៃដោយឥតគិតថ្លៃយចន', 'Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, “Are there nuts in this?”', 'ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង \"តើមានគ្រាប់នៅក្នុងនេះ?\"', '<p>Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, &ldquo;Are there nuts in this?&rdquo;</p>\r\n\r\n<p>Fortunately, there are many nut-free dessert options that you can make and eat, worry-free. Just be sure to check each ingredient&rsquo;s label to be sure they are nut-free as well. Some ingredients are nut-free but may be made in a factory that processes nuts, such as most commercial chocolate. Luckily, nut-free chocolate is now available at most grocery stores.</p>\r\n\r\n<p>Here, we&rsquo;ve rounded up some of the best recipes.</p>\r\n', '<p>ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង &quot;តើមានគ្រាប់នៅក្នុងនេះ?&quot;</p>\r\n\r\n<p>ជាសំណាងល្អមានជម្រើសបង្អែមដោយឥតគិតថ្លៃជាច្រើនយចនដែលអ្នកអាចធ្វើឱ្យមាននិងញ៉ាំព្រួយបារម្ភដោយឥតគិតថ្លៃគឺ។ គ្រាន់តែត្រូវប្រាកដថាដើម្បីពិនិត្យមើលស្លាកធាតុផ្សំគ្នាដើម្បីឱ្យប្រាកដថាពួកគេគឺជាប្រភេទណាត់ដោយឥតគិតថ្លៃផងដែរ។ គ្រឿងផ្សំដែលមនុស្សមួយចំនួនមានចន-ឥតគិតថ្លៃប៉ុន្តែអាចត្រូវបានធ្វើឡើងនៅក្នុងរោងចក្រកែច្នៃគ្រាប់ដូចជាសូកូឡាពាណិជ្ជកម្មភាគច្រើនបំផុត។ សំណាងល្អ, សូកូឡាចនដោយឥតគិតថ្លៃឥឡូវអាចប្រើបាននៅតាមហាងលក់គ្រឿងទេសភាគច្រើនបំផុត។</p>\r\n\r\n<p>នៅទីនេះយើងបានបង្គត់ឡើងមួយចំនួននៃរូបមន្តល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f7846f0b06.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:46', '3');
INSERT INTO `tbl_blogs` VALUES ('27', '1', 'How to Celebrate Their First Lost Tooth', 'តើធ្វើដូចម្តេចដើម្បីប្រារព្ធលើកដំបូងរបស់ពួកគេបានបាត់បង់ធ្មេញ', 'The first lost tooth is a major milestone.\r\n\r\n\r\nAlthough most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, ', 'នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។\r\n\r\n\r\nទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជា', '<p>The first lost tooth is a major milestone.</p>\r\n\r\n<p>Although most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, before eventually shedding it, is a feeling like no other.</p>\r\n\r\n<p>Before you get all teary eyed, remember that this is a cause for celebration, and how you celebrate the loss of a tooth is entirely up to you and your child. From the American tooth fairy to France&rsquo;s La Petite Souris, there are all sorts of fun traditions that will help you say goodbye to baby teeth and baby days.</p>\r\n', '<p>នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។</p>\r\n\r\n<p>ទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជាមួយអណ្តាតរបស់ពួកគេមុនពេលដែលនៅទីបំផុតការបង្ហូរវាគឺជាអារម្មណ៍ដូចផ្សេងទៀតទេ។</p>\r\n\r\n<p>មុនពេលអ្នកទទួលភ្នែកស្រក់ទឹកទាំងអស់, ចាំបានថានេះគឺជាហេតុមួយសម្រាប់ការសំដែងនិងរបៀបដែលអ្នកអបអរការបាត់បង់នៃធ្មេញមួយនោះគឺទាំងស្រុងឡើងទៅអ្នកនិងកូនរបស់អ្នក។ ពីទេពអប្សរឡាធ្មេញអាមេរិចរបស់ប្រទេសបារាំងញត្តិ Souris, មានគ្រប់ប្រភេទទាំងអស់នៃប្រពៃណីភាពសប្បាយរីករាយដែលនឹងជួយអ្នកក្នុងការនិយាយថាលាធ្មេញរបស់ទារកនិងថ្ងៃទារកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f78d6bd9e8.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2015-12-27 06:36:22', '5');
INSERT INTO `tbl_blogs` VALUES ('28', '2', '6 Tips to Create Lasting Christmas Traditions for Kids', '6 គន្លឹះដើម្បីបង្កើតស្ថិតស្ថេរប្រពៃណីបុណ្យណូអែលសម្រាប់កុមារ', 'Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.', 'ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។', '<p>Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.</p>\r\n\r\n<p>From decorating sugar cookies, to caroling, to trimming the tree, much of the magic of Christmas comes from our family traditions.</p>\r\n\r\n<p>We&rsquo;ve rounded up different ideas from around the web so you can start your own Christmas traditions with your family this year.</p>\r\n', '<p>ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។</p>\r\n\r\n<p>ចាប់តាំងពីការតុបតែងខូឃីស៍ស្ករ Carol ដើម្បីកាត់បន្ថយការមែកធាងច្រើននៃមន្តអាគមនៃបុណ្យគ្រីស្ទបានមកពីទំនៀមទំលាប់គ្រួសាររបស់យើង។</p>\r\n\r\n<p>យើងបានប្រមូលគំនិតប្លែកគ្នាពីជុំវិញតំបន់បណ្តាញដូច្នេះអ្នកអាចចាប់ផ្តើមទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលរបស់អ្នកផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកនៅឆ្នាំនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f798cd45a1.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:44', '2');
INSERT INTO `tbl_blogs` VALUES ('29', '1', 'The Cutest First Day of School Photo Ideas', 'នៅថ្ងៃដំបូងនៃគំនិតរូបថត Cutest សាលា', 'Despite what you’ll find on Pinterest, there aren’t a lot of moms out there who’ve managed to thoughtfully chronicle their children’s lives.', 'បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។', '<p>Despite what you&rsquo;ll find on Pinterest, there aren&rsquo;t a lot of moms out there who&rsquo;ve managed to thoughtfully chronicle their children&rsquo;s lives.</p>\r\n\r\n<p>Take me, for example: I have nothing close to a baby book. I have a trash bag filled with art projects and school assignments that I plan to organize, someday. The only reason I remember my kids&rsquo; first words is because I forced myself to (they were &ldquo;cat&rdquo; and &ldquo;ball&rdquo; by the way &mdash; I need to show off this knowledge whenever I get the chance).</p>\r\n\r\n<p>But one ritual I&rsquo;ve been able to stick to, despite my laziness, is the first day of school picture. Every year on that first day, I make my kids stand in front of our front door and take their picture. There are no fancy signs and I don&rsquo;t make them get dressed up.</p>\r\n\r\n<p>But if you are moderately more together than me, there are a lot of great ideas out there for how to make your child&rsquo;s first day of school photo special.</p>\r\n\r\n<p>Here are 10 ideas to get you started.</p>\r\n', '<p>បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។</p>\r\n\r\n<p>យកខ្ញុំឧទាហរណ៍: ខ្ញុំមិនមានអ្វីដែលស្និទ្ធនឹងសៀវភៅទារក។ ខ្ញុំមានថង់សំរាមមួយដែលពោរពេញទៅដោយគម្រោងជាសិល្បៈនិងកិច្ចការសាលាដែលខ្ញុំមានគម្រោងរៀបចំនៅថ្ងៃមួយ។ មូលហេតុតែមួយគត់ដែលខ្ញុំបានចាំពាក្យដំបូងកូនរបស់ខ្ញុំគឺដោយសារតែខ្ញុំត្រូវបង្ខំចិត្ត (ពួកគេត្រូវបាន &quot;ឆ្មា&quot; និង &quot;កូនបាល់&quot; ដោយវិធីនេះ - ខ្ញុំត្រូវការដើម្បីបង្ហាញពីចំណេះដឹងនេះនៅពេលណាខ្ញុំទទួលបានឱកាសនេះ) ។</p>\r\n\r\n<p>ប៉ុន្តែពិធីសាសនាមួយដែលខ្ញុំបានអាចបិទបើទោះជាខ្ជិលរបស់ខ្ញុំជាថ្ងៃដំបូងនៃរូបភាពសាលា។ ជារៀងរាល់ឆ្នាំនៅថ្ងៃដំបូងដែលខ្ញុំបានធ្វើឱ្យកូនរបស់ខ្ញុំឈរនៅពីមុខទ្វារខាងមុខរបស់យើងនិងយករូបភាពរបស់ពួកគេ។ វាមិនមានសញ្ញាពុម្ពអក្សរក្បូរក្បាច់គឺជាអ្នកហើយខ្ញុំមិនបានធ្វើឱ្យពួកគេទទួលបានស្លៀកពាក់ឡើង។</p>\r\n\r\n<p>ប៉ុន្តែប្រសិនបើអ្នកគឺជាអ្នកសមល្មមទៀតជាជាងខ្ញុំនោះមានគំនិតយ៉ាងច្រើនកុះករនៅទីនោះសម្រាប់របៀបដើម្បីធ្វើឱ្យថ្ងៃដំបូងរបស់កូនអ្នករូបថតសាលាពិសេសគឺ។</p>\r\n\r\n<p>ខាងក្រោមនេះជាគំនិតយោបល់ក្នុងការទទួលបានចំនួន 10 បានចាប់ផ្តើមជាអ្នកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f7a56a632a.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2015-12-27 06:42:46', '4');
INSERT INTO `tbl_blogs` VALUES ('30', '1', 'Loneliness Can Make You Sick, But Don’t Blame the Internet', 'ភាពឯកោអាចធ្វើអោយអ្នកឈឺ, ប៉ុន្តែមិនបន្ទោសអ៊ិនធឺណិ', 'A new study has found that feeling socially isolated is linked to cellular changes that weaken the immune system and increase inflammation in the body.', 'ការសិក្សាថ្មីមួយបានរកឃើញថាមានអារម្មណ៍ដាច់ឆ្ងាយពីសង្គមត្រូវបានផ្សារភ្ជាប់ទៅនឹងការផ្លាស់ប្តូរកោសិកាដែលចុះខ្សោយប្រព័ន្ធភាពស៊ាំនិងការបង្កើនការរលាកក្នុងរាងកាយ។', '<p>Ah, solitude. What feels refreshing to some can be crippling for others.</p>\r\n<p>Feeling isolated from other people when we wish we weren&rsquo;t isn&rsquo;t just unpleasant. It&rsquo;s also bad for us.</p>\r\n<p>Whether it strikes late at night when we are alone, or in the form of feeling like you don&rsquo;t belong in the middle of a crowded party, the sharp sting of social isolation is unmistakable.</p>\r\n<p>And it&rsquo;s not just in our heads; the effects of that sensation are felt deep inside our bodies, at the level of our cells and DNA.</p>\r\n<p>These kinds of physiological changes, say the authors of a new study, help explain the link seen in earlier studies between social isolation and poor health. This includes an increased risk of early death among the chronically lonely.</p>\r\n<p>&nbsp;</p>', '<p><img style=\"height: 378px; width: 800px;\" src=\"/uploads/finder/NewFolder/14460-illustration-of-a-key-pv.png\" alt=\"\" />Ah, នៅតែឯង។ តើអ្វីទៅជាមានអារម្មណ៍ថាមានកម្លាំងចិត្ដមួយចំនួនអាចត្រូវបានយ៉ាងខ្លាំងសម្រាប់អ្នកដទៃ។</p>\r\n<p>មានអារម្មណ៍ដាច់ឆ្ងាយពីប្រជាជនផ្សេងទៀតនៅពេលដែលយើងប្រាថ្នាថាយើងមិនត្រូវបានគេគឺមិនមែនគ្រាន់តែមិនរីករាយ។ វាជាការអាក្រក់ផងដែរសម្រាប់ពួកយើង។</p>\r\n<p>មិនថាវាកើតនៅពេលយប់នៅពេលដែលយើងនៅម្នាក់ឯងឬនៅក្នុងសំណុំបែបបទនៃការមានអារម្មណ៍ដូចជាអ្នកមិនមែនជារបស់នៅកណ្តាលនៃគណបក្សដែលមានមនុស្សច្រើនដែលជាទ្រនិចយ៉ាងខ្លាំងនៃភាពឯកោសង្គមគឺច្បាស់លាស់។</p>\r\n<p>ហើយវាមិនមែនគ្រាន់តែនៅក្នុងក្បាលរបស់យើង; ផលប៉ះពាល់នៃអារម្មណ៍ដែលត្រូវបានមានអារម្មណ៍យ៉ាងជ្រាលជ្រៅនៅក្នុងរាងកាយរបស់យើង, នៅក្នុងកម្រិតនៃកោសិកានិង DNA របស់យើងនោះទេ។</p>\r\n<p>ប្រភេទនៃការផ្លាស់ប្តូរសរីរវិទ្យាទាំងនេះបាននិយាយថាអ្នកនិពន្ធនៃការសិក្សាថ្មីមួយនេះជួយពន្យល់តំណឃើញនៅក្នុងការសិក្សានានាពីមុនរវាងភាពឯកោសង្គមនិងសុខភាពប្រជាជនក្រីក្រ។ នេះរួមបញ្ចូលទាំងការកើនឡើងហានិភ័យនៃការស្លាប់មុនអាយុក្នុងចំណោមឯកោរ៉ៃ។</p>', '2016-02-05-Loneliness-Can-Make-You-Sick,-But-Don’t-Blame-the-Internet', 'uploads/blogs/blog_567f7afe1d175.jpg', '0', '1', '1', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:39', '1');

-- ----------------------------
-- Table structure for tbl_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `tbl_blog_tags`;
CREATE TABLE `tbl_blog_tags` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `id_blog` int(10) NOT NULL,
  `id_tag` int(10) NOT NULL,
  `is_published` tinyint(4) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_blog_tags
-- ----------------------------
INSERT INTO `tbl_blog_tags` VALUES ('1', '30', '1', '0', '0000-00-00 00:00:00', '2016-02-26 13:11:11');
INSERT INTO `tbl_blog_tags` VALUES ('2', '30', '1', '0', '0000-00-00 00:00:00', '2016-02-26 17:16:55');
INSERT INTO `tbl_blog_tags` VALUES ('3', '30', '4', '0', '0000-00-00 00:00:00', '2016-02-26 17:17:02');
INSERT INTO `tbl_blog_tags` VALUES ('5', '4', '1', '0', '0000-00-00 00:00:00', '2016-02-26 17:19:14');
INSERT INTO `tbl_blog_tags` VALUES ('6', '12', '4', '0', '0000-00-00 00:00:00', '2016-02-26 18:50:32');
INSERT INTO `tbl_blog_tags` VALUES ('7', '12', '3', '0', '0000-00-00 00:00:00', '2016-02-26 18:50:35');
INSERT INTO `tbl_blog_tags` VALUES ('8', '12', '2', '0', '0000-00-00 00:00:00', '2016-02-26 18:50:37');
INSERT INTO `tbl_blog_tags` VALUES ('9', '12', '1', '0', '0000-00-00 00:00:00', '2016-02-26 18:50:40');
INSERT INTO `tbl_blog_tags` VALUES ('10', '28', '4', '0', '0000-00-00 00:00:00', '2016-02-26 18:51:49');
INSERT INTO `tbl_blog_tags` VALUES ('11', '26', '3', '0', '0000-00-00 00:00:00', '2016-02-26 18:52:16');
INSERT INTO `tbl_blog_tags` VALUES ('12', '17', '4', '0', '0000-00-00 00:00:00', '2016-02-26 18:59:39');
INSERT INTO `tbl_blog_tags` VALUES ('13', '16', '4', '0', '0000-00-00 00:00:00', '2016-02-26 18:59:53');
INSERT INTO `tbl_blog_tags` VALUES ('14', '29', '4', '0', '0000-00-00 00:00:00', '2016-02-26 19:00:23');
INSERT INTO `tbl_blog_tags` VALUES ('15', '27', '4', '0', '0000-00-00 00:00:00', '2016-02-26 19:00:39');
INSERT INTO `tbl_blog_tags` VALUES ('16', '25', '4', '0', '0000-00-00 00:00:00', '2016-02-26 19:01:18');
INSERT INTO `tbl_blog_tags` VALUES ('17', '24', '4', '0', '0000-00-00 00:00:00', '2016-02-26 19:01:37');

-- ----------------------------
-- Table structure for tbl_consultant_images
-- ----------------------------
DROP TABLE IF EXISTS `tbl_consultant_images`;
CREATE TABLE `tbl_consultant_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_consultant_images
-- ----------------------------
INSERT INTO `tbl_consultant_images` VALUES ('1', 'uploads/consultant-images/consultant_image_56edf6c5588ab.jpg', '2016-03-20 02:03:01', '1');
INSERT INTO `tbl_consultant_images` VALUES ('2', 'uploads/consultant-images/consultant_image_56e50dc46b112.jpg', '2016-03-15 15:31:52', '0');

-- ----------------------------
-- Table structure for tbl_contact_email
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact_email`;
CREATE TABLE `tbl_contact_email` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contact_email
-- ----------------------------
INSERT INTO `tbl_contact_email` VALUES ('1', 'mail.krupet.com', 'Normal', '25', 'smtp@krupet.com', 'Wim3!Es', '2016-01-03 07:40:53', '0');

-- ----------------------------
-- Table structure for tbl_contact_information
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact_information`;
CREATE TABLE `tbl_contact_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_contact_information
-- ----------------------------
INSERT INTO `tbl_contact_information` VALUES ('1', 'address', 'Address', 'Phnom Penh', '2016-02-25 01:18:49', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('2', 'phone', 'Phone Number', '+(855) 17 567 099', '2016-01-10 07:32:37', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('3', 'email', 'E-mail', 'contact@krupet.com', '2016-01-03 07:42:39', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('4', 'twitter-name', 'Twitter Name', 'Krupet', '2016-01-03 17:24:36', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('5', 'twitter-link', 'Twitter Link', '#', '2016-01-03 17:24:38', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('6', 'linkin-name', 'Linkin Name', 'Krupet', '2016-01-03 17:24:57', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('10', 'website', 'Website', 'http://krupet.com/', '2016-01-03 07:42:12', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('11', 'facebook-page-name', 'Facebook Page (Name)', 'Krupet', '2016-01-15 13:21:00', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('12', 'facebook-page-link', 'Facebook Page (Link)', 'https://www.facebook.com/Krupetcom-137344823272389/', '2016-01-15 08:10:21', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('13', 'email-for-contact', 'E-mail Form Contact', 'contact@krupet.com', '2016-01-15 13:21:09', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('14', 'linkin-link', 'Linkin Link', '#', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `tbl_contact_information` VALUES ('15', 'email-for-health-consultant', 'Email for health consultant', 'koeun_math@yahoo.com', '2016-03-04 05:02:26', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('16', 'email-droping-idea', 'Email Droping Idea', 'support@krupet.com', '2016-02-28 09:33:07', '1', '0');
INSERT INTO `tbl_contact_information` VALUES ('17', 'email-for-hospital-rating', 'Email For hospital rating', 'koeun_math@yahoo.com', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for tbl_contents
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contents`;
CREATE TABLE `tbl_contents` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_contents
-- ----------------------------
INSERT INTO `tbl_contents` VALUES ('1', 'about-us', 'About Us', 'About us', 'This is about us', 'about us', '0', '0', '2015-09-19 17:50:43', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('2', 'term', 'Term', 'Term in Khmer', '<p>Term</p>\r\n', '<p>Term</p>\r\n', '0', '0', '2015-09-19 17:56:38', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('3', 'career', 'Career', 'Career', '<h4><span style=\"font-size:20px\"><strong>Sabay</strong></span> ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href=\"http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay\">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href=\"http://aboutus.sabay.com/%20\" target=\"_blank\">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', '<h4>Sabay ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href=\"http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay\">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href=\"http://aboutus.sabay.com/%20\" target=\"_blank\">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('4', 'contact-us', 'Contact Us', 'Contact Us', '<p><strong>Krupet.com</strong>&nbsp;</p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', '<p><strong>Krupet.com&nbsp;</strong></p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_departments
-- ----------------------------
DROP TABLE IF EXISTS `tbl_departments`;
CREATE TABLE `tbl_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kh_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_departments
-- ----------------------------
INSERT INTO `tbl_departments` VALUES ('1', 'General', 'General', '1', null, null);
INSERT INTO `tbl_departments` VALUES ('2', 'Department B', 'Department B', '1', null, null);
INSERT INTO `tbl_departments` VALUES ('3', 'Department C', 'Department C', '1', null, null);
INSERT INTO `tbl_departments` VALUES ('4', 'Department D', 'Department D', '1', null, null);

-- ----------------------------
-- Table structure for tbl_distrits
-- ----------------------------
DROP TABLE IF EXISTS `tbl_distrits`;
CREATE TABLE `tbl_distrits` (
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_distrits
-- ----------------------------
INSERT INTO `tbl_distrits` VALUES ('1', '21', 'Tram Kok', 'ត្រាំកក់', '1', '0000-00-00 00:00:00', '2016-02-26 02:52:05', '1', '1');
INSERT INTO `tbl_distrits` VALUES ('2', '2', 'Tek thla', 'ទឹកថ្លា', '1', '0000-00-00 00:00:00', '2016-02-25 12:13:37', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('3', '2', 'Donh Penh', 'ដុនភ្នំពេញ', '1', '0000-00-00 00:00:00', '2016-02-25 12:13:56', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('4', '2', 'Sen sok', 'សែន សុខ', '1', '0000-00-00 00:00:00', '2016-02-25 18:04:41', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('5', '21', 'Doun Kaev', 'ដូនកែវ', '1', '0000-00-00 00:00:00', '2016-03-01 06:56:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('6', '21', 'Samraong', 'សំរោង', '1', '0000-00-00 00:00:00', '2016-03-01 06:55:32', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('7', '21', 'Angkor Borei', 'អង្គរបុរី', '1', '0000-00-00 00:00:00', '2016-03-01 06:47:39', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('8', '21', 'Bati ', 'បាទី', '1', '0000-00-00 00:00:00', '2016-03-01 06:48:12', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('9', '21', 'Bourei Cholsar', 'បូរីជលសារ', '1', '0000-00-00 00:00:00', '2016-03-01 06:50:02', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('10', '21', 'Kiri Vong', 'គិរីវង់', '1', '0000-00-00 00:00:00', '2016-03-01 06:50:44', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('11', '21', 'Kaoh Andaet', 'កោះអណ្តែត', '1', '0000-00-00 00:00:00', '2016-03-01 06:53:30', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('12', '21', 'Prey Kabbas ', 'ព្រៃកប្បាស', '1', '0000-00-00 00:00:00', '2016-03-01 06:54:08', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('13', '21', 'Tram Kak', 'ត្រាំកក់', '1', '0000-00-00 00:00:00', '2016-03-01 06:57:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('14', '21', 'Treang', 'ទ្រាំង', '1', '0000-00-00 00:00:00', '2016-03-01 06:57:45', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('15', '20', 'Chantrea', 'ចន្ទ្រា', '1', '0000-00-00 00:00:00', '2016-03-01 07:04:39', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('16', '20', 'Kampong Rou', 'កំពង់ជុំទី', '1', '0000-00-00 00:00:00', '2016-03-01 07:09:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('17', '20', 'Rumduol', 'រំដួល', '1', '0000-00-00 00:00:00', '2016-03-01 07:10:09', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('18', '20', 'Romeas Haek', 'រមាសហែក', '1', '0000-00-00 00:00:00', '2016-03-01 07:10:49', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('19', '20', 'Svay Chrum ', 'ស្វាយជ្រុំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:11:08', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('20', '20', 'Svay Rieng', 'ស្វាយរៀង', '1', '0000-00-00 00:00:00', '2016-03-01 07:11:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('21', '20', 'Svay Teab', 'ស្វាយទាប', '1', '0000-00-00 00:00:00', '2016-03-01 07:12:34', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('22', '19', 'Sesan ', 'សេសាន', '1', '0000-00-00 00:00:00', '2016-03-01 07:15:01', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('23', '19', 'Siem Bouk', 'សៀមបូក', '1', '0000-00-00 00:00:00', '2016-03-01 07:19:05', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('24', '19', 'Siem Pang', 'សៀមប៉ាង', '1', '0000-00-00 00:00:00', '2016-03-01 07:19:48', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('25', '19', 'Stung Treng', 'ស្ទឹងត្រែង', '1', '0000-00-00 00:00:00', '2016-03-01 07:20:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('26', '19', 'Thala Barivat ', 'ថាឡាបូរិ', '1', '0000-00-00 00:00:00', '2016-03-01 07:22:30', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('27', '17', 'Angkor Chum ', 'អង្គរជុំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:24:07', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('28', '17', 'Angkor Thom', 'អង្គរធំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:24:48', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('29', '17', 'Banteay Srei ', 'បន្ទាយស្រី', '1', '0000-00-00 00:00:00', '2016-03-01 07:25:11', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('30', '17', 'Chi Kraeng ', 'ជីក្រែង', '1', '0000-00-00 00:00:00', '2016-03-01 07:25:53', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('31', '17', 'Kralanh ', 'ក្រឡាញ់', '1', '0000-00-00 00:00:00', '2016-03-01 07:26:34', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('32', '17', 'Puok', 'ពួក', '1', '0000-00-00 00:00:00', '2016-03-01 07:27:03', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('33', '17', 'Prasat Bakong ', 'ប្រាសាទបាគង', '1', '0000-00-00 00:00:00', '2016-03-01 07:27:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('34', '17', 'Siem Reap', 'សៀមរាប', '1', '0000-00-00 00:00:00', '2016-03-01 07:27:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('35', '17', 'Sout Nikom ', 'សុតនិគម', '1', '0000-00-00 00:00:00', '2016-03-01 07:29:00', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('36', '17', 'Srei Snam ', 'ស្រីស្នំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:29:26', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('37', '17', 'Svay Leu', 'ស្វាយលើ', '1', '0000-00-00 00:00:00', '2016-03-01 07:29:58', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('38', '17', 'Varin ', 'វ៉ារិន', '1', '0000-00-00 00:00:00', '2016-03-01 07:30:26', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('39', '18', 'Andoung Meas', 'អណ្តូងមាស', '1', '0000-00-00 00:00:00', '2016-03-01 07:35:08', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('40', '18', 'Banlung', 'បានលុង', '1', '0000-00-00 00:00:00', '2016-03-01 07:35:53', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('41', '18', 'Bar Kaev ', 'របារក្រុងកៀវ', '1', '0000-00-00 00:00:00', '2016-03-01 07:36:19', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('42', '18', 'Koun Mom ', 'ឃួនមុំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:37:20', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('43', '18', 'Lumphat ', 'លំផាត់', '1', '0000-00-00 00:00:00', '2016-03-01 07:37:56', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('44', '18', 'Ou Chum', 'អូរជុំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:38:20', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('45', '18', 'Ou Ya Dav ', 'អ៊ូយ៉ាដាវ', '1', '0000-00-00 00:00:00', '2016-03-01 07:40:21', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('46', '18', 'Ta Veaeng', 'តាវ៉ាង', '1', '0000-00-00 00:00:00', '2016-03-01 07:41:25', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('47', '18', 'Veun Sai ', 'វឺនសៃ', '1', '0000-00-00 00:00:00', '2016-03-01 07:42:00', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('48', '16', 'Bakan ', 'បាកាន', '1', '0000-00-00 00:00:00', '2016-03-01 07:42:58', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('49', '16', 'Kandieng', 'កន្ឌៀង', '1', '0000-00-00 00:00:00', '2016-03-01 07:47:22', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('50', '16', 'Pursat ', 'ពោធិសាត់', '1', '0000-00-00 00:00:00', '2016-03-01 07:49:12', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('51', '16', 'Veal Veaeng', 'វាលវែង', '1', '0000-00-00 00:00:00', '2016-03-01 07:50:03', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('52', '15', 'Ba Phnum', 'ប៉ាភ្នំ', '1', '0000-00-00 00:00:00', '2016-03-01 07:51:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('53', '15', 'Kamchay Mear ', 'កំចាយមារ', '1', '0000-00-00 00:00:00', '2016-03-01 07:52:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('54', '15', 'Kampong Trabaek ', 'កំពង់ត្របែក', '1', '0000-00-00 00:00:00', '2016-03-01 07:52:39', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('55', '15', 'Kanhchriech', 'កាញារីទ្ធ', '1', '0000-00-00 00:00:00', '2016-03-01 07:54:03', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('56', '15', 'Me Sang', 'មែរសាង', '1', '0000-00-00 00:00:00', '2016-03-01 07:55:19', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('57', '15', 'Peam Chor', 'ពាមជរ', '1', '0000-00-00 00:00:00', '2016-03-01 07:55:45', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('58', '15', 'Peam Ro', 'Peam Ro', '1', '0000-00-00 00:00:00', '2016-03-01 07:56:09', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('59', '15', 'Pea Reang', 'ពារាំង', '1', '0000-00-00 00:00:00', '2016-03-01 07:56:32', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('60', '15', 'Preah Sdach', 'ព្រះស្តេច', '1', '0000-00-00 00:00:00', '2016-03-01 07:57:04', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('61', '15', 'Prey Veaeng', 'ព្រៃវែង', '1', '0000-00-00 00:00:00', '2016-03-01 07:57:26', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('62', '15', 'Kampong Leav', 'កំពង់លាវ', '1', '0000-00-00 00:00:00', '2016-03-01 07:57:47', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('63', '15', 'Sithor Kandal ', 'ស៊ីធរកណ្តាល', '1', '0000-00-00 00:00:00', '2016-03-01 07:58:12', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('64', '15', 'Por reang ', 'រៀងពោធិ៍', '1', '0000-00-00 00:00:00', '2016-03-01 07:58:32', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('65', '14', 'Chey Saen', 'ជ័យសែន', '1', '0000-00-00 00:00:00', '2016-03-01 08:00:42', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('66', '14', 'Chhaeb ', 'ចាប', '1', '0000-00-00 00:00:00', '2016-03-01 08:02:29', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('67', '14', 'Choam  Ksan', 'ជាំក្សាន្ត', '1', '0000-00-00 00:00:00', '2016-03-01 08:03:51', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('68', '14', 'Kulen ', 'គូលែន', '1', '0000-00-00 00:00:00', '2016-03-01 08:04:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('69', '14', 'Rovieng ', 'រវៀង', '1', '0000-00-00 00:00:00', '2016-03-01 08:05:04', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('70', '14', 'Sangkom Thmei', 'សង្គមថ្មី', '1', '0000-00-00 00:00:00', '2016-03-01 08:05:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('71', '14', 'Tbaeng Mean Chey', 'ត្បែងមានជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 08:06:10', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('72', '13', 'Anlong Veaeng ', 'អន្លង់វែង', '1', '0000-00-00 00:00:00', '2016-03-01 08:06:53', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('73', '13', 'Banteay Ampil ', 'បន្ទាយអំពិល', '1', '0000-00-00 00:00:00', '2016-03-01 08:07:14', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('74', '13', 'Chong Kal ', 'ចុងកាល់', '1', '0000-00-00 00:00:00', '2016-03-01 08:07:36', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('75', '13', 'Samraong ', 'សំរោង', '1', '0000-00-00 00:00:00', '2016-03-01 08:07:59', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('76', '13', 'Trapeang Prasat', 'ត្រពាំងប្រាសាទ', '1', '0000-00-00 00:00:00', '2016-03-01 08:08:22', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('77', '12', 'Kaev Seima ', 'កែវសីម៉ា', '1', '0000-00-00 00:00:00', '2016-03-01 08:09:02', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('78', '12', 'Kaoh Nhek', 'កោះញែក', '1', '0000-00-00 00:00:00', '2016-03-01 08:09:44', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('79', '12', 'Ou Reang ', 'អូររាំង', '1', '0000-00-00 00:00:00', '2016-03-01 08:10:09', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('80', '12', 'Pechr Chenda ', 'ពេជ្រចិន្តា', '1', '0000-00-00 00:00:00', '2016-03-01 08:10:38', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('81', '12', 'Saen Monourom ', 'សែនមនោរម្យ', '1', '0000-00-00 00:00:00', '2016-03-01 08:11:03', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('82', '11', 'Botum Sakor', 'បុទុមសាគរ', '1', '0000-00-00 00:00:00', '2016-03-01 08:11:49', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('83', '11', 'Kiri Sakor ', 'គិរីសាគរ', '1', '0000-00-00 00:00:00', '2016-03-01 08:12:14', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('84', '11', 'Koh Kong', 'កោះកុង', '1', '0000-00-00 00:00:00', '2016-03-01 08:12:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('85', '11', 'Smach Mean Chey', 'ស្មាច់មានជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 08:13:07', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('86', '11', 'Mondol Seima', 'មណ្ឌលសីមា', '1', '0000-00-00 00:00:00', '2016-03-01 08:13:32', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('87', '11', 'Srae Ambel ', 'ស្រែអំបិល', '1', '0000-00-00 00:00:00', '2016-03-01 08:14:15', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('88', '11', 'Thma Bang', 'ថ្មបាំង', '1', '0000-00-00 00:00:00', '2016-03-01 08:15:00', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('89', '10', 'Kandal Stueng', 'កណ្តាលស្ទឹង', '1', '0000-00-00 00:00:00', '2016-03-01 08:15:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('90', '10', 'Kien Svay', 'កៀនស្វាយ', '1', '0000-00-00 00:00:00', '2016-03-01 08:16:07', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('91', '10', 'Khsach Kandal', 'ខ្សាច់កណ្តាល', '1', '0000-00-00 00:00:00', '2016-03-01 08:16:33', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('92', '10', 'Kaoh Thum ', 'កោះធំ', '1', '0000-00-00 00:00:00', '2016-03-01 08:16:57', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('93', '10', 'Leuk Daek ', 'លើកដែក', '1', '0000-00-00 00:00:00', '2016-03-01 08:17:20', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('94', '10', 'Lvea Aem', 'ល្វាអែម', '1', '0000-00-00 00:00:00', '2016-03-01 08:17:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('95', '10', 'Mukh Kampul ', 'មុខកំពូល', '1', '0000-00-00 00:00:00', '2016-03-01 08:18:10', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('96', '10', 'Ang Snuo', 'អង្គស្នួល', '1', '0000-00-00 00:00:00', '2016-03-01 08:18:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('97', '10', 'Ponhea Lueu', 'ពញាឮ', '1', '0000-00-00 00:00:00', '2016-03-01 08:19:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('98', '10', 'S\'ang', 'ស្អាង', '1', '0000-00-00 00:00:00', '2016-03-01 08:19:36', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('99', '10', 'Krong Ta Khmau ', 'ក្រុងតាខ្មៅ', '1', '0000-00-00 00:00:00', '2016-03-01 08:20:00', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('100', '9', 'Angkor Chey ', 'អង្គរជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 08:20:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('101', '9', 'Banteay Meas', 'បន្ទាយមាស', '1', '0000-00-00 00:00:00', '2016-03-01 08:21:08', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('102', '9', 'Chhuk', 'ឈូក', '1', '0000-00-00 00:00:00', '2016-03-01 08:21:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('103', '9', 'Chum Kiri', 'ជុំគីរី', '1', '0000-00-00 00:00:00', '2016-03-01 08:21:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('104', '9', 'Dang Tong (', 'ដាងតុង', '1', '0000-00-00 00:00:00', '2016-03-01 08:22:16', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('105', '9', 'Kampong Trach', 'កំពង់ត្រាច', '1', '0000-00-00 00:00:00', '2016-03-01 08:22:38', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('106', '9', 'Tuek Chhou ', 'ទឹកឈូ', '1', '0000-00-00 00:00:00', '2016-03-01 08:23:03', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('107', '9', 'Krong Kampong ', 'ក្រុងកំពង់ឆ្នាំង', '1', '0000-00-00 00:00:00', '2016-03-01 08:23:27', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('108', '8', 'Baray ', 'បារាយណ៍', '1', '0000-00-00 00:00:00', '2016-03-01 08:24:27', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('109', '8', 'Kampong Svay', 'កំពង់ស្វាយ', '1', '0000-00-00 00:00:00', '2016-03-01 08:24:52', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('110', '8', 'Stueng Saen ', 'ស្ទឹងសែន', '1', '0000-00-00 00:00:00', '2016-03-01 08:25:12', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('111', '8', 'Prasat Balangk ', 'ប្រាសាទបាល្ល័ង', '1', '0000-00-00 00:00:00', '2016-03-01 08:25:34', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('112', '8', 'Prasat Sambour', 'ប្រាសាទសម្បូរព្រៃគុក', '1', '0000-00-00 00:00:00', '2016-03-01 08:25:57', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('113', '8', 'Sandan', 'សណ្តាន់', '1', '0000-00-00 00:00:00', '2016-03-01 08:26:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('114', '8', 'Santuk ', 'សន្ទុក', '1', '0000-00-00 00:00:00', '2016-03-01 08:26:49', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('115', '8', 'Stoung ', 'ស្ទោង', '1', '0000-00-00 00:00:00', '2016-03-01 08:27:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('116', '7', 'Basedth ', 'បាសេត', '1', '0000-00-00 00:00:00', '2016-03-01 08:30:21', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('117', '7', 'Chbar Mon ', 'ច្បារមន', '1', '0000-00-00 00:00:00', '2016-03-01 08:30:44', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('118', '7', 'Kong Pisei ', 'គង់ពិសី', '1', '0000-00-00 00:00:00', '2016-03-01 08:31:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('119', '7', 'Aoral', 'ឱរ៉ាល់', '1', '0000-00-00 00:00:00', '2016-03-01 08:31:33', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('120', '7', 'Odong', 'ឧដុង្គ', '1', '0000-00-00 00:00:00', '2016-03-01 08:32:04', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('121', '7', 'Phnom Sruoch', 'ភ្នំស្រួច', '1', '0000-00-00 00:00:00', '2016-03-01 08:32:25', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('122', '7', 'Samraong Tong', 'សំរោងទង', '1', '0000-00-00 00:00:00', '2016-03-01 08:32:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('123', '7', 'Thpong', 'ថ្ពង', '1', '0000-00-00 00:00:00', '2016-03-01 08:33:14', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('124', '6', 'Boribor ', 'បរិបូរ', '1', '0000-00-00 00:00:00', '2016-03-01 08:34:53', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('125', '6', 'Chol Kiri ', 'ជលគិរី', '1', '0000-00-00 00:00:00', '2016-03-01 08:35:16', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('126', '6', 'Kampong Chhnang', 'កំពង់ឆ្នាំង', '1', '0000-00-00 00:00:00', '2016-03-01 08:35:34', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('127', '6', 'Kampong Leaeng', 'កំពង់ជួល', '1', '0000-00-00 00:00:00', '2016-03-01 08:35:57', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('128', '6', 'Kampong Tralach ', 'កំពង់ត្រឡាច', '1', '0000-00-00 00:00:00', '2016-03-01 08:36:17', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('129', '6', 'Rolea B\'ier', 'រលាផែ ', '1', '0000-00-00 00:00:00', '2016-03-01 08:41:58', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('130', '6', 'Samakki Mean Chey', 'សាមគ្គីមានជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 08:42:37', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('131', '6', 'Tuek Phos', 'ទឹកផុស', '1', '0000-00-00 00:00:00', '2016-03-01 08:43:18', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('132', '5', 'Batheay', 'បាធាយ', '1', '0000-00-00 00:00:00', '2016-03-01 08:44:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('133', '5', 'Chamkar Leu ', 'ចំការលើ', '1', '0000-00-00 00:00:00', '2016-03-01 08:44:40', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('134', '5', 'Cheung Prey ', 'ជើងព្រៃ', '1', '0000-00-00 00:00:00', '2016-03-01 08:45:06', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('135', '5', 'Krong Kampong Cham ', 'ក្រុងកំពង់ចាម', '1', '0000-00-00 00:00:00', '2016-03-01 08:45:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('136', '5', 'Kampong Siem', 'កំពង់សៀម', '1', '0000-00-00 00:00:00', '2016-03-01 08:45:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('137', '5', 'Kang Meas', 'កងមាស', '1', '0000-00-00 00:00:00', '2016-03-01 08:46:08', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('138', '5', 'Koh Sotin', 'កោះសូទិន', '1', '0000-00-00 00:00:00', '2016-03-01 08:46:27', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('139', '5', 'Prey Chhor', 'ព្រៃឈរ', '1', '0000-00-00 00:00:00', '2016-03-01 08:46:45', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('140', '5', 'Srey Santhor', 'ស្រីសន្ធរ', '1', '0000-00-00 00:00:00', '2016-03-01 08:47:06', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('141', '5', 'Stueng Trang ', 'ស្ទឹងស្ទឹងត្រែង', '1', '0000-00-00 00:00:00', '2016-03-01 08:47:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('142', '4', 'Banan', 'ចេក', '1', '0000-00-00 00:00:00', '2016-03-01 08:48:15', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('143', '4', 'Thma Koul (', 'ថ្មគោល', '1', '0000-00-00 00:00:00', '2016-03-01 08:48:36', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('144', '4', 'Krong Battambang', 'ក្រុងបាត់ដំបង', '1', '0000-00-00 00:00:00', '2016-03-01 08:48:54', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('145', '4', 'Bavel', 'បវេល', '1', '0000-00-00 00:00:00', '2016-03-01 08:49:16', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('146', '4', 'Ek Phnom ', 'ឯកភ្នំ', '1', '0000-00-00 00:00:00', '2016-03-01 08:49:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('147', '4', 'Moung Ruesy', 'មោងឬស្សី', '1', '0000-00-00 00:00:00', '2016-03-01 08:51:07', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('148', '4', 'Rotanak Mondol ', 'រតនមណ្ឌល', '1', '0000-00-00 00:00:00', '2016-03-01 08:51:30', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('149', '4', 'Sangkae ', 'សង្កែ', '1', '0000-00-00 00:00:00', '2016-03-01 08:51:50', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('150', '4', 'Samlout ', 'សំឡូត', '1', '0000-00-00 00:00:00', '2016-03-01 08:52:12', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('151', '4', 'Sampov Loun', 'សំពៅលូន', '1', '0000-00-00 00:00:00', '2016-03-01 08:52:34', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('152', '4', 'Phnum Proek ', 'ភ្នំព្រឹក្ស', '1', '0000-00-00 00:00:00', '2016-03-01 08:52:56', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('153', '4', 'Kamrieng ', 'កំរៀង', '1', '0000-00-00 00:00:00', '2016-03-01 08:53:15', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('154', '4', 'Koas Krala ', 'គាស់ក្រឡ', '1', '0000-00-00 00:00:00', '2016-03-01 08:53:38', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('155', '4', 'Rokhak Kiri', 'រុកខៈគីរី', '1', '0000-00-00 00:00:00', '2016-03-01 08:54:16', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('156', '3', 'Mongkol Borei', 'មង្គលបុរី', '1', '0000-00-00 00:00:00', '2016-03-01 08:55:02', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('157', '3', 'Phnum Srok', 'ភ្នំស្រុក', '1', '0000-00-00 00:00:00', '2016-03-01 08:55:20', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('158', '3', 'Preah Netr Preah', 'ព្រះនេត្រព្រះ', '1', '0000-00-00 00:00:00', '2016-03-01 08:55:39', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('159', '3', 'Ou Chrov', 'អូរជ្រៅ', '1', '0000-00-00 00:00:00', '2016-03-01 08:55:57', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('160', '3', 'Krong Serei Saophoan ', 'ក្រុងសិរីសោភ័ណ្ឌ', '1', '0000-00-00 00:00:00', '2016-03-01 08:56:19', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('161', '3', 'Thma Puok ', 'ថ្មពួក', '1', '0000-00-00 00:00:00', '2016-03-01 08:56:49', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('162', '3', 'Svay Chek', 'ស្វាយចេក', '1', '0000-00-00 00:00:00', '2016-03-01 08:57:07', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('163', '3', 'Malai ', 'ស្រុកម៉ាឡៃ', '1', '0000-00-00 00:00:00', '2016-03-01 08:57:26', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('164', '3', 'Krong Paoy Paet', 'ក្រុងប៉ោយប៉ែត', '1', '0000-00-00 00:00:00', '2016-03-01 08:57:55', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('165', '2', 'Chamkar Mon', 'ចំការមន', '1', '0000-00-00 00:00:00', '2016-03-01 08:58:59', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('166', '2', 'Doun Penh ', 'ដូនពេញ', '1', '0000-00-00 00:00:00', '2016-03-01 08:59:31', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('167', '2', 'Prampir Meakkakra', 'ប្រាំពីរខណ្ឌមករា', '1', '0000-00-00 00:00:00', '2016-03-01 09:01:10', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('168', '2', 'Tuol Kouk ', 'ទួលគោក', '1', '0000-00-00 00:00:00', '2016-03-01 09:01:33', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('169', '2', 'Dangkao ', 'ដង្កោ', '1', '0000-00-00 00:00:00', '2016-03-01 09:01:52', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('170', '2', 'Mean Chey', 'មានជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 09:02:11', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('171', '2', 'Ruessey Kev', 'ឬស្សីកែវ', '1', '0000-00-00 00:00:00', '2016-03-01 09:02:58', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('172', '2', 'Pou Senchey', 'ខណ្ឌពោធិ៍សែនជ័យ', '1', '0000-00-00 00:00:00', '2016-03-01 09:03:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('173', '2', 'Chrouy Changvar ', 'ជ្រោយចង្វារ', '1', '0000-00-00 00:00:00', '2016-03-01 09:04:02', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('174', '2', 'Preaek Pnov', 'ព្រែកព្នៅ', '1', '0000-00-00 00:00:00', '2016-03-01 09:04:22', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('175', '2', 'Chbar Ampov', 'ច្បារអំពៅ', '1', '0000-00-00 00:00:00', '2016-03-01 09:04:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('176', '1', 'Chhloung', 'ឆ្លូង', '1', '0000-00-00 00:00:00', '2016-03-01 09:06:24', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('177', '1', 'Kracheh ', 'ក្រចេះ', '1', '0000-00-00 00:00:00', '2016-03-01 09:06:43', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('178', '1', 'Preaek Prasat', 'ព្រែកប្រាសាទ', '1', '0000-00-00 00:00:00', '2016-03-01 09:07:28', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('179', '1', 'Sambour', 'សំបូរ', '1', '0000-00-00 00:00:00', '2016-03-01 09:07:48', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('180', '1', 'Snuol', 'ស្នួល', '1', '0000-00-00 00:00:00', '2016-03-01 09:08:15', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('181', '1', 'Chit Borey ', 'ចិត្តបូរី', '1', '0000-00-00 00:00:00', '2016-03-01 09:09:13', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('182', '22', 'Damnak Chang\'aeur', 'ដំណាក់ចាន់អឺរ៉ូ', '1', '0000-00-00 00:00:00', '2016-03-02 20:06:32', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('183', '22', 'Kep ', 'កែប', '1', '0000-00-00 00:00:00', '2016-03-02 20:06:56', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('184', '23', 'Dambe', 'ស្រុកតំបែរ', '1', '0000-00-00 00:00:00', '2016-03-02 20:09:35', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('185', '23', 'Krouch Chhmar ', 'ក្រូចឆ្មារ', '1', '0000-00-00 00:00:00', '2016-03-02 20:09:58', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('186', '23', 'Memot ', 'មេមត់', '1', '0000-00-00 00:00:00', '2016-03-02 20:10:19', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('187', '23', 'Ou Reang Ov', 'អូររាំងឪ', '1', '0000-00-00 00:00:00', '2016-03-02 20:10:40', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('188', '23', 'Ponhea Kraek ', 'ពញាក្រែក', '1', '0000-00-00 00:00:00', '2016-03-02 20:11:01', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('189', '23', 'Tboung Khmum', 'ត្បូងឃ្មុំ', '1', '0000-00-00 00:00:00', '2016-03-02 20:11:23', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('190', '23', 'Krong Suong', 'ក្រុងសួង', '1', '0000-00-00 00:00:00', '2016-03-02 20:11:47', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('191', '24', 'Krong Preah Sihanouk', 'ក្រុងព្រះសីហនុ', '1', '0000-00-00 00:00:00', '2016-03-02 20:13:37', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('192', '24', 'Prey Nob', 'ព្រៃនប់', '1', '0000-00-00 00:00:00', '2016-03-02 20:13:59', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('193', '24', 'Stueng Hav', 'ស្ទឹងហាវ', '1', '0000-00-00 00:00:00', '2016-03-02 20:14:22', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('194', '24', 'Kampong Seila ', 'កំពង់សិលា', '1', '0000-00-00 00:00:00', '2016-03-02 20:14:45', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('195', '25', 'Pailin ', 'ប៉ៃលិន', '1', '0000-00-00 00:00:00', '2016-03-02 20:16:11', '0', '0');
INSERT INTO `tbl_distrits` VALUES ('196', '25', 'Sala Kra', 'សាលាក្រៈ', '1', '0000-00-00 00:00:00', '2016-03-02 20:17:38', '0', '0');

-- ----------------------------
-- Table structure for tbl_doctors
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doctors`;
CREATE TABLE `tbl_doctors` (
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_doctors
-- ----------------------------
INSERT INTO `tbl_doctors` VALUES ('1', 'A7', 'គីម ហេង', 'Dr. Kim Heng', 'Dr. គីម ហេង', '1', 'Doctor', 'Doctor', '50', '21', '5', '213213', 'a@f.v', '1-1-A7', 'qweqwqwe', 'qwertsdfdsf', 'sadas', 'asdsad', 'uploads/doctors/doctor567ea60cd9843.jpg', '1', '1', '0000-00-00 00:00:00', '1', '2016-03-18 03:33:09', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('2', 'A6', 'សុខ ចាន់', 'Dr. Sok chan ', 'Dr. សុខ ចាន់', '2', 'Doctor', 'Doctor', '33', '2', '2', '3243242', 'a@f.v', '2-2-A6', 'ER', 'ER', 'asd', 'aSDASDAaal;lk', 'uploads/doctors/doctor567e98383b86c.jpg', '1', '1', '0000-00-00 00:00:00', '6', '2016-03-18 03:32:17', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('3', 'A5', 'ហេង ហុង', 'Dr. Heng Hong', 'Dr. ហេង ហុង', '1', 'Doctor', 'Doctor', '50', '21', '1', '012345678', 'A@b.c', '3-3-A5', '', '', '', '', 'uploads/doctors/doctor567ea50132c0a.jpg', '1', '1', '0000-00-00 00:00:00', '5', '2016-03-18 03:32:44', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('4', 'A4', 'ចាន់ តារា', 'Dr. Chan Tara', 'Dr. ចាន់ តារា', '2', 'Doctor', 'Doctor', '40', '2', '4', 'N/A', 'koeun_math@yahoo.com', '4-4-A4', '', '', '', '', 'uploads/doctors/doctor567eab64611aa.jpg', '1', '1', '0000-00-00 00:00:00', '4', '2016-03-18 03:31:39', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('5', 'A3', 'ស៊ន ម៉ាឡា', 'Dr. Sorn Mala', 'Dr. ស៊ន ម៉ាឡា', '2', 'Doctor', 'Doctor', '61', '2', '3', 'N/A', 'koeun_math@yahoo.com', '5-5-A3', '', '', '', '', 'uploads/doctors/doctor567ea9a46b489.jpg', '1', '1', '0000-00-00 00:00:00', '1', '2016-03-14 14:25:03', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('6', 'A2', 'លី សាលី', 'Dr', 'Dr', '2', 'Doctor', 'Doctor', '50', '21', '1', 'N/A', 'koeun_math@yahoo.com', '6-6-A2', '<p>Background</p>', '<p>Background</p>', '<p>Ex</p>', '<p>Ex</p>', 'uploads/doctors/doctor567eaa9c834d0.jpg', '1', '1', '0000-00-00 00:00:00', '3', '2016-03-18 03:31:21', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('7', 'A1', 'ស៊ីមេង', 'Dr. simeng', 'Dr. simeng', '1', 'Doctor', 'Doctor', '50', '21', '1', '0', 'koeun_math@yahoo.com', '7-7-A1', '', '', '', '', 'uploads/doctors/doctor567f4f91e58a9.jpg', '1', '1', '0000-00-00 00:00:00', '3', '2016-03-18 03:30:58', '0', '0');
INSERT INTO `tbl_doctors` VALUES ('8', 'abc', 'abc', 'Dr.', 'វេជ្ជបណ្ឌិត', '2', 'Doctor', 'Doctor', '46', '2', '3', '017 567 099', 'contact@krupet.com', '8-8-abc', '<p>xdfsdfdsfdsf</p>', '<p>sdfsdf</p>', '<p>sdfsdfsdf</p>', '<p>sdfdsf</p>', 'uploads/doctors/doctor567f50692fe3a.jpg', '1', '1', '0000-00-00 00:00:00', '2', '2016-03-14 14:24:13', '3', '1');

-- ----------------------------
-- Table structure for tbl_doctor_services
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doctor_services`;
CREATE TABLE `tbl_doctor_services` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_doctor_services
-- ----------------------------
INSERT INTO `tbl_doctor_services` VALUES ('1', '2', '2', '231', '', '', '0', '2015-12-24 15:59:10', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_services` VALUES ('2', '6', '9', '12 $', '333', '33', '0', '2016-01-22 13:17:44', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_services` VALUES ('3', '8', '3', '200$', 'sdf', 'sdf', '0', '2016-01-22 13:30:33', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_services` VALUES ('4', '8', '2', '22$', '23', 'dsf', '0', '2016-01-22 13:31:35', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_services` VALUES ('5', '8', '1', '200$', '', '', '0', '2016-01-22 13:32:13', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_services` VALUES ('6', '7', '9', '111', '', '', '0', '2016-03-14 14:22:50', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_doctor_specialists
-- ----------------------------
DROP TABLE IF EXISTS `tbl_doctor_specialists`;
CREATE TABLE `tbl_doctor_specialists` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_doctor` int(12) NOT NULL,
  `id_specialist` int(12) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_doctor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_doctor_specialists
-- ----------------------------
INSERT INTO `tbl_doctor_specialists` VALUES ('1', '2', '2', '0', '2015-12-24 15:44:51', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('2', '3', '63', '0', '2015-12-26 15:34:08', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('3', '4', '60', '0', '2015-12-26 15:45:59', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('4', '5', '59', '0', '2015-12-26 15:49:39', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('5', '6', '55', '0', '2015-12-26 15:56:54', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('6', '1', '62', '0', '2015-12-26 16:00:57', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('7', '6', '63', '0', '2015-12-26 17:12:01', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('8', '7', '50', '0', '2015-12-27 03:35:27', '0000-00-00 00:00:00');
INSERT INTO `tbl_doctor_specialists` VALUES ('9', '8', '7', '0', '2015-12-27 03:39:05', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_faqs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_faqs`;
CREATE TABLE `tbl_faqs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_question` varchar(100) NOT NULL,
  `kh_question` varchar(100) NOT NULL,
  `en_answer` varchar(100) NOT NULL,
  `kh_answer` varchar(100) NOT NULL,
  `is_published` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_faqs
-- ----------------------------
INSERT INTO `tbl_faqs` VALUES ('2', 'Do you like our website?', 'Do you like our website?', 'Yes,I do.', 'Yes,I do.', '1', '0000-00-00 00:00:00', '2016-01-03 16:30:02');
INSERT INTO `tbl_faqs` VALUES ('3', 'What does Smart provide to new SmartLuy registered customer?', 'What does Smart provide to new SmartLuy registered customer?', '<h4><strong>If you register to SmartLuy,</strong> a private electronic wallet will be provided to yo', '<p><strong>If you register to SmartLuy</strong>, a private electronic wallet will be provided to you', '1', '0000-00-00 00:00:00', '2016-01-21 18:01:28');

-- ----------------------------
-- Table structure for tbl_featured_aside_ads
-- ----------------------------
DROP TABLE IF EXISTS `tbl_featured_aside_ads`;
CREATE TABLE `tbl_featured_aside_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `page-alais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_featured` int(10) NOT NULL,
  `num_of_click` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_featured_aside_ads
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedbacks`;
CREATE TABLE `tbl_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is_published refers to the visible of comment',
  `review` text,
  `created_dt` datetime DEFAULT NULL,
  `id_facebook` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_feedbacks
-- ----------------------------
INSERT INTO `tbl_feedbacks` VALUES ('16', 'A', '2016-02-28 03:36:09', null);
INSERT INTO `tbl_feedbacks` VALUES ('17', 'B', '2016-02-28 03:36:21', null);
INSERT INTO `tbl_feedbacks` VALUES ('18', 'D', '2016-02-28 03:36:42', null);
INSERT INTO `tbl_feedbacks` VALUES ('19', 'F', '2016-02-28 03:37:09', null);
INSERT INTO `tbl_feedbacks` VALUES ('20', 'D', '2016-02-28 03:37:24', null);
INSERT INTO `tbl_feedbacks` VALUES ('21', 'D', '2016-02-28 03:37:36', null);
INSERT INTO `tbl_feedbacks` VALUES ('22', 'COMMENT', '2016-02-28 03:37:59', null);
INSERT INTO `tbl_feedbacks` VALUES ('23', 'COMMENT', '2016-02-28 03:38:11', null);
INSERT INTO `tbl_feedbacks` VALUES ('24', 'COMMENT', '2016-02-28 03:38:25', null);

-- ----------------------------
-- Table structure for tbl_feedback_questions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedback_questions`;
CREATE TABLE `tbl_feedback_questions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `en_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kh_question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_feedback_questions
-- ----------------------------
INSERT INTO `tbl_feedback_questions` VALUES ('1', 'Effective', 'Effective', 'Die?', 'Die?', '1', '0000-00-00 00:00:00', '2016-02-28 06:39:40');
INSERT INTO `tbl_feedback_questions` VALUES ('2', 'Fee', 'Fee', 'Expensive?', 'Expensive?', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:07');
INSERT INTO `tbl_feedback_questions` VALUES ('3', 'Service', 'Service', 'Bad?', 'Bad', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:58');
INSERT INTO `tbl_feedback_questions` VALUES ('4', 'ABC', 'sdf', 'How you satisfy this hospital?', 'How you satisfy this hospital?', '1', '0000-00-00 00:00:00', '2016-02-28 08:43:56');

-- ----------------------------
-- Table structure for tbl_feedback_scores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedback_scores`;
CREATE TABLE `tbl_feedback_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_feedback` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_feedback_scores
-- ----------------------------
INSERT INTO `tbl_feedback_scores` VALUES ('45', '16', '1', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('46', '16', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('47', '16', '3', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('48', '16', '4', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('49', '17', '1', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('50', '17', '2', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('51', '17', '3', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('52', '17', '4', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('53', '18', '1', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('54', '18', '2', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('55', '18', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('56', '18', '4', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('57', '19', '1', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('58', '19', '2', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('59', '19', '3', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('60', '19', '4', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('61', '20', '1', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('62', '20', '2', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('63', '20', '3', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('64', '20', '4', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('65', '21', '1', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('66', '21', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('67', '21', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('68', '21', '4', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('69', '22', '1', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('70', '22', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('71', '22', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('72', '22', '4', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('73', '23', '1', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('74', '23', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('75', '23', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('76', '23', '4', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('77', '24', '1', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('78', '24', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('79', '24', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('80', '24', '4', '4');

-- ----------------------------
-- Table structure for tbl_health_consultants
-- ----------------------------
DROP TABLE IF EXISTS `tbl_health_consultants`;
CREATE TABLE `tbl_health_consultants` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_health_consultants
-- ----------------------------
INSERT INTO `tbl_health_consultants` VALUES ('1', 'Dara Sambath', 'M', '32', '098343334443', 'xxx@asdf.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('2', '', 'M', '', '', '', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:48:43');
INSERT INTO `tbl_health_consultants` VALUES ('3', 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'Please help me', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('4', 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'Please help me', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:49:57');
INSERT INTO `tbl_health_consultants` VALUES ('5', 'Tekly', 'M', '12', '098343334443', 'sathyayoeun02@gmail.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'kmk', '0', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('6', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('7', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '1', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('8', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '1', '1', '0', '2016-03-10 16:36:46', '2016-03-10 16:36:46', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('9', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:12:01', '2016-03-04 05:12:01', 'Lou teak souy', 'XXXX', '1', '1', '0', '2016-03-10 15:26:35', '2016-03-10 15:26:35', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('10', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:15:40', '2016-03-04 05:15:40', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('11', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:18:32', '2016-03-04 05:18:32', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('12', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:20:23', '2016-03-04 05:20:23', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('13', 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:22:21', '2016-03-04 05:22:21', 'xx', 'yy', '0', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('14', 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:23:12', '2016-03-04 05:23:12', 'xx', 'yy', '0', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_horizontal_ads_dispays
-- ----------------------------
DROP TABLE IF EXISTS `tbl_horizontal_ads_dispays`;
CREATE TABLE `tbl_horizontal_ads_dispays` (
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_horizontal_ads_dispays
-- ----------------------------
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('1', '11', '1', '2', '', '0', '0', '0000-00-00 00:00:00', '2016-02-03 02:58:17');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('2', '11', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-02-03 03:05:09');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('3', '11', '2', '4', '', '0', '0', '0000-00-00 00:00:00', '2016-02-04 17:43:18');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('4', '11', '1', '5', '', '1', '0', '0000-00-00 00:00:00', '2016-02-04 17:45:04');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('5', '2', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-02-04 18:20:16');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('6', '3', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-02-04 18:23:15');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('7', '2', '1', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-12 17:28:10');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('8', '15', '1', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-12 17:33:00');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('9', '15', '2', '43', '', '1', '0', '0000-00-00 00:00:00', '2016-03-12 17:34:32');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('10', '2', '2', '43', '', '1', '0', '0000-00-00 00:00:00', '2016-03-12 17:35:32');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('12', '21', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-12 20:20:26');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('13', '12', '1', '1', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:34:54');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('14', '4', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:35:43');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('15', '5', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:36:19');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('16', '16', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:37:33');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('17', '14', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:38:48');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('18', '22', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 01:39:40');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('19', '19', '3', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 02:12:21');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('20', '7', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 02:15:29');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('21', '9', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 02:23:54');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('22', '8', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 02:29:24');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('23', '6', '3', '2', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 04:57:26');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('24', '20', '1', '3', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 05:02:13');
INSERT INTO `tbl_horizontal_ads_dispays` VALUES ('25', '18', '1', '6', '', '1', '0', '0000-00-00 00:00:00', '2016-03-13 05:02:55');

-- ----------------------------
-- Table structure for tbl_hospitals
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospitals`;
CREATE TABLE `tbl_hospitals` (
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospitals
-- ----------------------------
INSERT INTO `tbl_hospitals` VALUES ('1', 'Cha rey ', 'ចារី', 'b', 'asdf', '<p>asd</p>', '<p>b</p>', '1', '2', '13', '2', '1-Cha-rey-', 'uploads/hostpitals/hostpital567eb590bea11.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-26 17:00:47', '0');
INSERT INTO `tbl_hospitals` VALUES ('3', 'kalemeth', 'កាលម៉ែត', 'a', 'asdf', '<p>sdaf</p>', '<p>asdf</p>', '1', '2', '13', '2', '3-kalemeth', 'uploads/hostpitals/hostpital567eb291a46d8.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-28 02:55:43', '0');
INSERT INTO `tbl_hospitals` VALUES ('4', 'Ong Doung', 'អង្គដួង', 'z', '', 'z', 'z', '1', '2', '13', '2', '4-Ong-Doung', 'uploads/hostpitals/hostpital567eb64e77713.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-26 16:46:22', '0');
INSERT INTO `tbl_hospitals` VALUES ('5', 'Rusia', 'រូស៊ី', 'a', '', 'a', 'a', '1', '2', '13', '2', '5-Rusia', 'uploads/hostpitals/hostpital567eb6b9d4935.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 12:57:21', '0');
INSERT INTO `tbl_hospitals` VALUES ('6', 'khemara', 'រូស៊ី khemara', 'a', 'Ma', '<p style=\"text-align: justify;\">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style=\"text-align: justify;\">CORE VALUES</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style=\"text-align: justify;\">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style=\"text-align: justify;\">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style=\"text-align: justify;\">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style=\"text-align: justify;\">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style=\"text-align: justify;\">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style=\"text-align: justify;\">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '<p style=\"text-align: justify;\">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style=\"text-align: justify;\">CORE VALUES</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style=\"text-align: justify;\">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style=\"text-align: justify;\">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style=\"text-align: justify;\">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style=\"text-align: justify;\">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style=\"text-align: justify;\">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style=\"text-align: justify;\">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '1', '2', '13', '2', '6-khemara', 'uploads/hostpitals/hostpital567eb74771b46.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-22 16:02:13', '0');
INSERT INTO `tbl_hospitals` VALUES ('7', 'Japen', 'ជប៉ុន', 'c', 'a', 'c', 'c', '1', '2', '14', '2', '7-Japen', 'uploads/hostpitals/hostpital567eb792755fe.jpg', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-13 10:38:31', '0');
INSERT INTO `tbl_hospitals` VALUES ('8', 'Veathnam', 'វៀតណាមVeathnam', 'v', '', 'v', 'v', '1', '2', '13', '2', '8-Veathnam', 'uploads/hostpitals/hostpital567eb7e59dba2.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-01 12:31:10', '0');
INSERT INTO `tbl_hospitals` VALUES ('9', 'china', 'មន្ទីពេទ្យchina', 'c', '', 'c', 'c', '1', '2', '13', '2', '9-china', 'uploads/hostpitals/hostpital567eb85501eef.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:53:31', '0');
INSERT INTO `tbl_hospitals` VALUES ('10', 'Brazil', 'មន្ទីពេទ្យBrazil', 'z', '', 'z', 'z', '1', '2', '13', '2', '10-Brazil', 'uploads/hostpitals/hostpital567eb88c7391a.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:49:42', '0');
INSERT INTO `tbl_hospitals` VALUES ('11', 'Thailand', 'មន្ទីពេទ្យThailand', 't', '', 't', 't', '1', '2', '13', '2', '11-Thailand', 'uploads/hostpitals/hostpital567eb8bfc3215.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:42:23', '0');
INSERT INTO `tbl_hospitals` VALUES ('12', 'Vathanak', 'មន្ទីពេទ្យVathanak', 'v', '', 'v', 'v', '1', '2', '13', '2', '12-Vathanak', 'uploads/hostpitals/hostpital567eb8f29e1ac.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:06:58', '0');
INSERT INTO `tbl_hospitals` VALUES ('13', 'baka', 'មន្ទីពេទ្យbaka', 'b', 'ss', '<p>b</p>', '<p>b</p>', '1', '2', '13', '2', '13-baka', 'uploads/hostpitals/hostpital567eb9209609f.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-04 13:44:04', '0');
INSERT INTO `tbl_hospitals` VALUES ('14', 'Mama', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', '1', '2', '13', '2', '14-Mama', 'uploads/hostpitals/hostpital567eb94c64b87.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:10', '0');
INSERT INTO `tbl_hospitals` VALUES ('15', 'Seyha', 'មន្ទីពេទ្យseyha', 's', '', 's', 's', '1', '2', '13', '2', '15-Seyha', 'uploads/hostpitals/hostpital567eb97881b2b.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:46', '0');
INSERT INTO `tbl_hospitals` VALUES ('16', 'Digo', 'មន្ទីពេទ្យDigo', 'Mr Tekly', 'Tekly', '<p>d</p>', '<p>d</p>', '1', '2', '13', '2', '16-Digo', 'uploads/hostpitals/hostpital567eb9af56f47.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-14 08:27:00', '0');
INSERT INTO `tbl_hospitals` VALUES ('17', 'Java', 'មន្ទីពេទ្យjava', 'j', '', 'j', 'j', '1', '2', '13', '2', '17-Java', 'uploads/hostpitals/hostpital567eba115501f.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:54:11', '0');
INSERT INTO `tbl_hospitals` VALUES ('18', 'Kakan', 'មន្ទីពេទ្យkakan', 'k', '', 'k', 'k', '1', '2', '13', '2', '18-Kakan', 'uploads/hostpitals/hostpital567eba5082d43.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:51:37', '0');
INSERT INTO `tbl_hospitals` VALUES ('19', 'lala', 'មន្ទីពេទ្យlala', 'l', '', 'l', 'l', '1', '2', '13', '2', '19-lala', 'uploads/hostpitals/hostpital567ebb8bbda16.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:50:26', '0');
INSERT INTO `tbl_hospitals` VALUES ('20', 'pippo', 'មន្ទីពេទ្យpippo', 'p', 's', '<p>p</p>', '<p>p</p>', '1', '2', '13', '2', '20-pippo', 'uploads/hostpitals/hostpital567ebbbc8f732.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-26 02:17:33', '0');
INSERT INTO `tbl_hospitals` VALUES ('21', 'yoyo', 'មន្ទីពេទ្យyoyo', 'y', 'abc', 'y', 'y', '1', '2', '14', '2', '21-yoyo', 'uploads/hostpitals/hostpital567ebbf373176.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-24 17:49:58', '1');
INSERT INTO `tbl_hospitals` VALUES ('22', 'tata', 'មន្ទីពេទ្យtata', 'a', '', 'a', 'a', '1', '2', '13', '2', '22-tata', 'uploads/hostpitals/hostpital567ebc28d264f.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:52', '0');
INSERT INTO `tbl_hospitals` VALUES ('23', 'rara', 'មន្ទីពេទ្យ', 'a', 'a', '', '', '1', '2', '13', '2', '23-rara', 'uploads/hostpitals/hostpital567ebc56d9f2d.jpg', '1', '2', '1', '0000-00-00 00:00:00', '2016-03-12 19:54:19', '0');
INSERT INTO `tbl_hospitals` VALUES ('24', 'dadad', 'មន្ទីពេទ្យdadad', 'd', '', 'd', 'd', '1', '2', '13', '2', '24-dadad', 'uploads/hostpitals/hostpital567ebc7e94049.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:54', '0');
INSERT INTO `tbl_hospitals` VALUES ('25', 'vavaha', 'មន្ទីពេទ្យvavaha', 'v', '', 'v', 'v', '1', '2', '13', '2', '25-vavaha', 'uploads/hostpitals/hostpital567ebcf145939.jpg', '1', '3', '1', '0000-00-00 00:00:00', '2015-12-29 05:32:00', '0');
INSERT INTO `tbl_hospitals` VALUES ('26', 'virak', 'មន្ទីពេទ្យvirak', 'b', '', 'b', 'b', '1', '2', '13', '2', '26-virak', 'uploads/hostpitals/hostpital567ebd42c7a15.jpg', '1', '1', '1', '0000-00-00 00:00:00', '2015-12-29 05:30:48', '0');
INSERT INTO `tbl_hospitals` VALUES ('27', 'nana', 'មន្ទីពេទ្យnana', 'b', '', 'b', 'b', '1', '2', '13', '2', '27-nana', 'uploads/hostpitals/hostpital567ebd6e8d3b5.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:27:46', '0');
INSERT INTO `tbl_hospitals` VALUES ('28', 'domo', 'មន្ទីពេទ្យdomo', 'v', '', 'v', 'v', '1', '2', '13', '2', '28-domo', 'uploads/hostpitals/hostpital567ebdac70aa0.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:27:14', '0');
INSERT INTO `tbl_hospitals` VALUES ('29', 'baza', 'មន្ទីពេទ្យbaza', 'z', '', 'z', 'z', '1', '2', '13', '2', '29-baza', 'uploads/hostpitals/hostpital567ebe1e3f0f8.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:24:19', '0');
INSERT INTO `tbl_hospitals` VALUES ('30', 'neymar', 'មន្ទីពេទ្យneymar', 'n', '', 'n', 'n', '1', '2', '13', '2', '30-neymar', 'uploads/hostpitals/hostpital567ebe625e332.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:39', '0');
INSERT INTO `tbl_hospitals` VALUES ('31', 'modo', 'មន្ទីពេទ្យmodo', 'f', '', 'f', 'f', '1', '2', '13', '2', '31-modo', 'uploads/hostpitals/hostpital567ebe946bde8.jpg', '1', '5', '1', '0000-00-00 00:00:00', '2015-12-29 05:19:59', '0');
INSERT INTO `tbl_hospitals` VALUES ('32', 'mili', 'មន្ទីពេទ្យmili', 'f', '', 'n', 'a', '1', '2', '13', '2', '32-mili', 'uploads/hostpitals/hostpital567ebec789876.jpg', '1', '4', '1', '0000-00-00 00:00:00', '2015-12-29 05:21:33', '0');
INSERT INTO `tbl_hospitals` VALUES ('33', 'momo', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', '1', '2', '13', '2', '33-momo', 'uploads/hostpitals/hostpital567ebefc626ce.jpg', '1', '7', '1', '0000-00-00 00:00:00', '2015-12-26 17:23:24', '0');
INSERT INTO `tbl_hospitals` VALUES ('34', 'sokkema', 'មន្ទីពេទ្យ', 'k', '', 'k', 'k', '1', '2', '13', '2', '34-sokkema', 'uploads/hostpitals/hostpital567f494516128.jpg', '1', '6', '1', '0000-00-00 00:00:00', '2015-12-27 03:13:25', '0');
INSERT INTO `tbl_hospitals` VALUES ('35', 'Z8', 'Z8', 'c', 'C', '<p>c</p>', '<p>v</p>', '1', '2', '14', '2', '35-Z8', 'uploads/hostpitals/hostpital567f499cbdda1.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-24 13:35:05', '1');
INSERT INTO `tbl_hospitals` VALUES ('36', 'ZJ', 'ZJ', 'sa', 'SA', '<p>sa</p>\r\n', '<p>sa</p>\r\n', '1', '2', '13', '2', '36-ZJ', 'uploads/hostpitals/hostpital567f49dec9ae1.jpg', '1', '2', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:12', '0');
INSERT INTO `tbl_hospitals` VALUES ('37', 'ZI', 'ZI', 'ra', 'RA', '<p>ra</p>\r\n', '<p>ra</p>\r\n', '1', '2', '13', '2', '37-ZI', 'uploads/hostpitals/hostpital567f4a2007a6d.jpg', '1', '1', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:15', '0');
INSERT INTO `tbl_hospitals` VALUES ('38', 'ZH', 'ZH', 'c', 'C', '<p>c</p>\r\n', '<p>c</p>\r\n', '1', '2', '13', '2', '38-ZH', 'uploads/hostpitals/hostpital567f4a54bc65a.jpg', '1', '3', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:17', '0');
INSERT INTO `tbl_hospitals` VALUES ('39', 'ZG', 'ZG', 'v', 'V', '<p>v</p>\r\n', '<p>v</p>\r\n', '1', '2', '13', '2', '39-ZG', 'uploads/hostpitals/hostpital567f4a886d3b9.jpg', '1', '4', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:19', '0');
INSERT INTO `tbl_hospitals` VALUES ('40', 'ZF', 'ZF', 'ch', 'CH', '<p>ch</p>\r\n', '<p>ch</p>\r\n', '1', '2', '13', '2', '40-ZF', 'uploads/hostpitals/hostpital567f4ad206da2.jpg', '1', '5', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:22', '0');
INSERT INTO `tbl_hospitals` VALUES ('41', 'ZE', 'ZE', 'k', 'K', '<p>k</p>\r\n', '<p>k</p>\r\n', '1', '2', '13', '2', '41-ZE', 'uploads/hostpitals/hostpital567f4b347cc90.jpg', '1', '6', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:24', '0');
INSERT INTO `tbl_hospitals` VALUES ('42', 'ZD', 'ZD', 'vi', 'VI', '<p>vi</p>', '<p>vi</p>', '1', '2', '13', '2', '42-ZD', 'uploads/hostpitals/hostpital567f4b6edbaf7.jpg', '1', '7', '1', '0000-00-00 00:00:00', '2016-03-04 05:34:07', '0');
INSERT INTO `tbl_hospitals` VALUES ('43', 'ZC', 'ZC', 'gi', 'GI', '<p>gi</p>', '<p>gi</p>', '1', '2', '14', '2', '43-ZC', 'uploads/hostpitals/hostpital567f4ba3aa320.jpg', '1', '8', '1', '0000-00-00 00:00:00', '2016-03-13 10:01:40', '0');
INSERT INTO `tbl_hospitals` VALUES ('44', 'ZB', 'ZB', 'af', 'AF', '<p>af</p>', '<p>af</p>', '1', '2', '14', '2', '44-ZB', 'uploads/hostpitals/hostpital567f4bdd8c814.jpg', '1', '9', '1', '0000-00-00 00:00:00', '2016-03-13 10:01:32', '0');
INSERT INTO `tbl_hospitals` VALUES ('45', 'ZA', 'ZA', 'as', 'Mr XXXX', '<p>as</p>', '<p>as</p>', '1', '2', '14', '2', '45-ZA', 'uploads/hostpitals/hostpital567f4c24b8f36.jpg', '1', '10', '1', '0000-00-00 00:00:00', '2016-03-13 10:01:19', '0');

-- ----------------------------
-- Table structure for tbl_hospital_branches
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_branches`;
CREATE TABLE `tbl_hospital_branches` (
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_hospital_branches
-- ----------------------------
INSERT INTO `tbl_hospital_branches` VALUES ('1', '45', 'Head Hoffice', 'Head Hoffice', '1', 'N/A', '09533343434', 'koeun_math@yahoo.com', 'Phnom Penh', 'Phnom Penh', '', '', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-02-28 12:50:18', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('7', '44', 'Sample Test', 'Sample', '1', 'N/A', 'NA', 'a@f.v', 'XXXXXX', 'XXX', '', '', '10.932152', '104.798771', '1', '0000-00-00 00:00:00', '2016-02-28 09:23:55', '21', '6');
INSERT INTO `tbl_hospital_branches` VALUES ('8', '43', 'Takeo', 'Takeo', '1', 'XXX', '011111', 'takeo@xxx.com', 'Takeo', 'Takoe', '', '', '11.585263', '104.90025', '1', '0000-00-00 00:00:00', '2016-02-28 04:37:46', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('9', '42', 'Head Office', 'Head Office', '1', 'N/A', 'N/A', 'koeun_math@yahoo.com', 'Sen Sok', 'Sen Sok', '', '', '11.588374', '104.915357', '1', '0000-00-00 00:00:00', '2016-02-28 04:36:33', '2', '3');
INSERT INTO `tbl_hospital_branches` VALUES ('10', '1', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('11', '3', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('12', '4', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('13', '5', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('14', '6', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('15', '7', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('16', '8', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('17', '9', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('18', '10', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('19', '11', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('20', '12', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('21', '13', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('22', '14', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('23', '15', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('24', '16', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('25', '17', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('26', '18', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('27', '19', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('28', '20', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('29', '21', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('30', '22', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('31', '23', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('32', '24', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('33', '25', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('34', '26', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('35', '27', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('36', '28', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('37', '29', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('38', '30', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('39', '31', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('40', '32', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('41', '33', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('42', '34', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('43', '35', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('44', '36', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('45', '37', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:08', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('46', '38', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('47', '39', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('48', '40', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('49', '41', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('50', '42', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('51', '43', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('52', '44', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('53', '45', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');

-- ----------------------------
-- Table structure for tbl_hospital_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_categories`;
CREATE TABLE `tbl_hospital_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT '0',
  `modified_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_categories
-- ----------------------------
INSERT INTO `tbl_hospital_categories` VALUES ('1', 'Public', 'សធារណ', '1', null);
INSERT INTO `tbl_hospital_categories` VALUES ('2', 'Private', 'Private', '1', null);
INSERT INTO `tbl_hospital_categories` VALUES ('3', 'NGO', 'NGO', '1', null);

-- ----------------------------
-- Table structure for tbl_hospital_codes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_codes`;
CREATE TABLE `tbl_hospital_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '0',
  `disabled_dt` datetime DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hospital_codes
-- ----------------------------
INSERT INTO `tbl_hospital_codes` VALUES ('14', '43', 'A', '1', '2016-02-28 03:36:09', '2016-02-28 15:33:58');
INSERT INTO `tbl_hospital_codes` VALUES ('15', '43', 'B', '1', '2016-02-28 03:36:20', '2016-02-28 15:34:03');
INSERT INTO `tbl_hospital_codes` VALUES ('16', '43', 'C', '1', '2016-02-28 03:36:42', '2016-02-28 15:34:07');
INSERT INTO `tbl_hospital_codes` VALUES ('17', '43', 'D', '1', '2016-02-28 03:37:09', '2016-02-28 15:34:11');
INSERT INTO `tbl_hospital_codes` VALUES ('18', '43', 'E', '1', '2016-02-28 03:37:24', '2016-02-28 15:34:14');
INSERT INTO `tbl_hospital_codes` VALUES ('19', '43', 'F', '1', '2016-02-28 03:37:36', '2016-02-28 15:34:17');
INSERT INTO `tbl_hospital_codes` VALUES ('20', '43', 'G', '1', '2016-02-28 03:37:59', '2016-02-28 15:34:20');
INSERT INTO `tbl_hospital_codes` VALUES ('21', '43', 'H', '1', '2016-02-28 03:38:11', '2016-02-28 15:34:23');
INSERT INTO `tbl_hospital_codes` VALUES ('22', '43', 'I', '1', '2016-02-28 03:38:25', '2016-02-28 15:34:28');
INSERT INTO `tbl_hospital_codes` VALUES ('23', '45', 'fd', null, null, '2016-03-04 08:18:44');
INSERT INTO `tbl_hospital_codes` VALUES ('1621', '1', '100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1622', '1', '100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1623', '1', '100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1624', '1', '100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1625', '1', '100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1626', '1', '100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1627', '1', '100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1628', '1', '100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1629', '1', '100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1630', '1', '100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1631', '1', '101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1632', '1', '101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1633', '1', '101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1634', '1', '101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1635', '1', '101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1636', '1', '101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1637', '1', '101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1638', '1', '101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1639', '1', '101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1640', '1', '101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1641', '1', '102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1642', '1', '102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1643', '1', '102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1644', '1', '102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1645', '1', '102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1646', '1', '102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1647', '1', '102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1648', '1', '102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1649', '1', '102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1650', '1', '102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1651', '1', '103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1652', '1', '103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1653', '1', '103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1654', '1', '103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1655', '1', '103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1656', '1', '103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1657', '1', '103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1658', '1', '103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1659', '1', '103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1660', '1', '103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1661', '1', '104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1662', '1', '104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1663', '1', '104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1664', '1', '104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1665', '1', '104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1666', '1', '104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1667', '1', '104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1668', '1', '104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1669', '1', '104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1670', '1', '104920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1671', '3', '300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1672', '3', '300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1673', '3', '300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1674', '3', '300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1675', '3', '300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1676', '3', '300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1677', '3', '300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1678', '3', '300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1679', '3', '300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1680', '3', '300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1681', '3', '301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1682', '3', '301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1683', '3', '301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1684', '3', '301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1685', '3', '301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1686', '3', '301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1687', '3', '301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1688', '3', '301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1689', '3', '301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1690', '3', '301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1691', '3', '302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1692', '3', '302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1693', '3', '302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1694', '3', '302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1695', '3', '302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1696', '3', '302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1697', '3', '302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1698', '3', '302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1699', '3', '302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1700', '3', '302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1701', '3', '303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1702', '3', '303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1703', '3', '303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1704', '3', '303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1705', '3', '303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1706', '3', '303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1707', '3', '303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1708', '3', '303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1709', '3', '303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1710', '3', '303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1711', '3', '304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1712', '3', '304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1713', '3', '304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1714', '3', '304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1715', '3', '304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1716', '3', '304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1717', '3', '304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1718', '3', '304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1719', '3', '304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1720', '3', '304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1721', '4', '400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1722', '4', '400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1723', '4', '400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1724', '4', '400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1725', '4', '400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1726', '4', '400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1727', '4', '400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1728', '4', '400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1729', '4', '400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1730', '4', '400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1731', '4', '401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1732', '4', '401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1733', '4', '401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1734', '4', '401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1735', '4', '401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1736', '4', '401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1737', '4', '401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1738', '4', '401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1739', '4', '401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1740', '4', '401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1741', '4', '402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1742', '4', '402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1743', '4', '402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1744', '4', '402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1745', '4', '402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1746', '4', '402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1747', '4', '402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1748', '4', '402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1749', '4', '402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1750', '4', '402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1751', '4', '403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1752', '4', '403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1753', '4', '403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1754', '4', '403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1755', '4', '403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1756', '4', '403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1757', '4', '403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1758', '4', '403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1759', '4', '403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1760', '4', '403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1761', '4', '404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1762', '4', '404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1763', '4', '404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1764', '4', '404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1765', '4', '404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1766', '4', '404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1767', '4', '404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1768', '4', '404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1769', '4', '404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1770', '4', '404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1771', '5', '500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1772', '5', '500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1773', '5', '500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1774', '5', '500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1775', '5', '500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1776', '5', '500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1777', '5', '500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1778', '5', '500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1779', '5', '500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1780', '5', '500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1781', '5', '501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1782', '5', '501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1783', '5', '501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1784', '5', '501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1785', '5', '501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1786', '5', '501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1787', '5', '501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1788', '5', '501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1789', '5', '501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1790', '5', '501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1791', '5', '502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1792', '5', '502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1793', '5', '502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1794', '5', '502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1795', '5', '502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1796', '5', '502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1797', '5', '502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1798', '5', '502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1799', '5', '502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1800', '5', '502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1801', '5', '503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1802', '5', '503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1803', '5', '503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1804', '5', '503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1805', '5', '503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1806', '5', '503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1807', '5', '503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1808', '5', '503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1809', '5', '503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1810', '5', '503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1811', '5', '504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1812', '5', '504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1813', '5', '504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1814', '5', '504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1815', '5', '504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1816', '5', '504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1817', '5', '504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1818', '5', '504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1819', '5', '504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1820', '5', '504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1821', '6', '600020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1822', '6', '600120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1823', '6', '600220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1824', '6', '600320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1825', '6', '600420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1826', '6', '600520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1827', '6', '600620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1828', '6', '600720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1829', '6', '600820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1830', '6', '600920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1831', '6', '601020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1832', '6', '601120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1833', '6', '601220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1834', '6', '601320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1835', '6', '601420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1836', '6', '601520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1837', '6', '601620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1838', '6', '601720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1839', '6', '601820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1840', '6', '601920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1841', '6', '602020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1842', '6', '602120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1843', '6', '602220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1844', '6', '602320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1845', '6', '602420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1846', '6', '602520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1847', '6', '602620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1848', '6', '602720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1849', '6', '602820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1850', '6', '602920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1851', '6', '603020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1852', '6', '603120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1853', '6', '603220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1854', '6', '603320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1855', '6', '603420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1856', '6', '603520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1857', '6', '603620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1858', '6', '603720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1859', '6', '603820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1860', '6', '603920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1861', '6', '604020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1862', '6', '604120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1863', '6', '604220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1864', '6', '604320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1865', '6', '604420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1866', '6', '604520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1867', '6', '604620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1868', '6', '604720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1869', '6', '604820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1870', '6', '604920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1871', '7', '700020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1872', '7', '700120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1873', '7', '700220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1874', '7', '700320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1875', '7', '700420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1876', '7', '700520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1877', '7', '700620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1878', '7', '700720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1879', '7', '700820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1880', '7', '700920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1881', '7', '701020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1882', '7', '701120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1883', '7', '701220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1884', '7', '701320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1885', '7', '701420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1886', '7', '701520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1887', '7', '701620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1888', '7', '701720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1889', '7', '701820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1890', '7', '701920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1891', '7', '702020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1892', '7', '702120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1893', '7', '702220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1894', '7', '702320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1895', '7', '702420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1896', '7', '702520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1897', '7', '702620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1898', '7', '702720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1899', '7', '702820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1900', '7', '702920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1901', '7', '703020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1902', '7', '703120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1903', '7', '703220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1904', '7', '703320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1905', '7', '703420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1906', '7', '703520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1907', '7', '703620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1908', '7', '703720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1909', '7', '703820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1910', '7', '703920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1911', '7', '704020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1912', '7', '704120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1913', '7', '704220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1914', '7', '704320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1915', '7', '704420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1916', '7', '704520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1917', '7', '704620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1918', '7', '704720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1919', '7', '704820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1920', '7', '704920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1921', '8', '800020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1922', '8', '800120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1923', '8', '800220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1924', '8', '800320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1925', '8', '800420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1926', '8', '800520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1927', '8', '800620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1928', '8', '800720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1929', '8', '800820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1930', '8', '800920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1931', '8', '801020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1932', '8', '801120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1933', '8', '801220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1934', '8', '801320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1935', '8', '801420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1936', '8', '801520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1937', '8', '801620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1938', '8', '801720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1939', '8', '801820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1940', '8', '801920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1941', '8', '802020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1942', '8', '802120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1943', '8', '802220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1944', '8', '802320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1945', '8', '802420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1946', '8', '802520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1947', '8', '802620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1948', '8', '802720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1949', '8', '802820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1950', '8', '802920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1951', '8', '803020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1952', '8', '803120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1953', '8', '803220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1954', '8', '803320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1955', '8', '803420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1956', '8', '803520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1957', '8', '803620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1958', '8', '803720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1959', '8', '803820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1960', '8', '803920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1961', '8', '804020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1962', '8', '804120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1963', '8', '804220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1964', '8', '804320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1965', '8', '804420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1966', '8', '804520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1967', '8', '804620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1968', '8', '804720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1969', '8', '804820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1970', '8', '804920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1971', '9', '900020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1972', '9', '900120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1973', '9', '900220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1974', '9', '900320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1975', '9', '900420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1976', '9', '900520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1977', '9', '900620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1978', '9', '900720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1979', '9', '900820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1980', '9', '900920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1981', '9', '901020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1982', '9', '901120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1983', '9', '901220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1984', '9', '901320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1985', '9', '901420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1986', '9', '901520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1987', '9', '901620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1988', '9', '901720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1989', '9', '901820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1990', '9', '901920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1991', '9', '902020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1992', '9', '902120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1993', '9', '902220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1994', '9', '902320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1995', '9', '902420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1996', '9', '902520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1997', '9', '902620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1998', '9', '902720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('1999', '9', '902820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2000', '9', '902920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2001', '9', '903020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2002', '9', '903120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2003', '9', '903220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2004', '9', '903320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2005', '9', '903420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2006', '9', '903520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2007', '9', '903620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2008', '9', '903720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2009', '9', '903820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2010', '9', '903920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2011', '9', '904020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2012', '9', '904120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2013', '9', '904220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2014', '9', '904320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2015', '9', '904420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2016', '9', '904520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2017', '9', '904620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2018', '9', '904720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2019', '9', '904820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2020', '9', '904920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2021', '10', '1000020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2022', '10', '1000120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2023', '10', '1000220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2024', '10', '1000320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2025', '10', '1000420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2026', '10', '1000520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2027', '10', '1000620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2028', '10', '1000720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2029', '10', '1000820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2030', '10', '1000920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2031', '10', '1001020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2032', '10', '1001120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2033', '10', '1001220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2034', '10', '1001320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2035', '10', '1001420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2036', '10', '1001520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2037', '10', '1001620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2038', '10', '1001720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2039', '10', '1001820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2040', '10', '1001920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2041', '10', '1002020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2042', '10', '1002120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2043', '10', '1002220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2044', '10', '1002320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2045', '10', '1002420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2046', '10', '1002520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2047', '10', '1002620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2048', '10', '1002720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2049', '10', '1002820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2050', '10', '1002920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2051', '10', '1003020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2052', '10', '1003120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2053', '10', '1003220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2054', '10', '1003320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2055', '10', '1003420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2056', '10', '1003520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2057', '10', '1003620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2058', '10', '1003720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2059', '10', '1003820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2060', '10', '1003920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2061', '10', '1004020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2062', '10', '1004120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2063', '10', '1004220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2064', '10', '1004320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2065', '10', '1004420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2066', '10', '1004520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2067', '10', '1004620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2068', '10', '1004720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2069', '10', '1004820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2070', '10', '1004920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2071', '11', '1100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2072', '11', '1100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2073', '11', '1100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2074', '11', '1100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2075', '11', '1100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2076', '11', '1100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2077', '11', '1100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2078', '11', '1100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2079', '11', '1100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2080', '11', '1100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2081', '11', '1101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2082', '11', '1101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2083', '11', '1101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2084', '11', '1101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2085', '11', '1101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2086', '11', '1101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2087', '11', '1101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2088', '11', '1101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2089', '11', '1101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2090', '11', '1101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2091', '11', '1102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2092', '11', '1102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2093', '11', '1102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2094', '11', '1102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2095', '11', '1102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2096', '11', '1102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2097', '11', '1102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2098', '11', '1102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2099', '11', '1102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2100', '11', '1102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2101', '11', '1103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2102', '11', '1103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2103', '11', '1103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2104', '11', '1103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2105', '11', '1103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2106', '11', '1103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2107', '11', '1103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2108', '11', '1103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2109', '11', '1103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2110', '11', '1103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2111', '11', '1104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2112', '11', '1104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2113', '11', '1104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2114', '11', '1104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2115', '11', '1104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2116', '11', '1104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2117', '11', '1104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2118', '11', '1104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2119', '11', '1104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2120', '11', '1104920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2121', '12', '1200020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2122', '12', '1200120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2123', '12', '1200220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2124', '12', '1200320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2125', '12', '1200420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2126', '12', '1200520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2127', '12', '1200620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2128', '12', '1200720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2129', '12', '1200820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2130', '12', '1200920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2131', '12', '1201020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2132', '12', '1201120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2133', '12', '1201220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2134', '12', '1201320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2135', '12', '1201420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2136', '12', '1201520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2137', '12', '1201620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2138', '12', '1201720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2139', '12', '1201820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2140', '12', '1201920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2141', '12', '1202020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2142', '12', '1202120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2143', '12', '1202220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2144', '12', '1202320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2145', '12', '1202420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2146', '12', '1202520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2147', '12', '1202620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2148', '12', '1202720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2149', '12', '1202820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2150', '12', '1202920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2151', '12', '1203020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2152', '12', '1203120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2153', '12', '1203220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2154', '12', '1203320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2155', '12', '1203420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2156', '12', '1203520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2157', '12', '1203620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2158', '12', '1203720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2159', '12', '1203820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2160', '12', '1203920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2161', '12', '1204020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2162', '12', '1204120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2163', '12', '1204220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2164', '12', '1204320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2165', '12', '1204420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2166', '12', '1204520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2167', '12', '1204620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2168', '12', '1204720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2169', '12', '1204820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2170', '12', '1204920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2171', '13', '1300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2172', '13', '1300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2173', '13', '1300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2174', '13', '1300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2175', '13', '1300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2176', '13', '1300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2177', '13', '1300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2178', '13', '1300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2179', '13', '1300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2180', '13', '1300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2181', '13', '1301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2182', '13', '1301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2183', '13', '1301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2184', '13', '1301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2185', '13', '1301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2186', '13', '1301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2187', '13', '1301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2188', '13', '1301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2189', '13', '1301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2190', '13', '1301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2191', '13', '1302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2192', '13', '1302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2193', '13', '1302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2194', '13', '1302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2195', '13', '1302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2196', '13', '1302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2197', '13', '1302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2198', '13', '1302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2199', '13', '1302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2200', '13', '1302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2201', '13', '1303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2202', '13', '1303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2203', '13', '1303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2204', '13', '1303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2205', '13', '1303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2206', '13', '1303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2207', '13', '1303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2208', '13', '1303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2209', '13', '1303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2210', '13', '1303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2211', '13', '1304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2212', '13', '1304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2213', '13', '1304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2214', '13', '1304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2215', '13', '1304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2216', '13', '1304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2217', '13', '1304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2218', '13', '1304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2219', '13', '1304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2220', '13', '1304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2221', '14', '1400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2222', '14', '1400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2223', '14', '1400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2224', '14', '1400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2225', '14', '1400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2226', '14', '1400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2227', '14', '1400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2228', '14', '1400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2229', '14', '1400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2230', '14', '1400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2231', '14', '1401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2232', '14', '1401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2233', '14', '1401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2234', '14', '1401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2235', '14', '1401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2236', '14', '1401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2237', '14', '1401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2238', '14', '1401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2239', '14', '1401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2240', '14', '1401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2241', '14', '1402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2242', '14', '1402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2243', '14', '1402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2244', '14', '1402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2245', '14', '1402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2246', '14', '1402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2247', '14', '1402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2248', '14', '1402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2249', '14', '1402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2250', '14', '1402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2251', '14', '1403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2252', '14', '1403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2253', '14', '1403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2254', '14', '1403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2255', '14', '1403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2256', '14', '1403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2257', '14', '1403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2258', '14', '1403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2259', '14', '1403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2260', '14', '1403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2261', '14', '1404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2262', '14', '1404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2263', '14', '1404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2264', '14', '1404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2265', '14', '1404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2266', '14', '1404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2267', '14', '1404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2268', '14', '1404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2269', '14', '1404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2270', '14', '1404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2271', '15', '1500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2272', '15', '1500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2273', '15', '1500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2274', '15', '1500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2275', '15', '1500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2276', '15', '1500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2277', '15', '1500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2278', '15', '1500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2279', '15', '1500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2280', '15', '1500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2281', '15', '1501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2282', '15', '1501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2283', '15', '1501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2284', '15', '1501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2285', '15', '1501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2286', '15', '1501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2287', '15', '1501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2288', '15', '1501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2289', '15', '1501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2290', '15', '1501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2291', '15', '1502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2292', '15', '1502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2293', '15', '1502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2294', '15', '1502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2295', '15', '1502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2296', '15', '1502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2297', '15', '1502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2298', '15', '1502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2299', '15', '1502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2300', '15', '1502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2301', '15', '1503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2302', '15', '1503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2303', '15', '1503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2304', '15', '1503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2305', '15', '1503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2306', '15', '1503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2307', '15', '1503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2308', '15', '1503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2309', '15', '1503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2310', '15', '1503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2311', '15', '1504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2312', '15', '1504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2313', '15', '1504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2314', '15', '1504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2315', '15', '1504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2316', '15', '1504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2317', '15', '1504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2318', '15', '1504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2319', '15', '1504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2320', '15', '1504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2321', '16', '1600020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2322', '16', '1600120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2323', '16', '1600220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2324', '16', '1600320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2325', '16', '1600420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2326', '16', '1600520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2327', '16', '1600620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2328', '16', '1600720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2329', '16', '1600820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2330', '16', '1600920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2331', '16', '1601020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2332', '16', '1601120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2333', '16', '1601220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2334', '16', '1601320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2335', '16', '1601420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2336', '16', '1601520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2337', '16', '1601620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2338', '16', '1601720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2339', '16', '1601820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2340', '16', '1601920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2341', '16', '1602020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2342', '16', '1602120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2343', '16', '1602220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2344', '16', '1602320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2345', '16', '1602420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2346', '16', '1602520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2347', '16', '1602620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2348', '16', '1602720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2349', '16', '1602820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2350', '16', '1602920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2351', '16', '1603020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2352', '16', '1603120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2353', '16', '1603220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2354', '16', '1603320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2355', '16', '1603420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2356', '16', '1603520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2357', '16', '1603620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2358', '16', '1603720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2359', '16', '1603820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2360', '16', '1603920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2361', '16', '1604020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2362', '16', '1604120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2363', '16', '1604220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2364', '16', '1604320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2365', '16', '1604420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2366', '16', '1604520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2367', '16', '1604620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2368', '16', '1604720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2369', '16', '1604820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2370', '16', '1604920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2371', '17', '1700020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2372', '17', '1700120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2373', '17', '1700220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2374', '17', '1700320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2375', '17', '1700420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2376', '17', '1700520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2377', '17', '1700620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2378', '17', '1700720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2379', '17', '1700820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2380', '17', '1700920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2381', '17', '1701020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2382', '17', '1701120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2383', '17', '1701220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2384', '17', '1701320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2385', '17', '1701420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2386', '17', '1701520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2387', '17', '1701620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2388', '17', '1701720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2389', '17', '1701820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2390', '17', '1701920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2391', '17', '1702020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2392', '17', '1702120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2393', '17', '1702220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2394', '17', '1702320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2395', '17', '1702420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2396', '17', '1702520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2397', '17', '1702620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2398', '17', '1702720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2399', '17', '1702820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2400', '17', '1702920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2401', '17', '1703020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2402', '17', '1703120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2403', '17', '1703220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2404', '17', '1703320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2405', '17', '1703420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2406', '17', '1703520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2407', '17', '1703620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2408', '17', '1703720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2409', '17', '1703820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2410', '17', '1703920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2411', '17', '1704020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2412', '17', '1704120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2413', '17', '1704220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2414', '17', '1704320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2415', '17', '1704420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2416', '17', '1704520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2417', '17', '1704620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2418', '17', '1704720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2419', '17', '1704820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2420', '17', '1704920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2421', '18', '1800020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2422', '18', '1800120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2423', '18', '1800220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2424', '18', '1800320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2425', '18', '1800420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2426', '18', '1800520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2427', '18', '1800620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2428', '18', '1800720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2429', '18', '1800820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2430', '18', '1800920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2431', '18', '1801020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2432', '18', '1801120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2433', '18', '1801220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2434', '18', '1801320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2435', '18', '1801420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2436', '18', '1801520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2437', '18', '1801620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2438', '18', '1801720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2439', '18', '1801820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2440', '18', '1801920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2441', '18', '1802020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2442', '18', '1802120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2443', '18', '1802220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2444', '18', '1802320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2445', '18', '1802420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2446', '18', '1802520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2447', '18', '1802620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2448', '18', '1802720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2449', '18', '1802820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2450', '18', '1802920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2451', '18', '1803020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2452', '18', '1803120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2453', '18', '1803220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2454', '18', '1803320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2455', '18', '1803420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2456', '18', '1803520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2457', '18', '1803620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2458', '18', '1803720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2459', '18', '1803820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2460', '18', '1803920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2461', '18', '1804020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2462', '18', '1804120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2463', '18', '1804220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2464', '18', '1804320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2465', '18', '1804420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2466', '18', '1804520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2467', '18', '1804620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2468', '18', '1804720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2469', '18', '1804820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2470', '18', '1804920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2471', '19', '1900020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2472', '19', '1900120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2473', '19', '1900220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2474', '19', '1900320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2475', '19', '1900420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2476', '19', '1900520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2477', '19', '1900620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2478', '19', '1900720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2479', '19', '1900820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2480', '19', '1900920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2481', '19', '1901020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2482', '19', '1901120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2483', '19', '1901220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2484', '19', '1901320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2485', '19', '1901420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2486', '19', '1901520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2487', '19', '1901620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2488', '19', '1901720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2489', '19', '1901820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2490', '19', '1901920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2491', '19', '1902020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2492', '19', '1902120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2493', '19', '1902220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2494', '19', '1902320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2495', '19', '1902420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2496', '19', '1902520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2497', '19', '1902620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2498', '19', '1902720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2499', '19', '1902820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2500', '19', '1902920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2501', '19', '1903020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2502', '19', '1903120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2503', '19', '1903220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2504', '19', '1903320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2505', '19', '1903420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2506', '19', '1903520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2507', '19', '1903620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2508', '19', '1903720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2509', '19', '1903820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2510', '19', '1903920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2511', '19', '1904020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2512', '19', '1904120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2513', '19', '1904220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2514', '19', '1904320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2515', '19', '1904420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2516', '19', '1904520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2517', '19', '1904620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2518', '19', '1904720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2519', '19', '1904820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2520', '19', '1904920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2521', '20', '2000020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2522', '20', '2000120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2523', '20', '2000220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2524', '20', '2000320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2525', '20', '2000420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2526', '20', '2000520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2527', '20', '2000620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2528', '20', '2000720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2529', '20', '2000820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2530', '20', '2000920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2531', '20', '2001020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2532', '20', '2001120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2533', '20', '2001220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2534', '20', '2001320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2535', '20', '2001420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2536', '20', '2001520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2537', '20', '2001620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2538', '20', '2001720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2539', '20', '2001820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2540', '20', '2001920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2541', '20', '2002020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2542', '20', '2002120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2543', '20', '2002220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2544', '20', '2002320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2545', '20', '2002420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2546', '20', '2002520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2547', '20', '2002620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2548', '20', '2002720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2549', '20', '2002820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2550', '20', '2002920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2551', '20', '2003020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2552', '20', '2003120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2553', '20', '2003220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2554', '20', '2003320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2555', '20', '2003420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2556', '20', '2003520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2557', '20', '2003620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2558', '20', '2003720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2559', '20', '2003820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2560', '20', '2003920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2561', '20', '2004020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2562', '20', '2004120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2563', '20', '2004220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2564', '20', '2004320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2565', '20', '2004420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2566', '20', '2004520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2567', '20', '2004620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2568', '20', '2004720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2569', '20', '2004820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2570', '20', '2004920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2571', '21', '2100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2572', '21', '2100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2573', '21', '2100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2574', '21', '2100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2575', '21', '2100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2576', '21', '2100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2577', '21', '2100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2578', '21', '2100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2579', '21', '2100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2580', '21', '2100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2581', '21', '2101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2582', '21', '2101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2583', '21', '2101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2584', '21', '2101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2585', '21', '2101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2586', '21', '2101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2587', '21', '2101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2588', '21', '2101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2589', '21', '2101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2590', '21', '2101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2591', '21', '2102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2592', '21', '2102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2593', '21', '2102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2594', '21', '2102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2595', '21', '2102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2596', '21', '2102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2597', '21', '2102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2598', '21', '2102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2599', '21', '2102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2600', '21', '2102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2601', '21', '2103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2602', '21', '2103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2603', '21', '2103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2604', '21', '2103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2605', '21', '2103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2606', '21', '2103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2607', '21', '2103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2608', '21', '2103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2609', '21', '2103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2610', '21', '2103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2611', '21', '2104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2612', '21', '2104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2613', '21', '2104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2614', '21', '2104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2615', '21', '2104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2616', '21', '2104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2617', '21', '2104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2618', '21', '2104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2619', '21', '2104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2620', '21', '2104920160313', '1', '2016-03-24 05:51:10', null);
INSERT INTO `tbl_hospital_codes` VALUES ('2621', '22', '2200020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2622', '22', '2200120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2623', '22', '2200220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2624', '22', '2200320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2625', '22', '2200420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2626', '22', '2200520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2627', '22', '2200620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2628', '22', '2200720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2629', '22', '2200820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2630', '22', '2200920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2631', '22', '2201020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2632', '22', '2201120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2633', '22', '2201220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2634', '22', '2201320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2635', '22', '2201420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2636', '22', '2201520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2637', '22', '2201620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2638', '22', '2201720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2639', '22', '2201820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2640', '22', '2201920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2641', '22', '2202020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2642', '22', '2202120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2643', '22', '2202220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2644', '22', '2202320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2645', '22', '2202420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2646', '22', '2202520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2647', '22', '2202620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2648', '22', '2202720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2649', '22', '2202820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2650', '22', '2202920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2651', '22', '2203020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2652', '22', '2203120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2653', '22', '2203220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2654', '22', '2203320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2655', '22', '2203420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2656', '22', '2203520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2657', '22', '2203620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2658', '22', '2203720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2659', '22', '2203820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2660', '22', '2203920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2661', '22', '2204020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2662', '22', '2204120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2663', '22', '2204220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2664', '22', '2204320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2665', '22', '2204420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2666', '22', '2204520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2667', '22', '2204620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2668', '22', '2204720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2669', '22', '2204820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2670', '22', '2204920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2671', '23', '2300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2672', '23', '2300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2673', '23', '2300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2674', '23', '2300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2675', '23', '2300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2676', '23', '2300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2677', '23', '2300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2678', '23', '2300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2679', '23', '2300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2680', '23', '2300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2681', '23', '2301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2682', '23', '2301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2683', '23', '2301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2684', '23', '2301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2685', '23', '2301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2686', '23', '2301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2687', '23', '2301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2688', '23', '2301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2689', '23', '2301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2690', '23', '2301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2691', '23', '2302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2692', '23', '2302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2693', '23', '2302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2694', '23', '2302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2695', '23', '2302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2696', '23', '2302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2697', '23', '2302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2698', '23', '2302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2699', '23', '2302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2700', '23', '2302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2701', '23', '2303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2702', '23', '2303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2703', '23', '2303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2704', '23', '2303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2705', '23', '2303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2706', '23', '2303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2707', '23', '2303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2708', '23', '2303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2709', '23', '2303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2710', '23', '2303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2711', '23', '2304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2712', '23', '2304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2713', '23', '2304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2714', '23', '2304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2715', '23', '2304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2716', '23', '2304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2717', '23', '2304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2718', '23', '2304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2719', '23', '2304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2720', '23', '2304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2721', '24', '2400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2722', '24', '2400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2723', '24', '2400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2724', '24', '2400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2725', '24', '2400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2726', '24', '2400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2727', '24', '2400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2728', '24', '2400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2729', '24', '2400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2730', '24', '2400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2731', '24', '2401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2732', '24', '2401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2733', '24', '2401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2734', '24', '2401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2735', '24', '2401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2736', '24', '2401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2737', '24', '2401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2738', '24', '2401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2739', '24', '2401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2740', '24', '2401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2741', '24', '2402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2742', '24', '2402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2743', '24', '2402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2744', '24', '2402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2745', '24', '2402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2746', '24', '2402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2747', '24', '2402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2748', '24', '2402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2749', '24', '2402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2750', '24', '2402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2751', '24', '2403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2752', '24', '2403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2753', '24', '2403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2754', '24', '2403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2755', '24', '2403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2756', '24', '2403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2757', '24', '2403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2758', '24', '2403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2759', '24', '2403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2760', '24', '2403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2761', '24', '2404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2762', '24', '2404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2763', '24', '2404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2764', '24', '2404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2765', '24', '2404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2766', '24', '2404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2767', '24', '2404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2768', '24', '2404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2769', '24', '2404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2770', '24', '2404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2771', '25', '2500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2772', '25', '2500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2773', '25', '2500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2774', '25', '2500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2775', '25', '2500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2776', '25', '2500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2777', '25', '2500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2778', '25', '2500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2779', '25', '2500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2780', '25', '2500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2781', '25', '2501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2782', '25', '2501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2783', '25', '2501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2784', '25', '2501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2785', '25', '2501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2786', '25', '2501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2787', '25', '2501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2788', '25', '2501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2789', '25', '2501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2790', '25', '2501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2791', '25', '2502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2792', '25', '2502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2793', '25', '2502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2794', '25', '2502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2795', '25', '2502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2796', '25', '2502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2797', '25', '2502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2798', '25', '2502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2799', '25', '2502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2800', '25', '2502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2801', '25', '2503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2802', '25', '2503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2803', '25', '2503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2804', '25', '2503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2805', '25', '2503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2806', '25', '2503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2807', '25', '2503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2808', '25', '2503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2809', '25', '2503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2810', '25', '2503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2811', '25', '2504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2812', '25', '2504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2813', '25', '2504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2814', '25', '2504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2815', '25', '2504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2816', '25', '2504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2817', '25', '2504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2818', '25', '2504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2819', '25', '2504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2820', '25', '2504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2821', '26', '2600020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2822', '26', '2600120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2823', '26', '2600220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2824', '26', '2600320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2825', '26', '2600420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2826', '26', '2600520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2827', '26', '2600620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2828', '26', '2600720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2829', '26', '2600820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2830', '26', '2600920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2831', '26', '2601020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2832', '26', '2601120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2833', '26', '2601220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2834', '26', '2601320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2835', '26', '2601420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2836', '26', '2601520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2837', '26', '2601620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2838', '26', '2601720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2839', '26', '2601820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2840', '26', '2601920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2841', '26', '2602020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2842', '26', '2602120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2843', '26', '2602220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2844', '26', '2602320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2845', '26', '2602420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2846', '26', '2602520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2847', '26', '2602620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2848', '26', '2602720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2849', '26', '2602820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2850', '26', '2602920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2851', '26', '2603020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2852', '26', '2603120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2853', '26', '2603220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2854', '26', '2603320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2855', '26', '2603420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2856', '26', '2603520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2857', '26', '2603620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2858', '26', '2603720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2859', '26', '2603820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2860', '26', '2603920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2861', '26', '2604020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2862', '26', '2604120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2863', '26', '2604220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2864', '26', '2604320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2865', '26', '2604420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2866', '26', '2604520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2867', '26', '2604620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2868', '26', '2604720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2869', '26', '2604820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2870', '26', '2604920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2871', '27', '2700020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2872', '27', '2700120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2873', '27', '2700220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2874', '27', '2700320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2875', '27', '2700420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2876', '27', '2700520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2877', '27', '2700620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2878', '27', '2700720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2879', '27', '2700820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2880', '27', '2700920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2881', '27', '2701020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2882', '27', '2701120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2883', '27', '2701220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2884', '27', '2701320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2885', '27', '2701420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2886', '27', '2701520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2887', '27', '2701620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2888', '27', '2701720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2889', '27', '2701820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2890', '27', '2701920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2891', '27', '2702020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2892', '27', '2702120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2893', '27', '2702220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2894', '27', '2702320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2895', '27', '2702420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2896', '27', '2702520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2897', '27', '2702620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2898', '27', '2702720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2899', '27', '2702820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2900', '27', '2702920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2901', '27', '2703020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2902', '27', '2703120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2903', '27', '2703220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2904', '27', '2703320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2905', '27', '2703420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2906', '27', '2703520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2907', '27', '2703620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2908', '27', '2703720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2909', '27', '2703820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2910', '27', '2703920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2911', '27', '2704020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2912', '27', '2704120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2913', '27', '2704220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2914', '27', '2704320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2915', '27', '2704420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2916', '27', '2704520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2917', '27', '2704620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2918', '27', '2704720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2919', '27', '2704820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2920', '27', '2704920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2921', '28', '2800020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2922', '28', '2800120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2923', '28', '2800220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2924', '28', '2800320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2925', '28', '2800420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2926', '28', '2800520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2927', '28', '2800620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2928', '28', '2800720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2929', '28', '2800820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2930', '28', '2800920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2931', '28', '2801020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2932', '28', '2801120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2933', '28', '2801220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2934', '28', '2801320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2935', '28', '2801420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2936', '28', '2801520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2937', '28', '2801620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2938', '28', '2801720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2939', '28', '2801820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2940', '28', '2801920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2941', '28', '2802020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2942', '28', '2802120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2943', '28', '2802220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2944', '28', '2802320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2945', '28', '2802420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2946', '28', '2802520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2947', '28', '2802620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2948', '28', '2802720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2949', '28', '2802820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2950', '28', '2802920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2951', '28', '2803020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2952', '28', '2803120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2953', '28', '2803220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2954', '28', '2803320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2955', '28', '2803420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2956', '28', '2803520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2957', '28', '2803620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2958', '28', '2803720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2959', '28', '2803820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2960', '28', '2803920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2961', '28', '2804020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2962', '28', '2804120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2963', '28', '2804220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2964', '28', '2804320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2965', '28', '2804420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2966', '28', '2804520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2967', '28', '2804620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2968', '28', '2804720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2969', '28', '2804820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2970', '28', '2804920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2971', '29', '2900020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2972', '29', '2900120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2973', '29', '2900220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2974', '29', '2900320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2975', '29', '2900420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2976', '29', '2900520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2977', '29', '2900620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2978', '29', '2900720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2979', '29', '2900820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2980', '29', '2900920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2981', '29', '2901020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2982', '29', '2901120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2983', '29', '2901220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2984', '29', '2901320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2985', '29', '2901420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2986', '29', '2901520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2987', '29', '2901620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2988', '29', '2901720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2989', '29', '2901820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2990', '29', '2901920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2991', '29', '2902020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2992', '29', '2902120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2993', '29', '2902220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2994', '29', '2902320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2995', '29', '2902420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2996', '29', '2902520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2997', '29', '2902620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2998', '29', '2902720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('2999', '29', '2902820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3000', '29', '2902920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3001', '29', '2903020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3002', '29', '2903120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3003', '29', '2903220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3004', '29', '2903320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3005', '29', '2903420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3006', '29', '2903520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3007', '29', '2903620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3008', '29', '2903720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3009', '29', '2903820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3010', '29', '2903920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3011', '29', '2904020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3012', '29', '2904120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3013', '29', '2904220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3014', '29', '2904320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3015', '29', '2904420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3016', '29', '2904520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3017', '29', '2904620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3018', '29', '2904720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3019', '29', '2904820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3020', '29', '2904920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3021', '30', '3000020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3022', '30', '3000120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3023', '30', '3000220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3024', '30', '3000320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3025', '30', '3000420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3026', '30', '3000520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3027', '30', '3000620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3028', '30', '3000720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3029', '30', '3000820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3030', '30', '3000920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3031', '30', '3001020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3032', '30', '3001120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3033', '30', '3001220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3034', '30', '3001320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3035', '30', '3001420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3036', '30', '3001520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3037', '30', '3001620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3038', '30', '3001720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3039', '30', '3001820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3040', '30', '3001920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3041', '30', '3002020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3042', '30', '3002120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3043', '30', '3002220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3044', '30', '3002320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3045', '30', '3002420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3046', '30', '3002520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3047', '30', '3002620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3048', '30', '3002720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3049', '30', '3002820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3050', '30', '3002920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3051', '30', '3003020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3052', '30', '3003120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3053', '30', '3003220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3054', '30', '3003320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3055', '30', '3003420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3056', '30', '3003520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3057', '30', '3003620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3058', '30', '3003720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3059', '30', '3003820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3060', '30', '3003920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3061', '30', '3004020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3062', '30', '3004120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3063', '30', '3004220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3064', '30', '3004320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3065', '30', '3004420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3066', '30', '3004520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3067', '30', '3004620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3068', '30', '3004720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3069', '30', '3004820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3070', '30', '3004920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3071', '31', '3100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3072', '31', '3100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3073', '31', '3100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3074', '31', '3100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3075', '31', '3100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3076', '31', '3100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3077', '31', '3100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3078', '31', '3100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3079', '31', '3100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3080', '31', '3100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3081', '31', '3101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3082', '31', '3101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3083', '31', '3101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3084', '31', '3101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3085', '31', '3101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3086', '31', '3101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3087', '31', '3101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3088', '31', '3101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3089', '31', '3101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3090', '31', '3101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3091', '31', '3102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3092', '31', '3102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3093', '31', '3102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3094', '31', '3102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3095', '31', '3102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3096', '31', '3102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3097', '31', '3102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3098', '31', '3102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3099', '31', '3102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3100', '31', '3102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3101', '31', '3103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3102', '31', '3103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3103', '31', '3103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3104', '31', '3103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3105', '31', '3103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3106', '31', '3103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3107', '31', '3103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3108', '31', '3103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3109', '31', '3103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3110', '31', '3103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3111', '31', '3104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3112', '31', '3104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3113', '31', '3104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3114', '31', '3104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3115', '31', '3104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3116', '31', '3104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3117', '31', '3104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3118', '31', '3104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3119', '31', '3104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3120', '31', '3104920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3121', '32', '3200020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3122', '32', '3200120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3123', '32', '3200220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3124', '32', '3200320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3125', '32', '3200420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3126', '32', '3200520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3127', '32', '3200620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3128', '32', '3200720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3129', '32', '3200820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3130', '32', '3200920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3131', '32', '3201020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3132', '32', '3201120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3133', '32', '3201220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3134', '32', '3201320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3135', '32', '3201420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3136', '32', '3201520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3137', '32', '3201620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3138', '32', '3201720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3139', '32', '3201820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3140', '32', '3201920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3141', '32', '3202020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3142', '32', '3202120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3143', '32', '3202220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3144', '32', '3202320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3145', '32', '3202420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3146', '32', '3202520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3147', '32', '3202620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3148', '32', '3202720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3149', '32', '3202820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3150', '32', '3202920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3151', '32', '3203020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3152', '32', '3203120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3153', '32', '3203220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3154', '32', '3203320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3155', '32', '3203420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3156', '32', '3203520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3157', '32', '3203620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3158', '32', '3203720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3159', '32', '3203820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3160', '32', '3203920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3161', '32', '3204020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3162', '32', '3204120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3163', '32', '3204220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3164', '32', '3204320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3165', '32', '3204420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3166', '32', '3204520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3167', '32', '3204620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3168', '32', '3204720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3169', '32', '3204820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3170', '32', '3204920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3171', '33', '3300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3172', '33', '3300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3173', '33', '3300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3174', '33', '3300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3175', '33', '3300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3176', '33', '3300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3177', '33', '3300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3178', '33', '3300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3179', '33', '3300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3180', '33', '3300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3181', '33', '3301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3182', '33', '3301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3183', '33', '3301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3184', '33', '3301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3185', '33', '3301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3186', '33', '3301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3187', '33', '3301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3188', '33', '3301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3189', '33', '3301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3190', '33', '3301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3191', '33', '3302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3192', '33', '3302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3193', '33', '3302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3194', '33', '3302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3195', '33', '3302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3196', '33', '3302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3197', '33', '3302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3198', '33', '3302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3199', '33', '3302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3200', '33', '3302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3201', '33', '3303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3202', '33', '3303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3203', '33', '3303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3204', '33', '3303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3205', '33', '3303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3206', '33', '3303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3207', '33', '3303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3208', '33', '3303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3209', '33', '3303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3210', '33', '3303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3211', '33', '3304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3212', '33', '3304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3213', '33', '3304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3214', '33', '3304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3215', '33', '3304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3216', '33', '3304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3217', '33', '3304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3218', '33', '3304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3219', '33', '3304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3220', '33', '3304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3221', '34', '3400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3222', '34', '3400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3223', '34', '3400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3224', '34', '3400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3225', '34', '3400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3226', '34', '3400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3227', '34', '3400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3228', '34', '3400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3229', '34', '3400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3230', '34', '3400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3231', '34', '3401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3232', '34', '3401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3233', '34', '3401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3234', '34', '3401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3235', '34', '3401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3236', '34', '3401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3237', '34', '3401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3238', '34', '3401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3239', '34', '3401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3240', '34', '3401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3241', '34', '3402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3242', '34', '3402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3243', '34', '3402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3244', '34', '3402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3245', '34', '3402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3246', '34', '3402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3247', '34', '3402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3248', '34', '3402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3249', '34', '3402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3250', '34', '3402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3251', '34', '3403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3252', '34', '3403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3253', '34', '3403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3254', '34', '3403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3255', '34', '3403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3256', '34', '3403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3257', '34', '3403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3258', '34', '3403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3259', '34', '3403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3260', '34', '3403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3261', '34', '3404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3262', '34', '3404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3263', '34', '3404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3264', '34', '3404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3265', '34', '3404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3266', '34', '3404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3267', '34', '3404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3268', '34', '3404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3269', '34', '3404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3270', '34', '3404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3271', '35', '3500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3272', '35', '3500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3273', '35', '3500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3274', '35', '3500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3275', '35', '3500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3276', '35', '3500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3277', '35', '3500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3278', '35', '3500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3279', '35', '3500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3280', '35', '3500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3281', '35', '3501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3282', '35', '3501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3283', '35', '3501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3284', '35', '3501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3285', '35', '3501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3286', '35', '3501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3287', '35', '3501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3288', '35', '3501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3289', '35', '3501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3290', '35', '3501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3291', '35', '3502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3292', '35', '3502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3293', '35', '3502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3294', '35', '3502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3295', '35', '3502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3296', '35', '3502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3297', '35', '3502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3298', '35', '3502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3299', '35', '3502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3300', '35', '3502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3301', '35', '3503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3302', '35', '3503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3303', '35', '3503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3304', '35', '3503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3305', '35', '3503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3306', '35', '3503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3307', '35', '3503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3308', '35', '3503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3309', '35', '3503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3310', '35', '3503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3311', '35', '3504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3312', '35', '3504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3313', '35', '3504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3314', '35', '3504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3315', '35', '3504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3316', '35', '3504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3317', '35', '3504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3318', '35', '3504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3319', '35', '3504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3320', '35', '3504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3321', '36', '3600020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3322', '36', '3600120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3323', '36', '3600220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3324', '36', '3600320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3325', '36', '3600420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3326', '36', '3600520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3327', '36', '3600620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3328', '36', '3600720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3329', '36', '3600820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3330', '36', '3600920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3331', '36', '3601020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3332', '36', '3601120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3333', '36', '3601220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3334', '36', '3601320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3335', '36', '3601420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3336', '36', '3601520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3337', '36', '3601620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3338', '36', '3601720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3339', '36', '3601820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3340', '36', '3601920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3341', '36', '3602020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3342', '36', '3602120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3343', '36', '3602220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3344', '36', '3602320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3345', '36', '3602420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3346', '36', '3602520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3347', '36', '3602620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3348', '36', '3602720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3349', '36', '3602820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3350', '36', '3602920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3351', '36', '3603020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3352', '36', '3603120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3353', '36', '3603220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3354', '36', '3603320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3355', '36', '3603420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3356', '36', '3603520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3357', '36', '3603620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3358', '36', '3603720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3359', '36', '3603820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3360', '36', '3603920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3361', '36', '3604020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3362', '36', '3604120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3363', '36', '3604220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3364', '36', '3604320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3365', '36', '3604420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3366', '36', '3604520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3367', '36', '3604620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3368', '36', '3604720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3369', '36', '3604820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3370', '36', '3604920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3371', '37', '3700020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3372', '37', '3700120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3373', '37', '3700220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3374', '37', '3700320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3375', '37', '3700420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3376', '37', '3700520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3377', '37', '3700620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3378', '37', '3700720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3379', '37', '3700820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3380', '37', '3700920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3381', '37', '3701020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3382', '37', '3701120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3383', '37', '3701220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3384', '37', '3701320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3385', '37', '3701420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3386', '37', '3701520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3387', '37', '3701620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3388', '37', '3701720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3389', '37', '3701820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3390', '37', '3701920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3391', '37', '3702020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3392', '37', '3702120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3393', '37', '3702220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3394', '37', '3702320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3395', '37', '3702420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3396', '37', '3702520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3397', '37', '3702620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3398', '37', '3702720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3399', '37', '3702820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3400', '37', '3702920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3401', '37', '3703020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3402', '37', '3703120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3403', '37', '3703220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3404', '37', '3703320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3405', '37', '3703420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3406', '37', '3703520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3407', '37', '3703620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3408', '37', '3703720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3409', '37', '3703820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3410', '37', '3703920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3411', '37', '3704020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3412', '37', '3704120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3413', '37', '3704220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3414', '37', '3704320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3415', '37', '3704420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3416', '37', '3704520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3417', '37', '3704620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3418', '37', '3704720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3419', '37', '3704820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3420', '37', '3704920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3421', '38', '3800020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3422', '38', '3800120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3423', '38', '3800220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3424', '38', '3800320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3425', '38', '3800420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3426', '38', '3800520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3427', '38', '3800620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3428', '38', '3800720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3429', '38', '3800820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3430', '38', '3800920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3431', '38', '3801020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3432', '38', '3801120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3433', '38', '3801220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3434', '38', '3801320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3435', '38', '3801420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3436', '38', '3801520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3437', '38', '3801620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3438', '38', '3801720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3439', '38', '3801820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3440', '38', '3801920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3441', '38', '3802020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3442', '38', '3802120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3443', '38', '3802220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3444', '38', '3802320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3445', '38', '3802420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3446', '38', '3802520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3447', '38', '3802620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3448', '38', '3802720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3449', '38', '3802820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3450', '38', '3802920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3451', '38', '3803020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3452', '38', '3803120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3453', '38', '3803220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3454', '38', '3803320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3455', '38', '3803420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3456', '38', '3803520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3457', '38', '3803620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3458', '38', '3803720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3459', '38', '3803820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3460', '38', '3803920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3461', '38', '3804020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3462', '38', '3804120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3463', '38', '3804220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3464', '38', '3804320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3465', '38', '3804420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3466', '38', '3804520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3467', '38', '3804620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3468', '38', '3804720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3469', '38', '3804820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3470', '38', '3804920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3471', '39', '3900020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3472', '39', '3900120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3473', '39', '3900220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3474', '39', '3900320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3475', '39', '3900420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3476', '39', '3900520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3477', '39', '3900620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3478', '39', '3900720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3479', '39', '3900820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3480', '39', '3900920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3481', '39', '3901020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3482', '39', '3901120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3483', '39', '3901220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3484', '39', '3901320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3485', '39', '3901420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3486', '39', '3901520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3487', '39', '3901620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3488', '39', '3901720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3489', '39', '3901820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3490', '39', '3901920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3491', '39', '3902020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3492', '39', '3902120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3493', '39', '3902220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3494', '39', '3902320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3495', '39', '3902420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3496', '39', '3902520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3497', '39', '3902620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3498', '39', '3902720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3499', '39', '3902820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3500', '39', '3902920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3501', '39', '3903020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3502', '39', '3903120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3503', '39', '3903220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3504', '39', '3903320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3505', '39', '3903420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3506', '39', '3903520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3507', '39', '3903620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3508', '39', '3903720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3509', '39', '3903820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3510', '39', '3903920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3511', '39', '3904020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3512', '39', '3904120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3513', '39', '3904220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3514', '39', '3904320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3515', '39', '3904420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3516', '39', '3904520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3517', '39', '3904620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3518', '39', '3904720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3519', '39', '3904820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3520', '39', '3904920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3521', '40', '4000020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3522', '40', '4000120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3523', '40', '4000220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3524', '40', '4000320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3525', '40', '4000420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3526', '40', '4000520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3527', '40', '4000620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3528', '40', '4000720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3529', '40', '4000820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3530', '40', '4000920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3531', '40', '4001020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3532', '40', '4001120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3533', '40', '4001220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3534', '40', '4001320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3535', '40', '4001420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3536', '40', '4001520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3537', '40', '4001620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3538', '40', '4001720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3539', '40', '4001820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3540', '40', '4001920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3541', '40', '4002020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3542', '40', '4002120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3543', '40', '4002220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3544', '40', '4002320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3545', '40', '4002420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3546', '40', '4002520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3547', '40', '4002620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3548', '40', '4002720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3549', '40', '4002820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3550', '40', '4002920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3551', '40', '4003020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3552', '40', '4003120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3553', '40', '4003220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3554', '40', '4003320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3555', '40', '4003420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3556', '40', '4003520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3557', '40', '4003620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3558', '40', '4003720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3559', '40', '4003820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3560', '40', '4003920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3561', '40', '4004020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3562', '40', '4004120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3563', '40', '4004220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3564', '40', '4004320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3565', '40', '4004420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3566', '40', '4004520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3567', '40', '4004620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3568', '40', '4004720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3569', '40', '4004820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3570', '40', '4004920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3571', '41', '4100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3572', '41', '4100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3573', '41', '4100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3574', '41', '4100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3575', '41', '4100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3576', '41', '4100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3577', '41', '4100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3578', '41', '4100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3579', '41', '4100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3580', '41', '4100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3581', '41', '4101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3582', '41', '4101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3583', '41', '4101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3584', '41', '4101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3585', '41', '4101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3586', '41', '4101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3587', '41', '4101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3588', '41', '4101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3589', '41', '4101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3590', '41', '4101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3591', '41', '4102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3592', '41', '4102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3593', '41', '4102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3594', '41', '4102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3595', '41', '4102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3596', '41', '4102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3597', '41', '4102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3598', '41', '4102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3599', '41', '4102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3600', '41', '4102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3601', '41', '4103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3602', '41', '4103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3603', '41', '4103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3604', '41', '4103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3605', '41', '4103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3606', '41', '4103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3607', '41', '4103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3608', '41', '4103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3609', '41', '4103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3610', '41', '4103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3611', '41', '4104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3612', '41', '4104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3613', '41', '4104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3614', '41', '4104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3615', '41', '4104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3616', '41', '4104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3617', '41', '4104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3618', '41', '4104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3619', '41', '4104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3620', '41', '4104920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3621', '42', '4200020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3622', '42', '4200120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3623', '42', '4200220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3624', '42', '4200320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3625', '42', '4200420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3626', '42', '4200520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3627', '42', '4200620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3628', '42', '4200720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3629', '42', '4200820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3630', '42', '4200920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3631', '42', '4201020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3632', '42', '4201120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3633', '42', '4201220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3634', '42', '4201320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3635', '42', '4201420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3636', '42', '4201520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3637', '42', '4201620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3638', '42', '4201720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3639', '42', '4201820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3640', '42', '4201920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3641', '42', '4202020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3642', '42', '4202120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3643', '42', '4202220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3644', '42', '4202320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3645', '42', '4202420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3646', '42', '4202520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3647', '42', '4202620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3648', '42', '4202720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3649', '42', '4202820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3650', '42', '4202920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3651', '42', '4203020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3652', '42', '4203120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3653', '42', '4203220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3654', '42', '4203320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3655', '42', '4203420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3656', '42', '4203520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3657', '42', '4203620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3658', '42', '4203720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3659', '42', '4203820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3660', '42', '4203920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3661', '42', '4204020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3662', '42', '4204120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3663', '42', '4204220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3664', '42', '4204320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3665', '42', '4204420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3666', '42', '4204520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3667', '42', '4204620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3668', '42', '4204720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3669', '42', '4204820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3670', '42', '4204920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3671', '43', '4300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3672', '43', '4300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3673', '43', '4300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3674', '43', '4300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3675', '43', '4300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3676', '43', '4300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3677', '43', '4300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3678', '43', '4300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3679', '43', '4300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3680', '43', '4300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3681', '43', '4301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3682', '43', '4301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3683', '43', '4301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3684', '43', '4301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3685', '43', '4301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3686', '43', '4301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3687', '43', '4301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3688', '43', '4301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3689', '43', '4301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3690', '43', '4301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3691', '43', '4302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3692', '43', '4302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3693', '43', '4302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3694', '43', '4302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3695', '43', '4302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3696', '43', '4302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3697', '43', '4302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3698', '43', '4302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3699', '43', '4302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3700', '43', '4302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3701', '43', '4303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3702', '43', '4303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3703', '43', '4303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3704', '43', '4303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3705', '43', '4303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3706', '43', '4303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3707', '43', '4303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3708', '43', '4303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3709', '43', '4303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3710', '43', '4303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3711', '43', '4304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3712', '43', '4304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3713', '43', '4304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3714', '43', '4304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3715', '43', '4304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3716', '43', '4304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3717', '43', '4304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3718', '43', '4304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3719', '43', '4304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3720', '43', '4304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3721', '44', '4400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3722', '44', '4400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3723', '44', '4400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3724', '44', '4400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3725', '44', '4400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3726', '44', '4400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3727', '44', '4400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3728', '44', '4400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3729', '44', '4400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3730', '44', '4400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3731', '44', '4401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3732', '44', '4401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3733', '44', '4401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3734', '44', '4401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3735', '44', '4401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3736', '44', '4401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3737', '44', '4401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3738', '44', '4401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3739', '44', '4401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3740', '44', '4401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3741', '44', '4402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3742', '44', '4402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3743', '44', '4402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3744', '44', '4402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3745', '44', '4402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3746', '44', '4402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3747', '44', '4402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3748', '44', '4402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3749', '44', '4402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3750', '44', '4402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3751', '44', '4403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3752', '44', '4403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3753', '44', '4403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3754', '44', '4403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3755', '44', '4403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3756', '44', '4403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3757', '44', '4403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3758', '44', '4403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3759', '44', '4403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3760', '44', '4403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3761', '44', '4404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3762', '44', '4404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3763', '44', '4404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3764', '44', '4404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3765', '44', '4404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3766', '44', '4404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3767', '44', '4404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3768', '44', '4404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3769', '44', '4404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3770', '44', '4404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3771', '45', '4500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3772', '45', '4500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3773', '45', '4500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3774', '45', '4500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3775', '45', '4500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3776', '45', '4500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3777', '45', '4500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3778', '45', '4500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3779', '45', '4500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3780', '45', '4500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3781', '45', '4501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3782', '45', '4501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3783', '45', '4501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3784', '45', '4501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3785', '45', '4501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3786', '45', '4501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3787', '45', '4501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3788', '45', '4501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3789', '45', '4501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3790', '45', '4501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3791', '45', '4502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3792', '45', '4502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3793', '45', '4502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3794', '45', '4502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3795', '45', '4502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3796', '45', '4502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3797', '45', '4502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3798', '45', '4502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3799', '45', '4502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3800', '45', '4502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3801', '45', '4503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3802', '45', '4503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3803', '45', '4503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3804', '45', '4503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3805', '45', '4503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3806', '45', '4503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3807', '45', '4503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3808', '45', '4503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3809', '45', '4503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3810', '45', '4503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3811', '45', '4504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3812', '45', '4504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3813', '45', '4504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3814', '45', '4504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3815', '45', '4504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3816', '45', '4504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3817', '45', '4504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3818', '45', '4504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3819', '45', '4504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3820', '45', '4504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3821', '1', '100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3822', '1', '100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3823', '1', '100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3824', '1', '100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3825', '1', '100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3826', '1', '100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3827', '1', '100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3828', '1', '100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3829', '1', '100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3830', '1', '100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3831', '1', '101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3832', '1', '101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3833', '1', '101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3834', '1', '101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3835', '1', '101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3836', '1', '101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3837', '1', '101620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3838', '1', '101720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3839', '1', '101820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3840', '1', '101920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3841', '1', '102020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3842', '1', '102120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3843', '1', '102220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3844', '1', '102320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3845', '1', '102420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3846', '1', '102520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3847', '1', '102620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3848', '1', '102720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3849', '1', '102820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3850', '1', '102920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3851', '1', '103020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3852', '1', '103120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3853', '1', '103220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3854', '1', '103320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3855', '1', '103420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3856', '1', '103520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3857', '1', '103620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3858', '1', '103720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3859', '1', '103820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3860', '1', '103920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3861', '1', '104020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3862', '1', '104120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3863', '1', '104220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3864', '1', '104320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3865', '1', '104420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3866', '1', '104520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3867', '1', '104620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3868', '1', '104720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3869', '1', '104820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3870', '1', '104920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3871', '3', '300020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3872', '3', '300120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3873', '3', '300220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3874', '3', '300320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3875', '3', '300420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3876', '3', '300520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3877', '3', '300620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3878', '3', '300720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3879', '3', '300820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3880', '3', '300920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3881', '3', '301020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3882', '3', '301120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3883', '3', '301220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3884', '3', '301320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3885', '3', '301420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3886', '3', '301520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3887', '3', '301620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3888', '3', '301720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3889', '3', '301820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3890', '3', '301920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3891', '3', '302020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3892', '3', '302120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3893', '3', '302220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3894', '3', '302320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3895', '3', '302420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3896', '3', '302520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3897', '3', '302620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3898', '3', '302720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3899', '3', '302820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3900', '3', '302920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3901', '3', '303020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3902', '3', '303120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3903', '3', '303220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3904', '3', '303320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3905', '3', '303420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3906', '3', '303520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3907', '3', '303620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3908', '3', '303720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3909', '3', '303820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3910', '3', '303920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3911', '3', '304020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3912', '3', '304120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3913', '3', '304220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3914', '3', '304320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3915', '3', '304420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3916', '3', '304520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3917', '3', '304620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3918', '3', '304720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3919', '3', '304820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3920', '3', '304920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3921', '4', '400020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3922', '4', '400120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3923', '4', '400220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3924', '4', '400320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3925', '4', '400420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3926', '4', '400520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3927', '4', '400620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3928', '4', '400720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3929', '4', '400820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3930', '4', '400920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3931', '4', '401020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3932', '4', '401120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3933', '4', '401220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3934', '4', '401320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3935', '4', '401420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3936', '4', '401520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3937', '4', '401620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3938', '4', '401720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3939', '4', '401820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3940', '4', '401920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3941', '4', '402020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3942', '4', '402120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3943', '4', '402220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3944', '4', '402320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3945', '4', '402420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3946', '4', '402520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3947', '4', '402620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3948', '4', '402720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3949', '4', '402820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3950', '4', '402920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3951', '4', '403020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3952', '4', '403120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3953', '4', '403220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3954', '4', '403320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3955', '4', '403420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3956', '4', '403520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3957', '4', '403620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3958', '4', '403720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3959', '4', '403820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3960', '4', '403920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3961', '4', '404020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3962', '4', '404120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3963', '4', '404220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3964', '4', '404320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3965', '4', '404420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3966', '4', '404520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3967', '4', '404620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3968', '4', '404720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3969', '4', '404820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3970', '4', '404920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3971', '5', '500020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3972', '5', '500120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3973', '5', '500220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3974', '5', '500320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3975', '5', '500420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3976', '5', '500520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3977', '5', '500620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3978', '5', '500720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3979', '5', '500820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3980', '5', '500920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3981', '5', '501020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3982', '5', '501120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3983', '5', '501220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3984', '5', '501320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3985', '5', '501420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3986', '5', '501520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3987', '5', '501620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3988', '5', '501720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3989', '5', '501820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3990', '5', '501920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3991', '5', '502020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3992', '5', '502120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3993', '5', '502220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3994', '5', '502320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3995', '5', '502420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3996', '5', '502520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3997', '5', '502620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3998', '5', '502720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('3999', '5', '502820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4000', '5', '502920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4001', '5', '503020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4002', '5', '503120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4003', '5', '503220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4004', '5', '503320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4005', '5', '503420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4006', '5', '503520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4007', '5', '503620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4008', '5', '503720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4009', '5', '503820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4010', '5', '503920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4011', '5', '504020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4012', '5', '504120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4013', '5', '504220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4014', '5', '504320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4015', '5', '504420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4016', '5', '504520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4017', '5', '504620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4018', '5', '504720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4019', '5', '504820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4020', '5', '504920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4021', '6', '600020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4022', '6', '600120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4023', '6', '600220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4024', '6', '600320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4025', '6', '600420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4026', '6', '600520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4027', '6', '600620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4028', '6', '600720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4029', '6', '600820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4030', '6', '600920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4031', '6', '601020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4032', '6', '601120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4033', '6', '601220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4034', '6', '601320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4035', '6', '601420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4036', '6', '601520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4037', '6', '601620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4038', '6', '601720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4039', '6', '601820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4040', '6', '601920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4041', '6', '602020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4042', '6', '602120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4043', '6', '602220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4044', '6', '602320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4045', '6', '602420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4046', '6', '602520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4047', '6', '602620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4048', '6', '602720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4049', '6', '602820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4050', '6', '602920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4051', '6', '603020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4052', '6', '603120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4053', '6', '603220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4054', '6', '603320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4055', '6', '603420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4056', '6', '603520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4057', '6', '603620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4058', '6', '603720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4059', '6', '603820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4060', '6', '603920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4061', '6', '604020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4062', '6', '604120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4063', '6', '604220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4064', '6', '604320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4065', '6', '604420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4066', '6', '604520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4067', '6', '604620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4068', '6', '604720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4069', '6', '604820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4070', '6', '604920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4071', '7', '700020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4072', '7', '700120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4073', '7', '700220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4074', '7', '700320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4075', '7', '700420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4076', '7', '700520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4077', '7', '700620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4078', '7', '700720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4079', '7', '700820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4080', '7', '700920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4081', '7', '701020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4082', '7', '701120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4083', '7', '701220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4084', '7', '701320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4085', '7', '701420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4086', '7', '701520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4087', '7', '701620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4088', '7', '701720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4089', '7', '701820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4090', '7', '701920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4091', '7', '702020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4092', '7', '702120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4093', '7', '702220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4094', '7', '702320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4095', '7', '702420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4096', '7', '702520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4097', '7', '702620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4098', '7', '702720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4099', '7', '702820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4100', '7', '702920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4101', '7', '703020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4102', '7', '703120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4103', '7', '703220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4104', '7', '703320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4105', '7', '703420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4106', '7', '703520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4107', '7', '703620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4108', '7', '703720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4109', '7', '703820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4110', '7', '703920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4111', '7', '704020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4112', '7', '704120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4113', '7', '704220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4114', '7', '704320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4115', '7', '704420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4116', '7', '704520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4117', '7', '704620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4118', '7', '704720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4119', '7', '704820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4120', '7', '704920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4121', '8', '800020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4122', '8', '800120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4123', '8', '800220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4124', '8', '800320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4125', '8', '800420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4126', '8', '800520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4127', '8', '800620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4128', '8', '800720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4129', '8', '800820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4130', '8', '800920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4131', '8', '801020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4132', '8', '801120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4133', '8', '801220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4134', '8', '801320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4135', '8', '801420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4136', '8', '801520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4137', '8', '801620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4138', '8', '801720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4139', '8', '801820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4140', '8', '801920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4141', '8', '802020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4142', '8', '802120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4143', '8', '802220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4144', '8', '802320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4145', '8', '802420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4146', '8', '802520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4147', '8', '802620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4148', '8', '802720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4149', '8', '802820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4150', '8', '802920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4151', '8', '803020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4152', '8', '803120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4153', '8', '803220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4154', '8', '803320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4155', '8', '803420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4156', '8', '803520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4157', '8', '803620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4158', '8', '803720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4159', '8', '803820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4160', '8', '803920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4161', '8', '804020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4162', '8', '804120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4163', '8', '804220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4164', '8', '804320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4165', '8', '804420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4166', '8', '804520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4167', '8', '804620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4168', '8', '804720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4169', '8', '804820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4170', '8', '804920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4171', '9', '900020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4172', '9', '900120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4173', '9', '900220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4174', '9', '900320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4175', '9', '900420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4176', '9', '900520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4177', '9', '900620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4178', '9', '900720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4179', '9', '900820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4180', '9', '900920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4181', '9', '901020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4182', '9', '901120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4183', '9', '901220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4184', '9', '901320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4185', '9', '901420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4186', '9', '901520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4187', '9', '901620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4188', '9', '901720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4189', '9', '901820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4190', '9', '901920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4191', '9', '902020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4192', '9', '902120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4193', '9', '902220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4194', '9', '902320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4195', '9', '902420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4196', '9', '902520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4197', '9', '902620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4198', '9', '902720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4199', '9', '902820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4200', '9', '902920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4201', '9', '903020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4202', '9', '903120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4203', '9', '903220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4204', '9', '903320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4205', '9', '903420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4206', '9', '903520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4207', '9', '903620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4208', '9', '903720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4209', '9', '903820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4210', '9', '903920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4211', '9', '904020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4212', '9', '904120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4213', '9', '904220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4214', '9', '904320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4215', '9', '904420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4216', '9', '904520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4217', '9', '904620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4218', '9', '904720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4219', '9', '904820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4220', '9', '904920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4221', '10', '1000020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4222', '10', '1000120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4223', '10', '1000220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4224', '10', '1000320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4225', '10', '1000420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4226', '10', '1000520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4227', '10', '1000620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4228', '10', '1000720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4229', '10', '1000820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4230', '10', '1000920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4231', '10', '1001020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4232', '10', '1001120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4233', '10', '1001220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4234', '10', '1001320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4235', '10', '1001420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4236', '10', '1001520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4237', '10', '1001620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4238', '10', '1001720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4239', '10', '1001820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4240', '10', '1001920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4241', '10', '1002020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4242', '10', '1002120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4243', '10', '1002220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4244', '10', '1002320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4245', '10', '1002420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4246', '10', '1002520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4247', '10', '1002620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4248', '10', '1002720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4249', '10', '1002820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4250', '10', '1002920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4251', '10', '1003020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4252', '10', '1003120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4253', '10', '1003220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4254', '10', '1003320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4255', '10', '1003420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4256', '10', '1003520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4257', '10', '1003620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4258', '10', '1003720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4259', '10', '1003820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4260', '10', '1003920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4261', '10', '1004020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4262', '10', '1004120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4263', '10', '1004220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4264', '10', '1004320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4265', '10', '1004420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4266', '10', '1004520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4267', '10', '1004620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4268', '10', '1004720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4269', '10', '1004820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4270', '10', '1004920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4271', '11', '1100020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4272', '11', '1100120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4273', '11', '1100220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4274', '11', '1100320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4275', '11', '1100420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4276', '11', '1100520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4277', '11', '1100620160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4278', '11', '1100720160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4279', '11', '1100820160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4280', '11', '1100920160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4281', '11', '1101020160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4282', '11', '1101120160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4283', '11', '1101220160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4284', '11', '1101320160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4285', '11', '1101420160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4286', '11', '1101520160313', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4287', null, 'adfdf100', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4288', null, 'adfdf101', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4289', null, 'adfdf102', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4290', null, 'adfdf100', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4291', null, 'adfdf101', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4292', null, 'adfdf102', '0', null, null);
INSERT INTO `tbl_hospital_codes` VALUES ('4293', null, 'abc20160', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4294', null, 'abc20161', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4295', null, 'abc20162', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4296', null, 'abc20160', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4297', null, 'abc20161', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4298', '45', 'a120', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4299', '45', 'a121', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4300', '45', 'Kl12', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4301', '45', 'Kl12', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4302', '45', 'KL201611', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4303', '45', 'KL201613', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4304', '45', 'KL20169', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4305', '45', 'TA12312', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4306', '45', 'TA12314', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4307', '45', 'DA12513', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4308', '45', 'DA1253', '0', null, '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4309', '21', 'yoyo20165', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4310', '21', 'yoyo201613', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4311', '21', 'yoyo201610', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4312', '21', 'yoyo201612', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4313', '21', 'yoyo20166', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4314', '21', 'yoyo201613', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4315', '21', 'yoyo20168', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4316', '21', 'yoyo20164', '1', '2016-03-24 05:58:04', '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4317', '21', 'yoyo20168', '0', null, '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4318', '21', 'yoyo201614', '1', '2016-03-24 05:52:27', '2016-03-24 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4319', '21', 'a2016377021446', '0', null, '2016-03-24 06:26:58');
INSERT INTO `tbl_hospital_codes` VALUES ('4320', '21', 'abc2016890483318', '0', null, '2016-03-24 06:27:56');
INSERT INTO `tbl_hospital_codes` VALUES ('4321', '21', 'abc2016825804846', '0', null, '2016-03-24 06:27:56');

-- ----------------------------
-- Table structure for tbl_hospital_departments
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_departments`;
CREATE TABLE `tbl_hospital_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) DEFAULT NULL,
  `id_department` int(11) DEFAULT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_hospital_departments
-- ----------------------------
INSERT INTO `tbl_hospital_departments` VALUES ('1', '43', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('2', '43', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('3', '43', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('4', '43', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('5', '42', '4', null, '2016-03-04 05:34:45', null);
INSERT INTO `tbl_hospital_departments` VALUES ('6', '42', '3', null, '2016-03-04 05:34:50', null);
INSERT INTO `tbl_hospital_departments` VALUES ('7', '1', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('8', '3', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('9', '4', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('10', '5', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('11', '6', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('12', '7', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('13', '8', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('14', '9', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('15', '10', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('16', '11', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('17', '12', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('18', '13', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('19', '14', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('20', '15', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('21', '16', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('22', '17', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('23', '18', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('24', '19', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('25', '20', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('26', '21', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('27', '22', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('28', '23', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('29', '24', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('30', '25', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('31', '26', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('32', '27', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('33', '28', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('34', '29', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('35', '30', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('36', '31', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('37', '32', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('38', '33', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('39', '34', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('40', '35', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('41', '36', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('42', '37', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('43', '38', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('44', '39', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('45', '40', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('46', '41', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('47', '42', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('48', '43', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('49', '44', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('50', '45', '1', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('51', '1', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('52', '3', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('53', '4', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('54', '5', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('55', '6', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('56', '7', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('57', '8', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('58', '9', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('59', '10', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('60', '11', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('61', '12', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('62', '13', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('63', '14', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('64', '15', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('65', '16', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('66', '17', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('67', '18', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('68', '19', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('69', '20', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('70', '21', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('71', '22', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('72', '23', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('73', '24', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('74', '25', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('75', '26', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('76', '27', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('77', '28', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('78', '29', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('79', '30', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('80', '31', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('81', '32', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('82', '33', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('83', '34', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('84', '35', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('85', '36', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('86', '37', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('87', '38', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('88', '39', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('89', '40', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('90', '41', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('91', '42', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('92', '43', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('93', '44', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('94', '45', '2', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('95', '1', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('96', '3', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('97', '4', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('98', '5', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('99', '6', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('100', '7', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('101', '8', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('102', '9', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('103', '10', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('104', '11', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('105', '12', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('106', '13', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('107', '14', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('108', '15', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('109', '16', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('110', '17', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('111', '18', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('112', '19', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('113', '20', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('114', '21', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('115', '22', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('116', '23', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('117', '24', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('118', '25', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('119', '26', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('120', '27', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('121', '28', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('122', '29', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('123', '30', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('124', '31', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('125', '32', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('126', '33', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('127', '34', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('128', '35', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('129', '36', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('130', '37', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('131', '38', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('132', '39', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('133', '40', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('134', '41', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('135', '42', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('136', '43', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('137', '44', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('138', '45', '3', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('139', '1', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('140', '3', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('141', '4', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('142', '5', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('143', '6', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('144', '7', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('145', '8', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('146', '9', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('147', '10', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('148', '11', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('149', '12', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('150', '13', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('151', '14', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('152', '15', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('153', '16', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('154', '17', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('155', '18', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('156', '19', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('157', '20', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('158', '21', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('159', '22', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('160', '23', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('161', '24', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('162', '25', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('163', '26', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('164', '27', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('165', '28', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('166', '29', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('167', '30', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('168', '31', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('169', '32', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('170', '33', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('171', '34', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('172', '35', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('173', '36', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('174', '37', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('175', '38', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('176', '39', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('177', '40', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('178', '41', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('179', '42', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('180', '43', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('181', '44', '4', '1', null, null);
INSERT INTO `tbl_hospital_departments` VALUES ('182', '45', '4', '1', null, null);

-- ----------------------------
-- Table structure for tbl_hospital_doctors
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_doctors`;
CREATE TABLE `tbl_hospital_doctors` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(12) NOT NULL,
  `id_doctor` int(12) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_doctors
-- ----------------------------
INSERT INTO `tbl_hospital_doctors` VALUES ('1', '3', '2', '0', '2015-12-23 16:18:11', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('2', '3', '8', '0', '2016-01-15 10:00:10', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('4', '10', '7', '0', '2015-12-27 10:23:33', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('5', '10', '6', '0', '2015-12-27 10:23:48', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('6', '10', '4', '0', '2015-12-27 10:24:08', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('7', '10', '1', '0', '2016-01-03 07:21:50', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('8', '12', '8', '0', '2016-01-15 09:59:53', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('9', '45', '7', '0', '2016-01-10 03:23:01', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('10', '45', '4', '0', '2016-01-10 06:32:12', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('11', '37', '4', '0', '2016-01-10 06:35:56', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('12', '46', '8', '0', '2016-01-14 10:29:25', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('13', '46', '4', '0', '2016-01-14 10:30:27', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_doctors` VALUES ('14', '47', '9', '0', '2016-01-19 03:44:08', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_hospital_galleries
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_galleries`;
CREATE TABLE `tbl_hospital_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(11) NOT NULL,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_galleries
-- ----------------------------
INSERT INTO `tbl_hospital_galleries` VALUES ('10', '3', 'kalemeth', 'កាលម៉ែត', 'uploads/hospital_galleries/hospital_gallery_568241e2b508f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:18:42');
INSERT INTO `tbl_hospital_galleries` VALUES ('12', '46', 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_569780e7518e7.jpg', '1', '0000-00-00 00:00:00', '2016-01-14 11:05:41');
INSERT INTO `tbl_hospital_galleries` VALUES ('13', '45', 'Asernal ', 'Asernal មន្ទីពេទ្យ ', 'uploads/hospital_galleries/hospital_gallery_568201a79e989.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:44:39');
INSERT INTO `tbl_hospital_galleries` VALUES ('14', '44', 'Africa', ' មន្ទីពេទ្យ  Africa', 'uploads/hospital_galleries/hospital_gallery_5682026ec39a0.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:47:58');
INSERT INTO `tbl_hospital_galleries` VALUES ('15', '43', 'Gigago', 'មន្ទីពេទ្យ gigago', 'uploads/hospital_galleries/hospital_gallery_568202fee1249.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:50:22');
INSERT INTO `tbl_hospital_galleries` VALUES ('16', '42', 'Vimean', 'មន្ទីពេទ្យ vimean', 'uploads/hospital_galleries/hospital_gallery_568203ae09a78.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:53:18');
INSERT INTO `tbl_hospital_galleries` VALUES ('17', '41', 'kavany', 'មន្ទីពេទ្យ kavany', 'uploads/hospital_galleries/hospital_gallery_56820418d22c6.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:55:04');
INSERT INTO `tbl_hospital_galleries` VALUES ('18', '40', 'cholalongkorn', 'មន្ទីពេទ្យ cholalongkorn', 'uploads/hospital_galleries/hospital_gallery_568204d829425.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 04:58:16');
INSERT INTO `tbl_hospital_galleries` VALUES ('19', '39', 'chivith', 'មន្ទីពេទ្យ chivith', 'uploads/hospital_galleries/hospital_gallery_5682057b1a1aa.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:00:59');
INSERT INTO `tbl_hospital_galleries` VALUES ('20', '38', 'kanha', 'មន្ទីពេទ្យ kanha', 'uploads/hospital_galleries/hospital_gallery_56820607c6e7a.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:03:19');
INSERT INTO `tbl_hospital_galleries` VALUES ('21', '37', 'Dararoth', 'មន្ទីពេទ្យ Dararoth', 'uploads/hospital_galleries/hospital_gallery_5691f9f5c452f.jpg', '1', '0000-00-00 00:00:00', '2016-01-10 06:28:05');
INSERT INTO `tbl_hospital_galleries` VALUES ('22', '36', 'sovantha', 'មន្ទីពេទ្យ sovantha', 'uploads/hospital_galleries/hospital_gallery_5682072751876.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:08:07');
INSERT INTO `tbl_hospital_galleries` VALUES ('23', '35', 'vathanaksok', 'មន្ទីពេទ្យ A', 'uploads/hospital_galleries/hospital_gallery_56820861e1fea.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:13:21');
INSERT INTO `tbl_hospital_galleries` VALUES ('24', '34', 'sokkema', 'មន្ទីពេទ្យ sokkema', 'uploads/hospital_galleries/hospital_gallery_5682092e3cfd1.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:16:46');
INSERT INTO `tbl_hospital_galleries` VALUES ('25', '33', 'momo', 'មន្ទីពេទ្យ momo', 'uploads/hospital_galleries/hospital_gallery_5682099b39b9f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:18:35');
INSERT INTO `tbl_hospital_galleries` VALUES ('26', '32', 'mili', 'មន្ទីពេទ្យ mili', 'uploads/hospital_galleries/hospital_gallery_56820a1683f80.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:20:38');
INSERT INTO `tbl_hospital_galleries` VALUES ('27', '31', 'modo', 'មន្ទីពេទ្យ modo', 'uploads/hospital_galleries/hospital_gallery_56820a8d864a9.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:22:37');
INSERT INTO `tbl_hospital_galleries` VALUES ('28', '30', 'neymar', 'មន្ទីពេទ្យ neymar', 'uploads/hospital_galleries/hospital_gallery_56820b47d858e.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:25:43');
INSERT INTO `tbl_hospital_galleries` VALUES ('29', '29', 'baza', 'មន្ទីពេទ្យ baza', 'uploads/hospital_galleries/hospital_gallery_56820b7fc0104.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:26:39');
INSERT INTO `tbl_hospital_galleries` VALUES ('30', '28', 'domo', 'មន្ទីពេទ្យ domo', 'uploads/hospital_galleries/hospital_gallery_56820c2e71fb8.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:29:34');
INSERT INTO `tbl_hospital_galleries` VALUES ('31', '27', 'nana', 'មន្ទីពេទ្យ nana', 'uploads/hospital_galleries/hospital_gallery_56820c504e25c.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:30:08');
INSERT INTO `tbl_hospital_galleries` VALUES ('32', '26', 'virak', 'មន្ទីពេទ្យ virak', 'uploads/hospital_galleries/hospital_gallery_56820d2b8991d.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:33:47');
INSERT INTO `tbl_hospital_galleries` VALUES ('33', '25', 'vavaha', 'មន្ទីពេទ្យ vavaha', 'uploads/hospital_galleries/hospital_gallery_56820d6b16f7a.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:34:51');
INSERT INTO `tbl_hospital_galleries` VALUES ('34', '23', 'rara', 'មន្ទីពេទ្យ rara', 'uploads/hospital_galleries/hospital_gallery_56820e200a2ac.jpg', '1', '0000-00-00 00:00:00', '2016-01-22 14:29:40');
INSERT INTO `tbl_hospital_galleries` VALUES ('35', '24', 'dadad', 'មន្ទីពេទ្យ dadad', 'uploads/hospital_galleries/hospital_gallery_56820e3610877.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:38:14');
INSERT INTO `tbl_hospital_galleries` VALUES ('36', '22', 'tata', 'មន្ទីពេទ្យ tata', 'uploads/hospital_galleries/hospital_gallery_56820f3eb9109.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:42:38');
INSERT INTO `tbl_hospital_galleries` VALUES ('37', '21', 'yoyo', 'មន្ទីពេទ្យ yoyo', 'uploads/hospital_galleries/hospital_gallery_56820f7cf18ac.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 05:43:40');
INSERT INTO `tbl_hospital_galleries` VALUES ('38', '20', 'pippo', 'មន្ទីពេទ្យ pippo', 'uploads/hospital_galleries/hospital_gallery_56822d1502732.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 07:49:57');
INSERT INTO `tbl_hospital_galleries` VALUES ('39', '19', 'lala', 'មន្ទីពេទ្យ lala', 'uploads/hospital_galleries/hospital_gallery_56822dc74d40f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 07:52:55');
INSERT INTO `tbl_hospital_galleries` VALUES ('40', '18', 'kakan', 'មន្ទីពេទ្យ kakan', 'uploads/hospital_galleries/hospital_gallery_56822dfdf3a54.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 07:53:49');
INSERT INTO `tbl_hospital_galleries` VALUES ('41', '17', 'Digo', 'មន្ទីពេទ្យDigo', 'uploads/hospital_galleries/hospital_gallery_56822ea6a31fa.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 07:56:38');
INSERT INTO `tbl_hospital_galleries` VALUES ('42', '16', 'Digo', 'មន្ទីពេទ្យDigo', 'uploads/hospital_galleries/hospital_gallery_56822ef704c7f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 07:57:59');
INSERT INTO `tbl_hospital_galleries` VALUES ('43', '15', 'seyha', 'មន្ទីពេទ្យseyha', 'uploads/hospital_galleries/hospital_gallery_56822fc7981bf.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:01:27');
INSERT INTO `tbl_hospital_galleries` VALUES ('44', '14', 'mama', 'មន្ទីពេទ្យMama', 'uploads/hospital_galleries/hospital_gallery_5682305d74656.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:03:57');
INSERT INTO `tbl_hospital_galleries` VALUES ('45', '14', 'mama', 'មន្ទីពេទ្យMama', 'uploads/hospital_galleries/hospital_gallery_5682305f1ecfd.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:03:59');
INSERT INTO `tbl_hospital_galleries` VALUES ('46', '13', 'baka', 'មន្ទីពេទ្យbaka', 'uploads/hospital_galleries/hospital_gallery_568230dea397f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:06:06');
INSERT INTO `tbl_hospital_galleries` VALUES ('47', '12', 'Vathanak', 'មន្ទីពេទ្យVathanak', 'uploads/hospital_galleries/hospital_gallery_568231a8dbf37.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:09:28');
INSERT INTO `tbl_hospital_galleries` VALUES ('48', '11', 'Thailand', 'មន្ទីពេទ្យThaland', 'uploads/hospital_galleries/hospital_gallery_56823a94a7d2a.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:47:32');
INSERT INTO `tbl_hospital_galleries` VALUES ('50', '9', 'china', 'មន្ទីពេទ្យchina', 'uploads/hospital_galleries/hospital_gallery_56823cec1ba71.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 08:57:32');
INSERT INTO `tbl_hospital_galleries` VALUES ('51', '8', 'Veathnam', 'វៀតណាម', 'uploads/hospital_galleries/hospital_gallery_56823dfad269a.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:02:02');
INSERT INTO `tbl_hospital_galleries` VALUES ('52', '7', 'japen', 'ជប៉ុន', 'uploads/hospital_galleries/hospital_gallery_56823e65b8d8c.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:03:49');
INSERT INTO `tbl_hospital_galleries` VALUES ('53', '6', ' khemara', 'រូស៊ី khemara', 'uploads/hospital_galleries/hospital_gallery_56823f22dbff5.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:06:58');
INSERT INTO `tbl_hospital_galleries` VALUES ('54', '5', 'Rusia', 'រូស៊ី', 'uploads/hospital_galleries/hospital_gallery_56823fa5afc67.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:09:09');
INSERT INTO `tbl_hospital_galleries` VALUES ('55', '4', 'Ong Doung', 'អង្គដួង', 'uploads/hospital_galleries/hospital_gallery_56824095e93b1.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:13:09');
INSERT INTO `tbl_hospital_galleries` VALUES ('56', '1', 'cha rey', 'ចារី', 'uploads/hospital_galleries/hospital_gallery_568242906954f.jpg', '1', '0000-00-00 00:00:00', '2015-12-29 09:21:36');
INSERT INTO `tbl_hospital_galleries` VALUES ('58', '10', 'a', 'v', 'uploads/hospital_galleries/hospital_gallery_568e3d02a3297.jpg', '1', '0000-00-00 00:00:00', '2016-01-07 11:25:06');
INSERT INTO `tbl_hospital_galleries` VALUES ('59', '46', 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_56978129c4b15.jpg', '1', '0000-00-00 00:00:00', '2016-01-14 11:06:17');
INSERT INTO `tbl_hospital_galleries` VALUES ('60', '46', 'Khema Clinic & Maternity  ', 'Khema Clinic & Maternity  ', 'uploads/hospital_galleries/hospital_gallery_56978146e8d85.jpg', '1', '0000-00-00 00:00:00', '2016-01-14 11:06:46');

-- ----------------------------
-- Table structure for tbl_hospital_ratings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_ratings`;
CREATE TABLE `tbl_hospital_ratings` (
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
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hospital_ratings
-- ----------------------------
INSERT INTO `tbl_hospital_ratings` VALUES ('16', '43', '0', 'A', '1', '2016-02-01', 'A', '2016-02-28 03:36:09', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('17', '43', '0', 'B', '1', '2016-02-01', 'B', '2016-02-28 03:36:21', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('18', '43', '0', 'C', '3', '2016-02-23', 'D', '2016-02-28 03:36:42', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('19', '43', '0', 'D', '2', '2016-02-06', 'F', '2016-02-28 03:37:09', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('20', '43', '0', 'E', '1', '2016-02-18', 'D', '2016-02-28 03:37:24', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('21', '43', '0', 'F', '4', '2016-02-18', 'D', '2016-02-28 03:37:36', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('22', '43', '0', 'G', '3', '2016-02-16', 'COMMENT', '2016-02-28 03:37:59', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('23', '43', '0', 'H', '3', '2016-02-16', 'COMMENT', '2016-02-28 03:38:11', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('24', '43', '0', 'I', '3', '2016-02-16', 'COMMENT', '2016-02-28 03:38:25', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('201', '1', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('202', '1', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('203', '1', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('204', '1', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('205', '3', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('206', '3', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('207', '3', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('208', '3', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('209', '4', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('210', '4', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('211', '4', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('212', '4', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('213', '5', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('214', '5', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('215', '5', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('216', '5', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('217', '6', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('218', '6', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('219', '6', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('220', '6', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('221', '7', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('222', '7', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('223', '7', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('224', '7', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('225', '8', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('226', '8', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('227', '8', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('228', '8', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('229', '9', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('230', '9', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('231', '9', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('232', '9', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('233', '10', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('234', '10', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('235', '10', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('236', '10', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('237', '11', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('238', '11', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('239', '11', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('240', '11', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('241', '12', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('242', '12', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('243', '12', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('244', '12', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('245', '13', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('246', '13', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('247', '13', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('248', '13', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('249', '14', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('250', '14', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('251', '14', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('252', '14', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('253', '15', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('254', '15', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('255', '15', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('256', '15', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('257', '16', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('258', '16', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('259', '16', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('260', '16', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('261', '17', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('262', '17', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('263', '17', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('264', '17', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('265', '18', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('266', '18', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('267', '18', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('268', '18', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('269', '19', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('270', '19', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('271', '19', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('272', '19', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('273', '20', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('274', '20', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('275', '20', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('276', '20', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('277', '21', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('278', '21', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('279', '21', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('280', '21', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('281', '22', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('282', '22', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('283', '22', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('284', '22', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('285', '23', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('286', '23', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('287', '23', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('288', '23', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('289', '24', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('290', '24', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('291', '24', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('292', '24', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('293', '25', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('294', '25', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('295', '25', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('296', '25', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('297', '26', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('298', '26', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('299', '26', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('300', '26', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('301', '27', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('302', '27', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('303', '27', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('304', '27', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('305', '28', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('306', '28', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('307', '28', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('308', '28', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('309', '29', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('310', '29', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('311', '29', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('312', '29', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('313', '30', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('314', '30', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('315', '30', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('316', '30', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('317', '31', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('318', '31', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('319', '31', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('320', '31', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('321', '32', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('322', '32', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('323', '32', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('324', '32', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('325', '33', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('326', '33', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('327', '33', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('328', '33', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('329', '34', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('330', '34', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('331', '34', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('332', '34', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('333', '35', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('334', '35', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('335', '35', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('336', '35', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('337', '36', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('338', '36', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('339', '36', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('340', '36', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('341', '37', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('342', '37', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('343', '37', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('344', '37', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('345', '38', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('346', '38', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('347', '38', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('348', '38', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('349', '39', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('350', '39', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('351', '39', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('352', '39', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('353', '40', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('354', '40', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('355', '40', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('356', '40', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('357', '41', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('358', '41', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('359', '41', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('360', '41', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('361', '42', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('362', '42', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('363', '42', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('364', '42', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('365', '43', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('366', '43', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('367', '43', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('368', '43', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('369', '44', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('370', '44', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('371', '44', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('372', '44', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('373', '45', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('374', '45', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('375', '45', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('376', '45', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('377', '1', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('378', '1', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('379', '1', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('380', '1', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('381', '3', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('382', '3', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('383', '3', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('384', '3', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('385', '4', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('386', '4', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('387', '4', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('388', '4', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('389', '5', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('390', '5', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('391', '5', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('392', '5', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('393', '6', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('394', '6', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('395', '6', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('396', '6', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('397', '7', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('398', '7', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('399', '7', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('400', '7', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('401', '8', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('402', '8', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('403', '8', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('404', '8', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('405', '9', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('406', '9', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('407', '9', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('408', '9', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('409', '10', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('410', '10', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('411', '10', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('412', '10', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('413', '11', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('414', '11', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('415', '11', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('416', '11', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('417', '12', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('418', '12', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('419', '12', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('420', '12', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('421', '13', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('422', '13', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('423', '13', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('424', '13', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('425', '14', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('426', '14', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('427', '14', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('428', '14', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('429', '15', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('430', '15', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('431', '15', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('432', '15', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('433', '16', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('434', '16', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('435', '16', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('436', '16', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('437', '17', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('438', '17', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('439', '17', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('440', '17', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('441', '18', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('442', '18', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('443', '18', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('444', '18', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('445', '19', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('446', '19', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('447', '19', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('448', '19', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('449', '20', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('450', '20', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('451', '20', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('452', '20', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('453', '21', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('454', '21', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('455', '21', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('456', '21', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('457', '22', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('458', '22', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('459', '22', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('460', '22', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('461', '23', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('462', '23', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('463', '23', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('464', '23', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('465', '24', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('466', '24', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('467', '24', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('468', '24', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('469', '25', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('470', '25', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('471', '25', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('472', '25', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('473', '26', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('474', '26', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('475', '26', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('476', '26', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('477', '27', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('478', '27', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('479', '27', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('480', '27', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('481', '28', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('482', '28', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('483', '28', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('484', '28', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('485', '29', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('486', '29', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('487', '29', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('488', '29', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('489', '30', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('490', '30', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('491', '30', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('492', '30', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('493', '31', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('494', '31', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('495', '31', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('496', '31', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('497', '32', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('498', '32', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('499', '32', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('500', '32', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('501', '33', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('502', '33', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('503', '33', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('504', '33', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('505', '34', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('506', '34', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('507', '34', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('508', '34', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('509', '35', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('510', '35', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('511', '35', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('512', '35', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('513', '36', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('514', '36', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('515', '36', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('516', '36', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('517', '37', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('518', '37', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('519', '37', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('520', '37', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('521', '38', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('522', '38', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('523', '38', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('524', '38', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('525', '39', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('526', '39', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('527', '39', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('528', '39', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('529', '40', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('530', '40', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('531', '40', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('532', '40', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('533', '41', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('534', '41', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('535', '41', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('536', '41', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('537', '42', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('538', '42', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('539', '42', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('540', '42', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('541', '43', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('542', '43', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('543', '43', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('544', '43', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('545', '44', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('546', '44', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('547', '44', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('548', '44', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('549', '45', '0', '120160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('550', '45', '0', '220160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('551', '45', '0', '320160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('552', '45', '0', '420160313', '1', '2016-03-13', '', null, '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('555', '21', '3', '2104920160313', '1', '2016-03-16', 'abc', '2016-03-24 05:51:11', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('556', '12', '3', '', '1', '2016-03-25', 'sdf', '2016-03-25 03:08:41', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('557', '6', '3', '', '1', '2016-03-17', 'adf', '2016-03-25 03:09:35', '1', '0');

-- ----------------------------
-- Table structure for tbl_hospital_rating_scores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_rating_scores`;
CREATE TABLE `tbl_hospital_rating_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital_rating` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1509 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hospital_rating_scores
-- ----------------------------
INSERT INTO `tbl_hospital_rating_scores` VALUES ('45', '16', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('46', '16', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('47', '16', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('48', '16', '4', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('49', '17', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('50', '17', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('51', '17', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('52', '17', '4', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('53', '18', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('54', '18', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('55', '18', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('56', '18', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('57', '19', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('58', '19', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('59', '19', '3', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('60', '19', '4', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('61', '20', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('62', '20', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('63', '20', '3', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('64', '20', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('65', '21', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('66', '21', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('67', '21', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('68', '21', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('69', '22', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('70', '22', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('71', '22', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('72', '22', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('73', '23', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('74', '23', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('75', '23', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('76', '23', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('77', '24', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('78', '24', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('79', '24', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('80', '24', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('81', '201', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('82', '201', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('83', '201', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('84', '201', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('85', '202', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('86', '202', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('87', '202', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('88', '202', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('89', '203', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('90', '203', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('91', '203', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('92', '203', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('93', '204', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('94', '204', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('95', '204', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('96', '204', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('97', '205', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('98', '205', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('99', '205', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('100', '205', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('101', '206', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('102', '206', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('103', '206', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('104', '206', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('105', '207', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('106', '207', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('107', '207', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('108', '207', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('109', '208', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('110', '208', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('111', '208', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('112', '208', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('113', '209', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('114', '209', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('115', '209', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('116', '209', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('117', '210', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('118', '210', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('119', '210', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('120', '210', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('121', '211', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('122', '211', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('123', '211', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('124', '211', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('125', '212', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('126', '212', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('127', '212', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('128', '212', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('129', '213', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('130', '213', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('131', '213', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('132', '213', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('133', '214', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('134', '214', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('135', '214', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('136', '214', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('137', '215', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('138', '215', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('139', '215', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('140', '215', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('141', '216', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('142', '216', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('143', '216', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('144', '216', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('145', '217', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('146', '217', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('147', '217', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('148', '217', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('149', '218', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('150', '218', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('151', '218', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('152', '218', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('153', '219', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('154', '219', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('155', '219', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('156', '219', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('157', '220', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('158', '220', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('159', '220', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('160', '220', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('161', '221', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('162', '221', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('163', '221', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('164', '221', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('165', '222', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('166', '222', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('167', '222', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('168', '222', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('169', '223', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('170', '223', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('171', '223', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('172', '223', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('173', '224', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('174', '224', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('175', '224', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('176', '224', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('177', '225', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('178', '225', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('179', '225', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('180', '225', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('181', '226', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('182', '226', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('183', '226', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('184', '226', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('185', '227', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('186', '227', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('187', '227', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('188', '227', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('189', '228', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('190', '228', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('191', '228', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('192', '228', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('193', '229', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('194', '229', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('195', '229', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('196', '229', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('197', '230', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('198', '230', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('199', '230', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('200', '230', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('201', '231', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('202', '231', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('203', '231', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('204', '231', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('205', '232', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('206', '232', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('207', '232', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('208', '232', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('209', '233', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('210', '233', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('211', '233', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('212', '233', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('213', '234', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('214', '234', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('215', '234', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('216', '234', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('217', '235', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('218', '235', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('219', '235', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('220', '235', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('221', '236', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('222', '236', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('223', '236', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('224', '236', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('225', '237', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('226', '237', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('227', '237', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('228', '237', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('229', '238', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('230', '238', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('231', '238', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('232', '238', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('233', '239', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('234', '239', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('235', '239', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('236', '239', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('237', '240', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('238', '240', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('239', '240', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('240', '240', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('241', '241', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('242', '241', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('243', '241', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('244', '241', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('245', '242', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('246', '242', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('247', '242', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('248', '242', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('249', '243', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('250', '243', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('251', '243', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('252', '243', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('253', '244', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('254', '244', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('255', '244', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('256', '244', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('257', '245', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('258', '245', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('259', '245', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('260', '245', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('261', '246', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('262', '246', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('263', '246', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('264', '246', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('265', '247', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('266', '247', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('267', '247', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('268', '247', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('269', '248', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('270', '248', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('271', '248', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('272', '248', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('273', '249', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('274', '249', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('275', '249', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('276', '249', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('277', '250', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('278', '250', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('279', '250', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('280', '250', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('281', '251', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('282', '251', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('283', '251', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('284', '251', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('285', '252', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('286', '252', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('287', '252', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('288', '252', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('289', '253', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('290', '253', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('291', '253', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('292', '253', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('293', '254', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('294', '254', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('295', '254', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('296', '254', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('297', '255', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('298', '255', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('299', '255', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('300', '255', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('301', '256', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('302', '256', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('303', '256', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('304', '256', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('305', '257', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('306', '257', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('307', '257', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('308', '257', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('309', '258', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('310', '258', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('311', '258', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('312', '258', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('313', '259', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('314', '259', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('315', '259', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('316', '259', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('317', '260', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('318', '260', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('319', '260', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('320', '260', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('321', '261', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('322', '261', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('323', '261', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('324', '261', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('325', '262', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('326', '262', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('327', '262', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('328', '262', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('329', '263', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('330', '263', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('331', '263', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('332', '263', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('333', '264', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('334', '264', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('335', '264', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('336', '264', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('337', '265', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('338', '265', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('339', '265', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('340', '265', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('341', '266', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('342', '266', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('343', '266', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('344', '266', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('345', '267', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('346', '267', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('347', '267', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('348', '267', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('349', '268', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('350', '268', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('351', '268', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('352', '268', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('353', '269', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('354', '269', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('355', '269', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('356', '269', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('357', '270', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('358', '270', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('359', '270', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('360', '270', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('361', '271', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('362', '271', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('363', '271', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('364', '271', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('365', '272', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('366', '272', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('367', '272', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('368', '272', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('369', '273', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('370', '273', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('371', '273', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('372', '273', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('373', '274', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('374', '274', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('375', '274', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('376', '274', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('377', '275', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('378', '275', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('379', '275', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('380', '275', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('381', '276', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('382', '276', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('383', '276', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('384', '276', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('385', '277', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('386', '277', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('387', '277', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('388', '277', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('389', '278', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('390', '278', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('391', '278', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('392', '278', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('393', '279', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('394', '279', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('395', '279', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('396', '279', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('397', '280', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('398', '280', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('399', '280', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('400', '280', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('401', '281', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('402', '281', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('403', '281', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('404', '281', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('405', '282', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('406', '282', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('407', '282', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('408', '282', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('409', '283', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('410', '283', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('411', '283', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('412', '283', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('413', '284', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('414', '284', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('415', '284', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('416', '284', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('417', '285', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('418', '285', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('419', '285', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('420', '285', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('421', '286', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('422', '286', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('423', '286', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('424', '286', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('425', '287', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('426', '287', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('427', '287', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('428', '287', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('429', '288', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('430', '288', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('431', '288', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('432', '288', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('433', '289', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('434', '289', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('435', '289', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('436', '289', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('437', '290', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('438', '290', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('439', '290', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('440', '290', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('441', '291', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('442', '291', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('443', '291', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('444', '291', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('445', '292', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('446', '292', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('447', '292', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('448', '292', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('449', '293', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('450', '293', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('451', '293', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('452', '293', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('453', '294', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('454', '294', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('455', '294', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('456', '294', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('457', '295', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('458', '295', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('459', '295', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('460', '295', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('461', '296', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('462', '296', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('463', '296', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('464', '296', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('465', '297', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('466', '297', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('467', '297', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('468', '297', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('469', '298', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('470', '298', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('471', '298', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('472', '298', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('473', '299', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('474', '299', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('475', '299', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('476', '299', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('477', '300', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('478', '300', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('479', '300', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('480', '300', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('481', '301', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('482', '301', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('483', '301', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('484', '301', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('485', '302', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('486', '302', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('487', '302', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('488', '302', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('489', '303', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('490', '303', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('491', '303', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('492', '303', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('493', '304', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('494', '304', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('495', '304', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('496', '304', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('497', '305', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('498', '305', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('499', '305', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('500', '305', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('501', '306', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('502', '306', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('503', '306', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('504', '306', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('505', '307', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('506', '307', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('507', '307', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('508', '307', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('509', '308', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('510', '308', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('511', '308', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('512', '308', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('513', '309', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('514', '309', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('515', '309', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('516', '309', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('517', '310', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('518', '310', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('519', '310', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('520', '310', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('521', '311', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('522', '311', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('523', '311', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('524', '311', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('525', '312', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('526', '312', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('527', '312', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('528', '312', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('529', '313', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('530', '313', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('531', '313', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('532', '313', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('533', '314', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('534', '314', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('535', '314', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('536', '314', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('537', '315', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('538', '315', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('539', '315', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('540', '315', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('541', '316', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('542', '316', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('543', '316', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('544', '316', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('545', '317', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('546', '317', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('547', '317', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('548', '317', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('549', '318', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('550', '318', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('551', '318', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('552', '318', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('553', '319', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('554', '319', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('555', '319', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('556', '319', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('557', '320', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('558', '320', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('559', '320', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('560', '320', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('561', '321', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('562', '321', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('563', '321', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('564', '321', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('565', '322', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('566', '322', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('567', '322', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('568', '322', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('569', '323', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('570', '323', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('571', '323', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('572', '323', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('573', '324', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('574', '324', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('575', '324', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('576', '324', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('577', '325', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('578', '325', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('579', '325', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('580', '325', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('581', '326', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('582', '326', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('583', '326', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('584', '326', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('585', '327', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('586', '327', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('587', '327', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('588', '327', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('589', '328', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('590', '328', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('591', '328', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('592', '328', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('593', '329', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('594', '329', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('595', '329', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('596', '329', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('597', '330', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('598', '330', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('599', '330', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('600', '330', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('601', '331', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('602', '331', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('603', '331', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('604', '331', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('605', '332', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('606', '332', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('607', '332', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('608', '332', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('609', '333', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('610', '333', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('611', '333', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('612', '333', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('613', '334', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('614', '334', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('615', '334', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('616', '334', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('617', '335', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('618', '335', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('619', '335', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('620', '335', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('621', '336', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('622', '336', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('623', '336', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('624', '336', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('625', '337', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('626', '337', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('627', '337', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('628', '337', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('629', '338', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('630', '338', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('631', '338', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('632', '338', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('633', '339', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('634', '339', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('635', '339', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('636', '339', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('637', '340', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('638', '340', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('639', '340', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('640', '340', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('641', '341', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('642', '341', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('643', '341', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('644', '341', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('645', '342', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('646', '342', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('647', '342', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('648', '342', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('649', '343', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('650', '343', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('651', '343', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('652', '343', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('653', '344', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('654', '344', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('655', '344', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('656', '344', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('657', '345', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('658', '345', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('659', '345', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('660', '345', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('661', '346', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('662', '346', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('663', '346', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('664', '346', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('665', '347', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('666', '347', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('667', '347', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('668', '347', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('669', '348', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('670', '348', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('671', '348', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('672', '348', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('673', '349', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('674', '349', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('675', '349', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('676', '349', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('677', '350', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('678', '350', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('679', '350', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('680', '350', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('681', '351', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('682', '351', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('683', '351', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('684', '351', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('685', '352', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('686', '352', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('687', '352', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('688', '352', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('689', '353', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('690', '353', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('691', '353', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('692', '353', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('693', '354', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('694', '354', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('695', '354', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('696', '354', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('697', '355', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('698', '355', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('699', '355', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('700', '355', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('701', '356', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('702', '356', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('703', '356', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('704', '356', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('705', '357', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('706', '357', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('707', '357', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('708', '357', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('709', '358', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('710', '358', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('711', '358', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('712', '358', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('713', '359', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('714', '359', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('715', '359', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('716', '359', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('717', '360', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('718', '360', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('719', '360', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('720', '360', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('721', '361', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('722', '361', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('723', '361', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('724', '361', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('725', '362', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('726', '362', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('727', '362', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('728', '362', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('729', '363', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('730', '363', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('731', '363', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('732', '363', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('733', '364', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('734', '364', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('735', '364', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('736', '364', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('737', '365', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('738', '365', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('739', '365', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('740', '365', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('741', '366', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('742', '366', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('743', '366', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('744', '366', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('745', '367', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('746', '367', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('747', '367', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('748', '367', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('749', '368', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('750', '368', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('751', '368', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('752', '368', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('753', '369', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('754', '369', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('755', '369', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('756', '369', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('757', '370', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('758', '370', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('759', '370', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('760', '370', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('761', '371', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('762', '371', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('763', '371', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('764', '371', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('765', '372', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('766', '372', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('767', '372', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('768', '372', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('769', '373', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('770', '373', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('771', '373', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('772', '373', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('773', '374', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('774', '374', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('775', '374', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('776', '374', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('777', '375', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('778', '375', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('779', '375', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('780', '375', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('781', '376', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('782', '376', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('783', '376', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('784', '376', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('785', '377', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('786', '377', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('787', '377', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('788', '377', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('789', '378', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('790', '378', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('791', '378', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('792', '378', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('793', '379', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('794', '379', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('795', '379', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('796', '379', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('797', '380', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('798', '380', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('799', '380', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('800', '380', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('801', '381', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('802', '381', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('803', '381', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('804', '381', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('805', '382', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('806', '382', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('807', '382', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('808', '382', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('809', '383', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('810', '383', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('811', '383', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('812', '383', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('813', '384', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('814', '384', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('815', '384', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('816', '384', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('817', '385', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('818', '385', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('819', '385', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('820', '385', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('821', '386', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('822', '386', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('823', '386', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('824', '386', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('825', '387', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('826', '387', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('827', '387', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('828', '387', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('829', '388', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('830', '388', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('831', '388', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('832', '388', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('833', '389', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('834', '389', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('835', '389', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('836', '389', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('837', '390', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('838', '390', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('839', '390', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('840', '390', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('841', '391', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('842', '391', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('843', '391', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('844', '391', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('845', '392', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('846', '392', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('847', '392', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('848', '392', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('849', '393', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('850', '393', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('851', '393', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('852', '393', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('853', '394', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('854', '394', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('855', '394', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('856', '394', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('857', '395', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('858', '395', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('859', '395', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('860', '395', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('861', '396', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('862', '396', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('863', '396', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('864', '396', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('865', '397', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('866', '397', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('867', '397', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('868', '397', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('869', '398', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('870', '398', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('871', '398', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('872', '398', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('873', '399', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('874', '399', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('875', '399', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('876', '399', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('877', '400', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('878', '400', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('879', '400', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('880', '400', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('881', '401', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('882', '401', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('883', '401', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('884', '401', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('885', '402', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('886', '402', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('887', '402', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('888', '402', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('889', '403', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('890', '403', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('891', '403', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('892', '403', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('893', '404', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('894', '404', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('895', '404', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('896', '404', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('897', '405', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('898', '405', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('899', '405', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('900', '405', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('901', '406', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('902', '406', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('903', '406', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('904', '406', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('905', '407', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('906', '407', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('907', '407', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('908', '407', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('909', '408', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('910', '408', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('911', '408', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('912', '408', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('913', '409', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('914', '409', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('915', '409', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('916', '409', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('917', '410', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('918', '410', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('919', '410', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('920', '410', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('921', '411', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('922', '411', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('923', '411', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('924', '411', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('925', '412', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('926', '412', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('927', '412', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('928', '412', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('929', '413', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('930', '413', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('931', '413', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('932', '413', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('933', '414', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('934', '414', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('935', '414', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('936', '414', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('937', '415', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('938', '415', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('939', '415', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('940', '415', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('941', '416', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('942', '416', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('943', '416', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('944', '416', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('945', '417', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('946', '417', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('947', '417', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('948', '417', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('949', '418', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('950', '418', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('951', '418', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('952', '418', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('953', '419', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('954', '419', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('955', '419', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('956', '419', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('957', '420', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('958', '420', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('959', '420', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('960', '420', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('961', '421', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('962', '421', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('963', '421', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('964', '421', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('965', '422', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('966', '422', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('967', '422', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('968', '422', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('969', '423', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('970', '423', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('971', '423', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('972', '423', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('973', '424', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('974', '424', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('975', '424', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('976', '424', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('977', '425', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('978', '425', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('979', '425', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('980', '425', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('981', '426', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('982', '426', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('983', '426', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('984', '426', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('985', '427', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('986', '427', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('987', '427', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('988', '427', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('989', '428', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('990', '428', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('991', '428', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('992', '428', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('993', '429', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('994', '429', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('995', '429', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('996', '429', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('997', '430', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('998', '430', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('999', '430', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1000', '430', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1001', '431', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1002', '431', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1003', '431', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1004', '431', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1005', '432', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1006', '432', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1007', '432', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1008', '432', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1009', '433', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1010', '433', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1011', '433', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1012', '433', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1013', '434', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1014', '434', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1015', '434', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1016', '434', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1017', '435', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1018', '435', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1019', '435', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1020', '435', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1021', '436', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1022', '436', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1023', '436', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1024', '436', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1025', '437', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1026', '437', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1027', '437', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1028', '437', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1029', '438', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1030', '438', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1031', '438', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1032', '438', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1033', '439', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1034', '439', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1035', '439', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1036', '439', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1037', '440', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1038', '440', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1039', '440', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1040', '440', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1041', '441', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1042', '441', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1043', '441', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1044', '441', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1045', '442', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1046', '442', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1047', '442', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1048', '442', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1049', '443', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1050', '443', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1051', '443', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1052', '443', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1053', '444', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1054', '444', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1055', '444', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1056', '444', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1057', '445', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1058', '445', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1059', '445', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1060', '445', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1061', '446', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1062', '446', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1063', '446', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1064', '446', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1065', '447', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1066', '447', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1067', '447', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1068', '447', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1069', '448', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1070', '448', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1071', '448', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1072', '448', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1073', '449', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1074', '449', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1075', '449', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1076', '449', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1077', '450', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1078', '450', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1079', '450', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1080', '450', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1081', '451', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1082', '451', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1083', '451', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1084', '451', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1085', '452', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1086', '452', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1087', '452', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1088', '452', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1089', '453', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1090', '453', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1091', '453', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1092', '453', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1093', '454', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1094', '454', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1095', '454', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1096', '454', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1097', '455', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1098', '455', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1099', '455', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1100', '455', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1101', '456', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1102', '456', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1103', '456', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1104', '456', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1105', '457', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1106', '457', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1107', '457', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1108', '457', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1109', '458', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1110', '458', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1111', '458', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1112', '458', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1113', '459', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1114', '459', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1115', '459', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1116', '459', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1117', '460', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1118', '460', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1119', '460', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1120', '460', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1121', '461', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1122', '461', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1123', '461', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1124', '461', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1125', '462', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1126', '462', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1127', '462', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1128', '462', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1129', '463', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1130', '463', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1131', '463', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1132', '463', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1133', '464', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1134', '464', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1135', '464', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1136', '464', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1137', '465', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1138', '465', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1139', '465', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1140', '465', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1141', '466', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1142', '466', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1143', '466', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1144', '466', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1145', '467', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1146', '467', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1147', '467', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1148', '467', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1149', '468', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1150', '468', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1151', '468', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1152', '468', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1153', '469', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1154', '469', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1155', '469', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1156', '469', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1157', '470', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1158', '470', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1159', '470', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1160', '470', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1161', '471', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1162', '471', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1163', '471', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1164', '471', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1165', '472', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1166', '472', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1167', '472', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1168', '472', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1169', '473', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1170', '473', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1171', '473', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1172', '473', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1173', '474', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1174', '474', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1175', '474', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1176', '474', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1177', '475', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1178', '475', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1179', '475', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1180', '475', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1181', '476', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1182', '476', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1183', '476', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1184', '476', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1185', '477', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1186', '477', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1187', '477', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1188', '477', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1189', '478', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1190', '478', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1191', '478', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1192', '478', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1193', '479', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1194', '479', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1195', '479', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1196', '479', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1197', '480', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1198', '480', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1199', '480', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1200', '480', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1201', '481', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1202', '481', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1203', '481', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1204', '481', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1205', '482', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1206', '482', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1207', '482', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1208', '482', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1209', '483', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1210', '483', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1211', '483', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1212', '483', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1213', '484', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1214', '484', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1215', '484', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1216', '484', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1217', '485', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1218', '485', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1219', '485', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1220', '485', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1221', '486', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1222', '486', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1223', '486', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1224', '486', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1225', '487', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1226', '487', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1227', '487', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1228', '487', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1229', '488', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1230', '488', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1231', '488', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1232', '488', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1233', '489', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1234', '489', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1235', '489', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1236', '489', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1237', '490', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1238', '490', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1239', '490', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1240', '490', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1241', '491', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1242', '491', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1243', '491', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1244', '491', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1245', '492', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1246', '492', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1247', '492', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1248', '492', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1249', '493', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1250', '493', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1251', '493', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1252', '493', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1253', '494', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1254', '494', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1255', '494', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1256', '494', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1257', '495', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1258', '495', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1259', '495', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1260', '495', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1261', '496', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1262', '496', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1263', '496', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1264', '496', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1265', '497', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1266', '497', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1267', '497', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1268', '497', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1269', '498', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1270', '498', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1271', '498', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1272', '498', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1273', '499', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1274', '499', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1275', '499', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1276', '499', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1277', '500', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1278', '500', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1279', '500', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1280', '500', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1281', '501', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1282', '501', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1283', '501', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1284', '501', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1285', '502', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1286', '502', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1287', '502', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1288', '502', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1289', '503', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1290', '503', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1291', '503', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1292', '503', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1293', '504', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1294', '504', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1295', '504', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1296', '504', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1297', '505', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1298', '505', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1299', '505', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1300', '505', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1301', '506', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1302', '506', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1303', '506', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1304', '506', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1305', '507', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1306', '507', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1307', '507', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1308', '507', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1309', '508', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1310', '508', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1311', '508', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1312', '508', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1313', '509', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1314', '509', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1315', '509', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1316', '509', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1317', '510', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1318', '510', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1319', '510', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1320', '510', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1321', '511', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1322', '511', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1323', '511', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1324', '511', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1325', '512', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1326', '512', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1327', '512', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1328', '512', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1329', '513', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1330', '513', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1331', '513', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1332', '513', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1333', '514', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1334', '514', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1335', '514', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1336', '514', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1337', '515', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1338', '515', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1339', '515', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1340', '515', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1341', '516', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1342', '516', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1343', '516', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1344', '516', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1345', '517', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1346', '517', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1347', '517', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1348', '517', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1349', '518', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1350', '518', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1351', '518', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1352', '518', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1353', '519', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1354', '519', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1355', '519', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1356', '519', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1357', '520', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1358', '520', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1359', '520', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1360', '520', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1361', '521', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1362', '521', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1363', '521', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1364', '521', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1365', '522', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1366', '522', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1367', '522', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1368', '522', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1369', '523', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1370', '523', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1371', '523', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1372', '523', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1373', '524', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1374', '524', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1375', '524', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1376', '524', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1377', '525', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1378', '525', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1379', '525', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1380', '525', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1381', '526', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1382', '526', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1383', '526', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1384', '526', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1385', '527', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1386', '527', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1387', '527', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1388', '527', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1389', '528', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1390', '528', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1391', '528', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1392', '528', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1393', '529', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1394', '529', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1395', '529', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1396', '529', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1397', '530', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1398', '530', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1399', '530', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1400', '530', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1401', '531', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1402', '531', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1403', '531', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1404', '531', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1405', '532', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1406', '532', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1407', '532', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1408', '532', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1409', '533', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1410', '533', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1411', '533', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1412', '533', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1413', '534', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1414', '534', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1415', '534', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1416', '534', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1417', '535', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1418', '535', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1419', '535', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1420', '535', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1421', '536', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1422', '536', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1423', '536', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1424', '536', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1425', '537', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1426', '537', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1427', '537', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1428', '537', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1429', '538', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1430', '538', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1431', '538', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1432', '538', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1433', '539', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1434', '539', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1435', '539', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1436', '539', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1437', '540', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1438', '540', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1439', '540', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1440', '540', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1441', '541', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1442', '541', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1443', '541', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1444', '541', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1445', '542', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1446', '542', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1447', '542', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1448', '542', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1449', '543', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1450', '543', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1451', '543', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1452', '543', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1453', '544', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1454', '544', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1455', '544', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1456', '544', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1457', '545', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1458', '545', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1459', '545', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1460', '545', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1461', '546', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1462', '546', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1463', '546', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1464', '546', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1465', '547', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1466', '547', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1467', '547', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1468', '547', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1469', '548', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1470', '548', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1471', '548', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1472', '548', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1473', '549', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1474', '549', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1475', '549', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1476', '549', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1477', '550', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1478', '550', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1479', '550', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1480', '550', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1481', '551', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1482', '551', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1483', '551', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1484', '551', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1485', '552', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1486', '552', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1487', '552', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1488', '552', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1489', '553', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1490', '553', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1491', '553', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1492', '553', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1493', '554', '1', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1494', '554', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1495', '554', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1496', '554', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1497', '555', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1498', '555', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1499', '555', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1500', '555', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1501', '556', '1', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1502', '556', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1503', '556', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1504', '556', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1505', '557', '1', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1506', '557', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1507', '557', '3', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1508', '557', '4', '4');

-- ----------------------------
-- Table structure for tbl_hospital_services
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_services`;
CREATE TABLE `tbl_hospital_services` (
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_services
-- ----------------------------
INSERT INTO `tbl_hospital_services` VALUES ('4', '0', '1', '3333', '', '', '1', '0000-00-00 00:00:00', '2015-12-20 07:49:54');
INSERT INTO `tbl_hospital_services` VALUES ('8', '1', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:22:17');
INSERT INTO `tbl_hospital_services` VALUES ('9', '3', '2', '125$', '', '', '0', '0000-00-00 00:00:00', '2015-12-21 07:26:28');
INSERT INTO `tbl_hospital_services` VALUES ('10', '1', '1', '10$', '', '', '0', '0000-00-00 00:00:00', '2015-12-21 07:31:13');
INSERT INTO `tbl_hospital_services` VALUES ('11', '46', '4', 'USD 500 ', '', '', '0', '0000-00-00 00:00:00', '2016-01-14 10:17:24');
INSERT INTO `tbl_hospital_services` VALUES ('12', '45', '3', '$200', 'Sathya ', 'Sathya ', '0', '0000-00-00 00:00:00', '2016-01-04 16:21:45');
INSERT INTO `tbl_hospital_services` VALUES ('13', '44', '2', '$300', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 04:46:56');
INSERT INTO `tbl_hospital_services` VALUES ('14', '43', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 04:49:33');
INSERT INTO `tbl_hospital_services` VALUES ('15', '42', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 04:52:25');
INSERT INTO `tbl_hospital_services` VALUES ('16', '41', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 04:54:28');
INSERT INTO `tbl_hospital_services` VALUES ('17', '40', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 04:57:20');
INSERT INTO `tbl_hospital_services` VALUES ('18', '39', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:00:05');
INSERT INTO `tbl_hospital_services` VALUES ('19', '38', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:02:27');
INSERT INTO `tbl_hospital_services` VALUES ('20', '37', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:05:32');
INSERT INTO `tbl_hospital_services` VALUES ('21', '36', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:07:08');
INSERT INTO `tbl_hospital_services` VALUES ('22', '35', '1', '10$', '', '', '0', '0000-00-00 00:00:00', '2016-02-05 14:25:58');
INSERT INTO `tbl_hospital_services` VALUES ('23', '34', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:15:48');
INSERT INTO `tbl_hospital_services` VALUES ('24', '33', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:17:59');
INSERT INTO `tbl_hospital_services` VALUES ('25', '32', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:19:39');
INSERT INTO `tbl_hospital_services` VALUES ('26', '31', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:21:53');
INSERT INTO `tbl_hospital_services` VALUES ('27', '30', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:24:44');
INSERT INTO `tbl_hospital_services` VALUES ('28', '29', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:26:02');
INSERT INTO `tbl_hospital_services` VALUES ('29', '28', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:29:02');
INSERT INTO `tbl_hospital_services` VALUES ('30', '27', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:29:41');
INSERT INTO `tbl_hospital_services` VALUES ('31', '26', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:32:58');
INSERT INTO `tbl_hospital_services` VALUES ('32', '25', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:33:54');
INSERT INTO `tbl_hospital_services` VALUES ('33', '24', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:37:06');
INSERT INTO `tbl_hospital_services` VALUES ('34', '22', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:40:49');
INSERT INTO `tbl_hospital_services` VALUES ('35', '22', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:40:55');
INSERT INTO `tbl_hospital_services` VALUES ('36', '21', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 05:41:13');
INSERT INTO `tbl_hospital_services` VALUES ('37', '20', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 07:49:17');
INSERT INTO `tbl_hospital_services` VALUES ('38', '19', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 07:51:51');
INSERT INTO `tbl_hospital_services` VALUES ('39', '18', '2', 'kakan', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 07:53:14');
INSERT INTO `tbl_hospital_services` VALUES ('40', '17', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 07:55:41');
INSERT INTO `tbl_hospital_services` VALUES ('41', '16', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 07:57:02');
INSERT INTO `tbl_hospital_services` VALUES ('42', '15', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:00:05');
INSERT INTO `tbl_hospital_services` VALUES ('43', '14', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:02:37');
INSERT INTO `tbl_hospital_services` VALUES ('44', '13', '7', '12$', 's', '', '0', '0000-00-00 00:00:00', '2016-01-22 13:22:06');
INSERT INTO `tbl_hospital_services` VALUES ('45', '12', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:08:34');
INSERT INTO `tbl_hospital_services` VALUES ('46', '11', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:45:49');
INSERT INTO `tbl_hospital_services` VALUES ('47', '10', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:50:48');
INSERT INTO `tbl_hospital_services` VALUES ('48', '9', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:55:29');
INSERT INTO `tbl_hospital_services` VALUES ('49', '8', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 08:59:58');
INSERT INTO `tbl_hospital_services` VALUES ('50', '7', '1', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:02:43');
INSERT INTO `tbl_hospital_services` VALUES ('51', '6', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:06:10');
INSERT INTO `tbl_hospital_services` VALUES ('52', '5', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:08:26');
INSERT INTO `tbl_hospital_services` VALUES ('53', '4', '3', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:11:31');
INSERT INTO `tbl_hospital_services` VALUES ('54', '3', '2', '$200', '', '', '0', '0000-00-00 00:00:00', '2015-12-29 09:16:37');
INSERT INTO `tbl_hospital_services` VALUES ('55', '10', '3', '11$', '', '', '0', '0000-00-00 00:00:00', '2016-01-03 07:22:58');
INSERT INTO `tbl_hospital_services` VALUES ('56', '37', '3', '100$', 'dfdf', 'hgh', '0', '0000-00-00 00:00:00', '2016-01-10 06:27:20');
INSERT INTO `tbl_hospital_services` VALUES ('57', '46', '5', 'USD 450 ', '27/7', '27/7', '0', '0000-00-00 00:00:00', '2016-01-14 10:26:37');
INSERT INTO `tbl_hospital_services` VALUES ('58', '46', '7', 'USD 600', '', '', '0', '0000-00-00 00:00:00', '2016-01-14 10:24:27');
INSERT INTO `tbl_hospital_services` VALUES ('59', '46', '8', 'USD 100', '', '', '0', '0000-00-00 00:00:00', '2016-01-14 10:25:09');
INSERT INTO `tbl_hospital_services` VALUES ('60', '46', '9', 'USD 600', '', '', '0', '0000-00-00 00:00:00', '2016-01-14 10:25:51');
INSERT INTO `tbl_hospital_services` VALUES ('61', '13', '3', '1', '1', '1', '0', '0000-00-00 00:00:00', '2016-01-22 13:28:50');
INSERT INTO `tbl_hospital_services` VALUES ('62', '13', '9', '11', '11', '1', '0', '0000-00-00 00:00:00', '2016-01-22 13:29:34');
INSERT INTO `tbl_hospital_services` VALUES ('63', '6', '9', '12', '', '', '0', '0000-00-00 00:00:00', '2016-01-22 15:21:50');
INSERT INTO `tbl_hospital_services` VALUES ('64', '35', '2', '125$', '', '', '0', '0000-00-00 00:00:00', '2016-02-05 14:23:50');
INSERT INTO `tbl_hospital_services` VALUES ('65', '35', '4', '12$', '', '', '0', '0000-00-00 00:00:00', '2016-02-05 14:26:57');

-- ----------------------------
-- Table structure for tbl_hospital_specialists
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_specialists`;
CREATE TABLE `tbl_hospital_specialists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital` int(10) NOT NULL,
  `id_specialist` int(10) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_hospital`,`id_specialist`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_specialists
-- ----------------------------
INSERT INTO `tbl_hospital_specialists` VALUES ('1', '1', '1', '1', '2015-12-02 06:09:11', '2015-12-08 08:18:24');
INSERT INTO `tbl_hospital_specialists` VALUES ('2', '3', '1', '0', '2015-12-21 18:12:10', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('3', '46', '62', '0', '2016-01-09 17:18:13', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('4', '46', '60', '0', '2016-01-09 17:18:22', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('5', '46', '59', '0', '2016-01-09 17:18:29', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('7', '37', '56', '0', '2016-01-10 06:25:34', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('8', '37', '22', '0', '2016-01-10 06:25:46', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('9', '44', '53', '0', '2016-01-19 09:55:44', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('10', '43', '53', '0', '2016-01-19 09:56:26', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('11', '42', '44', '0', '2016-01-19 09:57:20', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('12', '41', '45', '0', '2016-01-19 09:57:48', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('13', '40', '55', '0', '2016-01-19 09:59:32', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('14', '39', '49', '0', '2016-01-19 10:00:03', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('15', '38', '53', '0', '2016-01-19 10:00:30', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('16', '36', '16', '0', '2016-01-19 10:01:02', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('17', '35', '37', '0', '2016-01-19 10:04:53', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_specialists` VALUES ('19', '45', '40', '0', '2016-02-26 06:48:02', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_hospital_types
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_types`;
CREATE TABLE `tbl_hospital_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) unsigned DEFAULT '0',
  `en_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `kh_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_types
-- ----------------------------
INSERT INTO `tbl_hospital_types` VALUES ('7', '3', 'Type A', 'ប្រភេទ ក', '1');
INSERT INTO `tbl_hospital_types` VALUES ('8', '3', 'NGO Type B', 'NGO Type B', '1');
INSERT INTO `tbl_hospital_types` VALUES ('9', '8', 'NGO Type C', 'NGO Type C', '1');
INSERT INTO `tbl_hospital_types` VALUES ('10', '2', 'Private A', 'Private A', '1');
INSERT INTO `tbl_hospital_types` VALUES ('11', '2', 'Private B', 'Private B', '1');
INSERT INTO `tbl_hospital_types` VALUES ('12', '2', 'Private C', 'Private C', '1');
INSERT INTO `tbl_hospital_types` VALUES ('13', '1', 'Public A', 'Public A', '1');
INSERT INTO `tbl_hospital_types` VALUES ('14', '1', 'Public B', 'Public C', '1');

-- ----------------------------
-- Table structure for tbl_ideas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ideas`;
CREATE TABLE `tbl_ideas` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_ideas
-- ----------------------------
INSERT INTO `tbl_ideas` VALUES ('1', 'Dara Sambath', 'M', '12', 'a@f.v', '1234', 'Sathya', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_ideas` VALUES ('2', 'Khouch Koeun', 'M', '23', 'keoun_math@yahoo.com', '098343334443', 'sdf', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_languages
-- ----------------------------
DROP TABLE IF EXISTS `tbl_languages`;
CREATE TABLE `tbl_languages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alais` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `en` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kh` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_modifier` int(10) NOT NULL DEFAULT '1',
  `modified_dt` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_languages
-- ----------------------------
INSERT INTO `tbl_languages` VALUES ('1', 'hospital', 'Health Hub ', 'ស្ថាប័នសុខភាព', '0', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('2', 'doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('3', 'clinics', 'Clinics', 'គ្លីនិក', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('4', 'public', 'Public', 'សាធារណៈ', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('5', 'private', 'Private', 'ឯកជន', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('6', 'hospital Profile', 'Hospital Profile', 'ទម្រង់មន្ទីរពេទ្យ', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('7', 'emercency', 'Emercency', 'សង្រ្គោះបន្ទាន់', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('8', 'international Planes', 'International Planes', 'យន្តហោះអន្ដរជាតិ', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('9', 'messages', 'Messages', 'សារ', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('10', 'laboratories', 'Laboratories', 'មន្ទីរពិសោធន៍', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('12', 'health update', 'Health Topics ', 'អត្ថបទសុខភាព', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('14', 'other_events', 'Other Events', 'សកម្មភាភផ្សេងទៀត', '1', '2015-08-17 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('18', 'name', 'Name', 'ឈ្មោះ', '1', '2015-09-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('19', 'news', 'News', 'ពត៌មាន', '1', '2015-09-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('20', 'tips', 'Tips', 'គន្លឹះ', '1', '2015-09-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('21', 'ngo', 'NGO', 'អង្គការមិនមែនរដ្ឋាភិបាល', '1', '2015-09-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('22', 'new hospitals', 'News Hospitals', 'មន្ទីរពេទ្យព័ត៍មាន', '1', '2015-09-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('23', 'new doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('24', 'latest news', 'Health Topics ', 'អត្ថបទសុខភាព', '1', '2016-01-04 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('25', 'show all', 'Show All', 'បង្ហាញ​ទាំងអស់', '1', '2016-01-04 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('26', 'health new & tips', 'Health New & Tips', 'សុខភាពគន្លឹះថ្មី', '1', '2016-01-13 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('28', 'read more', 'Read More', 'អាន​បន្ថែម', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('29', 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', '1', '2016-01-20 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('33', 'find a doctor', 'Doctor', 'វេជ្ជបណ្ឌិត', '1', '2016-01-20 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('34', 'drop your idea', 'Drop Your Idea', 'ទម្លាក់គំនិតរបស់អ្នក', '1', '2016-01-06 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('35', 'your comment', 'Your Comment', 'យោបល់របស់អ្នក', '1', '2016-01-20 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('36', 'male', 'Male', 'ប្រុស', '1', '2016-01-19 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('37', 'female', 'Female', '\r\nស្រី', '1', '2016-01-12 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('38', 'submit', 'Submit', 'ដាក់ស្នើ', '1', '2016-01-09 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('39', 'find a hospital', 'Find A Hospital', 'សែ្វងរកមន្ទីរពេទ្យ', '1', '2016-01-21 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('40', 'health tips', 'Health Topics', 'អត្ថបទសុខភាព', '1', '2016-01-06 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('41', 'doctor-profile', 'Doctors\' Profile', 'ទម្រង់គ្រូពេទ្យ', '1', '2016-01-21 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('42', 'degree', 'Degree', 'សញ្ញាប័ត្រ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('43', 'university', 'University', 'សាកលវិទ្យាល័យ', '1', '2016-01-28 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('44', 'year', 'Year', 'ឆ្នាំ', '1', '2016-01-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('46', 'work at', 'Workplace', 'កន្លែងធ្វើការ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('47', 'director', 'Specialization', 'ឯកទេស', '1', '2016-01-26 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('48', 'type', 'Type', 'ប្រភេទ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('49', 'address', 'Address  ', 'អាសយដ្ឋាន', '1', '2016-01-19 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('50', 'open hour', 'Working Hour  ', 'ម៉ោងធ្វើការ', '1', '2016-01-06 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('51', 'phone_number', 'Phone Number ', 'លេខទូរស័ព្ទ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('52', 'email', 'Email  ', 'សារអេឡិចត្រូនិច', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('53', 'website', 'Website  ', 'វេបសាយ', '1', '2016-01-27 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('54', 'drop your idea to this hospital', 'Drop your idea to this hospital', 'ទម្លាក់គំនិតរបស់អ្នកទៅកាន់មន្ទីរពេទ្យនេះ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('55', 'background-hospital', 'Background', 'ប្រវត្តិរូប', '1', '2016-01-14 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('56', 'if you wish to recive news update from our team, please subscribe', 'Please subscribe with us', 'Please subscribe with us', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('57', 'newsletter', 'Subscribe ', 'Subscribe ', '1', '2016-01-28 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('58', 'subscribe', 'Subscribe', 'Subscribe', '1', '2016-01-06 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('59', 'social media', 'Follow us on', 'Follow us on', '1', '2016-01-21 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('60', 'faq', 'FAQ', 'FAQ', '1', '2016-01-07 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('61', 'copyright 2015 krupet.com | all rights reserved', 'Copyright © 2016 Krupet.com | All Rights Reserved', 'Copyright © 2016 Krupet.com | All Rights Reserved', '1', '2016-01-27 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('62', 'about-us', 'About Us', 'អំពី​​យើង', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('63', 'term', 'Term', 'លក្ខន្តិក', '1', '2016-01-13 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('65', 'pediatric clinic', 'Pediatric Clinic', 'គ្លីនិកកុមារ', '1', '2016-01-24 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('66', 'health hub', 'Health Hub', 'ស្ថាប័នសុខភាព', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('67', 'specialization', 'Specialization', 'ឯកទេស', '1', '2016-01-14 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('68', 'drop your ideas', 'Drop Your Ideas', 'មតិយោបល់', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('70', 'call us today! +0965767970  |    contact@krupet.com ', '(+855) 17 567 099  |  contact@krupet.com ', '(+855) 17 567 099  |  contact@krupet.com', '1', '2016-01-08 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('71', 'news hospitals', 'Hospital', 'មន្ទីរពេទ្យ', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('72', 'what do you think about kalmet?', 'What do you think about Kalmet?', 'តើអ្នកគិតអ្វីខ្លះអំពីការ Kalmet?', '1', '2016-01-08 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('73', 'no.', 'No.', 'លេខ', '1', '2016-01-01 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('74', 'price', 'Fees ', 'តម្លៃ', '1', '2016-01-22 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('75', 'note', 'Note', 'ចំណាំ', '1', '2016-01-09 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('76', 'view map', 'View Map', 'មើលផែនទី', '1', '2016-01-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('77', 'work & experience', 'Work & Experience', 'បទពិសោធន៍​ការងារ', '1', '2016-01-08 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('78', 'service & price', 'Service & Price', 'សេវានិងតំលៃ', '1', '2016-01-26 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('79', 'other doctors', 'Other Doctors', 'ក្រុមវេជ្ជបណ្ឌិតផ្សេងទៀត', '1', '2016-01-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('81', 'load more', 'Load More', 'ផ្ទុក​បន្ថែម', '1', '2016-01-18 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('82', 'view detail', 'View Detail', 'លម្អិត', '1', '2016-01-27 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('84', 'how you satify with the service prodied?', 'How you satify with the service prodied?', 'របៀបដែលអ្នក satify មួយនឹងសេវានេះ prodied?', '1', '2016-01-15 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('85', 'not satify', 'Not Satify', 'មិនពេញចិត្ត', '1', '2016-01-27 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('86', 'fair', 'Fair', 'ពិព័រណ៍', '1', '2016-01-14 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('87', 'good', 'Good', 'ល្អ', '1', '2016-01-31 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('88', 'quantity', 'Quantity', 'បរិមាណដែលត្រូវទទួលទាន', '1', '2016-01-25 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('89', 'submit', 'Submit', 'ដាក់ស្នើ', '1', '2016-01-31 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('90', 'service', 'Services', 'សេវា', '1', '2016-01-25 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('91', 'galleries', 'Galleries', 'រូបភាព', '1', '2016-01-28 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('92', 'home', 'Home', 'ទំព័រដើម', '1', '2016-01-12 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('94', 'service-&-price', 'Service & Price', 'Service & Price', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('95', 'featured-doctors', 'Featured Doctors', 'Featured Doctors', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('96', 'contact-us', 'Contact Us', 'ទំនាក់ទំនង', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('97', 'career', 'Career', 'អាជីព', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('98', 'type', 'Type', 'Type', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('101', 'type-a-specification', 'Type A Specification', 'Type A Specification', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('102', 'place-a-keyword-here', 'Place A Keyword Here', 'សូមវាយបញ្ចូលពាក្យទីនេះ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('103', 'what-do-you-want-to-find-?', 'What Do You Want To Find?', 'What Do You Want To Find?', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('104', 'what-is-your-illness-?', 'What is your illness?', 'What is your illness?', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('105', 'doctors', 'Doctors', 'Doctors', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('106', 'facebook-like', 'Please Like Us', 'Please Like Us', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('107', 'xxxxx', 'Background', 'ប្រវត្តិរូប', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('108', 'partners', 'Partners', 'partners', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('109', 'department', 'Department', 'ដេបាតម៉ង', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('110', 'pharmacy', 'Pharmacy', 'ឱសថស្ថាន', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('111', 'map', 'Map', 'ផែនទី', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('112', 'drop-your-idea', 'Health Hub Reviews ', 'ការស្ទង់មតិលេីស្ថាប័នសុខភាព', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('113', 'pharmacy-profile', 'Pharmacy\'s Profile', 'Pharmacy\'s Profile', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('114', 'tip-detail', 'Tip Detail', 'គន្លឹះសុខភាពលំអិត', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('115', 'news-detail', 'News Detail', 'ព័ត៍មានលំអិត', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('116', 'health-consultant', 'Health Consultant', 'ទីប្រឹក្សាសុខភាព', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('117', 'hospital-rating', 'Hospital Rating', 'ការវាយតម្លៃមន្ទីរពេទ្យ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('118', 'urgent', 'Hotlines ', 'Hotlines ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('119', 'p-partner', 'POTENTIAL PARTNERS', 'POTENTIAL PARTNERS', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('120', 'o-partner', 'OFFICIAL SPONSORS ', 'OFFICIAL SPONSORS ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('121', 'drop_ideas', 'Please select a hospital to be rated', 'សូមជ្រើសរើសមន្ទីរពេទ្យមួយដើម្បីវាយតម្លៃ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('122', 'what_patients_say_about_this_hospital', 'What_patients say about this hospital', 'មតិរបស់អ្នកជម្ងឺ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('123', 'search_by_map', 'Search By map', 'ស្វែរកតាមរយះផែនទី', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('125', 'view_as_search_result', 'View As Search Result', 'បង្ហាញពត៌មានជាក់លាក់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('126', 'search', 'Search', 'ស្វែងរក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('127', 'weight', 'Weight', 'ទម្ងន់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('128', 'place_of_living', 'Place Of Living ', 'ទីកន្លែងរស់នៅ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('129', 'tell_your_symtom', 'Tell your symtom', 'រៀបរាប់អំពីរោគសញ្ញារបស់អ្នក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('130', 'age', 'Age', 'អាយុ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('131', 'your_information', 'Your information', 'ពត៌មានរបស់អ្នក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('132', 'pharmacies_can_be_searched', '', '', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('133', 'we_found_doctors', 'WE FOUND 234 DOCTORS', 'យើងបានរក234វិជ្ជបណ្ឌិត', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('134', 'view_on_map', 'View on map', 'បង្ហាញលើផែនទី', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('135', 'no_data', 'There is no data avaiable for this search', 'ពុំមានទន្និយដែលនឹងត្រូវបង្ហាញ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('136', 'hospital_information', 'Hospital information', 'ពត៌មានមន្ទីពេទ្រ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('137', 'when_did_you_go_there', 'When did you go there', 'តើអ្នកទៅទីនោះពេលណា', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('138', 'your_code', 'Your Code', 'លេខកូដរបស់អ្នក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('139', 'your_rating_optional', 'Your rating optional', 'ការដាក់ពិន្ទុរបស់អ្នក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('140', 'recommendation', 'recommendation', 'ការផ្ដល់មតិ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('141', 'your_review', 'Your Review', 'ការពិនិត្យរបស់អ្នក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('142', 'your_opinion', 'Give your opinion', 'បង្ងាញអារម្មណ៏របស់អ្នកនៅទីនេះ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('143', 'max_charators', 'Max 100 charators', 'ចំនួនពាក្យអតិបរមា', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('144', 'hospital_name', 'Hospital Name', 'ឈ្មោះមន្ទិពេទ្យ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('145', 'remcommend_to', 'Do you want to recommen? ', 'Do you want to recommen? ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('146', 'how_likely_are_you_to_recommend', 'How like you recommend?', 'How like you recommend?', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('149', 'no_comment_to_be_shown', 'No comment to be shown', 'មិនមានcommentត្រូវបង្ហាញ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('150', '404', '404', '៤០៤', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('151', 'page-not-found', 'Page Not Found!', 'មិនមានទំព័រនេះទេ!', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('152', 'application-submission', 'Your application request is being process! Please be patient.', 'សំណើរបស់កម្មវិធីរបស់អ្នកត្រូវបានកំពុងដំណើរការ! សូម​អត់ធ្មត់។', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('153', 'ok', 'OK', 'យល់ព្រម', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('154', 'information', 'Information', 'Information', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('155', 'rating-requirment', 'Hospital Rating Requiremen', 'តម្រូវការវាយតម្លៃមន្ទីរពេទ្យ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('156', 'rating-instruction', 'To rate our hospital, we primary need your facebook verification. The information we need are your n', 'ដើម្បីវាយតម្លៃមន្ទីរពេទ្យរបស់អ្នក, Wi ត្រូវការផ្ទៀងផ្ទាត់បឋមហ្វេសប៊ុករបស់អ្នក។ ពដែលយើងត្រូវការគឺជាឈ្', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('157', 'rate-with-fb', 'Rate with Facebook', 'ការវាយតម្លៃដោយប្រើហ្វេសប៊ុក', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('158', 'cancel', 'Cancel', 'បោះបង់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('159', 'very-bad', 'Very Bad', 'អាក្រក់​ណាស់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('160', 'bad', 'Bad', 'អាក្រក់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('161', 'fair', 'Fair', 'មធ្យម', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('162', 'good', 'Good', 'ល្អ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('163', 'very-good', 'Very Good', 'ល្អ​ណាស់', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('164', 'enter-arrived-date', 'Please enter the date you arrived or left the hospital.', 'សូមបញ្ចូលកាលបរិច្ឆេទដែលអ្នកបានមកដល់ឬចាកចេញពីមន្ទីរពេទ្យ។', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('165', 'enter-your-code', 'Please enter your code.', 'សូមបញ្ចូលលេខកូដរបស់អ្នក។', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('166', 'feedback-requirment', 'Requirement', 'តម្រូវការ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('167', 'feedback-rating-instruction', 'We would like to know who you are in order to geve up feedback. ', 'យើងចង់ដឹងថាអ្នកជានរណានៅក្នុងគោលបំណងដើម្បីផ្តល់ឱ្យឡើងមតិអ្នកប្រើ។', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('168', 'need-your-feedback', 'We value your FEEDBACK. Please help us improved!', 'We value your FEEDBACK. Please help us improved!', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('169', 'give-feedback', 'Give Feedback', 'សូមផ្តល់មតិ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('170', 'select-distrit', 'Select District/Khan', 'ជ្រើសរើសស្រុក/ខណ្ឌ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('171', 'select-specification', 'Select Specification', 'ជ្រើសរើសជំនាញ', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('172', 'hospital_can_be_searched', '', '', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('173', 'doctors_can_be_searched', '', '', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_languages` VALUES ('174', 'select-province', 'Select Province/City', 'ជ្រើសរើសខេត្ត/ក្រុង', '1', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for tbl_layouts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_layouts`;
CREATE TABLE `tbl_layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_layouts
-- ----------------------------
INSERT INTO `tbl_layouts` VALUES ('1', 'ads-h', 'Horizontal Ads');
INSERT INTO `tbl_layouts` VALUES ('2', 'ads-v', 'Vertical Ads');
INSERT INTO `tbl_layouts` VALUES ('3', 'featured-doctors', 'Featured Doctors');
INSERT INTO `tbl_layouts` VALUES ('4', 'featured-hospitals', 'Featured Hospital');
INSERT INTO `tbl_layouts` VALUES ('5', 'featured-pharmacies', 'Featured Pharmacies');
INSERT INTO `tbl_layouts` VALUES ('6', 'featured-blogs', 'Featured Blogs');
INSERT INTO `tbl_layouts` VALUES ('7', 'feedback', 'Feedback Link');
INSERT INTO `tbl_layouts` VALUES ('8', 'fact-report', 'Fact Report');
INSERT INTO `tbl_layouts` VALUES ('9', 'hotlines', 'Hotlines');
INSERT INTO `tbl_layouts` VALUES ('10', 'partners', 'Partners');
INSERT INTO `tbl_layouts` VALUES ('11', 'programes', 'Programes');
INSERT INTO `tbl_layouts` VALUES ('12', 'health-consultant', 'Health Consultant');

-- ----------------------------
-- Table structure for tbl_layout_appears
-- ----------------------------
DROP TABLE IF EXISTS `tbl_layout_appears`;
CREATE TABLE `tbl_layout_appears` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `id_layout` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_layout_appears
-- ----------------------------
INSERT INTO `tbl_layout_appears` VALUES ('2', '1', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('3', '1', '3', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('4', '1', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('5', '1', '5', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('6', '1', '6', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('7', '1', '7', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('8', '1', '8', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('9', '1', '9', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('10', '1', '10', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('12', '1', '12', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('13', '2', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('14', '2', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('15', '2', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('16', '2', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('17', '2', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('18', '2', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('19', '2', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('20', '2', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('21', '2', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('22', '2', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('23', '2', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('24', '2', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('25', '3', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('26', '3', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('27', '3', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('28', '3', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('29', '3', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('30', '3', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('31', '3', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('32', '3', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('33', '3', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('34', '3', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('35', '3', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('36', '3', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('37', '4', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('38', '4', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('39', '4', '3', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('40', '4', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('41', '4', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('42', '4', '6', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('43', '4', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('44', '4', '8', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('45', '4', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('46', '4', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('47', '4', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('48', '4', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('49', '5', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('50', '5', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('51', '5', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('52', '5', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('53', '5', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('54', '5', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('55', '5', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('56', '5', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('57', '5', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('58', '5', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('59', '5', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('60', '5', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('61', '6', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('62', '6', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('63', '6', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('64', '6', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('65', '6', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('66', '6', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('67', '6', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('68', '6', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('69', '6', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('70', '6', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('71', '6', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('72', '6', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('73', '7', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('74', '7', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('75', '7', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('76', '7', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('77', '7', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('78', '7', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('79', '7', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('80', '7', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('81', '7', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('82', '7', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('83', '7', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('84', '7', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('85', '8', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('86', '8', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('87', '8', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('88', '8', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('90', '8', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('92', '8', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('94', '8', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('97', '9', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('98', '9', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('99', '9', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('100', '9', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('101', '9', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('102', '9', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('103', '9', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('104', '9', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('105', '9', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('106', '9', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('107', '9', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('108', '9', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('109', '11', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('110', '11', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('111', '11', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('112', '11', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('114', '11', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('115', '11', '7', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('118', '11', '10', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('121', '12', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('122', '12', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('123', '12', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('124', '12', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('125', '12', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('126', '12', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('127', '12', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('128', '12', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('129', '12', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('130', '12', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('131', '12', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('132', '12', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('133', '14', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('134', '14', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('135', '14', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('136', '14', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('137', '14', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('138', '14', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('139', '14', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('140', '14', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('141', '14', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('142', '14', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('143', '14', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('144', '14', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('145', '15', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('146', '15', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('147', '15', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('148', '15', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('149', '15', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('150', '15', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('151', '15', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('152', '15', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('153', '15', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('154', '15', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('155', '15', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('156', '15', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('157', '16', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('158', '16', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('159', '16', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('160', '16', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('161', '16', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('162', '16', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('163', '16', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('164', '16', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('165', '16', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('166', '16', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('167', '16', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('168', '16', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('169', '17', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('170', '17', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('171', '17', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('172', '17', '4', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('173', '17', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('174', '17', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('175', '17', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('176', '17', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('177', '17', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('178', '17', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('179', '17', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('180', '17', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('181', '18', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('182', '18', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('183', '18', '3', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('184', '18', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('185', '18', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('186', '18', '6', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('187', '18', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('188', '18', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('189', '18', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('190', '18', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('191', '18', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('192', '18', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('193', '19', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('194', '19', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('195', '19', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('196', '19', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('197', '19', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('198', '19', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('199', '19', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('200', '19', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('201', '19', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('202', '19', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('203', '19', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('204', '19', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('205', '20', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('206', '20', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('207', '20', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('208', '20', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('209', '20', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('210', '20', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('211', '20', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('212', '20', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('213', '20', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('214', '20', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('215', '20', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('216', '20', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('217', '21', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('218', '21', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('219', '21', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('220', '21', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('221', '21', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('222', '21', '6', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('223', '21', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('224', '21', '8', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('225', '21', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('226', '21', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('227', '21', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('228', '21', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('229', '22', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('230', '22', '2', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('231', '22', '3', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('232', '22', '4', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('233', '22', '5', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('234', '22', '6', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('235', '22', '7', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('236', '22', '8', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('237', '22', '9', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('238', '22', '10', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('239', '22', '11', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('240', '22', '12', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_layout_appears` VALUES ('241', '1', '11', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_newsletters
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletters`;
CREATE TABLE `tbl_newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` datetime NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `sent_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_newsletters
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_newsletter_blogs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_blogs`;
CREATE TABLE `tbl_newsletter_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_newsletter_blogs
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_pages
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pages`;
CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alais` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_banner_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_pages
-- ----------------------------
INSERT INTO `tbl_pages` VALUES ('1', 'homepage', 'Homepage', 'uploads/banners/banner_56a64fd3475f1.jpg', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('2', 'hospitals', 'Hospitals', 'uploads/banners/banner_56a64fabb6623.jpg', '1', '2016-03-12 18:08:57');
INSERT INTO `tbl_pages` VALUES ('3', 'view-hospital', 'View hospital', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 20:28:29');
INSERT INTO `tbl_pages` VALUES ('4', 'doctors', 'Doctors', 'uploads/banners/banner_56ee45130c8f7.jpg', '1', '2016-03-20 07:37:07');
INSERT INTO `tbl_pages` VALUES ('5', 'view-doctor', 'View Doctor', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:33:46');
INSERT INTO `tbl_pages` VALUES ('6', 'specialists', 'Specialists', 'uploads/banners/banner_56a64fabb6623.jpg', '1', '2016-03-13 04:57:56');
INSERT INTO `tbl_pages` VALUES ('7', 'news', 'News', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('8', 'blog-detail', 'Blog Detail', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('9', 'tip', 'Tip', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:47:14');
INSERT INTO `tbl_pages` VALUES ('11', 'about-us', 'About Us', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:57:50');
INSERT INTO `tbl_pages` VALUES ('12', 'contact-us', 'Contact Us', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:57:11');
INSERT INTO `tbl_pages` VALUES ('14', 'feedback', 'Feedback', 'uploads/banners/banner_56a64fd3475f1.jpg', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('15', 'career', 'Career', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:57:28');
INSERT INTO `tbl_pages` VALUES ('16', 'faqs', 'FAQs', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 20:11:47');
INSERT INTO `tbl_pages` VALUES ('17', 'term', 'Term', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-12 19:58:05');
INSERT INTO `tbl_pages` VALUES ('18', 'pharmaciesx', 'Pharmacies', 'uploads/banners/banner_56a64fabb6623.jpg', '1', '2016-03-12 18:18:43');
INSERT INTO `tbl_pages` VALUES ('19', 'mapx', 'Map', 'uploads/banners/banner_56a64fabb6623.jpg', '1', '2016-03-12 19:39:44');
INSERT INTO `tbl_pages` VALUES ('20', 'view-pharmacy', 'View Pharmacy', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('21', 'health-consultant', 'Health Consultant', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_pages` VALUES ('22', 'hospital-rating', 'Hospital Rating', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_partners
-- ----------------------------
DROP TABLE IF EXISTS `tbl_partners`;
CREATE TABLE `tbl_partners` (
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_partners
-- ----------------------------
INSERT INTO `tbl_partners` VALUES ('15', '1', 'sa', 'asdf', 'a', 'uploads/partners/partner_56cc4f6ce2af6.jpg', '0', '2016-02-23 13:24:12', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('9', '1', 'asd', 'a.c', 'aa', 'uploads/partners/partner_56cac01faf243.jpg', '1', '2016-02-22 09:00:31', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_partners` VALUES ('10', '2', 'ssa', 'a.c', 'aaa', 'uploads/partners/partner_56cb10ec01a39.jpg', '0', '2016-02-22 14:45:16', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('11', '1', 'Sat', 'Sat', 'Sathya', 'uploads/partners/partner_56cc489a41935.jpg', '0', '2016-02-23 12:55:06', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('12', '1', 'ty', 'ty', 'sa', 'uploads/partners/partner_56cc48ae2fa90.jpg', '0', '2016-02-23 12:55:26', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('13', '2', 'Da', 'Da', 'Re', 'uploads/partners/partner_56cc48cf30f02.jpg', '0', '2016-02-23 12:55:59', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('14', '2', 'Rahaya', 'Rahya', 'DDAA', 'uploads/partners/partner_56cc490ac254d.jpg', '0', '2016-02-23 12:56:58', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for tbl_phamacies
-- ----------------------------
DROP TABLE IF EXISTS `tbl_phamacies`;
CREATE TABLE `tbl_phamacies` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_phamacies
-- ----------------------------
INSERT INTO `tbl_phamacies` VALUES ('1', 'asd', 'asd', 'asdf', 'asdf', '<p>a</p>', '<p>a</p>', 'as', 'a', 'adf.com', 'sreynouch09@gmail.com', 'uploads/phamacies/phamacy56cc7d90456d8.jpg', '0', '0', '1', '0000-00-00 00:00:00', '2016-02-26 02:55:32', '1-asd', '6', '21');
INSERT INTO `tbl_phamacies` VALUES ('5', 'Sathya', 'Sathya', 'aa', 'aa', '<p>aaaa</p>', '<p>aaa</p>', 'aa', 'aa', 'aaa', 'saya@yahoo.com', 'uploads/phamacies/phamacy56cd81f4b2166.jpg', '0', '0', '1', '0000-00-00 00:00:00', '2016-02-26 02:54:43', '5-Sathya', '2', '2');
INSERT INTO `tbl_phamacies` VALUES ('6', 'Lucky', 'Lucky', 'Lucky', 'Lucky', '<p>Lucky</p>', '<p>Lucky</p>', 'Lucky', 'Lucky', 'Lucky', 'a@f.v', 'uploads/phamacies/phamacy56cd85e08fbb7.jpg', '11.556', '0', '1', '0000-00-00 00:00:00', '2016-02-26 02:53:38', '6-Lucky', '5', '21');

-- ----------------------------
-- Table structure for tbl_phamacy_galleries
-- ----------------------------
DROP TABLE IF EXISTS `tbl_phamacy_galleries`;
CREATE TABLE `tbl_phamacy_galleries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_phamacy` int(10) NOT NULL,
  `en_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_phamacy_galleries
-- ----------------------------
INSERT INTO `tbl_phamacy_galleries` VALUES ('1', '4', 'asdf', 'asd', 'uploads/phamacy-galleries/phamacy_gallery_56cc832711c92.jpg', '1', '0000-00-00 00:00:00', '2016-02-23 17:04:55');
INSERT INTO `tbl_phamacy_galleries` VALUES ('2', '5', 'sadf', 'sada', 'uploads/phamacy-galleries/phamacy_gallery_56cd85096198c.jpg', '1', '0000-00-00 00:00:00', '2016-02-24 11:25:13');

-- ----------------------------
-- Table structure for tbl_phones
-- ----------------------------
DROP TABLE IF EXISTS `tbl_phones`;
CREATE TABLE `tbl_phones` (
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_phones
-- ----------------------------
INSERT INTO `tbl_phones` VALUES ('2', '5', '2', '171', 'police Ruessey Kev', 'police Ruessey Kev', '097 778 0029', '1', '2016-03-18 05:55:33', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('3', '5', '2', '168', 'police Tuol Kouk', 'police Tuol Kouk', '097 778 0028', '1', '2016-03-18 05:53:28', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('4', '5', '2', '171', 'Police Roeusy Keo', 'Police Roeusy Keo', '0977780030', '1', '2016-03-18 03:43:20', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('5', '5', '2', '167', '7 Makara', '7 Makara', '097 778 0027', '1', '2016-03-18 03:44:34', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('6', '5', '2', '3', 'Police Doun Penh', 'Police Doun Penh', '012 999 999', '1', '2016-03-18 03:47:25', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('7', '5', '2', '169', 'Police Dangkao', 'Police Dangkao', '097 778 0030', '1', '2016-03-18 05:56:45', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('8', '7', '2', '165', 'Police Chamkar Mon', 'Police Chamkar Mon', '097 778 0031', '1', '2016-03-18 05:57:36', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('9', '5', '2', '4', 'Police Sen sok', 'Police Sen sok ', '097 778 0033', '1', '2016-03-18 05:58:29', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('10', '6', '2', '2', 'Health service Tek Thla', 'Health service Tek Thla', '012 587 344 / 012 718 324', '1', '2016-03-18 06:02:04', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('11', '6', '2', '166', 'Health service Doun Pemh ', 'Health service Doun Penh', '012 788 430 / 011 770 786', '1', '2016-03-18 06:03:57', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('12', '6', '2', '165', 'Health service Chamkar Mon', 'Health service Chamkar Mon', '012 830 271 / 012 838 619', '1', '2016-03-18 06:05:18', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('13', '6', '2', '172', 'Health service cambodai\'s hope', 'Health service cambodai\'s hope', '023 986 715 / 012 844 449 / 011 657 148', '1', '2016-03-18 06:12:54', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('14', '6', '2', '169', 'Clinical Mariscob International cambodai', 'Clinical Mariscob International cambodai', '077 959 170 / 023 720 125', '1', '2016-03-18 06:21:01', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('15', '6', '2', '167', 'RHAC', 'RHAC', '023 881 621 ', '1', '2016-03-18 06:23:44', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('16', '6', '2', '171', 'RHAC', 'RHAC', '023 990 773', '1', '2016-03-18 06:24:28', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('17', '6', '2', '4', 'RHAC', 'RHAC', '023 216 504 / 023 883 026', '1', '2016-03-18 06:25:32', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for tbl_phone_types
-- ----------------------------
DROP TABLE IF EXISTS `tbl_phone_types`;
CREATE TABLE `tbl_phone_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_phone_types
-- ----------------------------
INSERT INTO `tbl_phone_types` VALUES ('2', 'Ambulance', 'Ambulance', '1', '0000-00-00 00:00:00', '2016-03-18 03:36:06');
INSERT INTO `tbl_phone_types` VALUES ('3', 'Hospital', 'Hospital', '1', '0000-00-00 00:00:00', '2016-03-18 03:36:31');
INSERT INTO `tbl_phone_types` VALUES ('4', 'Fire Fighter', 'Fire Fighter', '1', '0000-00-00 00:00:00', '2016-03-18 03:36:50');
INSERT INTO `tbl_phone_types` VALUES ('5', 'Traffic Police', 'Traffic Police', '1', '0000-00-00 00:00:00', '2016-03-18 03:37:22');
INSERT INTO `tbl_phone_types` VALUES ('6', 'Health Service', 'Health Service', '1', '0000-00-00 00:00:00', '2016-03-18 05:05:49');
INSERT INTO `tbl_phone_types` VALUES ('7', 'Law Consultant', 'Law Consultant', '1', '0000-00-00 00:00:00', '2016-03-18 05:06:09');

-- ----------------------------
-- Table structure for tbl_programes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_programes`;
CREATE TABLE `tbl_programes` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_programes
-- ----------------------------
INSERT INTO `tbl_programes` VALUES ('1', 'sadfasd', 'sdafasd', 'https://www.facebook.com/Krupetcom-137344823272389/', 'uploads/programes/programe_567f9536c51c9.jpg', '1', '2016-01-12 04:36:16', '2', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('4', 'a', 'b', '#', 'uploads/programes/programe_56a0be7502abe.jpg', '0', '2016-01-21 12:18:13', '3', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('5', 'x', 'x', '#', 'uploads/programes/programe_56a0c10556da0.jpg', '1', '2016-01-21 12:29:09', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tbl_provinces
-- ----------------------------
DROP TABLE IF EXISTS `tbl_provinces`;
CREATE TABLE `tbl_provinces` (
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_provinces
-- ----------------------------
INSERT INTO `tbl_provinces` VALUES ('1', 'kratie', 'Kratie', 'ក្រចេះ', 'adslfj', 'asdfas', '1', '0000-00-00 00:00:00', '2015-12-31 16:04:51', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('2', 'phnom penh', 'Phnom Penh', 'ភ្នំពេញ', '', '', '1', '2015-12-23 01:37:18', '2015-12-22 01:37:24', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('3', '', 'Banteay Meanchey', 'បន្ទាយមានជ័យ', 'asr', 'a', '1', '0000-00-00 00:00:00', '2015-12-27 17:58:12', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('4', '', 'Battambang', 'បាត់ដំបង', 'a', 'a', '1', '0000-00-00 00:00:00', '2015-12-27 17:58:43', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('5', '', 'Kampong Cham', 'ខេត្តកំពង់ចាម', 'df', 'd', '1', '0000-00-00 00:00:00', '2015-12-27 17:59:07', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('6', '', 'Kampong Chhnang', 'កំពង់ឆ្នាំង', 'a', 'd', '1', '0000-00-00 00:00:00', '2015-12-27 17:59:35', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('7', '', 'Kampong Speu', 'កំពង់ស្ពឺ', 'a', 'za', '1', '0000-00-00 00:00:00', '2015-12-27 18:00:01', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('8', '', 'Kampong Thom', 'កំពង់ធំ', 'a', 's', '1', '0000-00-00 00:00:00', '2015-12-27 18:00:24', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('9', '', 'Kampot', 'កំពត', 'q', 'q', '1', '0000-00-00 00:00:00', '2015-12-27 18:00:55', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('10', '', 'Kandal', 'កណ្តាល', '1', '1', '1', '0000-00-00 00:00:00', '2015-12-27 18:01:22', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('11', '', 'Koh Kong', 'កោះកុង', 'q', 'w', '1', '0000-00-00 00:00:00', '2015-12-27 18:01:47', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('12', '', 'Mondul Kiri', 'មណ្ឌលគិរី', 'e', 'e', '1', '0000-00-00 00:00:00', '2015-12-27 18:02:13', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('13', '', 'Ouddar Meanchey', 'ឧត្តរមានជ័យ', '1', '2', '1', '0000-00-00 00:00:00', '2015-12-27 18:02:40', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('14', '', 'Preah Vihear', 'ព្រះវិហារ', '33', '3', '1', '0000-00-00 00:00:00', '2015-12-27 18:03:03', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('15', '', 'Prey Veng', 'ព្រៃវែង', 'v', 'v', '1', '0000-00-00 00:00:00', '2015-12-27 18:03:28', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('16', '', 'Pursat', 'ពោធិសាត់', 'Pursat', 'Pursat', '1', '0000-00-00 00:00:00', '2015-12-27 18:03:54', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('17', '', 'Ratanak Kiri', 'រតនគិរី', 'Ratanak Kiri', 'Ratanak Kiri', '1', '0000-00-00 00:00:00', '2015-12-27 18:04:17', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('18', '', 'Siem Reap', 'សៀមរាប', 'Siem Reap', 'Siem Reap', '1', '0000-00-00 00:00:00', '2015-12-27 18:04:44', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('19', '', 'Stung Treng', 'ស្ទឹងត្រែង', 'Stung Treng', 'Stung TrengStung Treng', '1', '0000-00-00 00:00:00', '2015-12-27 18:05:04', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('20', '', 'Svay Rieng', 'ស្វាយរៀង', 'Svay Rieng', 'Svay Rieng', '1', '0000-00-00 00:00:00', '2015-12-27 18:05:25', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('21', '', 'Takeo', 'តាកែវ', 'Takeo', 'Takeo', '1', '0000-00-00 00:00:00', '2016-02-25 09:45:20', '1', '1');

-- ----------------------------
-- Table structure for tbl_raters
-- ----------------------------
DROP TABLE IF EXISTS `tbl_raters`;
CREATE TABLE `tbl_raters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fb_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` datetime NOT NULL,
  `gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_raters
-- ----------------------------
INSERT INTO `tbl_raters` VALUES ('3', 'Khouch Koeun', 'koeun_math@yahoo.com', '791351847636392', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlf1/v/t1.0-1/p50x50/94403…f8cb5f0b8e&oe=579281EB&__gda__=1467679386_682267c1515838b5f11ce927b1591cb4', '2016-03-24 05:51:11', '');

-- ----------------------------
-- Table structure for tbl_servay_questions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_servay_questions`;
CREATE TABLE `tbl_servay_questions` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_servay_questions
-- ----------------------------
INSERT INTO `tbl_servay_questions` VALUES ('1', '1', 'Effective', 'Effective', 'Die?', 'Die?', '1', '0000-00-00 00:00:00', '2016-02-28 06:39:40');
INSERT INTO `tbl_servay_questions` VALUES ('2', '1', 'Fee', 'Fee', 'Expensive?', 'Expensive?', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:07');
INSERT INTO `tbl_servay_questions` VALUES ('3', '1', 'Service', 'Service', 'Bad?', 'Bad', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:58');
INSERT INTO `tbl_servay_questions` VALUES ('4', '1', 'ABC', 'sdf', 'How you satisfy this hospital?', 'How you satisfy this hospital?', '1', '0000-00-00 00:00:00', '2016-02-28 08:43:56');

-- ----------------------------
-- Table structure for tbl_services
-- ----------------------------
DROP TABLE IF EXISTS `tbl_services`;
CREATE TABLE `tbl_services` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_services
-- ----------------------------
INSERT INTO `tbl_services` VALUES ('1', '1', 'Service C', 'Service C', 'sad', 'sad', '1', '0000-00-00 00:00:00', '2016-02-05 14:14:17');
INSERT INTO `tbl_services` VALUES ('2', '2', 'Service B', 'Service B', 'df', 'fgh', '1', '0000-00-00 00:00:00', '2016-02-05 14:13:51');
INSERT INTO `tbl_services` VALUES ('3', '2', 'Service A', 'Service A', 'x', 'x', '1', '0000-00-00 00:00:00', '2016-02-05 14:14:08');
INSERT INTO `tbl_services` VALUES ('4', '2', 'Cardiology ', 'Cardiology ', '123', '123', '1', '0000-00-00 00:00:00', '2016-02-05 14:27:52');
INSERT INTO `tbl_services` VALUES ('5', '0', 'Emergency Ambulance', 'Emergency Ambulance', '123', '123', '1', '0000-00-00 00:00:00', '2016-01-14 10:11:11');
INSERT INTO `tbl_services` VALUES ('7', '0', 'Gastroenterology', 'Gastroenterology', '123', '123', '1', '0000-00-00 00:00:00', '2016-01-14 10:12:15');
INSERT INTO `tbl_services` VALUES ('8', '0', 'General & Internal Medicine', 'General & Internal Medicine', '123', '123', '1', '0000-00-00 00:00:00', '2016-01-14 10:12:44');
INSERT INTO `tbl_services` VALUES ('9', '0', 'General Surgery', 'General Surgery', '123', '123', '1', '0000-00-00 00:00:00', '2016-01-14 10:13:08');
INSERT INTO `tbl_services` VALUES ('10', '2', 'Ear, Nose and Throat', 'Ear, Nose and Throat', '123', '123', '1', '0000-00-00 00:00:00', '2016-02-05 14:24:39');

-- ----------------------------
-- Table structure for tbl_service_categores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_service_categores`;
CREATE TABLE `tbl_service_categores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_service_categores
-- ----------------------------
INSERT INTO `tbl_service_categores` VALUES ('1', 'Category B', 'Category B', '1', '0000-00-00 00:00:00', '2016-02-05 05:52:49');
INSERT INTO `tbl_service_categores` VALUES ('2', 'Category A', 'Category A', '1', '0000-00-00 00:00:00', '2016-02-05 05:52:33');

-- ----------------------------
-- Table structure for tbl_sex
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sex`;
CREATE TABLE `tbl_sex` (
  `id` int(11) NOT NULL DEFAULT '0',
  `en_name` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_sex
-- ----------------------------
INSERT INTO `tbl_sex` VALUES ('1', 'Male', 'Male', '1');
INSERT INTO `tbl_sex` VALUES ('2', 'Femal', 'Female', '1');

-- ----------------------------
-- Table structure for tbl_specialists
-- ----------------------------
DROP TABLE IF EXISTS `tbl_specialists`;
CREATE TABLE `tbl_specialists` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `kh_description` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_specialists
-- ----------------------------
INSERT INTO `tbl_specialists` VALUES ('1', 'Addiction psychiatrist', 'Addiction psychiatrist', '', '', '1', '2015-12-15 08:11:19', '2015-12-26 14:58:24');
INSERT INTO `tbl_specialists` VALUES ('3', 'Adolescent medicine specialist', 'Adolescent medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 14:58:51');
INSERT INTO `tbl_specialists` VALUES ('4', 'Allergist (immunologist)', 'Allergist (immunologist)', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 14:59:21');
INSERT INTO `tbl_specialists` VALUES ('5', 'Anesthesiologist', 'Anesthesiologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:00:55');
INSERT INTO `tbl_specialists` VALUES ('6', 'Cardiac electrophysiologist', 'Cardiac electrophysiologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:01:29');
INSERT INTO `tbl_specialists` VALUES ('7', 'Cardiologist', 'Cardiologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:02:14');
INSERT INTO `tbl_specialists` VALUES ('8', 'Cardiovascular surgeon', 'Cardiovascular surgeon', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:02:32');
INSERT INTO `tbl_specialists` VALUES ('9', 'Colon and rectal surgeon', 'Colon and rectal surgeon', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:03:06');
INSERT INTO `tbl_specialists` VALUES ('10', 'Critical care medicine specialist', 'Critical care medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:03:31');
INSERT INTO `tbl_specialists` VALUES ('11', 'Dermatologist', 'Dermatologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:03:54');
INSERT INTO `tbl_specialists` VALUES ('12', 'Developmental pediatrician', 'Developmental pediatrician', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:04:10');
INSERT INTO `tbl_specialists` VALUES ('13', 'Emergency medicine specialist', 'Emergency medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:04:37');
INSERT INTO `tbl_specialists` VALUES ('14', 'Endocrinologist', 'Endocrinologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:04:55');
INSERT INTO `tbl_specialists` VALUES ('15', 'Family medicine physician', 'Family medicine physician', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:05:22');
INSERT INTO `tbl_specialists` VALUES ('16', 'Forensic pathologist', 'Forensic pathologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:05:45');
INSERT INTO `tbl_specialists` VALUES ('17', 'Gastroenterologist', 'Gastroenterologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:06:07');
INSERT INTO `tbl_specialists` VALUES ('18', 'Geriatric medicine specialist', 'Geriatric medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:07:01');
INSERT INTO `tbl_specialists` VALUES ('19', 'Gynecologist', 'Gynecologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:07:14');
INSERT INTO `tbl_specialists` VALUES ('20', 'Gynecologic oncologist', 'Gynecologic oncologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:07:52');
INSERT INTO `tbl_specialists` VALUES ('21', 'Hand surgeon', 'Hand surgeon', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:08:27');
INSERT INTO `tbl_specialists` VALUES ('22', 'Hematologist', 'Hematologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:08:47');
INSERT INTO `tbl_specialists` VALUES ('23', 'Hepatologist', 'Hepatologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:09:07');
INSERT INTO `tbl_specialists` VALUES ('24', 'Hospitalist', 'Hospitalist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:09:24');
INSERT INTO `tbl_specialists` VALUES ('25', 'Hospice and palliative medicine specialist', 'Hospice and palliative medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:10:00');
INSERT INTO `tbl_specialists` VALUES ('26', 'Hyperbaric physician', 'Hyperbaric physician', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:10:11');
INSERT INTO `tbl_specialists` VALUES ('27', 'Infectious disease specialist', 'Infectious disease specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:10:34');
INSERT INTO `tbl_specialists` VALUES ('28', 'Internist', 'Internist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:10:52');
INSERT INTO `tbl_specialists` VALUES ('29', 'Interventional cardiologist', 'Interventional cardiologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:11:16');
INSERT INTO `tbl_specialists` VALUES ('30', 'Medical examiner', 'Medical examiner', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:12:33');
INSERT INTO `tbl_specialists` VALUES ('31', 'Medical geneticist', 'Medical geneticist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:13:59');
INSERT INTO `tbl_specialists` VALUES ('32', 'Neonatologist', 'Neonatologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:15:06');
INSERT INTO `tbl_specialists` VALUES ('33', 'Nephrologist', 'Nephrologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:15:38');
INSERT INTO `tbl_specialists` VALUES ('34', 'Neurological surgeon', 'Neurological surgeon', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:15:51');
INSERT INTO `tbl_specialists` VALUES ('35', 'Neurologist', 'Neurologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:16:13');
INSERT INTO `tbl_specialists` VALUES ('36', 'Nuclear medicine specialist', 'Nuclear medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:16:32');
INSERT INTO `tbl_specialists` VALUES ('37', 'Obstetrician', 'Obstetrician', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:16:55');
INSERT INTO `tbl_specialists` VALUES ('38', 'Occupational medicine specialist', 'Occupational medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:17:14');
INSERT INTO `tbl_specialists` VALUES ('39', 'Oncologist', 'Oncologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:17:44');
INSERT INTO `tbl_specialists` VALUES ('40', 'Ophthalmologist', 'Ophthalmologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:17:57');
INSERT INTO `tbl_specialists` VALUES ('41', 'Oral surgeon (maxillofacial surgeon)', 'Oral surgeon (maxillofacial surgeon)', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:18:16');
INSERT INTO `tbl_specialists` VALUES ('42', 'Orthopedic surgeon', 'Orthopedic surgeon', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:18:34');
INSERT INTO `tbl_specialists` VALUES ('43', 'Otolaryngologist (ear, nose, and throat specialist)', 'Otolaryngologist (ear, nose, and throat specialist)', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:18:53');
INSERT INTO `tbl_specialists` VALUES ('44', 'Pain management specialist', 'Pain management specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:19:07');
INSERT INTO `tbl_specialists` VALUES ('45', 'Pathologist', 'Pathologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:19:36');
INSERT INTO `tbl_specialists` VALUES ('46', 'Pediatrician', 'Pediatrician', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:19:49');
INSERT INTO `tbl_specialists` VALUES ('47', 'Perinatologist', 'Perinatologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:20:22');
INSERT INTO `tbl_specialists` VALUES ('48', 'Physiatrist', 'Physiatrist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:20:34');
INSERT INTO `tbl_specialists` VALUES ('49', 'Plastic surgeon', 'Plastic surgeon', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:21:04');
INSERT INTO `tbl_specialists` VALUES ('50', 'Psychiatrist', 'Psychiatrist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:21:13');
INSERT INTO `tbl_specialists` VALUES ('51', 'Pulmonologist', 'Pulmonologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:21:29');
INSERT INTO `tbl_specialists` VALUES ('52', 'Radiation oncologist', 'Radiation oncologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:21:47');
INSERT INTO `tbl_specialists` VALUES ('53', 'Radiologist', 'Radiologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:22:03');
INSERT INTO `tbl_specialists` VALUES ('54', 'Reproductive endocrinologist', 'Reproductive endocrinologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:22:20');
INSERT INTO `tbl_specialists` VALUES ('55', 'Rheumatologist', 'Rheumatologist', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:22:45');
INSERT INTO `tbl_specialists` VALUES ('56', 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:23:05');
INSERT INTO `tbl_specialists` VALUES ('57', 'Sleep disorders specialist', 'Sleep disorders specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:23:27');
INSERT INTO `tbl_specialists` VALUES ('58', 'Spinal cord injury specialist', 'Spinal cord injury specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:24:24');
INSERT INTO `tbl_specialists` VALUES ('59', 'Sports medicine specialist', 'Sports medicine specialist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:25:09');
INSERT INTO `tbl_specialists` VALUES ('60', 'Surgeon', 'Surgeon', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:26:09');
INSERT INTO `tbl_specialists` VALUES ('61', 'Thoracic surgeon', 'Thoracic surgeon', '', '', '1', '0000-00-00 00:00:00', '2015-12-26 15:26:27');
INSERT INTO `tbl_specialists` VALUES ('62', 'Urologist', 'Urologist', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:26:48');
INSERT INTO `tbl_specialists` VALUES ('63', 'Vascular surgeon', 'Vascular surgeon', '', '', '0', '0000-00-00 00:00:00', '2015-12-26 15:27:04');
INSERT INTO `tbl_specialists` VALUES ('64', 'Gynecologist and Obstetrician ', 'Gynecologist and Obstetrician ', '', '', '0', '0000-00-00 00:00:00', '2016-01-19 03:54:12');

-- ----------------------------
-- Table structure for tbl_subscribers
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subscribers`;
CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lan` varchar(30) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `email` varchar(59) NOT NULL,
  `created_dt` datetime NOT NULL,
  `unactive_dt` datetime NOT NULL,
  `unactive_code` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_subscribers
-- ----------------------------
INSERT INTO `tbl_subscribers` VALUES ('13', 'kh', '1', 'dara@yahoo.com', '2016-03-25 15:56:50', '0000-00-00 00:00:00', 'dara@yahoo.com-56f551b2e6cb7');
INSERT INTO `tbl_subscribers` VALUES ('12', 'kh', '1', 'koeun_math@yahoo.com', '2016-03-25 15:48:11', '0000-00-00 00:00:00', 'koeun_math@yahoo.com-56f54fab0');

-- ----------------------------
-- Table structure for tbl_tags
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tags`;
CREATE TABLE `tbl_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_tags
-- ----------------------------
INSERT INTO `tbl_tags` VALUES ('1', 'D', 'D', '1', '0000-00-00 00:00:00', '2016-02-26 17:16:31');
INSERT INTO `tbl_tags` VALUES ('2', 'C', 'C', '1', '0000-00-00 00:00:00', '2016-02-26 17:16:19');
INSERT INTO `tbl_tags` VALUES ('3', 'B', 'B', '1', '0000-00-00 00:00:00', '2016-02-26 17:16:03');
INSERT INTO `tbl_tags` VALUES ('4', 'Cofee', 'Cofee', '1', '0000-00-00 00:00:00', '2016-02-28 09:28:05');

-- ----------------------------
-- Table structure for tbl_vertical_ads_displays
-- ----------------------------
DROP TABLE IF EXISTS `tbl_vertical_ads_displays`;
CREATE TABLE `tbl_vertical_ads_displays` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_page` int(10) NOT NULL,
  `id_ad` int(10) NOT NULL,
  `is_next` tinyint(1) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_vertical_ads_displays
-- ----------------------------
INSERT INTO `tbl_vertical_ads_displays` VALUES ('12', '1', '2', '0', '', '0', '0000-00-00 00:00:00', '2016-03-13 02:54:52');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('13', '1', '3', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 02:57:35');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('14', '1', '2', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 04:10:34');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('15', '2', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 04:38:22');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('16', '2', '2', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 04:40:34');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('17', '3', '2', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 04:42:42');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('18', '22', '2', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 04:45:43');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('19', '4', '2', '0', '', '0', '0000-00-00 00:00:00', '2016-03-13 04:48:31');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('20', '4', '3', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 04:50:04');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('21', '5', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 04:52:17');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('22', '6', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 04:56:18');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('23', '18', '2', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:01:47');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('24', '20', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:04:09');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('25', '19', '3', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 05:06:51');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('26', '9', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:11:16');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('27', '7', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:11:25');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('28', '8', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:12:31');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('29', '11', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:14:22');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('30', '12', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:16:55');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('31', '15', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:17:28');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('32', '17', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:17:57');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('33', '16', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:20:46');

-- ----------------------------
-- View structure for view_blog_for_search
-- ----------------------------
DROP VIEW IF EXISTS `view_blog_for_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_blog_for_search` AS select `b`.`slug` AS `slug`,`b`.`id_category` AS `id_category`,`b`.`en_title` AS `en_title`,`b`.`kh_title` AS `kh_title`,`b`.`en_pre_content` AS `en_pre_content`,`b`.`kh_pre_content` AS `kh_pre_content`,`b`.`image` AS `image`,`b`.`created_dt` AS `created_dt`,`t`.`en_name` AS `en_tag`,`t`.`kh_name` AS `kh_tag` from ((`tbl_blogs` `b` join `tbl_blog_tags` `b_t` on((`b_t`.`id_blog` = `b`.`id`))) join `tbl_tags` `t` on((`t`.`id` = `b_t`.`id_tag`))) where ((`b`.`is_published` = 1) and (`t`.`is_published` = 1)); ;

-- ----------------------------
-- View structure for view_doctors_for_searching
-- ----------------------------
DROP VIEW IF EXISTS `view_doctors_for_searching`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_doctors_for_searching` AS select `d`.`id` AS `id`,`d`.`slug` AS `slug`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`d`.`en_title` AS `en_title`,`d`.`kh_title` AS `kh_title`,`d`.`en_degree` AS `en_degree`,`d`.`kh_degree` AS `kh_degree`,`d`.`phone` AS `phone`,`d`.`email` AS `email`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`en_experien` AS `en_experience`,`d`.`kh_experien` AS `kh_experience`,`d`.`image` AS `image`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`di`.`en_name` AS `en_distrit`,`di`.`kh_name` AS `kh_distrit` from (((`tbl_doctors` `d` join `tbl_specialists` `s` on((`s`.`id` = `d`.`id_specialist`))) join `tbl_provinces` `p` on((`p`.`id` = `d`.`id_province`))) join `tbl_distrits` `di` on((`di`.`id` = `d`.`id_distrit`))) where ((`d`.`is_published` = 1) and (`s`.`is_published` = 1) and (`di`.`is_published` = 1) and (`p`.`is_published` = 1)); ;

-- ----------------------------
-- View structure for view_doctor_hospitals
-- ----------------------------
DROP VIEW IF EXISTS `view_doctor_hospitals`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_doctor_hospitals` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`h`.`en_name` AS `en_name`,`h`.`slug` AS `slug`,`h`.`kh_name` AS `kh_name`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_hospitals` `h` on((`h_d`.`id_hospital` = `h`.`id`))) join `tbl_provinces` `p` on((`h`.`id_province` = `p`.`id`))); ;

-- ----------------------------
-- View structure for view_doctor_services
-- ----------------------------
DROP VIEW IF EXISTS `view_doctor_services`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_doctor_services` AS select `d_s`.`id_doctor` AS `id_doctor`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`d_s`.`price` AS `price`,`d_s`.`en_note` AS `en_note`,`d_s`.`kh_note` AS `kh_note` from (`tbl_doctor_services` `d_s` join `tbl_services` `s` on((`s`.`id` = `d_s`.`id_service`))); ;

-- ----------------------------
-- View structure for view_hospitals_for_searhing
-- ----------------------------
DROP VIEW IF EXISTS `view_hospitals_for_searhing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_hospitals_for_searhing` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `en_type`,`t`.`kh_name` AS `kh_type`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`d`.`en_name` AS `en_distrit`,`d`.`kh_name` AS `kh_distrit` from (((((((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_specialists` `h_s` on((`h`.`id` = `h_s`.`id_hospital`))) join `tbl_specialists` `s` on((`h_s`.`id_specialist` = `s`.`id`))) join `tbl_hospital_branches` `b` on((`h`.`id` = `b`.`id_hospital`))) join `tbl_provinces` `p` on((`b`.`id_province` = `p`.`id`))) join `tbl_distrits` `d` on((`b`.`id_distrit` = `d`.`id`))) where ((`h`.`is_published` = 1) and (`p`.`is_published` = 1) and (`d`.`is_published` = 1) and (`b`.`is_default` = 1)); ;

-- ----------------------------
-- View structure for view_hospital_doctors
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_doctors`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_hospital_doctors` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`s`.`en_name` AS `en_specialist`,`s`.`kh_name` AS `kh_specialist`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_doctors` `d` on((`h_d`.`id_doctor` = `d`.`id`))) join `tbl_specialists` `s` on((`d`.`id_specialist` = `s`.`id`))); ;

-- ----------------------------
-- View structure for view_hospital_info
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_hospital_info` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_director` AS `en_director`,`h`.`kh_director` AS `kh_director`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`h`.`id_hospital_category` AS `id_hospital_category`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`website` AS `website`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`b`.`working_hours` AS `working_hours`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `kh_type`,`t`.`kh_name` AS `en_type` from (((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h`.`id`))) where ((`h`.`is_published` = 1) and (`b`.`is_default` = 1)); ;

-- ----------------------------
-- View structure for view_hospital_rating_score
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_rating_score`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_hospital_rating_score` AS select `q`.`en_name` AS `name`,`q`.`en_question` AS `question`,`h_r_s`.`score` AS `score`,`h_r_s`.`id_hospital_rating` AS `id_hospital_rating` from (`tbl_servay_questions` `q` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_question` = `q`.`id`))); ;

-- ----------------------------
-- View structure for view_hospital_services
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_services`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_hospital_services` AS select `h_s`.`id_hospital` AS `id_hospital`,`d`.`en_name` AS `en_department`,`d`.`kh_name` AS `kh_department`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`h_s`.`price` AS `price`,`h_s`.`en_note` AS `en_note`,`h_s`.`kh_note` AS `kh_note` from ((`tbl_hospital_services` `h_s` join `tbl_services` `s` on((`s`.`id` = `h_s`.`id_service`))) join `tbl_service_categores` `d` on((`d`.`id` = `s`.`id_service_category`))); ;

-- ----------------------------
-- View structure for view_phamacy_for_search
-- ----------------------------
DROP VIEW IF EXISTS `view_phamacy_for_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_phamacy_for_search` AS select `ph`.`id` AS `id`,`ph`.`slug` AS `slug`,`ph`.`image` AS `image`,`ph`.`en_name` AS `en_name`,`ph`.`kh_name` AS `kh_name`,`ph`.`email` AS `email`,`ph`.`phone` AS `phone`,`pr`.`en_name` AS `en_province_name`,`pr`.`kh_name` AS `kh_province_name`,`d`.`en_name` AS `en_distrit_name`,`d`.`kh_name` AS `kh_distrit_name` from ((`tbl_phamacies` `ph` join `tbl_provinces` `pr` on((`pr`.`id` = `ph`.`id_province`))) join `tbl_distrits` `d` on((`d`.`id` = `ph`.`id_distrit`))) where ((`ph`.`is_published` = 1) and (`pr`.`is_published` = 1) and (`d`.`is_published` = 1)); ;

-- ----------------------------
-- View structure for view_rating_data
-- ----------------------------
DROP VIEW IF EXISTS `view_rating_data`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_rating_data` AS select `h_r`.`code` AS `code`,`h_r`.`is_recommended` AS `is_recommended`,sum(`h_r_s`.`score`) AS `total_score`,count(`h_r_s`.`id`) AS `num_of_score_divider`,`h_r`.`id_hospital` AS `id_hospital` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r`.`id_hospital`; ;

-- ----------------------------
-- View structure for view_rating_for_hospital_search
-- ----------------------------
DROP VIEW IF EXISTS `view_rating_for_hospital_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_rating_for_hospital_search` AS select `h_r`.`id_hospital` AS `id_hospital`,`h_r`.`is_recommended` AS `is_recommended`,avg(`h_r_s`.`score`) AS `average` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r_s`.`id_hospital_rating` ;
SET FOREIGN_KEY_CHECKS=1;
