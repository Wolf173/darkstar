-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Ven 24 Juin 2011 à 08:10
-- Version du serveur: 6.0.0
-- Version de PHP: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `dspdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `exp_table`
--

DROP TABLE IF EXISTS `exp_table`;
CREATE TABLE IF NOT EXISTS `exp_table` (
  `level` tinyint(2) NOT NULL,
  `r1` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r2` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r3` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r4` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r5` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r6` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r7` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r8` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r9` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r10` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r11` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r12` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r13` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r14` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r15` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r16` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r17` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r18` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r19` smallint(4) unsigned NOT NULL DEFAULT '0',
  `r20` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=65;

--
-- Contenu de la table `exp_table`
--

INSERT INTO `exp_table` VALUES (15, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800);
INSERT INTO `exp_table` VALUES (14, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 720, 720, 720, 640, 640, 640, 640, 640);
INSERT INTO `exp_table` VALUES (13, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 630, 630, 630, 580, 580, 580, 580, 580);
INSERT INTO `exp_table` VALUES (12, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 580, 580, 580, 520, 520, 520, 520, 520);
INSERT INTO `exp_table` VALUES (11, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 580, 530, 530, 530, 460, 460, 460, 460, 460);
INSERT INTO `exp_table` VALUES (10, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 800, 530, 480, 480, 480, 430, 430, 430, 430, 430);
INSERT INTO `exp_table` VALUES (9, 800, 800, 800, 800, 800, 800, 600, 600, 600, 600, 530, 480, 440, 440, 440, 400, 400, 400, 400, 400);
INSERT INTO `exp_table` VALUES (8, 600, 600, 600, 600, 600, 600, 550, 550, 550, 530, 480, 430, 400, 400, 400, 380, 380, 380, 380, 380);
INSERT INTO `exp_table` VALUES (7, 550, 550, 550, 550, 550, 550, 500, 500, 500, 470, 430, 380, 360, 360, 360, 340, 340, 340, 340, 360);
INSERT INTO `exp_table` VALUES (6, 450, 450, 450, 450, 450, 450, 450, 450, 450, 400, 370, 330, 320, 320, 320, 300, 300, 300, 300, 360);
INSERT INTO `exp_table` VALUES (5, 350, 350, 350, 350, 350, 350, 400, 400, 400, 340, 310, 280, 280, 280, 280, 260, 260, 260, 260, 350);
INSERT INTO `exp_table` VALUES (4, 240, 240, 240, 240, 240, 240, 300, 300, 300, 320, 320, 320, 320, 320, 320, 320, 320, 340, 350, 350);
INSERT INTO `exp_table` VALUES (3, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 220, 280, 280, 280, 280, 280, 360, 380, 440);
INSERT INTO `exp_table` VALUES (2, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 260, 260, 260, 280, 280, 280, 280, 360);
INSERT INTO `exp_table` VALUES (1, 208, 208, 208, 208, 208, 208, 208, 208, 210, 210, 210, 210, 220, 220, 220, 240, 240, 240, 240, 280);
INSERT INTO `exp_table` VALUES (0, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200);
INSERT INTO `exp_table` VALUES (-1, 180, 180, 180, 180, 186, 192, 190, 190, 190, 192, 192, 192, 192, 192, 192, 195, 195, 195, 195, 195);
INSERT INTO `exp_table` VALUES (-2, 160, 160, 160, 160, 172, 172, 180, 180, 180, 186, 186, 186, 186, 186, 186, 190, 190, 190, 190, 190);
INSERT INTO `exp_table` VALUES (-3, 140, 140, 150, 150, 150, 160, 160, 160, 170, 170, 170, 180, 180, 180, 180, 180, 184, 184, 184, 184);
INSERT INTO `exp_table` VALUES (-4, 130, 130, 140, 140, 140, 150, 150, 160, 160, 160, 170, 170, 170, 172, 172, 172, 180, 180, 180, 180);
INSERT INTO `exp_table` VALUES (-5, 120, 120, 130, 130, 130, 140, 140, 146, 146, 152, 152, 152, 160, 160, 166, 166, 172, 172, 172, 172);
INSERT INTO `exp_table` VALUES (-6, 100, 100, 120, 120, 130, 140, 146, 146, 152, 152, 160, 160, 160, 160, 174, 174, 174, 174, 174, 174);
INSERT INTO `exp_table` VALUES (-7, 0, 80, 110, 110, 120, 130, 140, 140, 146, 146, 146, 152, 154, 154, 168, 168, 168, 168, 168, 168);
INSERT INTO `exp_table` VALUES (-8, 0, 60, 90, 100, 110, 120, 130, 132, 140, 140, 146, 152, 154, 154, 168, 168, 168, 168, 168, 168);
INSERT INTO `exp_table` VALUES (-9, 0, 0, 80, 80, 100, 110, 120, 126, 126, 126, 132, 132, 140, 144, 150, 150, 150, 150, 150, 150);
INSERT INTO `exp_table` VALUES (-10, 0, 0, 0, 0, 60, 80, 100, 110, 120, 126, 126, 132, 140, 140, 145, 145, 145, 145, 145, 145);
INSERT INTO `exp_table` VALUES (-11, 0, 0, 0, 0, 0, 0, 60, 80, 100, 110, 120, 120, 126, 132, 140, 140, 140, 140, 140, 140);
INSERT INTO `exp_table` VALUES (-12, 0, 0, 0, 0, 0, 0, 0, 60, 80, 100, 110, 112, 120, 126, 132, 132, 132, 132, 132, 132);
INSERT INTO `exp_table` VALUES (-13, 0, 0, 0, 0, 0, 0, 0, 0, 60, 80, 100, 106, 112, 120, 126, 126, 126, 126, 126, 126);
INSERT INTO `exp_table` VALUES (-14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 90, 100, 106, 112, 120, 120, 120, 120, 120, 120);
INSERT INTO `exp_table` VALUES (-15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 90, 100, 106, 112, 112, 112, 112, 112, 112);
INSERT INTO `exp_table` VALUES (-16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 80, 100, 106, 106, 106, 106, 106, 106);
INSERT INTO `exp_table` VALUES (-17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 80, 100, 100, 100, 100, 100, 100);
INSERT INTO `exp_table` VALUES (-18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 90, 90, 90, 90, 90, 90);
INSERT INTO `exp_table` VALUES (-19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 80, 80, 80, 80, 80);
INSERT INTO `exp_table` VALUES (-20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 70, 70, 70, 70);
INSERT INTO `exp_table` VALUES (-21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 60, 60, 60);
INSERT INTO `exp_table` VALUES (-22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 40, 50);
INSERT INTO `exp_table` VALUES (-23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 46);
INSERT INTO `exp_table` VALUES (-24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30);
INSERT INTO `exp_table` VALUES (-25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28);
INSERT INTO `exp_table` VALUES (-26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26);
INSERT INTO `exp_table` VALUES (-27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24);
INSERT INTO `exp_table` VALUES (-28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22);
INSERT INTO `exp_table` VALUES (-29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21);
INSERT INTO `exp_table` VALUES (-30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `exp_table` VALUES (-31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `exp_table` VALUES (-32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20);
INSERT INTO `exp_table` VALUES (-33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18);
INSERT INTO `exp_table` VALUES (-34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16);
INSERT INTO `exp_table` VALUES (-35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8);
INSERT INTO `exp_table` VALUES (-36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8);
INSERT INTO `exp_table` VALUES (-37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6);
INSERT INTO `exp_table` VALUES (-38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6);
INSERT INTO `exp_table` VALUES (-39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
INSERT INTO `exp_table` VALUES (-40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4);
INSERT INTO `exp_table` VALUES (-41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);
INSERT INTO `exp_table` VALUES (-42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);
INSERT INTO `exp_table` VALUES (-43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO `exp_table` VALUES (-44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

