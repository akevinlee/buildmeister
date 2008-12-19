Database buildmeister_com_1
# phpMyAdmin MySQL-Dump
# version 2.2.1-dev
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: members-paid-b.db.lyceu.net:3317
# Generation Time: Aug 06, 2008 at 04:58 PM
# Server version: 3.23.33
# PHP Version: 4.3.9
# Database : `buildmeister_com_1`
# --------------------------------------------------------

#
# Table structure for table `active_guests`
#

DROP TABLE IF EXISTS active_guests;
CREATE TABLE active_guests (
  ip varchar(15) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY  (ip)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `active_guests`
#

INSERT INTO active_guests VALUES ('127.0.0.1',1195494654);
# --------------------------------------------------------

#
# Table structure for table `active_users`
#

DROP TABLE IF EXISTS active_users;
CREATE TABLE active_users (
  username varchar(30) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY  (username)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `active_users`
#

# --------------------------------------------------------

#
# Table structure for table `article_comm`
#

DROP TABLE IF EXISTS article_comm;
CREATE TABLE article_comm (
  id mediumint(8) unsigned NOT NULL auto_increment,
  art_id mediumint(8) unsigned NOT NULL,
  date_posted datetime NOT NULL,
  posted_by varchar(32) NOT NULL,
  `comment` mediumtext NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

#
# Dumping data for table `article_comm`
#

INSERT INTO article_comm VALUES (1,24,'2008-03-10 19:19:35','kermitfrog','[plug] Another good Subversion Ant library (that does not require JavaHL) is Svn4Ant. Located at antxtras.sf.net. Of particular interest would be the "svnbranch" and "svnretire" tasks which are designed to ease SCM-specific functions.',1);
INSERT INTO article_comm VALUES (38,3,'2008-06-06 18:47:38','Guest','I\\\'m lucky<br />\r\n&lt;a href=\\&quot; http://dorishinman.aokhost.com/teen1169.html \\&quot;&gt; teen &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://rachelwinsor.00bp.com/teen997.html \\&quot;&gt; teen &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://richardglenn.yoyohost.com/teen5266.html \\&quot;&gt; teen &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://richardglenn.yoyohost.com/teen5266.html \\&quot;&gt; teen &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://hernandezrandy.247ihost.com/teen9759.html \\&quot;&gt; teen &lt;/a&gt;<br />\n\r<br />\nAlex!',0);
INSERT INTO article_comm VALUES (37,11,'2008-06-05 12:30:10','Guest','http://www.webmasterisland.com/showthread.php?t=996',0);
INSERT INTO article_comm VALUES (36,11,'2008-06-03 11:23:59','Guest','http://www.sailblogs.com/member/replicahandbags/',0);
INSERT INTO article_comm VALUES (35,3,'2008-06-03 07:37:40','Guest','I\\\'m lucky<br />\r\n&lt;a href=\\&quot; http://free-teen-porn.yourhelpful.net/free-full-length-teen-porn-movies.html \\&quot;&gt; free full length teen porn movies &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://free-teen-porn.yourhelpful.net/hot-teen-babe-porn.html \\&quot;&gt; hot teen babe porn &lt;/a&gt;<br />\n\r<br />\nAlex!',0);
INSERT INTO article_comm VALUES (34,11,'2008-06-02 01:49:32','Guest','http://collaborativellc.com/moodle/user/view.php?id=7&amp;course=1',0);
INSERT INTO article_comm VALUES (33,11,'2008-06-01 12:29:23','Guest','http://engineeringmanagement.kauonline.org/user/view.php?id=887&amp;course=1',0);
INSERT INTO article_comm VALUES (32,11,'2008-05-31 13:04:11','Guest','http://pdonline.keypress.com/user/view.php?id=2946&amp;course=1',0);
INSERT INTO article_comm VALUES (31,11,'2008-05-29 05:38:55','Guest','http://www.culturatraining.com/courses/user/view.php?id=1509&amp;course=1',0);
INSERT INTO article_comm VALUES (18,17,'2008-05-16 06:54:01','rafique586','Hi,<br />\r\nI would like to check if any one implemented \\&quot;modificationset quiteperiod\\&quot; in BuildForge ?. <br />\r\nThis feature is popular in CruiseControl am not sure how to have similar kind of functionality in BuildForge! am using BuildForge+Maven+SVN ! <br />\r\n<br />\r\nAny help is very much appreciated..<br />\r\n<br />\r\nModificationset in CruiseControl : <br />\r\n&lt;modificationset quietperiod=\\&quot;120\\&quot;&gt;<br />\r\n&lt;buildstatus logdir=\\&quot;logs/brewery-commit\\&quot; /&gt;<br />\r\n&lt;/modificationset&gt;<br />\r\n<br />\r\n<br />\r\nThanks<br />\r\nRafique',1);
INSERT INTO article_comm VALUES (30,11,'2008-05-27 01:51:04','Guest','http://www.grid.org/forum/member.php?u=2510',0);
INSERT INTO article_comm VALUES (29,3,'2008-05-26 12:39:31','Guest','[URL=http://www.queridas.cn/previsione-meteo-veneto] previsione meteo veneto [/URL]   &lt;a href=\\\'http://www.queridas.cn/previsione-meteo-veneto\\\'&gt; previsione meteo veneto &lt;/a&gt; [URL=http://www.queridas.cn/recinzioni-metallica] recinzioni metallica [/URL]   &lt;a href=\\\'http://www.queridas.cn/recinzioni-metallica\\\'&gt; recinzioni metallica &lt;/a&gt; [URL=http://www.queridas.cn/christmas-tree] christmas tree [/URL]   &lt;a href=\\\'http://www.queridas.cn/christmas-tree\\\'&gt; christmas tree &lt;/a&gt;',0);
INSERT INTO article_comm VALUES (28,11,'2008-05-26 07:05:20','Guest','http://courses.eserver.org/user/view.php?id=457&amp;course=1',0);
INSERT INTO article_comm VALUES (39,11,'2008-06-07 18:11:47','Guest','http://streetball.ipbhost.com/index.php?showtopic=32436',0);
INSERT INTO article_comm VALUES (40,11,'2008-06-10 09:50:18','Guest','http://www.streetballtalk.com/streetball-kicks-apparel/8453-bathroom-vanities.html',0);
INSERT INTO article_comm VALUES (41,11,'2008-06-11 01:48:37','Guest','http://www.bebo.com/CoachP1',0);
INSERT INTO article_comm VALUES (42,3,'2008-06-11 17:08:25','Guest','I\\\'m lucky<br />\r\n&lt;a href=\\\'http://teen-porn-pics-free.allseadata.net/tiny-teen-porn-videos.html\\\' title=\\\'tiny teen porn videos\\\'&gt;&lt;H1&gt;tiny teen porn videos&lt;/H1&gt;&lt;/a&gt;<br />\n&lt;a href=\\\'http://teen-porn-pics-free.allseadata.net/hot-teen-hard-core-porn.html\\\' title=\\\'hot teen hard core porn\\\'&gt;&lt;strong&gt;hot teen hard core porn&lt;/strong&gt;&lt;/a&gt;<br />\n&lt;a href=\\\'http://teen-porn-pics-free.allseadata.net/hot-teen-porn-lesbian.html\\\' title=\\\'hot teen porn lesbian\\\'&gt;&lt;H1&gt;hot teen porn lesbian&lt;/H1&gt;&lt;/a&gt;<br />\n&lt;a href=\\\'http://teen-porn-pics-free.allseadata.net/free-teen-porn-videos.html\\\' title=\\\'free teen porn videos\\\'&gt;&lt;H3&gt;free teen porn videos&lt;/H3&gt;&lt;/a&gt;<br />\n&lt;a href=\\\'http://black-teen-porn.allseadata.net/teen-girls-booty-shaking-porn-clips.html\\\' title=\\\'teen girls booty shaking porn clips\\\'&gt;&lt;H1&gt;teen girls booty shaking porn clips&lt;/H1&gt;&lt;/a&gt;<br />\n\r<br />\nAlex!',0);
INSERT INTO article_comm VALUES (43,11,'2008-06-17 15:33:15','Guest','http://pdonline.keypress.com/user/view.php?id=3438&amp;course=1',0);
INSERT INTO article_comm VALUES (44,3,'2008-06-18 16:41:28','Guest','I\\\'m lucky<br />\r\n[url=http://bevuto9.blogspot.com/2008/06/bevuto-17.html] Bevuto 17 [/url]<br />\n&lt;a href=\\&quot; http://gallerie99.blogspot.com/2008/06/gallerie-354.html \\&quot;&gt; Gallerie 354 &lt;/a&gt;<br />\n[url=http://3gp99.blogspot.com/2008/06/3gp-488.html] 3gp 488 [/url]<br />\n&lt;a href=\\&quot; http://nonche9.blogspot.com/2008/06/nonche-903.html \\&quot;&gt; Nonche 903 &lt;/a&gt;<br />\n[url=http://figa9.blogspot.com/2008/06/figa-374.html] Figa 374 [/url]<br />\n&lt;a href=\\&quot; http://miglior88.blogspot.com/2008/06/miglior-849.html \\&quot;&gt; Miglior 849 &lt;/a&gt;<br />\n[url=http://ragazza99.blogspot.com/2008/06/ragazza-205_17.html] Ragazza 205 [/url]<br />\n&lt;a href=\\&quot; http://sesso88.blogspot.com/2008/06/sesso-36.html \\&quot;&gt; Sesso 36 &lt;/a&gt;<br />\n&lt;a href=\\&quot; http://libpics.blogspot.com/2008/06/libpics-898.html \\&quot;&gt; Libpics 898 &lt;/a&gt;<br />\n[url=http://bevuto9.blogspot.com/2008/06/bevuto-58.html] Bevuto 58 [/url]<br />\n\r<br />\nAlex!',0);
INSERT INTO article_comm VALUES (45,11,'2008-06-18 19:10:58','Guest','http://www.reduser.net/forum/member.php?u=11009',0);
INSERT INTO article_comm VALUES (46,11,'2008-06-19 13:31:23','Guest','http://online.lasc.edu/user/view.php?id=4325&amp;course=1',0);
INSERT INTO article_comm VALUES (47,11,'2008-06-21 16:20:28','Guest','http://pdonline.keypress.com/user/view.php?id=3512&amp;course=1',0);
INSERT INTO article_comm VALUES (48,11,'2008-06-22 16:06:45','Guest','http://forums.oscommerce.com/index.php?showuser=215626',0);
INSERT INTO article_comm VALUES (49,11,'2008-06-26 04:17:06','Guest','http://shefinds.com/talk/index.php?showtopic=4076',0);
INSERT INTO article_comm VALUES (50,11,'2008-06-27 03:26:42','Guest','http://shefinds.com/talk/index.php?showtopic=4095',0);
INSERT INTO article_comm VALUES (51,11,'2008-06-30 04:17:14','Guest','http://www.syracuse.com/forums/profile.ssf?nickname=designerbags',0);
INSERT INTO article_comm VALUES (52,11,'2008-06-30 20:26:58','Guest','http://www.standards.dcsf.gov.uk/jiveforums/profile.jspa?userID=1453',0);
INSERT INTO article_comm VALUES (53,3,'2008-07-01 07:17:55','Guest',', &lt;a href=\\&quot;http://av5qe.fizwig.com/recent.html\\&quot;&gt;Dance&lt;/a&gt;, [url=\\&quot;http://av5qe.fizwig.com/recent.html\\&quot;]Dance[/url], http://av5qe.fizwig.com/recent.html Dance,  eqnhr, &lt;a href=\\&quot;http://t8unu.fizwig.com/recent.html\\&quot;&gt;Costumes&lt;/a&gt;, [url=\\&quot;http://t8unu.fizwig.com/recent.html\\&quot;]Costumes[/url], http://t8unu.fizwig.com/recent.html Costumes,  83311, &lt;a href=\\&quot;http://6kyvo.fizwig.com\\&quot;&gt;Bodyart&lt;/a&gt;, [url=\\&quot;http://6kyvo.fizwig.com\\&quot;]Bodyart[/url], http://6kyvo.fizwig.com Bodyart,  :[[[, &lt;a href=\\&quot;http://t8unu.fizwig.com\\&quot;&gt;Arts&lt;/a&gt;, [url=\\&quot;http://t8unu.fizwig.com\\&quot;]Arts[/url], http://t8unu.fizwig.com Arts,  8579, &lt;a href=\\&quot;http://bu6oo.fizwig.com\\&quot;&gt;Comics&lt;/a&gt;, [url=\\&quot;http://bu6oo.fizwig.com\\&quot;]Comics[/url], http://bu6oo.fizwig.com Comics,  :-(((, &lt;a href=\\&quot;http://6kyvo.fizwig.com/recent.html\\&quot;&gt;Crafts&lt;/a&gt;, [url=\\&quot;http://6kyvo.fizwig.com/recent.html\\&quot;]Crafts[/url], http://6kyvo.fizwig.com/recent.html Crafts,  275,',0);
INSERT INTO article_comm VALUES (54,11,'2008-07-01 08:13:29','Guest','http://boinc.gorlaeus.net/view_profile.php?userid=15640',0);
INSERT INTO article_comm VALUES (55,9,'2008-07-04 21:44:33','Guest','cc8767e7c386f5ff9b79931156a6e018 <br />\r\n&lt;a href=\\&quot;http://njdokj.info/a8a0b33ade194384c3c645bc986b1f86/cc8767e7c386f5ff9b79931156a6e018\\&quot;&gt; http://njdokj.info/a8a0b33ade194384c3c645bc986b1f86/cc8767e7c386f5ff9b79931156a6e018 &lt;/a&gt;<br />\r\n http://njdokj.info/a8a0b33ade194384c3c645bc986b1f86/cc8767e7c386f5ff9b79931156a6e018 <br />\r\n[url]http://njdokj.info/a8a0b33ade194384c3c645bc986b1f86/cc8767e7c386f5ff9b79931156a6e018[url]',0);
# --------------------------------------------------------

#
# Table structure for table `articles`
#

DROP TABLE IF EXISTS articles;
CREATE TABLE articles (
  id mediumint(9) NOT NULL auto_increment,
  cat_id tinyint(4) NOT NULL,
  date_posted datetime NOT NULL,
  posted_by mediumint(11) NOT NULL,
  title varchar(100) NOT NULL,
  summary tinytext NOT NULL,
  content tinytext NOT NULL,
  views mediumint(9) NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

#
# Dumping data for table `articles`
#

INSERT INTO articles VALUES (1,2,'2006-11-15 10:30:53',1,'Introduction to Apache Ant','A brief introduction to the features and capabilities of Apache Ant - the Java build tool.','',241,1);
INSERT INTO articles VALUES (2,1,'2007-11-15 11:06:49',1,'Introduction to JavaEE packaging','This article describes how Enterprise Java applications are typically packaged and deployed. \r\n\r\n','',731,1);
INSERT INTO articles VALUES (3,1,'2007-08-06 19:04:29',0,'Introduction to Test Driven Development and JUnit','This article describes the principles of Test Driven Development and the Java unit testing framework tool JUnit that can be used to implement it.','',679,1);
INSERT INTO articles VALUES (4,1,'2006-04-14 19:06:07',0,'Architecting the Build Process','This article is intended to describe how best to architect a typical build process and what a "good" build process might possibly look like.','',573,1);
INSERT INTO articles VALUES (5,1,'2006-05-11 19:07:27',0,'Defining the Build Process','This article defines the value of the build process and breaks it down into its constituent parts so that we can better understand and automate it.','',554,1);
INSERT INTO articles VALUES (6,1,'2005-11-24 19:08:27',0,'Version Control Requirements for the Build Process','This article describes a set of requirements that any version control tool should meet in order for it to successfully enable repeatability, reliability and scalability of the Build Process.','',286,1);
INSERT INTO articles VALUES (7,1,'2006-09-12 19:09:00',0,'Build Process Top Ten Tips','This article describes my top 10 tips for constructing a complete, consistent and reproducible build process.','',604,1);
INSERT INTO articles VALUES (8,1,'2006-10-12 19:10:44',0,'Software Release Management Best Practices','This article describes the fundamental concepts of software release management, the types of releases and their lifecycle, and then discusses 10 best practices that can be adopted to improve your own software release management process.','',418,1);
INSERT INTO articles VALUES (9,1,'2007-10-08 19:12:09',0,'How to write a Build Management Plan','This article illustrates how you can formalize your build and release process through the definition of a Build Management Plan. It does so by defining the procedures for the Hotel de Java reference project.','',1430,1);
INSERT INTO articles VALUES (10,3,'2005-12-08 19:14:26',0,'An Introduction to Regular Expressions','An introduction to the fundamentals of regular expressions and how to use them in a number of languages and environments.','',149,1);
INSERT INTO articles VALUES (11,3,'2005-11-26 19:16:11',0,'The Perl Command line to the Rescue','An article discussing how to use the Perl scripting tools command line interface to execute a variety of everyday administrative tasks.','',255,1);
INSERT INTO articles VALUES (12,2,'2006-05-09 20:02:00',0,'Introduction to NAnt','A brief introduction to the features and capabilities of NAnt - a Microsoft .NET build tool based on Apache Ant.','',215,1);
INSERT INTO articles VALUES (13,2,'2006-05-18 20:03:36',0,'Integrating CruiseControl and ClearCase','A brief introduction on how best to configure CruiseControl - an open source Continuous Integration toolkit - to work with IBM Rational ClearCase.','',2,0);
INSERT INTO articles VALUES (14,2,'2006-05-17 20:04:31',0,'Introduction to Ant dependency checking','This article describes how Apache Ant\'s dependency checking works and how to make use of it in your build scripts.','',161,1);
INSERT INTO articles VALUES (15,2,'2007-04-11 20:05:08',0,'Introduction to Apache Maven','A brief introduction to the features and capabilities of Apache Maven - a Java build and build project management tool.','',206,1);
INSERT INTO articles VALUES (16,2,'2007-01-15 20:06:15',0,'Extending Apache Ant','This article describes how you can extend Apache Ant to support new capabilities or tool integrations.','',1,0);
INSERT INTO articles VALUES (17,2,'2007-02-05 20:07:33',0,'Introduction to CruiseControl','A brief introduction to the features and capabilities of CruiseControl - an open-source Continuous Integration toolkit.','',650,1);
INSERT INTO articles VALUES (18,2,'2007-01-23 20:07:56',0,'Introduction to CruiseControl.NET','A brief introduction to the features and capabilities of CruiseControl.NET - an open source Continuous Integration toolkit for .NET languages.','',472,1);
INSERT INTO articles VALUES (19,2,'2006-04-11 20:08:37',0,'Introduction to GNU Make','A brief introduction to the features and capabilities of GNU Make - the C/C++ build tool.','',163,1);
INSERT INTO articles VALUES (20,2,'2006-04-11 20:09:34',0,'Managing Java dependencies with Apache Ant and Ivy','The world of Java is one of open-source, common components and rapid, evolving change. However, one of the caveats of such a model is the time spent in managing library dependencies. In this article I discuss in more detail the nature of this problem and ','',167,1);
INSERT INTO articles VALUES (21,2,'2007-02-13 20:10:35',0,'Integrating CruiseControl and ClearCase UCM','In this article I will discuss how to configure CruiseControl to work with UCM - the ClearCase best practice usage model.','',0,0);
INSERT INTO articles VALUES (22,2,'2007-07-17 20:11:21',0,'Apache Ant and IBM Rational BuildForge','This article is an introduction to IBM Rational Build Forge - an enterprise build and release execution framework. It takes you through the process of how to configure and build an Apache Ant based Java project within Build Forge.','',116,1);
INSERT INTO articles VALUES (23,2,'2007-06-11 20:11:56',0,'Introduction to Headless Ant Builds with IBM Rational Application Developer','This article describes how you can execute IBM Rational Application Developer (and related tools such as Rational Software Architect) in "headless" mode in order to execute Apache Ant scripted builds.','',440,1);
INSERT INTO articles VALUES (24,2,'2007-07-17 20:12:40',0,'Integrating Apache Ant and Subversion','A discussion on how to use and configure Subversion and related tools to implement an integrated build process with Apache Ant.','',1709,1);
INSERT INTO articles VALUES (25,2,'2007-05-14 20:13:17',0,'Auditing Java builds with IBM Rational ClearCase and Apache Ant','A discussion on how to use the Apache Ant build audit listener that is delivered with ClearCase version 7.','',287,1);
INSERT INTO articles VALUES (27,0,'2008-04-25 11:04:45',0,'Automating the PHP build and deployment process','This article describes how to implement a controlled','Enter your content here...',0,0);
INSERT INTO articles VALUES (26,1,'2007-10-28 10:58:51',0,'Introducing Agile Software Delivery','This article describes the concept of Agile Software Delivery, how it relates to the build process and how it can be implemented.','',276,1);
INSERT INTO articles VALUES (28,2,'2008-01-25 11:05:26',0,'Implementing Java library management with the Ant tasks for Apache Maven','This article describes how the Ant tasks for Apache Maven can be implemented to help manage Java libraries and their dependencies.','Enter your content here...',108,1);
INSERT INTO articles VALUES (41,0,'2008-04-25 16:04:34',0,'New article','article','new article',0,0);
# --------------------------------------------------------

#
# Table structure for table `banned_users`
#

DROP TABLE IF EXISTS banned_users;
CREATE TABLE banned_users (
  username varchar(30) NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY  (username)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `banned_users`
#

# --------------------------------------------------------

#
# Table structure for table `books`
#

DROP TABLE IF EXISTS books;
CREATE TABLE books (
  id mediumint(8) unsigned NOT NULL auto_increment,
  cat_id tinyint(4) NOT NULL default '0',
  date_posted datetime NOT NULL,
  posted_by mediumint(11) NOT NULL,
  title mediumtext NOT NULL,
  author varchar(100) NOT NULL,
  summary mediumtext NOT NULL,
  url varchar(200) NOT NULL,
  image_url varchar(200) NOT NULL,
  date_published datetime NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

#
# Dumping data for table `books`
#

INSERT INTO books VALUES (1,1,'2008-01-01 09:41:05',0,'<a href="http://www.lulu.com/content/409652">The Buildmeister\'s Guide - Achieving Agile Software Delivery</a>','Kevin A. Lee','The Buildmeister\'s Guide researches and documents the build process in detail. Its aim is to increase awareness of the build process and to raise the level and quality of discussion that occurs around it. The Second Edition has been significantly rewritten and enhanced with new technical content. In particular, content related to Agile Software Delivery, its definition and how it can be achieved has been included in order to make the book more relevant, consistent and readable.\r\n\r\n','','http://www.lulu.com/items/volume_29/409000/409652/7/preview/detail_409652.jpg','2008-01-01 09:42:47',1);
INSERT INTO books VALUES (26,0,'2008-03-31 21:35:52',0,'qmSycgPidPtg','Bobi','<a href=http://quitrent.cn/map.html >seller</a>\r\n<a href=http://mystox.cn/generic-sildenafil-citrate.html >generic sildenafil citrate</a>\r\n<a href=http://mystox.cn/cialis-mail-order.html >cialis mail order</a>\r\n<a href=http://mystox.cn/sildenafil-citrate.html >sildenafil citrate</a>\r\n<a href=http://mystox.cn/buy-cheap-cialis.html >buy cheap cialis</a>','http://quiten.cn/map.html   ','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (2,1,'2005-11-16 10:47:39',0,'<a href="http://www.amazon.com/gp/product/0974514039?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0974514039">Pragmatic Project Automation: How to Build, Deploy, and Monitor Java Apps</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0974514039" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Mike Clark','If you are a Java developer and want to know the basics of how to construct a decent build and release process then I recommend reading Mike\'s book. It doesn\'t go into any topic in real detail; however like most Pragmatic Bookshelf books, it is concise, well written and easily absorbed. The tools that the book discusses includes CVS, Ant and CruiseControl.','','http://ecx.images-amazon.com/images/I/41DWDKNPHRL._SS100_.jpg','2004-08-11 10:47:09',1);
INSERT INTO books VALUES (3,2,'2006-10-10 10:50:32',0,'<a href="http://www.amazon.com/gp/product/1590596528?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=1590596528">Deploying .NET Applications: Learning MSBuild and ClickOnce (Expert\'s Voice in .Net)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=1590596528" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Sayed Y. Hashimi, Sayed Ibrahim Hashimi','MSBuild and ClickOnce are Microsoft\'s new approach to being able to repeatedly build and deploy Enterprise applications. There is limited documentation and information available on these tools currently, so this book is a good introduction. It delves into the tools in detail and gives some good (and downloadable) examples. Unfortunately the book does not really go into why you might want to use these tools and how they can be part of your overriding development process, but it is still a useful read and reference manual.','','http://ecx.images-amazon.com/images/I/11HFMSFRF0L.jpg','2006-05-01 10:50:21',1);
INSERT INTO books VALUES (4,0,'2006-08-23 00:00:00',0,'<a href="http://www.amazon.com/gp/product/0321332059?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321332059">The Build Master: Microsoft\'s Software Configuration Management Best Practices (The Addison-Wesley Microsoft Technology Series)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0321332059" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Vincent Maraia','Vincent works for Microsoft and has consequently had unique access their development organization. This books reflects this fact with frequent stories and asides - and for which alone its purchase is recommended. There is some good advice and tips in here, however I don\'t particularly like the latter chapters as they merely descend into an advert for the build capabilities in the Microsoft Team System.','','http://ecx.images-amazon.com/images/I/51WTY3GFP1L._SS75_.jpg','2005-09-30 00:00:00',1);
INSERT INTO books VALUES (5,0,'2005-05-09 12:45:12',0,'<a href="http://www.amazon.com/gp/product/0201741172?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0201741172">Software Configuration Management Patterns: Effective Teamwork, Practical Integration</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0201741172" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Stephen P. Berczuk and Brad Appleton','One of the most annoying things about Software Configuration Management is the amount of different terms that exist - especially when the refer to the same things! This seminal book helps address this challenge by identifying a set of readily consumable and well defined patterns. If you don\'t know your code mainline from your active development line, or how developer testing, building and integration are all linked together, then you need to read this book.','','http://ecx.images-amazon.com/images/I/11u0AOoVpnL.jpg','2002-11-04 12:47:18',1);
INSERT INTO books VALUES (6,0,'2006-07-18 12:49:44',0,'<a href="http://www.amazon.com/gp/product/0974514047?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0974514047">Ship it! A Practical Guide to Successful Software Projects</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0974514047" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Jared Richardson and William Gwaltney','Following the line of Hunt and Thomas\'s The Pragmatic Programmer, this book is really a collection of tips and best practices for what the authors have found works well on real projects. It is not a detailed, scientific or process laden tome, rather just some common-sense ideas - some of which you probably do any way. I recommend it here because I believe reading it will help you put some perspective and substance around your build and release process.','','http://ecx.images-amazon.com/images/I/41HWD434RHL._SS75_.jpg','2005-06-01 12:51:39',1);
INSERT INTO books VALUES (7,0,'2006-10-24 12:57:02',0,'<a href="http://www.amazon.com/gp/product/0321356993?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321356993">IBM Rational(R) ClearCase(R), Ant, and CruiseControl: The Java(TM) Developer\'s Guide to Accelerating and Automating the Build Process</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0321356993" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Kevin A. Lee','This book describes how to implement an automated, and repeatable yet also agile and pragmatic build and release process. Although it is specific to the Java development environment, many of the principles and practices of building and releasing software are language independent and should serve as good practices on any type of project. It is of particular use if you are new or inexperienced with implementing build processes using Apache Ant.','','http://rcm-images.amazon.com/images/I/11PJRAXDNVL._SL110_.jpg','2006-05-24 12:57:41',1);
INSERT INTO books VALUES (8,0,'0000-00-00 00:00:00',0,'<a href="http://www.amazon.com/gp/product/193239480X?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=193239480X">Ant in Action (Manning)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=193239480X" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Steve Loughran and Erik Hatcher','Apache Ant is the primary build tool for Java projects and this book is "the" guide to the tool. It is a large but well written book and covers everything that you would wish to know about implementing Ant in detail. Particularly good sections include discussions on how to implement library management with Apache Ivy and deployment with SmartFrog.','','http://ecx.images-amazon.com/images/I/51X334EPYQL._PIsitb-dp-500-arrow,TopRight,45,-64_OU01_SS75_.jpg','2007-07-12 12:59:49',1);
INSERT INTO books VALUES (9,0,'0000-00-00 00:00:00',0,'<a href="http://www.amazon.com/gp/product/0596007507?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0596007507">Maven: A Developer\'s Notebook (Developer\'s Notebooks)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0596007507" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Vincent Massol and Timothy O\'Brien','Although Ant might be the primary build tool for Java projects, Apache Maven is rapidly gaining more acceptance and adoption and this book is a good introduction as to why. Unfortunately it came out too early to discuss Maven 2 in detail, however it is still a useful and well written introduction.','','http://ecx.images-amazon.com/images/I/41qUBJinIeL._SS75_.jpg','2005-06-22 13:04:49',1);
INSERT INTO books VALUES (10,0,'0000-00-00 00:00:00',0,'<a href="http://www.amazon.com/gp/product/0596006101?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0596006101">Managing Projects with GNU Make (Nutshell Handbooks)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0596006101" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Robert Mecklenburg ','Despite what many people think, the make build tool is still alive and kicking. This book is a detailed guide of how to use the industry standard GNU version. It walks you through the concepts and (sometimes obscure) syntax of this build tool and includes some particularly useful techniques for writing portable makefiles, using make on large projects and improving performance. There is even a section on how to use make to build Java projects!','','http://ecx.images-amazon.com/images/I/51aPGcTXFvL._SS75_.jpg','2004-11-19 13:07:24',1);
INSERT INTO books VALUES (11,0,'0000-00-00 00:00:00',0,'<a href="http://www.amazon.com/gp/product/0321186125?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321186125">Balancing Agility and Discipline: A Guide for the Perplexed</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0321186125" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Barry Boehm and Richard Turner ','There is a lot of emotional effort spent discussing the merits of agile versus traditional more disciplined software development methods. This book cuts through the hype, describing a whole set of processes and in what situations they might be suitable. The chapter on a day in the life of both XP and Team Software Process are particularly good. This is really background reading for anyone involved in the build and release process, but it contains information and explanations which I think everyone should possess.','','http://ecx.images-amazon.com/images/I/51ixsIxzPaL._PIlitb-dp-500-arrow,TopRight,45,-64_OU01_SS75_.jpg','2003-08-15 13:10:45',1);
INSERT INTO books VALUES (12,0,'0000-00-00 00:00:00',0,'<a href="http://www.amazon.com/gp/product/0321336380?ie=UTF8&tag=thebuildmeist-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321336380">Continuous Integration: Improving Software Quality and Reducing Risk (The Addison-Wesley Signature Series)</a><img src="http://www.assoc-amazon.com/e/ir?t=thebuildmeist-20&l=as2&o=1&a=0321336380" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />','Paul Duvall and Steve Matyas and Andrew Glover ','Continuous Integration is the practice of frequently integrating small changes within a project iteration. In this book Paul Duvall and his colleagues describe the fundamental reasons why you should be adopting Continuous Integration and how to make it actionable. A lot of the information contained in the book has been described before (either in other books or on the Internet) however the sections on Continuous Database Integration and Continuous Inspection make this book an essential purchase.','','http://ecx.images-amazon.com/images/I/51jraHs3ggL._SS75_.jpg','2007-06-29 13:14:42',1);
INSERT INTO books VALUES (18,0,'2008-03-21 09:53:16',0,'ExeHADLyUWqyy','Neli','<a href=http://imporous.cn/map.html >online</a>\r\nhttp://importee.cn/map.html\r\n<a href=http://importee.cn/map.html >online</a>\r\nhttp://jointed.cn/map.html\r\n<a href=http://jointed.cn/map.html >online</a>\r\nhttp://jolite.cn/map.html\r\n<a href=http://jolite.cn/map.html >online</a>','http://imporous.cn/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (19,0,'2008-03-22 22:13:38',0,'xRWWOxIogsmPce','Lina','<a href=http://nuvistor.cn/map.html >pills</a>\r\nhttp://mythically.cn/map.html\r\n<a href=http://mythically.cn/map.html >online</a>\r\nhttp://nutsch.cn/map.html\r\n<a href=http://nutsch.cn/map.html >online</a>\r\nhttp://nutsche.cn/map.html\r\n<a href=http://nutsche.cn/map.html >online</a>\r\n<a href=http://meds10top.com/online-prescription-viagra.html >online prescription viagra</a>\r\n<a href=http://meds10top.com/tramadol-and-acetaminophen.html >tramadol and acetaminophen</a>','http://nuvistor.cn/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (21,0,'2008-03-23 02:48:30',0,'dHdizmmTNZSEagCJT','Lina','<a href=http://nuvistor.cn/map.html >pills</a>\r\nhttp://mythically.cn/map.html\r\n<a href=http://mythically.cn/map.html >online</a>\r\nhttp://nutsch.cn/map.html\r\n<a href=http://nutsch.cn/map.html >online</a>\r\nhttp://nutsche.cn/map.html\r\n<a href=http://nutsche.cn/map.html >online</a>\r\n<a href=http://meds10top.com/online-prescription-viagra.html >online prescription viagra</a>\r\n<a href=http://meds10top.com/tramadol-and-acetaminophen.html >tramadol and acetaminophen</a>','http://nuvistor.cn/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (22,0,'2008-03-24 11:33:53',0,'Nice n site','Valintino','Hello, Your site is great. <a href=\\"http://www.abra2.com\\">abra2</a> [url=http://www.abra3.com]abra3[/url] http://www.abra1.com [URL]http://www.abra4.com[/URL] Regards, Valiintino Guxxi','http://valiintinoguxxi.com','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (24,0,'2008-03-28 10:07:52',0,'WSZRYkekndiUtHvzvD','Milena','<a href=http://nuttallius.cn/map.html >pills</a>\r\n<a href=http://nuttallius.cn/buying-ultram.html >buying ultram</a>\r\n<a href=http://nuttallius.cn/sildenafil-tablet.html >sildenafil tablet</a>\r\n<a href=http://nuttallius.cn/cialis-prescription.html >cialis prescription</a>\r\n<a href=http://nuttallius.cn/viagra-professional.html >viagra professional</a>\r\n<a href=http://nuttallius.cn/female-version-viagra.html >female version viagra</a>\r\n<a href=http://nuttallius.cn/buy-kamagra-online.html >buy kamagra online</a>\r\n<a href=http://nuttallius.cn/female-viagra.html >female viagra</a>','http://nuttallius.cn/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (25,0,'2008-03-29 20:26:25',0,'CJPhTSkTLXzykFM','Bela','http://oxgall.cn/map.html\r\nhttp://pyroborate.cn/map.html\r\nhttp://pyroboric.cn/map.html\r\n<a href=http://oxgall.cn/map.html >online</a>\r\n<a href=http://pyroborate.cn/map.html >online</a>\r\n<a href=http://pyroboric.cn/map.html >online</a>','http://pyroboric.cn/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (27,0,'2008-04-02 04:44:27',0,'gTOFVUrOjVWVoZWKe','Willi','<a href=http://mystox.cn/buy-cheap-purchase-uk-viagra.html >buy cheap purchase uk viagra</a>\r\n<a href=http://mystox.cn/canada-cialis.html >canada cialis</a>\r\n<a href=http://mystox.cn/sildenafil-citrate-soft-tabs.html >sildenafil citrate soft tabs</a>\r\n<a href=http://mystox.cn/tramadol-ultram.html >tramadol ultram</a>\r\n<a href=http://mystox.cn/buy-cheap-cialis.html >buy-cheap cialis</a>','http://mystox.cn/buy-cheap-viagra-in-uk.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (28,0,'2008-04-05 23:51:30',0,'eBsxDarj','Bil','<a href=http://yourmedbuy.com/map.html >pills</a>\r\n<a href=http://yourmedbuy.com/cheap-discount-viagra.html >cheap discount viagra</a>\r\n<a href=http://yourmedbuy.com/purchase-tramadol.html >purchase tramadol</a>\r\n<a href=http://yourmedbuy.com/cialis-mail-order.html >cialis mail order</a>\r\n<a href=http://yourmedbuy.com/prescription-viagra.html >prescription viagra</a>\r\n<a href=http://yourmedbuy.com/buy-cheap-ultram.html >buy cheap ultram</a>\r\n<a href=http://yourmedbuy.com/ultram-ups.html >ultram ups</a>','http://yourmedbuy.com/map.html','','0000-00-00 00:00:00',0);
INSERT INTO books VALUES (29,0,'2008-04-07 11:55:47',0,'BupUpyfKTzjxUmUqX','Said','<a href=http://tritttonz.info/business-cards-templates.html >business cards templates</a>\r\n<a href=http://tritttonz.info/brittney-james.html >brittney james</a>\r\n<a href=http://tritttonz.info/butterfly-cell-phone.html >butterfly cell phone</a>\r\n<a href=http://tritttonz.info/brookfield-library-brookfield-mass.html >brookfield library brookfield mass</a>\r\n<a href=http://tritttonz.info/buy-asa-softball-double-first-base.html >buy asa softball double first base</a>\r\n<a href=http://tritttonz.info/burlington-chocolate-fest.html >burlington chocolate fest</a>\r\n<a href=http://tritttonz.info/business-cards.html >business cards</a>','http://tritttonz.info/brooklyn-dress-shops.html','','0000-00-00 00:00:00',0);
# --------------------------------------------------------

#
# Table structure for table `categories`
#

DROP TABLE IF EXISTS categories;
CREATE TABLE categories (
  id tinyint(4) NOT NULL auto_increment,
  cat varchar(40) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `categories`
#

# --------------------------------------------------------

#
# Table structure for table `glossary`
#

DROP TABLE IF EXISTS glossary;
CREATE TABLE glossary (
  id mediumint(8) NOT NULL auto_increment,
  posted_by varchar(32) NOT NULL,
  title varchar(100) NOT NULL,
  summary mediumtext NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

#
# Dumping data for table `glossary`
#

INSERT INTO glossary VALUES (1,'0','build','An operational version of a system or part of a system that demonstrates a subset of the capabilities to be provided in the final product.',1);
INSERT INTO glossary VALUES (2,'0','release','A release is a stable, executable version of a product. An internal release is used only by the development organization, as part of a milestone, or for a demonstrations to users or customers. An external release is delivered to end users.',1);
INSERT INTO glossary VALUES (3,'0','deployment','The act of moving staged or packaged artifacts to other systems for testing or <a href="#release">release</a>.',1);
INSERT INTO glossary VALUES (6,'0','Active Development Line','A project\\\'s integration branch containing the latest development baseline. The Active Development Line is accessed via an individual private <a href="#workspace">workspace</a> for day-to-day development and integration.',1);
INSERT INTO glossary VALUES (7,'','active object','A derived object that has not or is yet to be staged, such an object is view private rather than under version control.',1);
INSERT INTO glossary VALUES (8,'','agile development','An umbrella term for individual software development methodologies such as Crystal methods, eXtreme Programming, and feature-driven development. Agile development methods emphasize customer satisfaction through continuous delivery of functional software. Although similar to iterative development, agile development methods typically promote less rigorous process enforcement.\r\n',1);
INSERT INTO glossary VALUES (9,'','Agile Software Delivery','An end to end software delivery process with continual builds and deployments. Agile Software Delivery aims to reduce the risk of delayed integration and deployment by building early and reusing previously built objects.',1);
INSERT INTO glossary VALUES (10,'','artifact','A piece of information that is produced, modified, or used by a process, defines an area of responsibility, and is subject to <a href="#version_control">version control</a>.\r\n',1);
INSERT INTO glossary VALUES (11,'','baseline','A metadata object that typically represents a stable configuration across a collection of artifacts. ',1);
INSERT INTO glossary VALUES (12,'','bill of materials','The Bill of Materials lists the constituent parts of a given version of a product or application, and where the physical parts may be found. It describes the changes made in the version and refers to how the product may be installed.',1);
INSERT INTO glossary VALUES (13,'','branch','An object that specifies a linear sequence of element versions.',1);
INSERT INTO glossary VALUES (14,'','branching strategy','A strategy for isolation and integration of changes on a software project through the use of branches. A branching strategy defines the types of branches you use, how these branches relate to one another, and how you move changes between branches.',1);
INSERT INTO glossary VALUES (15,'','build auditing','The process of recording which files and directories (and which versions of them) are read or written by the operating system during the course of a build.',1);
INSERT INTO glossary VALUES (16,'','build avoidance','The capability of a build program to fulfill a build request using an existing object, rather than creating a new derived object for the specific build step. ',1);
INSERT INTO glossary VALUES (17,'','build distribution','The process of distributing the build process across a number of servers or computer processes so as to shorten the total build time.',1);
INSERT INTO glossary VALUES (18,'','build management','The identification and definition of what to build, the execution of the build process, and the reporting of its results. Build management capabilities also include <a href="build_auditing">build auditing</a>, <a href="build_avoidance">build avoidance</a> and <a href="build_distribution>build distribution</a>.',1);
INSERT INTO glossary VALUES (19,'','build pipeline','A "pipeline" of related build processes that get executed on the successful completion of each other. A build pipeline is usually implemented using <a href="#staged%20object">staged objects</a>.',1);
INSERT INTO glossary VALUES (20,'','build server farm','A collection of virtual of physical hardware used to reduce total build times or share infrastructure across a number of projects.',1);
INSERT INTO glossary VALUES (21,'','change request','A general term for any request from a stakeholder to change an artifact or process. Documented in the change request is information on the origin and impact of the current problem, the proposed solution, and its cost.',1);
INSERT INTO glossary VALUES (22,'','classpath','An environmental variable or build file setting which tells the JVM where to look for Java programs. The entries in a classpath should contain either directories or jar files.',1);
INSERT INTO glossary VALUES (23,'','clearmake','A make-compatible build tool that is part of the IBM Rational ClearCase product and that provides build audit and build avoidance features.',1);
INSERT INTO glossary VALUES (24,'','CMMI','The Capability Maturity Model Integration (CMM) is a method for evaluating the maturity of organisations. The CMMI was developed by the Software Engineering Institute (SEI) at Carnegie Mellon University. ',1);
INSERT INTO glossary VALUES (25,'','component','A metadata object that groups a set of related directory and file elements within a project. ',1);
INSERT INTO glossary VALUES (26,'','continuous integration','The process of frequently integrating individual developer&#8217;s changes into a product\'s integration environment. Continuous Integration normally necessitates a fully automated and reproducible build, including testing, that runs many times a day. This allows each developer to integrate daily thus reducing integration problems.',1);
INSERT INTO glossary VALUES (27,'','continuous staging','The process of accumulating the output of multiple continuous integration builds into a staging area and automatically executing a system build.',1);
INSERT INTO glossary VALUES (28,'','deployment component','A built object or executable such as a .jar, .dll or .exe file that is part of the complete product or application.',1);
INSERT INTO glossary VALUES (29,'','deployment unit','A self-contained, installable, documented and traceable release of a software product or application. The deployment unit includes the contents of a product\'s <a href="release_build">release build</a>, its <a href="bill_of_materials">bill of materials</a> and any other supporting artifacts.',1);
INSERT INTO glossary VALUES (30,'','EAR','A Java Enterprise ARchive file is an archive (like a <a href="#JAR">JAR</a> file) containing Java class files and supporting artifacts (such as images). EAR files are used to package <a href="#J2EE">J2EE</a> applications for deployment. J2EE files containing additional required files above and beyond JAR files that define the environment in which they are to be deployed and executed.',1);
INSERT INTO glossary VALUES (31,'','golden master','A final software release that is used to produce distribution media for customers or end-users.',1);
INSERT INTO glossary VALUES (32,'','integration','The process of bringing together independently developed changes to form a testable piece of software. Integration can occur at many levels, eventually culminating in a complete software system.',1);
INSERT INTO glossary VALUES (33,'','integration build','A build that is carried out by an assigned integrator or central function to assess the effect of integrating a set of changes across a development team. This type of build can be carried out manually be a lead developer or a member of the build team, or alternately via an automatically scheduled program or service.',1);
INSERT INTO glossary VALUES (34,'','J2EE','Java 2 Platform, Enterprise Edition is an environment for developing and deploying enterprise applications. Defined by Sun Microsystems Inc., the J2EE platform consists of a set of services, application programming interfaces (APIs), and protocols that provide the functionality for developing multi-tiered, Web-based applications.',1);
INSERT INTO glossary VALUES (35,'','JAR','A Java ARchive file is an archive (like a <a href="#ZIP">ZIP</a> file) containing Java class files and supporting artifacts (such as images). JAR files are used to package Java applications for deployment.',1);
INSERT INTO glossary VALUES (36,'','JDK','A Java Development Kit is a software development package from Sun Microsystems that implements the basic set of tools needed to write, test and debug Java applications and applets.',1);
INSERT INTO glossary VALUES (37,'','JRE','A Java Runtime Environment consists of the <a href="#JVM">JVM</a>, the Java platform core classes, and supporting files. It is the runtime part of the JDK and does not include a compiler, debugger, or supporting tools. ',1);
INSERT INTO glossary VALUES (38,'','JVM','A Java Virtual Machine is a virtual machine that runs Java byte code generated by Java compilers. ',1);
INSERT INTO glossary VALUES (39,'','makefile','A makefile details the files, dependencies, and rules by which an executable application is built. Makefiles are executed using the make program.',1);
INSERT INTO glossary VALUES (40,'','managed code','Executable code that is managed by its targeted execution framework. Managed code is Microsoft\\\'s definition for the output of languages that run on its .NET platform.',1);
INSERT INTO glossary VALUES (41,'','milestone integration','The process of integrating code basis at a specific project milestone, e.g. once a month. Also called big-bang integration.',1);
INSERT INTO glossary VALUES (42,'','mock object','A simulated code object, for example a class to mimic a database if the actual database is not available.',1);
INSERT INTO glossary VALUES (43,'','Private Workspace','An isolated environment where developers can control the versions of code that they are working on.',0);
INSERT INTO glossary VALUES (44,'','Promotion Line','A branch created for a distinct level of assembly or integration, i.e. for integrating the components of a system or for allowing a site to integrate before executing a remote delivery.',1);
INSERT INTO glossary VALUES (45,'','private build','A build that is carried out by a developer in their own workspace. This type of build is usually created for the purpose of checking the ongoing status of the developer&#8217;s changes.',1);
INSERT INTO glossary VALUES (46,'','release build','A build that is carried out by a central function, usually a member of the build team. This build is created with the express intention of being delivered to a customer, either internal or external. A release build is also usually created in an isolated and controlled environment.',1);
INSERT INTO glossary VALUES (47,'','release management','The packaging and authorization of a <a href="#release_build">release build</a> so as to enable its deployment to a test or live environment. Release management can also involves the creation of a <a href="#deployment_unit">deployment unit</a> for deploying a partial or multiple products releases.',1);
INSERT INTO glossary VALUES (48,'','release package','The packaging of a <a href="#release_build">release build</a> into a form so that it is readily installable and deployable.',1);
INSERT INTO glossary VALUES (49,'','Release-Prep Line','A branch created for the purposes of conducting or stabilizing a release (whilst also allowing delivery to the <a href="#Active_Development_Line">Active Development Line</a> to continue).',1);
INSERT INTO glossary VALUES (50,'','RSS','RSS is a family of XML formats for syndicating information across the Internet. Rather confusingly, the abbreviation can be used to refer to a number of standards or versions of RSS as follows: Rich Site Summary (RSS 0.91), RDF Site Summary (RSS 0.9 and 1.0) or Really Simple Syndication (RSS 2.0).  The technology behind RSS allows you to subscribe to websites that have provided RSS feeds; these are typically sites that change or add content regularly. To subscribe you typically use a feed reader or aggregator.',1);
INSERT INTO glossary VALUES (51,'','software configuration management','A software-engineering discipline that comprises the tools and techniques (processes or methodology) a company uses to manage change to its software assets.',1);
INSERT INTO glossary VALUES (52,'','SSH','Secure SHell is a command interface and protocol for securely accessing remote computers.',1);
INSERT INTO glossary VALUES (53,'','staged integration','The process of integrating a collective set of changes in isolation (usually on a branch) before integrating them back onto the mainline. Staged integration is a practical form of integration where it is not possible to "pollute" the mainline, for example to carry out a critical maintenance fix.',1);
INSERT INTO glossary VALUES (54,'','staged object','An <a href="#active_object">active object</a> that has been placed under version control. ',1);
INSERT INTO glossary VALUES (55,'','staging','The process of putting active object files under version control.',1);
INSERT INTO glossary VALUES (56,'','version control','A subset of software configuration management that deals with tracking version evolution of a file or directory.',1);
INSERT INTO glossary VALUES (57,'','WAR','A Java Web ARchive file is an archive (like a <a href="#JAR">JAR</a> file) containing Java class files and supporting artifacts (such as images). WAR files are used to package Web-based Java applications for deployment. WAR files containing additional required files above and beyond JAR files that define the environment in which they are to be deployed and executed.',1);
INSERT INTO glossary VALUES (58,'','work product component','A source code, configuration, or documentation file that is part of your product and is changed as part of a change request. Work product components are usually grouped together to form some type of <a href="#deployment_component">deployment component</a>.',1);
INSERT INTO glossary VALUES (59,'','workspace','A generic term for a operating system directory structure created from a specific configuration out of a <a href="#version_control">version control</a> tool.',1);
INSERT INTO glossary VALUES (60,'','ZIP','ZIP is a popular data compression format. Files that have been compressed with the ZIP format are called ZIP files and usually end with a .zip extension.',1);
INSERT INTO glossary VALUES (61,'kevin','This is a term','blah de blah',0);
INSERT INTO glossary VALUES (62,'kevin','test glossary','test',0);
INSERT INTO glossary VALUES (63,'kevin','test glossary','test',0);
INSERT INTO glossary VALUES (64,'Guest','Nice n site','Hello, Your site is great. <a href=\\"http://www.abra2.com\\">abra2</a> [url=http://www.abra3.com]abra3[/url] http://www.abra1.com [URL]http://www.abra4.com[/URL] Regards, Valiintino Guxxi',0);
# --------------------------------------------------------

#
# Table structure for table `glossary_comm`
#

DROP TABLE IF EXISTS glossary_comm;
CREATE TABLE glossary_comm (
  id mediumint(8) unsigned NOT NULL auto_increment,
  gloss_id mediumint(8) unsigned NOT NULL,
  date_posted datetime NOT NULL,
  posted_by varchar(32) NOT NULL,
  `comment` mediumtext NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Dumping data for table `glossary_comm`
#

INSERT INTO glossary_comm VALUES (1,6,'2007-11-25 18:22:47','kevin','This is a comment on a defintion',0);
# --------------------------------------------------------

#
# Table structure for table `links`
#

DROP TABLE IF EXISTS links;
CREATE TABLE links (
  id mediumint(9) NOT NULL auto_increment,
  cat_id tinyint(4) NOT NULL default '0',
  date_posted datetime NOT NULL,
  posted_by varchar(32) NOT NULL,
  title varchar(100) NOT NULL,
  summary mediumtext NOT NULL,
  url varchar(200) NOT NULL,
  preview_url varchar(200) NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

#
# Dumping data for table `links`
#

INSERT INTO links VALUES (3,0,'2007-11-24 18:43:48','kevin','CM Crossroads','CM Crossroads is the configuration management community online. It hosts lots of articles, product reviews, webcasts and discussion forums. Although about configuration management in general it does have some areas dedicated to software build and release management.','http://www.cmcrossroads.com','images/links/cmcrossroads.jpg',1);
INSERT INTO links VALUES (4,0,'2007-11-24 18:47:09','kevin','StickyMinds.com','StickyMinds.com is a portal for software development but has some good, original articles and technical papers from industry experts on the build process. StickyMinds.com is the online companion to Better Software magazine.','http://www.stickyminds.com','images/links/stickyminds.jpg',1);
INSERT INTO links VALUES (5,0,'2007-11-24 18:48:42','kevin','IBM developerWorks','IBM developerWorks is the portal for IBM\\\'s developer community. Although it focuses on IBM�&#8482;s software tool it also has sections dedicated to open source, Java and Linux �&#8220; where you can usually find some good technical articles about the build process.','http://www-128.ibm.com/developerworks','images/links/developerworks.jpg',1);
INSERT INTO links VALUES (6,0,'2007-11-24 19:02:33','kevin','JavaRanch','JavaRanch is a portal for Java development, it includes lots of articles and book reviews - many of which are related to the build process. Its forums are very actve and always a source of useful information.','http://www.javaranch.com','images/links/javaranch.jpg',1);
INSERT INTO links VALUES (8,1,'2007-11-25 13:26:45','kevin','Daily Build and Smoke Test','Steve McConnel\\\'s classic definition of a widely used practice.','http://www.stevemcconnell.com/ieeesoftware/bp04.htm','',1);
INSERT INTO links VALUES (9,1,'2007-11-25 13:29:02','kevin','SCM Patterns for Agility','This site is about agile SCM a pragmatic approach to using software configuration management (SCM), especially version control, as part of an agile development environment. SCM is a key part of the software development toolkit and should be considered in the context of the architecture and the team dynamics.','http://www.scmpatterns.com/','',1);
INSERT INTO links VALUES (10,1,'2007-11-25 13:30:35','kevin','Continuous Integration','Updated overview on Continuous Integration from the person responsible for originally defining the term - Martin Fowler.','http://www.martinfowler.com/articles/continuousIntegration.html','',1);
INSERT INTO links VALUES (11,2,'2007-11-25 13:32:32','kevin','Long Build Trouble Shooting Guide','A discussion on how to keep build times to below 10 minutes for teams practising Continuous Integration.','http://www.google.co.uk/url?sa=t&ct=res&cd=1&url=http%3A%2F%2Fwww.thoughtworks.c','',1);
INSERT INTO links VALUES (12,2,'2007-11-25 13:33:45','kevin','IBM Rational Build Forge','An Enterprise Build Management tool that provides an adaptive framework to automate repetitive tasks. Includes build server management, process acceleration, developer self-service (through IDE plug-ins) and automated bill-of-materials generation.','http://www-306.ibm.com/software/awdtools/buildforge/','',1);
INSERT INTO links VALUES (13,2,'2007-11-25 13:34:47','kevin','dbdeploy','An open source database change management tool.','http://dbdeploy.com/','',1);
INSERT INTO links VALUES (14,2,'2007-11-25 13:36:00','kevin','Continuous Integration Server Matrix','A feature comparison of a large number of open-source and commercial Build Control and/or Continuous Integration server tools. Not always kept up to date and sometimes inaccurate but still useful.','http://docs.codehaus.org/display/DAMAGECONTROL/Continuous+Integration+Server+Fea','',1);
INSERT INTO links VALUES (15,2,'2007-11-25 13:36:46','kevin','CruiseControl','An open-source \\"Continuous Integration\\" toolkit which provides a wrapper around Apache Ant or Apache Maven to automatically execute and report on your builds.','http://cruisecontrol.sourceforge.net/','',1);
INSERT INTO links VALUES (16,2,'2007-11-25 13:38:37','kevin','CruiseControl on a large scale','A brief description of how CruiseControl can scale to large enterprise organizations and projects.','http://www.pragmaticautomation.com/cgi-bin/pragauto.cgi/Build/CCOnALargeScale.rdoc','',1);
INSERT INTO links VALUES (17,2,'2007-11-25 13:39:35','kevin','Apache Ant','A Java-based build tool which is the de-facto standard for compiling source code and creating distributions on Java projects. Ant is written in Java and is extensible, allowing the user to build on its features and facilities to integrate it with all manner of systems and tools.','http://ant.apache.org','',1);
INSERT INTO links VALUES (18,2,'2007-11-25 13:39:57','kevin','Apache Maven','A software project management tool for Java projects, Maven is a build scripting framework coupled with a sophisticated project model for managing builds, reporting and document generation.','http://maven.apache.org','',1);
INSERT INTO links VALUES (19,2,'2007-11-25 13:40:29','kevin','Microsoft Build','Microsoft\\\'s new build platform for compiling and packaging Visual Studio projects. Similar in concept to Apache Ant, MSBuild is freely available with the .NET Framework redistribution package.','http://msdn2.microsoft.com/en-us/library/wea2sca5.aspx','',1);
INSERT INTO links VALUES (20,2,'2007-11-25 13:41:35','kevin','Top 15 Ant best practices','A selection of best practices for Ant from the author of the Java Extreme Programming Cookbook. An old but useful link.','http://www.onjava.com/pub/a/onjava/2003/12/17/ant_bestpractices.html','',1);
INSERT INTO links VALUES (21,2,'2007-11-25 13:42:22','kevin','Incremental and Fast Builds using Ant','In this article, Arin Ghazarian describes the concepts of incremental builds, dependency checking, and other related concepts in build processes, then proposes some techniques and guidelines to optimize and quicken builds written in Apache Ant.','http://www.javaworld.com/javaworld/jw-11-2005/jw-1107-build.html','',1);
INSERT INTO links VALUES (22,2,'2007-11-25 13:43:32','kevin','Taking the Maven 2 plunge','Make was quite a handy tool in its day. Ant has revolutionized automated builds. Maven has taken build transparency and automated development and deployment to a whole new level. If you haven\\\'t caught the maven bug yet, it\\\'s time to take a deeper look now that the next generation - Maven 2 - is available.','http://www.developer.com/open/print.php/10930_3552026_1','',1);
INSERT INTO links VALUES (23,2,'2007-11-25 13:44:33','kevin','Better Builds with Maven','A free and comprehensive introduction to Maven 2 bought to you by some of the main contributors to the Maven project and the kind people at Mergere.','http://www.devzuz.com/web/guest/products/resources#BBWM','',1);
INSERT INTO links VALUES (24,0,'2007-11-25 18:23:21','kevin','This is a new link','est','test','',0);
INSERT INTO links VALUES (25,0,'2007-11-26 18:09:58','kevin','test link','test','test','',0);
INSERT INTO links VALUES (26,0,'2007-11-28 10:51:44','kevin','NCIB Software Configuration Management Guidelines','A Internet facing collaborative development site for the National Cancer Institute. Of interest because there are well designed and documented guidelines for build and deployment to be used across the organizations software project\\\'s.','https://gforge.nci.nih.gov/','',0);
INSERT INTO links VALUES (27,0,'2008-03-24 11:35:01','Guest','Nice n site','Hello, Your site is great. <a href=\\"http://www.abra2.com\\">abra2</a> [url=http://www.abra3.com]abra3[/url] http://www.abra1.com [URL]http://www.abra4.com[/URL] Regards, Valiintino Guxxi','http://valiintinoguxxi.com','',0);
# --------------------------------------------------------

#
# Table structure for table `ratings`
#

DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
  id mediumint(9) NOT NULL,
  article_id mediumint(9) NOT NULL,
  user_id mediumint(9) NOT NULL,
  rating tinyint(4) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `ratings`
#

# --------------------------------------------------------

#
# Table structure for table `tip_comm`
#

DROP TABLE IF EXISTS tip_comm;
CREATE TABLE tip_comm (
  id mediumint(8) unsigned NOT NULL auto_increment,
  tip_id mediumint(8) unsigned NOT NULL,
  date_posted datetime NOT NULL,
  posted_by varchar(32) NOT NULL,
  `comment` mediumtext NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `tip_comm`
#

# --------------------------------------------------------

#
# Table structure for table `tips`
#

DROP TABLE IF EXISTS tips;
CREATE TABLE tips (
  id mediumint(8) NOT NULL auto_increment,
  posted_by varchar(32) NOT NULL,
  date_posted datetime NOT NULL,
  cat_id tinyint(4) NOT NULL,
  title varchar(100) NOT NULL,
  summary mediumtext NOT NULL,
  content mediumtext NOT NULL,
  active tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

#
# Dumping data for table `tips`
#

INSERT INTO tips VALUES (7,'kevin','2007-02-25 17:05:38',1,'Creating configurable builds','How to use Ant property files to separate configuration data from build script logic.','Rather than specifying properties individually in your build script, you can move their definition out to specific property files. This\r\neffectively separates your control logic from your data, applying a Model-View- Controller1 (MVC) like design pattern. This will ultimately make your builds scripts more readable and reusable. One common convention is to create a file called default.properties at the same level as your build.xml file. This file could contain properties such as:<br />\r\n<br />\r\n# default properties<br />\r\ncompile.debug = false<br />\r\ncompile.compiler = javac1.4<br />\r\nbuild.admin = kevin<br />\r\n<br />\r\nYou could then import the contents of this file, using the &lt;property&gt; task at the top of your build file, as follows:<br />\r\n<br />\r\n&lt;property file=\\&quot;default.properties\\&quot;/&gt;<br />\r\n<br />\r\nRemember that properties defined in such files can always be overridden from the command line, for example to override the compile.debug property you would use:<br />\r\n<br />\r\nant -Dcompile.debug=true<br />\r\n<br />\r\nHowever, this would be inefficient if developers wanted to override a number of properties. A better mechanism therefore is to allow developers to override \\&quot;system-level\\&quot; properties by using a shadow properties file, usually called build.properties. The build.xml file should then import these two files in the following order:<br />\r\n<br />\r\n&lt;property file=\\&quot;build.properties\\&quot;/&gt;<br />\r\n&lt;property file=\\&quot;default.properties\\&quot;/&gt;<br />\r\n<br />\r\nAs properties are immutable any entry in the build.properties file would retain its value and not be overwritten by a corresponding entry in the default.properties file.<br />\r\n<br />\r\nTo make this approach work, you should ensure that the default.properties file is held under version control so that every developer picks it up. However, the build.properties is user specific; it should be created on demand and should therefore never be placed under version control. <br />\r\n<br />\r\nTo enforce this, you might want to add it to your version control tools list of \\&quot;ignored\\&quot; files.',1);
INSERT INTO tips VALUES (9,'kevin','2007-01-12 11:15:31',1,'Automating build numbering','How to automatically generate a build number using property files.','You can use the Ant &lt;propertyfile&gt; task to automatically create and\r\nupdate a property file. Consequently, this task can be used to create a property file that auto-increments a build number and/or date-time \r\nstamp. The values in this property file can then be used as part of your version control baselining or packaging process. To achieve this,\r\ncreate a target in your build script similar to the following:<br />\r\n<br />\r\n&lt;target name=\\&quot;update-buildinfo\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;propertyfile file=\\&quot;buildinfo.properties\\&quot; comment=\\&quot;Build Information File - DO NOT CHANGE\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;entry key=\\&quot;build.num\\&quot; type=\\&quot;int\\&quot; default=\\&quot;0000\\&quot; operation=\\&quot;+\\&quot; pattern=\\&quot;0000\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;entry key=\\&quot;build.date\\&quot; type=\\&quot;date\\&quot; value=\\&quot;now\\&quot; pattern=\\&quot;dd.MM.yyyy HH:mm\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/propertyfile&gt;<br />\r\n&lt;/target&gt;<br />\r\n<br />\r\nIf this target is executed, it will create a property file called buildinfo.properties with contents similar to the following:<br />\r\n<br />\r\n#Build Information File - DO NOT CHANGE<br />\r\n#Wed Apr 1 17:48:22 BST 2007<br />\r\n60 In Practice<br />\r\nbuild.num=0006<br />\r\nbuild.date=01.04.2007 17\\\\:48<br />\r\n<br />\r\nYou can then import and use these properties using the &lt;property&gt;<br />\r\ntask as follows:<br />\r\n<br />\r\n&lt;property file=\\&quot;buildinfo.properties\\&quot;/&gt;<br />\r\n&lt;makebaseline baselineselector=\\&quot;${build.num}\\&quot; /&gt;<br />\r\n<br />\r\nNote the &lt;makebaseline&gt; task is not an existing task it is just used \r\nas an example of how you would call a baseline command for a version control tool.',1);
INSERT INTO tips VALUES (10,'kevin','2007-07-26 20:43:35',1,'Cumulative targets','Orchestrating an end-to-end build and release process using a collection of targets.','A cumulative target is a single Ant target which orchestrates an end-to-end build by calling a number of other dependent targets. There are two ways to achieve this is Ant. You can achieve it via the &lt;antcall&gt; task as follows:<br />\r\n<br />\r\n&lt;target name=\\&quot;release\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;antcall target=\\&quot;update-buildinfo\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;antcall target=\\&quot;compile\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;param name=\\&quot;param1\\&quot; value=\\&quot;value\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/antcall&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;antcall target=\\&quot;junit-all\\&quot;/&gt;<br />\r\n&lt;/target&gt;<br />\r\n<br />\r\nOr via dependencies, as in the following:<br />\r\n<br />\r\n&lt;target name=\\&quot;release\\&quot; depends=\\&quot;update-buildinfo\\&quot;, \\&quot;compile\\&quot;, \\&quot;junit-all\\&quot;, ... /&gt;<br />\r\n<br />\r\nAlthough &lt;antcall&gt; is useful for redefining the value of properties at call time, it is not recommended for use with internal targets as the complete build file is reparsed and all the targets that the called target depends on are re-run!',1);
INSERT INTO tips VALUES (11,'kevin','2007-10-02 20:45:11',1,'Chaining build scripts','How to call and execute multiple build scripts for large projects.','Large projects tend to develop build scripts per component and then create a top level, orchestrating build script to chain them together. In Ant this can be achieved via the &lt;subant&gt; task as in the following:<br />\r\n<br />\r\n&lt;target name=\\&quot;build-all\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;subant target=\\&quot;compile\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;fileset dir=\\&quot;.\\&quot; includes=\\&quot;*/build.xml\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/subant&gt;<br />\r\n&lt;/target&gt;<br />\r\n<br />\r\nThis example will invoke the target compile in each build.xml file it finds from the current directory down. One word of warning though, with the &lt;fileset&gt; task there is no guarantee on the order that the build scripts will be found and called. If you require your scripts to be executed in a specific order you should list all the &lt;subant&gt; tasks for each directory, in build order.',1);
INSERT INTO tips VALUES (12,'kevin','2008-01-11 11:48:25',1,'Creating re-useable macros','How to create routines that you can import and call in any of your build scripts','To reduce the potential for duplication you can create reusable routines using the &lt;macrodef&gt; task, which as its name suggests creates a "macro"� routine. For example to create a macro for simplifying the steps needed to execute a version control tool command, you could implement the following macro:<br />\r\n<br />\r\n&lt;macrodef name=\\&quot;vc-op\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;attribute name=\\&quot;file\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;attribute name=\\&quot;command\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;attribute name=\\&quot;comment\\&quot; default=\\&quot;vc-op\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;sequential&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;exec&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;arg value=\\&quot;vc_tool.exe\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;arg line=\\&quot;-c \\\'@{comment}\\\' @{command}\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;arg value=\\&quot;@{file}\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/exec&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/sequential&gt;<br />\r\n&lt;/macrodef&gt;<br />\r\n<br />\r\nIn this example you can see that a new macro called "vc-op" is being created. It takes three parameters (or attributes): the name of the file to execute the command on, the command to execute (for example "checkout") and the comment to apply. These attributes are then used in the &lt;exec&gt; task to execute the command line program "vc_tool.exe" with the parameters supplied. Note that the &lt;exec&gt; task is executed exactly the same as it would be outside of a macro; however inside a macro it always needs to be wrapped inside a &lt;sequential&gt; task to serialize its execution. Also, instead of referring to properties using the ${name} syntax, attributes are referred to using the @{name} syntax.<br />\r\n<br />\r\nIn order to execute this macro you could then add the following line to your build script:<br />\r\n<br />\r\n&lt;vc-op command=\\&quot;checkout\\&quot; file=\\&quot;${build.info}\\&quot;/&gt;<br />\r\n<br />\r\nNote that the "comment" attribute has not been supplied because it will be automatically set by the macro.',1);
INSERT INTO tips VALUES (13,'kevin','2008-02-26 21:00:00',1,'Prompting for a release number','How to prompt for a validate a release number in your build script.','I have seen many people manually enter release number information - as the format and number often change frequently. An alternate way to prompt for a release number is to use the Ant &lt;input&gt; task and then verify the format of the entry using the &lt;matches&gt; task. For example, suppose your organization defined release numbers in the following format:<br />\r\n<br />\r\nmajor.minor.maintenance[-rc][-alpha][-beta]x<br />\r\n<br />\r\nFor example 1.0.0, 1.0.1-rc1 or 2.10.1beta2, then a target to request and check for a valid release number could be implemented as follows:<br />\r\n<br />\r\n&lt;target name=\\&quot;get-relnum\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;input message=\\&quot;Enter release number:\\&quot; addproperty=\\&quot;rel.num\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;condition property=\\&quot;legal-relnum\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;matches pattern=\\&quot;^\\\\d\\\\.\\\\d.\\\\d(-rc\\\\d|-alpha\\\\d|-beta\\\\d)*$\\&quot; string=\\&quot;${rel.num}\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/condition&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;fail message=\\&quot;Error: the release number formatted correctly\\&quot; unless=\\&quot;legal-relnum\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;propertyfile file=\\&quot;release.properties\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;entry key=\\&quot;rel.num\\&quot; value=\\&quot;${rel.num}\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/propertyfile&gt;<br />\r\n&lt;/target&gt;<br />\r\n<br />\r\nIn this example, the property rel.num is used to number. It is checked for validity using a regular and the &lt;matches&gt; task. If it is formatted correctly, the release.properties file for further use.',1);
INSERT INTO tips VALUES (14,'kevin','2008-05-25 18:47:50',2,'Re-useable build scripts','How to package u and create re-useable scripts.','Most build scripting tools have the ability to \\&quot;import\\&quot; the contents of one file into another. This capability can allow you to create a library of reuseable routines and then import them into a coordinating build script. In MSBuild you can achieve this by creating a project build script that contained common targets similar to the following:<br />\r\n<br />\r\n&lt;?xml version=\\&quot;1.0\\&quot; encoding=\\&quot;utf-8\\&quot; ?&gt;<br/>\r\nlt;Project xmlns=\\&quot;http://schemas.microsoft.com/developer/msbuild/2003\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;PropertyGroup&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Configuration Condition=\\&quot; \\\'$(Configuration)\\\' == \\\'\\\' \\&quot;&gt;Debug&lt;/Configuration&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/PropertyGroup&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;Target Name=\\&quot;Compile\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Csc Sources=\\&quot;@(SourceFiles)\\&quot;  OutputAssembly=\\&quot;$(appname).exe\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Target&gt;<br/>\r\n&lt;/Project&gt;<br />\r\n<br />\r\nThis example defines a common \\&quot;Compile\\&quot; target with parameters. This file can then simply be imported and its targets reused as in the following:<br />\r\n<br />\r\n&lt;Project DefaultTargets=\\&quot;Compile\\&quot;  xmlns=\\&quot;http://schemas.microsoft.com/developer/msbuild/2003\\&quot;&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;PropertyGroup&gt;<br />       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Configuration&gt;Release&lt;/Configuration&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/PropertyGroup&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;ItemGroup&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;SourceFiles Include=\\&quot;*.cs\\&quot;/&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ItemGroup&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&lt;Import Project=\\&quot;Common.targets\\&quot;/&gt;<br />\r\n&lt;/Project&gt;',1);
# --------------------------------------------------------

#
# Table structure for table `users`
#

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  username varchar(32) NOT NULL,
  `password` varchar(32) default NULL,
  firstname varchar(100) NOT NULL,
  lastname varchar(100) NOT NULL,
  userid varchar(42) NOT NULL,
  userlevel tinyint(1) unsigned NOT NULL,
  email varchar(50) default NULL,
  `timestamp` int(11) unsigned NOT NULL,
  notify tinyint(1) NOT NULL default '0',
  verifystring varchar(16) NOT NULL,
  active tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (username)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Dumping data for table `users`
#

INSERT INTO users VALUES ('abhanga','e58b7960f69ce753cc1b0b40ebd48e05','','','',0,'abhanga@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('abond07973','ed788b762de4df1750608a775d6b245d','','','',0,'abond07973@lacanapa.info',0,0,'',1);
INSERT INTO users VALUES ('achandram','90745a979a0d71635785aa91aa782f42','','','',0,'sekhar_26@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('AdamL','fd1b05c1fcbe06caf1a2c133e3368236','','','',0,'adam.leggett@upco.co.uk',0,0,'',1);
INSERT INTO users VALUES ('admin','280d085c44178e2a92874650e5d148bd','Administrator','','09ea3f027bfa67a5a823f150a46821a6',0,'webmaster@buildmeister.com',1215356207,0,'',1);
INSERT INTO users VALUES ('adonica','7eb8643d67e1090575d52c3a3052bc8f','Adonica Gieger','','',0,'adonica@adonica.co.uk',0,0,'',1);
INSERT INTO users VALUES ('agt07973','ed788b762de4df1750608a775d6b245d','','','',0,'agt07973@lacanapa.info',0,0,'',1);
INSERT INTO users VALUES ('akapania','6eb4a803e6d868f42f32fd6bd6bfa907','','','',0,'arunk@cheerful.com',0,0,'',1);
INSERT INTO users VALUES ('akkachotu','40be4e59b9a2a2b5dffb918c0e86b3d7','','','',0,'akkachotu@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('AMARNATH','57af3bd30278d02e646491fb166322e0','','','',0,'amarnathk@zensoftservices.com',0,0,'',1);
INSERT INTO users VALUES ('amirinator','3fffe0ab762e70fc41410fefb32c97bd','','','',0,'anashat@paxonix.com',0,0,'',1);
INSERT INTO users VALUES ('amiya_98','ffc150a160d37e92012c196b6af4160d','','','',0,'amiyapanigrahi@rediffmail.com',0,0,'',1);
INSERT INTO users VALUES ('andydo','e99a18c428cb38d5f260853678922e03','','','',0,'andydo@adelphia.net',0,0,'',1);
INSERT INTO users VALUES ('andyglick','abebf063d750438b4846c2fdd1797e72','','','',0,'andyglick@acm.org',0,0,'',1);
INSERT INTO users VALUES ('annudjm','fb86b534902594bbaeac9a22e474539b','','','',0,'annudjm@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('antonkim','97d42084ae204019f65b624c15fe2def','Anton Kim','','',0,'antonkim@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('asd31658','ed788b762de4df1750608a775d6b245d','','','',0,'asd31658@gigantegassoso.info',0,0,'',1);
INSERT INTO users VALUES ('astrhea','d5750f47eb25dfd76318d83a00bab8da','','','',0,'astrhea@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('AtInter','b74d36e1053525990dac8d48a48cef17','','','',0,'AtInterquad15@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('avo_micro','84d619cabc58db2901c0fc7de973720a','','','',0,'avo@microdoc.de',0,0,'',1);
INSERT INTO users VALUES ('awylie','9d593bb92502e2cb534078460e745762','','','',0,'awylie@curamsoftware.com',0,0,'',1);
INSERT INTO users VALUES ('balap6','38482652751dd8d03bbb48a53fec5451','','','',0,'balap6@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('bbiggi','4cbfb608425a30922e721369b7a1b374','','','',0,'brian.j.biggi@lmco.com',0,0,'',1);
INSERT INTO users VALUES ('bdgdsn04','96397df25f092f4b9144c266fbd45f6a','','','',0,'ravindrajain04@rediffmail.com',0,0,'',1);
INSERT INTO users VALUES ('bdoenges','819e15198e8464a6103b7c0958a26011','','','',0,'barbara.doenges@mci.com',0,0,'',1);
INSERT INTO users VALUES ('benallel','9b43b402829239337afa71492af41a0c','','','',0,'d_benallel@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('bgamble','5bd87f96f145733d33a8a32168832a00','','','',0,'bjgamble@austin.rr.com',0,0,'',1);
INSERT INTO users VALUES ('bigmadkev','b116950a795294a81fb2af5148ff6759','','','',0,'kev@inner-rhythm.co.uk',0,0,'',1);
INSERT INTO users VALUES ('BigShot','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'junkyard17@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('bm777','32de1044192a44e0ef8144f942585272','','','',0,'echtri55@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('boochingha','0a39e3fdfcb8077452e58f9b2a02a40b','','','',0,'chboo@ipowerbiz.com.my',0,0,'',1);
INSERT INTO users VALUES ('boxhead201','33ac0d39328e33fa8619b59fc05a1480','','','',0,'prowe2@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('brezbl','3858f62230ac3c915f300c664312c63f','','','',0,'blake.brezeale@wnco.com',0,0,'',1);
INSERT INTO users VALUES ('bsalalin','c99c076003aa2e7953970d9494975298','','','',0,'benoit.salaun@sgcib.com',0,0,'',1);
INSERT INTO users VALUES ('buddha33','e435e70033e0d3b533ee307238a2665b','','','',0,'medavie.scm.resource@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('buendia','6495c58dc5cda57595a52a9853378fdc','','','b78b070d86a36f452b8993a655efa534',0,'marcelo_labardini@us.ibm.com',1201811829,0,'',1);
INSERT INTO users VALUES ('buildmgr','670b14728ad9902aecba32e22fa4f6bd','','','',0,'kane.arvin@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('BusterFuzz','5dc554d20213f2e00903dcc82bb440b5','','','',0,'busterfuzz@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('butterman','d6a6bc0db10694a2d90e3a69648f3a03','','','',0,'jhalkedis@netzero.net',0,0,'',1);
INSERT INTO users VALUES ('byrden_j','4fc9baf210346939946d5a49f255588b','','','',0,'jimmy.byrden@vhi.ie',0,0,'',1);
INSERT INTO users VALUES ('cahern','78a1a7bba9150e1922a1a2f4070fedd0','','','',0,'charlieahern@redscaffold.com',0,0,'',1);
INSERT INTO users VALUES ('cashltd','3506cab9acd2704ccc118a3f7101d1fd','','','',0,'sean.h.kragh@wellsfargo.com',0,0,'',1);
INSERT INTO users VALUES ('ccarrasco','028da916acba257809f2736fbc115ede','','','',0,'carolina.carrasco@ing.cl',0,0,'',1);
INSERT INTO users VALUES ('cchew','0fe946c9404782e106ca5683dd8b8284','','','',0,'ching.chew@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('cfribbins','e389cb43132a236f3c11e96d4557a28e','','','',0,'chris.fribbins@rbs.co.uk',0,0,'',1);
INSERT INTO users VALUES ('cheister','3b8b11224cff58ea2a99b414d8979001','','','',0,'chris.heisterkamp@airplay.com',0,0,'',1);
INSERT INTO users VALUES ('chengwei','0ce1737a72af40cd3d50afbd039268df','','','',0,'chengwei@crimsonlogic.com',0,0,'',1);
INSERT INTO users VALUES ('chitral','deb2fb335003a340d5b2beb970184456','','','',0,'g_chitralekha@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('chitraleka','deb2fb335003a340d5b2beb970184456','','','',0,'gchitralekha@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('ChrisGWarp','67a95ee5c9f4f479562f7530a7b283ed','','','',0,'chrisg@warpspeed.com.au',0,0,'',1);
INSERT INTO users VALUES ('ckmason','b455f7ec12b4843b617338d4329b28f3','','','',0,'carlton.mason@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('cmercier','a821cd35ae9e617f483590c4a471df71','','','',0,'craig.mercier@sungard.com',0,0,'',1);
INSERT INTO users VALUES ('coolnattu','54410d753e6684c2824cb2113afcd5f6','','','',0,'natarajan.a@polaris.co.in',0,0,'',1);
INSERT INTO users VALUES ('corinnekry','1a7acf239b3aa2c3535014d6f0860216','','','',0,'corinnekrych@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('csernoskie','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'c.sernoskie@telesat.ca',0,0,'',1);
INSERT INTO users VALUES ('curmudjim7','81e63bb65e60212f7838650352bb1f07','James Reed','','',0,'jim-reed@comcast.net',0,0,'',1);
INSERT INTO users VALUES ('d98117','701d15538ffb5ca454b30e7734272cd6','','','',0,'Cliff.Swyningan@efunds.com',0,0,'',1);
INSERT INTO users VALUES ('DanEvans','85e4ccae6396fffa56f6117e4fce8e67','','','091e5bc03228f604c239c0f49aba4bd3',0,'dannyboy.evans@gmail.com',1199109864,0,'',1);
INSERT INTO users VALUES ('DanOmahony','b0da275520918e23dd615e2a747528f1','','','',0,'daniel.omahony@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('daudette','47accdcd8967de0b55a6582fb4875456','Daniel Audette','','',0,'daniel_audette@agilent.com',0,0,'',1);
INSERT INTO users VALUES ('daumas','647429291c48185515abce75666c0c99','','','',0,'daumas@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('davidip','8187dc8b85fd9005373e71d9e7422471','','','',0,'davidip2280@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('Dennis','8bdaa0a969b4c0f93b32aadd2650de4a','','','',0,'ulakar@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('dipalis','a4b3530fdb5f61b5e850c0e87c2a4cf2','','','',0,'dipali_sunkersett@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('directneha','ab449b84b0ba7d1001dad962736dcad2','','','',0,'direct2neha@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('dmauney','6363d6268415d2f18ae9e3ffe4088b9c','','','',0,'builder@mauneys.cjb.net',0,0,'',1);
INSERT INTO users VALUES ('dneyman','c37c88c116512456d7a7094ba9858a8f','','','',0,'dneyman@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('dnimmo','ba35d3f0141473854d888e2251393bc6','','','',0,'david.nimmo@au1.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('dodos','6c81ac777139cf1c35b8327288253d83','','','',0,'vatos_l@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('doron','2637a701ac0d5d7eb772e1dab407746f','','','',0,'doron.solomon@oz.com',0,0,'',1);
INSERT INTO users VALUES ('dpilarz','b50ac41ec20631c7b6be72f070d8ff67','Don Pilarz','','',0,'don.pilarz@ericsson.com',0,0,'',1);
INSERT INTO users VALUES ('dsameer','6eab7e9a55fe1a209f5eb8556888e45f','','','',0,'dsameer@rocketmail.com',0,0,'',1);
INSERT INTO users VALUES ('duong07','0f17377981d15100583e919a1c3d384c','','','',0,'duong07@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('EastCoast1','5449b0e52a89d0a28351e5affd7ae26c','','','',0,'murugesan.saravanakumar@wipro.com',0,0,'',1);
INSERT INTO users VALUES ('eddytone','00822ba74e9f7cd8f7ed4509c4a1b96c','','','',0,'eddytone@naver.com',0,0,'',1);
INSERT INTO users VALUES ('edgey','5d771e01cf7233635415e1351da2b7ae','','','',0,'sop_web@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('eknutson','bf301092c9a2469bfb6c5afb11d07892','','','',0,'eric_knutson@bluecrossmn.com',0,0,'',1);
INSERT INTO users VALUES ('ellisonp','42d388f8b1db997faaf7dab487f11290','','','',0,'paul.ellison@uk.abnamro.com',0,0,'',1);
INSERT INTO users VALUES ('emperor','37b43a655dec0e3504142003fce04a07','','','',0,'sreeramk@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('endunn','982f392cd0527714f4219c5d49389464','','','',0,'ericndunn@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('eriklundh','da2db9c6b7df2f1232d091e7db0a4c56','','','',0,'erik.lundh@compelcon.se',0,0,'',1);
INSERT INTO users VALUES ('ErnestHi11','935ea511a41fe88dfd359502f9e407f4','','','',0,'ernest.h.hill@irs.gov',0,0,'',1);
INSERT INTO users VALUES ('esevland','ca8785bbec0dcac5a81451efc604f2fa','','','6a6add3dd67cf2856d1a59d7345374b2',0,'esevland@constantcontact.com',1210016091,0,'',1);
INSERT INTO users VALUES ('essoussi','6a1d121041978952dfefdf95523a31fc','','','',0,'hans@essoussi.com',0,0,'',1);
INSERT INTO users VALUES ('esweber78','87cdfa907e409442cbe0dbd0ef6e752a','','','8e62f1c39ee6c3138f8b3bd9347a326d',0,'esweber@gmail.com',1210265617,0,'',1);
INSERT INTO users VALUES ('Eva-Lynne','170874a06a6ab9f8d3d547863735e4e5','','','',0,'evalynne@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('fadongle','ea3596139530b2abe7089082ab57ecbd','','','',0,'fadongle@163.com',0,0,'',1);
INSERT INTO users VALUES ('fjgilroy','f64e612ea88f56514dbb2d1213d330fa','','','',0,'fjgilroy@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('flarsson','a386a936657022f4281b46d755f9807b','','','ba92d6af909f8580fd94d2df87d395e6',0,'fredriklarss@gmail.com',1208378245,0,'',1);
INSERT INTO users VALUES ('foggy','e9c4bb7e20067b5707c2c1c7375f549e','','','',0,'laura.phillipson@rhe.co.nz',0,0,'',1);
INSERT INTO users VALUES ('frecl','730603ba64c58a1fca8caf7a118f1259','','','',0,'fredrik.claesson@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('fsprengers','5fecc143b32efdc0a188d4adce4c1d13','','','',0,'frank.sprengers@cz.nl',0,0,'',1);
INSERT INTO users VALUES ('ganapathy','e9f852b0a8547ec23698fc6bcd85a818','','','',0,'raj.ganpat@yahoo.co.in',0,0,'',1);
INSERT INTO users VALUES ('garavid','59801db1ff70bf876579810c76b5fec2','','','',0,'donald.garavito.ctr@osd.mil',0,0,'',1);
INSERT INTO users VALUES ('gavin','01cfe8113c97244f0b84223e1f64d820','','','',0,'gavin.clarke@gs.com',0,0,'',1);
INSERT INTO users VALUES ('gcullen','b8cc059a54fd5dbf77e0a34b6ce4c30e','','','',0,'gcullen@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('georggr','73dbea9764f56cf927d470dc4643ca3d','','','',0,'georggr@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('gindr','66c271787d1b254c03c5706065c12c62','','','',0,'g_rai1@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('gkubaczkow','bdf12dea0742a93de7ae2f848b9be026','','','',0,'greg.kubaczkowski@utoronto.ca',0,0,'',1);
INSERT INTO users VALUES ('glennoph','ca91d8c7a27320c8c6312411eef4d7d1','Glenn Opdycke-Hansen','','',0,'glennoph@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('go1vols','29bc1e81aa19b0f2f86b88ad41184e74','','','',0,'hillvolfan@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('gpkirk','8adbb98cf891e1cc373c30e93655b88a','','','',0,'geoffkirk@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('gregallen','48f1c134537469a5f071e75f60e93c99','','','',0,'greg.allen.i9is@statefarm.com',0,0,'',1);
INSERT INTO users VALUES ('gsusie','57b646bab9c5d88da6b94bd223612ca6','','','',0,'gsusiesmith@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('harminder','e6a52c828d56b46129fbf85c4cd164b3','','','',0,'v2harry@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('hathwar','55136b321111fcc7aad0a46ebe7652d9','','','',0,'prashanthkit@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('heavydawso','924dac7e3d9e9957edeab7473c25d293','David Corley','','',0,'david.corley@ericsson.com',0,0,'',1);
INSERT INTO users VALUES ('htran0424','adf4d580055115eac27b2ab5ac35bb6b','','','',0,'Hien_Tran0424@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('hwerner23','35d969152d376ac47e676734f2b31da1','','','',0,'hardwer@earthlink.net',0,0,'',1);
INSERT INTO users VALUES ('iambharath','14e2f0ddf2f88e34b78d68226af5705c','','','',0,'iambharathrama@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('icecolor','8dbdda48fb8748d6746f1965824e966a','','','',0,'icecolor@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('imosby','f1f3c01a9b7a4b918db0f3a97e9fe1a9','','','',0,'imosby@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('indrg','c82138c7e01ad922b0a58fdd33c3a91c','','','',0,'indrg@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('ita583buil','ed788b762de4df1750608a775d6b245d','','','',0,'ita583buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('j31416pi','56fcca86709d859bb03cbc8730ed99a6','','','',0,'j31416pi@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('jacklunn','3ba7116e06720f8bf540e6d7a80081e1','','','',0,'jacklunn@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('jbanham','3626fe5abfc026711e79c0fbf9b29baf','','','',0,'build@ajrb.eclipse.co.uk',0,0,'',1);
INSERT INTO users VALUES ('jbogard','68ce1f0516a48b1580bfecf1fbf5a6f8','','','',0,'james_bogard@dell.com',0,0,'',1);
INSERT INTO users VALUES ('jbseenu','26b2e5a02b2d64ed6b72e5fb453015f9','','','',0,'jbseenu@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('jdcruz','ae2b1fca515949e5d54fb22b8ed95575','','','',0,'jdcruz@dodgeit.com',0,0,'',1);
INSERT INTO users VALUES ('jdillonusa','fea0f1f6fede90bd0a925b4194deac11','','','',0,'jdillonusa@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('JeromeAB','d7d7d4bf14e4cdc3eeedc2e029b7599e','','','',0,'junkmail@yosemitek.com',0,0,'',1);
INSERT INTO users VALUES ('JGHowland','6e0cbf9a432c32a7758d1bdc13aad971','John Howland','','',0,'JGHowland@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('jim-reed','119a9bcce4487f66af44661dc20c20e2','','','',0,'jreed@ciber.com',0,0,'',1);
INSERT INTO users VALUES ('jolog','ae2b1fca515949e5d54fb22b8ed95575','','','',0,'super_jologs@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('joosh','e10adc3949ba59abbe56e057f20f883e','','','',0,'jshjoel@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('jpapo','d2ce0caefa337651d640de76a756e60b','','','070551c3b7c154400e32b66ce7b32d47',0,'jose.papo@gmail.com',1205499828,0,'',1);
INSERT INTO users VALUES ('jrnicl2','abd7372bba55577590736ef6cb3533c6','','','',0,'jrnicl3@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('juergen','2aee1c40199c7754da766e61452612cc','','','',0,'bieblj@msg.de',0,0,'',1);
INSERT INTO users VALUES ('jwilson','4c141df05991898bbb332fbbc7016b39','James Wilson','','',0,'jwilson@trinem.com',0,0,'',1);
INSERT INTO users VALUES ('kai_jing','eb8070182dab16458387017b42bb37da','','','',0,'kai_jing@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('kakto31658','ed788b762de4df1750608a775d6b245d','','','',0,'kakto31658@gigantegassoso.info',0,0,'',1);
INSERT INTO users VALUES ('kaluza','b19a4059a8254a35bbed1313e03eb467','','','',0,'klein.kaluza@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('kalyan','261c9009c551ab7785ff22dc26289313','','','',0,'kalyan_es@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('karenigan','9cd8a21f9fe79f4b447dbf2b21e6d783','','','',0,'karen.mcadams@workstreaminc.com',0,0,'',1);
INSERT INTO users VALUES ('kevin','280d085c44178e2a92874650e5d148bd','Kevin','Lee','d5787d3ea323940b2fe3b1154ac31608',0,'kevin.lee@buildmeister.com',1215109465,0,'',1);
INSERT INTO users VALUES ('khmarbaise','c6526709b9e84efbc84f5f6295b937d8','','','',0,'buildmeister@soebes.de',0,0,'',1);
INSERT INTO users VALUES ('kietlam','b2fe486d5849342a4dafeb6a49b1c5ca','','','',0,'kietlam@netscape.net',0,0,'',1);
INSERT INTO users VALUES ('kiruba','19e3ea97d9a7f46fffce213ddbf7a9df','','','',0,'nkkirubakaran@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('klotz','9932d25f1d6099025315c5991886999d','','','',0,'tobias.klotz@gmx.de',0,0,'',1);
INSERT INTO users VALUES ('klotzt','9932d25f1d6099025315c5991886999d','','','',0,'tobias.klotz@draeger.com',0,0,'',1);
INSERT INTO users VALUES ('kpkuykend','2fa6ad1c9f7d514e114810adbdeab576','','','',0,'kpkuykend@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('ksambaiah','cc03e747a6afbbcbf8be7668acfebee5','','','',0,'sambaiah.kilaru@wipro.com',0,0,'',1);
INSERT INTO users VALUES ('ktest','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'kelee71@btopenworld.com',0,0,'',1);
INSERT INTO users VALUES ('ktest2','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'chat2kevin@googlemail.com',0,0,'',1);
INSERT INTO users VALUES ('kzimmerli','c465e2b8daa2730f148322180bd19991','','','',0,'zimmerlk@stratcom.mil',0,0,'',1);
INSERT INTO users VALUES ('k_ajik','9b38f878eb7d6f19b11a2093d7be065d','Ajit','','',0,'ajit.kannan@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('landisjp','122e6d4dfcd49998eac780896d0d88ae','','','',0,'landisjp@maritz.com',0,0,'',1);
INSERT INTO users VALUES ('lazar07973','ed788b762de4df1750608a775d6b245d','','','',0,'lazar07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('lazar31658','ed788b762de4df1750608a775d6b245d','','','',0,'lazar31658@abiesalba.info',0,0,'',1);
INSERT INTO users VALUES ('levtar','ace8dedb52cec214b1fdf16dec55df74','','','',0,'levt@dbmotion.com',0,0,'',1);
INSERT INTO users VALUES ('lkadmiri','af1f3b2f094b925a154f7d5ed944024e','','','ac81858b3c442581c19ba98baed527cf',0,'tounzi@hotmail.com',1206457545,0,'',1);
INSERT INTO users VALUES ('lmaes','aa4d363ab69ea9df4488810d70bbc227','','','',0,'luc.maes@telenet.be',0,0,'',1);
INSERT INTO users VALUES ('lmcpare','6fda27264f8154abdb6ed31bd701a8e5','Patrick Renaud','','056a3aa2be502e435b62225ad572ebfe',0,'patrick.renaud@ericsson.com',1199294507,0,'',1);
INSERT INTO users VALUES ('luisgarcc','36686d8d2277e5e9572373fe59688680','','','646c66b8a2d57fc6bda2d7329a592207',0,'garciala@us.ibm.com',1205686756,0,'',1);
INSERT INTO users VALUES ('l_garrity','a26b83791081a40c630d8d5c7a204504','','','',0,'garrity@uk.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('mahmoodt','b89dc80fb627dbdcfe7d8e03876985d8','','','',0,'tahir.mahmood@symbian.com',0,0,'',1);
INSERT INTO users VALUES ('makagon','f35239ce32a78302e45d5e856bde5891','','','',0,'pm@computer.org',0,0,'',1);
INSERT INTO users VALUES ('mamiri','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'mehdi.amiri@ask.com',0,0,'',1);
INSERT INTO users VALUES ('marcus','d6fe10899d636ffacf1ba8847a6c8fff','','','',0,'marcusgatte@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('MarioCOluz','8ac11ed1f9455f92923442f9fce1a1f8','Mario','','',0,'mariocoluzzi@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('Mark','47b06804cbc093a5fffb18aff6aaf302','','','',0,'mark.stellaard@philips.com',0,0,'',1);
INSERT INTO users VALUES ('marks','d48124e03d646d7bdf0ba9b335983d84','','','',0,'msilva123@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('Masood','8eb58dd5e328e978169c7b0cbd30d43f','','','',0,'masood.java@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('matsnils','5020a545f43a0bd16ff18f615707e77d','','','',0,'mats.nilsson@gafvelin.com',0,0,'',1);
INSERT INTO users VALUES ('maven06','6f9eae90b2b4d5b6830516306dc2e1c7','','','',0,'lifequest_info@yahoo.ca',0,0,'',1);
INSERT INTO users VALUES ('mbonfig','cfc10f575c6d9d302e77d15e50e87546','','','',0,'drfig@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('mclark','1e46ed619f4e018001a2d2fbb2d37731','Michael','','',0,'mclark@phtcorp.com',0,0,'',1);
INSERT INTO users VALUES ('mdawar','89c87f73ac5f1dbe66fa45cb7cc55d3e','','','',0,'mdawar@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('mdgarrison','0967b7601de646a217750b70685740fa','','','',0,'mgarriso@acninc.com',0,0,'',1);
INSERT INTO users VALUES ('mdthomas','7b8b08ba43f9784f370d8341ccc28b58','Dudley Thomas','','',0,'mdthomas@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('mebruner','54b138bc1b8fbd63869c3fc12409f7ed','','','',0,'mebruner@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('meher03','81906818529a060facd5655d4e4e3163','','','',0,'meher03@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('meixner','b79832acb7356da1db8d1ac41e6ca441','','','',0,'meixner@informatik.fh-augsburg.de',0,0,'',1);
INSERT INTO users VALUES ('mgarrison','aa437dfb527dedd1a93a3ca67a0c4b21','','','',0,'mgarrison267370mi@comcast.net',0,0,'',1);
INSERT INTO users VALUES ('mhisatomi','70ac330e13026573806b949a70803055','','','',0,'mhisatomi@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('mhorn','20a24c17a5c3b989bf602206d045739b','','','',0,'mhorn@acm.org',0,0,'',1);
INSERT INTO users VALUES ('mikki2000','717698399e7d3d8a84bd79eb1da0489f','','','',0,'mikki2000@web.de',0,0,'',1);
INSERT INTO users VALUES ('mingramma','8a95dc2460006f7568c5ae68d0d2f5d5','','','',0,'mari.ingram@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('mirjana','d5750f47eb25dfd76318d83a00bab8da','','','',0,'petrovic@ali.com.au',0,0,'',1);
INSERT INTO users VALUES ('mmartin','b1b21a7610f9aa3a07999207aef911cc','','','',0,'mmartin@insureworx.com',0,0,'',1);
INSERT INTO users VALUES ('mmawuru','1c4da8c84d3caa31dd21c7c9da2a1e23','','','',0,'mmawuru@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('mnloka','4161baca082dbfd53fe9447ce12a4bb6','','','',0,'mnloka@rogers.com',0,0,'',1);
INSERT INTO users VALUES ('mrichard13','389a37bb26b3b1668eadbe678c6822c4','','','',0,'mrichard@hanover.com',0,0,'',1);
INSERT INTO users VALUES ('mzmanir','25d55ad283aa400af464c76d713c07ad','','','',0,'mzmanir@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('nagender','42bb64e9203109d3fd858f67f8dfaebf','','','',0,'nagender_malik@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('nallurimur','53cf5f247df8e09a003a3160aaa3f2b5','','','',0,'nallurisubscriptions@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('nasmajoh','f864ac4b5cd1537780f185849b9e7543','','','',0,'john.nasman@luukku.com',0,0,'',1);
INSERT INTO users VALUES ('nate6200','80e86b9efc58dfe7d2406ab15fff4a4d','','','',0,'njohnson9@rochester.rr.com',0,0,'',1);
INSERT INTO users VALUES ('nate_6200','80e86b9efc58dfe7d2406ab15fff4a4d','','','',0,'njohnson@sdi.xerox.org',0,0,'',1);
INSERT INTO users VALUES ('nbohra','c21d79b61ea08b585ec318bfa4a422e9','Ninju Bohra','','',0,'ninju_bohra@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('neo227buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo227buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo664buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo664buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo699buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo699buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo942buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo942buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo943buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo943buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo964buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo964buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('neo971buil','ed788b762de4df1750608a775d6b245d','','','',0,'neo971buil@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('nerenjain','4acb2b4b8851a4bd6e344ef814072250','','','',0,'nerenextra@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('newiz07973','ed788b762de4df1750608a775d6b245d','','','',0,'newiz07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('nielsend','5f4dcc3b5aa765d61d8327deb882cf99','','','',0,'david_r_nielsen@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('offline','6599f1dd487fcd7db384043e41a852c6','offline','','',0,'offline@buildmeister.com',0,0,'',1);
INSERT INTO users VALUES ('papuga','bdf12dea0742a93de7ae2f848b9be026','','','',0,'greg.k@canada.com',0,0,'',1);
INSERT INTO users VALUES ('paulie','b06ee0845c261e8e002247c4bb8e9dfe','','','',0,'paul_collins@online.ie',0,0,'',1);
INSERT INTO users VALUES ('pcnax31658','ed788b762de4df1750608a775d6b245d','','','',0,'pcnax31658@gigantegassoso.info',0,0,'',1);
INSERT INTO users VALUES ('peternor','3406e9a9592dfe7dd20fd5fbec0cb271','','','',0,'peter.norbury@uk.fid-intl.com',0,0,'',1);
INSERT INTO users VALUES ('pguser','17778a7aed84e7046ee15dca6c27f933','','','',0,'pguser@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('phamilton','42d388f8b1db997faaf7dab487f11290','','','',0,'paul@sheepish.com',0,0,'',1);
INSERT INTO users VALUES ('phanguye','4cf768247340141f940f2263fe5fffef','','','',0,'nguyenphat@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('pjsousa','1e6708acd2597db31e9526a62d7c797b','','','9e30680608b6530c51791086baf5cc8f',0,'ppintosousa@gmail.com',1209053067,0,'',1);
INSERT INTO users VALUES ('pnebhnani','14764db85f7ffb0cef19ef030a6d5eed','','','',0,'pnebhnani@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('prasad','8873eb99ee207fc7427068b03fc45e19','','','',0,'katikireddyp@sify.com',0,0,'',1);
INSERT INTO users VALUES ('prasanta','79cfac6387e0d582f83a29a04d0bcdc4','','','',0,'praschau@in.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('psrinivas','9ca21b2ed921aaa7cffa32d9096b5853','','','',0,'srinivas.panchakarla@citi.com',0,0,'',1);
INSERT INTO users VALUES ('rabind','577044d72e9f3d7b01c166519c1f1cd4','','','',0,'srabindranath@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('raghu','ab9e3e0399b0469dd1bb763413b0080f','','','',0,'srinivasaiah_raghavendra@emc.com',0,0,'',1);
INSERT INTO users VALUES ('rahulwulan','a3e8f43f243ebc0cefa6ba81f52bbdf5','','','',0,'rahulwulan@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('randeffect','f88aeadb7612a2a2f538845210551980','','','',0,'greg@randeffects.com',0,0,'',1);
INSERT INTO users VALUES ('raymond','8530608ef7631cb943f52b445b6dd300','','','',0,'xusc2004@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('rhassey','79995ec27e13ea689b071a74b2e05c37','','','',0,'richard.hassey@wamu.net',0,0,'',1);
INSERT INTO users VALUES ('rjunque','4006534e9c8e09e052a9600daeb37b3e','','','',0,'rjunq@uol.com.br',0,0,'',1);
INSERT INTO users VALUES ('rmalachi','125f320902aaeded1a5dcc50c5e8e8bb','','','',0,'malachi_ron@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('rprasad','2bbce2aaed68c1707c257a1856262f1f','','','',0,'rshivareddy@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('rsanfo','b941c2463ac386aae21ef71cf4d30aaa','Reid Sanford','','',0,'reid.sanford@nike.com',0,0,'',1);
INSERT INTO users VALUES ('ryep1','ab337c34de23ee3b5a126419954ce825','','','',0,'robert_yep@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('sabgray','f20ec73bd5d7fc80bd299d38edc00dcc','','','',0,'sgray@biteknc.com',0,0,'',1);
INSERT INTO users VALUES ('Samonja','348a1c23a5373831bdb1d8934a10a98a','','','',0,'hagen_friends@mail.ru',0,0,'',1);
INSERT INTO users VALUES ('sandeepj2e','6a44840b70bcb02bf6d31979998af798','','','',0,'sandyvedi786@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('sanjeevakp','5d0a0a96f24997386fa151b394a3e681','','','',0,'sanjeevakp@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('Santosh','a6f30815a43f38ec6de95b9a9d74da37','','','',0,'santosh.pagare@neilsoft.com',0,0,'',1);
INSERT INTO users VALUES ('savithari','6b3f0b3a0cac070419617a1d0b5f7be7','','','',0,'savithari@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('sbrochelle','cba9fe13f08d875808c63432486ce807','','','',0,'sbrochelle@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('SchwaBer','854f459e16b99209a93e9efd73fb0f7b','','','377a6e58bee26a2ec085e73030ca71db',0,'bernhard.schwarz.ext@web.de',1203425711,0,'',1);
INSERT INTO users VALUES ('SchwarzB','c3c86ad94fd50e37912d1a09049b16d1','','','',0,'bernhard.schwarz@web.de',0,0,'',1);
INSERT INTO users VALUES ('sebwong','f1afdfb40d0250309f246a4c7bd949f1','','','',0,'seb_wong@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('shibukraj','6971803176215fd001c5428343308b65','','','',0,'shibukraj@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('skanda','2a61562f14499daf3ad418f018c79c06','','','',0,'skandakumar.malpe@exensys.com',0,0,'',1);
INSERT INTO users VALUES ('SLipscombe','e1155cbac9e202f4b447c1a3db3bf040','','','',0,'slipscombe@yahoo.co.uk',0,0,'',1);
INSERT INTO users VALUES ('softvenu','0162cefc4952304026cb1f5dab2419d2','','','',0,'BVenugopal@novell.com',0,0,'',1);
INSERT INTO users VALUES ('sp66267','9ca21b2ed921aaa7cffa32d9096b5853','','','',0,'sp66267@citi.com',0,0,'',1);
INSERT INTO users VALUES ('srinivas','0280a430e35fee634f01cbc5a8178864','','','',0,'kon_srinivas@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('stevenhale','c7656ce3fbb462c82bad4e11fc7f4165','','','',0,'steven.hale@sbab.se',0,0,'',1);
INSERT INTO users VALUES ('steve_geo','11a7f956c37bf0459e9c80b16cc72107','','','',0,'steve_geo@optusnet.com.au',0,0,'',1);
INSERT INTO users VALUES ('strongus','cb5562d99d2ea53eca20d3d0c78c38d2','','','',0,'strongus_us@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('subra','68f44f3e44f17c01e8b8b775d6c84880','','','',0,'subramanianr@hcl.in',0,0,'',1);
INSERT INTO users VALUES ('subraplus','68f44f3e44f17c01e8b8b775d6c84880','','','',0,'subraplus@sify.com',0,0,'',1);
INSERT INTO users VALUES ('sukar','714606e8be8babec367de7fc0133e062','','','786dd030afb141a2ce99e7e268119bbf',0,'msc.karthikeyan@gmail.com',1208133759,0,'',1);
INSERT INTO users VALUES ('sukhdevftb','70a2c749e233ecfc8c4fe2e049e0ed0a','','','',0,'sukhdevd5@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('svak','94a53ce4e9a3da738c31ec7a54b24b57','','','',0,'jers@ramboll-informatik.dk',0,0,'',1);
INSERT INTO users VALUES ('tabuchid','07f5f7b7e7602bafe7050c964dcead55','','','',0,'drtabuchi@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('tcondit','2df9c4dee25b2184764f06e1d605e715','','','',0,'tcondit@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('tdjordan','97dc564e979411e6d04560509781c2a3','','','',0,'tdjordan@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('tehret77','8fd6afa51cfa92e316dc9d3c5c28763f','','','',0,'t.ehret@web.de',0,0,'',1);
INSERT INTO users VALUES ('testcase','026452bc368f88ed4d10ecfbb86e7e49','','','',0,'x@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('thyagk','25cf6137987c0309b4d320f0024faacb','','','79ed4d811d283bd8a20b5b2fae9b2fba',0,'thyagk@gmail.com',1212034095,0,'',1);
INSERT INTO users VALUES ('tjbush','bebc0b648f3d24a4bd3490fa20a9c741','Terry Bush','','',0,'terryjohnbush@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('tjk','8d3e53fb67fb04f869f3638940f99ebd','','','8021a6277f8c1c7288ef25a61c6ea2b0',0,'tjk@us.ibm.com',1201798640,0,'',1);
INSERT INTO users VALUES ('tkuchhal','f3245aa0ffbb76516f0e2e35805709b4','','','',0,'tkuchhal@au1.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('tlpearce2','c944898d98fcdc8785759613bc63a895','','','',0,'tlpearce2@earthlink.net',0,0,'',1);
INSERT INTO users VALUES ('tlroche','536a2202bf41ee1967c1ce7bf6aebc0d','Tom Roche','','',0,'tlroche@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('TMBoston','fd5bcd291f42952cb70e92e0d0f3ade2','','','',0,'tmulligan@verizon.net',0,0,'',1);
INSERT INTO users VALUES ('Tobias','0fadf5bbf8d9d85c83b1d7e20b1a2778','','','',0,'tobben@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('tomasso','d3f12f20c5a3a930ef83e3ceaa3c1845','','','d7fc556f98ba5569bc414a81bb418641',0,'thomas@ehardt.net',1207886861,0,'',1);
INSERT INTO users VALUES ('torinoblue','c969b336246b9de94b0694eeb3268c90','','','',0,'stephen@zamano.com',0,0,'',1);
INSERT INTO users VALUES ('trimmers','56ef790373cb534302917a609555c9d8','','','',0,'simon.trimboy@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('tseviet','9a3f85f087f2f8ef5b9e0cdeb995e429','','','',0,'tseviet.tchen@csiro.au',0,0,'',1);
INSERT INTO users VALUES ('tycorle','448834a56bf2313a9a801846ca2434e2','','','',0,'tyacie@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('uiital308b','ed788b762de4df1750608a775d6b245d','','','',0,'uiital308b@allgel.info',0,0,'',1);
INSERT INTO users VALUES ('uiital778b','ed788b762de4df1750608a775d6b245d','','','',0,'uiital778b@agnitumhost.net',0,0,'',1);
INSERT INTO users VALUES ('uiital841b','ed788b762de4df1750608a775d6b245d','','','',0,'uiital841b@allgel.info',0,0,'',1);
INSERT INTO users VALUES ('Ulf','29e79757d92f2c34c4320d38775e9d15','','','',0,'uangermann@googlemail.com',0,0,'',1);
INSERT INTO users VALUES ('uzer07973','ed788b762de4df1750608a775d6b245d','','','',0,'uzer07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('uzer31658','ed788b762de4df1750608a775d6b245d','','','',0,'uzer31658@abiesalba.info',0,0,'',1);
INSERT INTO users VALUES ('uzerz07973','ed788b762de4df1750608a775d6b245d','','','',0,'uzerz07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('uzerz31658','ed788b762de4df1750608a775d6b245d','','','',0,'uzerz31658@abiesalba.info',0,0,'',1);
INSERT INTO users VALUES ('uzzz07973','ed788b762de4df1750608a775d6b245d','','','',0,'uzzz07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('vadrian','0ed5a397ac278abe9de7281d6854b11a','','','',0,'vadrian@us.ibm.com',0,0,'',1);
INSERT INTO users VALUES ('vermarav','ea56abaacd7c6919a1e4d1de48a043c5','','','',0,'ravipom@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('vijaym','6a5b5bea80f50e679487723531073448','','','',0,'vijymp@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('viks76','3c3e3cc4a76f501f500376cdc6f8e62e','','','',0,'vshevde@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('vmore','1d999e25cf66e40189d2b06f2dd7fbd1','','','',0,'vishwasmore@gmail.com',0,0,'',1);
INSERT INTO users VALUES ('vsasikanth','a5d2a2f81272950af3a09b979f91c457','','','',0,'sasi_kanth77@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('waribamb','bed128365216c019988915ed3add75fb','','','',0,'waribam_b@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('wclark74','7d5fd5c4f6317dc3d46593db5e3471c0','','','',0,'wclark74@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('weinstid','95a56c170b2bae6dabbc6dc457a49e68','','','',0,'ido.weinstein@ge.com',0,0,'',1);
INSERT INTO users VALUES ('whovingh','9376a7f7cfe39f2d048046f83123ae72','','','',0,'whovingh@ctr.pcusa.org',0,0,'',1);
INSERT INTO users VALUES ('woneill','6b0d3600d50944ab08b6145722eaa7c2','','','',0,'buildmeister.woneill@spamgourmet.com',0,0,'',1);
INSERT INTO users VALUES ('ww1998','efead51028a03db2d63f0e79ba032a82','','','',0,'ww1998@hotmail.com',0,0,'',1);
INSERT INTO users VALUES ('yogesh123','124c8995c4ca868320eee5ccf371af14','','','',0,'syncmaster_78@yahoo.com',0,0,'',1);
INSERT INTO users VALUES ('zom07973','ed788b762de4df1750608a775d6b245d','','','',0,'zom07973@62fst5376.info',0,0,'',1);
INSERT INTO users VALUES ('zomzm07973','ed788b762de4df1750608a775d6b245d','','','',0,'zomzm07973@acser.info',0,0,'',1);
INSERT INTO users VALUES ('zoom31658','ed788b762de4df1750608a775d6b245d','','','',0,'zoom31658@7atagd.info',0,0,'',1);
INSERT INTO users VALUES ('zoozm31658','ed788b762de4df1750608a775d6b245d','','','',0,'zoozm31658@abiesalba.info',0,0,'',1);
INSERT INTO users VALUES ('zxc07973','ed788b762de4df1750608a775d6b245d','','','',0,'zxc07973@felissilvestriscatus.info',0,0,'',1);
INSERT INTO users VALUES ('zzandzry','94f5d7210a9bb27dc2b6b9e398c1a553','','','',0,'zz.r@163.com',0,0,'',1);
INSERT INTO users VALUES ('testuser','ad66caa82eb40f9655fc4456bc370048','Test','User','0',1,'kelee71@btopenworld.com',1196011570,1,'%24H%5B%7DZikt_n',0);
INSERT INTO users VALUES ('Abpup','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'njc@dlwm.com',1196032651,1,'9S%5E%2F%5Ea%24h',0);
INSERT INTO users VALUES ('Atmog','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'djf@uuai.com',1196058307,1,'0c%5E6%288OHMZ%7',0);
INSERT INTO users VALUES ('glasman','305b06b5aef518b151544a85ea643017','Adi','glas','151b25ca31ff0e6a1fedc291d16a858e',1,'adi.glasman@gmail.com',1196088421,1,'n%27F%2Cz%3EpOBt',1);
INSERT INTO users VALUES ('zecivzr','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'hibxg@cqryf.com',1196140116,1,'%28%5B%7E%3Bil_Q',0);
INSERT INTO users VALUES ('sbhatnag','64904ceaae85067b5fcdc71ddbbd76a1','Saurabh','Bhatnagar','63bbd18d71a6f87102333bc4184e93a8',1,'saurabh.b.bhatnagar@oracle.com',1197391079,1,'g0%28x%3Fcb%5E%2',1);
INSERT INTO users VALUES ('dsvirrz','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'hfphc@dkxni.com',1196321128,1,'%23%264%24-%7D8S',0);
INSERT INTO users VALUES ('hrpiotb','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'uyaid@ypsma.com',1196413612,1,'%5E5%3CfPEcIM35L',0);
INSERT INTO users VALUES ('lofjtik','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'cudtu@pxepp.com',1196491058,1,'%40.%3F%21%2Fst%',0);
INSERT INTO users VALUES ('tlcwraw','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'yelpk@qepim.com',1196564318,1,'I%2B%25RUsY%2A_m',0);
INSERT INTO users VALUES ('nuirfml','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'ocrmb@rrjrq.com',1196693399,1,'e5Mb87Rj%21jVP%2',0);
INSERT INTO users VALUES ('frankh','e8d0736398ef531cf252aa6c14d59b46','frank','harrington','dd29fd2f05abf377389b2def058ef095',1,'frankh01852@yahoo.com',1196717490,1,'.v78v%21f%7BpL%2',1);
INSERT INTO users VALUES ('iknknvq','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'fvupe@jqhsr.com',1196746789,1,'r%24shc_pZu30._z',0);
INSERT INTO users VALUES ('lvttasr','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'nyonc@wpast.com',1196829711,1,'P%2Bhkz_v7EH%230',0);
INSERT INTO users VALUES ('irimlmv','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'qgxqs@bbpwz.com',1196920020,1,'85%2C_Rua%7CibJj',0);
INSERT INTO users VALUES ('jaym19','5f4dcc3b5aa765d61d8327deb882cf99','Jay','Mehta','0',1,'jaym19_2000@hotmail.com',1197038829,0,'-%29%5EW%7C8uj-J',0);
INSERT INTO users VALUES ('Arypp','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'lga@dolg.com',1197247850,1,'J%5BlmJ%28vs%26l',0);
INSERT INTO users VALUES ('Amfgs','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'zmh@maly.com',1197260968,1,'%3Fs%3Bz6%7C%5Bq',0);
INSERT INTO users VALUES ('Apalv','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'rin@cawp.com',1197328713,1,'u%27%3Emb%7CA%23',0);
INSERT INTO users VALUES ('Alkif','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'pqw@nzzl.com',1197338686,1,'umDeR%26svCc8C_%',0);
INSERT INTO users VALUES ('Apaxr','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'uwk@jpjg.com',1197347808,1,'%2F%21SFC%288%60',0);
INSERT INTO users VALUES ('gnyasue','fbe4e477caf8617d82b7cc9a8da3d410','Gustavo','yasue','2131216f803385611b24db297291afa6',1,'yasue@ar.ibm.com',1201199026,1,'%3DA%27_1%26%2C%',1);
INSERT INTO users VALUES ('rkkfpev','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'fzhgp@wmvgk.com',1197992413,1,'bXkK%5B%7B%23Y%2',0);
INSERT INTO users VALUES ('yvqatuk','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'wekrd@fehii.com',1197994182,1,'%7CY%248%7D69zir',0);
INSERT INTO users VALUES ('nbkm68z','c9c2c5134d206f912fa6f60d6c587437','Ray','Tang','8d36414e9f54fc2c608b83a28b5346b4',1,'tangr_99@yahoo.com',1198037009,1,'7u%7C%3AyKCNs%24',1);
INSERT INTO users VALUES ('pablof','2e21c031790f2eb31eff15dcd5cd47e0','Pablo','Fernandez','ad4ff5583b5b2c8c65b0e243ce99f06b',1,'pablof@ar.ibm.com',1198093548,0,'T%21Vr3%25UqK-WH',1);
INSERT INTO users VALUES ('gvnaresh84','f461932cef88afd2771ab4cd78fe160c','Naresh','G','676b27cfa4452f87a5b7378c194a757c',1,'gvnaresh84@gmail.com',1199111915,0,'%27%5D%24F%3F%3E',1);
INSERT INTO users VALUES ('jkosloski','87c0013d663d24701344ba6b86a4bce1','joel','kosloski','0',1,'joelkosloski@dolex.net',1199167529,1,'vajq%7DA%7DRl%3A',0);
INSERT INTO users VALUES ('kvallabh','d5df60fb80a816936b5b6bb4f006ea0f','kasi','vallabhaneni','fb4b82745ee5c905d92833babc805256',1,'kvallabh@us.ibm.com',1199807779,0,'%7B0C2xN%5Cec%5C',1);
INSERT INTO users VALUES ('kennethc','1e378831053ed0acda9fac83a6f9172f','Kenneth','C','0',1,'ken290@hotmail.com',1199842300,0,'i%3B%2BBf%7CS%2B',0);
INSERT INTO users VALUES ('aberdine','7a651ad6630c37fb5e97398de81f64f5','stephen','richardson','b6211936df963fbdc263a85a4035f242',1,'stephen.richardson@navteq.com',1200110715,1,'BTW%7D%2ACc_%3F4',1);
INSERT INTO users VALUES ('tdjkoty','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'zsahv@rwsqg.com',1200288296,1,'ykG%2F%5BVW%3C%4',0);
INSERT INTO users VALUES ('manee123','cc853066bf6819c107fe3188367eac2e','','','0',1,'mamee3007@yahoo.com',1200545504,1,'gb%21%3A4n.g%2A%',0);
INSERT INTO users VALUES ('aqu12345','86ef9840c3afee3b1e0eb5814030c56b','gim','terry','aae9a1497704ac261123e482c9601a8e',1,'aquar565@yahoo.com',1200559233,1,'IR%3C-%2B%27%7EZ',1);
INSERT INTO users VALUES ('shediiwork','9826df7c48cde28165ee0e69298b28e9','','','19f3f8e1ec3d033cb61e5de1c8f5eca2',1,'shediiwork@yahoo.com',1201459601,1,'kX%3C0D9P%21lU-9',1);
INSERT INTO users VALUES ('rhalloul','a752a7247918065dfffcecc3e8c8a5d0','','','0c33eb5b3e10e97dce611a2d1b7154a4',1,'rhalloul@yahoo.com',1206980917,1,'E%29%22E%26%27%7',1);
INSERT INTO users VALUES ('maheshwar','972ae52621668f045e61bd75160131e8','Maheshwar','tiwari','b9c0a95ab7acfa5c9b1ffeb0dba46dc7',1,'maheshwar.tiwari@birlasoft.com',1201084861,1,'u%5C%22DBV%3EULI',1);
INSERT INTO users VALUES ('tjekkcu','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'vpgqg@hswuw.com',1201675469,1,'70%7B+OwLJ%7Efuh',0);
INSERT INTO users VALUES ('saifkhan','7d5af3436bbcb20be70134a2b804ee27','Saif','Khan','f8c22dad5abf28b8e27724e5edbbf784',1,'lmcsukh@yahoo.com',1201814593,1,'%3F%27E1%3DMdn7%',1);
INSERT INTO users VALUES ('jvxfgaj','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'swvcc@hrtlu.com',1202101996,1,'lV%2FV%2C%22%2B%',0);
INSERT INTO users VALUES ('seeozoq','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'bvrgq@wklqz.com',1202207419,1,'8UdAz%7D%3AU%3Df',0);
INSERT INTO users VALUES ('wally','e7de2096b7dcdf6259839a1ce0830b08','Lisa','Dubois','0',1,'lisa.dubois@absg.com',1202236786,0,'ch3WHK%3CzoLYiy-',1);
INSERT INTO users VALUES ('smathia','67b2f7931437e22b8c366ecb3e7fe41a','Sam Mathia','Mathia','27036e3b8fbee1a1a232ac7c2a3238cb',1,'smathia@us.ibm.com',1210280093,0,'%5B%2678wsY6%3F3',1);
INSERT INTO users VALUES ('bvqqwqa','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'wcexq@rlivo.com',1202580007,1,'VW%60du%5B%3A%2C',0);
INSERT INTO users VALUES ('qqbnugl','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'gfgtk@eqwgw.com',1202673570,1,'%28WNn%23f9%2562',0);
INSERT INTO users VALUES ('kjpcnhb','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'lalmd@efoyz.com',1202794346,1,'Zk%40I%22n%5E%2F',0);
INSERT INTO users VALUES ('cmuser','3a316d397e7a62d69d2226476479ceea','scott','willis','0',1,'williss_scott45@yahoo.com',1202931596,1,'%3DbE%241Wr%40n%',0);
INSERT INTO users VALUES ('rraj78','5f4dcc3b5aa765d61d8327deb882cf99','Rajesh','R','617667849081ba047882246c0ac6678c',1,'rajesh_r_78@rediffmail.com',1203102997,0,'XL%5E%5DU9%7C5Y%',1);
INSERT INTO users VALUES ('dowzcst','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'whomq@juaqd.com',1203275970,1,'j%3FCQB2M%271M3S',0);
INSERT INTO users VALUES ('sandipan','2cb6f36ec7f3b88d5574c78a31ccecd5','Sandipan','ray','f7f9b3eb50042226d7558cd6d5f8d72a',1,'sandipan1.ray@gmail.com',1203536440,1,'TE%2Bi%5B%3B%5Bl',1);
INSERT INTO users VALUES ('marcv','7a1b1ed96c1eb08f7c9fef8f4e6c2a43','marc','verbeek','442b94ba3600a43f6d189b945e0a470b',1,'marc.verbeek@gmail.com',1203598803,1,'P%5Do%2Cj%7D%226',1);
INSERT INTO users VALUES ('ganela','20c97a3c06e4db063f399d4992d2f7e7','','','0',1,'angela.steurer@phlip.com',1203928615,0,'hVL%2CAw1QnOy+j.',0);
INSERT INTO users VALUES ('ulqqzsn','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'ohfiu@qjtkb.com',1204491185,1,'%3Eurq8JB3%26BLa',0);
INSERT INTO users VALUES ('ooman1029','4b0d1c9bd2d024050919f71636dda576','Charles','Dixon','69e9c33e690e467d7583094258dffa99',1,'ct.dixon@gmail.com',1204680274,1,'K5%3DQ%5D3E%60Z%',1);
INSERT INTO users VALUES ('kermitfrog','8bb986a84d4f8a49e895ad5e7935b588','Kermit','TheFrog','a96d99a12aefe08c0e31fce84db9da6b',1,'simone.s.cato@jpmorgan.com',1205173279,0,'%5DZ_1K%5CD%23%2',1);
INSERT INTO users VALUES ('gabriela','e081681cc1b933451017bdbfe5389abf','Gabriela','Moura','0',1,'gabriela.desenv@gmail.com',1205439961,1,'_%40%5CU11%5CA1R',0);
INSERT INTO users VALUES ('fnwsmci','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'mlqdv@iwjdl.com',1205792881,1,'Pz7kF52TNc0m2Ep%',0);
INSERT INTO users VALUES ('prabhuever','7d70c80ecf1711377d5ef24b4dd57718','prabu','surendra','2d656952fc94d362f6069db4db592cb9',1,'prabu.surendra@gmail.com',1206042756,0,'c%2BTiv%26HslnIA',1);
INSERT INTO users VALUES ('eddielay','2b2d026e2ff760b8d984ff89b314f226','Eddie','Lay','0f07ef4866684cf5b59455ed55155b32',1,'elay@gotadsl.co.uk',1206126874,1,'bYz%27%28%2AY%5D',1);
INSERT INTO users VALUES ('eeyctbl','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'vtryd@ftcul.com',1206539312,1,'aO%60wqL+%27%29%',0);
INSERT INTO users VALUES ('admenlim','5777a5c16ef639eaca065b30a3b1cc4a','Admen','Lim','961151ef030b037e533e078612499706',1,'admenlim@hotmail.com',1206611257,0,'%3A%5Df+%26fCQ6%',1);
INSERT INTO users VALUES ('shaahul21','fe0f503a7263c48f02692934581df599','Shaahul','Hameed','5dfb146f7a8807c4580a766fd3e94c9e',1,'shaahul21@yahoo.com',1206617385,1,'7%60%27PS5MYJ_%5',1);
INSERT INTO users VALUES ('zraxkru','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'nxbgn@izlcx.com',1206759609,1,'aS%27gW39%2B6%5D',0);
INSERT INTO users VALUES ('lucasgamm','a915e1c926bf2d907161f1b202d70c90','Jose Manuel','Garcia Maciel','6f851747990d64c5bea2d15de18e6ab8',1,'lucas_gamm@hotmail.com',1207345861,1,'A2%2C5%2Ftbvl..%',1);
INSERT INTO users VALUES ('bugzwph','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'sapui@upvue.com',1207748952,1,'%2CJz%7Bf%7E%7BM',0);
INSERT INTO users VALUES ('mossjm','13ece5822f70c39b066e638bf88c4ba6','Jim','Moss','8a96772974ce2ecc023a8c272bc85b9d',1,'jim.moss@anthem.com',1207850314,1,'Nfc4%24%3BY%7E%5',1);
INSERT INTO users VALUES ('kmckain','1e44c40d47e6cbe66650e8409ebaea95','kalund','mckain','0',1,'kalund.mckain@l-3com.com',1208261050,1,'%3FExpZls-%3Ae%2',0);
INSERT INTO users VALUES ('Spdracer','c310f3ff1e7d4cf2191d965c4200c704','James','Larson','0',1,'spdracer@sbcglobal.net',1208468865,1,'-%7Cj%7D%7Ez%2BE',0);
INSERT INTO users VALUES ('xzzynax','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'erbup@xkufv.com',1208545373,1,'%5DJMQyp%3C%23GE',0);
INSERT INTO users VALUES ('bethkariuki','0add0710ed16b61a1a6757258012ee58','beth','kariuki','711d937166c51ea82ca7a33e81222b26',1,'bethkariuki@gmail.com',1209040053,1,'x0txGiI%2A%2A%24',1);
INSERT INTO users VALUES ('elbarkt','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'jtpld@ivbbj.com',1209140849,1,'0%40biq%3F__%22O',0);
INSERT INTO users VALUES ('dqefuta','88183b946cc5f0e8c96b2e66e1c74a7e','Unknown','Unknown','0',1,'iofzk@qhhcx.com',1209240299,1,'%40eKA%3Eupw%2Ac',0);
INSERT INTO users VALUES ('calitalien','f71260323ddedae3e2ee35c0bb909933','Carolyn','L\'Italien','9f81c8c96706536b9f1e19524f7f515e',1,'crl820@yahoo.com',1209562039,1,'%60V%5D%5DBTf3%5',1);
INSERT INTO users VALUES ('AgileToolsmith','1fec52d011ac3c7794a356d03f71becf','Perry','Ismangil','076093d26540cee50ea386453ab193e8',1,'perry@agiletoolsmith.com',1209717017,1,'FVX%60i%5D_.jQjv',1);
INSERT INTO users VALUES ('furingstad','85fb8f8f24156c84ccd2bcbcdb26fde7','Klas','Karlsson','0',1,'klas@furingstad.nu',1210749400,1,'Kj5%26%28.OXdAwT',1);
INSERT INTO users VALUES ('rafique586','dc7fcb9e8580ea1d913cfd30821e2cf8','Rafique','Ali','ef976c15c7eb6e01c1b685eb13e39b2b',1,'rafique586@yahoo.com',1210913660,1,'MQ2s3gbi%3FCh8A%',1);
INSERT INTO users VALUES ('heavydawson','91e3a7ff9f5676ed6ae6fcd8a6b455ec','David','Corley','b341d5696e5d7df3575c73b06c050161',1,'davidcorley@gmail.com',1211286086,1,'%263%7Ed2o_5%3F%',1);
INSERT INTO users VALUES ('Jpollard','a4da839adc12a6e53da59c200bbf6abc','Jon','Pollardard','7e3355bf5b6ce39146f6f1c3f20dc5a4',1,'jon.pollard@fidelity.com',1211296421,1,'HQb%7B0ZE%5Dn_+N',1);
INSERT INTO users VALUES ('abelous','727a82fe0775b6dc2cb7455152580db5','Andrey','Belous','0',1,'abelous@hotmail.com',1212074203,1,'1j%279yaC%2B%28%',1);
INSERT INTO users VALUES ('virender','8a4142c963a9452df256d38caefc9fbd','virender','singh','0',1,'virendersingh7@gmail.com',1212173923,1,'Vn%60zCP%5B4cUw%',0);
INSERT INTO users VALUES ('buildguysd','78d179b31c4f0fd4e9a4628009fcfd40','James','Hammond','46262fa2a9569d5039f7ade82e0b7292',1,'jvhammondsd@cox.net',1212177486,1,'jaRV%7B%21k6UF8V',1);
INSERT INTO users VALUES ('benij','3c9c03d6008a5adf42c2a55dd4a1a9f2','Javier','Benavente','0',1,'benaventej@gmail.com',1212571655,1,'Z%7DoTG%3FG%40%2',0);
INSERT INTO users VALUES ('rmakoski','e6ae21eee326d6b189d0142e8ef7cdff','','','821c98eaf44f7e07bcf387bf694a652b',1,'rmakoski@paychex.com',1213031600,1,'%2CY%26%23Qo%25%',1);
INSERT INTO users VALUES ('jhavero','0df5e937530979a955e3e77f19aec6b7','Alex','','9635b9df0008b8fb1257332919ad9341',1,'jhavero@gmail.com',1213287040,1,'%27%21ZF-%2BH3g4',1);
INSERT INTO users VALUES ('vidx21','fbd87ba7ec9dd0e12ce8b8120769ec0f','','','2f125462015abd963cdf7a2fe7c5ec00',1,'vidx21@yahoo.com',1213962964,1,'D8s%7CH1kh2L%3F+',1);
INSERT INTO users VALUES ('phikilic','fc3f318fba8b3c1502bece62a27712df','hasan','kilic','fc6f2d5abe16ef30065469ab87421fb3',1,'hasan.kilic@reflex.at',1214162713,1,'k%60C%28gnHod-C_',1);
INSERT INTO users VALUES ('dlimiter','dfa410a0fbac3a2e5983192b73b03f3f','David','Lim','7432a093dee7ab54039186d397a87507',1,'dlimiter@gmail.com',1215308280,1,'%3FE%5EJ%3B%29vL',1);
INSERT INTO users VALUES ('osturgess','09956247e6585d8aa7b77b034437ede7','','','0',1,'owen.sturgess@gmail.com',1214262239,1,'s%60D%27_ryIsV%2',1);

    
