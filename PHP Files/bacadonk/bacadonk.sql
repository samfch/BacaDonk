-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2016 at 07:59 PM
-- Server version: 5.6.30
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bacadonk`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `author`) VALUES
(1, 'Material Design Web UI Demo', 'Google’s Polymer Project is a web framework and their embodiment of material design for the web. While still in “developer preview”, most of the components (a very extensive set)  are quite mature. Polymer aims to support all major modern browsers such as IE (10+), Chrome, Safari, and Firefox. Extensive set of documentation and getting started guide is available at the Polymer Project.\r\nIf you are looking for some material design web UI demo for inspiration, then have a look at these (in chrome for best experience) which are created using the Polymer Project.\r\n\r\n', 'admin'),
(2, 'Future of Material Design', 'Only time will tell the success and penetration of Material Design in web and other platforms. Will it become become another hot topic like the flat design? A large part of it depends on the interest as well as availability of developer and designer tools and we are surely seeing some momentum building up with these Web UI frameworks.\r\n\r\nWhat are your take on the Material Design? Do you love it and want to adopt it in your projects?\r\n\r\nMUI is a lightweight HTML, CSS and JS framework for building sites following Google’s Material Design guidelines. MUI is designed from the ground up to be fast, small and developer friendly. By design it only includes the basic components you need to build a site that follows Google’s Material Design guidelines. MUI CSS/JS has no external dependencies. MUI is also available onGitHub and is open for contributions.', 'admin'),
(3, 'Material Design Frameworks for the Web', 'With Material Design, Google wants to bring uniformity to its UI on all platforms including web, and not just Android. Google has its own Polymer Project which embraces material design throughout its Web components. In fact, Polymer Project played a key role in material design’s development and in showcase of Material design concepts for the Web. However Polymer project is still in early developer preview and not yet ready for production.In an attempt to bring Material design to the Web user interface, many third party (not from Google) web UI frameworks have come to existence recently. In this post I will be doing a roundup of these Material Design Web UI frameworks. Some of these frameworks are themes based on the popular web UI framework, Bootstrap.', 'operator'),
(4, 'Welcome to w3resource.com', 'There are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modals', 'admin'),
(5, 'Welcome to w3resource.com new title', 'There are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modals', 'student'),
(6, 'Welcome to ew title', 'There are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modalsThere are 3 main button types described in material design. The raised button is a standard button that signify actions and seek to give depth to a mostly flat page. The floating circular action button is meant for very important functions. Flat buttons are usually used within elements that already have depth like cards or modals', 'operator'),
(7, 'PHP: Redirect to Another Page', 'As a webmaster, you may be faced with a situation where one of your files has a name that does not fit its purpose or you need to rename a file tree. If so, it is relatively easy to change the links within your site, though it is much more difficult to change any external links to other sites. \r\n\r\nWhen changing the location of the pages, search engines may send users to a faulty address. Even worse, the page''s SEO may be completely reset. Fortunately, there is a simple solution that utilizes redirections to allow you to maintain the navigational consistency and SEO of your site — even if all the files have been moved. As a webmaster, you may be faced with a situation where one of your files has a name that does not fit its purpose or you need to rename a file tree. If so, it is relatively easy to change the links within your site, though it is much more difficult to change any external links to other sites. \r\n\r\nWhen changing the location of the pages, search engines may send users to a faulty address. Even worse, the page''s SEO may be completely reset. Fortunately, there is a simple solution that utilizes redirections to allow you to maintain the navigational consistency and SEO of your site — even if all the files have been moved. As a webmaster, you may be faced with a situation where one of your files has a name that does not fit its purpose or you need to rename a file tree. If so, it is relatively easy to change the links within your site, though it is much more difficult to change any external links to other sites. \r\n\r\nWhen changing the location of the pages, search engines may send users to a faulty address. Even worse, the page''s SEO may be completely reset. Fortunately, there is a simple solution that utilizes redirections to allow you to maintain the navigational consistency and SEO of your site — even if all the files have been moved. ', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
