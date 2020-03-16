SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Table structure for tbl_order_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_type`;
CREATE TABLE `tbl_order_type`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

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
INSERT INTO `tbl_order` VALUES ('1010100', '10130', 'DEMO-1571388720353', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010101', '10130', 'DEMO-1571388726173', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010102', '10130', 'DEMO-1571388785429', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010103', '10130', 'DEMO-1571389203252', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010104', '10130', 'DEMO-1571389346332', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010105', '10130', 'DEMO-1571389367638', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010106', '10130', 'DEMO-1571389368436', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010107', '10130', 'DEMO-1571389369103', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010108', '10130', 'DEMO-1571389389792', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010109', '10130', 'DEMO-1571391243228', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101011', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:10:39', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010110', '10130', 'DEMO-1571727250621', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010112', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:30:48', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010115', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:32:35', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010118', NULL, 'C-006', 50.25, '2020-01-14', '2020-01-14 10:38:03', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010119', NULL, 'C-001', 500.50, '2020-01-14', '2020-01-14 10:38:03', 1, NULL, 0, NULL);
INSERT INTO `tbl_order` VALUES ('101012', '10130', 'DEMO-1568996507289', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010120', '10130', 'DEMO-1578979204183', 1.10, NULL, NULL, 1, NULL, 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010121', '10130', 'DEMO-1578979264874', 1.10, NULL, NULL, 1, NULL, 0, NULL);
INSERT INTO `tbl_order` VALUES ('1010122', '10130', 'DEMO-1584347984379', 1.10, NULL, NULL, 1, NULL, 0, NULL);
INSERT INTO `tbl_order` VALUES ('101013', '10130', 'DEMO-1568996804537', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101015', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:20:41', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101016', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:20:41', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101018', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:21:15', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101019', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:21:15', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('10102', '10130', 'DEMO-1568995661235', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101021', NULL, 'C-006', 50.25, '2019-09-23', '2019-09-23 19:24:08', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101022', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-23 19:24:08', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101024', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 09:53:07', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101025', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 09:53:07', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101027', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 10:15:30', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101028', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 10:15:30', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101030', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 11:05:08', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101031', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 11:05:08', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101033', NULL, 'C-006', 50.25, '2019-09-24', '2019-09-24 11:10:19', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101034', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-24 11:10:19', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101035', '10130', 'DEMO-1569397824628', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101036', '10130', 'DEMO-1569397839986', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101037', '10130', 'DEMO-1569397892903', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101038', '10130', 'DEMO-1569398150136', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101039', '10130', 'DEMO-1569398163349', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('10104', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:08:22', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101040', '10130', 'DEMO-1569398230141', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101041', '10130', 'DEMO-1569398230996', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101042', '10130', 'DEMO-1569398231728', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101043', '10130', 'DEMO-1569398232253', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101044', '10130', 'DEMO-1569398232744', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101045', '10130', 'DEMO-1569398233452', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101046', '10130', 'DEMO-1569398330462', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101047', '10130', 'DEMO-1570518213688', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101048', '10130', 'DEMO-1570851423305', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101049', '10130', 'DEMO-1570851510076', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('10105', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:08:22', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101050', '10130', 'DEMO-1570851536152', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101051', '10130', 'DEMO-1570851714688', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101052', '10130', 'DEMO-1570854853681', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101053', '10130', 'DEMO-1570855606445', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101054', '10130', 'DEMO-1570859631594', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101055', '10130', 'DEMO-1570859662686', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101056', '10130', 'DEMO-1570861399779', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101057', '10130', 'DEMO-1570861507712', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101058', '10130', 'DEMO-1570861515383', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101059', '10130', 'DEMO-1570861535909', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101060', '10130', 'DEMO-1570862142274', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101061', '10130', 'DEMO-1570862143606', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101062', '10130', 'DEMO-1570862144294', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101064', '10130', 'DEMO-1570863776475', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101065', '10130', 'DEMO-1570863785283', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101066', '10130', 'DEMO-1570863786181', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101067', '10130', 'DEMO-1570864502771', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101068', '10130', 'DEMO-1570864512373', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101069', '10130', 'DEMO-1570864546910', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('10107', NULL, 'C-006', 50.25, '2019-09-21', '2019-09-21 00:10:10', 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101070', '10130', 'DEMO-1570867850270', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101071', '10130', 'DEMO-1570867854982', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101072', '10130', 'DEMO-1570868095197', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101073', '10130', 'DEMO-1570868162241', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101074', '10130', 'DEMO-1570868175393', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101075', '10130', 'DEMO-1570868623095', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101076', '10130', 'DEMO-1570869223234', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101078', '10130', 'DEMO-1570871538892', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101079', '10130', 'DEMO-1570871789792', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('10108', NULL, 'C-001', 500.50, '2020-01-14', '2019-09-21 00:10:11', NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101080', '10130', 'DEMO-1571012633758', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101081', '10130', 'DEMO-1571012641855', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101082', '10130', 'DEMO-1571030049076', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101083', '10130', 'DEMO-1571030054571', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101084', '10130', 'DEMO-1571031994126', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101085', '10130', 'DEMO-1571032019679', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101086', '10130', 'DEMO-1571036045801', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101087', '10130', 'DEMO-1571036117002', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101088', '10130', 'DEMO-1571036376183', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101089', '10130', 'DEMO-1571102621224', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101090', '10130', 'DEMO-1571105259926', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101091', '10130', 'DEMO-1571105551104', 1.10, NULL, NULL, 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101092', '10130', 'DEMO-1571105879161', 1.10, NULL, NULL, 0, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101093', '10130', 'DEMO-1571271714044', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101094', '10130', 'DEMO-1571273370400', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101095', '10130', 'DEMO-1571273372515', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101096', '10130', 'DEMO-1571273736721', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101097', '10130', 'DEMO-1571385997278', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101098', '10130', 'DEMO-1571388625544', 1.10, NULL, NULL, NULL, '002', 0, NULL);
INSERT INTO `tbl_order` VALUES ('101099', '10130', 'DEMO-1571388665267', 1.10, NULL, NULL, NULL, '002', 0, NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `USER_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户标识',
  `ROLE_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色标识',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `UDX_USER_ROLE`(`USER_UUID`, `ROLE_UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('001', '001', '001');
INSERT INTO `t_user_role` VALUES ('002', '1011061', '001');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `DEPT_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门标识',
  `CODE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录名',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `PHONE` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `PASSWORD` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e' COMMENT '密码',
  `SORT` int(6) NULL DEFAULT 10 COMMENT '排序码',
  `ENABLE` int(1) NOT NULL DEFAULT 1 COMMENT '启用',
  `SYSTEM_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务系统对照码',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SIGN_PHOTO` longblob NULL COMMENT '签名图片',
  `LAST_PASSWORD_RESET_DATE` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `LAST_ROLE_MODIFY_DATE` datetime(0) NULL DEFAULT NULL COMMENT '角色最后分配时间',
  `IS_MANAGER` int(1) NOT NULL DEFAULT 0 COMMENT '是否是管理员（拥有所有的权限）',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('001', NULL, 'ADMIN', '管理员', '119', 'e10adc3949ba59abbe56e057f20f883e', 10, 1, NULL, NULL, NULL, '2019-09-21 00:02:25', '2019-09-21 00:02:41', 1);
INSERT INTO `t_user` VALUES ('1011061', NULL, 'a', '诶', NULL, 'e10adc3949ba59abbe56e057f20f883e', 10, 1, NULL, NULL, NULL, '2019-10-18 16:49:21', '2019-10-18 16:49:21', 0);

-- ----------------------------
-- Table structure for t_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_role_auth`;
CREATE TABLE `t_role_auth`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `role_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `auth_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_role_auth`(`role_uuid`, `auth_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_auth
-- ----------------------------
INSERT INTO `t_role_auth` VALUES ('001', '001', '1011020');
INSERT INTO `t_role_auth` VALUES ('002', '001', '1011021');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `SPELL` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拼音码',
  `SORT` double NOT NULL COMMENT '排序码',
  `ENABLE` int(11) NOT NULL COMMENT '启用',
  `MEMO` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `SERVER_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子系统id',
  PRIMARY KEY (`UUID`) USING BTREE,
  UNIQUE INDEX `UNIQUE_SPELL`(`SPELL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('001', '管理员', 'ADMIN', 0, 1, '管理员', 'biscuits-server');

-- ----------------------------
-- Table structure for t_process
-- ----------------------------
DROP TABLE IF EXISTS `t_process`;
CREATE TABLE `t_process`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `PROCESS_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `DATA_UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CURRENT_NODE_ID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CUSTOMIZED_PROCESSES` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_process
-- ----------------------------
INSERT INTO `t_process` VALUES ('10111310', 'orderAuditProcessor', '101089', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111311', 'orderAuditProcessor', '101090', 'groupAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111312', 'orderAuditProcessor', '101091', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111313', 'orderAuditProcessor', '101092', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111314', 'orderAuditProcessor', '101093', 'groupAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111315', 'orderAuditProcessor', '101094', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111316', 'orderAuditProcessor', '101095', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111317', 'orderAuditProcessor', '101096', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111318', 'orderAuditProcessor', '101097', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111319', 'orderAuditProcessor', '101098', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111320', 'orderAuditProcessor', '101099', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111321', 'orderAuditProcessor', '1010100', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111322', 'orderAuditProcessor', '1010101', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111323', 'orderAuditProcessor', '1010102', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111324', 'orderAuditProcessor', '1010103', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111325', 'orderAuditProcessor', '1010104', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111326', 'orderAuditProcessor', '1010105', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111327', 'orderAuditProcessor', '1010106', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111328', 'orderAuditProcessor', '1010107', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111329', 'orderAuditProcessor', '1010108', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111330', 'orderAuditProcessor', '1010109', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111331', 'orderAuditProcessor', '1010110', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111332', 'orderAuditProcessor', '1010120', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111333', 'orderAuditProcessor', '1010121', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('10111334', 'orderAuditProcessor', '1010122', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('1011136', 'orderAuditProcessor', '101084', 'departmentAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('1011137', 'orderAuditProcessor', '101085', 'departmentAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('1011138', 'orderAuditProcessor', '101087', 'departmentAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');
INSERT INTO `t_process` VALUES ('1011139', 'orderAuditProcessor', '101088', 'directLeaderAuditNode', 'directLeaderAuditNode,departmentAuditNode,groupAuditNode');

-- ----------------------------
-- Table structure for t_mapper
-- ----------------------------
DROP TABLE IF EXISTS `t_mapper`;
CREATE TABLE `t_mapper`  (
  `uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `request_method` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `action_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_mapper`(`action_id`, `server_id`, `bundle_id`, `request_method`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mapper
-- ----------------------------
INSERT INTO `t_mapper` VALUES ('1011030', '1011083', 'POST', 'register', 'BISCUITS-SERVER', 'home');
INSERT INTO `t_mapper` VALUES ('1011031', '1011083', 'POST', 'login', 'BISCUITS-SERVER', 'home');
INSERT INTO `t_mapper` VALUES ('10110310', '1011087', 'GET', 'list_order', 'DEMO', 'order');
INSERT INTO `t_mapper` VALUES ('10110311', '1011087', 'POST', 'save', 'DEMO', 'order');
INSERT INTO `t_mapper` VALUES ('10110312', '1011088', 'GET', 'bai_du_dom', 'DEMO', 'remote');
INSERT INTO `t_mapper` VALUES ('10110313', '1011089', 'GET', '/welcome', 'SKELETON-SERVER', 'home');
INSERT INTO `t_mapper` VALUES ('10110314', '10110810', 'GET', 'list_order', 'SKELETON-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110315', '10110810', 'POST', 'save', 'SKELETON-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110316', '10110811', 'GET', '/bai_du_dom', 'SKELETON-SERVER', 'remote');
INSERT INTO `t_mapper` VALUES ('10110317', '1011087', 'POST', 'audit', 'DEMO', 'order');
INSERT INTO `t_mapper` VALUES ('10110318', '1011084', 'POST', 'rejection_to_initial', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110319', '1011084', 'POST', 'rejection', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('1011032', '1011083', 'GET', 'welcome', 'BISCUITS-SERVER', 'home');
INSERT INTO `t_mapper` VALUES ('10110320', '1011087', 'POST', 'rejection_to_initial', 'DEMO', 'order');
INSERT INTO `t_mapper` VALUES ('10110321', '1011087', 'POST', 'rejection', 'DEMO', 'order');
INSERT INTO `t_mapper` VALUES ('10110322', '1011084', 'POST', 'audit1', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110323', '10110812', 'POST', 'register', 'BISCUITS-SERVER', 'guest');
INSERT INTO `t_mapper` VALUES ('10110324', '10110812', 'POST', 'login', 'BISCUITS-SERVER', 'guest');
INSERT INTO `t_mapper` VALUES ('10110325', '1011083', 'GET', 'list_record', 'BISCUITS-SERVER', 'home');
INSERT INTO `t_mapper` VALUES ('10110326', '1011084', 'GET', 'hello', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110327', '10110813', 'POST', 'list_own_message', 'BISCUITS-SERVER', 'message');
INSERT INTO `t_mapper` VALUES ('10110328', '10110813', 'POST', 'read', 'BISCUITS-SERVER', 'message');
INSERT INTO `t_mapper` VALUES ('10110329', '10110814', 'GET', 'latest_version', 'BISCUITS-SERVER', 'version');
INSERT INTO `t_mapper` VALUES ('1011033', '1011084', 'POST', 'audit', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('10110330', '10110813', 'GET', 'list_own_message', 'BISCUITS-SERVER', 'message');
INSERT INTO `t_mapper` VALUES ('10110331', '10110813', 'GET', 'offline', 'BISCUITS-SERVER', 'message');
INSERT INTO `t_mapper` VALUES ('10110332', '10110813', 'GET', 'message', 'BISCUITS-SERVER', 'message');
INSERT INTO `t_mapper` VALUES ('1011034', '1011084', 'GET', 'list_order', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('1011035', '1011084', 'POST', 'save', 'BISCUITS-SERVER', 'order');
INSERT INTO `t_mapper` VALUES ('1011036', '1011085', 'GET', 'bai_du_dom', 'BISCUITS-SERVER', 'remote');
INSERT INTO `t_mapper` VALUES ('1011037', '1011086', 'POST', 'register', 'DEMO', 'home');
INSERT INTO `t_mapper` VALUES ('1011038', '1011086', 'POST', 'login', 'DEMO', 'home');
INSERT INTO `t_mapper` VALUES ('1011039', '1011086', 'GET', 'welcome', 'DEMO', 'home');

-- ----------------------------
-- Table structure for t_history
-- ----------------------------
DROP TABLE IF EXISTS `t_history`;
CREATE TABLE `t_history`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `operate` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operate_time` datetime(0) NULL DEFAULT NULL,
  `business_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `operate_content` json NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_history
-- ----------------------------
INSERT INTO `t_history` VALUES ('1011111', 'add', 'ADMIN', '2019-09-21 00:04:33', '10101', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1568995473402\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111110', 'add', 'ADMIN', '2019-09-25 15:57:10', '101040', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398230141\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111111', 'add', 'ADMIN', '2019-09-25 15:57:11', '101041', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398230996\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111112', 'add', 'ADMIN', '2019-09-25 15:57:12', '101042', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398231728\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111113', 'add', 'ADMIN', '2019-09-25 15:57:12', '101043', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398232253\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111114', 'add', 'ADMIN', '2019-09-25 15:57:13', '101044', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398232744\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111115', 'add', 'ADMIN', '2019-09-25 15:57:13', '101045', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398233452\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111116', 'add', 'ADMIN', '2019-09-25 15:58:50', '101046', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398330462\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111117', 'add', 'ADMIN', '2019-10-08 15:03:34', '101047', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570518213688\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111118', 'add', 'ADMIN', '2019-10-12 11:37:03', '101048', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570851423305\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111119', 'add', 'ADMIN', '2019-10-12 11:38:30', '101049', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570851510076\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011112', 'add', 'ADMIN', '2019-09-21 00:07:41', '10102', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1568995661235\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111120', 'add', 'ADMIN', '2019-10-12 11:38:56', '101050', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570851536152\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111121', 'add', 'ADMIN', '2019-10-12 11:41:55', '101051', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570851714688\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111122', 'add', 'ADMIN', '2019-10-12 12:34:14', '101052', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570854853681\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111123', 'add', 'ADMIN', '2019-10-12 12:46:46', '101053', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570855606445\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111124', 'add', 'ADMIN', '2019-10-12 13:53:52', '101054', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570859631594\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111125', 'add', 'ADMIN', '2019-10-12 13:54:23', '101055', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570859662686\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111126', 'add', 'ADMIN', '2019-10-12 14:23:20', '101056', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570861399779\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111127', 'add', 'ADMIN', '2019-10-12 14:25:08', '101057', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570861507712\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111128', 'add', 'ADMIN', '2019-10-12 14:25:15', '101058', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570861515383\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111129', 'add', 'ADMIN', '2019-10-12 14:25:36', '101059', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570861535909\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011113', 'add', 'ADMIN', '2019-09-21 00:21:47', '101012', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1568996507289\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111130', 'add', 'ADMIN', '2019-10-12 14:35:42', '101060', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570862142274\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111131', 'add', 'ADMIN', '2019-10-12 14:35:44', '101061', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570862143606\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111132', 'add', 'ADMIN', '2019-10-12 14:35:44', '101062', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570862144294\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111133', 'add', 'ADMIN', '2019-10-12 15:02:56', '101064', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570863776475\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111134', 'add', 'ADMIN', '2019-10-12 15:03:05', '101065', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570863785283\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111135', 'add', 'ADMIN', '2019-10-12 15:03:06', '101066', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570863786181\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111136', 'add', 'ADMIN', '2019-10-12 15:15:03', '101067', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570864502771\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111137', 'add', 'ADMIN', '2019-10-12 15:15:12', '101068', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570864512373\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111138', 'add', 'ADMIN', '2019-10-12 15:15:47', '101069', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570864546910\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111139', 'add', 'ADMIN', '2019-10-12 16:10:50', '101070', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570867850270\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011114', 'add', 'ADMIN', '2019-09-21 00:26:45', '101013', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1568996804537\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111140', 'add', 'ADMIN', '2019-10-12 16:10:55', '101071', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570867854982\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111141', 'add', 'ADMIN', '2019-10-12 16:14:55', '101072', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570868095197\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111142', 'add', 'ADMIN', '2019-10-12 16:16:02', '101073', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570868162241\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111143', 'add', 'ADMIN', '2019-10-12 16:16:15', '101074', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570868175393\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111144', 'add', 'ADMIN', '2019-10-12 16:23:43', '101075', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570868623095\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111145', 'add', 'ADMIN', '2019-10-12 16:33:43', '101076', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570869223234\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111146', 'add', 'ADMIN', '2019-10-12 17:12:19', '101078', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570871538892\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111147', 'add', 'ADMIN', '2019-10-12 17:16:30', '101079', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1570871789792\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111148', 'add', 'ADMIN', '2019-10-14 08:23:54', '101080', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571012633758\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111149', 'add', 'ADMIN', '2019-10-14 08:24:02', '101081', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571012641855\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011115', 'add', 'ADMIN', '2019-09-25 15:50:25', '101035', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569397824628\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111150', 'add', 'ADMIN', '2019-10-14 13:14:09', '101082', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571030049076\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111151', 'add', 'ADMIN', '2019-10-14 13:14:15', '101083', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571030054571\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111152', 'add', 'ADMIN', '2019-10-14 13:46:34', '101084', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571031994126\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111153', 'add', 'ADMIN', '2019-10-14 13:47:00', '101085', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571032019679\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111154', 'add', 'ADMIN', '2019-10-14 14:54:06', '101086', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571036045801\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111155', 'add', 'ADMIN', '2019-10-14 14:55:17', '101087', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571036117002\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111156', 'add', 'ADMIN', '2019-10-14 14:59:36', '101088', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571036376183\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111157', 'add', 'ADMIN', '2019-10-15 09:23:41', '101089', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571102621224\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111158', 'add', 'ADMIN', '2019-10-15 10:07:40', '101090', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571105259926\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111159', 'add', 'ADMIN', '2019-10-15 10:12:31', '101091', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571105551104\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011116', 'add', 'ADMIN', '2019-09-25 15:51:08', '101036', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569397839986\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111160', 'edit', 'ADMIN', '2019-10-15 10:13:22', '101091', '{\"业务\": \"更新订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"更新的数据\": {\"状态\": \"由 null 改变为 false\"}}');
INSERT INTO `t_history` VALUES ('10111161', 'add', 'ADMIN', '2019-10-15 10:17:59', '101092', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571105879161\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111162', 'edit', 'ADMIN', '2019-10-15 10:18:33', '101092', '{\"业务\": \"更新订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"更新的数据\": {\"状态\": \"由 null 改变为 false\"}}');
INSERT INTO `t_history` VALUES ('10111163', 'edit', 'ADMIN', '2019-10-15 10:30:18', '101092', '{\"业务\": \"更新订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"更新的数据\": {}}');
INSERT INTO `t_history` VALUES ('10111164', 'add', 'ADMIN', '2019-10-17 08:21:54', '101093', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571271714044\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111165', 'add', 'ADMIN', '2019-10-17 08:49:30', '101094', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571273370400\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111166', 'add', 'ADMIN', '2019-10-17 08:49:33', '101095', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571273372515\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111167', 'add', 'ADMIN', '2019-10-17 08:55:37', '101096', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571273736721\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111168', 'add', 'ADMIN', '2019-10-18 16:06:37', '101097', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571385997278\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111169', 'add', 'ADMIN', '2019-10-18 16:50:26', '101098', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571388625544\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011117', 'add', 'ADMIN', '2019-09-25 15:51:33', '101037', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569397892903\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111170', 'add', 'ADMIN', '2019-10-18 16:51:05', '101099', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571388665267\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111171', 'add', 'ADMIN', '2019-10-18 16:52:00', '1010100', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571388720353\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111172', 'add', 'ADMIN', '2019-10-18 16:52:06', '1010101', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571388726173\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111173', 'add', 'ADMIN', '2019-10-18 16:53:05', '1010102', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571388785429\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111174', 'add', 'ADMIN', '2019-10-18 17:00:03', '1010103', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389203252\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111175', 'add', 'ADMIN', '2019-10-18 17:02:26', '1010104', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389346332\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111176', 'add', 'ADMIN', '2019-10-18 17:02:48', '1010105', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389367638\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111177', 'add', 'ADMIN', '2019-10-18 17:02:48', '1010106', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389368436\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111178', 'add', 'ADMIN', '2019-10-18 17:02:49', '1010107', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389369103\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111179', 'add', 'ADMIN', '2019-10-18 17:03:10', '1010108', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571389389792\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011118', 'add', 'ADMIN', '2019-09-25 15:55:50', '101038', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398150136\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111180', 'add', 'ADMIN', '2019-10-18 17:34:03', '1010109', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571391243228\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111181', 'add', 'ADMIN', '2019-10-22 14:54:11', '1010110', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1571727250621\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111182', 'add', 'ADMIN', '2020-01-14 13:20:04', '1010120', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": true, \"类型\": \"---\", \"编号\": \"DEMO-1578979204183\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111183', 'add', 'ADMIN', '2020-01-14 13:21:05', '1010121', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": true, \"类型\": \"---\", \"编号\": \"DEMO-1578979264874\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('10111184', 'add', 'ADMIN', '2020-03-16 16:39:45', '1010122', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": true, \"类型\": \"---\", \"编号\": \"DEMO-1584347984379\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');
INSERT INTO `t_history` VALUES ('1011119', 'add', 'ADMIN', '2019-09-25 15:56:03', '101039', '{\"业务\": \"保存订单\", \"关键数据\": {\"类型\": \"---\"}, \"操作对象\": \"单据\", \"新增的数据\": {\"单价\": 1.1, \"日期\": \"---\", \"时间\": \"---\", \"状态\": \"---\", \"类型\": \"---\", \"编号\": \"DEMO-1569398163349\", \"排序码\": 0, \"订单支付方式\": \"---\", \"关联单据的数据标识\": \"10130\"}}');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '唯一标识',
  `PARENT_UUID` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '父节点标识',
  `NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `SPELL` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '拼音码',
  `SORT` int(6) NOT NULL DEFAULT 0 COMMENT '排序码',
  `ENABLE` int(1) NOT NULL DEFAULT 1 COMMENT '启用',
  `IS_QC` int(1) NOT NULL DEFAULT 0 COMMENT '是否质控科室',
  `IS_PURCHASE` int(1) NOT NULL DEFAULT 0 COMMENT '是否采购科室',
  `IS_CHILD` int(1) NOT NULL DEFAULT 0 COMMENT '是否含子节点',
  `SYSTEM_CODE` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务系统对照',
  `LEADER` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分管领导'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bundle_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle_group_relation`;
CREATE TABLE `t_bundle_group_relation`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `group_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_sort`(`sort`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bundle_group
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle_group`;
CREATE TABLE `t_bundle_group`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `group_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bundle
-- ----------------------------
DROP TABLE IF EXISTS `t_bundle`;
CREATE TABLE `t_bundle`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `with_auth` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bundle
-- ----------------------------
INSERT INTO `t_bundle` VALUES ('1011080', 'home', '主页', 'BISCUIT', 0);
INSERT INTO `t_bundle` VALUES ('1011081', 'order', '订单', 'BISCUIT', 1);
INSERT INTO `t_bundle` VALUES ('10110810', 'order', '订单', 'SKELETON-SERVER', 1);
INSERT INTO `t_bundle` VALUES ('10110811', 'remote', '远程调用', 'SKELETON-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('10110812', 'guest', 'Guest-Bundle', 'BISCUITS-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('10110813', 'message', '消息', 'BISCUITS-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('10110814', 'version', '版本', 'BISCUITS-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('1011082', 'remote', '远程调用', 'BISCUIT', 0);
INSERT INTO `t_bundle` VALUES ('1011083', 'home', '主页', 'BISCUITS-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('1011084', 'order', '订单', 'BISCUITS-SERVER', 1);
INSERT INTO `t_bundle` VALUES ('1011085', 'remote', '远程调用', 'BISCUITS-SERVER', 0);
INSERT INTO `t_bundle` VALUES ('1011086', 'home', '主页', 'DEMO', 0);
INSERT INTO `t_bundle` VALUES ('1011087', 'order', '订单', 'DEMO', 1);
INSERT INTO `t_bundle` VALUES ('1011088', 'remote', '远程调用', 'DEMO', 0);
INSERT INTO `t_bundle` VALUES ('1011089', 'home', '主页', 'SKELETON-SERVER', 0);

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority`  (
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `bundle_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `key_server_id`(`id`, `server_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('1011020', 'BISCUITS-SERVER', 'order_manage', '管理', '管理订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011021', 'BISCUITS-SERVER', 'order_read', '读取', '读取订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011022', 'DEMO', 'order_read', '读取', '读取订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011023', 'DEMO', 'order_manage', '管理', '管理订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011024', 'SKELETON-SERVER', 'order_read', '读取', '读取订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011025', 'SKELETON-SERVER', 'order_manage', '管理', '管理订单数据的权限', 'order');
INSERT INTO `t_authority` VALUES ('1011026', 'BISCUITS-SERVER', 'order_audit', '审核', '审核订单数据的权限', 'order');

-- ----------------------------
-- Table structure for t_auth_mapper
-- ----------------------------
DROP TABLE IF EXISTS `t_auth_mapper`;
CREATE TABLE `t_auth_mapper`  (
  `uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `server_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `auth_uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `mapper_uuid` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE,
  UNIQUE INDEX `auth_mapper_key`(`auth_uuid`, `mapper_uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_auth_mapper
-- ----------------------------
INSERT INTO `t_auth_mapper` VALUES ('1011010', 'BISCUITS-SERVER', '1011020', '1011033');
INSERT INTO `t_auth_mapper` VALUES ('1011011', 'BISCUITS-SERVER', '1011021', '1011034');
INSERT INTO `t_auth_mapper` VALUES ('10110110', 'DEMO', '1011023', '10110320');
INSERT INTO `t_auth_mapper` VALUES ('10110111', 'DEMO', '1011023', '10110321');
INSERT INTO `t_auth_mapper` VALUES ('10110112', 'BISCUITS-SERVER', '1011026', '10110322');
INSERT INTO `t_auth_mapper` VALUES ('10110113', 'BISCUITS-SERVER', '1011020', '10110326');
INSERT INTO `t_auth_mapper` VALUES ('1011012', 'BISCUITS-SERVER', '1011020', '1011035');
INSERT INTO `t_auth_mapper` VALUES ('1011013', 'DEMO', '1011022', '10110310');
INSERT INTO `t_auth_mapper` VALUES ('1011014', 'DEMO', '1011023', '10110311');
INSERT INTO `t_auth_mapper` VALUES ('1011015', 'SKELETON-SERVER', '1011024', '10110314');
INSERT INTO `t_auth_mapper` VALUES ('1011016', 'SKELETON-SERVER', '1011025', '10110315');
INSERT INTO `t_auth_mapper` VALUES ('1011017', 'DEMO', '1011023', '10110317');
INSERT INTO `t_auth_mapper` VALUES ('1011018', 'BISCUITS-SERVER', '1011020', '10110318');
INSERT INTO `t_auth_mapper` VALUES ('1011019', 'BISCUITS-SERVER', '1011020', '10110319');

-- ----------------------------
-- Table structure for t_app_version
-- ----------------------------
DROP TABLE IF EXISTS `t_app_version`;
CREATE TABLE `t_app_version`  (
  `UUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据编号',
  `VERSION` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '版本号',
  `URL` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '下载地址',
  `PATH` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'apk保存路径',
  `MANDATORY` tinyint(1) NULL DEFAULT NULL COMMENT '是否强制升级',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '升级描述',
  `APP_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app名称',
  `PUBLISH_TIME` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = 'apk版本管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_app_version
-- ----------------------------
INSERT INTO `t_app_version` VALUES ('1', '1.1.0', 'http://10.1.11.27:8090/app.apk', '/sdcard/app.apk', 0, '有新版本发布，是否现在升级？', 'abm_ares_app', '2020-01-13 16:09:07');
INSERT INTO `t_app_version` VALUES ('2', '1.0.1', 'http://10.1.11.27:8090/app.apk', '/sdcard/app.apk', 0, '有新版本发布，是否现在升级？', 'abc_lims_ucb_receiving_app', '2020-01-13 16:09:07');
INSERT INTO `t_app_version` VALUES ('23', '2.0.0', 'http://10.1.11.27:8090/app.apk', '/sdcard/app.apk', 0, '有新版本发布，是否现在升级？', 'abm_ares_app', '2020-01-02 16:09:07');
INSERT INTO `t_app_version` VALUES ('3', '1.1.0', 'http://10.1.11.27:8090/app.apk', '/sdcard/app.apk', 0, '有新版本发布，是否现在升级？', 'abc_lims_msc_app', '2020-01-14 17:29:33');

-- ----------------------------
-- Table structure for t_app_message
-- ----------------------------
DROP TABLE IF EXISTS `t_app_message`;
CREATE TABLE `t_app_message`  (
  `UUID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `SENDER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `SENDER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `RECEIVER_NAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `TITLE` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `CONTENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `UNREAD` tinyint(1) NULL DEFAULT 1,
  `SEND_TIME` datetime(0) NULL DEFAULT NULL,
  `READ_TIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = 'APP消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_app_message
-- ----------------------------
INSERT INTO `t_app_message` VALUES ('40280e816fa68c8e016fa6a6954a0009', 'BB', '白波', 'admin', 'admin', '普通消息测试', '三月七日，沙湖道中遇雨。雨具先去，同行皆狼狈，余独不觉。已而遂晴，故作此词。\n\n莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。\n\n料峭春风吹酒醒，微冷，山头斜照却相迎。回首向来萧瑟处，归去，也无风雨也无晴。', 0, '2020-01-15 00:42:12', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa68c8e016fa6aad630000a', 'BB', '白波', 'admin', 'admin', '普通消息测试', '细雨斜风作晓寒，淡烟疏柳媚晴滩。入淮清洛渐漫漫。雪沫乳花浮午盏，蓼茸蒿笋试春盘。人间有味是清欢。', 1, '2020-01-15 00:46:51', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6adb0530001', 'BB', '白波', 'admin', 'admin', '普通消息测试', '人生到处知何似，应似飞鸿踏雪泥：\n泥上偶然留指爪，鸿飞那复计东西。\n老僧已死成新塔，坏壁无由见旧题。\n往日崎岖还记否，路长人困蹇驴嘶。', 0, '2020-01-15 00:49:58', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6b6e3f00004', 'BB', '白波', 'admin', 'admin', '普通消息测试', '人生到处知何似，应似飞鸿踏雪泥：\n泥上偶然留指爪，鸿飞那复计东西。\n老僧已死成新塔，坏壁无由见旧题。\n往日崎岖还记否，路长人困蹇驴嘶。', 1, '2020-01-15 01:00:01', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6b8fc490005', 'BB', '白波', 'admin', 'admin', '普通消息测试', '夜饮东坡醒复醉，归来仿佛三更。家童鼻息已雷鸣。敲门都不应，倚杖听江声。\n\n长恨此身非我有，何时忘却营营。夜阑风静縠纹平。小舟从此逝，江海寄余生。', 1, '2020-01-15 01:02:18', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6d575440006', 'BB', '白波', 'admin', 'admin', '普通消息测试', '日，过中秋而去，作此曲以别余。以其语过悲，乃为和之。其意以不早退为戒，以退而相从之乐为慰云耳安石在东海，从事鬓惊秋。中年亲友难别，丝竹缓离愁。一旦功成名遂，准拟东还海道，扶病入西州。雅志困轩冕，遗恨寄沧洲。\n\n岁云暮，须早计，要褐裘。故乡归去千里，佳处辄迟留。我醉歌时君和，醉倒须君扶我，惟酒可忘忧。一任刘玄德，相对卧高楼。', 1, '2020-01-15 01:33:25', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6d818550007', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 0, '2020-01-15 01:36:17', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6e6004e0009', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 1, '2020-01-15 01:51:29', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6e64f67000a', 'BB', '白波', 'admin', 'admin', '普通消息测试', '天涯流落思无穷。既相逢。却匆匆。摧手佳人，和泪折残红。为问东风余几许，春纵在，与谁同。\n隋堤三月水溶溶。背归鸿。去吴中。回首彭城，清泗与淮通。寄我相思千点泪，流不到，楚江东。', 1, '2020-01-15 01:51:49', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fabb0f000b', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:07', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb68ae000c', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:52', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb6d0d000d', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:53', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb71df000e', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-15 02:14:54', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb7d67000f', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:57', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fa6ab8e016fa6fb82360010', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-15 02:14:58', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816facefd1016fad0b8d230000', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-16 06:30:13', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad48b0940000', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-16 07:37:00', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad6474aa0001', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 1, '2020-01-16 08:07:19', NULL);
INSERT INTO `t_app_message` VALUES ('40280e816fad2b2c016fad648dea0002', 'BB', '白波', 'admin', 'admin', '普通消息测试', '测试消息hello', 0, '2020-01-16 08:07:26', NULL);

SET FOREIGN_KEY_CHECKS = 1;
