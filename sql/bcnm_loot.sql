/*
MySQL Data Transfer
Source Host: localhost
Source Database: dspdb
Target Host: localhost
Target Database: dspdb
Date: 31/08/2012 18:09:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for bcnm_loot
-- ----------------------------
DROP TABLE IF EXISTS `bcnm_loot`;
CREATE TABLE `bcnm_loot` (
  `LootDropId` smallint(5) unsigned NOT NULL default '0',
  `itemId` smallint(5) unsigned NOT NULL default '0',
  `rolls` smallint(5) unsigned NOT NULL default '0',
  `lootGroupId` tinyint(3) unsigned NOT NULL default '0',
  KEY `LootDropId` (`LootDropId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=9;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `bcnm_loot` VALUES ('76', '18047', '188', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '17939', '27', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '17937', '170', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '1441', '295', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '18351', '27', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '17464', '71', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '17575', '196', '0');
INSERT INTO `bcnm_loot` VALUES ('76', '18211', '45', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '17576', '259', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '17245', '241', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '17838', '143', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '1442', '161', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '17996', '143', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '17578', '36', '1');
INSERT INTO `bcnm_loot` VALUES ('76', '683', '446', '2');
INSERT INTO `bcnm_loot` VALUES ('76', '908', '420', '2');
INSERT INTO `bcnm_loot` VALUES ('76', '1312', '71', '2');
INSERT INTO `bcnm_loot` VALUES ('76', '14080', '26', '2');
INSERT INTO `bcnm_loot` VALUES ('76', '887', '116', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '645', '89', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '902', '71', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '702', '152', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '737', '107', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '823', '89', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '1465', '45', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '4173', '71', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '700', '107', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '703', '223', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '738', '116', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '830', '54', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '895', '54', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '1132', '71', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '4172', '45', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '866', '54', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '4174', '63', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '4175', '45', '3');
INSERT INTO `bcnm_loot` VALUES ('76', '683', '268', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '1525', '143', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '4205', '80', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '4201', '143', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '4199', '214', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '4203', '196', '4');
INSERT INTO `bcnm_loot` VALUES ('76', '646', '107', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '4211', '89', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '645', '179', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '4213', '134', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '4207', '152', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '4209', '80', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '739', '80', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '738', '107', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '17698', '152', '5');
INSERT INTO `bcnm_loot` VALUES ('76', '4135', '295', '6');
INSERT INTO `bcnm_loot` VALUES ('76', '4119', '250', '6');
INSERT INTO `bcnm_loot` VALUES ('76', '4173', '196', '6');
INSERT INTO `bcnm_loot` VALUES ('76', '4175', '214', '6');
INSERT INTO `bcnm_loot` VALUES ('76', '887', '139', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '645', '59', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '902', '50', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '702', '109', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '737', '69', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '1465', '99', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '4173', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '700', '129', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '644', '119', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '844', '69', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '703', '168', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '738', '129', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '895', '109', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '1132', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '4174', '69', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '866', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '4172', '50', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '823', '89', '7');
INSERT INTO `bcnm_loot` VALUES ('76', '1110', '109', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '836', '89', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '658', '78', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '837', '99', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '942', '188', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '844', '238', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '1132', '109', '8');
INSERT INTO `bcnm_loot` VALUES ('76', '722', '79', '9');
INSERT INTO `bcnm_loot` VALUES ('76', '1446', '257', '9');
INSERT INTO `bcnm_loot` VALUES ('76', '703', '337', '9');
INSERT INTO `bcnm_loot` VALUES ('76', '831', '149', '9');
INSERT INTO `bcnm_loot` VALUES ('76', '3343', '1', '10');
INSERT INTO `bcnm_loot` VALUES ('105', '1603', '100', '0');
INSERT INTO `bcnm_loot` VALUES ('105', '915', '250', '1');
INSERT INTO `bcnm_loot` VALUES ('105', '4112', '300', '1');
INSERT INTO `bcnm_loot` VALUES ('105', '4113', '180', '1');
INSERT INTO `bcnm_loot` VALUES ('105', '4898', '130', '1');
INSERT INTO `bcnm_loot` VALUES ('105', '825', '280', '1');
INSERT INTO `bcnm_loot` VALUES ('105', '749', '250', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '17786', '190', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '827', '270', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '18171', '145', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '824', '295', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '826', '260', '2');
INSERT INTO `bcnm_loot` VALUES ('105', '18209', '100', '3');
INSERT INTO `bcnm_loot` VALUES ('105', '0', '100', '3');
INSERT INTO `bcnm_loot` VALUES ('105', '924', '100', '4');
INSERT INTO `bcnm_loot` VALUES ('105', '924', '100', '5');
INSERT INTO `bcnm_loot` VALUES ('105', '18170', '235', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '17271', '235', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '17692', '235', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '17571', '235', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '17820', '255', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '1601', '260', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '4853', '250', '6');
INSERT INTO `bcnm_loot` VALUES ('105', '930', '190', '6');
INSERT INTO `bcnm_loot` VALUES ('81', '1473', '813', '0');
INSERT INTO `bcnm_loot` VALUES ('81', '13552', '55', '0');
INSERT INTO `bcnm_loot` VALUES ('81', '901', '123', '0');
INSERT INTO `bcnm_loot` VALUES ('81', '17207', '216', '1');
INSERT INTO `bcnm_loot` VALUES ('81', '18005', '295', '1');
INSERT INTO `bcnm_loot` VALUES ('81', '18217', '239', '1');
INSERT INTO `bcnm_loot` VALUES ('81', '17793', '231', '1');
INSERT INTO `bcnm_loot` VALUES ('81', '17624', '504', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '655', '4', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '19027', '86', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '747', '22', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '19025', '146', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '19024', '22', '2');
INSERT INTO `bcnm_loot` VALUES ('81', '15295', '287', '3');
INSERT INTO `bcnm_loot` VALUES ('81', '12407', '216', '3');
INSERT INTO `bcnm_loot` VALUES ('81', '14871', '198', '3');
INSERT INTO `bcnm_loot` VALUES ('81', '15294', '287', '3');
INSERT INTO `bcnm_loot` VALUES ('81', '887', '52', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '645', '56', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '902', '41', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '702', '63', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '737', '52', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '823', '26', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '1465', '11', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '4173', '37', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '700', '101', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '653', '0', '4'); -- this is "zero" on ffxiclopedia???
INSERT INTO `bcnm_loot` VALUES ('81', '644', '52', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '703', '116', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '844', '15', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '942', '56', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '738', '45', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '830', '22', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '895', '67', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '1132', '119', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '4172', '45', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '4174', '19', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '4175', '41', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '866', '34', '4');
INSERT INTO `bcnm_loot` VALUES ('81', '1110', '78', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '836', '56', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '658', '93', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '837', '56', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '942', '157', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '844', '276', '5');
INSERT INTO `bcnm_loot` VALUES ('81', '1132', '209', '5');
INSERT INTO `bcnm_loot` VALUES ('34', '891', '1000', '0');
INSERT INTO `bcnm_loot` VALUES ('34', '4900', '306', '1');
INSERT INTO `bcnm_loot` VALUES ('34', '4744', '319', '1');
INSERT INTO `bcnm_loot` VALUES ('34', '4745', '125', '1');
INSERT INTO `bcnm_loot` VALUES ('34', '4746', '222', '1');
INSERT INTO `bcnm_loot` VALUES ('34', '17786', '153', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '18170', '139', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '16687', '83', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '17571', '97', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '17993', '125', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '749', '444', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '773', '56', '2');
INSERT INTO `bcnm_loot` VALUES ('34', '17820', '111', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '17993', '139', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '18170', '139', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '18085', '42', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '16959', '181', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '774', '97', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '769', '69', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '776', '14', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '775', '28', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '772', '28', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '771', '14', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '770', '69', '3');
INSERT INTO `bcnm_loot` VALUES ('34', '13548', '167', '4');
INSERT INTO `bcnm_loot` VALUES ('34', '922', '444', '4');
INSERT INTO `bcnm_loot` VALUES ('34', '0', '600', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '3339', '1000', '0');
INSERT INTO `bcnm_loot` VALUES ('107', '1441', '312', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '17694', '182', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '18047', '65', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '17937', '43', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '18173', '181', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '17823', '217', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '17575', '43', '1');
INSERT INTO `bcnm_loot` VALUES ('107', '1442', '159', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '17695', '151', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '18088', '167', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '17576', '95', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '17245', '95', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '17996', '56', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '17789', '341', '2');
INSERT INTO `bcnm_loot` VALUES ('107', '4486', '522', '3');
INSERT INTO `bcnm_loot` VALUES ('107', '4272', '346', '3');
INSERT INTO `bcnm_loot` VALUES ('107', '17928', '82', '3');
INSERT INTO `bcnm_loot` VALUES ('107', '13189', '59', '3');
INSERT INTO `bcnm_loot` VALUES ('107', '887', '32', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '645', '71', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '902', '79', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '702', '56', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '737', '71', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '823', '32', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '4173', '48', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '700', '127', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '644', '111', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '703', '183', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '942', '40', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '738', '56', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '895', '24', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '1132', '119', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '4172', '56', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '4175', '40', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '866', '24', '4');
INSERT INTO `bcnm_loot` VALUES ('107', '1526', '210', '5');
INSERT INTO `bcnm_loot` VALUES ('107', '1313', '775', '5');
INSERT INTO `bcnm_loot` VALUES ('107', '4209', '94', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '4207', '130', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '4211', '116', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '4213', '51', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '1132', '246', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '17582', '246', '6');
INSERT INTO `bcnm_loot` VALUES ('107', '4135', '290', '7');
INSERT INTO `bcnm_loot` VALUES ('107', '4119', '225', '7');
INSERT INTO `bcnm_loot` VALUES ('107', '4173', '210', '7');
INSERT INTO `bcnm_loot` VALUES ('107', '4175', '217', '7');
INSERT INTO `bcnm_loot` VALUES ('107', '887', '87', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '645', '80', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '902', '58', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '702', '72', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '737', '87', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '823', '14', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '4173', '22', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '700', '80', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '644', '36', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '703', '145', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '844', '7', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '738', '51', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '830', '29', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '895', '36', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '1132', '72', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '4172', '29', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '4174', '29', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '4175', '7', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '866', '22', '8');
INSERT INTO `bcnm_loot` VALUES ('107', '1110', '58', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '836', '36', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '658', '72', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '837', '22', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '942', '275', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '844', '196', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '1132', '225', '9');
INSERT INTO `bcnm_loot` VALUES ('107', '722', '94', '10');
INSERT INTO `bcnm_loot` VALUES ('107', '1446', '196', '10');
INSERT INTO `bcnm_loot` VALUES ('107', '703', '572', '10');
INSERT INTO `bcnm_loot` VALUES ('107', '831', '43', '10');
INSERT INTO `bcnm_loot` VALUES ('11', '1441', '169', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '17939', '268', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '17823', '99', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '18173', '85', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '17694', '70', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '17464', '85', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '18351', '225', '0');
INSERT INTO `bcnm_loot` VALUES ('11', '1442', '169', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '17789', '14', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '17838', '239', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '18088', '85', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '18211', '254', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '17578', '183', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '17695', '70', '1');
INSERT INTO `bcnm_loot` VALUES ('11', '860', '535', '2');
INSERT INTO `bcnm_loot` VALUES ('11', '883', '366', '2');
INSERT INTO `bcnm_loot` VALUES ('11', '17108', '48', '2');
INSERT INTO `bcnm_loot` VALUES ('11', '902', '99', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '703', '70', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '1132', '70', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '830', '28', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '4173', '113', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '703', '211', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '942', '141', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '737', '56', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '644', '85', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '887', '70', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '700', '85', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '866', '42', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '645', '42', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '895', '70', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '702', '85', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '4172', '28', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '738', '42', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '4174', '42', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '4175', '7', '3');
INSERT INTO `bcnm_loot` VALUES ('11', '1527', '208', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '883', '296', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '4199', '155', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '4201', '70', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '4205', '141', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '4203', '113', '4');
INSERT INTO `bcnm_loot` VALUES ('11', '3341', '1000', '5');
INSERT INTO `bcnm_loot` VALUES ('11', '4209', '169', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '4207', '70', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '4211', '113', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '4213', '155', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '17840', '254', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '785', '99', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '804', '42', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '786', '56', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '787', '28', '6');
INSERT INTO `bcnm_loot` VALUES ('11', '4135', '296', '7');
INSERT INTO `bcnm_loot` VALUES ('11', '4119', '225', '7');
INSERT INTO `bcnm_loot` VALUES ('11', '4173', '197', '7');
INSERT INTO `bcnm_loot` VALUES ('11', '4175', '282', '7');
INSERT INTO `bcnm_loot` VALUES ('11', '887', '141', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '1132', '14', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '902', '113', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '737', '28', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '644', '85', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '4174', '56', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '895', '28', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '703', '296', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '738', '14', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '700', '56', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '866', '70', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '1465', '42', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '645', '42', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '702', '42', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '4173', '42', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '823', '113', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '830', '28', '8');
INSERT INTO `bcnm_loot` VALUES ('11', '1132', '127', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '837', '56', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '942', '225', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '844', '423', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '836', '70', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '658', '42', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '1110', '85', '9');
INSERT INTO `bcnm_loot` VALUES ('11', '703', '563', '10');
INSERT INTO `bcnm_loot` VALUES ('11', '1446', '296', '10');
INSERT INTO `bcnm_loot` VALUES ('11', '831', '14', '10');
INSERT INTO `bcnm_loot` VALUES ('11', '722', '141', '10');
INSERT INTO `bcnm_loot` VALUES ('15', '18378', '222', '0');
INSERT INTO `bcnm_loot` VALUES ('15', '17699', '302', '0');
INSERT INTO `bcnm_loot` VALUES ('15', '17509', '245', '0');
INSERT INTO `bcnm_loot` VALUES ('15', '18005', '208', '0');
INSERT INTO `bcnm_loot` VALUES ('15', '1133', '0', '1'); -- Yes "0" on ffxiclopedia
INSERT INTO `bcnm_loot` VALUES ('15', '4486', '176', '1');
INSERT INTO `bcnm_loot` VALUES ('15', '4272', '176', '1');
INSERT INTO `bcnm_loot` VALUES ('15', '19026', '354', '2');
INSERT INTO `bcnm_loot` VALUES ('15', '19024', '165', '2');
INSERT INTO `bcnm_loot` VALUES ('15', '19025', '89', '2');
INSERT INTO `bcnm_loot` VALUES ('15', '14764', '586', '3');
INSERT INTO `bcnm_loot` VALUES ('15', '655', '184', '3');
INSERT INTO `bcnm_loot` VALUES ('15', '747', '207', '3');
INSERT INTO `bcnm_loot` VALUES ('15', '17842', '238', '4');
INSERT INTO `bcnm_loot` VALUES ('15', '14762', '250', '4');
INSERT INTO `bcnm_loot` VALUES ('15', '17700', '225', '4');
INSERT INTO `bcnm_loot` VALUES ('15', '18006', '275', '4');
INSERT INTO `bcnm_loot` VALUES ('15', '737', '122', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '4172', '54', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '644', '41', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '902', '81', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '702', '149', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '866', '54', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '4175', '27', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '700', '41', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '887', '95', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '703', '108', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '844', '135', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '738', '54', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '895', '14', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '830', '14', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '645', '68', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '4173', '14', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '1132', '135', '5');
INSERT INTO `bcnm_loot` VALUES ('15', '836', '96', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '658', '27', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '942', '164', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '844', '260', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '837', '96', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '1132', '288', '6');
INSERT INTO `bcnm_loot` VALUES ('15', '1110', '41', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '837', '1000', '0');
INSERT INTO `bcnm_loot` VALUES ('17', '17827', '217', '1');
INSERT INTO `bcnm_loot` VALUES ('17', '17451', '174', '1');
INSERT INTO `bcnm_loot` VALUES ('17', '17793', '333', '1');
INSERT INTO `bcnm_loot` VALUES ('17', '17589', '174', '1');
INSERT INTO `bcnm_loot` VALUES ('17', '13402', '101', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '19027', '43', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '920', '275', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '1013', '275', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '19025', '203', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '19026', '116', '2');
INSERT INTO `bcnm_loot` VALUES ('17', '655', '159', '3');
INSERT INTO `bcnm_loot` VALUES ('17', '747', '290', '3');
INSERT INTO `bcnm_loot` VALUES ('17', '13182', '406', '3');
INSERT INTO `bcnm_loot` VALUES ('17', '15325', '159', '4');
INSERT INTO `bcnm_loot` VALUES ('17', '14872', '217', '4');
INSERT INTO `bcnm_loot` VALUES ('17', '15181', '145', '4');
INSERT INTO `bcnm_loot` VALUES ('17', '15387', '159', '4');
INSERT INTO `bcnm_loot` VALUES ('17', '887', '101', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '645', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '902', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '702', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '737', '101', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '823', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '1465', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '700', '43', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '644', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '703', '58', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '738', '14', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '830', '58', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '895', '14', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '4174', '58', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '4175', '29', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '866', '72', '5');
INSERT INTO `bcnm_loot` VALUES ('17', '1110', '87', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '658', '14', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '836', '29', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '837', '43', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '942', '174', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '844', '246', '6');
INSERT INTO `bcnm_loot` VALUES ('17', '1132', '159', '6');
INSERT INTO `bcnm_loot` VALUES ('79', '793', '1000', '0');
INSERT INTO `bcnm_loot` VALUES ('79', '792', '1000', '1');
INSERT INTO `bcnm_loot` VALUES ('79', '1311', '1000', '2');
INSERT INTO `bcnm_loot` VALUES ('79', '14666', '447', '3');
INSERT INTO `bcnm_loot` VALUES ('79', '14662', '487', '3');
INSERT INTO `bcnm_loot` VALUES ('79', '13175', '494', '4');
INSERT INTO `bcnm_loot` VALUES ('79', '13176', '449', '4');
INSERT INTO `bcnm_loot` VALUES ('79', '791', '51', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '801', '32', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '654', '39', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '702', '21', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '4173', '32', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '745', '55', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '784', '62', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '653', '81', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '802', '56', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '797', '195', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '652', '58', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '803', '38', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '773', '11', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '4175', '21', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '771', '15', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '805', '26', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '769', '21', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '700', '17', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '770', '9', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '810', '62', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '774', '11', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '775', '11', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '772', '11', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '776', '9', '5');
INSERT INTO `bcnm_loot` VALUES ('79', '15185', '55', '6');
INSERT INTO `bcnm_loot` VALUES ('79', '17440', '13', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '852', '1000', '0');
INSERT INTO `bcnm_loot` VALUES ('35', '13014', '79', '1');
INSERT INTO `bcnm_loot` VALUES ('35', '0', '950', '1');
INSERT INTO `bcnm_loot` VALUES ('35', '15282', '53', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '15275', '79', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '15278', '157', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '694', '184', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '690', '368', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '652', '79', '2');
INSERT INTO `bcnm_loot` VALUES ('35', '0', '600', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '15282', '53', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '15275', '79', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '15278', '157', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '694', '184', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '690', '368', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '652', '79', '3');
INSERT INTO `bcnm_loot` VALUES ('35', '15285', '105', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '15279', '105', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '651', '131', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '643', '131', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '644', '79', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '736', '79', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '795', '131', '4');
INSERT INTO `bcnm_loot` VALUES ('35', '17867', '552', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4877', '263', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4878', '210', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4876', '289', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4868', '105', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4751', '79', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '5070', '421', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '4947', '79', '5');
INSERT INTO `bcnm_loot` VALUES ('35', '15271', '552', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15272', '131', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '809', '0', '6'); -- yes 0%
INSERT INTO `bcnm_loot` VALUES ('35', '15276', '79', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '645', '105', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15281', '26', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '4132', '184', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '796', '79', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15273', '157', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '653', '210', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '799', '26', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15283', '263', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15277', '105', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15280', '105', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15274', '131', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '744', '79', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '806', '131', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '0', '600', '6');
INSERT INTO `bcnm_loot` VALUES ('35', '15271', '552', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15272', '131', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '809', '0', '7'); -- yes 0%
INSERT INTO `bcnm_loot` VALUES ('35', '15276', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '645', '105', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15281', '26', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '4132', '184', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '796', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15273', '157', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '653', '210', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '799', '26', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15283', '263', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15277', '105', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15280', '105', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '15274', '131', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '744', '79', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '806', '131', '7');
INSERT INTO `bcnm_loot` VALUES ('35', '0', '600', '7');
-- limbus                      lootID,ItemID,Roll,lootgroup
-- SE Appollyon first floor
INSERT INTO `bcnm_loot` VALUES ('110', '1875', '1000', '0'); -- ancient beastcoin*4
INSERT INTO `bcnm_loot` VALUES ('110', '1875', '1000', '1'); 
INSERT INTO `bcnm_loot` VALUES ('110', '1875', '1000', '2'); 
INSERT INTO `bcnm_loot` VALUES ('110', '1875', '1000', '3'); 
INSERT INTO `bcnm_loot` VALUES ('110', '1939', '350', '4'); --  RDM,
INSERT INTO `bcnm_loot` VALUES ('110', '1941', '278', '4'); --  THF,
INSERT INTO `bcnm_loot` VALUES ('110', '1959', '174', '4'); --   SMN,
INSERT INTO `bcnm_loot` VALUES ('110', '1949', '200', '4');  --  BRD
INSERT INTO `bcnm_loot` VALUES ('110', '1945', '47', '5');  --  DRK,
INSERT INTO `bcnm_loot` VALUES ('110', '1951', '49', '5');  --  RNG,
INSERT INTO `bcnm_loot` VALUES ('110', '1955', '200', '5');  --  NIN,
INSERT INTO `bcnm_loot` VALUES ('110', '2659', '62', '5');  --  COR,
INSERT INTO `bcnm_loot` VALUES ('110', '2715', '407', '5');  --  DNC
-- -------------------------------------
-- SE Appollyon Second floor
-- -------------------------------------
INSERT INTO `bcnm_loot` VALUES ('111', '1875', '1000', '0'); -- ancient beastcoin*4
INSERT INTO `bcnm_loot` VALUES ('111', '1875', '1000', '1'); 
INSERT INTO `bcnm_loot` VALUES ('111', '1875', '1000', '2'); 
INSERT INTO `bcnm_loot` VALUES ('111', '1875', '1000', '3'); 
INSERT INTO `bcnm_loot` VALUES ('111', '1959', '47', '4'); --   SMN,
INSERT INTO `bcnm_loot` VALUES ('111', '1949', '30', '4');  --  BRD
INSERT INTO `bcnm_loot` VALUES ('111', '1943', '200', '4'); -- PLD,
INSERT INTO `bcnm_loot` VALUES ('111', '1947', '460', '4'); --  BST,
INSERT INTO `bcnm_loot` VALUES ('111', '2661', '400', '4'); --  PUP
INSERT INTO `bcnm_loot` VALUES ('111', '1951', '20', '5');  --  RNG,
INSERT INTO `bcnm_loot` VALUES ('111', '1955', '80', '5');  --  NIN,
INSERT INTO `bcnm_loot` VALUES ('111', '1945', '90', '5');  --  DRK,
INSERT INTO `bcnm_loot` VALUES ('111', '2659', '100', '5');  --  COR,
INSERT INTO `bcnm_loot` VALUES ('111', '2715', '120', '5');  --  DNC
-- SE Appollyon Third floor
-- -------------------------------------
INSERT INTO `bcnm_loot` VALUES ('112', '1875', '1000', '0'); -- ancient beastcoin*4
INSERT INTO `bcnm_loot` VALUES ('112', '1875', '1000', '1'); 
INSERT INTO `bcnm_loot` VALUES ('112', '1875', '1000', '2'); 
INSERT INTO `bcnm_loot` VALUES ('112', '1875', '1000', '3'); 
INSERT INTO `bcnm_loot` VALUES ('112', '1955', '59', '4');  --  NIN,
INSERT INTO `bcnm_loot` VALUES ('112', '1959', '139', '4'); --   SMN,
INSERT INTO `bcnm_loot` VALUES ('112', '1949', '39', '4');  --  BRD
INSERT INTO `bcnm_loot` VALUES ('112', '1681', '39', '4'); --   Light Steel 
INSERT INTO `bcnm_loot` VALUES ('112', '645', '39', '4');  --  Darksteel Ore
INSERT INTO `bcnm_loot` VALUES ('112', '1933', '627', '4'); --  MNK,
INSERT INTO `bcnm_loot` VALUES ('112', '1954', '159', '5');  --  DRK,
INSERT INTO `bcnm_loot` VALUES ('112', '1951', '139', '5');  --  RNG,
INSERT INTO `bcnm_loot` VALUES ('112', '2659', '39', '5');  --  COR,
INSERT INTO `bcnm_loot` VALUES ('112', '664', '20', '5');  --  Darksteel Sheet
INSERT INTO `bcnm_loot` VALUES ('112', '646', '20', '5');  --   Adaman Ore
INSERT INTO `bcnm_loot` VALUES ('112', '1931', '200', '5'); --  WAR,
-- ---SE Appollyon fourth floor-------------------------
INSERT INTO `bcnm_loot` VALUES ('113', '1875', '1000', '0'); -- ancient beastcoin*5
INSERT INTO `bcnm_loot` VALUES ('113', '1875', '1000', '1'); 
INSERT INTO `bcnm_loot` VALUES ('113', '1875', '1000', '2'); 
INSERT INTO `bcnm_loot` VALUES ('113', '1875', '1000', '3'); 
INSERT INTO `bcnm_loot` VALUES ('113', '1875', '1000', '4'); 
INSERT INTO `bcnm_loot` VALUES ('113', '1935', '220', '5'); --  WHM,
INSERT INTO `bcnm_loot` VALUES ('113', '1937', '300', '5'); -- BLM, 
INSERT INTO `bcnm_loot` VALUES ('113', '1957', '260', '5'); --  DRG, 
INSERT INTO `bcnm_loot` VALUES ('113', '1953', '340', '5');  --  SAM,
INSERT INTO `bcnm_loot` VALUES ('113', '2657', '220', '6');  --  BLU,
INSERT INTO `bcnm_loot` VALUES ('113', '2717', '180', '6');  --  SCH
INSERT INTO `bcnm_loot` VALUES ('113', '1931', '300', '6');  -- WAR,
INSERT INTO `bcnm_loot` VALUES ('113', '1909', '1000', '7'); --  Smalt Chip,
INSERT INTO `bcnm_loot` VALUES ('113', '2127', '59', '8');  --  metal chip
