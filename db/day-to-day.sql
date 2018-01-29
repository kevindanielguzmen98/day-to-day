/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Ubuntu1604
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 192.168.33.10:3306
 Source Schema         : day-to-day

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 29/01/2018 13:12:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE `day-to-day`;
use `day-to-day`;

-- ----------------------------
-- Table structure for articulos
-- ----------------------------
DROP TABLE IF EXISTS `articulos`;
CREATE TABLE `articulos`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contenido` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `articulos_ibfk_1`(`usuario`) USING BTREE,
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for informacion_personal
-- ----------------------------
DROP TABLE IF EXISTS `informacion_personal`;
CREATE TABLE `informacion_personal`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` int(10) UNSIGNED NOT NULL,
  `imagen` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `numero_contacto` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `web` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `direccion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pais` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ciudad` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profesion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_registro` timestamp(6) NULL DEFAULT NULL,
  `fecha_actualizacion` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usuario`(`usuario`) USING BTREE,
  CONSTRAINT `informacion_personal_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_registro` timestamp(6) NULL DEFAULT NULL,
  `fecha_actualizacion` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
