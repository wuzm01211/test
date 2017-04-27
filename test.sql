-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-04-27 10:34:19
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_action`
--

CREATE TABLE `tb_action` (
  `id` smallint(5) NOT NULL COMMENT '自增主键',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `prm_val` smallint(6) NOT NULL COMMENT '权限值',
  `status` tinyint(1) NOT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_group`
--

CREATE TABLE `tb_group` (
  `id` smallint(5) NOT NULL COMMENT '自增主键 角色id',
  `name` varchar(64) NOT NULL COMMENT '角色名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1、待审核 ；2、正常；3、禁用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_manager`
--

CREATE TABLE `tb_manager` (
  `id` smallint(5) NOT NULL COMMENT '自增主键',
  `name` varchar(64) NOT NULL COMMENT '管理员名称',
  `group_id` smallint(5) NOT NULL COMMENT '所属分组',
  `status` tinyint(1) NOT NULL COMMENT '状态 1待审核 2正常 3禁用',
  `is_del` tinyint(1) NOT NULL COMMENT '是否删除',
  `create_time` int(11) NOT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` mediumint(8) NOT NULL COMMENT '自增id',
  `pid` mediumint(8) NOT NULL COMMENT '上级菜单',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `url` varchar(64) NOT NULL COMMENT 'url链接'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_prm`
--

CREATE TABLE `tb_prm` (
  `id` int(11) NOT NULL COMMENT '自增主键',
  `group_id` smallint(5) NOT NULL COMMENT '角色id',
  `menu_id` mediumint(8) NOT NULL COMMENT '菜单id',
  `prm_val` int(11) NOT NULL COMMENT '权限值'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- --------------------------------------------------------

--
-- 表的结构 `tb_type`
--

CREATE TABLE `tb_type` (
  `id` mediumint(8) NOT NULL COMMENT 'id自增主键',
  `name` varchar(64) NOT NULL COMMENT '名称',
  `pid` mediumint(8) NOT NULL COMMENT '父级id',
  `sort` smallint(5) DEFAULT '0' COMMENT '排序',
  `img` varchar(255) DEFAULT NULL COMMENT '分类图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表';

--
-- 转存表中的数据 `tb_type`
--

INSERT INTO `tb_type` (`id`, `name`, `pid`, `sort`, `img`) VALUES
(1, '一级分类', 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_action`
--
ALTER TABLE `tb_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_manager`
--
ALTER TABLE `tb_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prm`
--
ALTER TABLE `tb_prm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_type`
--
ALTER TABLE `tb_type`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_action`
--
ALTER TABLE `tb_action`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '自增主键';
--
-- 使用表AUTO_INCREMENT `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '自增主键 角色id';
--
-- 使用表AUTO_INCREMENT `tb_manager`
--
ALTER TABLE `tb_manager`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '自增主键';
--
-- 使用表AUTO_INCREMENT `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '自增id';
--
-- 使用表AUTO_INCREMENT `tb_prm`
--
ALTER TABLE `tb_prm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键';
--
-- 使用表AUTO_INCREMENT `tb_type`
--
ALTER TABLE `tb_type`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT 'id自增主键', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
