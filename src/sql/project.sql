Skip to content

Search or jump to…

Pull requests
Issues
Marketplace
Explore
@jeffhardy9486 Sign out
8
64 75 WinterChenS/springboot-mybatis-demo
Code  Issues 1  Pull requests 0  Projects 0  Wiki  Insights
springboot-mybatis-demo/src/sql/project.sql
6416d59  on 23 Jan
Donghua.Chen Initial commit

145 lines (137 sloc)  22.7 KB
/*
 Navicat Premium Data Transfer
 Source Server         : locationDB
 Source Server Type    : MySQL
 Source Server Version : 50638
 Source Host           : localhost:3306
 Source Schema         : mytest
 Target Server Type    : MySQL
 Target Server Version : 50638
 File Encoding         : 65001
 Date: 09/01/2018 15:24:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
                          `projId` int(255) NOT NULL AUTO_INCREMENT,
                          `parentId` int(255) NULL DEFAULT NULL,
                          `level` int(255) NOT NULL,
                          `taskName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `durationDate` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `startDate` datetime(0) NULL DEFAULT NULL,
                          `endDate` datetime(0) NULL DEFAULT NULL,
                          `preTask` int(255) NULL DEFAULT NULL,
                          `resource` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          `importTime` datetime(0) NULL DEFAULT NULL,
                          `batchNum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                          PRIMARY KEY (`projId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 312 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (211, NULL, 1, '第一阶段: 制定战略计划', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (212, 211, 2, '自我评估', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (213, 212, 3, '定义业务构想', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-08 00:00:00', '2018-01-08 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (214, 212, 3, '确定可供使用的技能、信息和支持', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-09 00:00:00', '2018-01-09 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (215, 212, 3, '决定是否继续进行', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-10 00:00:00', '2018-01-10 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (216, 211, 2, '定义机会', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (217, 216, 3, '进行市场和竞争情况调研', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-11 00:00:00', '2018-01-11 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (218, 216, 3, '拜访类似业务的经营者', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-12 00:00:00', '2018-01-18 00:00:00', NULL, '业主', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (219, 216, 3, '确定所需的资源', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-19 00:00:00', '2018-01-22 00:00:00', NULL, '同行', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (220, 216, 3, '确定经营成本的构成要素', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-23 00:00:00', '2018-01-24 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (221, 211, 2, '评估开展新业务的途径', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (222, 221, 3, '定义对新实体的需求', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-25 00:00:00', '2018-01-25 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (223, 221, 3, '确定未来的业务并购机会', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-26 00:00:00', '2018-01-26 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (224, 221, 3, '研究特许经营的可能性', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-29 00:00:00', '2018-01-29 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (225, 221, 3, '总结开展新业务的途径', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-30 00:00:00', '2018-01-30 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (226, 211, 2, '评估潜在风险和回报', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (227, 226, 3, '评估市场规模和稳定性', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-26 00:00:00', '2018-01-29 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (228, 226, 3, '估计竞争情况', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-30 00:00:00', '2018-01-30 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (229, 226, 3, '评估得到所需资源的可能性', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-31 00:00:00', '2018-02-01 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (230, 226, 3, '评估能够实现的初始市场份额', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-02 00:00:00', '2018-02-02 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (231, 226, 3, '确定财务方面的需求', 'Wed Sep 24 18:24:00 CST 2003', '2018-01-31 00:00:00', '2018-02-01 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (232, 226, 3, '审查个人是否适合这项工作', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-02 00:00:00', '2018-02-02 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (233, 226, 3, '评估初期的盈利能力', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-05 00:00:00', '2018-02-05 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (234, 211, 2, '审阅并修改战略计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-06 00:00:00', '2018-02-07 00:00:00', NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (235, 211, 2, '确认要付诸实施的决定', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-07 00:00:00', '2018-02-07 00:00:00', NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (236, NULL, 1, '第二阶段: 定义业务机会', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (237, 236, 2, '定义市场', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (238, 237, 3, '获取能够得到的信息', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-08 00:00:00', '2018-02-08 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (239, 237, 3, '制定市场分析计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-09 00:00:00', '2018-02-12 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (240, 237, 3, '实施市场分析计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-13 00:00:00', '2018-02-19 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (241, 237, 3, '确定竞争情况', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-20 00:00:00', '2018-02-21 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (242, 237, 3, '总结市场环境', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-22 00:00:00', '2018-02-23 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (243, 237, 3, '确定目标市场定位', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-26 00:00:00', '2018-02-26 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (244, 236, 2, '确定所需的材料和供应', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (245, 244, 3, '选择一种开展业务的途径(从上面的“总结开展新业务的途径”)', 'Wed Sep 24 18:24:00 CST 2003', '2018-02-27 00:00:00', '2018-02-28 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (246, 244, 3, '确定管理人员资源', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-01 00:00:00', '2018-03-01 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (247, 244, 3, '确定人员需求', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-02 00:00:00', '2018-03-02 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (248, 244, 3, '确定所需的原材料', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-05 00:00:00', '2018-03-05 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (249, 244, 3, '确定所需的工具', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-06 00:00:00', '2018-03-06 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (250, 244, 3, '总结经营开支和财务预测', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-07 00:00:00', '2018-03-07 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (251, 236, 2, '评估潜在风险和回报', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (252, 251, 3, '评估市场规模和稳定性', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-08 00:00:00', '2018-03-09 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (253, 251, 3, '评估得到所需资源的可能性', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-12 00:00:00', '2018-03-13 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (254, 251, 3, '预测财务回报', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-14 00:00:00', '2018-03-15 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (255, 236, 2, '审阅并修改业务机会', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-16 00:00:00', '2018-03-16 00:00:00', NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (256, 236, 2, '确认要付诸实施的决定', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-16 00:00:00', '2018-03-16 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (257, NULL, 1, '第三阶段: 制定行动计划', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (258, 257, 2, '制定详细的 5 年业务计划', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (259, 258, 3, '描述构想和机会', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-19 00:00:00', '2018-03-19 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (260, 258, 3, '列出假设条件', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-20 00:00:00', '2018-03-20 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (261, 258, 3, '描述市场情况', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-21 00:00:00', '2018-03-21 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (262, 258, 3, '描述新业务', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-22 00:00:00', '2018-03-22 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (263, 258, 3, '描述优势、弱点、有利条件和威胁', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-23 00:00:00', '2018-03-23 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (264, 258, 3, '估计启动阶段的销售量', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-26 00:00:00', '2018-03-26 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (265, 258, 3, '预测经营费用', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-27 00:00:00', '2018-03-27 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (266, 258, 3, '建立定价策略', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-28 00:00:00', '2018-03-28 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (267, 258, 3, '预测年收入', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-29 00:00:00', '2018-03-29 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (268, 258, 3, '总结预计的财务状况', 'Wed Sep 24 18:24:00 CST 2003', '2018-03-30 00:00:00', '2018-04-02 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (269, 258, 3, '进行收支平衡分析', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-03 00:00:00', '2018-04-03 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (270, 258, 3, '制定现金流量预测', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-04 00:00:00', '2018-04-04 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (271, 258, 3, '确定取得许可证和批准方面的要求', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-05 00:00:00', '2018-04-05 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (272, 258, 3, '制定启动计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-06 00:00:00', '2018-04-09 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (273, 258, 3, '制定销售和营销策略', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-10 00:00:00', '2018-04-10 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (274, 258, 3, '确定产品分销网络的结构', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-11 00:00:00', '2018-04-11 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (275, 258, 3, '描述风险和机遇', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-12 00:00:00', '2018-04-13 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (276, 258, 3, '公布业务计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-16 00:00:00', '2018-04-16 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (277, 258, 3, '确认要付诸实施的决定', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-16 00:00:00', '2018-04-16 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (278, NULL, 1, '第四阶段: 实施启动计划', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (279, 278, 2, '挑选营业场所', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-17 00:00:00', '2018-04-17 00:00:00', NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (280, 278, 2, '建立公司结构', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (281, 280, 3, '确定公司名称', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (282, 281, 4, '确定名称含义', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-18 00:00:00', '2018-04-18 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (283, 281, 4, '调查是否可以使用所选名称', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-19 00:00:00', '2018-04-19 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (284, 280, 3, '挑选开户银行', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (285, 284, 4, '开户', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-20 00:00:00', '2018-04-25 00:00:00', NULL, '银行家', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (286, 284, 4, '确定信用贷款的最高限额', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-26 00:00:00', '2018-04-26 00:00:00', NULL, '银行家', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (287, 280, 3, '确定法人代表', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-27 00:00:00', '2018-04-27 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (288, 280, 3, '选择公司的计税基础类别', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-30 00:00:00', '2018-05-01 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (289, 280, 3, '选择资金来源', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-02 00:00:00', '2018-05-03 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (290, 280, 3, '确定资金来源', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-03 00:00:00', '2018-05-03 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (291, 280, 3, '建立对经营进行控制的基础', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (292, 291, 4, '选择并建立会计系统', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-04 00:00:00', '2018-05-07 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (293, 291, 4, '获取必需的许可证和批准', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-08 00:00:00', '2018-05-11 00:00:00', NULL, '政府部门', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (294, 291, 4, '投保所需的险种', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-14 00:00:00', '2018-05-17 00:00:00', NULL, '会计', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (295, 291, 4, '制定安全计划', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-18 00:00:00', '2018-05-21 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (296, 280, 3, '制定营销方案', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (297, 296, 4, '制定广告方案', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-19 00:00:00', '2018-04-20 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (298, 296, 4, '设计徽标', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-23 00:00:00', '2018-04-23 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (299, 296, 4, '定制产品促销材料', 'Wed Sep 24 18:24:00 CST 2003', '2018-04-24 00:00:00', '2018-04-24 00:00:00', NULL, '商业顾问', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (300, 278, 2, '提供有形设施', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (301, 300, 3, '确保营业场所的安全', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-22 00:00:00', '2018-05-28 00:00:00', NULL, '律师', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (302, 300, 3, '选择计算机网络硬件', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-29 00:00:00', '2018-05-29 00:00:00', NULL, '信息服务', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (303, 300, 3, '选择计算机软件', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-30 00:00:00', '2018-05-30 00:00:00', NULL, '信息服务', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (304, 300, 3, '获得公用服务', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-31 00:00:00', '2018-06-04 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (305, 300, 3, '提供家具和设备', 'Wed Sep 24 18:24:00 CST 2003', '2018-06-05 00:00:00', '2018-06-08 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (306, 300, 3, '进驻营业场所', 'Wed Sep 24 18:24:00 CST 2003', '2018-06-11 00:00:00', '2018-06-11 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (307, 278, 2, '招募员工', NULL, NULL, NULL, NULL, NULL, '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (308, 307, 3, '面试和测试应聘人员', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-04 00:00:00', '2018-05-23 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (309, 307, 3, '雇用员工', 'Wed Sep 24 18:24:00 CST 2003', '2018-05-24 00:00:00', '2018-06-06 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (310, 307, 3, '培训员工', 'Wed Sep 24 18:24:00 CST 2003', '2018-06-07 00:00:00', '2018-06-28 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');
INSERT INTO `project` VALUES (311, 278, 2, '公司开始运营', 'Wed Sep 24 18:24:00 CST 2003', '2018-06-28 00:00:00', '2018-06-28 00:00:00', NULL, '经理', '2018-01-09 00:00:00', '7fa4b2c595674ed4a12fe33a49d86263');

SET FOREIGN_KEY_CHECKS = 1;
© 2018 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
Press h to open a hovercard with more details.