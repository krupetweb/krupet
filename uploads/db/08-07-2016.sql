/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : camcyber_krupet

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-07-08 22:41:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
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
-- Table structure for `ci_sessions`
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
-- Table structure for `tbl_ads`
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
INSERT INTO `tbl_ads` VALUES ('2', 'Ads 1', '#', 'uploads/advertisments/advertisment_56af7cb2c3252.jpg', 'uploads/advertisments/advertisment_56af7cb2c571b.jpg', '0', '0', '0000-00-00 00:00:00', '2016-02-04 17:23:28');
INSERT INTO `tbl_ads` VALUES ('3', 'Ads 2', '#', 'uploads/advertisments/advertisment_56b20eddbd09b.jpg', 'uploads/advertisments/advertisment_56b20f030119b.jpg', '0', '1', '0000-00-00 00:00:00', '2016-02-03 15:30:27');

-- ----------------------------
-- Table structure for `tbl_blogs`
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_blogs
-- ----------------------------
INSERT INTO `tbl_blogs` VALUES ('12', '2', 'Tobacco Companies Sued Over Cancer-Causing Substances in E-Cigarettes', 'ក្រុមហ៊ុនថ្នាំជក់ប្តឹងបង្កជំងឺមហារីកក្នុងអ៊ីបារី', 'A lawsuit by environmental watchdog group CEH targets tobacco and e-cigarette companies whose products the group says emit two toxic chemicals.\r\n', 'ពាក្យបណ្តឹងដោយក្រុមអង្គការឃ្លាំមើលបរិស្ថានបាន CEH មួយផ្តោតសំខាន់លើក្រុមហ៊ុនថ្នាំជក់និង e-បារីដែលផលិតផលរបស់ក្រុមនេះបាននិយាយថាបញ្ចេញសារធាតុគីមីពុលទាំងពីរនាក់។', '<p>Several brands of electronic cigarettes, e-liquids, and other vaping products give off high levels of two cancer-causing chemicals even during normal use, according to tests commissioned by the Center for Environmental Health (CEH).</p>\r\n<p>“More than half of the products we tested had levels above the California safety standard,” Charles Margulis, media director for CEH, told Healthline, and “many of the products were quite high.”</p>\r\n<p>The tests prompted the nonprofit to file lawsuits against tobacco and other e-cigarette companies for failing to warn consumers about these chemicals, as required by Proposition 65, California’s consumer protection law.</p>\r\n<p>CEH’s announcement comes on the same day as the American Cancer Society’s Great American Smokeout, an event designed to help people give up tobacco.</p>', '<p>មានម៉ាកបារីអេឡិចត្រូនិជាច្រើន, អ៊ីរាវនិងផលិតផល vaping ដទៃទៀតផ្តល់ឱ្យបិទកម្រិតខ្ពស់នៃសារធាតុគីមីបង្កមហារីកទាំងពីរនាក់សូម្បីតែក្នុងការប្រើប្រាស់ធម្មតានេះបើយោងតាមការធ្វើតេស្តបានទទួលបន្ទុកដោយមជ្ឈមណ្ឌលសុខភាពបរិស្ថាន (CEH) ។</p>\r\n<p>\"ជាងពាក់កណ្តានៃផលិតផលដែលយើងបានធ្វើតេស្តមានកម្រិតស្ដង់ដារសុវត្ថិភាពនៅខាងលើកាលីហ្វញ៉ា\" លោក Charles Margulis នាយកប្រព័ន្ធផ្សព្វផ្សាយសម្រាប់ CEH បានថ្លែងប្រាប់ Healthline និង«មនុស្សជាច្រើននៃផលិតផលក្នុងចំនួនយ៉ាងខ្ពស់»។</p>\r\n<p>ការធ្វើតេស្តនេះបានជំរុញមិនរកកម្រៃដើម្បីដាក់ពាក្យបណ្តឹងប្រឆាំងនឹងថ្នាំជក់និងក្រុមហ៊ុនអេឡិចត្រូនិបារីផ្សេងទៀតសម្រាប់ការបរាជ័យក្នុងការព្រមានអតិថិជនអំពីសារធាតុគីមីទាំងនេះដូចដែលតម្រូវដោយសំណើ 65, ច្បាប់ការពារអតិថិជនរបស់រដ្ឋ California ។</p>\r\n<p>សេចក្តីប្រកាស CEH មកនៅថ្ងៃដដែលនោះជាការសមាគមន៍ជំងឺមហារីកអាមេរិករបស់មហាអាមេរិច Smokeout ព្រឹត្តិការណ៍ដែលបានរចនាឡើងដើម្បីជួយប្រជាជនឱ្យឡើងថ្នាំជក់មួយ។</p>', '2016-03-12-Tobacco-Companies-Sued-Over-Cancer-Causing-Substances-in-E-Cigarettes', 'uploads/blogs/blog_567f63d867ff6.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:15:08', '1');
INSERT INTO `tbl_blogs` VALUES ('13', '2', 'Measles Vaccine Has Saved 17 Million Lives Since the Year 2000', 'ថ្នាំបង្ការជំងឺកញ្ជ្រឹលបានរក្សាទុក 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000', 'Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).\r\n', 'កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។', '<p>Global efforts to immunize more children against measles have saved more than 17 million lives since 2000, according to data just released by the World Health Organization (WHO) and the U.S. Centers for Disease Control and Prevention (CDC).</p>\r\n\r\n<p>Measles is one of the most contagious diseases ever known. A sick person will infect 90 percent of the unimmunized people with whom he or she comes into contact.</p>\r\n\r\n<p>Though it only rarely kills, children are especially vulnerable.</p>\r\n\r\n<p>Measles<br />\r\nIn 2001, WHO, the CDC, the American Red Cross, the United Nations Foundation, and UNICEF launched the Measles &amp; Rubella Initiative. The goal of the program was to cut deaths by 95 percent by 2015 and to eliminate measles altogether in five of six global regions by 2020.<br />\r\n&nbsp;</p>\r\n', '<p>កិច្ចខិតខំប្រឹងប្រែងរបស់ពិភពលោកដើម្បីបង្ការកូនច្រើនប្រឆាំងនឹងជំងឺកញ្ជ្រឹលបានរក្សាទុកជាង 17 លាននាក់ចាប់តាំងពីឆ្នាំ 2000 នេះបើយោងតាមទិន្នន័យដែលគ្រាន់តែបានចេញផ្សាយដោយអង្គការសុខភាពពិភពលោក (WHO) និងមជ្ឈមណ្ឌលសម្រាប់គ្រប់គ្រងនិងការពារជំងឺ (CDC) ។</p>\r\n\r\n<p>ក្ឹលជាផ្នែកមួយនៃជំងឺឆ្លងបំផុតដែលបានធ្លាប់បានដឹង។ អ្នកជំងឺនឹងឆ្លងបាន 90 ភាគរយនៃប្រជាជន unimmunized ដែលគាត់ឬនាងមានទំនាក់ទំនងជាមួយនរណា។</p>\r\n\r\n<p>ទោះបីជាវាតែកម្រសម្លាប់កុមារដែលងាយរងគ្រោះជាពិសេស។</p>\r\n\r\n<p>ក្ឹល<br />\r\nក្នុងឆ្នាំ 2001 អង្គការសុខភាពពិភពលោកដែលជារបស់ CDC អាមេរិកកាកបាទក្រហមមូលនិធិអង្គការសហប្រជាជាតិនិងអង្គការ UNICEF បានចាប់ផ្តើមគំនិតផ្តួចផ្តើកញ្ជ្រឹលនិងស្អូច។ គោលដៅនៃកម្មវិធីនេះគឺដើម្បីកាត់បន្ថយការស្លាប់ដោយ 95 ភាគរយនៅឆ្នាំ 2015 និងដើម្បីលុបបំបាត់ជំងឺកញ្ជ្រិលទាំងអស់គ្នាក្នុងប្រាំប្រាំមួយតាមតំបន់ជាសកលនៅឆ្នាំ 2020 ។</p>\r\n', '', 'uploads/blogs/blog_567f62fb68bf2.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:03:07', '7');
INSERT INTO `tbl_blogs` VALUES ('14', '2', '9 Misconceptions You Probably Have About HIV/AIDS', '9 យល់ខុសអ្នកប្រហែលជាមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍', 'HIV/AIDS doesn’t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren’t even aware of it.', 'មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។', '<p>HIV/AIDS doesn&rsquo;t make headlines like it did 20 years ago, but it is still a major health concern. Over 35 million people are currently living with HIV infections worldwide, and over half of them aren&rsquo;t even aware of it.</p>\r\n\r\n<p>But while the World Health Organization says that the virus has killed some 39 million people since 1981, HIV (human immunodeficiency virus) and AIDS (acquired immunodeficiency syndrome) continue to be plagued by misinformation.</p>\r\n\r\n<p>We reached out to several experts to get their opinions on what the most glaring misconceptions people in the United States have about HIV/AIDS. They treat people, educate medical students, and provide support to patients coping with the disease. Here are the top nine myths and misconceptions that they, and people with HIV or AIDS, continue to combat:</p>\r\n', '<p>មេរោគអេដស៍ / ជំងឺអេដស៍មិនធ្វើឱ្យចំណងជើងដូចជាវាបានធ្វើកាលពី 20 ឆ្នាំមុននោះទេប៉ុន្តែវានៅតែជាបញ្ហាសុខភាពធំមួយ។ បច្ចុប្បន្ននេះជាង 35 លាននាក់កំពុងរស់នៅជាមួយនឹងការឆ្លងមេរោគអេដស៍នៅទូទាំងពិភពលោកហើយជាងពាក់កណ្តាលនៃពួកគេមិនបានដឹងពីវា។</p>\r\n\r\n<p>ប៉ុន្តែខណៈដែលអង្គការសុខភាពពិភពលោកនិយាយថាវីរុសនេះបានសម្លាប់មនុស្សប្រហែល 39 លាននាក់ចាប់តាំងពីឆ្នាំ 1981 មេរោគអេដស៍ (មេរោគមនុស្ស) និងជំងឺអេដស៍ (បណ្តុំរោគសញ្ញាហ៊ីបានទិញ) បន្តត្រូវបានញាំញីដោយការយល់ច្រឡំ។</p>\r\n\r\n<p>យើងបានឈានដល់ចេញទៅជាអ្នកជំនាញជាច្រើនដើម្បីទទួលបានមតិរបស់ខ្លួននៅលើអ្វីដែលជាការយល់ច្រឡំប្រលោះបំផុតនៅក្នុងការដែលមនុស្សសហរដ្ឋអាមេរិកមានអំពីមេរោគអេដស៍ / ជំងឺអេដស៍។ ពួកគេបានព្យាបាលមនុស្ស, អប់រំសិស្សនិស្សិតវេជ្ជសាស្រ្តនិងផ្តល់ការគាំទ្រដល់អ្នកជំងឺតស៊ូជាមួយនឹងជំងឺនេះ។ ខាងក្រោមនេះជារឿងព្រេងកំពូលនិងប្រាំបួនដែលថាពួកគេយល់ច្រឡំនិងអ្នកដែលមានផ្ទុកមេរោគអេដស៍ឬជំងឺអេដស៍នៅតែបន្តការប្រយុទ្ធគឺ:</p>\r\n', '', 'uploads/blogs/blog_567f649613b57.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:09:58', '6');
INSERT INTO `tbl_blogs` VALUES ('15', '2', 'The Best ADHD Podcasts of 2015', 'នេះផតខាស់ ADHD ល្អបំផុតនៃឆ្នាំ 2015', 'Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Research', 'យកចិត្តទុកដាក់ភាពមិនប្រក្រតីឱនភាព (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ', '<p>Attention deficit hyperactive disorder (ADHD) is one of the most common childhood disorders, and it continues into adulthood. According to the National Institutes of Health, it affects an estimated 4.1 percent of Americans over 18 years old. Researchers still aren&rsquo;t sure exactly what causes it, but both genetic and environmental factors are believed to play major roles.</p>\r\n<p>Living with ADHD isn&rsquo;t easy. People with ADHD have trouble focusing on one task. They may fidget or get bored easily. The disorder can make it more difficult to accomplish goals at work or at school, and potentially interfere with your daily life.</p>\r\n<p><br /> Treatments for ADHD include medications, therapy, and educational programs that focus on keeping symptoms under control. While there is no cure, it can be more manageable with understanding and the right coping tools.</p>\r\n<p>These podcasts certainly fit the bill, and might offer some helpful strategies that you can apply in your daily life.</p>', '<p>ឱនភាពយកចិត្តទុកដាក់ជំងឺផ្ចង់អារម្មណ៍ (ADHD) គឺជាការមួយនៃជំងឺកុមារភាពទូទៅបំផុតហើយវានៅតែបន្តចូលទៅក្នុងមនុស្សពេញវ័យ។ បើយោងទៅតាមវិទ្យាស្ថានជាតិសុខភាព, វាប៉ះពាល់ 4,1 ភាគរយប្រមាណជនជាតិអាមេរិកអាយុលើសពី 18 ឆ្នាំ។ ក្រុមអ្នកស្រាវជ្រាវនៅតែមិនប្រាកដថាវាបណ្តាលពិតជាអ្វីនោះទេប៉ុន្តែកត្តាទាំងពីរហ្សែននិងបរិស្ថានត្រូវបានគេជឿថាដើម្បីដើរតួនាទីសំខាន់មួយ។</p>\r\n<p>ការរស់នៅជាមួយ ADHD គឺមិនមែនជាការងាយស្រួល។ មនុស្សដែលមាន ADHD មានបញ្ហាក្នុងការផ្តោតជាសំខាន់នៅលើភារកិច្ចតែមួយ។ ពួកគេអាចនោមិនសុខឬធុញទ្រាន់យ៉ាងងាយស្រួល។ ជំងឺនេះអាចធ្វើឱ្យវាមានការលំបាកបន្ថែមទៀតដើម្បីសម្រេចបានគោលដៅនៅកន្លែងធ្វើការឬនៅសាលានិងមានសក្តានុពលជ្រៀតជ្រែកជាមួយនឹងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>\r\n<p><br /> ការព្យាបាលសម្រាប់ ADHD រួមមានការប្រើថ្នាំ, ការព្យាបាល, និងកម្មវិធីអប់រំដែលផ្តោតជាសំខាន់នៅលើការរក្សារោគសញ្ញាមួយដែលស្ថិតនៅក្រោមការត្រួតពិនិត្យ។ ខណៈពេលដែលមានគឺជាការព្យាបាលនោះទេ, វាអាចត្រូវបានគ្រប់គ្រងដោយការយល់ដឹងនិងសិទ្ធិតស៊ូឧបករណ៍។</p>\r\n<p>ផតខាស់ទាំងនេះពិតជាសមនឹងវិក័យប័ត្រនិងអាចផ្តល់នូវយុទ្ធសាស្រ្តដែលមានប្រយោជន៍មួយចំនួនដែលអ្នកអាចអនុវត្តនៅក្នុងជីវិតប្រចាំថ្ងៃរបស់អ្នក។</p>', '2016-02-04-The-Best-ADHD-Podcasts-of-2015', 'uploads/blogs/blog_567f655f6a8c8.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-04 12:29:57', '5');
INSERT INTO `tbl_blogs` VALUES ('16', '1', 'Sad Songs Say So Much: The Music You Choose May Say Something About Your Mental Health', 'ចម្រៀងសោកស្តាយនិយាយថាដូច្នេះច្រើន: តន្រ្តីអ្នកជ្រើសអាចនិយាយអ្វីមួយអំពីសុខភាពផ្លូវចិត្តរបស់អ្នក', 'Researchers look into what different types of music do to listeners’ mental state as well as if music can help calm down those who are anxious.', 'អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។', '<p>Researchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p><br />\r\nResearchers look into what different types of music do to listeners&rsquo; mental state as well as if music can help calm down those who are anxious.</p>\r\n\r\n<p>Music Mental<br />\r\n&ldquo;Help! I need somebody. Help!&rdquo;</p>\r\n\r\n<p>The Beatles blasted out that well-known tune in 1965.</p>\r\n\r\n<p>Whether you prefer pop, heavy metal, or hip-hop, the songs you choose may provide a glimpse into the state of your mental health.</p>\r\n\r\n<p>They may also have long-lasting effects on your mood.</p>\r\n\r\n<p>Can sad songs cheer you up? Do aggressive songs put you on edge? That depends on which expert you are tuning in to.</p>\r\n', '<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>អ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p><br />\r\nអ្នកស្រាវជ្រាវបានមើលទៅក្នុងអ្វីដែលប្រភេទផ្សេងគ្នានៃតន្ត្រីធ្វើដើម្បីសភាពផ្លូវចិត្តអ្នកស្តាប់ផងដែរដូចជាប្រសិនបើតន្ត្រីអាចជួយបន្ថយការអស់អ្នកដែលមានចិត្តអន្ទះសា។</p>\r\n\r\n<p>តន្ត្រីផ្លូវចិត្ត<br />\r\n&quot;ជួយ! ខ្ញុំ​ត្រូវ​ការ​នរណា​ម្នាក់។ ជំនួយ! &quot;</p>\r\n\r\n<p>ក្រុម Beatles បានផ្ទុះចេញបទភ្លេងល្បីថានៅក្នុងឆ្នាំ 1965 ។</p>\r\n\r\n<p>ថាតើអ្នកចូលចិត្តការលេចលោហៈធ្ងន់ឬហ៊ីបហបចម្រៀងដែលអ្នកបានជ្រើសអាចផ្តល់ឃើញចូលទៅក្នុងស្ថានភាពនៃសុខភាពផ្លូវចិត្តរបស់អ្នក។</p>\r\n\r\n<p>ពួកគេអាចមានឥទ្ធិពលយូរអង្វែងលើអារម្មណ៍របស់អ្នក។</p>\r\n\r\n<p>ច្រៀងបទកម្សត់អាចស្រែកហ៊ោអ្នកឡើង? តើបទចម្រៀងឈ្លានពានដាក់អ្នកនៅលើគែម? ដែលអាស្រ័យទៅលើការដែលជាអ្នកជំនាញដែលអ្នកត្រូវបានបើកនៅក្នុងការទៅ។</p>\r\n', '', 'uploads/blogs/blog_567f6643c2aed.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:14:48', '3');
INSERT INTO `tbl_blogs` VALUES ('17', '1', 'Stage 4 Renal Cell Carcinoma: Treatment and Prognosis', 'ដំណាក់កាលទី 4 ជំងឺមហារីកកោសិកា Renal: ការព្យាបាលនិងការព្យាករណ៍', 'Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including', 'កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាប្រឈមនឹងគ្រោះថ្នាក់ជាច្រើនសម្រាប់ការអភិវឌ្ឍ RCC រួមទាំងការគឺមាន', '<p>Renal cell carcinoma (RCC) is a type of cancer that affects the cells of the kidney. RCC is the most common type of kidney cancer. There are several risk factors for developing RCC, including:</p>\r\n<p>a family history of the disease<br /> smoking<br /> obesity<br /> polycystic kidney disease<br /> The earlier it’s detected, the greater your chance for effective treatment.</p>\r\n<p>RCC Staging<br /> Doctors who diagnose and treat RCC and other types of cancer use a staging system. Each RCC patient’s cancer is given a number designation ranging from 1 to 4. Stage 1 is the earliest stage of the disease and 4 is the latest and most advanced.</p>', '<p>កោសិកាជំងឺមហារីកតម្រងនោម (RCC) គឺជាប្រភេទជំងឺមហារីកដែលប៉ះពាល់ដល់កោសិកានៃតម្រងនោមនោះទេ។ RCC គឺជាប្រភេទទូទៅបំផុតនៃជំងឺមហារីកតម្រងនោម។ វាមានកត្តាហានិភ័យក្នុងការវិវត្តទៅ RCC រួមទាំងការគឺ:</p>\r\n<p>ប្រវត្តិគ្រួសារនៃជំងឺនេះ<br /> ការជក់បារី<br /> ការធាត់<br /> ជំងឺតម្រងនោម polycystic<br /> នេះជាឱកាសរបស់អ្នកសំរាប់ការព្យាបាលដែលមានប្រសិទ្ធិភាពកាលពីមុនវាត្រូវបានរកឃើញកាន់តែច្រើន។</p>\r\n<p>ដំណាក់កាល RCC<br /> គ្រូពេទ្យដែលធ្វើរោគវិនិច្ឆ័យនិងព្យាបាល RCC និងប្រភេទដទៃទៀតនៃជំងឺមហារីកប្រើប្រព័ន្ធឆាក។ ជំងឺមហារីកអ្នកជំងឺ RCC នីមួយគឺត្រូវបានផ្តល់ឱ្យមួយចំនួនរាប់ចាប់រចនាពី 1 ទៅ 4 ដំណាក់កាលទី 1 នេះគឺជាដំណាក់កាលដំបូងនៃជំងឺនេះនិងទី 4 គឺជាចុងក្រោយនិងទំនើបបំផុត។</p>', '2016-03-12-Stage-4-Renal-Cell-Carcinoma:-Treatment-and-Prognosis', 'uploads/blogs/blog_567f671894641.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:14:53', '2');
INSERT INTO `tbl_blogs` VALUES ('18', '1', 'What Does It Feel Like When You Have a Blood Clot?', 'តើវាមានអារម្មណ៍ដូចជាពេលដែលអ្នកមានកំណកឈាមមួយ?', 'When a blood clot occurs in one of your veins, it’s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 peop', 'នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបាន', '<p><br />\r\nWhen a blood clot occurs in one of your veins, it&rsquo;s called a venous thromboembolism (VTE). Blood clots are a serious issue, and they can be life-threatening. According to the Centers for Disease Control and Prevention (CDC), an estimated 900,000 people in the United States are affected by this condition annually. The CDC further estimates that 60,000 to 100,000 people die from this condition annually.</p>\r\n\r\n<p>If you&rsquo;re even slightly concerned you might have a blood clot, you should call your doctor right away. Symptoms of blood clots can vary, and it&rsquo;s possible to have a blood clot with no symptoms.</p>\r\n\r\n<p>Learn more about some of the symptoms that may indicate a blood clot.</p>\r\n', '<p>នៅពេលដែលមានដុំកំណកឈាមកើតឡើងនៅក្នុងផ្នែកមួយនៃសរសៃរបស់អ្នក, វាត្រូវបានគេហៅថាជំងឺ (VTE) ។ កំណកឈាមគឺជាបញ្ហាធ្ងន់ធ្ងរហើយពួកគេអាចត្រូវបានគំរាមកំហែងដល់អាយុជីវិត។ បើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ប្រមាណជា 900.000 នាក់នៅក្នុងសហរដ្ឋអាមេរិកត្រូវបានរងផលប៉ះពាល់ដោយជំងឺនេះជារៀងរាល់ឆ្នាំ។ CDC បានបន្តទៀតបានប៉ាន់ប្រមាណថា 60,000 ទៅ 100,000 នាក់ស្លាប់ដោយសារជំងឺនេះជារៀងរាល់ឆ្នាំ។</p>\r\n\r\n<p>ប្រសិនបើអ្នកកំពុងសូម្បីតែមានការព្រួយបារម្ភបន្តិចអ្នកអាចមានដុំកំណកឈាម, អ្នកគួរហៅទូរស័ព្ទទៅវេជ្ជបណ្ឌិតរបស់អ្នកស្តាំទៅឆ្ងាយ។ រោគសញ្ញានៃកំណកឈាមអាចប្រែប្រួល, ហើយវាជាការដែលអាចធ្វើឱ្យមានកំណកឈាមដែលមានរោគសញ្ញានោះទេ។</p>\r\n\r\n<p>ស្វែងយល់បន្ថែមអំពីរោគសញ្ញាមួយចំនួនដែលអាចបង្ហាញដុំកំណកឈាមនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f67d468fd8.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:23:48', '10');
INSERT INTO `tbl_blogs` VALUES ('19', '1', 'Can Cycling Cause Erectile Dysfunction?', 'ប្រណាំងកង់អាចបង្កឱ្យលិង្គងាប់?', 'Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and othe', 'ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្ស', '<p>Cycling is a popular mode of aerobic fitness that burns calories while strengthening the leg muscles. More than one-third of Americans rides a bike, according to a survey from Breakaway Research Group. Some people occasionally cycle for fun, and other people are more serious riders who spend hours a day on a bike.</p>\r\n<p>Men who bike can experience erection problems as an unintended consequence of spending too much time on a bike seat. The link between riding and erection problems isn&rsquo;t new. In fact, the Greek physician Hippocrates identified sexual issues in male horseback riders when he said &ldquo;The constant jolting on their horses unfits them for intercourse.&rdquo;</p>\r\n<p>Here&rsquo;s why riding a bike can affect your ability to achieve an erection and how to prevent cycling from putting the brakes on your sex life.</p>', '<p>ប្រណាំងកង់នេះគឺជារបៀបពេញនិយមនៃការសម្បទាអុកស៊ីសែនដែលដុតបំផ្លាញកាឡូរីខណៈពេលដែលការពង្រឹងសាច់ដុំជើង។ មានមនុស្សជាងមួយភាគបីនៃប្រជាជនអាមេរិកជិះកង់នេះបើយោងតាមការអង្កេតពីក្រុមស្រាវជ្រាវបំបែកខ្លួនមួយ។ មនុស្សមួយចំនួនបានម្តងម្កាលវដ្តសម្រាប់ការសប្បាយហើយប្រជាជនផ្សេងទៀតមានអ្នកជិះកង់ធ្ងន់ធ្ងរដែលបានចំណាយពេលម៉ោងក្នុងមួយថ្ងៃនៅលើកង់មួយ។</p>\r\n<p>បុរសដែលជិះកង់អាចជួបប្រទះបញ្ហាក្នុងការឡើងរឹងរបស់លិង្គដែលជាផលវិបាកនៃការចំណាយពេលវេលាច្រើនពេកនៅលើកៅអីកង់មួយ។ ការផ្សារភ្ជាប់គ្នារវាងបញ្ហាក្នុងការធ្វើដំណើរការនិងការឡើងរឹងរបស់លិង្គនោះគឺមិនមែនថ្មីទេ។ នៅក្នុងការពិតដែលគ្រូពេទ្យក្រិក Hippocrates បានកំណត់អត្តសញ្ញាណពីបញ្ហាផ្លូវភេទនៅក្នុងអ្នកជិះកង់នៅពេលដែលគាត់ជាប្រុសខ្នងសេះបាននិយាយថា \"ការបណ្ដាច់មិត្ដថេរនៅលើសេះរបស់ពួកគេឱ្យពួកគេសម្រាប់ការរួមភេទ unfits &raquo;។</p>\r\n<p>ខាងក្រោមនេះជាមូលហេតុដែលជាការជិះកង់អាចប៉ះពាល់ដល់សមត្ថភាពរបស់អ្នកក្នុងការសម្រេចបាននូវការឡើងរឹងរបស់លិង្គនិងរបៀបការពារការប្រណាំងកង់មកពីការដាក់ហ្វ្រាំងលើជីវិតផ្លូវភេទរបស់អ្នក។</p>', 'can-cycling-cause-erectile-dysfunction', 'uploads/blogs/blog_567f6889759ea.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-04-17 08:09:14', '10');
INSERT INTO `tbl_blogs` VALUES ('20', '1', 'Show Us Your Mastectomy Tattoos!', 'បង្ហាញយើងពីការចាក់សាក់ទំហំរបស់អ្នក!', 'Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed', 'ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬ', '<p>Breast cancer affects one in eight women. The American Cancer Society estimates that 231,840 women in the U.S. will be diagnosed with invasive breast cancer this year alone. Many women opt for a mastectomy or double mastectomy when they are diagnosed, while others use the surgery as a preventative measure.&nbsp;</p>\r\n\r\n<p>Losing a part of yourself is a life-altering experience, and some women are expressing that with art, covering up their scars with tattoos. Powerful as well as beautiful, they inspire us all.</p>\r\n\r\n<p>Do you have a mastectomy tattoo? Share it with us at social@healthline.com so that you can inspire others! In your email, please include 1) a clear photo of your tattoo, 2) a short description of what your tattoo means to you and 3) whether you would like your name to be included with your submission.</p>\r\n', '<p>ជំងឺមហារីកសុដន់ដែលប៉ះពាល់ដល់ម្នាក់ក្នុងចំណោមស្ត្រីចំនួនប្រាំបី។ សមាគមន៍ជំងឺមហារីកអាមេរិកបានប៉ាន់ប្រមាណថាស្ត្រី 231.840 នៅអាមេរិកនឹងត្រូវបានធ្វើរោគវិនិច្ឆ័យថាមានជំងឺមហារីកសុដន់ដែលរាតត្បាតនៅឆ្នាំនេះតែម្នាក់ឯង។ ស្ត្រីជាច្រើនជ្រើសរើសយកដោយ msterctomy មួយឬពីរដងដោយ msterctomy នៅពេលដែលពួកគេត្រូវបានគេធ្វើរោគវិនិច្ឆ័យឃើញខណៈពេលដែលអ្នកផ្សេងទៀតប្រើការវះកាត់ជាវិធានការបង្ការ។</p>\r\n\r\n<p>ការបាត់បង់ផ្នែកមួយនៃខ្លួនឯងមួយគឺជាបទពិសោធជីវិតការផ្លាស់ប្ដូរនិងស្ត្រីមួយចំនួនកំពុងសម្តែងថាជាមួយនឹងសិល្បៈ, គ្របដណ្តប់របស់ខ្លួនជាមួយនឹងស្នាមឡើងការចាក់សាក់។ ដែលមានឥទ្ធិពលដូចជាស្រស់ស្អាត, ដែលពួកគេបានជម្រុញឱ្យយើងទាំងអស់។</p>\r\n\r\n<p>តើអ្នកមានសាក់រូបដោយ msterctomy មួយ? ចែករំលែកវាជាមួយពួកយើងនៅ social@healthline.com ដូច្នេះអ្នកអាចជម្រុញឱ្យអ្នកផ្សេង! ក្នុងអ៊ីមែលរបស់អ្នកសូមបញ្ចូលទី 1) រូបថតច្បាស់លាស់នៃការសាក់របស់អ្នក, 2) សេចក្ដីសង្ខេបនៃអ្វីដែលការសាក់របស់អ្នកដែលមានន័យថាដើម្បីអ្នកនិង 3) តើអ្នកចង់ឱ្យឈ្មោះរបស់អ្នកត្រូវបានរួមបញ្ចូលជាមួយនឹងការស្នើរបស់អ្នក។</p>\r\n', '', 'uploads/blogs/blog_567f6adf6e671.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:48', '9');
INSERT INTO `tbl_blogs` VALUES ('21', '1', 'The Top 8 Products to Help You Quit Smoking', 'កំពូលផលិតផល 8 ដើម្បីជួយអ្នកឈប់ជក់បារី', 'Almost 18 percent of American adults smoke cigarettes, according to the Centers for Disease Control and Prevention (CDC). And nearly 70 percent of those smokers admit to wanting to quit.', 'ស្ទើរតែ 18 ភាគរយនៃមនុស្សពេញវ័យជនជាតិអាមេរិកជក់បារីនេះបើយោងតាមមជ្ឈមណ្ឌលគ្រប់គ្រងនិងបង្ការជំងឺ (CDC) ។ និងជិត 70 ភាគរយនៃអ្នកជក់បារីអ្នកដែលបានទទួលស្គាល់ថាដើម្បីចង់ឈប់។', '<p>More Americans are addicted to nicotine &mdash; the drug in cigarettes &mdash; than any other drug. And because nicotine is so addictive, it isn&rsquo;t a drug you can just put down. Quitting can take several attempts. But the benefits are many. Quitters reduce their risk for several types of cancer, as well as heart disease, vascular disease, respiratory problems, infertility, and lung diseases like COPD.</p>\r\n\r\n<p>So where can those who want to quit find help? There are numerous services and products that can help smokers put down their cigarettes for good. We&rsquo;ve rounded up some of the best.</p>\r\n', '<p>ជនជាតិអាមេរិកកាន់តែច្រើនញៀននីកូទីន - គ្រឿងញៀននៅក្នុងបារី - ជាងថ្នាំដទៃទៀតណាមួយទេ។ ហើយដោយសារតែជាតិនីកូទីនជាគ្រឿងញៀនបានដូច្នេះវាមិនមែនជាថ្នាំដែលអ្នកអាចគ្រាន់តែដាក់ចុះ។ * ការឈប់ជក់បារីអាចយកជាការប៉ុនប៉ងមួយចំនួន។ ប៉ុន្តែការទទួលបានផលប្រយោជន៍ជាច្រើន។ ឈប់ជក់បន្ថយហានិភ័យរបស់ពួកគេសម្រាប់ប្រភេទជាច្រើននៃជំងឺមហារីកដូចជាជំងឺបេះដូង, ជំងឺសរសៃឈាម, បញ្ហាផ្លូវដង្ហើម, ការគ្មានកូននិងជំងឺសួតដូចជាការជំងឺផ្លូវដង្ហើមធ្ងន់ធ្ងរ។</p>\r\n\r\n<p>ដូច្នេះតើពួកអ្នកដែលចង់ឈប់ជក់បារីអាចរកជំនួយ? មានសេវានិងផលិតផលដែលអាចជួយអ្នកជក់បារីអោយដាក់ចុះបារីរបស់ពួកគេសម្រាប់ការល្អច្រើន។ យើងបានបង្គត់ឡើងមួយចំនួននៃការល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f6c3b7c87e.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:42:35', '8');
INSERT INTO `tbl_blogs` VALUES ('23', '2', '6 Unique Elliptical Exercises to Burn More Calories', '6 លំហាត់រាងពងក្រពើមានតែមួយគត់ក្នុងការដុតកម្ទេចកាឡូរីច្រើនជាង', 'When it comes to cardio, the elliptical machine may be one of the best machines out there.', 'នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។', '<p>When it comes to cardio, the elliptical machine may be one of the best machines out there.</p>\r\n\r\n<p>Safe and efficient, the low-impact workout is easier on the joints than running, which makes it a fantastic cardio option for people with knee, hip, or ankle problems. If done properly, sweating it out on an elliptical can also can be effective, working the arms, legs, and core.</p>\r\n\r\n<p>In fact, studies show that elliptical workouts can be just as effective as the treadmill or stair climber for improving or maintaining your aerobic endurance. Using the moving arms available on most machines allows you to engage your upper body, and adjusting the incline and resistance can really help engage your glutes, calves, and hamstrings.</p>\r\n', '<p>នៅពេលដែលវាមកដល់បេះដូង, ម៉ាស៊ីនរាងអេលីបនេះអាចជាផ្នែកមួយនៃម៉ាស៊ីនដែលល្អបំផុតនៅទីនោះ។</p>\r\n\r\n<p>មានសុវត្ថិភាពនិងមានប្រសិទ្ធិភាព, ការសាកល្បងទាបនិងផលប៉ះពាល់គឺមានភាពងាយស្រួលនៅលើសន្លាក់ជាងការរត់ដែលធ្វើឱ្យវាជាជម្រើសបេះដូងអស្ចារ្យសម្រាប់មនុស្សដែលមានបញ្ហាជង្គង់ត្រគាកឬកជើង។ ប្រសិនបើធ្វើបានត្រឹមត្រូវ, បែកញើសវាចេញនៅលើពងក្រពើមួយដែលអាចអាចមានប្រសិទ្ធិភាព, ធ្វើការលើដៃ, ជើង, និងការស្នូល។</p>\r\n\r\n<p>ជាការពិតការសិក្សាបានបង្ហាញថាការហាត់ប្រាណគឺអាចមានរាងអេលីបមានប្រសិទ្ធភាពដូចគ្រាន់តែឬជណ្តើរហាត់ប្រាណឡើងភ្នំសម្រាប់ការកែលម្អឬរក្សាចិត្ដស៊ូទ្រាំប្រាណរបស់អ្នក។ ការប្រើប្រាស់អាវុធការផ្លាស់ប្តូរនេះអាចរកបាននៅលើម៉ាស៊ីនភាគច្រើនបំផុតដែលអនុញ្ញាតឱ្យអ្នកចូលរួមរាងកាយផ្នែកខាងលើរបស់អ្នកនិងលៃតម្រូវផាបតេរនិងភាពធន់ទ្រាំពិតជាអាចជួយចូលរួមរបស់អ្នក glutes, calves និងសរសៃពួរគន្លាក់ជើង។</p>\r\n', '', 'uploads/blogs/blog_567f6dfa7072b.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2015-12-27 05:50:02', '4');
INSERT INTO `tbl_blogs` VALUES ('25', '1', 'Cholesterol Control: 5 Heart-Healthy Scallops Recipes', 'ការត្រួតពិនិត្យកូឡេស្តេរ៉ុល: 5 សុខភាពបេះដូង scallop បង្កាន់ដៃ', 'Seafood is good for you, right? It’s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you’re minding your cholesterol levels, you can never be too cautious. As you’ll see in the case of scal', 'អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នក', '<p><br />\r\nSeafood is good for you, right? It&rsquo;s become pretty common knowledge that various types of seafood are good inclusions in a healthy diet. But when you&rsquo;re minding your cholesterol levels, you can never be too cautious. As you&rsquo;ll see in the case of scallops, the devil is in the preparation details.</p>\r\n\r\n<p>Scallops have a mild flavor and you&rsquo;ll often find them on a plate swimming in a sea of butter. In this case, scallops would not be a wise menu choice if you&rsquo;re watching your cholesterol, but it&rsquo;s not due to the scallops themselves.</p>\r\n', '<p>អាហារសមុទ្រគឺល្អសម្រាប់អ្នកទេ? វាបានក្លាយទៅជារឿងសាមញ្ញណាស់ដែលថាប្រភេទផ្សេងគ្នានៃអាហារសមុទ្រគឺមានការរួមបញ្ចូលការល្អនៅក្នុងរបបអាហារដែលមានសុខភាពល្អ។ ប៉ុន្តែនៅពេលដែលអ្នកកំពុងស្តាប់ការកម្រិតកូឡេស្តេរ៉ុលរបស់អ្នកអ្នកមិនអាចត្រូវប្រុងប្រយ័ត្នផងដែរ។ ដូចដែលអ្នកនឹងឃើញនៅក្នុងករណីនៃការខ្យង, អារក្សគឺនៅក្នុងសេចក្ដីលម្អិតរៀបចំខ្លួន។</p>\r\n\r\n<p>មានរសជាតិស្រាល scallops និងច្រើនអ្នកនឹងរកឃើញពួកវានៅលើចានមួយនៅក្នុងការហែលទឹកសមុទ្រនៃ butter មួយ។ ក្នុងករណីនេះ scallops នឹងមិនត្រូវម៉ឺនុយឱ្យជ្រើសរើសប្រាជ្ញាបើអ្នកកំពុងមើលកូឡេស្តេរ៉ុលរបស់អ្នកប៉ុន្តែវាមិនមែនដោយសារការខ្យងខ្លួនឯង។</p>\r\n', '', 'uploads/blogs/blog_5683ef68c747d.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:14:11', '6');
INSERT INTO `tbl_blogs` VALUES ('26', '2', '9 Nut-Free Holiday Dessert Recipes', '9 ថ្ងៃឈប់សម្រាកបង្អែមបង្កាន់ដៃដោយឥតគិតថ្លៃយចន', 'Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, “Are there nuts in this?”', 'ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង \"តើមានគ្រាប់នៅក្នុងនេះ?\"', '<p>Navigating the holidays when you have a nut allergy can feel like walking through a minefield. You must preface every bite with, &ldquo;Are there nuts in this?&rdquo;</p>\r\n\r\n<p>Fortunately, there are many nut-free dessert options that you can make and eat, worry-free. Just be sure to check each ingredient&rsquo;s label to be sure they are nut-free as well. Some ingredients are nut-free but may be made in a factory that processes nuts, such as most commercial chocolate. Luckily, nut-free chocolate is now available at most grocery stores.</p>\r\n\r\n<p>Here, we&rsquo;ve rounded up some of the best recipes.</p>\r\n', '<p>ការរុករកថ្ងៃឈប់សម្រាកនៅពេលដែលអ្នកមានប្រតិកម្មអាឡែហ្ស៊ីណាត់មួយអាចមានអារម្មណ៍ថាដូចជាការដើរតាមរយៈចម្ការមីនមួយ។ អ្នកត្រូវតែបុព្វបទរៀងរាល់ខាំជាមួយនឹង &quot;តើមានគ្រាប់នៅក្នុងនេះ?&quot;</p>\r\n\r\n<p>ជាសំណាងល្អមានជម្រើសបង្អែមដោយឥតគិតថ្លៃជាច្រើនយចនដែលអ្នកអាចធ្វើឱ្យមាននិងញ៉ាំព្រួយបារម្ភដោយឥតគិតថ្លៃគឺ។ គ្រាន់តែត្រូវប្រាកដថាដើម្បីពិនិត្យមើលស្លាកធាតុផ្សំគ្នាដើម្បីឱ្យប្រាកដថាពួកគេគឺជាប្រភេទណាត់ដោយឥតគិតថ្លៃផងដែរ។ គ្រឿងផ្សំដែលមនុស្សមួយចំនួនមានចន-ឥតគិតថ្លៃប៉ុន្តែអាចត្រូវបានធ្វើឡើងនៅក្នុងរោងចក្រកែច្នៃគ្រាប់ដូចជាសូកូឡាពាណិជ្ជកម្មភាគច្រើនបំផុត។ សំណាងល្អ, សូកូឡាចនដោយឥតគិតថ្លៃឥឡូវអាចប្រើបាននៅតាមហាងលក់គ្រឿងទេសភាគច្រើនបំផុត។</p>\r\n\r\n<p>នៅទីនេះយើងបានបង្គត់ឡើងមួយចំនួននៃរូបមន្តល្អបំផុត។</p>\r\n', '', 'uploads/blogs/blog_567f7846f0b06.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:46', '3');
INSERT INTO `tbl_blogs` VALUES ('27', '1', 'How to Celebrate Their First Lost Tooth', 'តើធ្វើដូចម្តេចដើម្បីប្រារព្ធលើកដំបូងរបស់ពួកគេបានបាត់បង់ធ្មេញ', 'The first lost tooth is a major milestone.\r\n\r\n\r\nAlthough most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, ', 'នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។\r\n\r\n\r\nទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជា', '<p>The first lost tooth is a major milestone.</p>\r\n\r\n<p>Although most parents can recall the teething phase and when their little one initially sprouted teeth, the joy a child feels when they first get to move that one wiggly tooth around with their tongue, before eventually shedding it, is a feeling like no other.</p>\r\n\r\n<p>Before you get all teary eyed, remember that this is a cause for celebration, and how you celebrate the loss of a tooth is entirely up to you and your child. From the American tooth fairy to France&rsquo;s La Petite Souris, there are all sorts of fun traditions that will help you say goodbye to baby teeth and baby days.</p>\r\n', '<p>នេះបានបាត់បង់ជាលើកដំបូងគឺជាការធ្មេញខំប្រឹងប្រែងធំ។</p>\r\n\r\n<p>ទោះបីជាឪពុកម្តាយភាគច្រើនអាចនឹកចាំនូវតំណាក់កាល teething នេះហើយនៅពេលដែលមួយតូចរបស់គេដុះធ្មេញដំបូង, អំណរដែលកុមារមានអារម្មណ៍ថានៅពេលពួកគេជាលើកដំបូងទទួលបានការផ្លាស់ប្តូរដែលធ្មេញមួយបាន wiggly នៅជុំវិញជាមួយអណ្តាតរបស់ពួកគេមុនពេលដែលនៅទីបំផុតការបង្ហូរវាគឺជាអារម្មណ៍ដូចផ្សេងទៀតទេ។</p>\r\n\r\n<p>មុនពេលអ្នកទទួលភ្នែកស្រក់ទឹកទាំងអស់, ចាំបានថានេះគឺជាហេតុមួយសម្រាប់ការសំដែងនិងរបៀបដែលអ្នកអបអរការបាត់បង់នៃធ្មេញមួយនោះគឺទាំងស្រុងឡើងទៅអ្នកនិងកូនរបស់អ្នក។ ពីទេពអប្សរឡាធ្មេញអាមេរិចរបស់ប្រទេសបារាំងញត្តិ Souris, មានគ្រប់ប្រភេទទាំងអស់នៃប្រពៃណីភាពសប្បាយរីករាយដែលនឹងជួយអ្នកក្នុងការនិយាយថាលាធ្មេញរបស់ទារកនិងថ្ងៃទារកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f78d6bd9e8.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:14:43', '5');
INSERT INTO `tbl_blogs` VALUES ('28', '2', '6 Tips to Create Lasting Christmas Traditions for Kids', '6 គន្លឹះដើម្បីបង្កើតស្ថិតស្ថេរប្រពៃណីបុណ្យណូអែលសម្រាប់កុមារ', 'Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.', 'ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។', '<p>Christmas traditions are the special ways we celebrate the holidays year after year. You can make your own tradition with your family by carving out time every December to enjoy your special time together.</p>\r\n\r\n<p>From decorating sugar cookies, to caroling, to trimming the tree, much of the magic of Christmas comes from our family traditions.</p>\r\n\r\n<p>We&rsquo;ve rounded up different ideas from around the web so you can start your own Christmas traditions with your family this year.</p>\r\n', '<p>ទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលគឺជាវិធីពិសេសរបស់យើងអបអរថ្ងៃឈប់សម្រាកនៅឆ្នាំបន្ទាប់ពីឆ្នាំ។ អ្នកអាចធ្វើឱ្យទំនៀមទម្លាប់របស់អ្នករាល់គ្នាផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកដោយការឆ្លាក់រាល់ពេលចេញខែធ្នូដើម្បីរីករាយនឹងពេលវេលាពិសេសរបស់អ្នកជាមួយគ្នា។</p>\r\n\r\n<p>ចាប់តាំងពីការតុបតែងខូឃីស៍ស្ករ Carol ដើម្បីកាត់បន្ថយការមែកធាងច្រើននៃមន្តអាគមនៃបុណ្យគ្រីស្ទបានមកពីទំនៀមទំលាប់គ្រួសាររបស់យើង។</p>\r\n\r\n<p>យើងបានប្រមូលគំនិតប្លែកគ្នាពីជុំវិញតំបន់បណ្តាញដូច្នេះអ្នកអាចចាប់ផ្តើមទំនៀមទំលាប់ប្រពៃណីបុណ្យណូអែលរបស់អ្នកផ្ទាល់ជាមួយនឹងក្រុមគ្រួសាររបស់អ្នកនៅឆ្នាំនេះ។</p>\r\n', '', 'uploads/blogs/blog_567f798cd45a1.jpg', '0', '1', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:44', '2');
INSERT INTO `tbl_blogs` VALUES ('29', '1', 'The Cutest First Day of School Photo Ideas', 'នៅថ្ងៃដំបូងនៃគំនិតរូបថត Cutest សាលា', 'Despite what you’ll find on Pinterest, there aren’t a lot of moms out there who’ve managed to thoughtfully chronicle their children’s lives.', 'បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។', '<p>Despite what you&rsquo;ll find on Pinterest, there aren&rsquo;t a lot of moms out there who&rsquo;ve managed to thoughtfully chronicle their children&rsquo;s lives.</p>\r\n\r\n<p>Take me, for example: I have nothing close to a baby book. I have a trash bag filled with art projects and school assignments that I plan to organize, someday. The only reason I remember my kids&rsquo; first words is because I forced myself to (they were &ldquo;cat&rdquo; and &ldquo;ball&rdquo; by the way &mdash; I need to show off this knowledge whenever I get the chance).</p>\r\n\r\n<p>But one ritual I&rsquo;ve been able to stick to, despite my laziness, is the first day of school picture. Every year on that first day, I make my kids stand in front of our front door and take their picture. There are no fancy signs and I don&rsquo;t make them get dressed up.</p>\r\n\r\n<p>But if you are moderately more together than me, there are a lot of great ideas out there for how to make your child&rsquo;s first day of school photo special.</p>\r\n\r\n<p>Here are 10 ideas to get you started.</p>\r\n', '<p>បើទោះបីជាអ្វីដែលអ្នកនឹងរកឃើញនៅលើ Pinterest, មិនមានម្តាយជាច្រើនដែលនៅទីនោះដែលបានគ្រប់គ្រងដើម្បីគិត chronicle ជីវិតរស់នៅរបស់កុមារផងដែរ។</p>\r\n\r\n<p>យកខ្ញុំឧទាហរណ៍: ខ្ញុំមិនមានអ្វីដែលស្និទ្ធនឹងសៀវភៅទារក។ ខ្ញុំមានថង់សំរាមមួយដែលពោរពេញទៅដោយគម្រោងជាសិល្បៈនិងកិច្ចការសាលាដែលខ្ញុំមានគម្រោងរៀបចំនៅថ្ងៃមួយ។ មូលហេតុតែមួយគត់ដែលខ្ញុំបានចាំពាក្យដំបូងកូនរបស់ខ្ញុំគឺដោយសារតែខ្ញុំត្រូវបង្ខំចិត្ត (ពួកគេត្រូវបាន &quot;ឆ្មា&quot; និង &quot;កូនបាល់&quot; ដោយវិធីនេះ - ខ្ញុំត្រូវការដើម្បីបង្ហាញពីចំណេះដឹងនេះនៅពេលណាខ្ញុំទទួលបានឱកាសនេះ) ។</p>\r\n\r\n<p>ប៉ុន្តែពិធីសាសនាមួយដែលខ្ញុំបានអាចបិទបើទោះជាខ្ជិលរបស់ខ្ញុំជាថ្ងៃដំបូងនៃរូបភាពសាលា។ ជារៀងរាល់ឆ្នាំនៅថ្ងៃដំបូងដែលខ្ញុំបានធ្វើឱ្យកូនរបស់ខ្ញុំឈរនៅពីមុខទ្វារខាងមុខរបស់យើងនិងយករូបភាពរបស់ពួកគេ។ វាមិនមានសញ្ញាពុម្ពអក្សរក្បូរក្បាច់គឺជាអ្នកហើយខ្ញុំមិនបានធ្វើឱ្យពួកគេទទួលបានស្លៀកពាក់ឡើង។</p>\r\n\r\n<p>ប៉ុន្តែប្រសិនបើអ្នកគឺជាអ្នកសមល្មមទៀតជាជាងខ្ញុំនោះមានគំនិតយ៉ាងច្រើនកុះករនៅទីនោះសម្រាប់របៀបដើម្បីធ្វើឱ្យថ្ងៃដំបូងរបស់កូនអ្នករូបថតសាលាពិសេសគឺ។</p>\r\n\r\n<p>ខាងក្រោមនេះជាគំនិតយោបល់ក្នុងការទទួលបានចំនួន 10 បានចាប់ផ្តើមជាអ្នកមាន។</p>\r\n', '', 'uploads/blogs/blog_567f7a56a632a.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-31 00:14:19', '4');
INSERT INTO `tbl_blogs` VALUES ('30', '1', 'Loneliness Can Make You Sick, But Don’t Blame the Internet', 'ភាពឯកោអាចធ្វើអោយអ្នកឈឺ, ប៉ុន្តែមិនបន្ទោសអ៊ិនធឺណិ', 'A new study has found that feeling socially isolated is linked to cellular changes that weaken the immune system and increase inflammation in the body.', 'ការសិក្សាថ្មីមួយបានរកឃើញថាមានអារម្មណ៍ដាច់ឆ្ងាយពីសង្គមត្រូវបានផ្សារភ្ជាប់ទៅនឹងការផ្លាស់ប្តូរកោសិកាដែលចុះខ្សោយប្រព័ន្ធភាពស៊ាំនិងការបង្កើនការរលាកក្នុងរាងកាយ។', '<p>Ah, solitude. What feels refreshing to some can be crippling for others.</p>\r\n<p>Feeling isolated from other people when we wish we weren&rsquo;t isn&rsquo;t just unpleasant. It&rsquo;s also bad for us.</p>\r\n<p>Whether it strikes late at night when we are alone, or in the form of feeling like you don&rsquo;t belong in the middle of a crowded party, the sharp sting of social isolation is unmistakable.</p>\r\n<p>And it&rsquo;s not just in our heads; the effects of that sensation are felt deep inside our bodies, at the level of our cells and DNA.</p>\r\n<p>These kinds of physiological changes, say the authors of a new study, help explain the link seen in earlier studies between social isolation and poor health. This includes an increased risk of early death among the chronically lonely.</p>\r\n<p>&nbsp;</p>', '<p><img style=\"height: 378px; width: 800px;\" src=\"/uploads/finder/NewFolder/14460-illustration-of-a-key-pv.png\" alt=\"\" />Ah, នៅតែឯង។ តើអ្វីទៅជាមានអារម្មណ៍ថាមានកម្លាំងចិត្ដមួយចំនួនអាចត្រូវបានយ៉ាងខ្លាំងសម្រាប់អ្នកដទៃ។</p>\r\n<p>មានអារម្មណ៍ដាច់ឆ្ងាយពីប្រជាជនផ្សេងទៀតនៅពេលដែលយើងប្រាថ្នាថាយើងមិនត្រូវបានគេគឺមិនមែនគ្រាន់តែមិនរីករាយ។ វាជាការអាក្រក់ផងដែរសម្រាប់ពួកយើង។</p>\r\n<p>មិនថាវាកើតនៅពេលយប់នៅពេលដែលយើងនៅម្នាក់ឯងឬនៅក្នុងសំណុំបែបបទនៃការមានអារម្មណ៍ដូចជាអ្នកមិនមែនជារបស់នៅកណ្តាលនៃគណបក្សដែលមានមនុស្សច្រើនដែលជាទ្រនិចយ៉ាងខ្លាំងនៃភាពឯកោសង្គមគឺច្បាស់លាស់។</p>\r\n<p>ហើយវាមិនមែនគ្រាន់តែនៅក្នុងក្បាលរបស់យើង; ផលប៉ះពាល់នៃអារម្មណ៍ដែលត្រូវបានមានអារម្មណ៍យ៉ាងជ្រាលជ្រៅនៅក្នុងរាងកាយរបស់យើង, នៅក្នុងកម្រិតនៃកោសិកានិង DNA របស់យើងនោះទេ។</p>\r\n<p>ប្រភេទនៃការផ្លាស់ប្តូរសរីរវិទ្យាទាំងនេះបាននិយាយថាអ្នកនិពន្ធនៃការសិក្សាថ្មីមួយនេះជួយពន្យល់តំណឃើញនៅក្នុងការសិក្សានានាពីមុនរវាងភាពឯកោសង្គមនិងសុខភាពប្រជាជនក្រីក្រ។ នេះរួមបញ្ចូលទាំងការកើនឡើងហានិភ័យនៃការស្លាប់មុនអាយុក្នុងចំណោមឯកោរ៉ៃ។</p>', '2016-02-05-Loneliness-Can-Make-You-Sick,-But-Don’t-Blame-the-Internet', 'uploads/blogs/blog_567f7afe1d175.jpg', '0', '0', '0', '0', '0000-00-00 00:00:00', '2016-03-12 13:42:39', '1');
INSERT INTO `tbl_blogs` VALUES ('31', '1', 'Lose Weight with Eggplant', 'ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់', 'Lose Weight with Eggplant', 'ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់', '<p><strong>Lose Weight with Eggplant</strong><br />Eggplants are one of those vegetables that have a lot of culinary uses; they are delicious and people love using them as accompaniments in several dishes. What&rsquo;s more, you may not have known about their weight loss properties, but thanks to their high water content, fiber, and scant calories, eggplants are transformed into an excellent ally for your diet.<br /><strong>Benefits of Eggplant</strong><br />- This vegetable aids in digestion, leading simultaneously to a reduction of body fat, thanks to the saponin it contains, which prevents fat absorption.<br />- Fights cellulitis<br />- Is an anti-inflammatory<br />- Reduces free radicals that attack cells<br />- Thanks to the fiber in its seeds, it in an excellent laxative<br />- Is great for the liver and gallbladder<br />- Regulates cholesterol<br />- Provides the body with calcium, potassium, sodium, phosphorus, iron&hellip;<br />How does eggplant aid in weight loss?<br />As previously mentioned, eggplant contains an element called saponin, that noticeably decreases the absorption of fat. Nutritionists recommend drinking eggplant water, or juice, whichever you prefer. This juice will detoxify the body, simultaneously improving kidney function by also acting as a diuretic. In addition to this, and thanks to the fiber in their seeds, it improves intestinal function preventing problems with constipation and irritable bowel syndrome. Drinking one glass of eggplant juice is recommended just before your primary meal so the fats will not be absorbed. That begin as it may, you should follow a diet that does not contain too much fat, in order to lose weight, and also do at least half an hour of exercise a day. Eggplant juice is an excellent ally for losing weight, but it won&rsquo;t work by itself if you don&rsquo;t eat a balanced diet.<br />Weight loss recipe with eggplant juice<br />Before anything else, you must know that eggplant cannot be eaten raw. You must cook it because inside, it contains an alkaloid known as solanine, which is toxic to the body. If you eat it raw you will experience stomach aches and headaches. When you&rsquo;re choosing one at the market, lean towards those that are on the firm side.<br />Ingredients<br />- One fairly large eggplant<br />- Half a liter of water<br />- Juice of one lemon<br />Directions<br />1. Begin by peeling the eggplant and cutting in into small pieces.<br />2. Then, place them in a bowl with cold water (half a liter), and let it soak for a few hours. If you want to, you can do this the day before so it can be ready in the morning. Once it has soaked, heat it so it cooks, and bring the water to a boil. Let boil for at least 15 minutes.<br />3. Once the water is boiling, add lemon juice.<br />4. Then, lower heat and let set for 10 minutes.<br />5. Then add to a blender so that the pulp and water are well blended and uniform, making a balanced juice.<br />Remember that this eggplant juice must be drank 15 minutes before your primary meal, and on the days you want to do your diet. Lemon could be added frequently, because the taste is a little bitter, and could be a little uncomfortable to drink. The citrus combination will make it a lot more pleasant.<br />You should also know that if you drink this juice every day, you will lower your cholesterol. Remember that eggplant helps decrease fat absorption, but to lose weight faster, you must accompany this with a low-calories diet and exercise.</p>', '<p><strong>ការសម្រកទម្ងន់ជាមួយផ្លែទ្រាប់</strong><br />ផ្លែទ្រាប់ជាប្រភេទបន្លែដែលត្រូវបានគេយកទៅចម្អិនជាប្រចាំ។ វាមានរសជាតិឆ្ងាញ់ ហើយវាត្រូវបានគេយកទៅដាក់ផ្ទាប់ជាមួយនឹងមុខម្ងូបមួយចំនួន។ ទន្ទឹមនឹងនេះ អ្នកប្រហែលជាមិនដឹងពីផលប្រយោជន៍របស់វាទាក់ទងនឹងការសម្រកទម្ងន់ទេ។ ផ្លែទ្រាប់មានជាតិទឹក និង ជាតិសសៃហ្វាយប័រខ្ពស់ ដោយរួមផ្សំនឹងកាឡូរីតិច ដែលជាហេតុធ្វើឲ្យវាសាកសមជាអាហារសម្រកទម្ងន់យ៉ាងឥតខ្ចោះ។<br />អត្ថប្រយោជន៍របស់ផ្លែទ្រាប់<br />- ផ្លែទ្រាប់ជួយក្នុងការរំលាយអាហារ ដែលជួយកាត់បន្ថយជាតិខ្លាញ់ក្នុងខ្លួន ដោយសារវាមានជាតិសាប៉ូនីន ដែលអាចជួយការពារមិនឲ្យរាងកាយស្រូបយកជាតិខ្លាញ់។<br />- ការរលាកស្រទាប់ស្បែកដោយសារមេរោគបាក់តេរី<br />- ការប្រឆាំងការរលាក<br />- កាត់បន្ថយរ៉ាឌីកាល់សេរីដែលប៉ះពាល់ដល់កោសិកា<br />- ជាតិសសៃហ្វាយប័រដែលមានក្នុងគ្រាប់ ជាសារធាតុដ៏ល្អប្រសើរក្នុងការបញ្ចេញកាកសំណល់កខ្វក់ក្នុងពោះវៀន<br />- ជាជីវជាតិដ៏ល្អសម្រាប់ថ្លើម និងថង់ទឹកប្រម៉ាត់<br />- គ្រប់គ្រងកម្រិតខូឡេស្តេរ៉ូល<br />- ផ្តល់នូវជាតិកាល់ស្យូម ប៉ូតាស្យ៉ូម សូដ្យូម ផូស្វ័រ និង ជាតិដែកក្នុងខ្លួន<br />តើផ្លែទ្រាប់ជួយយើងស្រកទម្ងន់ដោយរបៀបណា?<br /> ដូចដែលបានរៀបរាប់ខាងលើ ផ្លែទ្រាប់មានផ្ទុកសារធាតុសាប៉ូនីន ដែលជាសារធាតុអាចជួយកាត់បន្ថយការស្រូបយកជាខ្លាញ់របស់រាងកាយ។ អ្នកជំនាញផ្នែកអាហារូបត្ថម្ភ ណែនាំឲ្យទទួលទានទឹកផ្លែទ្រាប់ ព្រោះវាជួយដល់ដំណើរអុកស៊ីតកម្មក្នុងខ្លួនដែលជួយដល់តម្រង់នោមឲ្យដំណើរការល្អ។ ជាងនេះទៅទៀត សារធាតុសសៃហ្វាយប័រដែលមានក្នុងគ្រាប់ ជួយបញ្ចៀសការក្តៀនលាមក និងការពារមិនឲ្យរលាកពោះវៀនធំ។ ដើម្បីសម្រកទម្ងន់ អ្នកគួរផឹកទឹកផ្លែទ្រាប់មួយកែវ មុនពេលអាហារពេលព្រឹក នោះក្នុងខ្លួនអ្នកមិនស្រូបយកជាតិខ្លាញ់ឡើយ ប៉ុន្តែក្នុងករណីដែលអ្នកញ៉ាំរបបអាហារដែលគ្មានជាតិខ្លាញ់ហួស និងផឹកមុនពេលហាត់ប្រាណកន្លះម៉ោងប៉ុណ្ណោះ។<br />រូបមន្តសម្រកទម្ងន់ជាមួយទឹកផ្លែទ្រាប់<br />អ្នកគួរដឹងថាផ្លែទ្រាប់មិនអាចញ៉ាំឆៅបានទេ។ អ្នកត្រូវចម្អិនវាព្រោះវាមានជាតិពុលដែលប្រឆាំងនឹងរាងកាយយើង។ បើអ្នកញ៉ាំវាទាំងឆៅ អ្នកអាចប្រឈមនឹងការឈីពោះ ឬឈឺក្បាល។ ពេលអ្នកទិញផ្លែទ្រាប់ពីផ្សារ សូមជ្រើសរើសផ្លែដែលមានសាច់ហាប់ខាងក្នុង។<br />គ្រឿងផ្សំ<br />- ផ្លែទ្រាប់ធំល្មមមួយ<br />- ទឹកកន្លះលីត្រ<br />- ទឹកក្រូចឆ្មាមួយផ្លែ<br />វិធីធ្វើទឹកផ្លែទ្រាប់<br />1. ចិតសម្បកវាចេញឲ្យស្អាត ហើយកាត់វាជាចំណែកតូចៗ<br />2. បន្ទាប់មក ត្រាំវាក្នុងទឹកត្រជាក់កន្លះលីត្រ ដោយទុកវាឲ្យជក់ទឹកក្នុងរយៈពេល ២ឬ៣ម៉ោង។ ដើម្បីងាយស្រួល លោកអ្នកអាចត្រាំវាពេលល្ងាច នោះព្រឹកឡើងអ្នកអាចយកចំនិតទ្រាប់ដែលជក់ទឹកទាំងនោះទៅចម្អិន។ ទុកឲ្យទឹកពុះក្នុងរយៈពេល ១៥នាទី។<br />3. ពេលទឹកពុះហើយ ថែមទឹកក្រូចឆ្មាចូល<br />4. បន្ទាប់មកទៀត យើងត្រូវបន្ថយភ្លើង ហើយទុកវា១០នាទីទៀត<br />5. ក្រោយមក ចាក់ល្បាយនេះចូលក្នុងម៉ាស៊ីនទឹកក្រឡុកដើម្បីឲ្យវាក្លាយជាល្បយស្មើសាច់ល្អចូលជាតិគ្នា<br />ចូរចងចាំថា ទឹកផ្លែទ្រាប់នេះត្រូវតែផឹកយ៉ាងហោចណាស់ ១៥នាទីមុនពេលអាហារអ្វីទាំងអស់។ ដោយសារតែវាមានរសជាតិល្វីង លោកអ្នកអាចថែមទឹកក្រូចឆ្មាតាមតម្រូវការ។<br />អ្នកគួរតែដឹងទៀតថា ប្រសិនបើអ្នកផឹកទឹកផ្លែទ្រាប់នេះរាល់ថ្ងៃ កូឡេសស្តេរ៉ូលក្នុងខ្លួនអ្នកនឹងត្រូវបានកាត់បន្ថយ។ បើទោះជាផ្លែទ្រាប់មានលក្ខណៈពិសេសក្នុងការកាត់បន្ថយការស្រូបជាតិខ្លាញ់ អ្នកត្រូវតែញ៉ាំរបបអាហារមានកាឡូរីតិច និងធ្វើលំហាត់ប្រាណជាប្រចាំ ដើម្បីសម្រកទម្ងន់បានរហ័ស។</p>', '2016-03-27-Lose-Weight-with-Eggplant', 'uploads/blogs/blog_56f7a06bb8528.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-05-31 06:48:33', '0');
INSERT INTO `tbl_blogs` VALUES ('32', '1', 'Anti-Aging Tips', 'វិធីសាស្រ្តការពារភាពចាស់', 'Anti-Aging Tips', 'វិធីសាស្រ្តការពារភាពចាស់', '<p><strong>Anti-Aging Tips</strong></p>\r\n<p><strong>Maintain a Healthy Weight</strong></p>\r\n<p>Most of us fret about wrinkles as we reach middle age, yet carrying an extra dress size ages a person much more than a few wrinkles ever could. Managing weight is also a more realistic goal than getting rid of wrinkles.</p>\r\n<h3>Don\'t Smoke</h3>\r\n<p>According to the&nbsp;<a href=\"http://www.mayoclinic.org/healthy-living/quit-smoking/expert-answers/smoking/faq-20058153\">Mayo Clinic</a>, smoking can accelerate the skin&rsquo;s aging process. The more you smoke and the longer you smoke, the more likely you are to have wrinkling of the skin.</p>\r\n<p>Quitting smoking improves your circulation, lowers your risk of developing varicose veins, reduces the likelihood of obesity, and makes exercise easier and more enjoyable. You\'ll also have a better sense of taste and smell as you age, and the smell of smoke won&rsquo;t cling to your hair and clothing.</p>\r\n<h3>Follow a Nutritious Diet</h3>\r\n<p>Eat a low-fat, high-fiber diet rich in fruits, vegetables, and leafy greens. It is also important to stay hydrated. Drinking plenty of water is the one of the easiest, most effective ways to keep your skin looking healthy.</p>\r\n<h3>Stay Active</h3>\r\n<p>Participate in sports, dancing, or other activities you enjoy. Follow the federal government\'s most recent&nbsp;<a href=\"http://www.health.gov/paguidelines/\">Physical Activity Guidelines for Americans</a>, which recommends that adults ages 18 to 64 should engage in two hours and 30 minutes of moderate aerobic activity per week, combined with strength-training exercises two days a week.</p>\r\n<h3>Avoid Sun Exposure</h3>\r\n<p>Use sunscreen on your face and exposed skin every day. Wear a hat and use sunglasses to protect your eyes, since some evidence links sun exposure to later formation of cataracts. Exposure to sun also increases your risk of wrinkles or &ldquo;leathery&rdquo; skin.</p>\r\n<h3>Get Enough Sleep</h3>\r\n<p>Lack of sleep is responsible for the development of&nbsp;&ldquo;dark circles under the eyes&rdquo; and can result in other issues like weight gain and depression. Adequate sleep is important for skin cell rejuvenation.</p>\r\n<h3>Consider Facial Cosmetic Enhancements</h3>\r\n<p>You may think about having a facial rejuvenation procedure like Botox or pursuing a surgical option such as a facelift, brow lift, or neck lift. These procedures can tighten or remove sagging skin beneath the chin, at the jawline, or around the eyes or remove puffy fat pads beneath the eyes that give you a prematurely aged look. However, these enhancements can be obvious to the trained eye if the outcome is not as good as you expected. There are also potentially very serious risk associated with these procedures. Your money might be better spent on a gym membership and healthy foods.</p>', '<p><strong>វិធីសាស្រ្តការពារភាពចាស់</strong></p>\r\n<p><strong>ថែរក្សាទម្ងន់ឲ្យមានសុខភាពល្អ</strong></p>\r\n<p>មនុស្សជាច្រើនបារម្ភនឹងស្នាមជ្រួញ នៅពេលដែលចូលដល់វ័យកណ្ដាល ប៉ុន្តែការស្លៀកសំលៀកបំពាក់ដែលមានទំហំធំ អាចធ្វើឲ្យមនុស្សម្នាក់ចាស់ជាងសមានស្នាមជ្រួញបន្តិចបន្តួចនៅលើមុខទៅទៀត។ ការរក្សាទម្ងន់គឺជាគោលដៅដែលមានលក្ខណៈប្រាកដនិយមជាងការបញ្ជៀសនូវភាពជ្រៀវជ្រួញទៅទៀត។</p>\r\n<p><strong>មិនត្រូវជក់បារី</strong></p>\r\n<p>យោងតាមគ្លីនីក ម៉ាយូ ការជក់បារីអាចបង្កើនល្បឿនដំណើរការធ្វើឲ្យស្បែកចាស់លឿន។ នៅពេលដែលអ្នកជក់កាន់តែច្រើន&nbsp; និងជក់កាន់តែយូរ នោះអ្នកនឹងមានស្នាមជ្រៀវជ្រួញនៅលើស្បែកកាន់តែច្រើន។ ឈប់ជក់បារីអាចជួយបង្កើនចលនាឈាមរត់ កាត់បន្ថយហានិភ័យនៃការវិវត្តសរសៃឈាមប៉ោង កាត់បន្ថយភាពធាត់លើសទម្ងន់ និងជួយឲ្យការធ្វើលំហាត់ប្រាណបានងាយស្រួល និងស្រស់ស្រាយ។ អ្នកនឹងមានជីវហាវិញ្ញាណ និងឃានវិញ្ញាណប្រសើរឡើង។ លើសពីនេះក្លិនបារីនឹងមិនជាប់តោងសក់ក៏ដូចជាសំលៀកបំពាក់របស់អ្នកផងដែរ។</p>\r\n<p><strong>ទទួលទានអាហារមានសារធាតុចិញ្ចឹម</strong></p>\r\n<p>បរិភោគអាហារដែលមានសារធាតុខ្លាញតិច តែមានជាតិសរសៃច្រើនដូចជាមានផ្លែឈើ បន្លែ និងរុក្ខជាតិដែលមានស្លឹកព៌ណបៃតង។ លើសពីនេះវាក៏មានសារៈសំខាន់ក្នុងការផ្ទុកសារធាតុទឹកក្នុងខ្លួនផងដែរ។ ការទទួលទានទឹកច្រើនគឺជាវិធីសាស្រ្តមួយដែលងាយស្រួល និងមានប្រសិទ្ធភាពខ្ពស់ក្នុងកាថែរក្សាស្បែកឲ្យមានសុខភាពល្អ។</p>\r\n<p><strong>រក្សាភាពសកម្ម</strong></p>\r\n<p>ចូលរួមក្នុងកីឡា រាំ ឬ សកម្មភាពផ្សេងទៀតដែលអ្នកចូលចិត្ត។ សូមធ្វើតាម<a href=\"http://health.gov/paguidelines/\">សៀវភៅណែនាំទៅលើសកម្មភាពសម្រាប់រាងកាយរបស់សហរដ្ឋអាមេរិក</a> ដែលណែនាំឲ្យមនុស្សវ័យជំទង់ចន្លោះពី១៨ឆ្នាំ ទៅ ៦៤ឆ្នាំ គួរតែចូលរួមក្នុងការធ្វើលំហាត់ប្រាណលក្ខណៈអារ៉ូប៊ីកឲ្យបាន២ម៉ោងកន្លះក្នុងមួយសប្ដាហ៍ ហើយរួមផ្សំនឹងការធ្វើលំហាត់ប្រាណយកំលាំងកាយឲ្យបាន២ថ្ងៃក្នុងមួយសប្ដាហ៍។</p>\r\n<p><strong>ជៀសវាងការប៉ះពាល់ពីពន្លឺព្រះអាទិត្យ</strong></p>\r\n<p>ប្រើប្រាស់លេការពារកំដៅថ្ងៃនៅលើមុខ និង ស្បែករបស់អ្នកជារៀងរាល់ថ្ងៃ។ ត្រូវពាក់មួក ជាមួយនឹងវែនតាការពារកំដៅថ្ងៃដើម្បីការពារភ្នែក ព្រោះថាផលប៉ះពាល់ពីព្រះអាទិត្យអាចនាំឲ្យមានជំងីភ្នែលឡើងបាយនៅពេលក្រោយ។</p>\r\n<p><strong>ទទួលទានដំណេកឲ្យបានគ្រប់គ្រាន់</strong></p>\r\n<p>ការទទួលទានដំណេកមិនគ្រប់គ្រាន់ អាចធ្វើឲ្យមានការកើតឡើងនូវរង្វង់ខ្មៅក្រោមភ្នែក ហើយក៏អាចបណ្ដាលឲ្យមានបញ្ហាផ្សេងទៀតដែរ ដូចជាឡើងទម្ងន់ និង ទប់ប្រមល់ក្នុងចិត្ត។ ការទទួលទានដំណេកគ្រប់គ្រាន់សារៈសំខាន់ក្នុងធ្វើឲ្យកោសិកាស្បែកកើតមានជាថ្មី។</p>\r\n<p><strong>ពិចារណាលើការបន្ថែមការកែសម្ផស្សលើមុខ</strong></p>\r\n<p>អ្នកប្រហែលជាគិតអំពីវិធីសាស្រ្តក្នុងធ្វើទំរង់មុខជាថ្មីដូចជា ការចាក់ Botox ឬ វះកាត់យកស្នាមជ្រៀវជ្រួញនៅលើមុខ ចិញ្ចើម ឬ កជាដើម។ វិធីសាស្រ្តបែបនេះអាចជួយបន្តឹង ឬ ជម្រុសចោលស្បែកដែលយានៅក្រោមចង្កា នៅថ្គាម ឬនៅជុំវិញភ្នែក ឬក៏កាត់បន្ថយការហើមនៅខាងក្រោមភ្នែកដែលធ្វើឲ្យអ្នកមើលក្មេងជាងវ័យ។ ប៉ុន្តែការធ្វើរបៀបនេះអាចបណ្ដាលឲ្យមានបញ្ហា បើសិនជាលទ្ធផលដែលទទួលបានមិនដូចនឹងអ្នកដែលប្រាថ្នា។ ម្យ៉ាងវិញទៀត វាក៏ប្រឈមនឹងហានិភ័យខ្ពស់ផងដែរក្នុងការប្រើប្រាស់វិធីសាស្រ្តនេះ។ ដូចនេះអ្នកគួរតែចំណាយថវិការបស់អ្នកទៅលើថ្លៃចូលជាសមាជិកក្លឹបហាត់ប្រាណ និងអាហារសុខភាពល្អជាង។</p>', '2016-03-27-Anti-Aging-Tips', 'uploads/blogs/blog_56f7ab098b21b.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-27 09:42:33', '0');
INSERT INTO `tbl_blogs` VALUES ('33', '1', '3 Unhealthy Habits That Cause Bloating, Indigestion & Acid Reflux', 'ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ ហើមពោះ រំលាយអាហារមិនល្អ និងច្រាលអាស៊ីតមកលើ', '3 Unhealthy Habits That Cause Bloating, Indigestion & Acid Reflux', 'ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ ហើមពោះ រំលាយអាហារមិនល្អ និងច្រាលអាស៊ីតមកលើ', '<p><strong>3 Unhealthy Habits That Cause Bloating, Indigestion &amp; Acid Reflux</strong></p>\r\n<p>The food coma is something we all experience now and again, but if you&rsquo;re experiencing it every time you go out to a restaurant or every weekend, then something&rsquo;s got to change. It&rsquo;s not normal to feel sleepy, sluggish and bloated after every meal.</p>\r\n<p>But what about when it&rsquo;s not? What if you&rsquo;re eating healthy, not overeating and yet you still feel sluggish and bloated afterwards? That&rsquo;s where digestion comes in. Unfortunately, most of us aren&rsquo;t even aware that the eating habits we&rsquo;ve developed as a society are causing us to feel this way.</p>\r\n<p>Here are the top 3 unhealthy habits experts recommend avoiding in your next meal:</p>\r\n<p><strong style=\"color: #828282;\">1. Eathing lots of starch and protein together</strong></p>\r\n<p>Steak and mashed potato. Burger and fries. Eggs Benedict. All the glorious combinations that make us want to pass out on the couch after. Eating large amounts of starch (e.g. bread, pasta, rice, potatoes) and protein (e.g. fish, chicken, beef, eggs) at the same time can cause indigestion and acid reflux.</p>\r\n<p>This is because protein has a much slower rate of digestion, and starches digest much faster into simple sugars. Technically speaking, starches should be saying &ldquo;hasta la vista&rdquo; to the stomach pretty quickly and entering the next stage of digestion in the small intestine. But because they&rsquo;re all mushed up with the protein in the stomach, they have to hang around and wait for hours until the protein finsihes digestion too. And when starches hang around too long, they ferment i.e. release gas which causes us to belch every so eloquently</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Solution:</strong></p>\r\n<p>Eat your starch first, follow it up with protein afterwards. Don&rsquo;t sweat it if you&rsquo;re having a small portion of starch alongside your protein, the key is not to overdo the rice and potatoes. P.S. you can eat your veggies with starch and protein, either combo works well!</p>\r\n<p><strong style=\"color: #828282;\">2. Having ice-cold water with your meal</strong></p>\r\n<p>When it comes to temperature of drinking water at a meal, opt for room temperature instead of cold. Ice-cold water constricts blood vessels, so it hinders the body&rsquo;s ability to digest food and absorb nutrients.</p>\r\n<p>Ice-cold water will also solidify any fats that are being eaten making them difficult to digest as well. Plus, your body&rsquo;s energy is going to get diverted from trying to digest food to trying to regulate your body&rsquo;s temperature. So much unnecessary exhaustion.</p>\r\n<p><strong>Solution:</strong></p>\r\n<p>Think Japanese. Order some hot water (with lemon, optional) or green tea before the start of your meal and slowly sip on it to prime your gut for optimal digestion. Always tell the server &ldquo;no ice&rdquo; and &ldquo;room temperature&rdquo;.</p>\r\n<p>Keep in mind that these tips are for optimal digestion. If you suffer from weak digestion, these are far more applicable to you than someone who rarely suffers from feeling bloated or sluggish after a meal. These tips are also more crucial when you have a big brunch or celebratory meal coming up &ndash; basically, when you know a food coma is just around the corner.</p>\r\n<ol start=\"3\">\r\n<li><strong> Drinking lots of water with your meal</strong></li>\r\n</ol>\r\n<p>Feeling confused already? Water is wonderful. And it&rsquo;s great to have with your meal in small sips, for the purpose of helping the food along the digestive tract. But drowning your meals with multiple glasses of water is just going to give you indigestion and make you feel bloated afterwards.</p>\r\n<p>When food enters your stomach, a substance called hydrochloric acid (HCL) is secreted from the stomach lining to help begin the process of digestion. HCL is super acidic &ndash; after all, it needs to be in order to break big chunks of food into tiny, absorbable nutrients. So, if you start chugging back water with your meal, you&rsquo;re going to dilute the hy drochloric acid and thereby dampen its efforts.</p>\r\n<p><strong>Solution:</strong></p>\r\n<p>Drinks lots of water either an hour before or after your meals. Only sip on a glass of water throughout your meal.</p>', '<p><strong>ទំលាប់អាក្រក់ទាំងបីដែលធ្វើអោយ</strong> <strong>ហើមពោះ</strong> <strong>រំលាយអាហារមិនល្អ</strong> <strong>និង</strong><strong>ច្រាលអាស៊ីតមកលើ</strong></p>\r\n<p>ជាធម្មតាទេ អ្នកតែងតែមានអារម្មណ៏ថា ងងុយគេង តឹងពោះ បន្ទាប់ពីញុំាអាហារច្រើន។ ក៏ប៉ុន្តែ ប្រសិនបើអ្នកមានបញ្ហា ងងុយគេង តឹងពោះ រឺក៏ ច្អុលពោះរាល់ពេលអ្នកញុំាអាហាររួច មានន័យថា មានរឿងមិនប្រក្រតីអាចមានឡើងហើយ។</p>\r\n<p>ប្រសិនបើអ្នកញុំាអាហារដែលមានសុខភាពល្អមិនញុំាច្រើនពេកហើយមានបញ្ហា ងងុយ គេង តឹងពោះ រឺក៏ច្អុលពោះ នេះបញ្ជាក់ថាប្រព័ន្ធរំលាយ អាហាររបស់អ្នក អាច មានបញ្ហា។ ជាអកុសលមនុស្សភាគច្រើនមិនបានដឹងពីទំលាប់នៃការញុំា ដោយសារតែសង្គមជាអ្នកកំណត់អោយគេមានទំលាប់បែបនេះ។</p>\r\n<p>ខាងក្រោមនេះជាទំលាប់មិនល្អបីយ៉ាងដែលអ្នកគួរតែជៀសវាងនៅពេលញុំាអាហារ</p>\r\n<p><strong>១</strong><strong>. </strong><strong>ការញុំារបស់មានជាតិម្សៅនិងប្រូតេអ៊ីនច្រើនក្នុងពេលតែមួយ</strong></p>\r\n<p>ឧទាហរណ៏ សាច់គោនិងដំឡូងម៉ត់ burgerនិងដំឡូងចៀន ។ ការញុំាបរិមាណច្រើននៃរបស់មានជាតិម្សៅដូចជា នំបុ័ង pasta បាយ ដំឡូង និង ប្រុតេអ៊ីនដូចជា សាច់ត្រី សាច់មាន់ សាច់គោ ស៊ុត ក្នុងពេលតែមួយអាចធ្វើអោយអ្នកមានមានបញ្ហាក្នុងការរំលាយអាហារនិង ការច្រាលអាស៊ីតមកលើ។</p>\r\n<p>នេះដោយសារតែប្រូតេអ៊ីនមានការរលាយយឺត ហើយម្ហូបមានជាតិម្សៅមានការរលាយលឿនទៅជាស្ករ។ និយាយអោយចំទៅ អាហារមានជាតិម្សៅរលាយយ៉ាងរហ័សនៅក្នុងពោះរបស់យើង ហើយបន្តរលាយនៅក្នុងប្រព័ន្ធរំលាយអាហារតូចៗក្នុងខ្លួនរបស់យើង។ ដោយសារតែអាហារមានជាតិម្សៅរួមផ្សំជាមួយប្រូតេអ៊ីននៅក្នុងពោះរបស់យើង អាហារមានជាតិម្សៅ ត្រូវរងចាំរាប់ម៉ោង ទំរាំតែប្រូតេអ៊ីនរលាយអស់។ ការ ត្រូវរងចាំរាប់ម៉ោងបែបនេះ ដែលធ្វើអោយយើងផើ។</p>\r\n<p><strong>ដំណោះស្រាយ</strong></p>\r\n<p>គួរញុំាអាហារមានជាតិម្សៅមុនសិន រួចទើញុំាអាហារប្រុតេអ៊ីនតាមក្រោយ។ គន្លឹះសំខាន់គឺកុំញុំាបាយ រឺដំឡូងច្រើនពេក។ អ្នកអាចញុំាបន្លែជាមួយ អាហារមានជាតិម្សៅ រឺក៏ជាមួយ អាហារមានប្រូតេអ៊ីន។</p>\r\n<p><strong>២</strong><strong>. </strong><strong>ញុំាទឹកត្រជាក់ជាមួយអាហាររបស់អ្នក</strong></p>\r\n<p>បើនិយាយពីសីតុណ្ហភាពសមរម្យនៅពេលញុំាអាហារ ទឹកធម្មតាប្រសើរជាងទឹកត្រជាក់។ ទឹកត្រជាក់ធ្វើអោយសរសៃឈាមរួមតួច ដូចនេះហើយ វារារាំងរាងកាយយើងក្នុងការរំលាយអាហារនិងស្រូយកសារធាតុចិញ្ចឹម។</p>\r\n<p>ទឹកត្រជាក់បង្កកជាតិខ្លាញ់ដែលធ្វើអោយរយើងពិបាកក្នុងការរំលាយជាតិខ្លាញ់ទាំងនុះ។ លើសពីនេះទៅទៀត ថាមពលរាងកាយរបស់យើងនឹងប្តូរតួនាទីពី ព្យាយាមរំលាយអាហារទៅជារក្សាសីតុណ្ហភាពក្នុងខ្លួនយើងវិញ។</p>\r\n<p><strong>ដំណោះស្រាយ</strong></p>\r\n<p>កម៉ង់ទឹកក្តៅជាមួយក្រូចឆ្មារ តែបើមិនមានក្រូចឆ្មារក៏បាន ឬតែបៃតង មុនពេលចាប់ផ្តើមញុំាអាហារ ហើយញុំាទឹកក្តៅសន្សឹមៗដើម្បីអោយងាយស្រួលក្នុងការរំលាយអាហារ។</p>\r\n<p>ត្រូវចងចាំថា tips ទាំងនេះគឺសំរាប់សម្រួលដល់ការរំលាយអាហារ។ ប្រសិនបើអ្នកមានបញ្ហានូវការរំលាយអាហារខ្សោយ tips ទាំងនេះគឺជាគន្លឹះយ៉ាងសំខាន់ក្នុងការជួយដល់អ្នក។ រឹតតែពិសេសជាងនេះទៅទៀត គឺសំរាប់អ្នកដែលមានបញ្ហាចង់ផើអាហារមកវិញពេលញុំាអាហាររួច។</p>\r\n<p><strong>៣</strong><strong>. </strong><strong>ញុំាទឹកច្រើនពេកជាមួយអាហាររបស់អ្នក</strong></p>\r\n<p>ទឹកគឺមានសារ:ប្រយោជន៏យ៉ាងសំខាន់ ហើយវាជាការល្អប្រសិនបើអ្នកញុំាទឹកតិចៗនៅពេលដែលអ្នកកំពុងញុំាអាហារ ព្រោះទឹកជួយអោយមានការរំលាយអាហារបានលឿន។ ក៏ប៉ុន្តែ ការញុំាទឹកច្រើនពេកនៅពេលដែលអ្នកកំពុងតែញុំាអាហារ ធ្វើអោយអាហារមិនរលាយនិងធ្វើអោយអ្នកផើឡើង។</p>\r\n<p>នៅពេលដែលអាហារចួលទៅក្នុងពោះ មានសារធាតុម្យាងឈ្មោះ hydrochloric acid (HCL) ជាអ្នកចាប់ផ្តើជួយរំលាយអាហារ។ HCL មានជាតិអាស៊ីតក្លាំង បន្ទាប់មក វាធ្វើការតាមលំដាប់លំដោយក្នុងការរំលាយអាហារពីបំនែកធំៗទៅជាបំនែកតួចៗ និងស្រូបយកសារធាតុចិញ្ចឹម។ ដូច្នេះ ប្រសិនបើអ្នកញុំាទឹកច្រើនជាមួយអាហាររបស់អ្នក អ្នកនឹងធ្វើអោយជាតិអាស៊ីតខ្សោយ ជាហេតុធ្វើអោយការរំលាយអាហារមិនបានល្អ។</p>\r\n<p><strong>ដំណោះស្រាយ</strong></p>\r\n<p>ញុំាទឹកអោយច្រើនមួយម៉ោងមុនឬក្រោយពេលញុំាអាហារ។ ប្រសិនបើអ្នកញុំាទឹកពេលកំពុងញុំាអាហារ សូមញុំាតិចៗបានហើយ។</p>', '3-unhealthy-habits-that-cause-bloating-indigestion-acid-reflux', 'uploads/blogs/blog_5709c3b9a757a.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-05-13 13:07:56', '0');
INSERT INTO `tbl_blogs` VALUES ('34', '1', 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', 'Endometriosis Linked to Heart Disease in Study', '<p><strong>Endometriosis Linked to Heart Disease in Study</strong></p>\r\n<p><strong>Gynecological condition may boost heart risk 60 percent; even more in young women, research suggests</strong></p>\r\n<p>Tuesday, March 29, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>TUESDAY, March 29, 2016 (HealthDay News) -- Women who have endometriosis, the abnormal growth of uterine tissue outside the uterus, may face a 60 percent higher risk of developing heart disease than women without the disorder, a new study suggests.</p>\r\n<p>The potential risk was especially high for women who were 40 or younger: they were three times more likely to have heart disease than women in the same age range without the gynecological condition, the researchers found.</p>\r\n<p>That finding could be partly explained by the endometriosis treatments themselves. These treatments, such as removal of the uterus and ovaries, have been linked in other studies to potential heart disease risk, the study authors said.</p>\r\n<p>\"Women with endometriosis should be thinking about lifestyle changes and discussion with their doctor about steps they can take to prevent heart disease,\" said Stacey Missmer, the study\'s senior author. Missmer is director of epidemiologic research in reproductive medicine at Brigham and Women\'s Hospital in Boston.</p>\r\n<p>Missmer said the study found an association between endometriosis and the risk of heart disease, but can\'t prove a cause-and-effect relationship. She believes this is the first study to follow people over time, noting, \"I would argue that no first study is clear evidence of cause and effect.\"</p>\r\n<p>However, other studies support the link between endometriosis and heart issues, she said.</p>\r\n<p>\"We knew that women with endometriosis have a chronic inflammation. There was one study previously that suggests women with endometriosis have a poor lipid profile -- high \'bad\' cholesterol and low \'good\' cholesterol,\" Missmer said. These patients also have high levels of oxidative stress. All of those conditions are tied to heart disease risk, she said.</p>\r\n<p>Endometriosis affects about 10 percent of women of reproductive age in the United States, according to background information in the study. Symptoms include pelvic pain and painful periods. The condition is known to reduce fertility.</p>\r\n<p>The study, published online March 29 in&nbsp;<em>Circulation: Cardiovascular Quality and Outcomes</em>, looked at more than 116,000 women enrolled in the Nurses\' Health Study II. The researchers found nearly 12,000 women who received a diagnosis of endometriosis during the 20-year follow-up, which ended in 2009.</p>\r\n<p>In addition to looking at heart disease, Missmer\'s team found that women with endometriosis were 1.35 times more likely to need surgery or stents to unblock arteries. These patients were also 1.5 times more likely to have a heart attack, and nearly two times as likely to have chest pain, or angina.</p>\r\n<p>Younger women had an even higher risk of heart disease, the researchers found. Those 40 and younger with endometriosis were three times as likely to have a heart attack, need surgery for a blocked artery or have chest pain (angina) compared to those of the same ages without endometriosis.</p>\r\n<p>Other studies have found that removal of the uterus and ovaries may increase the risk of heart disease, according to the researchers. As women in the study aged, Missmer said, the influence of the endometriosis on their heart disease risk went down, probably because other risk factors -- such as high cholesterol or high blood pressure -- came into play, explaining much of the risk.</p>\r\n<p>The study finding \"is not a surprise to me,\" said Dr. Tamer Seckin, a New York City-based endometriosis surgeon and gynecologist who co-founded the Endometriosis Foundation of America.</p>\r\n<p>\"This is significant, that they have statistically found an important link between endometriosis and coronary heart disease,\" Seckin said. The study is strong for several reasons, including its length of follow-up, he added.</p>\r\n<p>Based on the new study findings, Seckin said, he plans to pay more attention to his patients\' risk of coronary heart disease, asking about family history and other risk factors.</p>\r\n<p>Seckin advocates treating endometriosis, whenever possible, with conservative surgery that removes the lesions, but not the uterus or ovaries.</p>\r\n<p>Missmer stressed that \"the take-home message here is that heart disease is the leading killer of women in the U.S. One in three women will experience heart disease, and women need to understand that whether you have endometriosis or not, you should be paying attention to healthy lifestyle choices, even if you are young.\"</p>', '<p><strong>Endometriosis Linked to Heart Disease in Study</strong></p>\r\n<p><strong>Gynecological condition may boost heart risk 60 percent; even more in young women, research suggests</strong></p>\r\n<p>Tuesday, March 29, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>TUESDAY, March 29, 2016 (HealthDay News) -- Women who have endometriosis, the abnormal growth of uterine tissue outside the uterus, may face a 60 percent higher risk of developing heart disease than women without the disorder, a new study suggests.</p>\r\n<p>The potential risk was especially high for women who were 40 or younger: they were three times more likely to have heart disease than women in the same age range without the gynecological condition, the researchers found.</p>\r\n<p>That finding could be partly explained by the endometriosis treatments themselves. These treatments, such as removal of the uterus and ovaries, have been linked in other studies to potential heart disease risk, the study authors said.</p>\r\n<p>\"Women with endometriosis should be thinking about lifestyle changes and discussion with their doctor about steps they can take to prevent heart disease,\" said Stacey Missmer, the study\'s senior author. Missmer is director of epidemiologic research in reproductive medicine at Brigham and Women\'s Hospital in Boston.</p>\r\n<p>Missmer said the study found an association between endometriosis and the risk of heart disease, but can\'t prove a cause-and-effect relationship. She believes this is the first study to follow people over time, noting, \"I would argue that no first study is clear evidence of cause and effect.\"</p>\r\n<p>However, other studies support the link between endometriosis and heart issues, she said.</p>\r\n<p>\"We knew that women with endometriosis have a chronic inflammation. There was one study previously that suggests women with endometriosis have a poor lipid profile -- high \'bad\' cholesterol and low \'good\' cholesterol,\" Missmer said. These patients also have high levels of oxidative stress. All of those conditions are tied to heart disease risk, she said.</p>\r\n<p>Endometriosis affects about 10 percent of women of reproductive age in the United States, according to background information in the study. Symptoms include pelvic pain and painful periods. The condition is known to reduce fertility.</p>\r\n<p>The study, published online March 29 in&nbsp;<em>Circulation: Cardiovascular Quality and Outcomes</em>, looked at more than 116,000 women enrolled in the Nurses\' Health Study II. The researchers found nearly 12,000 women who received a diagnosis of endometriosis during the 20-year follow-up, which ended in 2009.</p>\r\n<p>In addition to looking at heart disease, Missmer\'s team found that women with endometriosis were 1.35 times more likely to need surgery or stents to unblock arteries. These patients were also 1.5 times more likely to have a heart attack, and nearly two times as likely to have chest pain, or angina.</p>\r\n<p>Younger women had an even higher risk of heart disease, the researchers found. Those 40 and younger with endometriosis were three times as likely to have a heart attack, need surgery for a blocked artery or have chest pain (angina) compared to those of the same ages without endometriosis.</p>\r\n<p>Other studies have found that removal of the uterus and ovaries may increase the risk of heart disease, according to the researchers. As women in the study aged, Missmer said, the influence of the endometriosis on their heart disease risk went down, probably because other risk factors -- such as high cholesterol or high blood pressure -- came into play, explaining much of the risk.</p>\r\n<p>The study finding \"is not a surprise to me,\" said Dr. Tamer Seckin, a New York City-based endometriosis surgeon and gynecologist who co-founded the Endometriosis Foundation of America.</p>\r\n<p>\"This is significant, that they have statistically found an important link between endometriosis and coronary heart disease,\" Seckin said. The study is strong for several reasons, including its length of follow-up, he added.</p>\r\n<p>Based on the new study findings, Seckin said, he plans to pay more attention to his patients\' risk of coronary heart disease, asking about family history and other risk factors.</p>\r\n<p>Seckin advocates treating endometriosis, whenever possible, with conservative surgery that removes the lesions, but not the uterus or ovaries.</p>\r\n<p>Missmer stressed that \"the take-home message here is that heart disease is the leading killer of women in the U.S. One in three women will experience heart disease, and women need to understand that whether you have endometriosis or not, you should be paying attention to healthy lifestyle choices, even if you are young.\"</p>', 'endometriosis-linked-to-heart-disease-in-study', 'uploads/blogs/blog_5700cfc62c944.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:05', '0');
INSERT INTO `tbl_blogs` VALUES ('35', '1', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', 'Obstructive Sleep Apnea: 5 Self-Care Strategies', '<p>Obstructive Sleep Apnea: 5 Self-Care Strategies</p>\r\n<p>Reviewed by Jennifer Robinson, MD&nbsp;on October 27, 2015</p>\r\n<p>Your doctor can help you find a sleep apnea treatment that makes a big difference in how you feel. But you can also do things at home to improve your symptoms. Some of them will even boost your health overall, and lower your chances of getting other medical problems.</p>\r\n<p>Tip 1: Lose Weight if You Need To</p>\r\n<p>Not all people with sleep apnea are overweight or obese, but many are. Weight loss &ndash; even a modest amount -- can improve your symptoms.</p>\r\n<p>In one study, 71 people with the disorder got either lifestyle counseling or joined a program that included a 12-week low-calorie diet. On average, those in the diet group shed 16 pounds. After 2 years, sleep apnea was much less severe for them than it was for the people who got lifestyle counseling only.</p>\r\n<p>Another study looked at how weight loss affected obstructive sleep apnea among obese people with type 2 diabetes. The people in the study joined either a weight loss group or a diabetes management group for 1 year. On average, those in the weight loss group lost nearly 24 pounds, while those in the other group lost 1.3 pounds.</p>\r\n<p>The effects of losing weight were even more dramatic in this study. Three times as many people in the weight loss group wound up with no symptoms of sleep apnea at all. And among the people in that group who still had the disorder, it was much less severe after they slimmed down.</p>\r\n<p>Tip 2: Limit Alcohol and Stop Smoking</p>\r\n<p>You already know that smoking and drinking too much alcohol aren&rsquo;t the healthiest moves you can make. Did you know they can also make your sleep apnea symptoms worse? Cigarette smoking increases the swelling in your upper airway. That can aggravate symptoms like snoring and pauses in breathing.</p>\r\n<p>Alcohol decreases the muscle tone in the back of the throat, which can interfere with air flow -- the last thing you need when you already have breathing problems.</p>\r\n<p>Tip 3: Eat Healthy</p>\r\n<p>This is great advice for everyone. But some research shows that having sleep apnea may mean you\'re more likely to consider making unhealthy food choices. When you don&rsquo;t get enough sleep, you might be more likely to crave carbs. Lack of Zzz\'s and fatigue have also been linked with changes in the hormones leptin and ghrelin, which control your feelings of hunger and fullness. When you&rsquo;re tired, you may want to eat more and feel less satisfied when you do.</p>\r\n<p>You don&rsquo;t need to be overweight to have an unhealthy diet. In a study of 320 adults, those with more-severe sleep apnea ate more protein, fat, and saturated fatty acids than those who had a less-severe problem, regardless of how much they weighed.</p>\r\n<p>Tip 4: Tend to Your Allergies</p>\r\n<p>It&rsquo;s no surprise that sleeping and breathing are harder when you&rsquo;re stuffed up from nasal allergies.</p>\r\n<p>Picture your airway as a long, muscular tube running from your nose to your windpipe. If your allergies aren&rsquo;t under control, the tissues of your upper throat swell and make the airway narrow. With less space for air, breathing gets harder.</p>\r\n<p>If you have nasal allergies, talk to your doctor about how to get them under control. It may help to use a Neti pot or a saline nasal spray before bed.</p>\r\n<p>Tip 5: Build a Good Sleep Routine</p>\r\n<p>Shut-eye is an important part of good health. The catch, of course, is that sleep apnea makes it hard to get enough.&nbsp;</p>\r\n<p>About half of people with the condition have most of their breathing problems when they sleep on their backs. So most doctors encourage people to try to stay in other positions. But how can you get into the habit? Some doctors suggest a simple trick: Put two tennis balls into a tube sock and pin it to the back of your nightshirt.</p>\r\n<p>Devices that improve breathing for people with the disorder -- including a CPAP (continuous positive airway pressure) machine -- can also help. Talk to your doctor about whether you should start using one.</p>', '<p>Obstructive Sleep Apnea: 5 Self-Care Strategies</p>\r\n<p>Reviewed by Jennifer Robinson, MD&nbsp;on October 27, 2015</p>\r\n<p>Your doctor can help you find a sleep apnea treatment that makes a big difference in how you feel. But you can also do things at home to improve your symptoms. Some of them will even boost your health overall, and lower your chances of getting other medical problems.</p>\r\n<p>Tip 1: Lose Weight if You Need To</p>\r\n<p>Not all people with sleep apnea are overweight or obese, but many are. Weight loss &ndash; even a modest amount -- can improve your symptoms.</p>\r\n<p>In one study, 71 people with the disorder got either lifestyle counseling or joined a program that included a 12-week low-calorie diet. On average, those in the diet group shed 16 pounds. After 2 years, sleep apnea was much less severe for them than it was for the people who got lifestyle counseling only.</p>\r\n<p>Another study looked at how weight loss affected obstructive sleep apnea among obese people with type 2 diabetes. The people in the study joined either a weight loss group or a diabetes management group for 1 year. On average, those in the weight loss group lost nearly 24 pounds, while those in the other group lost 1.3 pounds.</p>\r\n<p>The effects of losing weight were even more dramatic in this study. Three times as many people in the weight loss group wound up with no symptoms of sleep apnea at all. And among the people in that group who still had the disorder, it was much less severe after they slimmed down.</p>\r\n<p>Tip 2: Limit Alcohol and Stop Smoking</p>\r\n<p>You already know that smoking and drinking too much alcohol aren&rsquo;t the healthiest moves you can make. Did you know they can also make your sleep apnea symptoms worse? Cigarette smoking increases the swelling in your upper airway. That can aggravate symptoms like snoring and pauses in breathing.</p>\r\n<p>Alcohol decreases the muscle tone in the back of the throat, which can interfere with air flow -- the last thing you need when you already have breathing problems.</p>\r\n<p>Tip 3: Eat Healthy</p>\r\n<p>This is great advice for everyone. But some research shows that having sleep apnea may mean you\'re more likely to consider making unhealthy food choices. When you don&rsquo;t get enough sleep, you might be more likely to crave carbs. Lack of Zzz\'s and fatigue have also been linked with changes in the hormones leptin and ghrelin, which control your feelings of hunger and fullness. When you&rsquo;re tired, you may want to eat more and feel less satisfied when you do.</p>\r\n<p>You don&rsquo;t need to be overweight to have an unhealthy diet. In a study of 320 adults, those with more-severe sleep apnea ate more protein, fat, and saturated fatty acids than those who had a less-severe problem, regardless of how much they weighed.</p>\r\n<p>Tip 4: Tend to Your Allergies</p>\r\n<p>It&rsquo;s no surprise that sleeping and breathing are harder when you&rsquo;re stuffed up from nasal allergies.</p>\r\n<p>Picture your airway as a long, muscular tube running from your nose to your windpipe. If your allergies aren&rsquo;t under control, the tissues of your upper throat swell and make the airway narrow. With less space for air, breathing gets harder.</p>\r\n<p>If you have nasal allergies, talk to your doctor about how to get them under control. It may help to use a Neti pot or a saline nasal spray before bed.</p>\r\n<p>Tip 5: Build a Good Sleep Routine</p>\r\n<p>Shut-eye is an important part of good health. The catch, of course, is that sleep apnea makes it hard to get enough.&nbsp;</p>\r\n<p>About half of people with the condition have most of their breathing problems when they sleep on their backs. So most doctors encourage people to try to stay in other positions. But how can you get into the habit? Some doctors suggest a simple trick: Put two tennis balls into a tube sock and pin it to the back of your nightshirt.</p>\r\n<p>Devices that improve breathing for people with the disorder -- including a CPAP (continuous positive airway pressure) machine -- can also help. Talk to your doctor about whether you should start using one.</p>', '2016-03-31-Obstructive-Sleep-Apnea:-5-Self-Care-Strategies', 'uploads/blogs/blog_56fd212124a37.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:12', '0');
INSERT INTO `tbl_blogs` VALUES ('36', '1', 'Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke', 'Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke', '<p><strong>Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke</strong><strong>: </strong></p>\r\n<p><strong>Study </strong><strong>Fatal strokes seven times more likely if drugs to control blood pressure, cholesterol aren\'t taken as prescribed</strong></p>\r\n<p>Monday, March 28, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>MONDAY, March 28, 2016 (HealthDay News) -- People at risk for heart disease are much more likely to die from a stroke if they don\'t take cholesterol-lowering statin drugs and blood pressure medications as prescribed, a new study reports.</p>\r\n<p>Folks with high blood pressure and high cholesterol had a seven times greater risk of suffering a fatal stroke if they didn\'t follow their drug regimen to lower cholesterol and blood pressure.</p>\r\n<p>The study findings were published online March 28 in the&nbsp;<em>Journal of the American College of Cardiology</em>.</p>\r\n<p>Fatal stroke risk also increased if these patients stuck to one type of medication but not both, the researchers found.</p>\r\n<p>For example, if patients kept taking blood pressure medication but dropped their statins, their risk of dying from a stroke increased by 82 percent. Turning the tables, they had a 30 percent added risk of stroke if they took their statins but didn\'t take their blood pressure medications.</p>\r\n<p>\"High blood pressure and high cholesterol concentration are key risk factors for stroke for which effective medication is available,\" said study lead author Kimmo Herttua, head researcher for the Center of Maritime Health and Society at the University of Southern Denmark. \"A major obstacle for the full benefits of lipid-lowering and antihypertensive treatments is the non-adherence of patients to drug therapy.\"</p>\r\n<p>Stroke is responsible for 12 percent of all deaths worldwide, and it is the second leading cause of death after heart disease, the researchers said.</p>\r\n<p>In this study, Herttua and colleagues tracked data on more than 58,000 patients in Finland with high cholesterol levels. During an average 5.5 years of follow-up, 532 died of stroke.</p>\r\n<p>The researchers used prescription records to track whether people were taking medications as their doctors ordered. They found that only six out of 10 people took statins as prescribed.</p>\r\n<p>Experts cited a number of reasons patients might find it tough to keep up with all their medications.</p>\r\n<p>Doctors struggle to get patients to stick to any sort of health-improving regimen, noted Dr. Nieca Goldberg, a cardiologist and medical director of NYU Langone\'s Joan H. Tisch Center for Women\'s Health.</p>\r\n<p>\"One of the challenges in taking care of patients is getting them to start a program and get them to continue it, whether it\'s getting them to exercise, cut down on their sugar intake or take their medicine,\" she said.</p>\r\n<p>Doctors may not be properly explaining the role of these drugs in their health, and the necessity of taking them as prescribed, Goldberg and Herttua said.</p>\r\n<p>\"People need to understand the connection between taking those medicines and preventing a heart attack or stroke,\" Goldberg said. \"Face-to-face time being limited in the doctor\'s office, that is kind of getting lost in the visit.\"</p>\r\n<p>Patients also might be struggling to keep up with all of the medications they need to take in a day. \"The more medication recommended, the less likely a patient is to remember to take them,\" Herttua said.</p>\r\n<p>Drug costs also might play a role.</p>\r\n<p>\"Generics aren\'t as cheap anymore. There are rising prices for generics,\" Goldberg said. \"Sometimes instead of not taking the pill at all, a patient may cut the dose. It\'s important not to do that, because you want to make sure you have the most effective dose.\"</p>\r\n<p>Finally, people might simply burn out, throwing up their hands in despair at all the steps they must take to maintain their health.</p>\r\n<p>\"It\'s a drag,\" Goldberg said. \"People don\'t want to feel like a patient. They want to feel like themselves.\"</p>\r\n<p>New technologies might help people stay on top of their medications, Herttua said. For example, daily text messages could remind patients to take their statins and blood pressure pills.</p>\r\n<p>Medical science also could help by combining different medications into a single \"polypill,\" cutting down on the number of prescriptions a patient has to manage, Herttua said.</p>\r\n<p>Doctors also can help patients by emphasizing the importance of these medications to their brain health, said Dr. Gayatri Devi, a neurologist and memory loss specialist at Lenox Hill Hospital in New York City.</p>\r\n<p>\"The best way to improve compliance in chronic illness is through education about the benefits of doing so,\" Devi said. \"People often ask me how to keep their brains functional as they age. I tell them one of the most effective things they can do is promote cardiovascular health.\"</p>\r\n<p>How?</p>\r\n<p>\"By exercising, following a good Mediterranean diet and adhering to an appropriate medication regimen necessary to control their diabetes, hypertension and high cholesterol, if they have these conditions,\" Devi said.</p>', '<p><strong>Skipping Meds Greatly Ups Heart Patients\' Risk of Stroke</strong><strong>: </strong></p>\r\n<p><strong>Study </strong><strong>Fatal strokes seven times more likely if drugs to control blood pressure, cholesterol aren\'t taken as prescribed</strong></p>\r\n<p>Monday, March 28, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>MONDAY, March 28, 2016 (HealthDay News) -- People at risk for heart disease are much more likely to die from a stroke if they don\'t take cholesterol-lowering statin drugs and blood pressure medications as prescribed, a new study reports.</p>\r\n<p>Folks with high blood pressure and high cholesterol had a seven times greater risk of suffering a fatal stroke if they didn\'t follow their drug regimen to lower cholesterol and blood pressure.</p>\r\n<p>The study findings were published online March 28 in the&nbsp;<em>Journal of the American College of Cardiology</em>.</p>\r\n<p>Fatal stroke risk also increased if these patients stuck to one type of medication but not both, the researchers found.</p>\r\n<p>For example, if patients kept taking blood pressure medication but dropped their statins, their risk of dying from a stroke increased by 82 percent. Turning the tables, they had a 30 percent added risk of stroke if they took their statins but didn\'t take their blood pressure medications.</p>\r\n<p>\"High blood pressure and high cholesterol concentration are key risk factors for stroke for which effective medication is available,\" said study lead author Kimmo Herttua, head researcher for the Center of Maritime Health and Society at the University of Southern Denmark. \"A major obstacle for the full benefits of lipid-lowering and antihypertensive treatments is the non-adherence of patients to drug therapy.\"</p>\r\n<p>Stroke is responsible for 12 percent of all deaths worldwide, and it is the second leading cause of death after heart disease, the researchers said.</p>\r\n<p>In this study, Herttua and colleagues tracked data on more than 58,000 patients in Finland with high cholesterol levels. During an average 5.5 years of follow-up, 532 died of stroke.</p>\r\n<p>The researchers used prescription records to track whether people were taking medications as their doctors ordered. They found that only six out of 10 people took statins as prescribed.</p>\r\n<p>Experts cited a number of reasons patients might find it tough to keep up with all their medications.</p>\r\n<p>Doctors struggle to get patients to stick to any sort of health-improving regimen, noted Dr. Nieca Goldberg, a cardiologist and medical director of NYU Langone\'s Joan H. Tisch Center for Women\'s Health.</p>\r\n<p>\"One of the challenges in taking care of patients is getting them to start a program and get them to continue it, whether it\'s getting them to exercise, cut down on their sugar intake or take their medicine,\" she said.</p>\r\n<p>Doctors may not be properly explaining the role of these drugs in their health, and the necessity of taking them as prescribed, Goldberg and Herttua said.</p>\r\n<p>\"People need to understand the connection between taking those medicines and preventing a heart attack or stroke,\" Goldberg said. \"Face-to-face time being limited in the doctor\'s office, that is kind of getting lost in the visit.\"</p>\r\n<p>Patients also might be struggling to keep up with all of the medications they need to take in a day. \"The more medication recommended, the less likely a patient is to remember to take them,\" Herttua said.</p>\r\n<p>Drug costs also might play a role.</p>\r\n<p>\"Generics aren\'t as cheap anymore. There are rising prices for generics,\" Goldberg said. \"Sometimes instead of not taking the pill at all, a patient may cut the dose. It\'s important not to do that, because you want to make sure you have the most effective dose.\"</p>\r\n<p>Finally, people might simply burn out, throwing up their hands in despair at all the steps they must take to maintain their health.</p>\r\n<p>\"It\'s a drag,\" Goldberg said. \"People don\'t want to feel like a patient. They want to feel like themselves.\"</p>\r\n<p>New technologies might help people stay on top of their medications, Herttua said. For example, daily text messages could remind patients to take their statins and blood pressure pills.</p>\r\n<p>Medical science also could help by combining different medications into a single \"polypill,\" cutting down on the number of prescriptions a patient has to manage, Herttua said.</p>\r\n<p>Doctors also can help patients by emphasizing the importance of these medications to their brain health, said Dr. Gayatri Devi, a neurologist and memory loss specialist at Lenox Hill Hospital in New York City.</p>\r\n<p>\"The best way to improve compliance in chronic illness is through education about the benefits of doing so,\" Devi said. \"People often ask me how to keep their brains functional as they age. I tell them one of the most effective things they can do is promote cardiovascular health.\"</p>\r\n<p>How?</p>\r\n<p>\"By exercising, following a good Mediterranean diet and adhering to an appropriate medication regimen necessary to control their diabetes, hypertension and high cholesterol, if they have these conditions,\" Devi said.</p>', '2016-03-31-Skipping-Meds-Greatly-Ups-Heart-Patients-Risk-of-Stroke', 'uploads/blogs/blog_56fd2157db541.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-04-10 03:09:44', '0');
INSERT INTO `tbl_blogs` VALUES ('37', '1', 'Health risks of obesity', 'Health risks of obesity', 'Health risks of obesity', 'Health risks of obesity', '<p><strong><u>Health risks of obesity</u></strong></p>\r\n<p>Obesity is a medical condition in which a high amount of body fat increases the chance of developing medical problems.</p>\r\n<p>People with obesity have a higher chance of developing these health problems:</p>\r\n<ul>\r\n<li>High blood glucose (sugar) or diabetes.</li>\r\n<li>High blood pressure (hypertension).</li>\r\n<li>High blood cholesterol and triglycerides (dyslipidemia or high blood fats).</li>\r\n<li>Heart attacks due to coronary heart disease, heart failure, and stroke.</li>\r\n<li>Bone and joint problems, more weight puts pressure on the bones and joints. This can lead to osteoarthritis, a disease that causes joint pain and stiffness.</li>\r\n<li>Stopping breathing during sleep (sleep apnea). This can cause daytime fatigue or sleepiness, poor attention, and problems at work.</li>\r\n<li>Gallstones and liver problems.</li>\r\n<li>Some cancers</li>\r\n</ul>\r\n<p>Three things can be used to determine if a person\'s body fat gives them a higher chance of developing obesity-related diseases:</p>\r\n<ul>\r\n<li>Body mass index (BMI)</li>\r\n<li>Waist size</li>\r\n<li>Other risk factors the person has (a risk factor is anything that increases your chance of getting a disease.)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Body Mass Index</strong></p>\r\n<p>Body mass index (BMI) is calculated using height and weight. It is used to estimate body fat.</p>\r\n<p>Starting at 25.0, the higher your BMI, the greater is your risk of developing obesity-related health problems. These ranges of BMI are used to describe levels of risk:</p>\r\n<ul>\r\n<li>Overweight (not obese), if BMI is 25.0 to 29.9</li>\r\n<li>Class 1 (low-risk) obesity, if BMI is 30.0 to 34.9</li>\r\n<li>Class 2 (moderate-risk) obesity, if BMI is 35.0 to 39.9</li>\r\n<li>Class 3 (high-risk) obesity, if BMI is equal to or greater than 40.0</li>\r\n</ul>\r\n<p><strong>Waist Size</strong></p>\r\n<p>Women with a waist size greater than 35 inches and men with a waist size greater than 40 inches have an increased risk of heart disease and type 2 diabetes. People with \"apple-shaped\" bodies (waist is bigger than the hips) also have an increased risk of these conditions.</p>\r\n<p><strong>Risk Factors</strong></p>\r\n<p>Having a risk factor does not mean that you will get the disease. But it does increase the chance that you will. Some risk factors, like age, race, or family history cannot be changed.</p>\r\n<p>The more risk factors you have, the more likely it is that you will develop the disease or health problem.</p>\r\n<p>Your risk of developing health problems such as heart disease, stroke, and kidney problems increases if you are obese and have these risk factors:</p>\r\n<ul>\r\n<li>High blood pressure (hypertension)</li>\r\n<li>High blood cholesterol or triglycerides</li>\r\n<li>High blood glucose (sugar), a sign of type 2 diabetes</li>\r\n</ul>\r\n<p>These other risk factors for heart disease and stroke are not caused by obesity:</p>\r\n<ul>\r\n<li>Having a family member under the age of 50 with heart disease</li>\r\n<li>Being physically inactive or having a sedentary lifestyle</li>\r\n<li>Smoking or using tobacco products of any kind</li>\r\n</ul>\r\n<p><strong>Summing it up</strong></p>\r\n<p>You can control many of these risk factors by changing your lifestyle. If you have obesity, your doctor can help you begin a weight-loss program. A starting goal of losing 5 to 10% of your current weight will reduce your risk of developing obesity-related diseases.</p>', '<p><strong><u>Health risks of obesity</u></strong></p>\r\n<p>Obesity is a medical condition in which a high amount of body fat increases the chance of developing medical problems.</p>\r\n<p>People with obesity have a higher chance of developing these health problems:</p>\r\n<ul>\r\n<li>High blood glucose (sugar) or diabetes.</li>\r\n<li>High blood pressure (hypertension).</li>\r\n<li>High blood cholesterol and triglycerides (dyslipidemia or high blood fats).</li>\r\n<li>Heart attacks due to coronary heart disease, heart failure, and stroke.</li>\r\n<li>Bone and joint problems, more weight puts pressure on the bones and joints. This can lead to osteoarthritis, a disease that causes joint pain and stiffness.</li>\r\n<li>Stopping breathing during sleep (sleep apnea). This can cause daytime fatigue or sleepiness, poor attention, and problems at work.</li>\r\n<li>Gallstones and liver problems.</li>\r\n<li>Some cancers</li>\r\n</ul>\r\n<p>Three things can be used to determine if a person\'s body fat gives them a higher chance of developing obesity-related diseases:</p>\r\n<ul>\r\n<li>Body mass index (BMI)</li>\r\n<li>Waist size</li>\r\n<li>Other risk factors the person has (a risk factor is anything that increases your chance of getting a disease.)</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Body Mass Index</strong></p>\r\n<p>Body mass index (BMI) is calculated using height and weight. It is used to estimate body fat.</p>\r\n<p>Starting at 25.0, the higher your BMI, the greater is your risk of developing obesity-related health problems. These ranges of BMI are used to describe levels of risk:</p>\r\n<ul>\r\n<li>Overweight (not obese), if BMI is 25.0 to 29.9</li>\r\n<li>Class 1 (low-risk) obesity, if BMI is 30.0 to 34.9</li>\r\n<li>Class 2 (moderate-risk) obesity, if BMI is 35.0 to 39.9</li>\r\n<li>Class 3 (high-risk) obesity, if BMI is equal to or greater than 40.0</li>\r\n</ul>\r\n<p><strong>Waist Size</strong></p>\r\n<p>Women with a waist size greater than 35 inches and men with a waist size greater than 40 inches have an increased risk of heart disease and type 2 diabetes. People with \"apple-shaped\" bodies (waist is bigger than the hips) also have an increased risk of these conditions.</p>\r\n<p><strong>Risk Factors</strong></p>\r\n<p>Having a risk factor does not mean that you will get the disease. But it does increase the chance that you will. Some risk factors, like age, race, or family history cannot be changed.</p>\r\n<p>The more risk factors you have, the more likely it is that you will develop the disease or health problem.</p>\r\n<p>Your risk of developing health problems such as heart disease, stroke, and kidney problems increases if you are obese and have these risk factors:</p>\r\n<ul>\r\n<li>High blood pressure (hypertension)</li>\r\n<li>High blood cholesterol or triglycerides</li>\r\n<li>High blood glucose (sugar), a sign of type 2 diabetes</li>\r\n</ul>\r\n<p>These other risk factors for heart disease and stroke are not caused by obesity:</p>\r\n<ul>\r\n<li>Having a family member under the age of 50 with heart disease</li>\r\n<li>Being physically inactive or having a sedentary lifestyle</li>\r\n<li>Smoking or using tobacco products of any kind</li>\r\n</ul>\r\n<p><strong>Summing it up</strong></p>\r\n<p>You can control many of these risk factors by changing your lifestyle. If you have obesity, your doctor can help you begin a weight-loss program. A starting goal of losing 5 to 10% of your current weight will reduce your risk of developing obesity-related diseases.</p>', '2016-03-31-Health-risks-of-obesity', 'uploads/blogs/blog_56fd219e777cf.jpg', '0', '1', '0', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:19', '0');
INSERT INTO `tbl_blogs` VALUES ('38', '1', 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', 'Brain Stimulation May Help People ...', '<p><strong>Brain Stimulation May Help People With Anorexia</strong></p>\r\n<p><strong>Depression treatment cut urge to restrict food, study says</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Friday, March 25, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>FRIDAY, March 25, 2016 (HealthDay News) -- Brain stimulation may ease major symptoms of the eating disorder anorexia nervosa, a typically hard-to-treat condition, a new study suggests.</p>\r\n<p>British researchers evaluated anorexia patients before and after they underwent repetitive transcranial stimulation (rTMS), a treatment approved for depression.</p>\r\n<p>\"With rTMS we targeted ... an area of the brain thought to be involved in some of the self-regulation difficulties associated with anorexia,\" study first author Jessica McClelland, a postdoctoral researcher at King\'s College London, said in a school news release.</p>\r\n<p>The treatment delivers magnetic pulses to specific areas of the brain. It feels like a gentle tapping sensation on the side of the head, McClelland explained. The treatment alters the activity of the nerve cells in the brain, she said.</p>\r\n<p>\"We found that one session of [brain stimulation] reduced the urge to restrict food intake, levels of feeling full and levels of feeling fat, as well as encouraging more prudent decision-making. Taken together, these findings suggest that brain stimulation may reduce symptoms of anorexia by improving cognitive control over compulsive features of the disorder,\" McClelland said.</p>\r\n<p>The study was published March 23 in the journal&nbsp;<em>PLoS One</em>.</p>\r\n<p>\"Anorexia nervosa is thought to affect up to 4 percent of women in their lifetime. With increasing illness duration, anorexia becomes entrenched in the brain and increasingly difficult to treat. Our preliminary findings support the potential of novel brain-directed treatments for anorexia, which are desperately needed,\" study senior author Ulrike Schmidt, a professor from Kings College London, said in the news release.</p>\r\n<p>Because of the promising findings, the researchers are testing brain stimulation to see if it offers longer-term benefits for people with anorexia nervosa, Schmidt added.</p>\r\n<p>Up to 20 percent of anorexia patients die prematurely from the condition, the researchers said.</p>', '<p><strong>Brain Stimulation May Help People With Anorexia</strong></p>\r\n<p><strong>Depression treatment cut urge to restrict food, study says</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Friday, March 25, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>FRIDAY, March 25, 2016 (HealthDay News) -- Brain stimulation may ease major symptoms of the eating disorder anorexia nervosa, a typically hard-to-treat condition, a new study suggests.</p>\r\n<p>British researchers evaluated anorexia patients before and after they underwent repetitive transcranial stimulation (rTMS), a treatment approved for depression.</p>\r\n<p>\"With rTMS we targeted ... an area of the brain thought to be involved in some of the self-regulation difficulties associated with anorexia,\" study first author Jessica McClelland, a postdoctoral researcher at King\'s College London, said in a school news release.</p>\r\n<p>The treatment delivers magnetic pulses to specific areas of the brain. It feels like a gentle tapping sensation on the side of the head, McClelland explained. The treatment alters the activity of the nerve cells in the brain, she said.</p>\r\n<p>\"We found that one session of [brain stimulation] reduced the urge to restrict food intake, levels of feeling full and levels of feeling fat, as well as encouraging more prudent decision-making. Taken together, these findings suggest that brain stimulation may reduce symptoms of anorexia by improving cognitive control over compulsive features of the disorder,\" McClelland said.</p>\r\n<p>The study was published March 23 in the journal&nbsp;<em>PLoS One</em>.</p>\r\n<p>\"Anorexia nervosa is thought to affect up to 4 percent of women in their lifetime. With increasing illness duration, anorexia becomes entrenched in the brain and increasingly difficult to treat. Our preliminary findings support the potential of novel brain-directed treatments for anorexia, which are desperately needed,\" study senior author Ulrike Schmidt, a professor from Kings College London, said in the news release.</p>\r\n<p>Because of the promising findings, the researchers are testing brain stimulation to see if it offers longer-term benefits for people with anorexia nervosa, Schmidt added.</p>\r\n<p>Up to 20 percent of anorexia patients die prematurely from the condition, the researchers said.</p>', 'brain-stimulation-may-help-people', 'uploads/blogs/blog_56fd21f217be0.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-06-01 08:48:06', '0');
INSERT INTO `tbl_blogs` VALUES ('39', '1', '-x,\'@$%^&8!-+,\"\'Daytime Sleepiness Long Naps Linked to Heart Risks', 'Daytime Sleepiness Long Naps Linked to Heart Risks', 'Daytime Sleepiness, Long Naps Linked to Heart Risks', 'Daytime Sleepiness, Long Naps Linked to Heart Risks', '<p><strong>Daytime Sleepiness, Long Naps Linked to Heart Risks: Study</strong></p>\r\n<p><strong>People who nap more than 1 hour a day also more likely to develop type 2 diabetes, researchers say</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Thursday, March 24, 2016</p>\r\n<p>THURSDAY, March 24, 2016 (HealthDay News) -- While getting enough sleep is key to health, a new study suggests that long daytime naps may not be doing your heart any favors.</p>\r\n<p>The researchers found that long naps and excessive daytime sleepiness were associated with an increased risk for a combination of health problems that are collectively known as metabolic syndrome. And that can boost the risk of heart disease and diabetes.</p>\r\n<p>Metabolic syndrome includes conditions such as high blood pressure, high cholesterol, high blood sugar and excess fat around the waist.</p>\r\n<p>The investigators analyzed the findings of 21 studies that included a total of more than 307,000 people. The research showed that people who napped for less than 40 minutes were not at increased risk for metabolic syndrome. In fact, those who napped less than 30 minutes had a slight decrease in risk.</p>\r\n<p>But there was a sharp rise in risk among those who napped for more than 40 minutes, the study authors said. For example, napping for more than 90 minutes appeared to increase the risk of metabolic syndrome by as much as 50 percent, as did excessive daytime sleepiness.</p>\r\n<p>The review also found that napping for more than an hour or being overly tired during the day were both linked with a 50 percent higher risk for type 2 diabetes.</p>\r\n<p>However, the study only found an association between these factors, and did not prove that excessive sleepiness and long naps actually cause metabolic syndrome or diabetes.</p>\r\n<p>The findings are to be presented April 3 at an American College of Cardiology (ACC) meeting in Chicago. Research presented at meetings is typically considered preliminary until published in a peer-reviewed journal.</p>\r\n<p>\"Taking naps is widely prevalent around the world,\" study author Dr. Tomohide Yamada, a diabetologist at the University of Tokyo, said in an ACC news release. \"So, clarifying the relationship between naps and metabolic disease might offer a new strategy of treatment, especially as metabolic disease has been increasing steadily all over the world,\" he added.</p>\r\n<p>About one-third of American adults do not get enough sleep, according to the U.S. Centers for Disease Control and Prevention. The National Sleep Foundation recommends naps of 20 to 30 minutes to boost alertness.</p>\r\n<p>\"Sleep is an important component of our healthy lifestyle, as well as diet and exercise,\" Yamada said. \"Short naps might have a beneficial effect on our health, but we don\'t yet know the strength of that effect or the mechanism by which it works.\"</p>', '<p><strong>Daytime Sleepiness, Long Naps Linked to Heart Risks: Study</strong></p>\r\n<p><strong>People who nap more than 1 hour a day also more likely to develop type 2 diabetes, researchers say</strong></p>\r\n<p>By Robert Preidt</p>\r\n<p>Thursday, March 24, 2016</p>\r\n<p>&nbsp;</p>\r\n<p>THURSDAY, March 24, 2016 (HealthDay News) -- While getting enough sleep is key to health, a new study suggests that long daytime naps may not be doing your heart any favors.</p>\r\n<p>The researchers found that long naps and excessive daytime sleepiness were associated with an increased risk for a combination of health problems that are collectively known as metabolic syndrome. And that can boost the risk of heart disease and diabetes.</p>\r\n<p>Metabolic syndrome includes conditions such as high blood pressure, high cholesterol, high blood sugar and excess fat around the waist.</p>\r\n<p>The investigators analyzed the findings of 21 studies that included a total of more than 307,000 people. The research showed that people who napped for less than 40 minutes were not at increased risk for metabolic syndrome. In fact, those who napped less than 30 minutes had a slight decrease in risk.</p>\r\n<p>But there was a sharp rise in risk among those who napped for more than 40 minutes, the study authors said. For example, napping for more than 90 minutes appeared to increase the risk of metabolic syndrome by as much as 50 percent, as did excessive daytime sleepiness.</p>\r\n<p>The review also found that napping for more than an hour or being overly tired during the day were both linked with a 50 percent higher risk for type 2 diabetes.</p>\r\n<p>However, the study only found an association between these factors, and did not prove that excessive sleepiness and long naps actually cause metabolic syndrome or diabetes.</p>\r\n<p>The findings are to be presented April 3 at an American College of Cardiology (ACC) meeting in Chicago. Research presented at meetings is typically considered preliminary until published in a peer-reviewed journal.</p>\r\n<p>\"Taking naps is widely prevalent around the world,\" study author Dr. Tomohide Yamada, a diabetologist at the University of Tokyo, said in an ACC news release. \"So, clarifying the relationship between naps and metabolic disease might offer a new strategy of treatment, especially as metabolic disease has been increasing steadily all over the world,\" he added.</p>\r\n<p>About one-third of American adults do not get enough sleep, according to the U.S. Centers for Disease Control and Prevention. The National Sleep Foundation recommends naps of 20 to 30 minutes to boost alertness.</p>\r\n<p>\"Sleep is an important component of our healthy lifestyle, as well as diet and exercise,\" Yamada said. \"Short naps might have a beneficial effect on our health, but we don\'t yet know the strength of that effect or the mechanism by which it works.\"</p>', 'x-8-daytime-sleepiness-long-naps-linked-to-heart-risks', 'uploads/blogs/blog_56fe3574888ba.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:32', '0');
INSERT INTO `tbl_blogs` VALUES ('40', '1', 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', 'Habits That May Cause Constipation', '<p>Habits That May Cause Constipation</p>\r\n<p>By Brenda Conaway<br /> WebMD Feature</p>\r\n<p>Reviewed by&nbsp;<a href=\"http://www.webmd.com/michael-w-smith\">Michael W. Smith, MD</a></p>\r\n<p>If you\'ve ever been constipated, you know how uncomfortable it can be. Although laxatives can provide a short-term fix, making certain lifestyle changes can help solve the problem for good. Below, medical experts weigh in on seven habits you should avoid to improve your digestive health.</p>\r\n<ol>\r\n<li><strong> Inactivity and Constipation</strong></li>\r\n</ol>\r\n<p>Lack of exercise not only causes weight gain and other health problems, it can also affect digestion. \"Sedentary lifestyle is the thing that I would worry most about,\" says G. Richard Locke III, MD, gastroenterologist with the Mayo Clinic in Rochester, MN. No one knows exactly why, he says, but being inactive can cause constipation.</p>\r\n<p><strong>What you can do:&nbsp;</strong>\"The best thing you can do to move your bowels is wake up, eat a real meal, and do some low-level activity,\" Locke tells WebMD. It doesn\'t have to be rigorous exercise, he says. Moving your body every day will improve your digestive health.</p>\r\n<ol start=\"2\">\r\n<li><strong> A Low-Fiber Diet Slows Digestion</strong></li>\r\n</ol>\r\n<p>Fiber is the material in plant foods that your body can\'t digest, and it\'s important for good digestion. \"It goes through you and gives you something to form a stool around,\" says Locke. When you don\'t have enough fiber in your diet, stools can become small, dry, and hard.</p>\r\n<p><strong>What you can do:</strong>&nbsp;Eating more fiber adds bulk to stools, making them softer and easier to pass. To get more fiber in your diet, eat more fruits and vegetables, legumes and beans, and whole grains. A simple rule of thumb is to fill half your plate with fruits and vegetables at each meal. Also, always choose whole-grain breads and cereals and include one or two meals a week with beans or legumes. Gradually adding fiber to your diet (and be sure to drink plenty of water) will help prevent bloating and gas. Consider fiber supplements if the methods mentioned above don&rsquo;t seem to help.</p>\r\n<ol start=\"3\">\r\n<li><strong> Not Drinking Enough Fluids Causes Constipation</strong></li>\r\n</ol>\r\n<p>When you\'re dehydrated, your body has less fluid available to keep stools soft. You can become dehydrated and not know it -- especially in hot weather.</p>\r\n<p>\"People don\'t really understand the symptoms of dehydration,\" says Faten Aberra, MD, MSCE, assistant professor of medicine at the University of Pennsylvania Health System. \"It can be as simple as fatigue -- not necessarily this dying thirst to have water. It can be very subtle.\"</p>\r\n<p><strong>What you can do:</strong>&nbsp;You don\'t necessarily have to drink 6 glasses of water a day to prevent constipation, Aberra says. The key is to drink enough so you don\'t feel thirsty. You can also tell you\'re getting enough fluids if your urine is clear or light yellow. And it doesn\'t have to be water, juice is fine as long as you keep an eye on how many calories you take in, she says. Aberra also suggests limiting alcohol and caffeine because they can cause you to lose fluid through urination.</p>\r\n<ol start=\"4\">\r\n<li><strong> Junk Food and Your Digestive Health</strong></li>\r\n</ol>\r\n<p>When you eat junk food, you spend your calorie capital on foods that are low in fiber and nutrients and high in fat and sugar. And all that fat and too little fiber can cause digestive woes. \"We know that fat tends to slow the gut down, because the gut is trying its best to get all the calories it can from fat,\" says Locke.</p>\r\n<p><strong>What you can do:&nbsp;</strong>You don\'t have to give up favorite foods -- the trick is to come up with healthy substitutes. Instead of ordering pizza out, make your own with a store-bought whole-wheat crust topped by low-fat cheese and plenty of veggies. Replace the fast-food burger and fries with roasted sweet potato fries and turkey or black bean burgers on a whole-wheat bun.</p>\r\n<ol start=\"5\">\r\n<li><strong> OTC Supplements: A Surprising Cause of Constipation</strong></li>\r\n</ol>\r\n<p>Did you know that OTC supplements can affect your digestive health? Iron and calcium are the top two culprits according to Aberra.</p>\r\n<p><strong>What you can do:&nbsp;</strong>Eating balanced, healthy meals helps you get all the vitamins and minerals you need from food. However, that may not be enough for people with anemia or for women looking to prevent bone loss. To counter the constipating effect of iron or calcium supplements, Aberra suggests a workaround. Try adding things to your diet that make you more prone to having bowel movements, such as prune juice and high-fiber foods.</p>\r\n<ol start=\"6\">\r\n<li><strong> Overusing Laxatives Can Cause Hard-to-Treat Constipation</strong></li>\r\n</ol>\r\n<p>Overusing stimulant laxatives can lead to dependence, says Ira Hanan, MD, associate professor of medicine at the University of Chicago Medical Center. Using these laxatives every day can cause the colon to lose its ability to move things through, he says. Overusing enemas can have the same effect, so avoid using stimulant laxatives and enemas chronically. \"They will eventually cause complete dependency and the constipation can be very hard to treat,\" he says.</p>\r\n<p><strong>What you can do:&nbsp;</strong>First of all, consider whether you really need laxatives. \"A lot of people think that the daily bowel movement is the norm. We would consider anything from three bowel movements a week to three a day to be normal,\" Locke tells WebMD. If diet and exercise changes haven\'t helped, talk with your doctor about using fiber supplements. The problem with fiber for some people is that it may cause bloating and gas. Laxatives containing polyethylene glycol can also be used safely on a more regular basis, he says.</p>\r\n<ol start=\"7\">\r\n<li><strong> \"Holding It\" Is Bad for Your Digestion</strong><br /> Feel shy about using the office bathroom? Not a fan of public restrooms? You\'re not alone, according to Ellen Stein, MD. \"A lot of people would prefer to go at home,\" says Stein, an assistant professor of medicine at Johns Hopkins Hospital in Baltimore, MD. Unfortunately, ignoring the urge is bad for your digestive health. \"Holding or keeping things longer than you\'re supposed to can have a negative effect. The natural signals that you hear to tell you when you have to go can be extinguished,\" she says.</li>\r\n</ol>\r\n<p><strong>What you can do:</strong>&nbsp;Stein advises trying to find a place and time to have a bowel movement. For example, use the bathroom down the hall, rather than the one next to the boss\'s office.</p>', '<p>Habits That May Cause Constipation</p>\r\n<p>By Brenda Conaway<br /> WebMD Feature</p>\r\n<p>Reviewed by&nbsp;<a href=\"http://www.webmd.com/michael-w-smith\">Michael W. Smith, MD</a></p>\r\n<p>If you\'ve ever been constipated, you know how uncomfortable it can be. Although laxatives can provide a short-term fix, making certain lifestyle changes can help solve the problem for good. Below, medical experts weigh in on seven habits you should avoid to improve your digestive health.</p>\r\n<ol>\r\n<li><strong> Inactivity and Constipation</strong></li>\r\n</ol>\r\n<p>Lack of exercise not only causes weight gain and other health problems, it can also affect digestion. \"Sedentary lifestyle is the thing that I would worry most about,\" says G. Richard Locke III, MD, gastroenterologist with the Mayo Clinic in Rochester, MN. No one knows exactly why, he says, but being inactive can cause constipation.</p>\r\n<p><strong>What you can do:&nbsp;</strong>\"The best thing you can do to move your bowels is wake up, eat a real meal, and do some low-level activity,\" Locke tells WebMD. It doesn\'t have to be rigorous exercise, he says. Moving your body every day will improve your digestive health.</p>\r\n<ol start=\"2\">\r\n<li><strong> A Low-Fiber Diet Slows Digestion</strong></li>\r\n</ol>\r\n<p>Fiber is the material in plant foods that your body can\'t digest, and it\'s important for good digestion. \"It goes through you and gives you something to form a stool around,\" says Locke. When you don\'t have enough fiber in your diet, stools can become small, dry, and hard.</p>\r\n<p><strong>What you can do:</strong>&nbsp;Eating more fiber adds bulk to stools, making them softer and easier to pass. To get more fiber in your diet, eat more fruits and vegetables, legumes and beans, and whole grains. A simple rule of thumb is to fill half your plate with fruits and vegetables at each meal. Also, always choose whole-grain breads and cereals and include one or two meals a week with beans or legumes. Gradually adding fiber to your diet (and be sure to drink plenty of water) will help prevent bloating and gas. Consider fiber supplements if the methods mentioned above don&rsquo;t seem to help.</p>\r\n<ol start=\"3\">\r\n<li><strong> Not Drinking Enough Fluids Causes Constipation</strong></li>\r\n</ol>\r\n<p>When you\'re dehydrated, your body has less fluid available to keep stools soft. You can become dehydrated and not know it -- especially in hot weather.</p>\r\n<p>\"People don\'t really understand the symptoms of dehydration,\" says Faten Aberra, MD, MSCE, assistant professor of medicine at the University of Pennsylvania Health System. \"It can be as simple as fatigue -- not necessarily this dying thirst to have water. It can be very subtle.\"</p>\r\n<p><strong>What you can do:</strong>&nbsp;You don\'t necessarily have to drink 6 glasses of water a day to prevent constipation, Aberra says. The key is to drink enough so you don\'t feel thirsty. You can also tell you\'re getting enough fluids if your urine is clear or light yellow. And it doesn\'t have to be water, juice is fine as long as you keep an eye on how many calories you take in, she says. Aberra also suggests limiting alcohol and caffeine because they can cause you to lose fluid through urination.</p>\r\n<ol start=\"4\">\r\n<li><strong> Junk Food and Your Digestive Health</strong></li>\r\n</ol>\r\n<p>When you eat junk food, you spend your calorie capital on foods that are low in fiber and nutrients and high in fat and sugar. And all that fat and too little fiber can cause digestive woes. \"We know that fat tends to slow the gut down, because the gut is trying its best to get all the calories it can from fat,\" says Locke.</p>\r\n<p><strong>What you can do:&nbsp;</strong>You don\'t have to give up favorite foods -- the trick is to come up with healthy substitutes. Instead of ordering pizza out, make your own with a store-bought whole-wheat crust topped by low-fat cheese and plenty of veggies. Replace the fast-food burger and fries with roasted sweet potato fries and turkey or black bean burgers on a whole-wheat bun.</p>\r\n<ol start=\"5\">\r\n<li><strong> OTC Supplements: A Surprising Cause of Constipation</strong></li>\r\n</ol>\r\n<p>Did you know that OTC supplements can affect your digestive health? Iron and calcium are the top two culprits according to Aberra.</p>\r\n<p><strong>What you can do:&nbsp;</strong>Eating balanced, healthy meals helps you get all the vitamins and minerals you need from food. However, that may not be enough for people with anemia or for women looking to prevent bone loss. To counter the constipating effect of iron or calcium supplements, Aberra suggests a workaround. Try adding things to your diet that make you more prone to having bowel movements, such as prune juice and high-fiber foods.</p>\r\n<ol start=\"6\">\r\n<li><strong> Overusing Laxatives Can Cause Hard-to-Treat Constipation</strong></li>\r\n</ol>\r\n<p>Overusing stimulant laxatives can lead to dependence, says Ira Hanan, MD, associate professor of medicine at the University of Chicago Medical Center. Using these laxatives every day can cause the colon to lose its ability to move things through, he says. Overusing enemas can have the same effect, so avoid using stimulant laxatives and enemas chronically. \"They will eventually cause complete dependency and the constipation can be very hard to treat,\" he says.</p>\r\n<p><strong>What you can do:&nbsp;</strong>First of all, consider whether you really need laxatives. \"A lot of people think that the daily bowel movement is the norm. We would consider anything from three bowel movements a week to three a day to be normal,\" Locke tells WebMD. If diet and exercise changes haven\'t helped, talk with your doctor about using fiber supplements. The problem with fiber for some people is that it may cause bloating and gas. Laxatives containing polyethylene glycol can also be used safely on a more regular basis, he says.</p>\r\n<ol start=\"7\">\r\n<li><strong> \"Holding It\" Is Bad for Your Digestion</strong><br /> Feel shy about using the office bathroom? Not a fan of public restrooms? You\'re not alone, according to Ellen Stein, MD. \"A lot of people would prefer to go at home,\" says Stein, an assistant professor of medicine at Johns Hopkins Hospital in Baltimore, MD. Unfortunately, ignoring the urge is bad for your digestive health. \"Holding or keeping things longer than you\'re supposed to can have a negative effect. The natural signals that you hear to tell you when you have to go can be extinguished,\" she says.</li>\r\n</ol>\r\n<p><strong>What you can do:</strong>&nbsp;Stein advises trying to find a place and time to have a bowel movement. For example, use the bathroom down the hall, rather than the one next to the boss\'s office.</p>', '2016-04-01-Habits-That-May-Cause-Constipation', 'uploads/blogs/blog_56fe35d15849f.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:38', '0');
INSERT INTO `tbl_blogs` VALUES ('41', '1', 'Hormones and Oral Health', 'Hormones and Oral Health', 'Hormones and Oral Health', 'Hormones and Oral Health', '<p style=\"text-align: justify;\">Hormones and Oral Health</p>\r\n<p style=\"text-align: justify;\">In this article</p>\r\n<p style=\"text-align: justify;\">When Are Women More at Risk for Oral Health Problems?<br />Tips to Prevent Oral Health Problems<br />Women may be more susceptible to oral health problems because of the unique hormonal changes they experience. Hormones affect not only the blood supply to the gum tissue but also the body\'s response to the toxins (poisons) that result from plaque buildup. As a result of these changes, women are more prone to the development of periodontal disease at certain stages of their lives, as well as to other oral health problems.</p>\r\n<p style=\"text-align: justify;\">When Are Women More at Risk for Oral Health Problems?</p>\r\n<p style=\"text-align: justify;\">There are five situations in a women\'s life during which hormone fluctuations make them more susceptible to oral health problems &ndash; during puberty, at certain points in the monthly menstrual cycle, when using birth control pills, during pregnancy, and at menopause.</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Puberty</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">The surge in production of the female hormones estrogen and progesterone that occurs during puberty can increase the blood flow to the gums and change the way gum tissue reacts to irritants in plaque, causing the gum tissue to become red, tender, swollen, and more likely to bleed during brushing and flossing.</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">The monthly menstrual cycle</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Due to the hormonal changes (particularly the increase in progesterone) that occur during the menstrual cycle, some women experience oral changes that can include bright red swollen gums, swollen salivary glands, development of canker sores, or bleeding gums. Menstruation gingivitis usually occurs a day or two before the start of the period and clears up shortly after the period has started.</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Use of birth control pills</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Women who take certain birth control pills that contain progesterone, which increases the level of that hormone in the body, may experience inflamed gum tissues due to the body\'s exaggerated reaction to the toxins produced from plaque. Tell your dentist if you are taking an oral contraceptive.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Pregnancy</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Hormone levels change considerably during pregnancy. An increased level of progesterone, in particular, can cause gum disease any time during the second to eighth month of pregnancy &ndash; a condition called pregnancy gingivitis. Your dentist may recommend more frequent professional cleanings during your second or early third trimester to help reduce the chance of developing gingivitis. Tell your dentist if you are pregnant.</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">Menopause</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Numerous oral changes can occur as a consequence of advanced age, the medications taken to combat diseases, and hormonal changes due to menopause. These oral changes can include altered taste, burning sensations in the mouth, greater sensitivity to hot and cold foods and beverages, and decreased salivary flow that can result in dry mouth.</p>\r\n<p style=\"text-align: justify;\">Dry mouth, in turn, can result in the development of tooth decay and gum disease, because saliva is not available to moisten and cleanse the mouth by neutralizing acids produced by plaque. Dry mouth can also result from many prescription and over-the-counter medications that are commonly prescribed to older adults.</p>\r\n<p style=\"text-align: justify;\">The decline in estrogen that occurs with menopause also puts women at greater risk for loss of bone density. Loss of bone, specifically in the jaw, can lead to tooth loss. Receding gums can be a sign of bone loss in the jawbone. Receding gums also expose more of the tooth surface to potential tooth decay.</p>\r\n<p style=\"text-align: justify;\">Tips to Prevent Oral Health Problems</p>\r\n<p style=\"text-align: justify;\">Some tips for preventing oral health problems like gum disease and tooth decay include:</p>\r\n<p style=\"text-align: justify;\">Brush your teeth at least twice a day with a fluoride-containing toothpaste. Floss and rinse with an antiseptic mouthwash at least once a day.<br />Visit your dentist twice a year for a professional oral examination and cleaning.<br />Eat a well-balanced.<br />Avoid sugary or starchy snacks.<br />Ask your dentist if he or she thinks you should use an antimicrobial mouth<br />If you have dry mouth, ask your dentist about treatments for this condition, such as artificial saliva. Biotene is one such product and is available over the counter.</p>', '<p>Hormones and Oral Health</p>\r\n<p>In this article</p>\r\n<ul>\r\n<li><a href=\"http://www.webmd.com/oral-health/hormones-oral-health?ecd=wnl_wmh_032616&amp;ctr=wnl-wmh-032616_nsl-promo-4_title&amp;mb=e%2fESIa2cJe1185wCmW6qthXFE73IOX1cf%402QjKFqvQM%3d#1\">When Are Women More at Risk for Oral Health Problems?</a></li>\r\n<li><a href=\"http://www.webmd.com/oral-health/hormones-oral-health?page=2#2\">Tips to Prevent Oral Health Problems</a></li>\r\n</ul>\r\n<p>Women may be more susceptible to&nbsp;<a href=\"http://www.webmd.com/oral-health/default.htm\">oral health</a>&nbsp;problems because of the unique hormonal changes they experience. Hormones affect not only the&nbsp;<a href=\"http://www.webmd.com/heart/anatomy-picture-of-blood\">blood</a>&nbsp;supply to the gum tissue but also the body\'s response to the toxins (poisons) that result from&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/plaque-and-your-teeth\">plaque</a>&nbsp;buildup. As a result of these changes, women are more prone to the development of&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease\">periodontal disease</a>&nbsp;at certain stages of their lives, as well as to other&nbsp;<a href=\"http://www.webmd.com/oral-health/ss/slideshow-tooth-problems\">oral health</a> problems.</p>\r\n<p>When Are Women More at Risk for Oral Health Problems?</p>\r\n<p>There are five situations in a women\'s life during which hormone fluctuations make them more susceptible to oral health problems &ndash; during puberty, at certain points in the monthly menstrual cycle, when using&nbsp;<a href=\"http://www.webmd.com/sex/birth-control/birth-control-pills\">birth control pills</a>, during&nbsp;<a href=\"http://www.webmd.com/baby/default.htm\">pregnancy</a>, and at&nbsp;<a href=\"http://www.webmd.com/menopause/default.htm\">menopause</a>.</p>\r\n<p><strong><em>Puberty</em></strong></p>\r\n<p>The surge in production of the female hormones&nbsp;<a href=\"http://www.webmd.com/women/guide/normal-testosterone-and-estrogen-levels-in-women\">estrogen</a>&nbsp;and <a href=\"http://www.webmd.com/vitamins-and-supplements/progesterone-uses-and-risks\">progesterone</a>&nbsp;that occurs during puberty can increase the&nbsp;<a href=\"http://www.webmd.com/a-to-z-guides/rm-quiz-blood-basics\">blood</a> flow to the gums and change the way gum tissue reacts to irritants in plaque, causing the gum tissue to become red, tender, swollen, and more likely to bleed during brushing and flossing.</p>\r\n<p><strong><em>The monthly menstrual cycle</em></strong></p>\r\n<p>Due to the hormonal changes (particularly the increase in progesterone) that occur during the menstrual cycle, some women experience oral changes that can include bright red swollen gums, <a href=\"http://www.webmd.com/pain-management/swollen-glands\">swollen salivary glands</a>, development of&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/canker-sores\">canker sores</a>, or&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/gum-problem-basics-sore-swollen-and-bleeding-gums\">bleeding gums</a>.&nbsp;<a href=\"http://www.webmd.com/women/tc/normal-menstrual-cycle-topic-overview\">Menstruation</a>&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease\">gingivitis</a>&nbsp;usually occurs a day or two before the start of the period and clears up shortly after the period has started.</p>\r\n<p><strong><em>Use of&nbsp;</em></strong><a href=\"http://www.webmd.com/sex/birth-control/ss/slideshow-birth-control-options\"><strong><em>birth control pills</em></strong></a><strong><em>&nbsp;</em></strong></p>\r\n<p>Women who take certain birth control pills that contain progesterone, which increases the level of that hormone in the body, may experience inflamed gum tissues due to the body\'s exaggerated reaction to the toxins produced from plaque. Tell your dentist if you are taking an oral contraceptive.</p>\r\n<p><strong><em>&nbsp;</em></strong></p>\r\n<p><strong><em>Pregnancy</em></strong></p>\r\n<p>Hormone levels change considerably during pregnancy. An increased level of progesterone, in particular, can cause&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/gingivitis-periodontal-disease\">gum disease</a>&nbsp;any time during the second to eighth month of pregnancy &ndash; a condition called pregnancy gingivitis. Your dentist may recommend more frequent professional cleanings during your second or early&nbsp;<a href=\"http://www.webmd.com/baby/guide/third-trimester-of-pregnancy\">third trimester</a>&nbsp;to help reduce the chance of developing gingivitis. Tell your dentist if you are pregnant.</p>\r\n<p><a href=\"http://www.webmd.com/menopause/ss/slideshow-menopause-overview\"><strong><em>Menopause</em></strong></a><strong><em>&nbsp;</em></strong></p>\r\n<p>Numerous oral changes can occur as a consequence of advanced age, the&nbsp;<a href=\"http://www.webmd.com/drugs/index-drugs.aspx\">medications</a>&nbsp;taken to combat diseases, and hormonal changes due to menopause. These oral changes can include altered taste, burning sensations in the&nbsp;<a href=\"http://www.webmd.com/oral-health/anatomy-of-the-mouth\">mouth</a>, greater sensitivity to hot and cold foods and beverages, and decreased salivary flow that can result in&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/dental-health-dry-mouth\">dry mouth</a>.</p>\r\n<p><a href=\"http://www.webmd.com/oral-health/ss/slideshow-dry-mouth\">Dry mouth</a>, in turn, can result in the development of&nbsp;<a href=\"http://www.webmd.com/oral-health/picture-of-the-teeth\">tooth</a>&nbsp;decay and&nbsp;<a href=\"http://www.webmd.com/oral-health/video/dangers-gum-disease\">gum disease</a>, because&nbsp;<a href=\"http://www.webmd.com/oral-health/what-is-saliva\">saliva</a>&nbsp;is not available to moisten and cleanse the&nbsp;<a href=\"http://www.webmd.com/oral-health/ss/slideshow-mouth-problems\">mouth</a>&nbsp;by neutralizing acids produced by plaque. Dry mouth can also result from many prescription and over-the-counter medications that are commonly prescribed to older adults.</p>\r\n<p>The decline in&nbsp;<a href=\"http://www.webmd.com/drugs/2/drug-6028/esterified+estrogens+oral/details\">estrogen</a>&nbsp;that occurs with menopause also puts women at greater risk for loss of bone density. Loss of bone, specifically in the jaw, can lead to&nbsp;<a href=\"http://www.webmd.com/oral-health/dental-care-smile-10/slideshow-pretty-teeth\">tooth</a>&nbsp;loss.&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/receding_gums_causes-treatments\">Receding gums</a>&nbsp;can be a sign of&nbsp;<a href=\"http://www.webmd.com/osteoporosis/guide/osteopenia-early-signs-of-bone-loss\">bone loss</a> in the jawbone. Receding gums also expose more of the&nbsp;<a href=\"http://www.webmd.com/oral-health/rm-quiz-what-do-you-know-about-your-teeth\">tooth</a> surface to potential&nbsp;<a href=\"http://www.webmd.com/oral-health/guide/tooth-decay-prevention\">tooth decay</a>.</p>\r\n<p>Tips to Prevent Oral Health Problems</p>\r\n<p>Some tips for preventing oral health problems like gum disease and tooth decay include:</p>\r\n<ul>\r\n<li>Brush your teeth at least twice a day with a fluoride-containing <a href=\"http://www.webmd.com/oral-health/guide/weighing-your-toothpaste-options\">toothpaste</a>. Floss and rinse with an antiseptic mouthwash at least once a day.</li>\r\n<li>Visit your dentist twice a year for a professional oral examination and cleaning.</li>\r\n<li>Eat a well-balanced.</li>\r\n<li>Avoid sugary or starchy snacks.</li>\r\n<li>Ask your dentist if he or she thinks you should use an antimicrobial <a href=\"http://www.webmd.com/oral-health/rm-quiz-mouth-myths\">mouth</a></li>\r\n<li>If you have dry mouth, ask your dentist about treatments for this condition, such as artificial saliva. Biotene is one such product and is available over the counter.</li>\r\n</ul>', 'hormones-and-oral-health', 'uploads/blogs/blog_56fe361b3f192.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-05-13 13:08:48', '0');
INSERT INTO `tbl_blogs` VALUES ('42', '1', 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', 'Prostate Cancer: The Basics', '<p>Prostate Cancer: The Basics</p>\r\n<p>Reviewed by&nbsp;<a href=\"http://www.webmd.com/stuart-bergman\">Stuart Bergman, MD</a>&nbsp;on February 05, 2016</p>\r\n<p>The&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-prostate\">prostate</a>&nbsp;is a muscular, walnut-sized gland that makes chemicals that affect or control what other cells or organs do. It&rsquo;s part of the&nbsp;<a href=\"http://www.webmd.com/sex-relationships/guide/male-reproductive-system\">male reproductive system</a>. Its main job is to make seminal fluid, the milky substance that transports&nbsp;<a href=\"http://www.webmd.com/infertility-and-reproduction/guide/sperm-and-semen-faq\">sperm</a>.</p>\r\n<p>The prostate wraps around part of your urethra, the tube that moves urine and semen out of your body.</p>\r\n<p>During an orgasm, muscles in your prostate contract to push semen through your urethra and out your&nbsp;<a href=\"http://www.webmd.com/men/picture-of-the-penis\">penis</a>. The urethra also carries urine, a waste product made by the&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-kidneys\">kidneys</a>and stored in the&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-bladder\">bladder</a>. When the&nbsp;<a href=\"http://www.webmd.com/men/rm-quiz-is-my-penis-normal\">penis</a>&nbsp;is erect during sexual intercourse, the flow of urine is blocked from the urethra, allowing only semen to be ejaculated at orgasm.</p>\r\n<p>&nbsp;</p>\r\n<p>Where Is It Located?</p>\r\n<p>It sits directly beneath your&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/oab-13/slideshow-bladder-myths-and-facts\">bladder</a>&nbsp;and in front of your rectum. Because the first portion of the urethra passes through the prostate, the passage of urine or semen through the urethra can be blocked if the gland is enlarged.</p>\r\n<p>&nbsp;</p>\r\n<p>What Is Prostate Cancer?</p>\r\n<p><a href=\"http://www.webmd.com/prostate-cancer/default.htm\">Prostate cancer</a>&nbsp;is the most common&nbsp;<a href=\"http://www.webmd.com/cancer/default.htm\">cancer</a>, excluding&nbsp;<a href=\"http://www.webmd.com/skin-problems-and-treatments/picture-of-the-skin\">skin</a>&nbsp;cancers, in American men. It is a malignant tumor of the prostate. In most men, the&nbsp;<a href=\"http://www.webmd.com/cancer/ss/does-this-cause-cancer\">cancer</a>&nbsp;grows very slowly. Many men with the disease will never know they have it. Early&nbsp;<a href=\"http://www.webmd.com/prostate-cancer/ss/slideshow-prostate-cancer-overview\">prostate cancer</a>&nbsp;is confined to the prostate gland itself. Most men with this type of&nbsp;<a href=\"http://www.webmd.com/cancer/rm-quiz-cancer-myths-facts\">cancer</a>&nbsp;can live for years with no problems.</p>\r\n<p>Doctors talk about prostate cancer in terms of a \"grade\" and a \"stage.\" The grade is given to indicate how the&nbsp;<a href=\"http://www.webmd.com/cancer/health-check-cancer-risk/default.htm\">cancer</a>&nbsp;cells look under the microscope when a&nbsp;<a href=\"http://www.webmd.com/cancer/what-is-a-biopsy\">biopsy</a>&nbsp;is analyzed. The grade often predicts how quickly a cancer is growing and will spread -- the higher the grade, the more likely it is that the cancer will grow and spread rapidly. The size and extent of the tumor when first detected determine its stage.</p>\r\n<p>&nbsp;</p>\r\n<p>What Causes Prostate Cancer?</p>\r\n<p>As with many cancers, it isn&rsquo;t known. But doctors do know you\'re more likely to get it if you\'re African-American or have a family history of the disease. The male&nbsp;<a href=\"http://www.webmd.com/sex-relationships/default.htm\">sex</a>&nbsp;hormone<a href=\"http://www.webmd.com/men/testosterone-15738\">testosterone</a>&nbsp;also contributes to its growth.</p>\r\n<p>&nbsp;</p>\r\n<p>How Many Men Have It?</p>\r\n<p>In 2015, the American Cancer Society estimated about 220,000 U.S. men would be diagnosed with prostate cancer and nearly 28,000 would die from it. About 80% of men who live to be 80 have prostate cancer.</p>\r\n<p>What\'s the Outlook?</p>\r\n<p>While the number of men diagnosed with prostate cancer remains high, so does the number of men who get it and live. Survival rates after diagnosis of common&nbsp;<a href=\"http://www.webmd.com/prostate-cancer/guide/understanding-prostate-cancer-symptoms\">types of prostate cancer</a>&nbsp;are:</p>\r\n<ul>\r\n<li>5 years: nearly 100%</li>\r\n<li>10 years: 99%</li>\r\n<li>15+ years: 94%</li>\r\n</ul>\r\n<p>Prostate cancer is a slow-growing disease. You&rsquo;re far more likely to die from other causes before you die from prostate cancer. You&rsquo;re also more likely to catch it earlier if you get annual screening tests.</p>', '<p>Prostate Cancer: The Basics</p>\r\n<p>Reviewed by&nbsp;<a href=\"http://www.webmd.com/stuart-bergman\">Stuart Bergman, MD</a>&nbsp;on February 05, 2016</p>\r\n<p>The&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-prostate\">prostate</a>&nbsp;is a muscular, walnut-sized gland that makes chemicals that affect or control what other cells or organs do. It&rsquo;s part of the&nbsp;<a href=\"http://www.webmd.com/sex-relationships/guide/male-reproductive-system\">male reproductive system</a>. Its main job is to make seminal fluid, the milky substance that transports&nbsp;<a href=\"http://www.webmd.com/infertility-and-reproduction/guide/sperm-and-semen-faq\">sperm</a>.</p>\r\n<p>The prostate wraps around part of your urethra, the tube that moves urine and semen out of your body.</p>\r\n<p>During an orgasm, muscles in your prostate contract to push semen through your urethra and out your&nbsp;<a href=\"http://www.webmd.com/men/picture-of-the-penis\">penis</a>. The urethra also carries urine, a waste product made by the&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-kidneys\">kidneys</a>and stored in the&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/picture-of-the-bladder\">bladder</a>. When the&nbsp;<a href=\"http://www.webmd.com/men/rm-quiz-is-my-penis-normal\">penis</a>&nbsp;is erect during sexual intercourse, the flow of urine is blocked from the urethra, allowing only semen to be ejaculated at orgasm.</p>\r\n<p>&nbsp;</p>\r\n<p>Where Is It Located?</p>\r\n<p>It sits directly beneath your&nbsp;<a href=\"http://www.webmd.com/urinary-incontinence-oab/oab-13/slideshow-bladder-myths-and-facts\">bladder</a>&nbsp;and in front of your rectum. Because the first portion of the urethra passes through the prostate, the passage of urine or semen through the urethra can be blocked if the gland is enlarged.</p>\r\n<p>&nbsp;</p>\r\n<p>What Is Prostate Cancer?</p>\r\n<p><a href=\"http://www.webmd.com/prostate-cancer/default.htm\">Prostate cancer</a>&nbsp;is the most common&nbsp;<a href=\"http://www.webmd.com/cancer/default.htm\">cancer</a>, excluding&nbsp;<a href=\"http://www.webmd.com/skin-problems-and-treatments/picture-of-the-skin\">skin</a>&nbsp;cancers, in American men. It is a malignant tumor of the prostate. In most men, the&nbsp;<a href=\"http://www.webmd.com/cancer/ss/does-this-cause-cancer\">cancer</a>&nbsp;grows very slowly. Many men with the disease will never know they have it. Early&nbsp;<a href=\"http://www.webmd.com/prostate-cancer/ss/slideshow-prostate-cancer-overview\">prostate cancer</a>&nbsp;is confined to the prostate gland itself. Most men with this type of&nbsp;<a href=\"http://www.webmd.com/cancer/rm-quiz-cancer-myths-facts\">cancer</a>&nbsp;can live for years with no problems.</p>\r\n<p>Doctors talk about prostate cancer in terms of a \"grade\" and a \"stage.\" The grade is given to indicate how the&nbsp;<a href=\"http://www.webmd.com/cancer/health-check-cancer-risk/default.htm\">cancer</a>&nbsp;cells look under the microscope when a&nbsp;<a href=\"http://www.webmd.com/cancer/what-is-a-biopsy\">biopsy</a>&nbsp;is analyzed. The grade often predicts how quickly a cancer is growing and will spread -- the higher the grade, the more likely it is that the cancer will grow and spread rapidly. The size and extent of the tumor when first detected determine its stage.</p>\r\n<p>&nbsp;</p>\r\n<p>What Causes Prostate Cancer?</p>\r\n<p>As with many cancers, it isn&rsquo;t known. But doctors do know you\'re more likely to get it if you\'re African-American or have a family history of the disease. The male&nbsp;<a href=\"http://www.webmd.com/sex-relationships/default.htm\">sex</a>&nbsp;hormone<a href=\"http://www.webmd.com/men/testosterone-15738\">testosterone</a>&nbsp;also contributes to its growth.</p>\r\n<p>&nbsp;</p>\r\n<p>How Many Men Have It?</p>\r\n<p>In 2015, the American Cancer Society estimated about 220,000 U.S. men would be diagnosed with prostate cancer and nearly 28,000 would die from it. About 80% of men who live to be 80 have prostate cancer.</p>\r\n<p>What\'s the Outlook?</p>\r\n<p>While the number of men diagnosed with prostate cancer remains high, so does the number of men who get it and live. Survival rates after diagnosis of common&nbsp;<a href=\"http://www.webmd.com/prostate-cancer/guide/understanding-prostate-cancer-symptoms\">types of prostate cancer</a>&nbsp;are:</p>\r\n<ul>\r\n<li>5 years: nearly 100%</li>\r\n<li>10 years: 99%</li>\r\n<li>15+ years: 94%</li>\r\n</ul>\r\n<p>Prostate cancer is a slow-growing disease. You&rsquo;re far more likely to die from other causes before you die from prostate cancer. You&rsquo;re also more likely to catch it earlier if you get annual screening tests.</p>', '2016-04-01-Prostate-Cancer:-The-Basics', 'uploads/blogs/blog_56fe36589830f.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-04-01 08:50:32', '0');
INSERT INTO `tbl_blogs` VALUES ('43', '1', 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', 'Vaginal Discharge: What’s Abnormal?', '<p>Vaginal Discharge: What&rsquo;s Abnormal?</p>\r\n<p><a href=\"https://www.youtube.com/watch?v=w86h_l1WCwk\">https://www.youtube.com/watch?v=w86h_l1WCwk</a></p>\r\n<p>In this article</p>\r\n<p><a href=\"http://www.webmd.com/video/corio-vaginal-discharge\">Vaginal discharge</a>&nbsp;serves an important housekeeping function in the <a href=\"http://www.webmd.com/infertility-and-reproduction/guide/female-reproductive-system-overview\">female reproductive system</a>. Fluid made by glands inside the&nbsp;<a href=\"http://www.webmd.com/women/picture-of-the-vagina\">vagina</a>&nbsp;and <a href=\"http://www.webmd.com/women/picture-of-the-cervix\">cervix</a>&nbsp;carries away dead cells and bacteria. This keeps the&nbsp;<a href=\"http://www.webmd.com/women/rm-quiz-vagina\">vagina</a> clean and helps prevent infection.</p>\r\n<p>Most of the time,&nbsp;<a href=\"http://www.webmd.com/women/guide/vaginal-discharge-whats-abnormal\">vaginal discharge</a>&nbsp;is perfectly normal. The amount can vary, as can odor and hue (its color can range from clear to a milky white-ish), depending on the time in your&nbsp;<a href=\"http://women.webmd.com/tc/normal-menstrual-cycle-topic-overview\">menstrual cycle</a>. For example, there will be more discharge if you are&nbsp;<a href=\"http://www.webmd.com/medical_information/health_tools/interactive/ovu_calendar\">ovulating</a>,&nbsp;<a href=\"http://www.webmd.com/parenting/baby/breastfeeding-9/nursing-basics\">breastfeeding</a>, or are sexually aroused. The smell may be different if you are&nbsp;<a href=\"http://www.webmd.com/baby/default.htm\">pregnant</a>&nbsp;or you haven\'t been diligent about your personal hygiene.</p>\r\n<p>None of those changes is cause for alarm. However, if the color, smell, or consistency seems significantly unusual, especially if it accompanied by vaginal&nbsp;<a href=\"http://www.webmd.com/skin-problems-and-treatments/guide/default.htm\">itching</a>&nbsp;or burning, you could be noticing an infection or other condition.</p>\r\n<p>What causes abnormal discharge?</p>\r\n<p>Any change in the vagina\'s balance of normal bacteria can affect the smell, color, or discharge texture. These are a few of the things that can upset that balance:</p>\r\n<ul>\r\n<li>Antibiotic or steroid use</li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/tc/bacterial-vaginosis-topic-overview\">Bacterial vaginosis</a>, a&nbsp;<a href=\"http://www.webmd.com/a-to-z-guides/bacterial-and-viral-infections\">bacterial infection</a>more common in&nbsp;<a href=\"http://www.webmd.com/baby/default.htm\">pregnant</a> women or women who have multiple sexual partners</li>\r\n<li><a href=\"http://www.webmd.com/sex/birth-control/birth-control-pills\">Birth control pills</a></li>\r\n<li><a href=\"http://www.webmd.com/cancer/cervical-cancer/default.htm\">Cervical cancer</a></li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/guide/chlamydia\">Chlamydia</a>or&nbsp;<a href=\"http://www.webmd.com/sexual-conditions/guide/gonorrhea\">gonorrhea</a>&nbsp;(<a href=\"http://www.webmd.com/sexual-conditions/default.htm\">STDs</a>), sexually transmitted infections</li>\r\n<li><a href=\"http://diabetes.webmd.com/default.htm\">Diabetes</a></li>\r\n<li>Douches, scented soaps or lotions, bubble bath</li>\r\n<li>Pelvic infection after surgery</li>\r\n<li><a href=\"http://www.webmd.com/women/guide/sexual-health-your-guide-to-pelvic-inflammatory-disease\">Pelvic inflammatory disease</a>(PID)</li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/trichomoniasis\">Trichomoniasis</a>, a parasitic infection typically contracted and caused by having unprotected&nbsp;<a href=\"http://www.webmd.com/sex-relationships/default.htm\">sex</a></li>\r\n<li>Vaginal atrophy, the thinning and drying out of the vaginal walls during&nbsp;<a href=\"http://www.webmd.com/menopause/default.htm\">menopause</a></li>\r\n<li><a href=\"http://www.webmd.com/women/vaginal-infections\">Vaginitis</a>, irritation in or around the vagina</li>\r\n<li><a href=\"http://www.webmd.com/skin-problems-and-treatments/candidiasis-yeast-infection\">Yeast infections</a></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>How is abnormal discharge treated?</p>\r\n<p>How you are treated will depend on what&rsquo;s causing the problem. For example,&nbsp;<a href=\"http://www.webmd.com/a-to-z-guides/candidiasis-yeast-infection\">yeast infections</a>&nbsp;are usually treated with antifungal <a href=\"http://www.webmd.com/drugs/index-drugs.aspx\">medications</a>&nbsp;inserted into the vagina in cream or gel form. Bacterial vaginosis is treated with antibiotic pills or creams. Trichomoniasis is usually treated with the drug&nbsp;<a href=\"http://www.webmd.com/drugs/drug-6426-Metronidazole+Oral.aspx?drugid=6426&amp;drugname=Metronidazole+Oral\">metronidazole</a>&nbsp;(<a href=\"http://www.webmd.com/drugs/drug-7644-Flagyl+Oral.aspx?drugid=7644&amp;drugname=Flagyl+Oral\">Flagyl</a>) or&nbsp;<a href=\"http://www.webmd.com/drugs/drug-91258-tinidazole+oral.aspx\">tinidazole</a>(<a href=\"http://www.webmd.com/drugs/drug-91341-tindamax+oral.aspx\">Tindamax</a>).</p>\r\n<p>Here are some tips for preventing&nbsp;<a href=\"http://www.webmd.com/women/guide/sexual-health-vaginal-infections\">vaginal infections</a>&nbsp;that can lead to abnormal discharge:</p>\r\n<ul>\r\n<li>Keep the vagina clean by washing regularly with a gentle, mild soap and warm water.</li>\r\n<li>Never use scented soaps and feminine products or douche. Also avoid feminine sprays and bubble baths.</li>\r\n<li>After going to the bathroom, always wipe from front to back to prevent bacteria from getting into the vagina and causing an infection.</li>\r\n<li>Wear 100% cotton underpants, and avoid overly tight clothing.</li>\r\n</ul>', '<p>Vaginal Discharge: What&rsquo;s Abnormal?</p>\r\n<p>In this article</p>\r\n<p><a href=\"http://www.webmd.com/video/corio-vaginal-discharge\">Vaginal discharge</a>&nbsp;serves an important housekeeping function in the <a href=\"http://www.webmd.com/infertility-and-reproduction/guide/female-reproductive-system-overview\">female reproductive system</a>. Fluid made by glands inside the&nbsp;<a href=\"http://www.webmd.com/women/picture-of-the-vagina\">vagina</a>&nbsp;and <a href=\"http://www.webmd.com/women/picture-of-the-cervix\">cervix</a>&nbsp;carries away dead cells and bacteria. This keeps the&nbsp;<a href=\"http://www.webmd.com/women/rm-quiz-vagina\">vagina</a> clean and helps prevent infection.</p>\r\n<p>Most of the time,&nbsp;<a href=\"http://www.webmd.com/women/guide/vaginal-discharge-whats-abnormal\">vaginal discharge</a>&nbsp;is perfectly normal. The amount can vary, as can odor and hue (its color can range from clear to a milky white-ish), depending on the time in your&nbsp;<a href=\"http://women.webmd.com/tc/normal-menstrual-cycle-topic-overview\">menstrual cycle</a>. For example, there will be more discharge if you are&nbsp;<a href=\"http://www.webmd.com/medical_information/health_tools/interactive/ovu_calendar\">ovulating</a>,&nbsp;<a href=\"http://www.webmd.com/parenting/baby/breastfeeding-9/nursing-basics\">breastfeeding</a>, or are sexually aroused. The smell may be different if you are&nbsp;<a href=\"http://www.webmd.com/baby/default.htm\">pregnant</a>&nbsp;or you haven\'t been diligent about your personal hygiene.</p>\r\n<p>None of those changes is cause for alarm. However, if the color, smell, or consistency seems significantly unusual, especially if it accompanied by vaginal&nbsp;<a href=\"http://www.webmd.com/skin-problems-and-treatments/guide/default.htm\">itching</a>&nbsp;or burning, you could be noticing an infection or other condition.</p>\r\n<p>What causes abnormal discharge?</p>\r\n<p>Any change in the vagina\'s balance of normal bacteria can affect the smell, color, or discharge texture. These are a few of the things that can upset that balance:</p>\r\n<ul>\r\n<li>Antibiotic or steroid use</li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/tc/bacterial-vaginosis-topic-overview\">Bacterial vaginosis</a>, a&nbsp;<a href=\"http://www.webmd.com/a-to-z-guides/bacterial-and-viral-infections\">bacterial infection</a>more common in&nbsp;<a href=\"http://www.webmd.com/baby/default.htm\">pregnant</a> women or women who have multiple sexual partners</li>\r\n<li><a href=\"http://www.webmd.com/sex/birth-control/birth-control-pills\">Birth control pills</a></li>\r\n<li><a href=\"http://www.webmd.com/cancer/cervical-cancer/default.htm\">Cervical cancer</a></li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/guide/chlamydia\">Chlamydia</a>or&nbsp;<a href=\"http://www.webmd.com/sexual-conditions/guide/gonorrhea\">gonorrhea</a>&nbsp;(<a href=\"http://www.webmd.com/sexual-conditions/default.htm\">STDs</a>), sexually transmitted infections</li>\r\n<li><a href=\"http://diabetes.webmd.com/default.htm\">Diabetes</a></li>\r\n<li>Douches, scented soaps or lotions, bubble bath</li>\r\n<li>Pelvic infection after surgery</li>\r\n<li><a href=\"http://www.webmd.com/women/guide/sexual-health-your-guide-to-pelvic-inflammatory-disease\">Pelvic inflammatory disease</a>(PID)</li>\r\n<li><a href=\"http://www.webmd.com/sexual-conditions/trichomoniasis\">Trichomoniasis</a>, a parasitic infection typically contracted and caused by having unprotected&nbsp;<a href=\"http://www.webmd.com/sex-relationships/default.htm\">sex</a></li>\r\n<li>Vaginal atrophy, the thinning and drying out of the vaginal walls during&nbsp;<a href=\"http://www.webmd.com/menopause/default.htm\">menopause</a></li>\r\n<li><a href=\"http://www.webmd.com/women/vaginal-infections\">Vaginitis</a>, irritation in or around the vagina</li>\r\n<li><a href=\"http://www.webmd.com/skin-problems-and-treatments/candidiasis-yeast-infection\">Yeast infections</a></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>How is abnormal discharge treated?</p>\r\n<p>How you are treated will depend on what&rsquo;s causing the problem. For example,&nbsp;<a href=\"http://www.webmd.com/a-to-z-guides/candidiasis-yeast-infection\">yeast infections</a>&nbsp;are usually treated with antifungal <a href=\"http://www.webmd.com/drugs/index-drugs.aspx\">medications</a>&nbsp;inserted into the vagina in cream or gel form. Bacterial vaginosis is treated with antibiotic pills or creams. Trichomoniasis is usually treated with the drug&nbsp;<a href=\"http://www.webmd.com/drugs/drug-6426-Metronidazole+Oral.aspx?drugid=6426&amp;drugname=Metronidazole+Oral\">metronidazole</a>&nbsp;(<a href=\"http://www.webmd.com/drugs/drug-7644-Flagyl+Oral.aspx?drugid=7644&amp;drugname=Flagyl+Oral\">Flagyl</a>) or&nbsp;<a href=\"http://www.webmd.com/drugs/drug-91258-tinidazole+oral.aspx\">tinidazole</a>(<a href=\"http://www.webmd.com/drugs/drug-91341-tindamax+oral.aspx\">Tindamax</a>).</p>\r\n<p>Here are some tips for preventing&nbsp;<a href=\"http://www.webmd.com/women/guide/sexual-health-vaginal-infections\">vaginal infections</a>&nbsp;that can lead to abnormal discharge:</p>\r\n<ul>\r\n<li>Keep the vagina clean by washing regularly with a gentle, mild soap and warm water.</li>\r\n<li>Never use scented soaps and feminine products or douche. Also avoid feminine sprays and bubble baths.</li>\r\n<li>After going to the bathroom, always wipe from front to back to prevent bacteria from getting into the vagina and causing an infection.</li>\r\n<li>Wear 100% cotton underpants, and avoid overly tight clothing.</li>\r\n</ul>', 'vaginal-discharge-what-s-abnormal', 'uploads/blogs/blog_56fe3694de12a.jpg', '0', '1', '1', '1', '0000-00-00 00:00:00', '2016-04-17 08:33:39', '0');

-- ----------------------------
-- Table structure for `tbl_blog_categories`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_blog_categories`;
CREATE TABLE `tbl_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `en_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kh_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `created_dt` datetime NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_blog_categories
-- ----------------------------
INSERT INTO `tbl_blog_categories` VALUES ('1', 'News', 'News', 'news', '1', '2016-07-01 23:19:43', '0000-00-00 00:00:00');
INSERT INTO `tbl_blog_categories` VALUES ('2', 'Tips', 'Tips', 'tips', '1', '2016-07-01 23:20:17', '2016-07-01 23:20:21');
INSERT INTO `tbl_blog_categories` VALUES ('3', 'Video', 'Video', 'video', '1', '2016-07-01 23:20:57', '2016-07-01 23:21:00');

-- ----------------------------
-- Table structure for `tbl_blog_tags`
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
-- Table structure for `tbl_consultant_images`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_consultant_images`;
CREATE TABLE `tbl_consultant_images` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `modified_dt` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_consultant_images
-- ----------------------------
INSERT INTO `tbl_consultant_images` VALUES ('1', 'uploads/consultant-images/consultant_image_56edf6c5588ab.jpg', '2016-03-20 02:03:01', '0');
INSERT INTO `tbl_consultant_images` VALUES ('2', 'uploads/consultant-images/consultant_image_56e50dc46b112.jpg', '2016-03-15 15:31:52', '0');
INSERT INTO `tbl_consultant_images` VALUES ('5', 'uploads/consultant-images/consultant_image_5700c8523386b.jpg', '2016-04-03 07:37:54', '0');
INSERT INTO `tbl_consultant_images` VALUES ('6', 'uploads/consultant-images/consultant_image_570bb824a8fba.jpg', '2016-04-11 14:43:48', '0');
INSERT INTO `tbl_consultant_images` VALUES ('7', 'uploads/consultant-images/consultant_image_57208162e3bed.jpg', '2016-04-27 09:07:46', '1');
INSERT INTO `tbl_consultant_images` VALUES ('8', 'uploads/consultant-images/consultant_image_57207f42c1911.jpg', '2016-04-27 08:58:42', '0');

-- ----------------------------
-- Table structure for `tbl_contact_email`
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
-- Table structure for `tbl_contact_information`
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
-- Table structure for `tbl_contents`
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
INSERT INTO `tbl_contents` VALUES ('1', 'about-us', 'About Us', 'About us', '<p style=\"text-align: justify;\"><strong>Krupet.com</strong> aims to become a leading health website in Cambodia and would like to help the audience to search for any reliable health institution. The audiences are able to search for hospitals and specialized clinics in Phnom Penh regarding to their symptom as well as reliable health news. All of the health institutions in the website are professional with high technical skills and has been approved by the Ministry of Health in Cambodia. Regarding to health news, they are taken from the both of the local or international source and translated for reader to understand easily.</p>\r\n<p style=\"text-align: justify;\"><strong>Krupet.com</strong> will facilitate to patience to communicate with specialists easier and better as well as help Cambodia people to get accurate health information. Moreover, we recommend the audience to consult with the specialists before taking any tips or information on our or other website to implement due to the fact that each person might have different aspect in term of health.</p>', '<p style=\"text-align: justify;\"><strong>Krupet.com</strong> មានគោលបំណង ក្លាយជាវិបសាយ សុខភាពនាំមុខគេក្នុងប្រទេសកម្ពុជា។ លើសពីនេះ គេហទំព័ររបស់យើង ចង់ជួយឲ្យលោកអ្នកស្វែងរកស្ថាបនថែទាំសុខភាពប្រកបដោយទំនុកចិត្តខ្ពស់។ លោកអ្នកអាចស្វែងរកមន្ទីរពេទ្យ ឬគ្លីនិកឯកទេសទូទាំងរាជធានីភ្នំពេញ និងពត៌មានអប់រំពីសុខភាពដែលគួរឲ្យទុកចិត្តបំផុត។ គ្រប់ស្ថាប័នសុខភាពដែលបង្ហាញនៅក្នុងគេហទំព័រនេះ សុទ្ធតែមានវិជ្ជាជីវៈត្រឹមត្រូវប្រកបដោយបច្ចេកទេសច្បាស់លាស់ និងត្រូវបានទទួលស្គាល់ពីក្រសួងសុខាភិបាលនៃព្រះរាជាណាចក្រកម្ពុជា។ រីឯពត៌មានស្តីពីសុខភាព ត្រូវបានយកចេញពីប្រភពផ្លូវការទាំងក្នុង និងក្រៅប្រទេស ព្រមទាំងមានកែសម្រួលដើម្បីឲ្យមិត្តអ្នកអានងាយយល់ និង អាចទទួលបានពត៌មានបានរហ័ស ។</p>\r\n<p style=\"text-align: justify;\">គេហទំព័រ <strong>Krupet.com</strong> នឹងជួយសម្រួលដល់ទំនាក់ទំនងរវាងអ្នកដែលមានបញ្ហាសុខភាព និងអ្នកជំនាញឲ្យកាន់តែងាយស្រួល និងប្រសើរជាងមុន ហើយទស្សនៈវិស័យរបស់យើងគឺចង់ធ្វើឲ្យប្រជាជនកម្ពុជាទទួលបាននូវពត៌មានសុខភាពយ៉ាងសុក្រិត។ ទន្ទឹមនឹងភាពងាយស្រួលក្នុងការទទួលយកពត៌មានសុខភាព យើងជម្រុញលើកទឹកចិត្តឲ្យអ្នកអានទាំងអស់ធ្វើការពិគ្រោះជាមួយគ្រូពេទ្យជំនាញច្បាស់លាស់ជាមុនសិន មុននឹងយកពត៌មានដែលទទួលបានពី Krupet.com ឬគេហទំព័រដទៃទៅ អនុវត្តជាក់ស្តែង ដោយហេតុថា មនុស្សម្នាក់ៗមានលក្ខណៈមិនដូចគ្នានោះទេ។</p>', '0', '0', '2015-09-19 17:50:43', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('2', 'term', 'Term', 'Term in Khmer', '<p>Term</p>\r\n', '<p>Term</p>\r\n', '0', '0', '2015-09-19 17:56:38', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('3', 'career', 'Career', 'Career', '<h4><span style=\"font-size:20px\"><strong>Sabay</strong></span> ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href=\"http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay\">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href=\"http://aboutus.sabay.com/%20\" target=\"_blank\">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', '<h4>Sabay ត្រូវ​ការ​ជ្រើសរើស​បុគ្គលិក</h4>\r\n\r\n<p>4 Jan, 2016 13:52</p>\r\n\r\n<p><a href=\"http://news.sabay.com.kh/article/tag/%e1%9e%80%e1%9e%b6%e1%9e%9a%e1%9e%84%e1%9e%b6%e1%9e%9a-sabay\">ការងារ Sabay</a></p>\r\n\r\n<p>0&nbsp;&nbsp;Comment (s)</p>\r\n\r\n<p>Sabay ជា​ក្រុមហ៊ុន​ Digital ​​ទំនើប​និង​​ជា​បណ្តាញ​​សារព័ត៌មាន​​អនឡាញ​សំបូរ​បែប​ឈាន​មុខ​គេ​នៅ​ក្នុង​ប្រទេស​កម្ពុជា។ Sabay ត្រូវ​ការ​ជ្រើស​រើស​បុគ្គលិក​ដែល​ពោរពេញ​ទៅ​ដោយ​ភាព​ច្នៃ​ប្រឌិត​និង​ការ​បង្កើត​ថ្មី ដើម្បី​មក​បម្រើ​ការងារ​ក្នុង​មុខ​តំណែង​សំខាន់ៗ​ដូចជា&nbsp; Content Coordinator,&nbsp; General Secretary, Personal Assistant,&nbsp;Commercial Editor និងEntertainment Internee។ ដូច្នេះ​ នេះ​ជា​ឱកាស​ដ៏​ល្អ​បំផុត​​ សម្រាប់​ប្រិយមិត្ត​មាន​សមត្ថភាព​ដែល​ចង់​ក្លាយ​ជា​បុគ្គលិក​ដែល​មាន​ភាព​លេចធ្លោ​។</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>១. Content Coordinator</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time&nbsp;<strong>Content Coordinator</strong>&nbsp;based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Co-ordinate with distribution channels for Music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Format product to distributors specifications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Monitor and analyze sales data<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Assist in strategizing and implementation of marketing activities for music content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Other tasks that assigned by the Manager</p>\r\n\r\n<p>Requirement</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University&nbsp; in Computer Science, Business Management or other related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum of 1 year experience in related field<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good interpersonal and communication skill and detail oriented<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having passion in the field and being flexible<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Being firm and friendly, and respect confidentiality<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Having excellent communication skills in both spoken and written English<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good computer skill</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>២. General Secretary</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time General Secretary based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Coordinate the day-to-day operations (Check and verify the expenses, follow up the work progress)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be pro-actively involved in developing suggestions and ideas to improve all aspects of the company&rsquo;s operation including website, social media, magazine, sales and marketing<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represent the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintain an efficient flow of information between all levels of association including internal and external contacts on a wide spectrum of plans and priorities;<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Review, proofread and format all related correspondences<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepare comprehensive presentation for CEO</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Bachelor degree in Management or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 3-year working experience in providing support at a high level<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write in English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៣. Personal Assistant</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full-time Personal Assistant based in Phnom Penh.<br />\r\nResponsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Manages the day-to-day operations of the office<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Diligently handles all document maintenance including internal documents, spreadsheets, expense reports, meeting minutes<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains executive&rsquo;s appointment schedule by planning and scheduling meetings, conferences, teleconferences, and travel<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Represents the executive by attending meetings in the executive&rsquo;s absence; speaking for the executive<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Manages projects and conducts research<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Produces information by transcribing, formatting, inputting, editing, retrieving, copying, and transmitting text, data, and graphics<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Prepares and edits correspondence, reports, and presentations<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Provides quality customer service<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Maintains customer confidence and protects operations by keeping information confidential<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Performs any other ad-hoc tasks as and when required</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Diploma in Secretary or equivalent<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minimum 2-year working experience in secretarial or administrative work<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be able to speak and write English, good command in Chinese is preferred<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Advanced proficiency with Microsoft Office Suite<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ability to handle private and confidential matters<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be extremely hardworking, proactive, organized and detail-oriented; flexible thinker</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៤. Commercial Editor</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for a full time Commercial Editor based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;Prepare the strategic planning to drive the sales team and to boost more sales volume<br />\r\n&bull;&nbsp;&nbsp; &nbsp;In close partnership with the content team, manage the content marketing initiative that will increase website traffic, increase lead generation and improve our clients&rsquo; brand awareness through the marketing campaigns<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Oversee and lead the team to develop content ideas to meet the trend or target audiences and target clients<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Work closely and collaborate with internal team across editors/writers, sales team &hellip; to properly execute the plan<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Be a key voice in commercial articles planning, ensuring consistent tone and theme throughout all external marketing communications<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Proof read all the related articles ensuring all contents meet our high standards and style guidelines<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ad hoc assignments as needed</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp; &nbsp;University degree in Media or&nbsp; Business Communication or the equivalent work experience<br />\r\n&bull;&nbsp;&nbsp; &nbsp;At least 2-year experience in editorial&nbsp; level and good concept in sales<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good knowledge of digital media channels<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good presentation skill and an ability to innovate and think critically<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Passion for creating responsive, original, and interesting content<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Good command in English, Microsoft office, email, internet<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Strong written and creative with the ability to write accurate news, stories in Khmer style</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>៥. Entertainment Internees</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are looking for full-time Entertainment Internees (5 positions) based in Phnom Penh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Responsibilities</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; Research, write and verify related news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Conduct face-to-face or phone interview with related individual concerning some interested events, witnesses, other interested topics which serves the public audience<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Hunt up up-to- date hot news<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Broaden network in Entertainment industry<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Produce comprehensive and accurate articles<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Organize materials into factual or analytical reports</p>\r\n\r\n<p>Requirements</p>\r\n\r\n<p>&bull;&nbsp;&nbsp;&nbsp; At least 3rd year or graduated from Khmer Literature/Philosophy/Sociology or related fields<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being enthusiasm and&nbsp; being talent in&nbsp; entertainment field<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being interested in Entertainment program or news (movies, songs, artists, others international awards programs &hellip;)<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Having an upbeat, direct and persuasive writing style<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Ability to work as a team and strong interpersonal skills<br />\r\n&bull;&nbsp;&nbsp;&nbsp; Being Creative and detail oriented</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Application Information</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sabay Digital offers competitive benefit packages including medical care and performance based bonus schemes. Sabay is an equal opportunities employer. Young people with creative ideas are warmly welcome.<br />\r\nQualified candidates are invited to submit their presentation to&nbsp;hr@sabay.com.kh. Or Sabay Digital: address #308 Monivong Blvd, Phnom Penh, Cambodia. Tel: (85523) 22 8000. Our corporate website&nbsp;<a href=\"http://aboutus.sabay.com/%20\" target=\"_blank\">http://aboutus.sabay.com/&nbsp;</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Online application, please clearly state the position you are applying for as the subject and attachments must be in PDF format. Please include salary expectation in cover letter.</em><br />\r\n<strong><em>Deadline: January 16, 2016.</em></strong></p>\r\n', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_contents` VALUES ('4', 'contact-us', 'Contact Us', 'Contact Us', '<p><strong>Krupet.com</strong>&nbsp;</p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', '<p><strong>Krupet.com&nbsp;</strong></p>\r\n\r\n<p># 17 St. 306 (between Norodom Blvd and St. 51)&nbsp;</p>\r\n\r\n<p>Impact Hub Phnom Penh</p>\r\n\r\n<p><strong>Tel: </strong>(+855) 17 567 099</p>\r\n\r\n<p><strong>Email:&nbsp;</strong>contact@krupet.com</p>\r\n', '0', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_departments`
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
INSERT INTO `tbl_departments` VALUES ('1', 'Generala', 'Generala', '1', null, '2016-07-06 08:59:48');
INSERT INTO `tbl_departments` VALUES ('2', 'Department B', 'Department B', '1', null, null);
INSERT INTO `tbl_departments` VALUES ('3', 'Department C', 'Department C', '1', null, null);
INSERT INTO `tbl_departments` VALUES ('4', 'Department D', 'Department D', '1', null, null);

-- ----------------------------
-- Table structure for `tbl_distrits`
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for `tbl_doctors`
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_doctors` VALUES ('9', 'AZ', 'អេZ', 'Doctor', 'វេជ្ជបណ្ឌិត', '2', 'Doctor ', 'វេជ្ជបណ្ឌិត', '31', '2', '166', '(+855) 17 567 099', 'love@krupet.com', '9-az', '<p>a</p>', '<p>a</p>', '<p>a</p>', '<p>a</p>', 'uploads/doctors/doctor5743b49d03dbc.jpg', '1', '1', '0000-00-00 00:00:00', '0', '2016-05-26 04:44:03', '0', '0');

-- ----------------------------
-- Table structure for `tbl_doctor_services`
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
-- Table structure for `tbl_doctor_specialists`
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
-- Table structure for `tbl_faqs`
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
INSERT INTO `tbl_faqs` VALUES ('2', 'Do you like our website?', 'Do you like our website?', '<p>Yes,I do.</p>', '<p>Yes,I do.</p>', '1', '0000-00-00 00:00:00', '2016-07-06 09:02:25');
INSERT INTO `tbl_faqs` VALUES ('3', 'What does Smart provide to new SmartLuy registered customer?', 'What does Smart provide to new SmartLuy registered customer?', '<h4><strong>If you register to SmartLuy,</strong> a private electronic wallet will be provided to yo', '<p><strong>If you register to SmartLuy</strong>, a private electronic wallet will be provided to you', '1', '0000-00-00 00:00:00', '2016-01-21 18:01:28');

-- ----------------------------
-- Table structure for `tbl_featured_aside_ads`
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
-- Table structure for `tbl_feedbacks`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedbacks`;
CREATE TABLE `tbl_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'is_published refers to the visible of comment',
  `id_rater` int(11) DEFAULT NULL,
  `review` text,
  `created_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_feedbacks
-- ----------------------------
INSERT INTO `tbl_feedbacks` VALUES ('27', '3', 'ccccc', '2016-04-24 03:05:22');
INSERT INTO `tbl_feedbacks` VALUES ('28', '4', 'aa', '2016-04-24 03:05:28');

-- ----------------------------
-- Table structure for `tbl_feedback_questions`
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
INSERT INTO `tbl_feedback_questions` VALUES ('1', 'Effective', 'Effective', '<p>Die?</p>', '<p>Die?</p>', '1', '0000-00-00 00:00:00', '2016-07-06 09:06:52');
INSERT INTO `tbl_feedback_questions` VALUES ('2', 'Fee', 'Fee', 'Expensive?', 'Expensive?', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:07');
INSERT INTO `tbl_feedback_questions` VALUES ('3', 'Service', 'Service', 'Bad?', 'Bad', '1', '0000-00-00 00:00:00', '2016-02-28 06:40:58');
INSERT INTO `tbl_feedback_questions` VALUES ('4', 'ABC', 'sdf', 'How you satisfy this hospital?', 'How you satisfy this hospital?', '1', '0000-00-00 00:00:00', '2016-02-28 08:43:56');

-- ----------------------------
-- Table structure for `tbl_feedback_scores`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedback_scores`;
CREATE TABLE `tbl_feedback_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_feedback` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_feedback_scores
-- ----------------------------
INSERT INTO `tbl_feedback_scores` VALUES ('81', '25', '1', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('82', '25', '2', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('83', '25', '3', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('84', '25', '4', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('85', '26', '1', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('86', '26', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('87', '26', '3', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('88', '26', '4', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('89', '27', '1', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('90', '27', '2', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('91', '27', '3', '4');
INSERT INTO `tbl_feedback_scores` VALUES ('92', '27', '4', '5');
INSERT INTO `tbl_feedback_scores` VALUES ('93', '28', '1', '2');
INSERT INTO `tbl_feedback_scores` VALUES ('94', '28', '2', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('95', '28', '3', '3');
INSERT INTO `tbl_feedback_scores` VALUES ('96', '28', '4', '3');

-- ----------------------------
-- Table structure for `tbl_health_consultants`
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
INSERT INTO `tbl_health_consultants` VALUES ('1', 'Dara Sambath', 'M', '32', '098343334443', 'xxx@asdf.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '1', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-07-07 09:45:22');
INSERT INTO `tbl_health_consultants` VALUES ('2', '', 'M', '', '', '', '', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, '', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:48:43');
INSERT INTO `tbl_health_consultants` VALUES ('3', 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'Please help me', '1', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('4', 'Khouch Koeun', 'M', '24', '0965767970', 'koeun_math@yahoo.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'Please help me', '1', '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-03-10 16:49:57');
INSERT INTO `tbl_health_consultants` VALUES ('5', 'Tekly', 'M', '12', '098343334443', 'sathyayoeun02@gmail.com', 'Headach', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'kmk', '0', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('6', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('7', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '1', '1', '0', '2016-07-07 09:52:11', '2016-07-07 09:52:11', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('8', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null, 'I do not know', '1', '1', '0', '2016-03-10 16:36:46', '2016-03-10 16:36:46', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('9', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:12:01', '2016-03-04 05:12:01', 'Lou teak souy', 'XXXX', '1', '1', '0', '2016-03-10 15:26:35', '2016-03-10 15:26:35', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('10', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:15:40', '2016-03-04 05:15:40', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('11', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:18:32', '2016-03-04 05:18:32', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('12', 'Dara Sambath', 'Female', '12', '098343334443', 'keoun_math@yahoo.com', 'Headach', '123kg', '2016-03-04 05:20:23', '2016-03-04 05:20:23', 'Lou teak souy', 'XXXX', '1', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('13', 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:22:21', '2016-03-04 05:22:21', 'xx', 'yy', '0', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `tbl_health_consultants` VALUES ('14', 'Khouch Koeun', 'Male', '12', '0965767970', 'dara@sambath.com', 'Headach', '123kg', '2016-03-04 05:23:12', '2016-03-04 05:23:12', 'xx', 'yy', '0', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_horizontal_ads_dispays`
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
-- Table structure for `tbl_hospitals`
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospitals
-- ----------------------------
INSERT INTO `tbl_hospitals` VALUES ('1', 'ABC Clinic ', 'គ្លីនិក ABC', 'General', 'ទូទៅ', '<p>asd</p>', '<p>b</p>', '2', '12', '1-abc-clinic', 'uploads/hostpitals/hostpital56fd178d620c5.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-04-05 04:53:41', '0');
INSERT INTO `tbl_hospitals` VALUES ('3', 'Calmet Hospital', 'មន្ទីរពេទ្យកាល់ម៉ែត', 'Ear, Nose, Throat', 'ត្រចៀក ច្រមុះ បំពង់ក', '<p>sdaf</p>', '<p>asdf</p>', '1', '14', '3-calmet-hospital', 'uploads/hostpitals/hostpital56fd166a4aa42.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-04-05 04:53:14', '1');
INSERT INTO `tbl_hospitals` VALUES ('4', 'Ong Doung', 'អង្គដួង', 'z', '', 'z', 'z', '1', '13', '4-Ong-Doung', 'uploads/hostpitals/hostpital567eb64e77713.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-26 16:46:22', '0');
INSERT INTO `tbl_hospitals` VALUES ('5', 'Rusia', 'រូស៊ី', 'a', 'a', '<p>a</p>', '<p>a</p>', '1', '14', 'rusia', 'uploads/hostpitals/hostpital567eb6b9d4935.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-04-05 05:56:56', '1');
INSERT INTO `tbl_hospitals` VALUES ('6', 'khemara', 'រូស៊ី khemara', 'a', 'Ma', '<p style=\"text-align: justify;\">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style=\"text-align: justify;\">CORE VALUES</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style=\"text-align: justify;\">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style=\"text-align: justify;\">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style=\"text-align: justify;\">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style=\"text-align: justify;\">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style=\"text-align: justify;\">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style=\"text-align: justify;\">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '<p style=\"text-align: justify;\">Rasmey Hospital&nbsp;is an outstanding private medical facility in the capital of Cambodia, capable of providing quality services to meet the health care needs of residents, expatriates, and visitors alike. Rasmey Hospital&nbsp;is designed to meet the needs of patients while offering a high degree of comfort. It is fully staffed with highly qualified and experienced expatriate general practitioners (GPs) as well as specialists who have been trained and have practiced in United States, United Kingdom, France, Belgium, and Thailand.&nbsp; The clinic is currently undergoing ISO Management Certification.</p>\r\n<p style=\"text-align: justify;\">CORE VALUES</p>\r\n<ul>\r\n<li style=\"text-align: justify;\">We practice patient-centered care, seeking to know our patients as individuals, offering compassionate care that respects their unique needs, and responding to their feedback to continuously improve their care.</li>\r\n<li style=\"text-align: justify;\">We respect that the cornerstone of our practice is to deliver the highest possible quality to our patients in the safest environment.</li>\r\n<li style=\"text-align: justify;\">We value teamwork led by clinicians collaborating with engaged and talented staff.</li>\r\n<li style=\"text-align: justify;\">We shape the future of healthcare by innovating new ways to care for our patients, sharing our knowledge with the next generation of clinicians.</li>\r\n<li style=\"text-align: justify;\">We deliver equitable health care that is evidence-based, whenever possible, to all of our diverse patient populations.</li>\r\n<li style=\"text-align: justify;\">We aspire to integrate our information and services across diverse communities to create a seamless system of care for our patients.</li>\r\n<li style=\"text-align: justify;\">We have implemented ISO 9001:2008 (QMS - Quality Management Services) to strengthen our technical team and ensure continuum international standards.</li>\r\n</ul>', '1', '13', '6-khemara', 'uploads/hostpitals/hostpital567eb74771b46.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-22 16:02:13', '0');
INSERT INTO `tbl_hospitals` VALUES ('7', 'Japen', 'ជប៉ុន', 'c', 'a', 'c', 'c', '1', '14', '7-Japen', 'uploads/hostpitals/hostpital567eb792755fe.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-13 10:38:31', '0');
INSERT INTO `tbl_hospitals` VALUES ('8', 'Veathnam', 'វៀតណាមVeathnam', 'v', '', 'v', 'v', '1', '13', '8-Veathnam', 'uploads/hostpitals/hostpital567eb7e59dba2.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-01 12:31:10', '0');
INSERT INTO `tbl_hospitals` VALUES ('9', 'china', 'មន្ទីពេទ្យchina', 'c', '', 'c', 'c', '1', '13', '9-china', 'uploads/hostpitals/hostpital567eb85501eef.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:53:31', '0');
INSERT INTO `tbl_hospitals` VALUES ('10', 'Brazil', 'មន្ទីពេទ្យBrazil', 'z', '', 'z', 'z', '1', '13', '10-Brazil', 'uploads/hostpitals/hostpital567eb88c7391a.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:49:42', '0');
INSERT INTO `tbl_hospitals` VALUES ('11', 'Thailand', 'មន្ទីពេទ្យThailand', 't', '', 't', 't', '1', '13', '11-Thailand', 'uploads/hostpitals/hostpital567eb8bfc3215.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:42:23', '0');
INSERT INTO `tbl_hospitals` VALUES ('12', 'Vathanak', 'មន្ទីពេទ្យVathanak', 'v', '', 'v', 'v', '1', '13', '12-Vathanak', 'uploads/hostpitals/hostpital567eb8f29e1ac.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 08:06:58', '0');
INSERT INTO `tbl_hospitals` VALUES ('13', 'baka', 'មន្ទីពេទ្យbaka', 'b', 'ss', '<p>b</p>', '<p>b</p>', '1', '13', '13-baka', 'uploads/hostpitals/hostpital567eb9209609f.jpg', '0', '0', '1', '0000-00-00 00:00:00', '2016-02-04 13:44:04', '0');
INSERT INTO `tbl_hospitals` VALUES ('14', 'Mama', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', '1', '13', '14-Mama', 'uploads/hostpitals/hostpital567eb94c64b87.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:10', '0');
INSERT INTO `tbl_hospitals` VALUES ('15', 'Seyha', 'មន្ទីពេទ្យseyha', 's', '', 's', 's', '1', '13', '15-Seyha', 'uploads/hostpitals/hostpital567eb97881b2b.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:46', '0');
INSERT INTO `tbl_hospitals` VALUES ('16', 'Digo', 'មន្ទីពេទ្យDigo', 'Mr Tekly', 'Tekly', '<p>d</p>', '<p>d</p>', '1', '13', '16-Digo', 'uploads/hostpitals/hostpital567eb9af56f47.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-14 08:27:00', '0');
INSERT INTO `tbl_hospitals` VALUES ('17', 'Java', 'មន្ទីពេទ្យjava', 'j', '', 'j', 'j', '1', '13', '17-Java', 'uploads/hostpitals/hostpital567eba115501f.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:54:11', '0');
INSERT INTO `tbl_hospitals` VALUES ('18', 'Kakan', 'មន្ទីពេទ្យkakan', 'k', '', 'k', 'k', '1', '13', '18-Kakan', 'uploads/hostpitals/hostpital567eba5082d43.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:51:37', '0');
INSERT INTO `tbl_hospitals` VALUES ('19', 'lala', 'មន្ទីពេទ្យlala', 'l', '', 'l', 'l', '1', '13', '19-lala', 'uploads/hostpitals/hostpital567ebb8bbda16.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 07:50:26', '0');
INSERT INTO `tbl_hospitals` VALUES ('20', 'pippo', 'មន្ទីពេទ្យpippo', 'p', 's', '<p>p</p>', '<p>p</p>', '1', '13', '20-pippo', 'uploads/hostpitals/hostpital567ebbbc8f732.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-02-26 02:17:33', '0');
INSERT INTO `tbl_hospitals` VALUES ('21', 'yoyo', 'មន្ទីពេទ្យyoyo', 'y', 'abc', 'y', 'y', '1', '14', '21-yoyo', 'uploads/hostpitals/hostpital567ebbf373176.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-24 17:49:58', '1');
INSERT INTO `tbl_hospitals` VALUES ('22', 'tata', 'មន្ទីពេទ្យtata', 'a', '', 'a', 'a', '1', '13', '22-tata', 'uploads/hostpitals/hostpital567ebc28d264f.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:52', '0');
INSERT INTO `tbl_hospitals` VALUES ('23', 'rara', 'មន្ទីពេទ្យ', 'a', 'a', '', '', '1', '13', '23-rara', 'uploads/hostpitals/hostpital567ebc56d9f2d.jpg', '1', '2', '1', '0000-00-00 00:00:00', '2016-03-12 19:54:19', '0');
INSERT INTO `tbl_hospitals` VALUES ('24', 'dadad', 'មន្ទីពេទ្យdadad', 'd', '', 'd', 'd', '1', '13', '24-dadad', 'uploads/hostpitals/hostpital567ebc7e94049.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:54', '0');
INSERT INTO `tbl_hospitals` VALUES ('25', 'vavaha', 'មន្ទីពេទ្យvavaha', 'v', '', 'v', 'v', '1', '13', '25-vavaha', 'uploads/hostpitals/hostpital567ebcf145939.jpg', '1', '3', '1', '0000-00-00 00:00:00', '2015-12-29 05:32:00', '0');
INSERT INTO `tbl_hospitals` VALUES ('26', 'virak', 'មន្ទីពេទ្យvirak', 'b', '', 'b', 'b', '1', '13', '26-virak', 'uploads/hostpitals/hostpital567ebd42c7a15.jpg', '1', '1', '1', '0000-00-00 00:00:00', '2015-12-29 05:30:48', '0');
INSERT INTO `tbl_hospitals` VALUES ('27', 'nana', 'មន្ទីពេទ្យnana', 'b', '', 'b', 'b', '1', '13', '27-nana', 'uploads/hostpitals/hostpital567ebd6e8d3b5.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:27:46', '0');
INSERT INTO `tbl_hospitals` VALUES ('28', 'domo', 'មន្ទីពេទ្យdomo', 'v', '', 'v', 'v', '1', '13', '28-domo', 'uploads/hostpitals/hostpital567ebdac70aa0.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:27:14', '0');
INSERT INTO `tbl_hospitals` VALUES ('29', 'baza', 'មន្ទីពេទ្យbaza', 'z', '', 'z', 'z', '1', '13', '29-baza', 'uploads/hostpitals/hostpital567ebe1e3f0f8.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2015-12-29 05:24:19', '0');
INSERT INTO `tbl_hospitals` VALUES ('30', 'neymar', 'មន្ទីពេទ្យneymar', 'n', '', 'n', 'n', '1', '13', '30-neymar', 'uploads/hostpitals/hostpital567ebe625e332.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:39', '0');
INSERT INTO `tbl_hospitals` VALUES ('31', 'modo', 'មន្ទីពេទ្យmodo', 'f', '', 'f', 'f', '1', '13', '31-modo', 'uploads/hostpitals/hostpital567ebe946bde8.jpg', '1', '5', '1', '0000-00-00 00:00:00', '2015-12-29 05:19:59', '0');
INSERT INTO `tbl_hospitals` VALUES ('32', 'mili', 'មន្ទីពេទ្យmili', 'f', '', 'n', 'a', '1', '13', '32-mili', 'uploads/hostpitals/hostpital567ebec789876.jpg', '1', '4', '1', '0000-00-00 00:00:00', '2015-12-29 05:21:33', '0');
INSERT INTO `tbl_hospitals` VALUES ('33', 'momo', 'មន្ទីពេទ្យ', 'm', '', 'm', 'm', '1', '13', '33-momo', 'uploads/hostpitals/hostpital567ebefc626ce.jpg', '1', '7', '1', '0000-00-00 00:00:00', '2015-12-26 17:23:24', '0');
INSERT INTO `tbl_hospitals` VALUES ('34', 'sokkema', 'មន្ទីពេទ្យ', 'k', '', 'k', 'k', '1', '13', '34-sokkema', 'uploads/hostpitals/hostpital567f494516128.jpg', '1', '6', '1', '0000-00-00 00:00:00', '2015-12-27 03:13:25', '0');
INSERT INTO `tbl_hospitals` VALUES ('35', 'Z8', 'Z8', 'c', 'C', '<p>c</p>', '<p>v</p>', '1', '14', '35-Z8', 'uploads/hostpitals/hostpital567f499cbdda1.jpg', '1', '0', '1', '0000-00-00 00:00:00', '2016-03-24 13:35:05', '1');
INSERT INTO `tbl_hospitals` VALUES ('36', 'ZJ', 'ZJ', 'sa', 'SA', '<p>sa</p>\r\n', '<p>sa</p>\r\n', '1', '13', '36-ZJ', 'uploads/hostpitals/hostpital567f49dec9ae1.jpg', '1', '2', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:12', '0');
INSERT INTO `tbl_hospitals` VALUES ('37', 'ZI', 'ZI', 'ra', 'RA', '<p>ra</p>\r\n', '<p>ra</p>\r\n', '1', '13', '37-ZI', 'uploads/hostpitals/hostpital567f4a2007a6d.jpg', '1', '1', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:15', '0');
INSERT INTO `tbl_hospitals` VALUES ('38', 'ZH', 'ZH', 'c', 'C', '<p>c</p>\r\n', '<p>c</p>\r\n', '1', '13', '38-ZH', 'uploads/hostpitals/hostpital567f4a54bc65a.jpg', '1', '3', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:17', '0');
INSERT INTO `tbl_hospitals` VALUES ('39', 'XYZ Health Center ', 'មណ្ឌលសុខភាព XYZ', 'v', 'V', '<p>v</p>', '<p>v</p>', '1', '13', 'xyz-health-center', 'uploads/hostpitals/hostpital567f4a886d3b9.jpg', '1', '4', '1', '0000-00-00 00:00:00', '2016-04-05 05:43:59', '0');
INSERT INTO `tbl_hospitals` VALUES ('40', 'ZF', 'ZF', 'ch', 'CH', '<p>ch</p>\r\n', '<p>ch</p>\r\n', '1', '13', '40-ZF', 'uploads/hostpitals/hostpital567f4ad206da2.jpg', '1', '5', '1', '0000-00-00 00:00:00', '2016-01-21 13:04:22', '0');
INSERT INTO `tbl_hospitals` VALUES ('41', 'ABCDEFGHILKJMNO ', 'ABCDEFGHILKJMNO ', 'k', 'K', '<p>k</p>', '<p>k</p>', '3', '7', 'abcdefghilkjmno', 'uploads/hostpitals/hostpital56fd191a862cb.jpg', '1', '6', '1', '0000-00-00 00:00:00', '2016-04-05 05:45:16', '0');
INSERT INTO `tbl_hospitals` VALUES ('42', 'ZD', 'ZD', 'vi', 'VI', '<p>vi</p>', '<p>vi</p>', '1', '13', '42-ZD', 'uploads/hostpitals/hostpital567f4b6edbaf7.jpg', '1', '7', '1', '0000-00-00 00:00:00', '2016-03-04 05:34:07', '0');
INSERT INTO `tbl_hospitals` VALUES ('43', 'ZC', 'ZC', 'gi', 'GI', '<p>gi</p>', '<p>gi</p>', '1', '14', '43-ZC', 'uploads/hostpitals/hostpital567f4ba3aa320.jpg', '1', '8', '1', '0000-00-00 00:00:00', '2016-03-13 10:01:40', '0');
INSERT INTO `tbl_hospitals` VALUES ('44', 'ZB', 'ZB', 'af', 'AF', '<p>af</p>', '<p>af</p>', '1', '14', '44-ZB', 'uploads/hostpitals/hostpital567f4bdd8c814.jpg', '1', '9', '1', '0000-00-00 00:00:00', '2016-03-13 10:01:32', '0');
INSERT INTO `tbl_hospitals` VALUES ('45', 'ZA', 'ZA', 'as', 'Mr XXXX', '<p>as</p>', '<p>as</p>', '1', '14', 'za', 'uploads/hostpitals/hostpital567f4c24b8f36.jpg', '1', '10', '1', '0000-00-00 00:00:00', '2016-04-07 11:43:55', '1');

-- ----------------------------
-- Table structure for `tbl_hospital_branches`
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
INSERT INTO `tbl_hospital_branches` VALUES ('1', '45', 'Head Hoffice', 'Head Hoffice', '1', 'N/A', '09533343434', 'koeun_math@yahoo.com', 'Phnom Penh', 'Phnom Penh', '', '', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-07-07 10:42:18', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('7', '44', 'Sample Test', 'Sample', '1', 'N/A', 'NA', 'a@f.v', 'XXXXXX', 'XXX', '', '', '10.932152', '104.798771', '1', '0000-00-00 00:00:00', '2016-02-28 09:23:55', '21', '6');
INSERT INTO `tbl_hospital_branches` VALUES ('8', '43', 'Takeo', 'Takeo', '1', 'XXX', '011111', 'takeo@xxx.com', 'Takeo', 'Takoe', '', '', '11.585263', '104.90025', '1', '0000-00-00 00:00:00', '2016-02-28 04:37:46', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('9', '42', 'Head Office', 'Head Office', '1', 'N/A', 'N/A', 'koeun_math@yahoo.com', 'Sen Sok', 'Sen Sok', '', '', '11.588374', '104.915357', '1', '0000-00-00 00:00:00', '2016-02-28 04:36:33', '2', '3');
INSERT INTO `tbl_hospital_branches` VALUES ('10', '1', 'EN Name', 'KH Name', '1', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:07', '2', '2');
INSERT INTO `tbl_hospital_branches` VALUES ('11', '3', 'Calmet', 'កាល់ម៉ែត', '1', 'Monday - Friday : 6:00 AM to 10:00 PM \r\n<br/>    Saturday - Sunday : 7:00 AM to 8:00 PM', '855 010 222 150, 855 010 123456\r\n<br /> &nbsp;&nbsp;855 017 567 099', 'contact@krupet.com', '# 123, St. 123, Sangkat Monorom, Khan 7 Makara,   Phnom Penh.', 'Phnom Penh', 'http://krupet.com/', '#', '11.575431', '104.920104', '1', '0000-00-00 00:00:00', '2016-06-19 06:09:34', '2', '168');
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
INSERT INTO `tbl_hospital_branches` VALUES ('53', '45', 'EN Name', 'KH Name', '0', '24 Hours', '0965767970', 'teakly@krupet.com', 'Phnom Penh', 'Phnom Penh', 'http://krupet.com/', '#', '11.585431', '104.926944', '1', '0000-00-00 00:00:00', '2016-03-13 09:59:09', '2', '2');

-- ----------------------------
-- Table structure for `tbl_hospital_categories`
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
INSERT INTO `tbl_hospital_categories` VALUES ('1', 'Public Institution ', 'ស្ថាប័នសាធារណៈ', '1', '2016-07-07 06:26:08');
INSERT INTO `tbl_hospital_categories` VALUES ('2', 'Private Institution ', 'ស្ថាប័នឯកជន', '1', null);
INSERT INTO `tbl_hospital_categories` VALUES ('3', 'NGOs', 'អង្គការសុខភាព', '1', null);

-- ----------------------------
-- Table structure for `tbl_hospital_codes`
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
) ENGINE=InnoDB AUTO_INCREMENT=4352 DEFAULT CHARSET=utf8;

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
INSERT INTO `tbl_hospital_codes` VALUES ('4306', '45', 'TA12314', '1', '2016-04-24 06:52:43', '2016-03-15 00:00:00');
INSERT INTO `tbl_hospital_codes` VALUES ('4307', '45', 'DA12513', '1', '2016-04-24 06:51:55', '2016-03-15 00:00:00');
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
INSERT INTO `tbl_hospital_codes` VALUES ('4322', '3', 'kalemeth201687404619419', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4323', '3', 'kalemeth201665385474563', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4324', '3', 'kalemeth201654877616800', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4325', '3', 'kalemeth201620855392031', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4326', '3', 'kalemeth201623068121746', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4327', '3', 'kalemeth201614167254976', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4328', '3', 'kalemeth201618267140984', '1', '2016-03-27 01:42:28', '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4329', '3', 'kalemeth201612528232783', '1', '2016-03-27 01:17:14', '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4330', '3', 'kalemeth201620708740688', '1', '2016-03-27 01:14:14', '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4331', '3', 'kalemeth201638113347068', '0', null, '2016-03-27 01:13:37');
INSERT INTO `tbl_hospital_codes` VALUES ('4332', '3', 'ka201653908493072', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4333', '3', 'ka201618280861154', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4334', '3', 'ka201663985731304', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4335', '3', 'ka201666234757230', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4336', '3', 'ka201629219015054', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4337', '3', 'ka201640954017453', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4338', '3', 'ka201620394747071', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4339', '3', 'ka201648459271155', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4340', '3', 'ka201669605358877', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4341', '3', 'ka201646064974405', '0', null, '2016-03-27 06:24:43');
INSERT INTO `tbl_hospital_codes` VALUES ('4342', '3', 'kal1073538860865', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4343', '3', 'kal1067400728278', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4344', '3', 'kal1019438492655', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4345', '3', 'kal1018981127105', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4346', '3', 'kal1022528712973', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4347', '3', 'kal1083385131322', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4348', '3', 'kal1065067997948', '0', null, '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4349', '3', 'kal1042433615476', '1', '2016-03-27 06:29:23', '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4350', '3', 'kal1042677015476', '1', '2016-03-27 06:28:32', '2016-03-27 06:26:24');
INSERT INTO `tbl_hospital_codes` VALUES ('4351', '3', 'kal1023497209698', '0', null, '2016-03-27 06:26:24');

-- ----------------------------
-- Table structure for `tbl_hospital_departments`
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
-- Table structure for `tbl_hospital_doctors`
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
INSERT INTO `tbl_hospital_doctors` VALUES ('15', '3', '9', '0', '2016-05-24 01:59:39', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_hospital_galleries`
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
-- Table structure for `tbl_hospital_ratings`
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
  `is_published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hospital_ratings
-- ----------------------------
INSERT INTO `tbl_hospital_ratings` VALUES ('561', '3', '3', '', '1', '2016-03-25', '', '2016-01-01 08:09:14', '0', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('562', '3', '3', '', '1', '2016-03-23', 'no comment', '2015-12-06 08:11:37', '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('563', '3', '3', 'kalemeth201612528232783', '1', '2016-03-26', 'This hospital is not good', '2016-03-27 01:17:14', '0', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('564', '3', '4', 'kalemeth201618267140984', '1', '2016-03-17', 'i do not like this hospital', '2016-03-27 01:42:28', '0', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('565', '1', '3', '', '1', '2016-03-18', 'no', '2016-03-27 02:01:51', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('566', '1', '5', '', '1', '2007-07-11', 'This is comment', '2016-03-27 03:25:16', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('567', '41', '3', '', '1', '1993-02-08', 'I love it', '2016-03-27 03:49:37', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('568', '3', '6', 'kal1042677015476', '2', '2016-03-15', 'Cambodia ', '2016-03-27 06:28:32', '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('569', '1', '6', '', '1', '2016-03-16', 'ថថ', '2016-03-27 06:39:37', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('570', '39', '7', '', '3', '0000-00-00', 'Good service', '2016-04-03 06:57:13', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('571', '42', '4', '', '3', '2016-04-05', 'i can rate', '2016-04-10 04:48:57', '0', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('572', '40', '3', '', '1', '2016-04-18', 'abc', '2016-04-24 06:10:29', '1', '1');
INSERT INTO `tbl_hospital_ratings` VALUES ('573', '40', '5', '', '1', '2016-04-14', 'kjhkjh', '2016-04-24 06:15:14', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('574', '45', '6', 'DA12513', '2', '2015-05-03', '', '2016-04-24 06:51:55', '1', '0');
INSERT INTO `tbl_hospital_ratings` VALUES ('575', '39', '8', '', '1', '2016-05-26', 'Good', '2016-05-26 11:04:54', '1', '1');

-- ----------------------------
-- Table structure for `tbl_hospital_rating_scores`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_rating_scores`;
CREATE TABLE `tbl_hospital_rating_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hospital_rating` int(11) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `score` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1589 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_hospital_rating_scores
-- ----------------------------
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1521', '561', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1522', '561', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1523', '561', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1524', '561', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1525', '562', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1526', '562', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1527', '562', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1528', '562', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1529', '563', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1530', '563', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1531', '563', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1532', '563', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1533', '564', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1534', '564', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1535', '564', '3', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1536', '564', '4', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1537', '565', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1538', '565', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1539', '565', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1540', '565', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1541', '566', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1542', '566', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1543', '566', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1544', '566', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1545', '567', '1', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1546', '567', '2', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1547', '567', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1548', '567', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1549', '568', '1', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1550', '568', '2', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1551', '568', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1552', '568', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1553', '569', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1554', '569', '2', '0');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1555', '569', '3', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1556', '569', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1557', '570', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1558', '570', '2', '0');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1559', '570', '3', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1560', '570', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1561', '570', '5', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1562', '571', '1', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1563', '571', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1564', '571', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1565', '571', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1566', '571', '5', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1567', '572', '1', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1568', '572', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1569', '572', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1570', '572', '4', '2');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1571', '572', '5', '1');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1572', '573', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1573', '573', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1574', '573', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1575', '573', '4', '4');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1576', '573', '5', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1577', '574', '1', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1578', '574', '2', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1579', '574', '3', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1580', '574', '4', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1581', '574', '5', '3');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1582', '575', '1', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1583', '575', '2', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1584', '575', '3', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1585', '575', '4', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1586', '575', '5', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1587', '575', '6', '5');
INSERT INTO `tbl_hospital_rating_scores` VALUES ('1588', '575', '7', '5');

-- ----------------------------
-- Table structure for `tbl_hospital_services`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_services`;
CREATE TABLE `tbl_hospital_services` (
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_services
-- ----------------------------
INSERT INTO `tbl_hospital_services` VALUES ('71', '3', '1', '4', '12$', '', '', '1', '0000-00-00 00:00:00', '2016-04-09 19:17:17');
INSERT INTO `tbl_hospital_services` VALUES ('72', '3', '4', '10', '13$', 'k', 'l', '1', '0000-00-00 00:00:00', '2016-04-09 19:49:25');

-- ----------------------------
-- Table structure for `tbl_hospital_specialists`
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
-- Table structure for `tbl_hospital_types`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_hospital_types`;
CREATE TABLE `tbl_hospital_types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_hospital_category` int(10) unsigned DEFAULT '0',
  `en_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `kh_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_published` tinyint(4) DEFAULT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_hospital_types
-- ----------------------------
INSERT INTO `tbl_hospital_types` VALUES ('7', '3', 'Type A', 'ប្រភេទ ក', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('8', '3', 'NGO Type B', 'NGO Type B', '0', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('9', '8', 'NGO Type C', 'NGO Type C', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('10', '2', 'Laboratory', 'មន្ទីរពិសោធន៍', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('11', '2', 'Hospital', 'មន្ទីរពេទ្យ', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('12', '2', 'Clinic', 'គ្លីនិក', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_hospital_types` VALUES ('13', '1', 'Health Center ', 'មណ្ឌលសុខភាព', '1', '2016-07-07 08:32:33');
INSERT INTO `tbl_hospital_types` VALUES ('14', '1', 'Hospital', 'មន្ទីរពេទ្យ', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_ideas`
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
-- Table structure for `tbl_languages`
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
-- Table structure for `tbl_layouts`
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
-- Table structure for `tbl_layout_appears`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_layout_appears`;
CREATE TABLE `tbl_layout_appears` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_page` int(11) NOT NULL,
  `id_layout` int(11) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `modified_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;

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
-- Table structure for `tbl_newsletters`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletters`;
CREATE TABLE `tbl_newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_dt` datetime NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `sent_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_newsletters
-- ----------------------------
INSERT INTO `tbl_newsletters` VALUES ('1', 'asd', '0000-00-00 00:00:00', '0', '2016-03-30 18:11:50');

-- ----------------------------
-- Table structure for `tbl_newsletter_blogs`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter_blogs`;
CREATE TABLE `tbl_newsletter_blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `id_newsletter` int(10) NOT NULL,
  `created_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_newsletter_blogs
-- ----------------------------
INSERT INTO `tbl_newsletter_blogs` VALUES ('1', '1', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_newsletter_blogs` VALUES ('2', '2', '1', '0000-00-00 00:00:00');
INSERT INTO `tbl_newsletter_blogs` VALUES ('3', '12', '1', '2016-04-01 15:15:57');
INSERT INTO `tbl_newsletter_blogs` VALUES ('4', '30', '1', '2016-04-01 15:26:34');

-- ----------------------------
-- Table structure for `tbl_pages`
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
INSERT INTO `tbl_pages` VALUES ('22', 'hospital-rating', 'Hospital Rating', 'uploads/banners/banner_56a64fd3475f1.jpg', '1', '2016-03-26 01:44:26');

-- ----------------------------
-- Table structure for `tbl_partners`
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_partners
-- ----------------------------
INSERT INTO `tbl_partners` VALUES ('15', '1', 'sa', 'asdf', 'a', 'uploads/partners/partner_56f7ab5fc52f7.jpg', '1', '2016-03-27 09:43:59', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('9', '1', 'asd', 'a.c', 'aa', 'uploads/partners/partner_56cac01faf243.jpg', '0', '2016-02-22 09:00:31', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_partners` VALUES ('10', '2', 'ssa', 'a.c', 'aaa', 'uploads/partners/partner_56cb10ec01a39.jpg', '0', '2016-02-22 14:45:16', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('11', '1', 'Sat', 'Sat', 'Sathya', 'uploads/partners/partner_56cc489a41935.jpg', '0', '2016-02-23 12:55:06', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('12', '1', 'ty', 'ty', 'sa', 'uploads/partners/partner_56cc48ae2fa90.jpg', '0', '2016-02-23 12:55:26', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('13', '2', 'Da', 'Da', 'Re', 'uploads/partners/partner_56cc48cf30f02.jpg', '0', '2016-02-23 12:55:59', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('14', '2', 'Rahaya', 'Rahya', 'DDAA', 'uploads/partners/partner_56cc490ac254d.jpg', '0', '2016-02-23 12:56:58', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('16', '2', '1', '1', '1', 'uploads/partners/partner_56f786d6424d0.jpg', '1', '2016-03-27 07:08:06', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('17', '2', '1', '1', '1', 'uploads/partners/partner_56fd07a723ea1.jpg', '1', '2016-03-31 11:19:03', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('18', '1', '1', '1', '1', 'uploads/partners/partner_56ff4253e9aca.jpg', '1', '2016-04-02 03:53:55', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('19', '2', '2', '2', '2', 'uploads/partners/partner_56ff426db9759.jpg', '1', '2016-04-02 03:54:21', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_partners` VALUES ('20', '2', 'w', 'w', 'w', 'uploads/partners/partner_56ff429bdddfd.jpg', '0', '2016-04-02 03:55:07', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `tbl_phamacies`
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
-- Table structure for `tbl_phamacy_galleries`
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
-- Table structure for `tbl_phones`
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
INSERT INTO `tbl_phones` VALUES ('2', '5', '2', '171', 'police Ruessey Kev', 'police Ruessey Kev', '097 778 0029', '1', '2016-03-18 05:55:33', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('3', '5', '2', '168', 'police Tuol Kouk', 'police Tuol Kouk', '097 778 0028', '1', '2016-03-18 05:53:28', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('4', '5', '2', '171', 'Police Roeusy Keo', 'Police Roeusy Keo', '0977780030', '1', '2016-03-18 03:43:20', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('5', '5', '2', '167', '7 Makara', '7 Makara', '097 778 0027', '1', '2016-03-18 03:44:34', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('6', '5', '2', '3', 'Police Doun Penh', 'Police Doun Penh', '012 999 999', '1', '2016-03-18 03:47:25', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('7', '5', '2', '169', 'Police Dangkao', 'Police Dangkao', '097 778 0030', '1', '2016-03-18 05:56:45', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('8', '7', '2', '165', 'Police Chamkar Mon', 'Police Chamkar Mon', '097 778 0031', '1', '2016-03-18 05:57:36', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('9', '5', '2', '4', 'Police Sen sok', 'Police Sen sok ', '097 778 0033', '1', '2016-03-18 05:58:29', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('10', '6', '2', '2', 'Health service Tek Thla', 'Health service Tek Thla', '012 587 344 / 012 718 324', '1', '2016-03-18 06:02:04', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('11', '6', '2', '166', 'Health service Doun Pemh ', 'Health service Doun Penh', '012 788 430 / 011 770 786', '1', '2016-03-18 06:03:57', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('12', '6', '2', '165', 'Health service Chamkar Mon', 'Health service Chamkar Mon', '012 830 271 / 012 838 619', '1', '2016-03-18 06:05:18', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('13', '6', '2', '172', 'Health service cambodai\'s hope', 'Health service cambodai\'s hope', '023 986 715 / 012 844 449 / 011 657 148', '0', '2016-03-18 06:12:54', '0000-00-00 00:00:00', '0');
INSERT INTO `tbl_phones` VALUES ('14', '7', '2', '169', 'Krupet', 'Krupet', '017 567 099', '1', '2016-04-03 08:03:07', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('15', '7', '2', '167', 'Krupet', 'Krupet', '017 567 099', '1', '2016-04-03 08:02:37', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('16', '7', '2', '171', 'Krupet', 'Krupet', '017 567 099', '1', '2016-04-03 08:02:06', '0000-00-00 00:00:00', '1');
INSERT INTO `tbl_phones` VALUES ('17', '7', '2', '4', 'Krupet', 'Krupet', '017 567 099', '1', '2016-04-03 08:01:41', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for `tbl_phone_types`
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
INSERT INTO `tbl_phone_types` VALUES ('3', 'Hospital', 'Hospital', '0', '0000-00-00 00:00:00', '2016-03-31 08:16:35');
INSERT INTO `tbl_phone_types` VALUES ('4', 'Fire Fighter', 'Fire Fighter', '1', '0000-00-00 00:00:00', '2016-03-18 03:36:50');
INSERT INTO `tbl_phone_types` VALUES ('5', 'Traffic Police', 'Traffic Police', '1', '0000-00-00 00:00:00', '2016-03-18 03:37:22');
INSERT INTO `tbl_phone_types` VALUES ('6', 'Health Service', 'Health Service', '0', '0000-00-00 00:00:00', '2016-03-31 08:15:28');
INSERT INTO `tbl_phone_types` VALUES ('7', 'NGOs', 'NGOs', '1', '0000-00-00 00:00:00', '2016-03-31 10:04:22');

-- ----------------------------
-- Table structure for `tbl_programes`
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_programes
-- ----------------------------
INSERT INTO `tbl_programes` VALUES ('1', 'sadfasd', 'sdafasd', 'https://www.facebook.com/Krupetcom-137344823272389/', 'uploads/programes/programe_567f9536c51c9.jpg', '0', '2016-01-12 04:36:16', '4', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('4', 'a', 'b', 'https://www.facebook.com/Krupetcom-137344823272389/?fref=ts', 'uploads/programes/programe_56f7a3ba262e3.jpg', '0', '2016-03-27 09:11:35', '5', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('5', 'x', 'x', 'https://www.facebook.com/Krupetcom-137344823272389/?fref=ts', 'uploads/programes/programe_56f7a32964157.jpg', '1', '2016-04-02 04:03:11', '3', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('6', '1', '1', '1', 'uploads/programes/programe_5700cbcadc48c.jpg', '1', '2016-04-03 07:52:42', '2', '0000-00-00 00:00:00');
INSERT INTO `tbl_programes` VALUES ('7', 'a', 'a', 'a', 'uploads/programes/programe_572081ae0e0a7.jpg', '1', '2016-04-27 09:09:02', '1', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tbl_provinces`
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_provinces
-- ----------------------------
INSERT INTO `tbl_provinces` VALUES ('1', 'kratie', 'Kratie', 'ក្រចេះ', 'adslfj', 'asdfas', '1', '0000-00-00 00:00:00', '2016-07-06 10:47:10', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('2', 'phnom penh', 'Phnom Penh', 'ភ្នំពេញ', '', '', '1', '2015-12-23 01:37:18', '2015-12-22 01:37:24', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('3', '', 'Banteay Meanchey', 'បន្ទាយមានជ័យ', 'asr', 'a', '0', '0000-00-00 00:00:00', '2015-12-27 17:58:12', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('4', '', 'Battambang', 'បាត់ដំបង', 'a', 'a', '1', '0000-00-00 00:00:00', '2015-12-27 17:58:43', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('5', '', 'Kampong Cham', 'ខេត្តកំពង់ចាម', 'df', 'd', '0', '0000-00-00 00:00:00', '2015-12-27 17:59:07', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('6', '', 'Kampong Chhnang', 'កំពង់ឆ្នាំង', 'a', 'd', '0', '0000-00-00 00:00:00', '2015-12-27 17:59:35', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('7', '', 'Kampong Speu', 'កំពង់ស្ពឺ', 'a', 'za', '0', '0000-00-00 00:00:00', '2015-12-27 18:00:01', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('8', '', 'Kampong Thom', 'កំពង់ធំ', 'a', 's', '0', '0000-00-00 00:00:00', '2015-12-27 18:00:24', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('9', '', 'Kampot', 'កំពត', 'q', 'q', '0', '0000-00-00 00:00:00', '2015-12-27 18:00:55', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('10', '', 'Kandal', 'កណ្តាល', '1', '1', '1', '0000-00-00 00:00:00', '2015-12-27 18:01:22', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('11', '', 'Koh Kong', 'កោះកុង', 'q', 'w', '0', '0000-00-00 00:00:00', '2015-12-27 18:01:47', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('12', '', 'Mondul Kiri', 'មណ្ឌលគិរី', 'e', 'e', '0', '0000-00-00 00:00:00', '2015-12-27 18:02:13', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('13', '', 'Ouddar Meanchey', 'ឧត្តរមានជ័យ', '1', '2', '0', '0000-00-00 00:00:00', '2015-12-27 18:02:40', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('14', '', 'Preah Vihear', 'ព្រះវិហារ', '33', '3', '0', '0000-00-00 00:00:00', '2015-12-27 18:03:03', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('15', '', 'Prey Veng', 'ព្រៃវែង', 'v', 'v', '0', '0000-00-00 00:00:00', '2015-12-27 18:03:28', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('16', '', 'Pursat', 'ពោធិសាត់', 'Pursat', 'Pursat', '0', '0000-00-00 00:00:00', '2015-12-27 18:03:54', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('17', '', 'Ratanak Kiri', 'រតនគិរី', 'Ratanak Kiri', 'Ratanak Kiri', '0', '0000-00-00 00:00:00', '2015-12-27 18:04:17', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('18', '', 'Siem Reap', 'សៀមរាប', 'Siem Reap', 'Siem Reap', '1', '0000-00-00 00:00:00', '2015-12-27 18:04:44', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('19', '', 'Stung Treng', 'ស្ទឹងត្រែង', 'Stung Treng', 'Stung TrengStung Treng', '0', '0000-00-00 00:00:00', '2015-12-27 18:05:04', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('20', '', 'Svay Rieng', 'ស្វាយរៀង', 'Svay Rieng', 'Svay Rieng', '0', '0000-00-00 00:00:00', '2015-12-27 18:05:25', '0', '0');
INSERT INTO `tbl_provinces` VALUES ('21', '', 'Takeo', 'តាកែវ', 'Takeo', 'Takeo', '0', '0000-00-00 00:00:00', '2016-02-25 09:45:20', '1', '1');
INSERT INTO `tbl_provinces` VALUES ('22', '', 'a', 'a', '', '', '0', '0000-00-00 00:00:00', '2016-07-06 10:47:39', '0', '0');

-- ----------------------------
-- Table structure for `tbl_raters`
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_raters
-- ----------------------------
INSERT INTO `tbl_raters` VALUES ('3', 'Khouch Koeun', 'koeun_math@yahoo.com', '791351847636392', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlf1/v/t1.0-1/p50x50/94403…f8cb5f0b8e&oe=579281EB&__gda__=1467679386_682267c1515838b5f11ce927b1591cb4', '2016-03-24 05:51:11', '');
INSERT INTO `tbl_raters` VALUES ('4', 'ToNon Oscar', 'sathyayoeun02@gmail.com', '491470497703747', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xta1/v/t1.0-1/p50x50/12249914_455992864584844_1517971928018909765_n.jpg?oh=e09756e66fdd4942c2a23cb4365c7e32&oe=577661AA&__gda__=1468975195_36fd7aa26ed88e90587dd3d7c7854f95', '2016-03-27 01:42:28', '');
INSERT INTO `tbl_raters` VALUES ('5', 'Khun Seiha', 'seihakhun@gmail.com', '927957360586203', 'https://z-1-scontent.xx.fbcdn.net/hprofile-xtf1/v/t1.0-1/c8.0.50.50/p50x50/11270115_788101901238417_3813073539244436306_n.jpg?oh=fcf8c7de8a3d99058823aaef6757be21&oe=5779F527', '2016-03-27 03:25:16', '');
INSERT INTO `tbl_raters` VALUES ('6', 'Tekly Sun', 'teklysun2222@gmail.com', '911315755655809', 'https://scontent.xx.fbcdn.net/hprofile-xtf1/v/t1.0-1/p50x50/936642_860490374071681_7526942316143763640_n.jpg?oh=20c6f34e88a6c719825cb4aea4a86802&oe=577628DA', '2016-03-27 06:28:32', '');
INSERT INTO `tbl_raters` VALUES ('7', 'Sun Heng', 'sunhengim@gmail.com', '1109984822392392', 'https://scontent.xx.fbcdn.net/hprofile-xft1/v/t1.0-1/p50x50/1457601_1054735211250687_8943890589979703317_n.jpg?oh=83f3354538e2648122a0896527018340&oe=5772D154', '2016-04-03 06:57:13', '');
INSERT INTO `tbl_raters` VALUES ('8', 'Kim Dean', 'kakoikim@gmail.com', '889625961149142', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/13179399_883167421794996_6100331939937495549_n.jpg?oh=74bd770a190a6a56a0f01f5c69f42cd6&oe=57C63D22', '2016-05-26 11:04:54', '');

-- ----------------------------
-- Table structure for `tbl_servay_questions`
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_servay_questions
-- ----------------------------
INSERT INTO `tbl_servay_questions` VALUES ('1', '1', 'Cleanliness ', 'អនាម័យ', 'How satisfied are you with the cleanliness of the area you were treated in?', 'How satisfied are you with the cleanliness of the area you were treated in?', '1', '0000-00-00 00:00:00', '2016-03-31 09:09:52');
INSERT INTO `tbl_servay_questions` VALUES ('2', '1', 'Staff Co-operation  ', 'Staff Co-operation  ', 'How satisfied are you that the hospital staff worked well together?', 'How satisfied are you that the hospital staff worked well together?', '1', '0000-00-00 00:00:00', '2016-03-31 09:11:18');
INSERT INTO `tbl_servay_questions` VALUES ('3', '1', 'Dignity & Respect ', 'សេចក្តីថ្លៃថ្នូរ និង ការគោរព', 'How satisfied are you that you were treated with dignity and respect by the staff?', 'How satisfied are you that you were treated with dignity and respect by the staff?', '1', '0000-00-00 00:00:00', '2016-03-31 09:12:32');
INSERT INTO `tbl_servay_questions` VALUES ('4', '1', 'Doctor Professionalism   ', 'វិជ្ជាជីវៈ', 'How satisfied are you that professionalism that you receive from doctor?', 'How satisfied are you that professionalism that you receive from doctor?', '1', '0000-00-00 00:00:00', '2016-03-31 09:13:53');
INSERT INTO `tbl_servay_questions` VALUES ('5', '1', 'Fee', 'ថ្លៃសេវា', 'How satisfied are you the fee charged from hospital ?', 'How satisfied are you the fee charged from hospital ?', '1', '0000-00-00 00:00:00', '2016-03-31 09:14:44');
INSERT INTO `tbl_servay_questions` VALUES ('6', '1', 'Waiting Time', 'Waiting Time', 'How satisfied are you with waiting time?', 'How satisfied are you with waiting time?', '1', '0000-00-00 00:00:00', '2016-04-24 08:16:10');
INSERT INTO `tbl_servay_questions` VALUES ('7', '1', 'Doctor Explanation ', 'Doctor Explanation ', 'How understandable are you with explanation? ', 'How understandable are you with explanation? ', '1', '0000-00-00 00:00:00', '2016-04-24 08:24:10');

-- ----------------------------
-- Table structure for `tbl_services`
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
-- Table structure for `tbl_service_categores`
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
-- Table structure for `tbl_sex`
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
-- Table structure for `tbl_specialists`
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
INSERT INTO `tbl_specialists` VALUES ('1', 'Addiction psychiatrist', 'វិកលចរិតញៀន', '', '', '1', '2015-12-15 08:11:19', '2016-05-22 00:58:56');
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
-- Table structure for `tbl_subscribers`
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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_subscribers
-- ----------------------------
INSERT INTO `tbl_subscribers` VALUES ('20', 'kh', '1', 'kljl@ykkj.com', '2016-03-26 18:47:49', '0000-00-00 00:00:00', '56f6cb4547ee2');
INSERT INTO `tbl_subscribers` VALUES ('19', 'kh', '1', 'koeun_math@yhoo.com', '2016-03-26 18:45:15', '2016-03-26 18:48:28', '56f6caabb395e');
INSERT INTO `tbl_subscribers` VALUES ('21', 'kh', '1', 'koeun_math@yahho.com', '2016-03-27 01:22:27', '0000-00-00 00:00:00', '56f735d3eb5e8');

-- ----------------------------
-- Table structure for `tbl_tags`
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
-- Table structure for `tbl_vertical_ads_displays`
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
INSERT INTO `tbl_vertical_ads_displays` VALUES ('25', '19', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:06:51');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('26', '9', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:11:16');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('27', '7', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:11:25');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('28', '8', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:12:31');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('29', '11', '3', '1', '', '0', '0000-00-00 00:00:00', '2016-03-13 05:14:22');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('30', '12', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:16:55');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('31', '15', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:17:28');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('32', '17', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:17:57');
INSERT INTO `tbl_vertical_ads_displays` VALUES ('33', '16', '3', '1', '', '1', '0000-00-00 00:00:00', '2016-03-13 05:20:46');

-- ----------------------------
-- View structure for `view_blog_for_search`
-- ----------------------------
DROP VIEW IF EXISTS `view_blog_for_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog_for_search` AS select `b`.`slug` AS `slug`,`b`.`id_category` AS `id_category`,`b`.`en_title` AS `en_title`,`b`.`kh_title` AS `kh_title`,`b`.`en_pre_content` AS `en_pre_content`,`b`.`kh_pre_content` AS `kh_pre_content`,`b`.`image` AS `image`,`b`.`created_dt` AS `created_dt`,`t`.`en_name` AS `en_tag`,`t`.`kh_name` AS `kh_tag` from ((`tbl_blogs` `b` join `tbl_blog_tags` `b_t` on((`b_t`.`id_blog` = `b`.`id`))) join `tbl_tags` `t` on((`t`.`id` = `b_t`.`id_tag`))) where ((`b`.`is_published` = 1) and (`t`.`is_published` = 1));

-- ----------------------------
-- View structure for `view_doctors_for_searching`
-- ----------------------------
DROP VIEW IF EXISTS `view_doctors_for_searching`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctors_for_searching` AS select `d`.`id` AS `id`,`d`.`slug` AS `slug`,`d`.`en_name` AS `en_name`,`d`.`kh_name` AS `kh_name`,`d`.`en_title` AS `en_title`,`d`.`kh_title` AS `kh_title`,`d`.`en_degree` AS `en_degree`,`d`.`kh_degree` AS `kh_degree`,`d`.`phone` AS `phone`,`d`.`email` AS `email`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`en_experien` AS `en_experience`,`d`.`kh_experien` AS `kh_experience`,`d`.`image` AS `image`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`di`.`en_name` AS `en_distrit`,`di`.`kh_name` AS `kh_distrit` from (((`tbl_doctors` `d` join `tbl_specialists` `s` on((`s`.`id` = `d`.`id_specialist`))) join `tbl_provinces` `p` on((`p`.`id` = `d`.`id_province`))) join `tbl_distrits` `di` on((`di`.`id` = `d`.`id_distrit`))) where ((`d`.`is_published` = 1) and (`s`.`is_published` = 1) and (`di`.`is_published` = 1) and (`p`.`is_published` = 1));

-- ----------------------------
-- View structure for `view_doctor_services`
-- ----------------------------
DROP VIEW IF EXISTS `view_doctor_services`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_doctor_services` AS select `d_s`.`id_doctor` AS `id_doctor`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`d_s`.`price` AS `price`,`d_s`.`en_note` AS `en_note`,`d_s`.`kh_note` AS `kh_note` from (`tbl_doctor_services` `d_s` join `tbl_services` `s` on((`s`.`id` = `d_s`.`id_service`)));

-- ----------------------------
-- View structure for `view_hospitals_for_searhing`
-- ----------------------------
DROP VIEW IF EXISTS `view_hospitals_for_searhing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospitals_for_searhing` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `en_type`,`t`.`kh_name` AS `kh_type`,`s`.`en_name` AS `en_specification`,`s`.`kh_name` AS `kh_specification`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`p`.`en_name` AS `en_province`,`p`.`kh_name` AS `kh_province`,`d`.`en_name` AS `en_distrit`,`d`.`kh_name` AS `kh_distrit` from (((((((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_specialists` `h_s` on((`h`.`id` = `h_s`.`id_hospital`))) join `tbl_specialists` `s` on((`h_s`.`id_specialist` = `s`.`id`))) join `tbl_hospital_branches` `b` on((`h`.`id` = `b`.`id_hospital`))) join `tbl_provinces` `p` on((`b`.`id_province` = `p`.`id`))) join `tbl_distrits` `d` on((`b`.`id_distrit` = `d`.`id`))) where ((`h`.`is_published` = 1) and (`p`.`is_published` = 1) and (`d`.`is_published` = 1) and (`b`.`is_default` = 1));

-- ----------------------------
-- View structure for `view_hospital_doctors`
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_doctors`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_doctors` AS select `h_d`.`id_hospital` AS `id_hospital`,`h_d`.`id_doctor` AS `id_doctor`,`d`.`en_name` AS `en_name`,`d`.`slug` AS `slug`,`d`.`kh_name` AS `kh_name`,`s`.`en_name` AS `en_specialist`,`s`.`kh_name` AS `kh_specialist`,`d`.`en_background` AS `en_background`,`d`.`kh_background` AS `kh_background`,`d`.`image` AS `image` from ((`tbl_hospital_doctors` `h_d` join `tbl_doctors` `d` on((`h_d`.`id_doctor` = `d`.`id`))) join `tbl_specialists` `s` on((`d`.`id_specialist` = `s`.`id`)));

-- ----------------------------
-- View structure for `view_hospital_info`
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_info` AS select `h`.`id` AS `id`,`h`.`slug` AS `slug`,`h`.`en_name` AS `en_name`,`h`.`kh_name` AS `kh_name`,`h`.`en_director` AS `en_director`,`h`.`kh_director` AS `kh_director`,`h`.`en_background` AS `en_background`,`h`.`kh_background` AS `kh_background`,`h`.`image` AS `image`,`h`.`id_hospital_category` AS `id_hospital_category`,`b`.`phone` AS `phone`,`b`.`email` AS `email`,`b`.`en_address` AS `en_address`,`b`.`kh_address` AS `kh_address`,`b`.`website` AS `website`,`b`.`lat` AS `lat`,`b`.`lon` AS `lon`,`b`.`working_hours` AS `working_hours`,`c`.`en_name` AS `en_cat`,`c`.`kh_name` AS `kh_cat`,`t`.`en_name` AS `kh_type`,`t`.`kh_name` AS `en_type` from (((`tbl_hospitals` `h` join `tbl_hospital_categories` `c` on((`h`.`id_hospital_category` = `c`.`id`))) join `tbl_hospital_types` `t` on((`h`.`id_hospital_type` = `t`.`id`))) join `tbl_hospital_branches` `b` on((`b`.`id_hospital` = `h`.`id`))) where ((`h`.`is_published` = 1) and (`b`.`is_default` = 1));

-- ----------------------------
-- View structure for `view_hospital_rating_score`
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_rating_score`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_rating_score` AS select `q`.`en_name` AS `name`,`q`.`en_question` AS `question`,`h_r_s`.`score` AS `score`,`h_r_s`.`id_hospital_rating` AS `id_hospital_rating` from (`tbl_servay_questions` `q` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_question` = `q`.`id`)));

-- ----------------------------
-- View structure for `view_hospital_services`
-- ----------------------------
DROP VIEW IF EXISTS `view_hospital_services`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_hospital_services` AS select `h_s`.`id_hospital` AS `id_hospital`,`d`.`en_name` AS `en_department`,`d`.`kh_name` AS `kh_department`,`s`.`en_name` AS `en_name`,`s`.`kh_name` AS `kh_name`,`h_s`.`price` AS `price`,`h_s`.`en_note` AS `en_note`,`h_s`.`kh_note` AS `kh_note` from ((`tbl_hospital_services` `h_s` join `tbl_services` `s` on((`s`.`id` = `h_s`.`id_service`))) join `tbl_service_categores` `d` on((`d`.`id` = `s`.`id_service_category`)));

-- ----------------------------
-- View structure for `view_phamacy_for_search`
-- ----------------------------
DROP VIEW IF EXISTS `view_phamacy_for_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_phamacy_for_search` AS select `ph`.`id` AS `id`,`ph`.`slug` AS `slug`,`ph`.`image` AS `image`,`ph`.`en_name` AS `en_name`,`ph`.`kh_name` AS `kh_name`,`ph`.`email` AS `email`,`ph`.`phone` AS `phone`,`pr`.`en_name` AS `en_province_name`,`pr`.`kh_name` AS `kh_province_name`,`d`.`en_name` AS `en_distrit_name`,`d`.`kh_name` AS `kh_distrit_name` from ((`tbl_phamacies` `ph` join `tbl_provinces` `pr` on((`pr`.`id` = `ph`.`id_province`))) join `tbl_distrits` `d` on((`d`.`id` = `ph`.`id_distrit`))) where ((`ph`.`is_published` = 1) and (`pr`.`is_published` = 1) and (`d`.`is_published` = 1));

-- ----------------------------
-- View structure for `view_rating_data`
-- ----------------------------
DROP VIEW IF EXISTS `view_rating_data`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rating_data` AS select `h_r`.`code` AS `code`,`h_r`.`is_recommended` AS `is_recommended`,sum(`h_r_s`.`score`) AS `total_score`,count(`h_r_s`.`id`) AS `num_of_score_divider`,`h_r`.`id_hospital` AS `id_hospital` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r`.`id_hospital`;

-- ----------------------------
-- View structure for `view_rating_for_hospital_search`
-- ----------------------------
DROP VIEW IF EXISTS `view_rating_for_hospital_search`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_rating_for_hospital_search` AS select `h_r`.`id_hospital` AS `id_hospital`,`h_r`.`is_recommended` AS `is_recommended`,avg(`h_r_s`.`score`) AS `average` from (`tbl_hospital_ratings` `h_r` join `tbl_hospital_rating_scores` `h_r_s` on((`h_r_s`.`id_hospital_rating` = `h_r`.`id`))) group by `h_r_s`.`id_hospital_rating`;
