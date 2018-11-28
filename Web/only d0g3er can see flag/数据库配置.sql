-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-11-17 20:36:51
-- 服务器版本： 5.6.41-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `D0g3`
--
CREATE DATABASE IF NOT EXISTS `D0g3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `D0g3`;

-- --------------------------------------------------------

--
-- 表的结构 `sea_admin`
--

CREATE TABLE `sea_admin` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `logincount` smallint(6) NOT NULL DEFAULT '0',
  `loginip` varchar(16) NOT NULL DEFAULT '',
  `logintime` int(10) NOT NULL DEFAULT '0',
  `groupid` smallint(4) NOT NULL,
  `state` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_admin`
--

INSERT INTO `sea_admin` (`id`, `name`, `password`, `logincount`, `loginip`, `logintime`, `groupid`, `state`) VALUES
(1, 'D0g3', '928457db567d2d7b411e', 0, '127.0.0.1', 1542455590, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sea_arcrank`
--

CREATE TABLE `sea_arcrank` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) UNSIGNED NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_buy`
--

CREATE TABLE `sea_buy` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `kptime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_cck`
--

CREATE TABLE `sea_cck` (
  `id` int(11) NOT NULL,
  `ckey` varchar(80) NOT NULL,
  `climit` int(11) NOT NULL,
  `maketime` timestamp NULL DEFAULT NULL,
  `usetime` timestamp NULL DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_comment`
--

CREATE TABLE `sea_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `typeid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msg` text,
  `m_type` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `reply` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `agree` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `anti` int(6) UNSIGNED NOT NULL DEFAULT '0',
  `pic` char(255) NOT NULL DEFAULT '',
  `vote` int(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_content`
--

CREATE TABLE `sea_content` (
  `v_id` mediumint(8) NOT NULL DEFAULT '0',
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `body` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_count`
--

CREATE TABLE `sea_count` (
  `id` int(11) NOT NULL,
  `userip` varchar(16) DEFAULT NULL,
  `serverurl` varchar(255) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_cls`
--

CREATE TABLE `sea_co_cls` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `clsname` varchar(50) NOT NULL DEFAULT '',
  `sysclsid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cotype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_co_cls`
--

INSERT INTO `sea_co_cls` (`id`, `clsname`, `sysclsid`, `cotype`) VALUES
(1, '大陆', 0, 0),
(2, '香港', 0, 0),
(3, '台湾', 0, 0),
(4, '日本', 0, 0),
(5, '韩国', 0, 0),
(6, '欧美', 0, 0),
(7, '日韩', 0, 0),
(8, '中国', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_config`
--

CREATE TABLE `sea_co_config` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `cname` varchar(50) NOT NULL DEFAULT '',
  `getlistnum` int(10) NOT NULL DEFAULT '0',
  `getconnum` int(10) NOT NULL DEFAULT '0',
  `cotype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_data`
--

CREATE TABLE `sea_co_data` (
  `v_id` mediumint(8) UNSIGNED NOT NULL,
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `tname` char(60) NOT NULL DEFAULT '',
  `v_name` char(60) NOT NULL DEFAULT '',
  `v_state` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_pic` char(255) NOT NULL DEFAULT '',
  `v_spic` char(255) NOT NULL DEFAULT '',
  `v_gpic` char(255) NOT NULL DEFAULT '',
  `v_hit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_money` smallint(6) NOT NULL DEFAULT '0',
  `v_rank` smallint(6) NOT NULL DEFAULT '0',
  `v_digg` smallint(6) NOT NULL DEFAULT '0',
  `v_tread` smallint(6) NOT NULL DEFAULT '0',
  `v_commend` smallint(6) NOT NULL DEFAULT '0',
  `v_wrong` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_director` varchar(200) NOT NULL DEFAULT '',
  `v_enname` varchar(200) NOT NULL DEFAULT '',
  `v_lang` varchar(200) NOT NULL DEFAULT '',
  `v_actor` varchar(200) NOT NULL DEFAULT '',
  `v_color` char(7) NOT NULL DEFAULT '',
  `v_publishyear` char(20) NOT NULL DEFAULT '0',
  `v_publisharea` char(20) NOT NULL DEFAULT '',
  `v_addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_note` char(30) NOT NULL DEFAULT '',
  `v_tags` char(30) NOT NULL DEFAULT '',
  `v_letter` char(3) NOT NULL DEFAULT '',
  `v_from` char(255) NOT NULL DEFAULT '',
  `v_inbase` enum('0','1') NOT NULL DEFAULT '0',
  `v_des` text,
  `v_playdata` text,
  `v_downdata` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_filters`
--

CREATE TABLE `sea_co_filters` (
  `ID` mediumint(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `rColumn` tinyint(1) NOT NULL,
  `uesMode` tinyint(1) NOT NULL,
  `sFind` varchar(255) NOT NULL,
  `sStart` varchar(255) NOT NULL,
  `sEnd` varchar(255) NOT NULL,
  `sReplace` varchar(255) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  `cotype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_news`
--

CREATE TABLE `sea_co_news` (
  `n_id` mediumint(8) UNSIGNED NOT NULL,
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `n_title` char(60) NOT NULL DEFAULT '',
  `n_keyword` varchar(80) DEFAULT NULL,
  `n_pic` char(255) NOT NULL DEFAULT '',
  `n_hit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `n_author` varchar(80) DEFAULT NULL,
  `n_addtime` int(10) NOT NULL DEFAULT '0',
  `n_letter` char(3) NOT NULL DEFAULT '',
  `n_content` mediumtext,
  `n_outline` char(255) DEFAULT NULL,
  `tname` char(60) NOT NULL DEFAULT '',
  `n_from` char(50) NOT NULL DEFAULT '',
  `n_inbase` enum('0','1') NOT NULL DEFAULT '0',
  `n_entitle` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_type`
--

CREATE TABLE `sea_co_type` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tname` varchar(50) NOT NULL DEFAULT '',
  `siteurl` char(200) NOT NULL DEFAULT '',
  `getherday` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `playfrom` varchar(50) NOT NULL DEFAULT '',
  `autocls` enum('0','1') NOT NULL DEFAULT '0',
  `classid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `coding` varchar(10) NOT NULL DEFAULT 'gb2312',
  `sock` enum('0','1') NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cjtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `listconfig` text,
  `itemconfig` text,
  `isok` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cotype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_co_url`
--

CREATE TABLE `sea_co_url` (
  `uid` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT '',
  `pic` char(255) NOT NULL DEFAULT '',
  `succ` enum('0','1') NOT NULL DEFAULT '0',
  `err` int(5) NOT NULL DEFAULT '0',
  `cotype` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_crons`
--

CREATE TABLE `sea_crons` (
  `cronid` smallint(6) UNSIGNED NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('user','system') NOT NULL DEFAULT 'user',
  `name` char(50) NOT NULL DEFAULT '',
  `filename` char(255) NOT NULL DEFAULT '',
  `lastrun` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nextrun` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weekday` tinyint(1) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '0',
  `hour` tinyint(2) NOT NULL DEFAULT '0',
  `minute` char(36) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_data`
--

CREATE TABLE `sea_data` (
  `v_id` mediumint(8) UNSIGNED NOT NULL,
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_name` char(60) NOT NULL DEFAULT '',
  `v_state` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_pic` char(255) NOT NULL DEFAULT '',
  `v_spic` char(255) NOT NULL DEFAULT '',
  `v_gpic` char(255) NOT NULL DEFAULT '',
  `v_hit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_money` smallint(6) NOT NULL DEFAULT '0',
  `v_rank` smallint(6) NOT NULL DEFAULT '0',
  `v_digg` smallint(6) NOT NULL DEFAULT '0',
  `v_tread` smallint(6) NOT NULL DEFAULT '0',
  `v_commend` smallint(6) NOT NULL DEFAULT '0',
  `v_wrong` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_ismake` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `v_actor` varchar(200) DEFAULT NULL,
  `v_color` char(7) NOT NULL DEFAULT '',
  `v_publishyear` int(10) DEFAULT '0',
  `v_publisharea` char(20) NOT NULL DEFAULT '',
  `v_addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_topic` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_note` char(30) NOT NULL DEFAULT '',
  `v_tags` char(30) NOT NULL DEFAULT '',
  `v_letter` char(3) NOT NULL DEFAULT '',
  `v_isunion` smallint(6) NOT NULL DEFAULT '0',
  `v_recycled` smallint(6) NOT NULL DEFAULT '0',
  `v_director` varchar(200) DEFAULT NULL,
  `v_enname` varchar(200) DEFAULT NULL,
  `v_lang` varchar(200) DEFAULT NULL,
  `v_score` int(10) DEFAULT '0',
  `v_scorenum` int(10) DEFAULT '0',
  `v_extratype` text,
  `v_jq` text,
  `v_nickname` char(60) DEFAULT NULL,
  `v_reweek` char(60) DEFAULT NULL,
  `v_douban` float DEFAULT '0',
  `v_mtime` float DEFAULT '0',
  `v_imdb` float DEFAULT '0',
  `v_tvs` char(60) DEFAULT NULL,
  `v_company` char(60) DEFAULT NULL,
  `v_dayhit` int(10) DEFAULT NULL,
  `v_weekhit` int(10) DEFAULT NULL,
  `v_monthhit` int(10) DEFAULT NULL,
  `v_daytime` int(10) DEFAULT NULL,
  `v_weektime` int(10) DEFAULT NULL,
  `v_monthtime` int(10) DEFAULT NULL,
  `v_len` varchar(6) DEFAULT NULL,
  `v_total` varchar(6) DEFAULT NULL,
  `v_ver` varchar(20) DEFAULT NULL,
  `v_psd` varchar(30) DEFAULT NULL,
  `v_longtxt` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_erradd`
--

CREATE TABLE `sea_erradd` (
  `id` int(10) UNSIGNED NOT NULL,
  `vid` mediumint(8) UNSIGNED NOT NULL,
  `author` char(60) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `errtxt` mediumtext,
  `sendtime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_favorite`
--

CREATE TABLE `sea_favorite` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `vid` int(11) NOT NULL DEFAULT '0',
  `kptime` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_flink`
--

CREATE TABLE `sea_flink` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_flink`
--

INSERT INTO `sea_flink` (`id`, `sortrank`, `url`, `webname`, `msg`, `email`, `logo`, `dtime`, `ischeck`) VALUES
(1, 0, 'http://www.seacms.net', '海洋cms', '', '', '', 1432312055, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sea_guestbook`
--

CREATE TABLE `sea_guestbook` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `mid` mediumint(8) UNSIGNED DEFAULT '0',
  `posttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uname` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  `msg` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_ie`
--

CREATE TABLE `sea_ie` (
  `id` int(11) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_jqtype`
--

CREATE TABLE `sea_jqtype` (
  `tid` smallint(6) UNSIGNED NOT NULL,
  `tname` char(30) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_jqtype`
--

INSERT INTO `sea_jqtype` (`tid`, `tname`, `ishidden`) VALUES
(1, '解密', 0),
(2, '乡村', 0),
(3, '都市', 0),
(4, '少儿', 0),
(5, '对话', 0),
(6, '搞笑', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sea_member`
--

CREATE TABLE `sea_member` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `email` char(255) NOT NULL DEFAULT '',
  `logincount` smallint(6) NOT NULL DEFAULT '0',
  `regip` varchar(16) NOT NULL DEFAULT '',
  `regtime` int(10) NOT NULL DEFAULT '0',
  `gid` smallint(4) NOT NULL,
  `points` int(10) NOT NULL DEFAULT '0',
  `state` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_member_group`
--

CREATE TABLE `sea_member_group` (
  `gid` int(11) UNSIGNED NOT NULL,
  `gname` varchar(32) NOT NULL DEFAULT '',
  `gtype` varchar(255) NOT NULL DEFAULT '',
  `g_auth` varchar(32) NOT NULL DEFAULT '',
  `g_upgrade` int(11) NOT NULL DEFAULT '0',
  `g_authvalue` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_member_group`
--

INSERT INTO `sea_member_group` (`gid`, `gname`, `gtype`, `g_auth`, `g_upgrade`, `g_authvalue`) VALUES
(1, '匿名用户', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', '1,2,3', 0, 0),
(2, '普通会员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', '1,2,3', 10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sea_myad`
--

CREATE TABLE `sea_myad` (
  `aid` mediumint(8) UNSIGNED NOT NULL,
  `adname` varchar(100) NOT NULL DEFAULT '',
  `adenname` varchar(60) NOT NULL DEFAULT '',
  `timeset` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `intro` char(255) NOT NULL DEFAULT '',
  `adsbody` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_myad`
--

INSERT INTO `sea_myad` (`aid`, `adname`, `adenname`, `timeset`, `intro`, `adsbody`) VALUES
(1, 'channel200x200bt', 'channel200x200bt', 1344397254, '排行榜右下200x200', 'document.writeln(\"<div class=\\\"right_b_neirong\\\"><\\/div>\")'),
(2, 'channel200x200top', 'channel200x200top', 1344397271, '排行榜右上200x200', 'document.writeln(\"<div class=\\\"right_t_neirong\\\"><\\/div>\")'),
(3, 'channel728x90', 'channel728x90', 1344397299, '频道页上方728x90', 'document.writeln(\"<div class=\\\"guanggao_neirong\\\"><\\/div>\")'),
(4, 'content360x300', 'content360x300', 1344397346, '内容页右侧360x300', 'document.writeln(\"<div class=\\\"gao_neirong\\\"><\\/div>\")'),
(5, 'content460x60', 'content460x60', 1344397379, '内容页460x60', 'document.writeln(\"<div class=\\\"xia_ad_neirong\\\"><\\/div>\")'),
(6, 'foot960x90', 'foot960x90', 1344397396, '底部960x90', 'document.writeln(\"<div class=\\\"ad_neirong\\\"><\\/div>\")'),
(7, 'head960x90', 'head960x90', 1344397422, '导航下方960x90', 'document.writeln(\"<div class=\\\"topad_neirong\\\"><\\/div>\")'),
(8, 'index728x90', 'index728x90', 1344397439, '首页728x90', 'document.writeln(\"<div class=\\\"rm_ad_neirong\\\"><\\/div>\")'),
(9, 'play300x250top', 'play300x250top', 1344397508, '播放页右上300x250', 'document.writeln(\"<div class=\\\"play_ad_topneirong\\\"><\\/div>\")'),
(10, 'play300x250bt', 'play300x250bt', 1344397533, '播放页右下300x250', 'document.writeln(\"<div class=\\\"play_ad_btneirong\\\"><\\/div>\")');

-- --------------------------------------------------------

--
-- 表的结构 `sea_mytag`
--

CREATE TABLE `sea_mytag` (
  `aid` mediumint(8) UNSIGNED NOT NULL,
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `tagdes` varchar(50) NOT NULL DEFAULT '0',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcontent` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_mytag`
--

INSERT INTO `sea_mytag` (`aid`, `tagname`, `tagdes`, `addtime`, `tagcontent`) VALUES
(1, 'areasearch', '地区搜索', 1251590919, '<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=大陆\' target=\"_blank\">大陆</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=香港\'target=\"_blank\">香港</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=台湾\'target=\"_blank\">台湾</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=日本\' target=\"_blank\">日本</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=韩国\' target=\"_blank\">韩国</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=欧美\' target=\"_blank\">欧美</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=2&searchword=其它\' target=\"_blank\">其它</a>'),
(2, 'yearsearch', '按发行年份查看电影', 1251509338, '<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2009\' target=\"_blank\">2009</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2008\'target=\"_blank\">2008</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2007\' target=\"_blank\">2007</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2006\' target=\"_blank\">2006</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2005\' target=\"_blank\">2005</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2004\' target=\"_blank\">2004</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2003\' target=\"_blank\">2003</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2002\' target=\"_blank\">2002</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=3&searchword=2001\' target=\"_blank\">2001</a>'),
(3, 'actorsearch', '演员名字', 1251590973, '<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=成龙\' target=\"_blank\">成龙</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=周星驰\'target=\"_blank\">周星驰</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=周润发\'target=\"_blank\">周润发</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=舒淇\' target=\"_blank\">舒淇</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=葛优\' target=\"_blank\">葛优</a> \r\n<a href=\'/{seacms:sitepath}search.php?searchtype=1&searchword=周杰伦\' target=\"_blank\">周杰伦</a> '),
(4, 'nav_bottom_banner', '导航栏下方通栏广告', 1251591021, 'aaaaaaaaaaaaaaaaaaaaaa\r\n$$$\r\nbbbbbbbbbbbbbbbbbbbbbb\r\n$$$\r\neeeeeeeeeeeeeeeeeeeeee');

-- --------------------------------------------------------

--
-- 表的结构 `sea_news`
--

CREATE TABLE `sea_news` (
  `n_id` mediumint(8) UNSIGNED NOT NULL,
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `n_title` char(255) NOT NULL DEFAULT '',
  `n_pic` char(255) NOT NULL DEFAULT '',
  `n_hit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `n_money` smallint(6) NOT NULL DEFAULT '0',
  `n_rank` smallint(6) NOT NULL DEFAULT '0',
  `n_digg` smallint(6) NOT NULL DEFAULT '0',
  `n_tread` smallint(6) NOT NULL DEFAULT '0',
  `n_commend` smallint(6) NOT NULL DEFAULT '0',
  `n_author` varchar(80) DEFAULT NULL,
  `n_color` char(7) NOT NULL DEFAULT '',
  `n_addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `n_note` smallint(6) NOT NULL DEFAULT '0',
  `n_letter` char(3) NOT NULL DEFAULT '',
  `n_isunion` smallint(6) NOT NULL DEFAULT '0',
  `n_recycled` smallint(6) NOT NULL DEFAULT '0',
  `n_entitle` varchar(200) DEFAULT NULL,
  `n_outline` varchar(255) DEFAULT NULL,
  `n_keyword` varchar(80) DEFAULT NULL,
  `n_from` varchar(50) DEFAULT NULL,
  `n_score` bigint(10) DEFAULT '0',
  `n_scorenum` int(10) DEFAULT '0',
  `n_content` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_playdata`
--

CREATE TABLE `sea_playdata` (
  `v_id` mediumint(8) NOT NULL DEFAULT '0',
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `body` mediumtext,
  `body1` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_search_keywords`
--

CREATE TABLE `sea_search_keywords` (
  `aid` mediumint(8) UNSIGNED NOT NULL,
  `keyword` char(30) NOT NULL DEFAULT '',
  `spwords` char(50) NOT NULL DEFAULT '',
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `result` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tid` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_tags`
--

CREATE TABLE `sea_tags` (
  `tagid` int(11) UNSIGNED NOT NULL,
  `tag` char(30) NOT NULL DEFAULT '',
  `usenum` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `vids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_temp`
--

CREATE TABLE `sea_temp` (
  `v_id` mediumint(8) UNSIGNED NOT NULL,
  `tid` smallint(8) UNSIGNED NOT NULL DEFAULT '0',
  `v_name` char(60) NOT NULL DEFAULT '',
  `v_state` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_pic` char(100) NOT NULL DEFAULT '',
  `v_actor` varchar(200) DEFAULT NULL,
  `v_publishyear` char(20) NOT NULL DEFAULT '0',
  `v_publisharea` char(20) NOT NULL DEFAULT '',
  `v_addtime` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `v_note` char(30) NOT NULL DEFAULT '',
  `v_letter` char(3) NOT NULL DEFAULT '',
  `v_playdata` mediumtext,
  `v_des` mediumtext,
  `v_director` varchar(200) DEFAULT NULL,
  `v_enname` varchar(200) DEFAULT NULL,
  `v_lang` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_topic`
--

CREATE TABLE `sea_topic` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `enname` char(60) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `template` char(50) NOT NULL DEFAULT '',
  `pic` char(80) NOT NULL DEFAULT '',
  `des` text,
  `vod` text NOT NULL,
  `keyword` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sea_type`
--

CREATE TABLE `sea_type` (
  `tid` smallint(6) UNSIGNED NOT NULL,
  `upid` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `tname` char(30) NOT NULL DEFAULT '',
  `tenname` char(60) NOT NULL DEFAULT '',
  `torder` int(11) NOT NULL DEFAULT '0',
  `templist` char(50) NOT NULL DEFAULT '',
  `templist_1` char(50) NOT NULL DEFAULT '',
  `title` char(50) NOT NULL DEFAULT '',
  `keyword` char(50) NOT NULL DEFAULT '',
  `description` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `unionid` mediumtext,
  `tptype` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sea_type`
--

INSERT INTO `sea_type` (`tid`, `upid`, `tname`, `tenname`, `torder`, `templist`, `templist_1`, `title`, `keyword`, `description`, `ishidden`, `unionid`, `tptype`) VALUES
(1, 0, '新闻', 'xinwen', 1, 'channel.html', 'content.html', '', '', '', 0, '31_1', 0),
(2, 0, '娱乐', 'yule', 2, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(3, 0, '军事', 'junshi', 3, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(4, 0, '猎奇', 'lieqi', 4, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(5, 1, '体育', 'tiyu', 5, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(6, 1, '汽车', 'qiche', 6, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(7, 1, '科技', 'keji', 7, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(8, 1, '财经', 'caijing', 8, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(9, 1, '股市', 'gushi', 9, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(10, 1, '地方', 'difang', 10, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(11, 1, '母婴', 'muying', 11, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(12, 1, '生活', 'shenghuo', 12, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(13, 2, '明星', 'mingxing', 13, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(14, 2, '音乐', 'yinyue', 14, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(15, 2, '游戏', 'youxi', 15, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(16, 2, '原创', 'yuanchuang', 16, 'channel.html', 'content.html', '', '', '', 0, '', 0),
(17, 0, '国内', 'guonei', 17, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(18, 0, '国际', 'guoji', 18, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(19, 0, '社会', 'shehui', 19, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(20, 0, '军事', 'junshi', 20, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(21, 0, '娱乐', 'yule', 21, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(22, 0, '八卦', 'bagua', 22, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(23, 0, '科技', 'keji', 23, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(24, 0, '财经', 'caijing', 24, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(25, 0, '公益', 'gongyi', 25, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(26, 0, '评论', 'pinglun', 26, 'newspage.html', 'news.html', '', '', '', 0, '', 1),
(27, 0, '时尚', 'shishang', 27, 'newspage.html', 'news.html', '', '', '', 0, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sea_admin`
--
ALTER TABLE `sea_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_arcrank`
--
ALTER TABLE `sea_arcrank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_buy`
--
ALTER TABLE `sea_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_cck`
--
ALTER TABLE `sea_cck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sea_comment`
--
ALTER TABLE `sea_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `v_id` (`v_id`,`ischeck`);

--
-- Indexes for table `sea_content`
--
ALTER TABLE `sea_content`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `sea_count`
--
ALTER TABLE `sea_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_co_cls`
--
ALTER TABLE `sea_co_cls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sysclsid` (`sysclsid`);

--
-- Indexes for table `sea_co_config`
--
ALTER TABLE `sea_co_config`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `sea_co_data`
--
ALTER TABLE `sea_co_data`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `tid` (`v_rank`,`tid`,`v_commend`,`v_hit`),
  ADD KEY `v_addtime` (`v_addtime`,`v_digg`,`v_tread`,`v_inbase`);

--
-- Indexes for table `sea_co_filters`
--
ALTER TABLE `sea_co_filters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sea_co_news`
--
ALTER TABLE `sea_co_news`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `tid` (`tid`,`n_hit`),
  ADD KEY `v_addtime` (`n_inbase`);

--
-- Indexes for table `sea_co_type`
--
ALTER TABLE `sea_co_type`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `cid` (`cid`,`classid`),
  ADD KEY `addtime` (`addtime`,`cjtime`);

--
-- Indexes for table `sea_co_url`
--
ALTER TABLE `sea_co_url`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `cid` (`cid`,`tid`),
  ADD KEY `succ` (`succ`,`err`);

--
-- Indexes for table `sea_crons`
--
ALTER TABLE `sea_crons`
  ADD PRIMARY KEY (`cronid`),
  ADD KEY `nextrun` (`available`,`nextrun`);

--
-- Indexes for table `sea_data`
--
ALTER TABLE `sea_data`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `idx_tid` (`tid`,`v_recycled`,`v_addtime`),
  ADD KEY `idx_addtime` (`v_addtime`),
  ADD KEY `idx_name` (`v_name`,`tid`);

--
-- Indexes for table `sea_erradd`
--
ALTER TABLE `sea_erradd`
  ADD KEY `id` (`id`);

--
-- Indexes for table `sea_favorite`
--
ALTER TABLE `sea_favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_flink`
--
ALTER TABLE `sea_flink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_guestbook`
--
ALTER TABLE `sea_guestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ischeck` (`ischeck`);

--
-- Indexes for table `sea_ie`
--
ALTER TABLE `sea_ie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sea_jqtype`
--
ALTER TABLE `sea_jqtype`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `sea_member`
--
ALTER TABLE `sea_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sea_member_group`
--
ALTER TABLE `sea_member_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `sea_myad`
--
ALTER TABLE `sea_myad`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `timeset` (`timeset`);

--
-- Indexes for table `sea_mytag`
--
ALTER TABLE `sea_mytag`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `tagname` (`tagname`,`addtime`);

--
-- Indexes for table `sea_news`
--
ALTER TABLE `sea_news`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `tid` (`n_rank`,`tid`,`n_commend`,`n_hit`),
  ADD KEY `v_addtime` (`n_addtime`,`n_digg`,`n_tread`,`n_isunion`);

--
-- Indexes for table `sea_playdata`
--
ALTER TABLE `sea_playdata`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `sea_search_keywords`
--
ALTER TABLE `sea_search_keywords`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `sea_tags`
--
ALTER TABLE `sea_tags`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `usenum` (`usenum`),
  ADD KEY `tag` (`tag`);

--
-- Indexes for table `sea_temp`
--
ALTER TABLE `sea_temp`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `v_addtime` (`v_addtime`);

--
-- Indexes for table `sea_topic`
--
ALTER TABLE `sea_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort` (`sort`);

--
-- Indexes for table `sea_type`
--
ALTER TABLE `sea_type`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `upid` (`upid`,`ishidden`),
  ADD KEY `torder` (`torder`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `sea_admin`
--
ALTER TABLE `sea_admin`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sea_arcrank`
--
ALTER TABLE `sea_arcrank`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_buy`
--
ALTER TABLE `sea_buy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_cck`
--
ALTER TABLE `sea_cck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_comment`
--
ALTER TABLE `sea_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_count`
--
ALTER TABLE `sea_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_cls`
--
ALTER TABLE `sea_co_cls`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sea_co_config`
--
ALTER TABLE `sea_co_config`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_data`
--
ALTER TABLE `sea_co_data`
  MODIFY `v_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_filters`
--
ALTER TABLE `sea_co_filters`
  MODIFY `ID` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_news`
--
ALTER TABLE `sea_co_news`
  MODIFY `n_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_type`
--
ALTER TABLE `sea_co_type`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_co_url`
--
ALTER TABLE `sea_co_url`
  MODIFY `uid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_crons`
--
ALTER TABLE `sea_crons`
  MODIFY `cronid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_data`
--
ALTER TABLE `sea_data`
  MODIFY `v_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_erradd`
--
ALTER TABLE `sea_erradd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_favorite`
--
ALTER TABLE `sea_favorite`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_flink`
--
ALTER TABLE `sea_flink`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `sea_guestbook`
--
ALTER TABLE `sea_guestbook`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_ie`
--
ALTER TABLE `sea_ie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_jqtype`
--
ALTER TABLE `sea_jqtype`
  MODIFY `tid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `sea_member`
--
ALTER TABLE `sea_member`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_member_group`
--
ALTER TABLE `sea_member_group`
  MODIFY `gid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `sea_myad`
--
ALTER TABLE `sea_myad`
  MODIFY `aid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `sea_mytag`
--
ALTER TABLE `sea_mytag`
  MODIFY `aid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `sea_news`
--
ALTER TABLE `sea_news`
  MODIFY `n_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_search_keywords`
--
ALTER TABLE `sea_search_keywords`
  MODIFY `aid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_tags`
--
ALTER TABLE `sea_tags`
  MODIFY `tagid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_temp`
--
ALTER TABLE `sea_temp`
  MODIFY `v_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_topic`
--
ALTER TABLE `sea_topic`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sea_type`
--
ALTER TABLE `sea_type`
  MODIFY `tid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `flag`
--
CREATE DATABASE IF NOT EXISTS `flag` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flag`;

-- --------------------------------------------------------

--
-- 表的结构 `flag`
--

CREATE TABLE `flag` (
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `flag`
--

INSERT INTO `flag` (`value`) VALUES
('R1EyREdNQldHNFpUR04yQ0dVMkRNT0JXSEUzVEdOS0dHWTRUT01aVklZM1RFTlJWR1lZVE1RWlZJWTNETU5TREdZWVRNTlpYSVE9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
