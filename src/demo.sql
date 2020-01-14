

-- ----------------------------
-- Table structure for tbl_order
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `RELEVANT_BILL_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `day` date NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT 1,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT 0,
  `photo` longblob NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('10101', '10130', 'DEMO-1568995473402', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101010', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:10:39', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101011', NULL, 'C-001', 500.50, '2019-09-24', '2019-09-21 00:10:39', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101012', '10130', 'DEMO-1568996507289', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101013', '10130', 'DEMO-1568996804537', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101015', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:20:41', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101016', NULL, 'C-001', 500.50, '2019-09-24', '2019-09-23 19:20:41', NULL, '002', 0, NULL);
-- ----------------------------
-- Table structure for tbl_order_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_type`;
CREATE TABLE `tbl_order_type`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_relevant_bill
-- ----------------------------
DROP TABLE IF EXISTS `tbl_relevant_bill`;
CREATE TABLE `tbl_relevant_bill`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `AVAILABLE` int(1) NULL DEFAULT 1,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_relevant_bill
-- ----------------------------
INSERT INTO `tbl_relevant_bill` VALUES ('10130', 'Hello-001', 0);

-- ----------------------------
-- Table structure for tbl_relevant_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_relevant_bill_detail`;
CREATE TABLE `tbl_relevant_bill_detail`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT 0.00,
  `RELEVANT_BILL_UUID` int(32) NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_relevant_bill_detail
-- ----------------------------
INSERT INTO `tbl_relevant_bill_detail` VALUES ('001', '测试明细001', 14.00, 10130, '');
INSERT INTO `tbl_relevant_bill_detail` VALUES ('002', '测试明细002', 24.00, 10130, NULL);

SET FOREIGN_KEY_CHECKS = 1;
